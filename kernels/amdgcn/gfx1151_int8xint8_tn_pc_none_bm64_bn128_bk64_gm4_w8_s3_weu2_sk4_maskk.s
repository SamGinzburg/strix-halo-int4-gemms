	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s7, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s2
	v_mov_b32_e32 v218, v0
	s_load_b64 s[30:31], s[0:1], 0x20
	s_mov_b32 s37, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v237, 4, v218
	v_and_b32_e32 v2, 48, v237
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s28, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s10, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s10, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s6, s10
	s_add_i32 s6, s6, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s6, 1
	s_sub_i32 s12, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s11, s6
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s11, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s10
	s_sub_i32 s5, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s16, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s9, s16
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s17, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s6, s17
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s18, s6
	s_sub_i32 s19, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v237
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v0, 3, v218
	v_lshrrev_b32_e32 v13, 2, v218
	v_and_b32_e32 v16, 15, v218
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v8, 32, v0
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v3, s28, v13
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s18, s18
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[10:11], null, s29, v0, v[1:2]
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s19, s19, s18
	s_mov_b32 s10, 0x7ffffffe
	s_mul_hi_u32 s4, s18, s19
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s18, s18, s4
	v_mov_b32_e32 v37, v10
	s_mul_hi_u32 s4, s5, s18
	s_xor_b32 s18, s2, s17
	s_mul_i32 s19, s4, s6
	s_ashr_i32 s18, s18, 31
	s_sub_i32 s5, s5, s19
	s_add_i32 s19, s4, 1
	s_sub_i32 s20, s5, s6
	s_cmp_ge_u32 s5, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s4, s19, s4
	s_cselect_b32 s5, s20, s5
	s_add_i32 s19, s4, 1
	s_cmp_ge_u32 s5, s6
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v219, 0x80, v218
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s4, s19, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s5, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s18
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s5, v13
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s18
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s5, v0
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s17, s3, s17
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s34, s3, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s17
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s5, v8
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s16, s3, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s7, 0xff
.Ltmp13:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s35, s16, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s4, s29, s5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s6, 0xff
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s7, v4
	v_cmp_gt_i32_e64 s3, s7, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s36, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s34, s4
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v1, v3, v2, s35
	v_dual_mov_b32 v14, v8 :: v_dual_add_nc_u32 v3, s4, v10
	.loc	1 346 22 is_stmt 0              ; generate_amdgcn.py:346:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 30 is_stmt 1              ; generate_amdgcn.py:352:30
	s_lshl_b32 s33, s29, 5
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s2, s2, s36
	s_and_b32 vcc_lo, vcc_lo, s36
	s_and_b32 s3, s3, s36
	s_cmpk_gt_i32 s6, 0x1ff
	v_dual_mov_b32 v15, v16 :: v_dual_add_nc_u32 v4, s33, v10
	v_mov_b32_e32 v52, v1
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[1:2], null, s28, s5, v[1:2]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v3, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s17, s5, 0x100
	v_dual_mov_b32 v53, v4 :: v_dual_add_nc_u32 v2, s4, v4
	v_or_b32_e32 v6, s17, v13
	v_or_b32_e32 v7, s17, v0
	v_or_b32_e32 v18, s17, v8
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s5, s29, 8
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_lshl_add_u32 v19, s28, 8, v1
	.loc	1 346 22 is_stmt 0              ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v3, 0x80000000, v1, vcc_lo
	.loc	1 343 23 is_stmt 1              ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v9, 0x80000000, v2, s3
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_add_i32 s4, s4, s5
	.loc	1 344 23 is_stmt 1              ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s7, v7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v20, s4, v10
	v_add_nc_u32_e32 v21, s4, v4
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s7, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[5:8], v5, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v18, 0x80000000, v19, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[1:4], v3, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v19, 0x80000000, v20, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v220, 0x60, v218
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v20, 0x80000000, v21, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[21:24], v18, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[25:28], v19, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v20, s[24:27], 0 offen
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v19, 3, v219
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v33, 0, v237
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v221, 1, v220
	s_mov_b32 s16, 0
	s_mov_b64 s[4:5], s[14:15]
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v17, v19, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_lt_i32 s6, 0x300
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v33, v[1:4] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v33, v[5:8]
	ds_store_b128 v33, v[9:12] offset:4096
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v33, v[21:24] offset:20480
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v33, v[25:28] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v33, v[29:32] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_add_i32 s14, s17, 0x100
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v1, s16
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_dual_mov_b32 v8, s23 :: v_dual_mov_b32 v51, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[1:4], off
	scratch_store_b128 off, v[5:8], off offset:16
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v2, v14 :: v_dual_mov_b32 v3, v15
	v_dual_mov_b32 v4, v37 :: v_dual_mov_b32 v5, v52
	v_mov_b32_e32 v6, v53
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s15, s6, 8
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s6, 0, 0x5000
	s_add_i32 s3, 0, 0x2000
	s_add_i32 s15, s15, -3
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v220, off offset:40
	scratch_store_b32 off, v219, off offset:36
	scratch_store_b32 off, v218, off offset:32
.Ltmp15:
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s1, s17, 8
	v_dual_mov_b32 v56, v17 :: v_dual_add_nc_u32 v59, s0, v17
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s1, s14, s1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v57, s16, v3, v221
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v11, s1, v13
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[9:10], null, s1, s28, v[5:6]
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v12, s1, v0
	v_or_b32_e32 v58, s1, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s0, s1, s29
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e64 s1, s7, v11
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s0, s0, s34
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s7, v12
	v_dual_mov_b32 v17, v221 :: v_dual_add_nc_u32 v10, s0, v4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v61, s0, v6
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s7, v58
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_dual_cndmask_b32 v60, 0x80000000, v10 :: v_dual_mov_b32 v1, v51
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[9:12], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v221, v57 offset:4736
	v_dual_mov_b32 v51, v50 :: v_dual_mov_b32 v50, v49
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v58, 0x80000000, v61, s0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v61, v59 offset:832
	ds_load_u8 v62, v59 offset:768
	ds_load_u8 v63, v59 offset:960
	ds_load_u8 v65, v59 offset:896
	ds_load_u8 v67, v59 offset:576
	ds_load_u8 v68, v59 offset:512
	ds_load_u8 v69, v59 offset:704
	ds_load_u8 v70, v59 offset:640
	ds_load_u8 v71, v59 offset:320
	ds_load_u8 v72, v59 offset:256
	ds_load_u8 v73, v59 offset:448
	ds_load_u8 v74, v59 offset:384
	ds_load_u8 v75, v59 offset:64
	ds_load_u8 v76, v59
	ds_load_u8 v64, v59 offset:192
	ds_load_u8 v66, v59 offset:128
	ds_load_u8 v77, v59 offset:224
	ds_load_u8 v78, v59 offset:160
	ds_load_u8 v79, v59 offset:96
	ds_load_u8 v80, v59 offset:32
	ds_load_u8 v81, v59 offset:1856
	ds_load_u8 v82, v59 offset:1792
	ds_load_u8 v83, v59 offset:1984
	ds_load_u8 v84, v59 offset:1920
	ds_load_u8 v85, v59 offset:1600
	ds_load_u8 v86, v59 offset:1536
	ds_load_u8 v87, v59 offset:1728
	ds_load_u8 v88, v59 offset:1664
	ds_load_u8 v89, v59 offset:1344
	ds_load_u8 v90, v59 offset:1280
	ds_load_u8 v91, v59 offset:1472
	ds_load_u8 v92, v59 offset:1408
	ds_load_u8 v93, v59 offset:1088
	ds_load_u8 v94, v59 offset:1024
	ds_load_u8 v95, v59 offset:1216
	ds_load_u8 v96, v59 offset:1152
	ds_load_u8 v97, v59 offset:2880
	ds_load_u8 v98, v59 offset:2816
	ds_load_u8 v99, v59 offset:3008
	ds_load_u8 v100, v59 offset:2944
	ds_load_u8 v101, v59 offset:2624
	ds_load_u8 v102, v59 offset:2560
	ds_load_u8 v103, v59 offset:2752
	ds_load_u8 v104, v59 offset:2688
	ds_load_u8 v105, v59 offset:2368
	ds_load_u8 v106, v59 offset:2304
	ds_load_u8 v107, v59 offset:2496
	ds_load_u8 v108, v59 offset:2432
	ds_load_u8 v109, v59 offset:2112
	ds_load_u8 v110, v59 offset:2048
	ds_load_u8 v111, v59 offset:2240
	ds_load_u8 v112, v59 offset:2176
	ds_load_u8 v113, v59 offset:3904
	ds_load_u8 v114, v59 offset:3840
	ds_load_u8 v115, v59 offset:4032
	ds_load_u8 v116, v59 offset:3968
	ds_load_u8 v117, v59 offset:3648
	ds_load_u8 v118, v59 offset:3584
	ds_load_u8 v119, v59 offset:3776
	ds_load_u8 v120, v59 offset:3712
	ds_load_u8 v121, v59 offset:3392
	ds_load_u8 v122, v59 offset:3328
	ds_load_u8 v123, v59 offset:3520
	ds_load_u8 v124, v59 offset:3456
	ds_load_u8 v125, v59 offset:3136
	ds_load_u8 v126, v59 offset:3072
	ds_load_u8 v127, v59 offset:3264
	ds_load_u8 v128, v59 offset:3200
	ds_load_u8 v129, v57 offset:7296
	ds_load_u8 v130, v57 offset:7168
	ds_load_u8 v131, v57 offset:7552
	ds_load_u8 v132, v57 offset:7424
	ds_load_u8 v133, v57 offset:6784
	ds_load_u8 v134, v57 offset:6656
	ds_load_u8 v135, v57 offset:7040
	ds_load_u8 v136, v57 offset:6912
	ds_load_u8 v137, v57 offset:6272
	ds_load_u8 v138, v57 offset:6144
	ds_load_u8 v139, v57 offset:6528
	ds_load_u8 v140, v57 offset:6400
	ds_load_u8 v141, v57 offset:1664
	ds_load_u8 v142, v57 offset:1536
	ds_load_u8 v143, v57 offset:1920
	ds_load_u8 v144, v57 offset:1792
	ds_load_u8 v145, v57 offset:1984
	ds_load_u8 v146, v57 offset:1856
	ds_load_u8 v147, v57 offset:1728
	ds_load_u8 v148, v57 offset:1600
	ds_load_u8 v149, v57 offset:1152
	ds_load_u8 v150, v57 offset:1024
	ds_load_u8 v151, v57 offset:1408
	ds_load_u8 v152, v57 offset:1280
	ds_load_u8 v153, v57 offset:1472
	ds_load_u8 v154, v57 offset:1344
	ds_load_u8 v155, v57 offset:1216
	ds_load_u8 v156, v57 offset:1088
	ds_load_u8 v157, v57 offset:640
	ds_load_u8 v158, v57 offset:512
	ds_load_u8 v159, v57 offset:896
	ds_load_u8 v160, v57 offset:768
	ds_load_u8 v161, v57 offset:960
	ds_load_u8 v162, v57 offset:832
	ds_load_u8 v163, v57 offset:704
	ds_load_u8 v164, v57 offset:576
	ds_load_u8 v165, v57 offset:128
	ds_load_u8 v166, v57
	ds_load_u8 v167, v57 offset:384
	ds_load_u8 v168, v57 offset:256
	ds_load_u8 v169, v57 offset:448
	ds_load_u8 v170, v57 offset:320
	ds_load_u8 v171, v57 offset:192
	ds_load_u8 v172, v57 offset:64
	ds_load_u8 v173, v57 offset:3712
	ds_load_u8 v174, v57 offset:3584
	ds_load_u8 v175, v57 offset:3968
	ds_load_u8 v176, v57 offset:3840
	ds_load_u8 v177, v57 offset:4032
	ds_load_u8 v178, v57 offset:3904
	ds_load_u8 v179, v57 offset:3776
	ds_load_u8 v180, v57 offset:3648
	ds_load_u8 v181, v57 offset:3200
	ds_load_u8 v182, v57 offset:3072
	ds_load_u8 v183, v57 offset:3456
	ds_load_u8 v184, v57 offset:3328
	ds_load_u8 v185, v57 offset:3520
	ds_load_u8 v186, v57 offset:3392
	ds_load_u8 v187, v57 offset:3264
	ds_load_u8 v188, v57 offset:3136
	ds_load_u8 v189, v57 offset:2688
	ds_load_u8 v190, v57 offset:2560
	ds_load_u8 v191, v57 offset:2944
	ds_load_u8 v192, v57 offset:2816
	ds_load_u8 v193, v57 offset:3008
	ds_load_u8 v194, v57 offset:2880
	ds_load_u8 v195, v57 offset:2752
	ds_load_u8 v196, v57 offset:2624
	ds_load_u8 v197, v57 offset:2176
	ds_load_u8 v198, v57 offset:2048
	ds_load_u8 v199, v57 offset:2432
	ds_load_u8 v200, v57 offset:2304
	ds_load_u8 v201, v57 offset:2496
	ds_load_u8 v202, v57 offset:2368
	ds_load_u8 v203, v57 offset:2240
	ds_load_u8 v204, v57 offset:2112
	ds_load_u8 v205, v57 offset:5760
	ds_load_u8 v206, v57 offset:5632
	ds_load_u8 v207, v57 offset:6016
	ds_load_u8 v208, v57 offset:5888
	ds_load_u8 v209, v57 offset:6080
	ds_load_u8 v210, v57 offset:5952
	ds_load_u8 v211, v57 offset:5824
	ds_load_u8 v212, v57 offset:5696
	ds_load_u8 v213, v57 offset:5248
	ds_load_u8 v214, v57 offset:5120
	ds_load_u8 v215, v57 offset:5504
	ds_load_u8 v216, v57 offset:5376
	ds_load_u8 v217, v57 offset:5568
	ds_load_u8 v218, v57 offset:5440
	ds_load_u8 v219, v57 offset:5312
	ds_load_u8 v220, v57 offset:5184
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s37, 1
	s_mov_b32 s16, s3
	s_cmp_lt_i32 s1, 2
	v_mov_b32_e32 v49, v48
	s_cselect_b32 s37, s1, 0
	v_mov_b32_e32 v48, v47
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s3, s37, 12
	v_mov_b32_e32 v47, v46
	s_add_i32 s18, s3, 0
	v_dual_mov_b32 v46, v45 :: v_dual_mov_b32 v45, v44
	v_dual_mov_b32 v44, v43 :: v_dual_mov_b32 v43, v42
	v_dual_mov_b32 v42, v41 :: v_dual_mov_b32 v41, v40
	v_dual_mov_b32 v40, v39 :: v_dual_mov_b32 v39, v38
	v_mov_b32_e32 v38, v222
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v222, v57 offset:4608
	ds_load_u8 v223, v57 offset:4992
	ds_load_u8 v224, v57 offset:4864
	ds_load_u8 v225, v57 offset:5056
	ds_load_u8 v226, v57 offset:4928
	ds_load_u8 v227, v57 offset:4800
	ds_load_u8 v228, v57 offset:4672
	ds_load_u8 v229, v57 offset:4224
	ds_load_u8 v230, v57 offset:4096
	ds_load_u8 v231, v57 offset:4480
	ds_load_u8 v232, v57 offset:4352
	ds_load_u8 v233, v57 offset:4544
	ds_load_u8 v234, v57 offset:4416
	ds_load_u8 v235, v57 offset:4288
	ds_load_u8 v236, v57 offset:4160
	ds_load_u8 v14, v57 offset:7808
	ds_load_u8 v238, v57 offset:7680
	ds_load_u8 v239, v57 offset:8064
	ds_load_u8 v240, v57 offset:7936
	ds_load_u8 v241, v57 offset:8128
	ds_load_u8 v242, v57 offset:8000
	ds_load_u8 v243, v57 offset:7872
	ds_load_u8 v244, v57 offset:7744
	ds_load_u8 v245, v59 offset:992
	ds_load_u8 v246, v59 offset:928
	ds_load_u8 v247, v59 offset:864
	ds_load_u8 v248, v59 offset:800
	ds_load_u8 v249, v59 offset:736
	ds_load_u8 v250, v59 offset:672
	ds_load_u8 v251, v59 offset:608
	ds_load_u8 v252, v59 offset:544
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v59 offset:480
	ds_load_u8 v20, v59 offset:1056
	v_perm_b32 v63, v65, v63, 0xc0c0004
	ds_load_u8 v65, v59 offset:416
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v59 offset:352
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v59 offset:288
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v57 offset:7616
	v_perm_b32 v141, v142, v141, 0xc0c0004
	v_perm_b32 v142, v144, v143, 0xc0c0004
	v_perm_b32 v144, v150, v149, 0xc0c0004
	ds_load_u8 v149, v59 offset:1760
	v_perm_b32 v150, v152, v151, 0xc0c0004
	ds_load_u8 v151, v59 offset:1696
	v_perm_b32 v152, v158, v157, 0xc0c0004
	ds_load_u8 v157, v59 offset:1632
	v_perm_b32 v158, v160, v159, 0xc0c0004
	ds_load_u8 v159, v59 offset:1568
	v_perm_b32 v160, v166, v165, 0xc0c0004
	ds_load_u8 v165, v59 offset:1504
	v_perm_b32 v166, v168, v167, 0xc0c0004
	ds_load_u8 v167, v59 offset:1440
	v_perm_b32 v254, v84, v83, 0xc0c0004
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v83, v59 offset:1248
	ds_load_u8 v84, v59 offset:1184
	v_perm_b32 v86, v88, v87, 0xc0c0004
	ds_load_u8 v88, v59 offset:1120
	ds_load_u8 v52, v59 offset:3040
	v_dual_mov_b32 v37, v36 :: v_dual_mov_b32 v36, v35
	v_dual_mov_b32 v35, v34 :: v_dual_mov_b32 v34, v33
	v_dual_mov_b32 v33, v32 :: v_dual_mov_b32 v32, v31
	v_dual_mov_b32 v31, v30 :: v_dual_mov_b32 v30, v29
	v_dual_mov_b32 v29, v28 :: v_dual_mov_b32 v28, v27
	v_dual_mov_b32 v27, v26 :: v_dual_mov_b32 v26, v25
	v_dual_mov_b32 v25, v24 :: v_dual_mov_b32 v24, v23
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v59 offset:2784
	v_perm_b32 v183, v184, v183, 0xc0c0004
	ds_load_u8 v184, v59 offset:2720
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	ds_load_u8 v190, v59 offset:2656
	v_perm_b32 v191, v192, v191, 0xc0c0004
	ds_load_u8 v192, v59 offset:2592
	v_perm_b32 v197, v198, v197, 0xc0c0004
	ds_load_u8 v198, v59 offset:2528
	v_perm_b32 v199, v200, v199, 0xc0c0004
	ds_load_u8 v200, v59 offset:2464
	v_perm_b32 v54, v98, v97, 0xc0c0004
	ds_load_u8 v97, v59 offset:2400
	ds_load_u8 v98, v59 offset:2336
	v_perm_b32 v15, v104, v103, 0xc0c0004
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_perm_b32 v106, v108, v107, 0xc0c0004
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v103, v57 offset:7360
	v_perm_b32 v110, v112, v111, 0xc0c0004
	v_perm_b32 v111, v206, v205, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v112, v208, v207, 0xc0c0004
	ds_load_u8 v108, v59 offset:3936
	ds_load_u8 v206, v59 offset:3872
	ds_load_u8 v208, v59 offset:3808
	v_perm_b32 v205, v214, v213, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v207, v216, v215, 0xc0c0004
	ds_load_u8 v214, v59 offset:3744
	ds_load_u8 v216, v59 offset:3680
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v215, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v223, v232, v231, 0xc0c0004
	ds_load_u8 v224, v59 offset:3552
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v59 offset:3424
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v59 offset:3360
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v120, v59 offset:3296
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v59 offset:3232
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v57 offset:7104
	ds_load_u8 v232, v57 offset:6848
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v57 offset:6720
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v57 offset:6592
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v57 offset:6464
	v_perm_b32 v213, v222, v221, 0xc0c0004
	ds_load_u8 v222, v59 offset:3616
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s3, s18, s3
	v_dual_mov_b32 v23, v22 :: v_dual_mov_b32 v22, v21
	v_mov_b32_e32 v21, v19
	v_mov_b32_e32 v19, v13
	v_mov_b32_e32 v13, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v59 offset:2976
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v57 offset:7488
	v_perm_b32 v168, v82, v81, 0xc0c0004
	ds_load_u8 v81, v59 offset:1376
	ds_load_u8 v82, v59 offset:1312
	v_perm_b32 v221, v230, v229, 0xc0c0004
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v59 offset:3488
	v_perm_b32 v125, v126, v125, 0xc0c0004
	ds_load_u8 v126, v57 offset:7232
	ds_load_u8 v230, v57 offset:6976
	v_perm_b32 v87, v90, v89, 0xc0c0004
	v_perm_b32 v255, v92, v91, 0xc0c0004
	v_perm_b32 v18, v94, v93, 0xc0c0004
	v_perm_b32 v53, v96, v95, 0xc0c0004
	v_perm_b32 v173, v174, v173, 0xc0c0004
	ds_load_u8 v174, v59 offset:2912
	v_perm_b32 v123, v124, v123, 0xc0c0004
	v_perm_b32 v137, v138, v137, 0xc0c0004
	v_perm_b32 v138, v140, v139, 0xc0c0004
	v_perm_b32 v139, v148, v147, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[89:92], v60, s[24:27], 0 offen
	buffer_load_b128 v[93:96], v58, s[24:27], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v60, v146, v145, 0xc0c0004
	v_perm_b32 v140, v156, v155, 0xc0c0004
	v_perm_b32 v58, v164, v163, 0xc0c0004
	v_perm_b32 v146, v162, v161, 0xc0c0004
	v_perm_b32 v147, v172, v171, 0xc0c0004
	v_perm_b32 v148, v170, v169, 0xc0c0004
	v_perm_b32 v155, v180, v179, 0xc0c0004
	v_perm_b32 v156, v178, v177, 0xc0c0004
	v_perm_b32 v161, v188, v187, 0xc0c0004
	v_perm_b32 v162, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v68, v70, v68, 0xc0c0004
	v_perm_b32 v62, v65, v62, 0xc0c0004
	v_perm_b32 v65, v80, v79, 0xc0c0004
	v_perm_b32 v70, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v78, v159, v157, 0xc0c0004
	v_perm_b32 v79, v151, v149, 0xc0c0004
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v149, v167, v165, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v0, v0, v52, 0xc0c0004
	v_perm_b32 v52, v192, v190, 0xc0c0004
	v_perm_b32 v157, v184, v182, 0xc0c0004
	v_perm_b32 v159, v98, v97, 0xc0c0004
	v_perm_b32 v165, v200, v198, 0xc0c0004
	v_perm_b32 v253, v76, v75, 0xc0c0004
	ds_load_u8 v75, v59 offset:2016
	ds_load_u8 v76, v59 offset:1888
	ds_load_u8 v143, v59 offset:1824
	v_perm_b32 v64, v66, v64, 0xc0c0004
	v_perm_b32 v175, v176, v175, 0xc0c0004
	ds_load_u8 v176, v59 offset:2848
	v_perm_b32 v55, v100, v99, 0xc0c0004
	v_perm_b32 v16, v102, v101, 0xc0c0004
	ds_load_u8 v99, v59 offset:2272
	ds_load_u8 v100, v59 offset:2208
	ds_load_u8 v101, v59 offset:2144
	ds_load_u8 v102, v59 offset:2080
	ds_load_u8 v66, v59 offset:1952
	ds_load_u8 v104, v59 offset:4064
	ds_load_u8 v107, v59 offset:4000
	ds_load_u8 v124, v59 offset:3168
	ds_load_u8 v59, v59 offset:3104
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v57 offset:6336
	ds_load_u8 v57, v57 offset:6208
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v163, v196, v195, 0xc0c0004
	v_perm_b32 v195, v230, v128, 0xc0c0004
	v_perm_b32 v80, v82, v81, 0xc0c0004
	v_perm_b32 v192, v118, v116, 0xc0c0004
	v_perm_b32 v198, v114, v224, 0xc0c0004
	v_perm_b32 v200, v122, v120, 0xc0c0004
	v_lshl_or_b32 v82, v158, 16, v152
	v_lshl_or_b32 v81, v166, 16, v160
	v_lshl_or_b32 v116, v115, 16, v113
	v_lshl_or_b32 v114, v123, 16, v121
	v_lshl_or_b32 v113, v127, 16, v125
	v_lshl_or_b32 v122, v146, 16, v58
	v_lshl_or_b32 v121, v148, 16, v147
	v_lshl_or_b32 v128, v156, 16, v155
	v_lshl_or_b32 v127, v162, 16, v161
	v_lshl_or_b32 v147, v157, 16, v52
	v_lshl_or_b32 v146, v165, 16, v159
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[155:158], off, off
	scratch_load_b128 v[159:162], off, off offset:16
	v_perm_b32 v145, v154, v153, 0xc0c0004
	v_perm_b32 v169, v204, v203, 0xc0c0004
	v_perm_b32 v170, v202, v201, 0xc0c0004
	v_perm_b32 v72, v74, v72, 0xc0c0004
	v_perm_b32 v57, v57, v136, 0xc0c0004
	v_perm_b32 v196, v134, v132, 0xc0c0004
	v_perm_b32 v201, v248, v247, 0xc0c0004
	v_perm_b32 v202, v246, v245, 0xc0c0004
	v_perm_b32 v203, v252, v251, 0xc0c0004
	v_perm_b32 v204, v250, v249, 0xc0c0004
	v_perm_b32 v77, v143, v76, 0xc0c0004
	v_perm_b32 v66, v66, v75, 0xc0c0004
	v_perm_b32 v20, v20, v88, 0xc0c0004
	v_perm_b32 v88, v84, v83, 0xc0c0004
	v_perm_b32 v59, v59, v124, 0xc0c0004
	v_lshl_or_b32 v76, v63, 16, v61
	v_lshl_or_b32 v75, v69, 16, v67
	v_lshl_or_b32 v74, v73, 16, v71
	v_lshl_or_b32 v73, v64, 16, v253
	v_lshl_or_b32 v84, v142, 16, v141
	v_lshl_or_b32 v83, v150, 16, v144
	v_perm_b32 v164, v194, v193, 0xc0c0004
	v_perm_b32 v193, v126, v103, 0xc0c0004
	v_perm_b32 v151, v176, v174, 0xc0c0004
	v_perm_b32 v167, v102, v101, 0xc0c0004
	v_perm_b32 v174, v100, v99, 0xc0c0004
	v_perm_b32 v182, v107, v104, 0xc0c0004
	v_lshl_or_b32 v100, v254, 16, v168
	v_lshl_or_b32 v99, v86, 16, v85
	v_lshl_or_b32 v98, v255, 16, v87
	v_lshl_or_b32 v97, v53, 16, v18
	v_lshl_or_b32 v104, v175, 16, v173
	v_lshl_or_b32 v103, v183, 16, v181
	v_lshl_or_b32 v102, v191, 16, v189
	v_lshl_or_b32 v101, v199, 16, v197
	v_lshl_or_b32 v115, v119, 16, v117
	v_lshl_or_b32 v118, v135, 16, v133
	v_lshl_or_b32 v117, v138, 16, v137
	v_lshl_or_b32 v124, v60, 16, v139
	v_lshl_or_b32 v123, v145, 16, v140
	v_lshl_or_b32 v133, v196, 16, v57
	v_lshl_or_b32 v140, v202, 16, v201
	v_lshl_or_b32 v139, v204, 16, v203
	v_lshl_or_b32 v138, v62, 16, v68
	v_lshl_or_b32 v137, v70, 16, v65
	v_lshl_or_b32 v142, v149, 16, v80
	v_lshl_or_b32 v149, v200, 16, v59
	v_perm_b32 v229, v238, v14, 0xc0c0004
	v_perm_b32 v231, v240, v239, 0xc0c0004
	v_perm_b32 v171, v212, v211, 0xc0c0004
	v_perm_b32 v172, v210, v209, 0xc0c0004
	v_perm_b32 v177, v220, v219, 0xc0c0004
	v_perm_b32 v178, v218, v217, 0xc0c0004
	v_perm_b32 v179, v228, v227, 0xc0c0004
	v_perm_b32 v180, v226, v225, 0xc0c0004
	v_perm_b32 v185, v236, v235, 0xc0c0004
	v_perm_b32 v186, v234, v233, 0xc0c0004
	v_perm_b32 v176, v206, v108, 0xc0c0004
	v_lshl_or_b32 v108, v55, 16, v54
	v_lshl_or_b32 v107, v15, 16, v16
	v_lshl_or_b32 v106, v106, 16, v105
	v_lshl_or_b32 v105, v110, 16, v109
	v_lshl_or_b32 v112, v112, 16, v111
	v_lshl_or_b32 v111, v207, 16, v205
	v_lshl_or_b32 v110, v215, 16, v213
	v_lshl_or_b32 v109, v223, 16, v221
	v_lshl_or_b32 v126, v164, 16, v163
	v_lshl_or_b32 v125, v170, 16, v169
	v_lshl_or_b32 v135, v72, 16, v193
	v_lshl_or_b32 v144, v66, 16, v77
	v_lshl_or_b32 v143, v79, 16, v78
	v_lshl_or_b32 v141, v88, 16, v20
	v_perm_b32 v187, v244, v243, 0xc0c0004
	v_perm_b32 v188, v242, v241, 0xc0c0004
	v_perm_b32 v194, v130, v232, 0xc0c0004
	v_perm_b32 v184, v222, v216, 0xc0c0004
	v_perm_b32 v190, v214, v208, 0xc0c0004
	v_lshl_or_b32 v120, v231, 16, v229
	v_lshl_or_b32 v119, v131, 16, v129
	v_lshl_or_b32 v132, v172, 16, v171
	v_lshl_or_b32 v131, v178, 16, v177
	v_lshl_or_b32 v130, v180, 16, v179
	v_lshl_or_b32 v129, v186, 16, v185
	v_lshl_or_b32 v148, v0, 16, v151
	v_lshl_or_b32 v145, v174, 16, v167
	v_lshl_or_b32 v136, v188, 16, v187
	v_lshl_or_b32 v134, v195, 16, v194
	v_lshl_or_b32 v152, v182, 16, v176
	v_lshl_or_b32 v151, v190, 16, v184
	v_lshl_or_b32 v150, v198, 16, v192
	v_dual_mov_b32 v222, v38 :: v_dual_add_nc_u32 v153, s18, v237
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v154, s3, v237
	v_dual_mov_b32 v38, v39 :: v_dual_mov_b32 v39, v40
	v_dual_mov_b32 v40, v41 :: v_dual_mov_b32 v41, v42
	v_dual_mov_b32 v42, v43 :: v_dual_mov_b32 v43, v44
	v_dual_mov_b32 v44, v45 :: v_dual_mov_b32 v45, v46
	v_dual_mov_b32 v46, v47 :: v_dual_mov_b32 v221, v17
	v_mov_b32_e32 v17, v56
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s17, 1
	s_mov_b32 s0, s6
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s6, s18, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s17, s15
	s_mov_b32 s17, s1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v153, v[9:12] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v154, v[89:92]
	s_waitcnt vmcnt(2)
	ds_store_b128 v154, v[93:96] offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[81:84], v[73:76], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[121:124], v[73:76], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[81:84], v[137:140], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[121:124], v[137:140], v[155:162] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[101:104], v[97:100], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[125:128], v[97:100], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[101:104], v[141:144], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[125:128], v[141:144], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[109:112], v[105:108], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[129:132], v[105:108], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[109:112], v[145:148], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[129:132], v[145:148], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[117:120], v[113:116], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[133:136], v[113:116], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[117:120], v[149:152], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[133:136], v[149:152], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v0, v57
	v_dual_mov_b32 v47, v48 :: v_dual_mov_b32 v48, v49
	v_dual_mov_b32 v49, v50 :: v_dual_mov_b32 v50, v51
	v_mov_b32_e32 v51, v1
	v_cvt_f32_i32_e32 v15, v58
	v_cvt_f32_i32_e32 v16, v59
	v_cvt_f32_i32_e32 v18, v60
	v_cvt_f32_i32_e32 v20, v61
	v_cvt_f32_i32_e32 v52, v62
	v_cvt_f32_i32_e32 v53, v63
	v_cvt_f32_i32_e32 v54, v64
	v_cvt_f32_i32_e32 v55, v65
	v_cvt_f32_i32_e32 v57, v66
	v_cvt_f32_i32_e32 v58, v67
	v_cvt_f32_i32_e32 v59, v68
	v_cvt_f32_i32_e32 v60, v69
	v_cvt_f32_i32_e32 v61, v70
	v_cvt_f32_i32_e32 v62, v71
	v_cvt_f32_i32_e32 v63, v72
	v_cvt_f32_i32_e32 v64, v73
	v_cvt_f32_i32_e32 v65, v74
	v_cvt_f32_i32_e32 v66, v75
	v_cvt_f32_i32_e32 v67, v76
	v_cvt_f32_i32_e32 v68, v77
	v_cvt_f32_i32_e32 v69, v78
	v_cvt_f32_i32_e32 v70, v79
	v_cvt_f32_i32_e32 v71, v80
	v_cvt_f32_i32_e32 v72, v81
	v_cvt_f32_i32_e32 v73, v82
	v_cvt_f32_i32_e32 v74, v83
	v_cvt_f32_i32_e32 v75, v84
	v_cvt_f32_i32_e32 v76, v85
	v_cvt_f32_i32_e32 v77, v86
	v_cvt_f32_i32_e32 v78, v87
	v_cvt_f32_i32_e32 v79, v88
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v222, v222, v0
	v_dual_mov_b32 v0, v13 :: v_dual_mov_b32 v13, v19
	v_mov_b32_e32 v19, v21
	v_dual_mov_b32 v21, v22 :: v_dual_mov_b32 v22, v23
	v_dual_mov_b32 v23, v24 :: v_dual_mov_b32 v24, v25
	v_dual_mov_b32 v25, v26 :: v_dual_mov_b32 v26, v27
	v_dual_mov_b32 v27, v28 :: v_dual_add_f32 v50, v50, v16
	v_dual_mov_b32 v28, v29 :: v_dual_mov_b32 v29, v30
	v_add_f32_e32 v48, v48, v20
	v_dual_mov_b32 v30, v31 :: v_dual_mov_b32 v31, v32
	v_add_f32_e32 v46, v46, v53
	v_dual_mov_b32 v32, v33 :: v_dual_mov_b32 v33, v34
	v_add_f32_e32 v44, v44, v55
	v_dual_mov_b32 v34, v35 :: v_dual_mov_b32 v35, v36
	v_add_f32_e32 v42, v42, v58
	v_dual_mov_b32 v36, v37 :: v_dual_add_f32 v51, v51, v15
	v_dual_add_f32 v40, v40, v60 :: v_dual_add_f32 v49, v49, v18
	v_dual_add_f32 v47, v47, v52 :: v_dual_add_f32 v38, v38, v62
	v_dual_add_f32 v45, v45, v54 :: v_dual_add_f32 v34, v34, v65
	v_dual_add_f32 v43, v43, v57 :: v_dual_add_f32 v32, v32, v67
	v_dual_add_f32 v41, v41, v59 :: v_dual_add_f32 v30, v30, v69
	v_dual_add_f32 v39, v39, v61 :: v_dual_add_f32 v28, v28, v71
	v_dual_add_f32 v36, v36, v63 :: v_dual_add_f32 v35, v35, v64
	v_dual_add_f32 v26, v26, v73 :: v_dual_add_f32 v33, v33, v66
	v_dual_add_f32 v24, v24, v75 :: v_dual_add_f32 v31, v31, v68
	v_dual_add_f32 v22, v22, v77 :: v_dual_add_f32 v29, v29, v70
	v_add_f32_e32 v27, v27, v72
	v_add_f32_e32 v25, v25, v74
	v_add_f32_e32 v23, v23, v76
	v_add_f32_e32 v21, v21, v78
	v_add_f32_e32 v19, v19, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v218, off, off offset:32
	scratch_load_b32 v219, off, off offset:36
	scratch_load_b32 v220, off, off offset:40
	s_branch .LBB0_5
.LBB0_4:
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v222, 0
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s6, 0, 0x5000
	s_add_i32 s3, 0, 0x2000
	v_mov_b32_e32 v3, v15
.LBB0_5:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v54, v221, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s36
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_7
; %bb.6:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v56, s16, v54
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
	v_add_nc_u32_e32 v55, s0, v17
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v55 offset:832
	ds_load_u8 v1, v55 offset:768
	ds_load_u8 v2, v55 offset:960
	ds_load_u8 v3, v55 offset:896
	ds_load_u8 v4, v55 offset:576
	ds_load_u8 v5, v55 offset:512
	ds_load_u8 v6, v55 offset:704
	ds_load_u8 v7, v55 offset:640
	ds_load_u8 v8, v55 offset:320
	ds_load_u8 v9, v55 offset:256
	ds_load_u8 v10, v55 offset:448
	ds_load_u8 v11, v55 offset:384
	ds_load_u8 v12, v55 offset:64
	ds_load_u8 v13, v55
	ds_load_u8 v14, v55 offset:192
	ds_load_u8 v15, v55 offset:128
	ds_load_u8 v18, v55 offset:992
	ds_load_u8 v20, v55 offset:928
	ds_load_u8 v52, v55 offset:864
	ds_load_u8 v53, v55 offset:800
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v1, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v2, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v7, v6, 0xc0c0004
	v_lshl_or_b32 v66, v1, 16, v0
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v9, v8, 0xc0c0004
	ds_load_u8 v5, v56 offset:1664
	ds_load_u8 v6, v56 offset:1536
	ds_load_u8 v7, v56 offset:1920
	ds_load_u8 v8, v56 offset:1792
	v_lshl_or_b32 v65, v3, 16, v2
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	v_lshl_or_b32 v64, v2, 16, v1
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	v_lshl_or_b32 v63, v4, 16, v3
	ds_load_u8 v1, v56 offset:1152
	ds_load_u8 v2, v56 offset:1024
	ds_load_u8 v3, v56 offset:1408
	ds_load_u8 v4, v56 offset:1280
	ds_load_u8 v9, v56 offset:640
	ds_load_u8 v10, v56 offset:512
	ds_load_u8 v11, v56 offset:896
	ds_load_u8 v12, v56 offset:768
	ds_load_u8 v13, v56 offset:128
	ds_load_u8 v14, v56
	ds_load_u8 v15, v56 offset:384
	ds_load_u8 v16, v56 offset:256
	ds_load_u8 v57, v56 offset:1984
	ds_load_u8 v58, v56 offset:1856
	ds_load_u8 v59, v56 offset:1728
	ds_load_u8 v60, v56 offset:1600
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	v_perm_b32 v6, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v12, v11, 0xc0c0004
	v_lshl_or_b32 v73, v2, 16, v1
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v14, v13, 0xc0c0004
	v_lshl_or_b32 v74, v6, 16, v5
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v16, v15, 0xc0c0004
	v_lshl_or_b32 v72, v4, 16, v3
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	v_lshl_or_b32 v71, v8, 16, v7
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	ds_load_u8 v67, v55 offset:1856
	ds_load_u8 v68, v55 offset:1792
	ds_load_u8 v69, v55 offset:1984
	ds_load_u8 v70, v55 offset:1920
	ds_load_u8 v75, v55 offset:1600
	ds_load_u8 v76, v55 offset:1536
	ds_load_u8 v77, v55 offset:1728
	ds_load_u8 v78, v55 offset:1664
	ds_load_u8 v79, v55 offset:1344
	ds_load_u8 v80, v55 offset:1280
	ds_load_u8 v81, v55 offset:1472
	ds_load_u8 v82, v55 offset:1408
	ds_load_u8 v118, v55 offset:2016
	ds_load_u8 v119, v55 offset:1952
	ds_load_u8 v120, v55 offset:1888
	ds_load_u8 v121, v55 offset:1824
	ds_load_u8 v61, v56 offset:1472
	ds_load_u8 v62, v56 offset:1344
	ds_load_u8 v91, v56 offset:1216
	ds_load_u8 v95, v56 offset:1088
	ds_load_u8 v96, v56 offset:960
	ds_load_u8 v97, v56 offset:832
	ds_load_u8 v98, v56 offset:704
	ds_load_u8 v99, v56 offset:576
	ds_load_u8 v100, v56 offset:448
	ds_load_u8 v101, v56 offset:320
	ds_load_u8 v102, v56 offset:192
	ds_load_u8 v103, v56 offset:64
	ds_load_u8 v107, v55 offset:736
	ds_load_u8 v108, v55 offset:672
	ds_load_u8 v109, v55 offset:608
	ds_load_u8 v110, v55 offset:544
	ds_load_u8 v0, v55 offset:480
	ds_load_u8 v111, v55 offset:416
	ds_load_u8 v112, v55 offset:352
	ds_load_u8 v113, v55 offset:288
	ds_load_u8 v114, v55 offset:224
	ds_load_u8 v115, v55 offset:160
	ds_load_u8 v116, v55 offset:96
	ds_load_u8 v117, v55 offset:32
	ds_load_u8 v126, v55 offset:1504
	ds_load_u8 v127, v55 offset:1440
	ds_load_u8 v128, v55 offset:1376
	ds_load_u8 v129, v55 offset:1312
	ds_load_u8 v130, v55 offset:1248
	ds_load_u8 v131, v55 offset:1184
	ds_load_u8 v132, v55 offset:1120
	ds_load_u8 v133, v55 offset:1056
	ds_load_u8 v155, v55 offset:2528
	ds_load_u8 v156, v55 offset:2464
	ds_load_u8 v157, v55 offset:2400
	ds_load_u8 v158, v55 offset:2336
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v159, v55 offset:2272
	ds_load_u8 v160, v55 offset:2208
	ds_load_u8 v161, v55 offset:2144
	ds_load_u8 v162, v55 offset:2080
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v76, v78, v77, 0xc0c0004
	ds_load_u8 v186, v55 offset:4064
	ds_load_u8 v187, v55 offset:4000
	ds_load_u8 v188, v55 offset:3936
	ds_load_u8 v189, v55 offset:3872
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v77, v80, v79, 0xc0c0004
	ds_load_u8 v139, v56 offset:3008
	ds_load_u8 v140, v56 offset:2880
	ds_load_u8 v141, v56 offset:2752
	ds_load_u8 v142, v56 offset:2624
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v78, v82, v81, 0xc0c0004
	ds_load_u8 v80, v56 offset:3712
	ds_load_u8 v81, v56 offset:3584
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v55 offset:1088
	ds_load_u8 v83, v55 offset:1024
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v55 offset:1216
	ds_load_u8 v84, v55 offset:1152
	ds_load_u8 v122, v55 offset:1760
	ds_load_u8 v123, v55 offset:1696
	ds_load_u8 v124, v55 offset:1632
	ds_load_u8 v125, v55 offset:1568
	ds_load_u8 v143, v56 offset:2496
	ds_load_u8 v144, v56 offset:2368
	ds_load_u8 v145, v56 offset:2240
	ds_load_u8 v146, v56 offset:2112
	ds_load_u8 v174, v56 offset:5056
	ds_load_u8 v175, v56 offset:4928
	ds_load_u8 v176, v56 offset:4800
	ds_load_u8 v177, v56 offset:4672
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v58, v95, v91, 0xc0c0004
	v_perm_b32 v60, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v61, v99, v98, 0xc0c0004
	v_perm_b32 v62, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v95, v103, v102, 0xc0c0004
	v_perm_b32 v99, v101, v100, 0xc0c0004
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_lshl_or_b32 v98, v57, 16, v59
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v82, v84, v70, 0xc0c0004
	v_lshl_or_b32 v70, v69, 16, v67
	v_perm_b32 v79, v83, v68, 0xc0c0004
	ds_load_u8 v83, v56 offset:3968
	ds_load_u8 v84, v56 offset:3840
	v_lshl_or_b32 v69, v76, 16, v75
	v_lshl_or_b32 v68, v78, 16, v77
	v_perm_b32 v80, v81, v80, 0xc0c0004
	v_lshl_or_b32 v67, v82, 16, v79
	ds_load_u8 v75, v56 offset:3200
	ds_load_u8 v76, v56 offset:3072
	ds_load_u8 v77, v56 offset:3456
	ds_load_u8 v78, v56 offset:3328
	ds_load_u8 v79, v56 offset:2688
	ds_load_u8 v82, v56 offset:2560
	ds_load_u8 v85, v56 offset:2944
	ds_load_u8 v86, v56 offset:2816
	ds_load_u8 v104, v56 offset:4032
	ds_load_u8 v105, v56 offset:3904
	ds_load_u8 v106, v56 offset:3776
	ds_load_u8 v134, v56 offset:3648
	ds_load_u8 v81, v56 offset:2176
	ds_load_u8 v87, v56 offset:2048
	v_lshl_or_b32 v97, v60, 16, v58
	v_lshl_or_b32 v96, v62, 16, v61
	v_lshl_or_b32 v95, v99, 16, v95
	v_wmma_i32_16x16x16_iu8 v[9:16], v[71:74], v[63:66], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v20, v110, v109, 0xc0c0004
	v_perm_b32 v53, v108, v107, 0xc0c0004
	v_perm_b32 v0, v111, v0, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	v_perm_b32 v108, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v76, v78, v77, 0xc0c0004
	v_perm_b32 v109, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v79, v82, v79, 0xc0c0004
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v56 offset:2432
	ds_load_u8 v88, v56 offset:2304
	ds_load_u8 v135, v56 offset:3520
	ds_load_u8 v136, v56 offset:3392
	ds_load_u8 v137, v56 offset:3264
	ds_load_u8 v138, v56 offset:3136
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v82, v86, v85, 0xc0c0004
	ds_load_u8 v85, v55 offset:2880
	ds_load_u8 v86, v55 offset:2816
	v_lshl_or_b32 v77, v76, 16, v75
	v_lshl_or_b32 v78, v83, 16, v80
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v81, v87, v81, 0xc0c0004
	v_lshl_or_b32 v76, v82, 16, v79
	v_perm_b32 v99, v134, v106, 0xc0c0004
	v_perm_b32 v100, v105, v104, 0xc0c0004
	v_perm_b32 v104, v142, v141, 0xc0c0004
	v_perm_b32 v105, v140, v139, 0xc0c0004
	v_perm_b32 v106, v146, v145, 0xc0c0004
	v_perm_b32 v134, v144, v143, 0xc0c0004
	v_lshl_or_b32 v102, v100, 16, v99
	v_perm_b32 v110, v131, v130, 0xc0c0004
	v_lshl_or_b32 v100, v105, 16, v104
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v84, v88, v84, 0xc0c0004
	ds_load_u8 v87, v55 offset:3008
	ds_load_u8 v88, v55 offset:2944
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v103, v136, v135, 0xc0c0004
	v_lshl_or_b32 v99, v134, 16, v106
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v101, v138, v137, 0xc0c0004
	v_lshl_or_b32 v75, v84, 16, v81
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v55 offset:2112
	ds_load_u8 v92, v55 offset:2048
	ds_load_u8 v79, v55 offset:2624
	ds_load_u8 v80, v55 offset:2560
	ds_load_u8 v81, v55 offset:2752
	ds_load_u8 v82, v55 offset:2688
	ds_load_u8 v83, v55 offset:2368
	ds_load_u8 v84, v55 offset:2304
	ds_load_u8 v89, v55 offset:2496
	ds_load_u8 v90, v55 offset:2432
	ds_load_u8 v147, v55 offset:3040
	ds_load_u8 v148, v55 offset:2976
	ds_load_u8 v149, v55 offset:2912
	ds_load_u8 v150, v55 offset:2848
	v_lshl_or_b32 v101, v103, 16, v101
	v_perm_b32 v103, v177, v176, 0xc0c0004
	v_perm_b32 v104, v175, v174, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[75:78], v[67:70], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v104, v104, 16, v103
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v80, v82, v81, 0xc0c0004
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v55 offset:2240
	ds_load_u8 v93, v55 offset:2176
	ds_load_u8 v151, v55 offset:2784
	ds_load_u8 v152, v55 offset:2720
	ds_load_u8 v153, v55 offset:2656
	ds_load_u8 v154, v55 offset:2592
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v84, v90, v89, 0xc0c0004
	v_lshl_or_b32 v81, v80, 16, v79
	v_lshl_or_b32 v82, v87, 16, v85
	v_perm_b32 v86, v92, v86, 0xc0c0004
	ds_load_u8 v89, v56 offset:5760
	ds_load_u8 v90, v56 offset:5632
	ds_load_u8 v92, v56 offset:6016
	ds_load_u8 v94, v56 offset:5888
	v_lshl_or_b32 v80, v84, 16, v83
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v88, v93, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v88, 16, v86
	ds_load_u8 v83, v56 offset:5248
	ds_load_u8 v84, v56 offset:5120
	ds_load_u8 v85, v56 offset:5504
	ds_load_u8 v86, v56 offset:5376
	ds_load_u8 v87, v56 offset:4736
	ds_load_u8 v88, v56 offset:4608
	ds_load_u8 v93, v56 offset:4992
	ds_load_u8 v163, v56 offset:4864
	ds_load_u8 v164, v56 offset:6080
	ds_load_u8 v165, v56 offset:5952
	ds_load_u8 v166, v56 offset:5824
	ds_load_u8 v167, v56 offset:5696
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v90, v94, v92, 0xc0c0004
	ds_load_u8 v92, v56 offset:4224
	ds_load_u8 v94, v56 offset:4096
	ds_load_u8 v168, v56 offset:4480
	ds_load_u8 v169, v56 offset:4352
	ds_load_u8 v170, v56 offset:5568
	ds_load_u8 v171, v56 offset:5440
	ds_load_u8 v172, v56 offset:5312
	ds_load_u8 v173, v56 offset:5184
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v84, v86, v85, 0xc0c0004
	v_lshl_or_b32 v86, v90, 16, v89
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v88, v163, v93, 0xc0c0004
	ds_load_u8 v93, v55 offset:3904
	ds_load_u8 v163, v55 offset:3840
	ds_load_u8 v178, v55 offset:4032
	ds_load_u8 v179, v55 offset:3968
	ds_load_u8 v180, v56 offset:4544
	ds_load_u8 v181, v56 offset:4416
	ds_load_u8 v182, v56 offset:4288
	ds_load_u8 v183, v56 offset:4160
	v_lshl_or_b32 v85, v84, 16, v83
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v92, v94, v92, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v94, v169, v168, 0xc0c0004
	ds_load_u8 v168, v55 offset:3648
	ds_load_u8 v169, v55 offset:3584
	ds_load_u8 v184, v55 offset:3776
	ds_load_u8 v185, v55 offset:3712
	v_lshl_or_b32 v84, v88, 16, v87
	v_lshl_or_b32 v83, v94, 16, v92
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v87, v163, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[83:86], v[79:82], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v88, v179, v178, 0xc0c0004
	ds_load_u8 v92, v55 offset:3392
	ds_load_u8 v93, v55 offset:3328
	ds_load_u8 v94, v55 offset:3520
	ds_load_u8 v163, v55 offset:3456
	ds_load_u8 v178, v55 offset:3808
	ds_load_u8 v179, v55 offset:3744
	ds_load_u8 v190, v55 offset:3680
	ds_load_u8 v191, v55 offset:3616
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v135, v181, v180, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v134, v183, v182, 0xc0c0004
	v_lshl_or_b32 v90, v88, 16, v87
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v89, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v168, v185, v184, 0xc0c0004
	ds_load_u8 v169, v55 offset:3136
	ds_load_u8 v184, v55 offset:3072
	ds_load_u8 v185, v55 offset:3264
	ds_load_u8 v192, v55 offset:3200
	v_lshl_or_b32 v103, v135, 16, v134
	v_lshl_or_b32 v89, v168, 16, v89
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v87, v93, v92, 0xc0c0004
	ds_load_u8 v168, v55 offset:3552
	ds_load_u8 v193, v55 offset:3488
	ds_load_u8 v194, v55 offset:3424
	ds_load_u8 v195, v55 offset:3360
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v88, v163, v94, 0xc0c0004
	ds_load_u8 v92, v56 offset:7808
	ds_load_u8 v93, v56 offset:7680
	ds_load_u8 v94, v56 offset:8064
	ds_load_u8 v163, v56 offset:7936
	ds_load_u8 v196, v55 offset:3296
	ds_load_u8 v197, v55 offset:3232
	ds_load_u8 v198, v55 offset:3168
	ds_load_u8 v199, v55 offset:3104
	v_lshl_or_b32 v88, v88, 16, v87
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v55, v184, v169, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v169, v192, v185, 0xc0c0004
	ds_load_u8 v184, v56 offset:7296
	ds_load_u8 v185, v56 offset:7168
	ds_load_u8 v192, v56 offset:7552
	ds_load_u8 v200, v56 offset:7424
	ds_load_u8 v201, v56 offset:6784
	ds_load_u8 v202, v56 offset:6656
	ds_load_u8 v203, v56 offset:7040
	ds_load_u8 v204, v56 offset:6912
	ds_load_u8 v205, v56 offset:8128
	ds_load_u8 v206, v56 offset:8000
	ds_load_u8 v207, v56 offset:7872
	ds_load_u8 v208, v56 offset:7744
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v93, v163, v94, 0xc0c0004
	ds_load_u8 v163, v56 offset:6272
	ds_load_u8 v209, v56 offset:6144
	ds_load_u8 v210, v56 offset:6528
	ds_load_u8 v211, v56 offset:6400
	ds_load_u8 v212, v56 offset:7616
	ds_load_u8 v213, v56 offset:7488
	ds_load_u8 v214, v56 offset:7360
	ds_load_u8 v215, v56 offset:7232
	v_lshl_or_b32 v87, v169, 16, v55
	v_lshl_or_b32 v94, v93, 16, v92
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v185, v200, v192, 0xc0c0004
	ds_load_u8 v192, v56 offset:7104
	ds_load_u8 v200, v56 offset:6976
	ds_load_u8 v216, v56 offset:6848
	ds_load_u8 v217, v56 offset:6720
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v201, v202, v201, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v202, v204, v203, 0xc0c0004
	v_lshl_or_b32 v93, v185, 16, v184
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v55, v209, v163, 0xc0c0004
	v_perm_b32 v135, v206, v205, 0xc0c0004
	v_perm_b32 v134, v208, v207, 0xc0c0004
	v_lshl_or_b32 v92, v202, 16, v201
	ds_load_u8 v169, v56 offset:6592
	ds_load_u8 v184, v56 offset:6464
	ds_load_u8 v185, v56 offset:6336
	ds_load_u8 v201, v56 offset:6208
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v56, v211, v210, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v136, v215, v214, 0xc0c0004
	v_perm_b32 v137, v213, v212, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v91, v56, 16, v55
	v_wmma_i32_16x16x16_iu8 v[55:62], v[95:98], v[63:66], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v63, v167, v166, 0xc0c0004
	v_perm_b32 v64, v165, v164, 0xc0c0004
	v_perm_b32 v65, v173, v172, 0xc0c0004
	v_perm_b32 v66, v171, v170, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[55:62], v[99:102], v[67:70], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[91:94], v[87:90], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v64, 16, v63
	v_perm_b32 v63, v113, v112, 0xc0c0004
	v_lshl_or_b32 v105, v66, 16, v65
	v_perm_b32 v64, v117, v116, 0xc0c0004
	v_perm_b32 v65, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v138, v217, v216, 0xc0c0004
	v_perm_b32 v139, v200, v192, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[55:62], v[103:106], v[79:82], v[55:62] neg_lo:[1,1,0]
	v_lshl_or_b32 v82, v18, 16, v52
	v_lshl_or_b32 v81, v53, 16, v20
	v_lshl_or_b32 v80, v0, 16, v63
	v_lshl_or_b32 v79, v65, 16, v64
	v_perm_b32 v0, v121, v120, 0xc0c0004
	v_perm_b32 v18, v119, v118, 0xc0c0004
	v_perm_b32 v20, v125, v124, 0xc0c0004
	v_perm_b32 v52, v123, v122, 0xc0c0004
	v_perm_b32 v53, v129, v128, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[63:70], v[71:74], v[79:82], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v18, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v73, v52, 16, v20
	v_lshl_or_b32 v72, v108, 16, v53
	v_lshl_or_b32 v71, v110, 16, v109
	v_perm_b32 v0, v150, v149, 0xc0c0004
	v_perm_b32 v18, v148, v147, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v201, v185, 0xc0c0004
	v_perm_b32 v107, v184, v169, 0xc0c0004
	v_perm_b32 v53, v158, v157, 0xc0c0004
	v_perm_b32 v108, v156, v155, 0xc0c0004
	v_perm_b32 v109, v162, v161, 0xc0c0004
	v_perm_b32 v110, v160, v159, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[63:70], v[75:78], v[71:74], v[63:70] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v18, 16, v0
	v_perm_b32 v0, v189, v188, 0xc0c0004
	v_perm_b32 v18, v187, v186, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[95:98], v[79:82], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v20, v154, v153, 0xc0c0004
	v_perm_b32 v52, v152, v151, 0xc0c0004
	v_lshl_or_b32 v76, v108, 16, v53
	v_lshl_or_b32 v75, v110, 16, v109
	v_lshl_or_b32 v110, v135, 16, v134
	v_lshl_or_b32 v109, v137, 16, v136
	v_lshl_or_b32 v108, v139, 16, v138
	v_lshl_or_b32 v107, v107, 16, v140
	v_wmma_i32_16x16x16_iu8 v[1:8], v[99:102], v[71:74], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v18, 16, v0
	v_cvt_f32_i32_e32 v0, v10
	v_lshl_or_b32 v77, v52, 16, v20
	v_perm_b32 v20, v191, v190, 0xc0c0004
	v_perm_b32 v52, v179, v178, 0xc0c0004
	v_perm_b32 v53, v195, v194, 0xc0c0004
	v_perm_b32 v79, v193, v168, 0xc0c0004
	v_perm_b32 v80, v199, v198, 0xc0c0004
	v_perm_b32 v81, v197, v196, 0xc0c0004
	v_cvt_f32_i32_e32 v10, v11
	v_wmma_i32_16x16x16_iu8 v[55:62], v[107:110], v[87:90], v[55:62] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v51, v51, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v12
	v_wmma_i32_16x16x16_iu8 v[63:70], v[83:86], v[75:78], v[63:70] neg_lo:[1,1,0]
	v_lshl_or_b32 v73, v52, 16, v20
	v_lshl_or_b32 v72, v79, 16, v53
	v_lshl_or_b32 v71, v81, 16, v80
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v50, v50, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v13
	v_cvt_f32_i32_e32 v11, v14
	v_cvt_f32_i32_e32 v12, v15
	v_cvt_f32_i32_e32 v13, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v49, v49, v0 :: v_dual_add_f32 v48, v48, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v55
	v_wmma_i32_16x16x16_iu8 v[1:8], v[103:106], v[75:78], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[91:94], v[71:74], v[63:70] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v47, v47, v11 :: v_dual_add_f32 v46, v46, v12
	v_dual_add_f32 v45, v45, v13 :: v_dual_add_f32 v44, v44, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v56
	v_cvt_f32_i32_e32 v12, v58
	v_cvt_f32_i32_e32 v13, v59
	v_cvt_f32_i32_e32 v0, v60
	v_wmma_i32_16x16x16_iu8 v[1:8], v[107:110], v[71:74], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v43, v43, v10
	v_dual_add_f32 v41, v41, v12 :: v_dual_add_f32 v40, v40, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v61
	v_cvt_f32_i32_e32 v13, v64
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v39, v39, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v42, v42, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v62
	v_cvt_f32_i32_e32 v12, v63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v34, v34, v13 :: v_dual_add_f32 v33, v33, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v70
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v38, v38, v10
	v_dual_add_f32 v36, v36, v11 :: v_dual_add_f32 v35, v35, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v66
	v_cvt_f32_i32_e32 v11, v67
	v_cvt_f32_i32_e32 v12, v68
	v_cvt_f32_i32_e32 v13, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v28, v28, v0 :: v_dual_add_f32 v27, v27, v1
	v_dual_add_f32 v26, v26, v2 :: v_dual_add_f32 v25, v25, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v5
	v_cvt_f32_i32_e32 v1, v6
	v_cvt_f32_i32_e32 v2, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v24, v24, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v3, v8
	v_cvt_f32_i32_e32 v4, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v32, v32, v10 :: v_dual_add_f32 v31, v31, v11
	v_dual_add_f32 v30, v30, v12 :: v_dual_add_f32 v29, v29, v13
	v_dual_add_f32 v23, v23, v0 :: v_dual_add_f32 v22, v22, v1
	v_add_f32_e32 v21, v21, v2
	v_dual_add_f32 v19, v19, v3 :: v_dual_add_f32 v222, v222, v4
.LBB0_7:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v70, s23 :: v_dual_add_nc_u32 v1, s6, v17
	ds_load_u8 v0, v1 offset:832
	ds_load_u8 v2, v1 offset:768
	ds_load_u8 v3, v1 offset:960
	ds_load_u8 v4, v1 offset:896
	ds_load_u8 v5, v1 offset:576
	ds_load_u8 v6, v1 offset:512
	ds_load_u8 v7, v1 offset:704
	ds_load_u8 v8, v1 offset:640
	ds_load_u8 v9, v1 offset:320
	ds_load_u8 v10, v1 offset:256
	ds_load_u8 v11, v1 offset:448
	ds_load_u8 v14, v1 offset:384
	ds_load_u8 v15, v1 offset:64
	ds_load_u8 v16, v1
	ds_load_u8 v18, v1 offset:192
	ds_load_u8 v20, v1 offset:128
	ds_load_u8 v52, v1 offset:992
	ds_load_u8 v53, v1 offset:928
	ds_load_u8 v62, v1 offset:864
	ds_load_u8 v107, v1 offset:800
	v_dual_mov_b32 v69, s22 :: v_dual_add_nc_u32 v54, s3, v54
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v0, v2, v0, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	ds_load_u8 v71, v1 offset:1600
	ds_load_u8 v72, v1 offset:1536
	ds_load_u8 v73, v1 offset:1728
	ds_load_u8 v74, v1 offset:1664
	ds_load_u8 v75, v1 offset:1344
	ds_load_u8 v76, v1 offset:1280
	ds_load_u8 v77, v1 offset:1472
	ds_load_u8 v78, v1 offset:1408
	ds_load_u8 v118, v1 offset:2016
	ds_load_u8 v119, v1 offset:1952
	ds_load_u8 v120, v1 offset:1888
	ds_load_u8 v121, v1 offset:1824
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	ds_load_u8 v90, v1 offset:3008
	ds_load_u8 v91, v1 offset:2944
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v4, v8, v7, 0xc0c0004
	v_lshl_or_b32 v13, v2, 16, v0
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v2, v10, v9, 0xc0c0004
	ds_load_u8 v6, v54 offset:1664
	ds_load_u8 v7, v54 offset:1536
	ds_load_u8 v8, v54 offset:1920
	ds_load_u8 v9, v54 offset:1792
	ds_load_u8 v96, v54 offset:1472
	ds_load_u8 v97, v54 offset:1344
	ds_load_u8 v98, v54 offset:1216
	ds_load_u8 v99, v54 offset:1088
	v_lshl_or_b32 v12, v4, 16, v3
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v3, v14, v11, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v4, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v5, v20, v18, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v72, v74, v73, 0xc0c0004
	v_lshl_or_b32 v11, v3, 16, v2
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	v_lshl_or_b32 v10, v5, 16, v4
	ds_load_u8 v2, v54 offset:1152
	ds_load_u8 v3, v54 offset:1024
	ds_load_u8 v4, v54 offset:1408
	ds_load_u8 v5, v54 offset:1280
	ds_load_u8 v15, v54 offset:640
	ds_load_u8 v16, v54 offset:512
	ds_load_u8 v18, v54 offset:896
	ds_load_u8 v20, v54 offset:768
	ds_load_u8 v55, v54 offset:128
	ds_load_u8 v56, v54
	ds_load_u8 v57, v54 offset:384
	ds_load_u8 v58, v54 offset:256
	ds_load_u8 v59, v54 offset:1984
	ds_load_u8 v60, v54 offset:1856
	ds_load_u8 v61, v54 offset:1728
	ds_load_u8 v95, v54 offset:1600
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v76, v78, v77, 0xc0c0004
	ds_load_u8 v77, v54 offset:3712
	ds_load_u8 v78, v54 offset:3584
	v_lshl_or_b32 v73, v72, 16, v71
	ds_load_u8 v100, v54 offset:960
	ds_load_u8 v101, v54 offset:832
	ds_load_u8 v102, v54 offset:704
	ds_load_u8 v103, v54 offset:576
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	v_lshl_or_b32 v72, v76, 16, v75
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v91, v1 offset:2240
	ds_load_u8 v94, v1 offset:2176
	ds_load_u8 v149, v1 offset:2784
	ds_load_u8 v150, v1 offset:2720
	ds_load_u8 v151, v1 offset:2656
	ds_load_u8 v152, v1 offset:2592
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v7, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v3, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v4, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v5, v20, v18, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v8, v56, v55, 0xc0c0004
	ds_load_u8 v55, v1 offset:1856
	ds_load_u8 v56, v1 offset:1792
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v9, v58, v57, 0xc0c0004
	ds_load_u8 v57, v1 offset:1984
	ds_load_u8 v58, v1 offset:1920
	ds_load_u8 v15, v54 offset:448
	ds_load_u8 v16, v54 offset:320
	ds_load_u8 v18, v54 offset:192
	ds_load_u8 v20, v54 offset:64
	ds_load_u8 v108, v1 offset:736
	ds_load_u8 v109, v1 offset:672
	ds_load_u8 v110, v1 offset:608
	ds_load_u8 v111, v1 offset:544
	ds_load_u8 v0, v1 offset:480
	ds_load_u8 v112, v1 offset:416
	ds_load_u8 v113, v1 offset:352
	ds_load_u8 v114, v1 offset:288
	ds_load_u8 v14, v1 offset:224
	ds_load_u8 v115, v1 offset:160
	ds_load_u8 v116, v1 offset:96
	ds_load_u8 v117, v1 offset:32
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v54 offset:2176
	ds_load_u8 v87, v54 offset:2048
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v91, v94, v91, 0xc0c0004
	ds_load_u8 v126, v1 offset:1504
	ds_load_u8 v127, v1 offset:1440
	ds_load_u8 v128, v1 offset:1376
	ds_load_u8 v129, v1 offset:1312
	ds_load_u8 v130, v1 offset:1248
	ds_load_u8 v131, v1 offset:1184
	ds_load_u8 v132, v1 offset:1120
	ds_load_u8 v133, v1 offset:1056
	ds_load_u8 v153, v1 offset:2528
	ds_load_u8 v154, v1 offset:2464
	ds_load_u8 v155, v1 offset:2400
	ds_load_u8 v156, v1 offset:2336
	ds_load_u8 v157, v1 offset:2272
	ds_load_u8 v158, v1 offset:2208
	ds_load_u8 v159, v1 offset:2144
	ds_load_u8 v160, v1 offset:2080
	ds_load_u8 v141, v54 offset:2496
	ds_load_u8 v142, v54 offset:2368
	ds_load_u8 v143, v54 offset:2240
	ds_load_u8 v144, v54 offset:2112
	ds_load_u8 v173, v54 offset:5056
	ds_load_u8 v174, v54 offset:4928
	ds_load_u8 v175, v54 offset:4800
	ds_load_u8 v176, v54 offset:4672
	v_lshl_or_b32 v82, v7, 16, v6
	v_lshl_or_b32 v81, v3, 16, v2
	v_lshl_or_b32 v80, v5, 16, v4
	v_lshl_or_b32 v79, v9, 16, v8
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	ds_load_u8 v56, v1 offset:1088
	ds_load_u8 v83, v1 offset:1024
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v1 offset:1216
	ds_load_u8 v84, v1 offset:1152
	ds_load_u8 v122, v1 offset:1760
	ds_load_u8 v123, v1 offset:1696
	ds_load_u8 v124, v1 offset:1632
	ds_load_u8 v125, v1 offset:1568
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	v_perm_b32 v15, v16, v15, 0xc0c0004
	v_dual_mov_b32 v68, s21 :: v_dual_mov_b32 v67, s20
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v78, v87, v78, 0xc0c0004
	ds_load_u8 v87, v1 offset:2880
	ds_load_u8 v89, v1 offset:2816
	v_lshl_or_b32 v74, v57, 16, v55
	v_dual_mov_b32 v66, s19 :: v_dual_mov_b32 v65, s18
	v_dual_mov_b32 v64, s17 :: v_dual_mov_b32 v63, s16
	v_perm_b32 v62, v107, v62, 0xc0c0004
	v_perm_b32 v52, v53, v52, 0xc0c0004
	v_perm_b32 v53, v111, v110, 0xc0c0004
	v_perm_b32 v0, v112, v0, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v58, v84, v58, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[2:9], v[79:82], v[10:13], v[63:70] neg_lo:[1,1,0]
	v_perm_b32 v56, v83, v56, 0xc0c0004
	ds_load_u8 v83, v54 offset:3968
	ds_load_u8 v84, v54 offset:3840
	v_perm_b32 v14, v115, v14, 0xc0c0004
	v_lshl_or_b32 v110, v52, 16, v62
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v52, v125, v124, 0xc0c0004
	v_lshl_or_b32 v71, v58, 16, v56
	ds_load_u8 v55, v54 offset:3200
	ds_load_u8 v56, v54 offset:3072
	ds_load_u8 v57, v54 offset:3456
	ds_load_u8 v58, v54 offset:3328
	ds_load_u8 v75, v54 offset:2688
	ds_load_u8 v76, v54 offset:2560
	ds_load_u8 v85, v54 offset:2944
	ds_load_u8 v86, v54 offset:2816
	ds_load_u8 v104, v54 offset:4032
	ds_load_u8 v105, v54 offset:3904
	ds_load_u8 v106, v54 offset:3776
	ds_load_u8 v134, v54 offset:3648
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v87, v89, v87, 0xc0c0004
	ds_load_u8 v89, v1 offset:2112
	ds_load_u8 v93, v1 offset:2048
	v_perm_b32 v62, v129, v128, 0xc0c0004
	v_perm_b32 v112, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v56, v58, v57, 0xc0c0004
	ds_load_u8 v57, v54 offset:3008
	ds_load_u8 v58, v54 offset:2880
	ds_load_u8 v139, v54 offset:2752
	ds_load_u8 v140, v54 offset:2624
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v54 offset:2432
	ds_load_u8 v88, v54 offset:2304
	ds_load_u8 v135, v54 offset:3520
	ds_load_u8 v136, v54 offset:3392
	ds_load_u8 v137, v54 offset:3264
	ds_load_u8 v138, v54 offset:3136
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v76, v86, v85, 0xc0c0004
	v_lshl_or_b32 v85, v56, 16, v55
	v_lshl_or_b32 v86, v83, 16, v77
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v88, v88, v84, 0xc0c0004
	v_lshl_or_b32 v84, v76, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v83, v88, 16, v78
	ds_load_u8 v55, v1 offset:2624
	ds_load_u8 v56, v1 offset:2560
	ds_load_u8 v75, v1 offset:2752
	ds_load_u8 v76, v1 offset:2688
	ds_load_u8 v77, v1 offset:2368
	ds_load_u8 v78, v1 offset:2304
	ds_load_u8 v88, v1 offset:2496
	ds_load_u8 v92, v1 offset:2432
	ds_load_u8 v145, v1 offset:3040
	ds_load_u8 v146, v1 offset:2976
	ds_load_u8 v147, v1 offset:2912
	ds_load_u8 v148, v1 offset:2848
	v_wmma_i32_16x16x16_iu8 v[2:9], v[83:86], v[71:74], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v56, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v75, v78, v77, 0xc0c0004
	v_lshl_or_b32 v78, v90, 16, v87
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v76, v92, v88, 0xc0c0004
	v_perm_b32 v88, v93, v89, 0xc0c0004
	ds_load_u8 v89, v54 offset:5760
	ds_load_u8 v92, v54 offset:5632
	ds_load_u8 v93, v54 offset:6016
	ds_load_u8 v161, v54 offset:5888
	v_lshl_or_b32 v77, v56, 16, v55
	v_lshl_or_b32 v76, v76, 16, v75
	v_lshl_or_b32 v75, v91, 16, v88
	ds_load_u8 v55, v54 offset:5248
	ds_load_u8 v56, v54 offset:5120
	ds_load_u8 v87, v54 offset:5504
	ds_load_u8 v88, v54 offset:5376
	ds_load_u8 v90, v54 offset:4736
	ds_load_u8 v91, v54 offset:4608
	ds_load_u8 v94, v54 offset:4992
	ds_load_u8 v162, v54 offset:4864
	ds_load_u8 v163, v54 offset:6080
	ds_load_u8 v164, v54 offset:5952
	ds_load_u8 v165, v54 offset:5824
	ds_load_u8 v166, v54 offset:5696
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v56, v88, v87, 0xc0c0004
	v_perm_b32 v89, v92, v89, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v87, v91, v90, 0xc0c0004
	v_perm_b32 v92, v161, v93, 0xc0c0004
	ds_load_u8 v93, v54 offset:4224
	ds_load_u8 v161, v54 offset:4096
	ds_load_u8 v167, v54 offset:4480
	ds_load_u8 v168, v54 offset:4352
	ds_load_u8 v169, v54 offset:5568
	ds_load_u8 v170, v54 offset:5440
	ds_load_u8 v171, v54 offset:5312
	ds_load_u8 v172, v54 offset:5184
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v88, v162, v94, 0xc0c0004
	ds_load_u8 v91, v1 offset:3904
	ds_load_u8 v94, v1 offset:3840
	ds_load_u8 v162, v1 offset:4032
	ds_load_u8 v177, v1 offset:3968
	ds_load_u8 v178, v54 offset:4544
	ds_load_u8 v179, v54 offset:4416
	ds_load_u8 v180, v54 offset:4288
	ds_load_u8 v181, v54 offset:4160
	v_lshl_or_b32 v90, v92, 16, v89
	v_lshl_or_b32 v89, v56, 16, v55
	v_lshl_or_b32 v88, v88, 16, v87
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v93, v161, v93, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v161, v168, v167, 0xc0c0004
	ds_load_u8 v167, v1 offset:3648
	ds_load_u8 v168, v1 offset:3584
	ds_load_u8 v182, v1 offset:3776
	ds_load_u8 v183, v1 offset:3712
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v55, v94, v91, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v56, v177, v162, 0xc0c0004
	ds_load_u8 v91, v1 offset:3392
	ds_load_u8 v92, v1 offset:3328
	ds_load_u8 v162, v1 offset:3520
	ds_load_u8 v177, v1 offset:3456
	ds_load_u8 v187, v1 offset:3808
	ds_load_u8 v188, v1 offset:3744
	ds_load_u8 v189, v1 offset:3680
	ds_load_u8 v190, v1 offset:3616
	v_lshl_or_b32 v87, v161, 16, v93
	ds_load_u8 v161, v1 offset:4064
	ds_load_u8 v184, v1 offset:4000
	ds_load_u8 v185, v1 offset:3936
	ds_load_u8 v186, v1 offset:3872
	v_lshl_or_b32 v94, v56, 16, v55
	v_wmma_i32_16x16x16_iu8 v[2:9], v[87:90], v[75:78], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v55, v92, v91, 0xc0c0004
	v_perm_b32 v93, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v56, v177, v162, 0xc0c0004
	v_perm_b32 v167, v183, v182, 0xc0c0004
	ds_load_u8 v168, v1 offset:3136
	ds_load_u8 v182, v1 offset:3072
	ds_load_u8 v183, v1 offset:3264
	ds_load_u8 v191, v1 offset:3200
	v_lshl_or_b32 v92, v56, 16, v55
	v_lshl_or_b32 v93, v167, 16, v93
	ds_load_u8 v167, v1 offset:3552
	ds_load_u8 v192, v1 offset:3488
	ds_load_u8 v193, v1 offset:3424
	ds_load_u8 v194, v1 offset:3360
	ds_load_u8 v162, v54 offset:7808
	ds_load_u8 v177, v54 offset:7680
	ds_load_u8 v195, v54 offset:8064
	ds_load_u8 v196, v54 offset:7936
	ds_load_u8 v197, v1 offset:3296
	ds_load_u8 v198, v1 offset:3232
	ds_load_u8 v199, v1 offset:3168
	ds_load_u8 v1, v1 offset:3104
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v91, v182, v168, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v168, v191, v183, 0xc0c0004
	ds_load_u8 v182, v54 offset:7296
	ds_load_u8 v183, v54 offset:7168
	ds_load_u8 v191, v54 offset:7552
	ds_load_u8 v200, v54 offset:7424
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v162, v177, v162, 0xc0c0004
	ds_load_u8 v177, v54 offset:6272
	ds_load_u8 v206, v54 offset:6144
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v195, v196, v195, 0xc0c0004
	v_lshl_or_b32 v91, v168, 16, v91
	ds_load_u8 v55, v54 offset:6784
	ds_load_u8 v56, v54 offset:6656
	ds_load_u8 v168, v54 offset:7040
	ds_load_u8 v201, v54 offset:6912
	ds_load_u8 v202, v54 offset:8128
	ds_load_u8 v203, v54 offset:8000
	ds_load_u8 v204, v54 offset:7872
	ds_load_u8 v205, v54 offset:7744
	ds_load_u8 v196, v54 offset:7616
	ds_load_u8 v207, v54 offset:7488
	ds_load_u8 v208, v54 offset:7360
	ds_load_u8 v209, v54 offset:7232
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v1, v1, v199, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v214, v56, v55, 0xc0c0004
	v_perm_b32 v183, v200, v191, 0xc0c0004
	ds_load_u8 v191, v54 offset:6528
	ds_load_u8 v200, v54 offset:6400
	ds_load_u8 v210, v54 offset:7104
	ds_load_u8 v211, v54 offset:6976
	ds_load_u8 v212, v54 offset:6848
	ds_load_u8 v213, v54 offset:6720
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v168, v201, v168, 0xc0c0004
	ds_load_u8 v201, v54 offset:6592
	ds_load_u8 v215, v54 offset:6464
	ds_load_u8 v216, v54 offset:6336
	ds_load_u8 v217, v54 offset:6208
	v_perm_b32 v54, v95, v61, 0xc0c0004
	v_perm_b32 v55, v60, v59, 0xc0c0004
	v_perm_b32 v56, v99, v98, 0xc0c0004
	v_perm_b32 v59, v97, v96, 0xc0c0004
	v_perm_b32 v60, v103, v102, 0xc0c0004
	v_perm_b32 v61, v101, v100, 0xc0c0004
	v_lshl_or_b32 v98, v55, 16, v54
	v_lshl_or_b32 v95, v15, 16, v18
	v_lshl_or_b32 v97, v59, 16, v56
	v_perm_b32 v15, v134, v106, 0xc0c0004
	v_lshl_or_b32 v96, v61, 16, v60
	v_perm_b32 v18, v105, v104, 0xc0c0004
	v_perm_b32 v99, v136, v135, 0xc0c0004
	v_perm_b32 v100, v140, v139, 0xc0c0004
	v_perm_b32 v101, v58, v57, 0xc0c0004
	v_perm_b32 v102, v144, v143, 0xc0c0004
	v_perm_b32 v103, v142, v141, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[54:61], v[95:98], v[10:13], v[63:70] neg_lo:[1,1,0]
	v_lshl_or_b32 v13, v18, 16, v15
	v_lshl_or_b32 v12, v99, 16, v20
	v_lshl_or_b32 v11, v101, 16, v100
	v_lshl_or_b32 v10, v103, 16, v102
	v_perm_b32 v15, v166, v165, 0xc0c0004
	v_perm_b32 v18, v164, v163, 0xc0c0004
	v_perm_b32 v20, v172, v171, 0xc0c0004
	v_perm_b32 v99, v170, v169, 0xc0c0004
	v_perm_b32 v100, v176, v175, 0xc0c0004
	v_perm_b32 v103, v174, v173, 0xc0c0004
	v_perm_b32 v104, v181, v180, 0xc0c0004
	v_perm_b32 v105, v179, v178, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[54:61], v[10:13], v[71:74], v[54:61] neg_lo:[1,1,0]
	v_perm_b32 v71, v109, v108, 0xc0c0004
	v_perm_b32 v72, v114, v113, 0xc0c0004
	v_perm_b32 v73, v117, v116, 0xc0c0004
	v_perm_b32 v177, v206, v177, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v16, v200, v191, 0xc0c0004
	v_lshl_or_b32 v102, v18, 16, v15
	v_lshl_or_b32 v101, v99, 16, v20
	v_lshl_or_b32 v100, v103, 16, v100
	v_lshl_or_b32 v99, v105, 16, v104
	v_lshl_or_b32 v109, v71, 16, v53
	v_lshl_or_b32 v108, v0, 16, v72
	v_lshl_or_b32 v107, v14, 16, v73
	v_perm_b32 v0, v121, v120, 0xc0c0004
	v_perm_b32 v14, v119, v118, 0xc0c0004
	v_perm_b32 v53, v123, v122, 0xc0c0004
	v_perm_b32 v113, v133, v132, 0xc0c0004
	v_perm_b32 v114, v131, v130, 0xc0c0004
	v_lshl_or_b32 v103, v16, 16, v177
	v_wmma_i32_16x16x16_iu8 v[54:61], v[99:102], v[75:78], v[54:61] neg_lo:[1,1,0]
	v_perm_b32 v15, v205, v204, 0xc0c0004
	v_perm_b32 v16, v203, v202, 0xc0c0004
	v_perm_b32 v18, v209, v208, 0xc0c0004
	v_perm_b32 v20, v207, v196, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[71:78], v[79:82], v[107:110], v[63:70] neg_lo:[1,1,0]
	v_lshl_or_b32 v82, v14, 16, v0
	v_lshl_or_b32 v81, v53, 16, v52
	v_lshl_or_b32 v80, v112, 16, v62
	v_lshl_or_b32 v79, v114, 16, v113
	v_perm_b32 v0, v148, v147, 0xc0c0004
	v_perm_b32 v14, v146, v145, 0xc0c0004
	v_perm_b32 v52, v152, v151, 0xc0c0004
	v_perm_b32 v53, v150, v149, 0xc0c0004
	v_perm_b32 v62, v156, v155, 0xc0c0004
	v_perm_b32 v112, v154, v153, 0xc0c0004
	v_perm_b32 v113, v160, v159, 0xc0c0004
	v_perm_b32 v114, v158, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[63:70], v[95:98], v[107:110], v[63:70] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v134, v213, v212, 0xc0c0004
	v_perm_b32 v135, v211, v210, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v217, v216, 0xc0c0004
	v_perm_b32 v111, v215, v201, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[71:78], v[83:86], v[79:82], v[71:78] neg_lo:[1,1,0]
	v_lshl_or_b32 v86, v14, 16, v0
	v_lshl_or_b32 v85, v53, 16, v52
	v_lshl_or_b32 v84, v112, 16, v62
	v_lshl_or_b32 v83, v114, 16, v113
	v_lshl_or_b32 v114, v16, 16, v15
	v_lshl_or_b32 v113, v20, 16, v18
	v_perm_b32 v0, v186, v185, 0xc0c0004
	v_perm_b32 v14, v184, v161, 0xc0c0004
	v_perm_b32 v15, v190, v189, 0xc0c0004
	v_perm_b32 v16, v188, v187, 0xc0c0004
	v_perm_b32 v18, v194, v193, 0xc0c0004
	v_perm_b32 v20, v192, v167, 0xc0c0004
	v_perm_b32 v52, v198, v197, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[63:70], v[10:13], v[79:82], v[63:70] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v195, 16, v162
	v_lshl_or_b32 v105, v183, 16, v182
	v_lshl_or_b32 v104, v168, 16, v214
	v_lshl_or_b32 v112, v135, 16, v134
	v_lshl_or_b32 v111, v111, 16, v136
	v_wmma_i32_16x16x16_iu8 v[71:78], v[87:90], v[83:86], v[71:78] neg_lo:[1,1,0]
	v_lshl_or_b32 v13, v14, 16, v0
	v_lshl_or_b32 v12, v16, 16, v15
	v_lshl_or_b32 v11, v20, 16, v18
	v_lshl_or_b32 v10, v52, 16, v1
	v_wmma_i32_16x16x16_iu8 v[63:70], v[99:102], v[83:86], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[103:106], v[91:94], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[111:114], v[91:94], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[71:78], v[103:106], v[10:13], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[111:114], v[10:13], v[63:70] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v2
	v_cvt_f32_i32_e32 v2, v3
	v_cvt_f32_i32_e32 v3, v4
	v_cvt_f32_i32_e32 v4, v5
	v_cvt_f32_i32_e32 v5, v6
	v_cvt_f32_i32_e32 v6, v7
	v_cvt_f32_i32_e32 v7, v8
	v_cvt_f32_i32_e32 v8, v9
	v_cvt_f32_i32_e32 v9, v54
	v_cvt_f32_i32_e32 v10, v55
	v_cvt_f32_i32_e32 v11, v56
	v_cvt_f32_i32_e32 v12, v57
	v_cvt_f32_i32_e32 v13, v58
	v_cvt_f32_i32_e32 v14, v59
	v_cvt_f32_i32_e32 v15, v60
	v_cvt_f32_i32_e32 v16, v61
	v_cvt_f32_i32_e32 v55, v71
	v_cvt_f32_i32_e32 v56, v72
	v_cvt_f32_i32_e32 v57, v73
	v_cvt_f32_i32_e32 v58, v74
	v_cvt_f32_i32_e32 v59, v75
	v_cvt_f32_i32_e32 v60, v76
	v_cvt_f32_i32_e32 v61, v77
	v_cvt_f32_i32_e32 v62, v78
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
.LBB0_9:
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(2)
	v_bfe_u32 v18, v218, 4, 1
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v0, s35, v17
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 379 22 is_stmt 1              ; generate_amdgcn.py:379:22
	v_or3_b32 v18, v18, v221, s34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v1, v222, v1 :: v_dual_lshlrev_b32 v0, 1, v0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s6, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v50, v3 :: v_dual_lshlrev_b32 v18, 1, v18
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v20, 64, v0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_mov_b32 s7, s15
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	buffer_load_u16 v20, v20, s[12:15], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_or_b32_e32 v52, 4, v18
	v_or_b32_e32 v76, 0x80, v18
	v_or_b32_e32 v53, 8, v18
	v_or_b32_e32 v77, 0x84, v18
	v_or_b32_e32 v54, 12, v18
	v_or_b32_e32 v78, 0x88, v18
	v_or_b32_e32 v71, 16, v18
	v_or_b32_e32 v72, 20, v18
	v_or_b32_e32 v73, 24, v18
	v_or_b32_e32 v74, 28, v18
	v_or_b32_e32 v79, 0x8c, v18
	s_clause 0x7
	buffer_load_u16 v75, v18, s[4:7], 0 offen
	buffer_load_u16 v52, v52, s[4:7], 0 offen
	buffer_load_u16 v53, v53, s[4:7], 0 offen
	buffer_load_u16 v54, v54, s[4:7], 0 offen
	buffer_load_u16 v71, v71, s[4:7], 0 offen
	buffer_load_u16 v72, v72, s[4:7], 0 offen
	buffer_load_u16 v73, v73, s[4:7], 0 offen
	buffer_load_u16 v74, v74, s[4:7], 0 offen
	v_or_b32_e32 v80, 0x90, v18
	v_or_b32_e32 v81, 0x94, v18
	v_or_b32_e32 v82, 0x98, v18
	v_or_b32_e32 v18, 0x9c, v18
	s_clause 0x7
	buffer_load_u16 v76, v76, s[4:7], 0 offen
	buffer_load_u16 v77, v77, s[4:7], 0 offen
	buffer_load_u16 v78, v78, s[4:7], 0 offen
	buffer_load_u16 v79, v79, s[4:7], 0 offen
	buffer_load_u16 v80, v80, s[4:7], 0 offen
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	s_waitcnt vmcnt(19)
	v_lshrrev_b32_e32 v84, 7, v219
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v2, v51, v2 :: v_dual_add_f32 v5, v48, v5
	v_dual_add_f32 v10, v43, v10 :: v_dual_add_f32 v11, v42, v11
	v_dual_add_f32 v4, v49, v4 :: v_dual_and_b32 v83, 0x7f, v218
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v51, v2, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v2, s29, v84
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v8, v45, v8 :: v_dual_add_f32 v9, v44, v9
	v_dual_add_f32 v12, v41, v12 :: v_dual_add_f32 v13, v40, v13
	v_dual_add_f32 v58, v32, v58 :: v_dual_add_f32 v59, v31, v59
	v_dual_add_f32 v66, v24, v66 :: v_dual_add_f32 v67, v23, v67
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v87, v218, 0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v222, v1, s2
	v_cndmask_b32_e64 v42, v42, v11, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s35, s29
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v6, v47, v6 :: v_dual_add_f32 v7, v46, v7
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s0, s0, s34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v14, v39, v14 :: v_dual_add_f32 v15, v38, v15
	v_dual_add_f32 v56, v34, v56 :: v_dual_add_f32 v57, v33, v57
	v_add_f32_e32 v70, v19, v70
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v49, v4, s2
	v_cndmask_b32_e64 v48, v48, v5, s2
	v_cndmask_b32_e64 v44, v44, v9, s2
	v_cndmask_b32_e64 v12, v41, v12, s2
	v_cndmask_b32_e64 v41, v32, v58, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v5, 0x840, v87
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v24, v66, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v32, s0, v83, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v46, v7, s2
	v_cndmask_b32_e64 v14, v39, v14, s2
	v_cndmask_b32_e64 v39, v33, v57, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v16, v36, v16 :: v_dual_add_f32 v55, v35, v55
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v60, v30, v60 :: v_dual_add_f32 v61, v29, v61
	v_dual_add_f32 v62, v28, v62 :: v_dual_add_f32 v63, v27, v63
	v_dual_add_f32 v64, v26, v64 :: v_dual_add_f32 v65, v25, v65
	v_dual_add_f32 v68, v22, v68 :: v_dual_add_f32 v69, v21, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v47, v6, s2
	v_cndmask_b32_e64 v8, v45, v8, s2
	v_cndmask_b32_e64 v10, v43, v10, s2
	v_cndmask_b32_e64 v38, v38, v15, s2
	v_cndmask_b32_e64 v16, v36, v16, s2
	v_cndmask_b32_e64 v36, v34, v56, s2
	v_cndmask_b32_e64 v31, v31, v59, s2
	v_cndmask_b32_e64 v30, v30, v60, s2
	v_cndmask_b32_e64 v43, v29, v61, s2
	v_cndmask_b32_e64 v28, v28, v62, s2
	v_cndmask_b32_e64 v45, v27, v63, s2
	v_cndmask_b32_e64 v26, v26, v64, s2
	v_cndmask_b32_e64 v47, v25, v65, s2
	v_cndmask_b32_e64 v56, v22, v68, s2
	v_cndmask_b32_e64 v57, v21, v69, s2
	v_cndmask_b32_e64 v40, v40, v13, s2
	v_cndmask_b32_e64 v58, v19, v70, s2
	v_cndmask_b32_e64 v50, v50, v3, s2
	v_cndmask_b32_e64 v3, v35, v55, s2
	v_cndmask_b32_e64 v55, v23, v67, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s0, 0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v86, 2, v218
	v_and_b32_e32 v85, 14, v218
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b32_e32 v7, 11, v85
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v22, 16, v78
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v24, 16, v80
	v_lshlrev_b32_e32 v9, 16, v54
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	v_lshlrev_b32_e32 v11, 16, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v54, v0, v11 :: v_dual_and_b32 v1, 0x78, v86
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v1, v220, 3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v1, v1, v5
	v_or3_b32 v5, v1, v7, v219
	v_lshlrev_b64 v[1:2], 2, v[32:33]
	s_delay_alu instid0(VALU_DEP_2)
	v_xad_u32 v60, v5, 8, 0
	v_xad_u32 v61, v5, 16, 0
	v_xad_u32 v62, v5, 24, 0
	v_xad_u32 v63, v5, 32, 0
	v_xad_u32 v64, v5, 40, 0
	v_xad_u32 v65, v5, 48, 0
	v_xad_u32 v66, v5, 56, 0
	v_add_co_u32 v33, vcc_lo, s30, v1
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v1, 16, v20
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v15, 16, v73
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v59, 0, v5
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v27, 16, v82
	v_lshlrev_b32_e32 v5, 16, v52
	v_lshlrev_b32_e32 v21, 16, v77
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_ci_u32_e64 v34, null, s31, v2, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v219
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v77, v1, v5 :: v_dual_lshlrev_b32 v20, 16, v76
	v_dual_mul_f32 v68, v0, v15 :: v_dual_lshlrev_b32 v7, 16, v53
	v_mul_f32_e32 v70, v0, v20
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v13, 16, v72
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v72, v0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v78, v1, v7 :: v_dual_lshlrev_b32 v19, 16, v74
	v_mul_f32_e32 v52, v0, v7
	v_mul_f32_e32 v67, v0, v13
	v_dual_mul_f32 v86, v1, v22 :: v_dual_lshlrev_b32 v25, 16, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v69, v0, v19
	v_mul_f32_e32 v74, v0, v24
	v_dual_mul_f32 v53, v0, v9 :: v_dual_lshlrev_b32 v2, 16, v75
	v_dual_mul_f32 v88, v1, v24 :: v_dual_mul_f32 v75, v0, v25
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v90, v1, v27 :: v_dual_mul_f32 v29, v0, v2
	v_dual_mul_f32 v20, v1, v20 :: v_dual_lshlrev_b32 v23, 16, v79
	v_mul_f32_e32 v84, v1, v21
	v_dual_mul_f32 v2, v1, v2 :: v_dual_mul_f32 v71, v0, v21
	v_mul_f32_e32 v76, v0, v27
	v_mul_f32_e32 v35, v0, v5
	v_mul_f32_e32 v73, v0, v23
	v_mul_f32_e32 v0, v0, v18
	v_mul_f32_e32 v80, v1, v11
	v_mul_f32_e32 v82, v1, v15
	v_dual_mul_f32 v79, v1, v9 :: v_dual_mul_f32 v2, v3, v2
	v_mul_f32_e32 v87, v1, v23
	v_mul_f32_e32 v83, v1, v19
	v_mul_f32_e32 v81, v1, v13
	v_mul_f32_e32 v89, v1, v25
	v_dual_mul_f32 v18, v1, v18 :: v_dual_mul_f32 v7, v4, v53
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v20, v45, v20
	v_mul_f32_e32 v4, v36, v77
	v_mul_f32_e32 v1, v37, v29
	v_mul_f32_e32 v29, v14, v75
	v_dual_mul_f32 v37, v16, v0 :: v_dual_and_b32 v0, 1, v218
	v_mul_f32_e32 v19, v44, v70
	v_dual_mul_f32 v9, v48, v54 :: v_dual_mul_f32 v22, v26, v84
	v_dual_mul_f32 v11, v6, v67 :: v_dual_mul_f32 v24, v47, v86
	v_mul_f32_e32 v6, v39, v78
	v_mul_f32_e32 v3, v51, v35
	v_dual_mul_f32 v14, v43, v82 :: v_dual_mul_f32 v21, v10, v71
	v_mul_f32_e32 v5, v50, v52
	v_dual_mul_f32 v23, v42, v72 :: v_dual_mul_f32 v36, v57, v90
	v_mul_f32_e32 v15, v8, v69
	v_dual_mul_f32 v25, v12, v73 :: v_dual_mul_f32 v8, v41, v79
	v_mul_f32_e32 v10, v31, v80
	v_dual_mul_f32 v13, v46, v68 :: v_dual_mul_f32 v26, v49, v87
	v_mul_f32_e32 v27, v40, v74
	v_mul_f32_e32 v16, v28, v83
	v_mul_f32_e32 v28, v55, v88
	v_mul_f32_e32 v35, v38, v76
	v_mul_f32_e32 v12, v30, v81
	v_mul_f32_e32 v30, v56, v89
	v_mul_f32_e32 v38, v58, v18
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v0, 6, v0
	ds_store_2addr_stride64_b64 v59, v[1:2], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v60, v[3:4], v[21:22] offset1:2
	ds_store_2addr_stride64_b64 v61, v[5:6], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v62, v[7:8], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v63, v[9:10], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v64, v[11:12], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v65, v[13:14], v[35:36] offset1:2
	ds_store_2addr_stride64_b64 v66, v[15:16], v[37:38] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v36, v[33:34], off
	v_cndmask_b32_e64 v1, 0x840, 0, vcc_lo
	v_and_b32_e32 v2, 0x700, v237
	v_lshlrev_b32_e32 v3, 2, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v0, v1, v0
	v_or3_b32 v0, v2, v3, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v2, 0x1008, v0, 0
	v_xad_u32 v3, 0x2010, v0, 0
	ds_load_2addr_b64 v[28:31], v1 offset1:16
	ds_load_2addr_b64 v[24:27], v2 offset1:16
	ds_load_2addr_b64 v[20:23], v3 offset1:16
	v_xad_u32 v1, 0x3018, v0, 0
	v_xad_u32 v2, 0x4020, v0, 0
	v_xad_u32 v3, 0x5028, v0, 0
	v_xad_u32 v4, 0x6030, v0, 0
	v_xad_u32 v0, 0x7038, v0, 0
	ds_load_2addr_b64 v[16:19], v1 offset1:16
	ds_load_2addr_b64 v[12:15], v2 offset1:16
	ds_load_2addr_b64 v[8:11], v3 offset1:16
	ds_load_2addr_b64 v[4:7], v4 offset1:16
	ds_load_2addr_b64 v[0:3], v0 offset1:16
.LBB0_10:                               ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v35, v36, v28
	global_atomic_cmpswap_b32 v35, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v35, v36
	v_mov_b32_e32 v36, v35
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end181
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s29, 1, v32
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s30, v33
	v_add_co_ci_u32_e64 v34, null, s31, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_12:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v35, v36, v24
	global_atomic_cmpswap_b32 v28, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v28, v36
	v_mov_b32_e32 v36, v28
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s29, 2, v32
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s30, v33
	v_add_co_ci_u32_e64 v34, null, s31, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_14:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v35, v36, v20
	global_atomic_cmpswap_b32 v24, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v24, v36
	v_mov_b32_e32 v36, v24
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 6, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s30, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s31, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_16:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v35, v36, v16
	global_atomic_cmpswap_b32 v20, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v20, v36
	v_mov_b32_e32 v36, v20
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s29, 3, v32
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s30, v33
	v_add_co_ci_u32_e64 v34, null, s31, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_18:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v35, v36, v12
	global_atomic_cmpswap_b32 v16, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v36
	v_mov_b32_e32 v36, v16
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 10, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s30, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s31, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_20:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v35, v36, v8
	global_atomic_cmpswap_b32 v12, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v36
	v_mov_b32_e32 v36, v12
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 12, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s30, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s31, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_22:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v35, v36, v4
	global_atomic_cmpswap_b32 v8, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v36
	v_mov_b32_e32 v36, v8
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 14, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s30, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s31, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_24:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v35, v36, v0
	global_atomic_cmpswap_b32 v4, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v36
	v_mov_b32_e32 v36, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s29, 4, v32
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s30, v33
	v_add_co_ci_u32_e64 v34, null, s31, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_26:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v30
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 18, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s30, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s31, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_28:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v26
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 20, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s30, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s31, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_30:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v22
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 22, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s30, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s31, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_32:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v18
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 24, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s30, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s31, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_34:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v14
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 26, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s30, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s31, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_36:                               ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v10
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 28, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s30, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s31, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_38:                               ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v6
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_38
; %bb.39:                               ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s29, 30, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s30, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s31, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_40:                               ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v2
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_40
; %bb.41:                               ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v33, s33, v32
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s30, v33
	v_add_co_ci_u32_e64 v34, null, s31, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_42:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v29
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_42
; %bb.43:                               ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[28:29], null, s29, 34, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v28, vcc_lo, s30, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s31, v29, vcc_lo
	global_load_b32 v34, v[28:29], off
.LBB0_44:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v33, v34, v25
	global_atomic_cmpswap_b32 v0, v[28:29], v[33:34], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v34
	v_mov_b32_e32 v34, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_44
; %bb.45:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[24:25], null, s29, 36, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v24, vcc_lo, s30, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s31, v25, vcc_lo
	global_load_b32 v29, v[24:25], off
.LBB0_46:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v21
	global_atomic_cmpswap_b32 v0, v[24:25], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_46
; %bb.47:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[20:21], null, s29, 38, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v20, vcc_lo, s30, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s31, v21, vcc_lo
	global_load_b32 v25, v[20:21], off
.LBB0_48:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v25, v17
	global_atomic_cmpswap_b32 v0, v[20:21], v[24:25], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v25
	v_mov_b32_e32 v25, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_48
; %bb.49:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[16:17], null, s29, 40, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s30, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s31, v17, vcc_lo
	global_load_b32 v21, v[16:17], off
.LBB0_50:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v13
	global_atomic_cmpswap_b32 v0, v[16:17], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_50
; %bb.51:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[12:13], null, s29, 42, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s30, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s31, v13, vcc_lo
	global_load_b32 v17, v[12:13], off
.LBB0_52:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_52
; %bb.53:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[8:9], null, s29, 44, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s30, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s31, v9, vcc_lo
	global_load_b32 v13, v[8:9], off
.LBB0_54:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v5
	global_atomic_cmpswap_b32 v0, v[8:9], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_54
; %bb.55:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[4:5], null, s29, 46, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v4, vcc_lo, s30, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s31, v5, vcc_lo
	global_load_b32 v9, v[4:5], off
.LBB0_56:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v1
	global_atomic_cmpswap_b32 v0, v[4:5], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_56
; %bb.57:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 48, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s30, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_58:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v31
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_58
; %bb.59:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 50, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s30, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_60:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v27
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_60
; %bb.61:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 52, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s30, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_62:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v23
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_62
; %bb.63:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 54, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s30, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_64:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v19
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_64
; %bb.65:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 56, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s30, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_66:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_66
; %bb.67:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 58, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s30, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_68:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_68
; %bb.69:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 60, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s30, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_70:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_70
; %bb.71:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 62, v[32:33]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s30, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_72:                               ; %atomicrmw.start
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
	s_cbranch_execnz .LBB0_72
; %bb.73:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 48
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 38
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 48
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21088
; TotalNumSgprs: 40
; NumVgprs: 256
; ScratchSize: 48
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 40
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 48
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 11
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
