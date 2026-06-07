	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	v_mov_b32_e32 v217, v0
	s_mov_b32 s34, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v236, 4, v217
	v_and_b32_e32 v2, 48, v236
	v_lshrrev_b32_e32 v0, 3, v217
	v_lshrrev_b32_e32 v13, 2, v217
	v_and_b32_e32 v16, 15, v217
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v219, 1, v217
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v6, 32, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s28, 63
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
	s_lshr_b32 s10, s10, 26
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
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v3, s28, v13
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v218, v0, 16, v16
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v14, v6 :: v_dual_mov_b32 v15, v16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v220, 48, v219
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
	s_lshl_b32 s7, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s8, s7
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s6, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s16, s6
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v236
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[7:8], null, s29, v0, v[1:2]
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
	v_lshl_add_u32 v8, s29, 5, v7
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s17, s18
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s17, s17, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s17
	s_xor_b32 s17, s2, s6
	s_mul_i32 s18, s4, s16
	s_ashr_i32 s19, s17, 31
	s_sub_i32 s5, s5, s18
	s_add_i32 s17, s4, 1
	s_sub_i32 s18, s5, s16
	s_cmp_ge_u32 s5, s16
	v_mov_b32_e32 v49, v8
	s_cselect_b32 s4, s17, s4
	s_cselect_b32 s5, s18, s5
	s_add_i32 s17, s4, 1
	s_cmp_ge_u32 s5, s16
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v29, 0, v236
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s4, s17, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s35, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s19
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s35, v13
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s19
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s35, v0
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s3, s6
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s6, s3, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s35, v6
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s5, s3, s7
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s17, s31, 63
.Ltmp13:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s7, s5, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s4, s29, s35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s17, 63
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s31, v4
	v_cmp_gt_i32_e64 s3, s31, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s33, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s6, s4
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v1, v3, v2, s7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v3, s4, v7
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s2, s33
	s_and_b32 s3, s3, s33
	s_and_b32 vcc_lo, vcc_lo, s33
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s4, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s17, 0x7f
	v_mov_b32_e32 v50, v1
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[1:2], null, s28, s35, v[1:2]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v3, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s35, 64
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v4, s3
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s35, v13
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s3, s29, 6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s35, v0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s4, s3
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v9, s35, v6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v10, s4, v7
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v12, 0x80000000, v1, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_lshl_add_u32 v17, s28, 6, v1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s31, v4
	v_dual_mov_b32 v34, v7 :: v_dual_add_nc_u32 v11, s4, v8
	v_cmp_gt_i32_e64 s4, s31, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[1:4], v2, s[24:27], 0 offen
	buffer_load_b128 v[5:8], v5, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	s_mov_b32 s16, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v21, 0x80000000, v10, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	s_load_b64 s[4:5], s[0:1], 0x20
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v25, 0x80000000, v11, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v12, s[8:11], 0 offen
	buffer_load_b128 v[17:20], v17, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v25, s[24:27], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_lt_i32 s17, 0xc0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v29, v[1:4]
	s_waitcnt vmcnt(4)
	ds_store_b128 v29, v[5:8] offset:4096
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v29, v[9:12] offset:16384
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v29, v[17:20] offset:20480
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v29, v[21:24] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v29, v[25:28] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s36, s17, 6
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v48, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[1:4], off
	scratch_store_b128 off, v[5:8], off offset:16
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v2, v14
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v4, v34
	v_dual_mov_b32 v3, v15 :: v_dual_mov_b32 v6, v50
	v_mov_b32_e32 v5, v49
	s_add_i32 s35, s35, 64
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s30, 0, 0x5000
	s_add_i32 s3, 0, 0x2000
	s_add_i32 s36, s36, -3
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v219, off offset:36
	scratch_store_b32 off, v217, off offset:32
.Ltmp15:
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s1, s17, 6
	v_dual_mov_b32 v1, v48 :: v_dual_add_nc_u32 v58, s0, v218
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s1, s35, s1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v56, s16, v3, v220
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v11, s1, v13
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[9:10], null, s1, s28, v[6:7]
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v12, s1, v0
	v_or_b32_e32 v57, s1, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s0, s1, s29
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e64 s1, s31, v11
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s0, s0, s6
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v12
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v10, s0, v4
	v_add_nc_u32_e32 v60, s0, v5
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s31, v57
	v_mov_b32_e32 v14, v220
	v_dual_mov_b32 v48, v47 :: v_dual_mov_b32 v47, v46
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v59, 0x80000000, v10, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[9:12], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v220, v56 offset:4736
	v_dual_mov_b32 v46, v45 :: v_dual_mov_b32 v45, v44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v57, 0x80000000, v60, s0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v60, v58 offset:832
	ds_load_u8 v61, v58 offset:768
	ds_load_u8 v62, v58 offset:960
	ds_load_u8 v64, v58 offset:896
	ds_load_u8 v66, v58 offset:576
	ds_load_u8 v67, v58 offset:512
	ds_load_u8 v68, v58 offset:704
	ds_load_u8 v69, v58 offset:640
	ds_load_u8 v70, v58 offset:320
	ds_load_u8 v71, v58 offset:256
	ds_load_u8 v72, v58 offset:448
	ds_load_u8 v73, v58 offset:384
	ds_load_u8 v74, v58 offset:64
	ds_load_u8 v75, v58
	ds_load_u8 v63, v58 offset:192
	ds_load_u8 v65, v58 offset:128
	ds_load_u8 v76, v58 offset:224
	ds_load_u8 v77, v58 offset:160
	ds_load_u8 v78, v58 offset:96
	ds_load_u8 v79, v58 offset:32
	ds_load_u8 v80, v58 offset:1856
	ds_load_u8 v81, v58 offset:1792
	ds_load_u8 v82, v58 offset:1984
	ds_load_u8 v83, v58 offset:1920
	ds_load_u8 v84, v58 offset:1600
	ds_load_u8 v85, v58 offset:1536
	ds_load_u8 v86, v58 offset:1728
	ds_load_u8 v87, v58 offset:1664
	ds_load_u8 v88, v58 offset:1344
	ds_load_u8 v89, v58 offset:1280
	ds_load_u8 v90, v58 offset:1472
	ds_load_u8 v91, v58 offset:1408
	ds_load_u8 v92, v58 offset:1088
	ds_load_u8 v93, v58 offset:1024
	ds_load_u8 v94, v58 offset:1216
	ds_load_u8 v95, v58 offset:1152
	ds_load_u8 v96, v58 offset:2880
	ds_load_u8 v97, v58 offset:2816
	ds_load_u8 v98, v58 offset:3008
	ds_load_u8 v99, v58 offset:2944
	ds_load_u8 v100, v58 offset:2624
	ds_load_u8 v101, v58 offset:2560
	ds_load_u8 v102, v58 offset:2752
	ds_load_u8 v103, v58 offset:2688
	ds_load_u8 v104, v58 offset:2368
	ds_load_u8 v105, v58 offset:2304
	ds_load_u8 v106, v58 offset:2496
	ds_load_u8 v107, v58 offset:2432
	ds_load_u8 v108, v58 offset:2112
	ds_load_u8 v109, v58 offset:2048
	ds_load_u8 v110, v58 offset:2240
	ds_load_u8 v111, v58 offset:2176
	ds_load_u8 v112, v58 offset:3904
	ds_load_u8 v113, v58 offset:3840
	ds_load_u8 v114, v58 offset:4032
	ds_load_u8 v115, v58 offset:3968
	ds_load_u8 v116, v58 offset:3648
	ds_load_u8 v117, v58 offset:3584
	ds_load_u8 v118, v58 offset:3776
	ds_load_u8 v119, v58 offset:3712
	ds_load_u8 v120, v58 offset:3392
	ds_load_u8 v121, v58 offset:3328
	ds_load_u8 v122, v58 offset:3520
	ds_load_u8 v123, v58 offset:3456
	ds_load_u8 v124, v58 offset:3136
	ds_load_u8 v125, v58 offset:3072
	ds_load_u8 v126, v58 offset:3264
	ds_load_u8 v127, v58 offset:3200
	ds_load_u8 v128, v56 offset:7296
	ds_load_u8 v129, v56 offset:7168
	ds_load_u8 v130, v56 offset:7552
	ds_load_u8 v131, v56 offset:7424
	ds_load_u8 v132, v56 offset:6784
	ds_load_u8 v133, v56 offset:6656
	ds_load_u8 v134, v56 offset:7040
	ds_load_u8 v135, v56 offset:6912
	ds_load_u8 v136, v56 offset:6272
	ds_load_u8 v137, v56 offset:6144
	ds_load_u8 v138, v56 offset:6528
	ds_load_u8 v139, v56 offset:6400
	ds_load_u8 v140, v56 offset:1664
	ds_load_u8 v141, v56 offset:1536
	ds_load_u8 v142, v56 offset:1920
	ds_load_u8 v143, v56 offset:1792
	ds_load_u8 v144, v56 offset:1984
	ds_load_u8 v145, v56 offset:1856
	ds_load_u8 v146, v56 offset:1728
	ds_load_u8 v147, v56 offset:1600
	ds_load_u8 v148, v56 offset:1152
	ds_load_u8 v149, v56 offset:1024
	ds_load_u8 v150, v56 offset:1408
	ds_load_u8 v151, v56 offset:1280
	ds_load_u8 v152, v56 offset:1472
	ds_load_u8 v153, v56 offset:1344
	ds_load_u8 v154, v56 offset:1216
	ds_load_u8 v155, v56 offset:1088
	ds_load_u8 v156, v56 offset:640
	ds_load_u8 v157, v56 offset:512
	ds_load_u8 v158, v56 offset:896
	ds_load_u8 v159, v56 offset:768
	ds_load_u8 v160, v56 offset:960
	ds_load_u8 v161, v56 offset:832
	ds_load_u8 v162, v56 offset:704
	ds_load_u8 v163, v56 offset:576
	ds_load_u8 v164, v56 offset:128
	ds_load_u8 v165, v56
	ds_load_u8 v166, v56 offset:384
	ds_load_u8 v167, v56 offset:256
	ds_load_u8 v168, v56 offset:448
	ds_load_u8 v169, v56 offset:320
	ds_load_u8 v170, v56 offset:192
	ds_load_u8 v171, v56 offset:64
	ds_load_u8 v172, v56 offset:3712
	ds_load_u8 v173, v56 offset:3584
	ds_load_u8 v174, v56 offset:3968
	ds_load_u8 v175, v56 offset:3840
	ds_load_u8 v176, v56 offset:4032
	ds_load_u8 v177, v56 offset:3904
	ds_load_u8 v178, v56 offset:3776
	ds_load_u8 v179, v56 offset:3648
	ds_load_u8 v180, v56 offset:3200
	ds_load_u8 v181, v56 offset:3072
	ds_load_u8 v182, v56 offset:3456
	ds_load_u8 v183, v56 offset:3328
	ds_load_u8 v184, v56 offset:3520
	ds_load_u8 v185, v56 offset:3392
	ds_load_u8 v186, v56 offset:3264
	ds_load_u8 v187, v56 offset:3136
	ds_load_u8 v188, v56 offset:2688
	ds_load_u8 v189, v56 offset:2560
	ds_load_u8 v190, v56 offset:2944
	ds_load_u8 v191, v56 offset:2816
	ds_load_u8 v192, v56 offset:3008
	ds_load_u8 v193, v56 offset:2880
	ds_load_u8 v194, v56 offset:2752
	ds_load_u8 v195, v56 offset:2624
	ds_load_u8 v196, v56 offset:2176
	ds_load_u8 v197, v56 offset:2048
	ds_load_u8 v198, v56 offset:2432
	ds_load_u8 v199, v56 offset:2304
	ds_load_u8 v200, v56 offset:2496
	ds_load_u8 v201, v56 offset:2368
	ds_load_u8 v202, v56 offset:2240
	ds_load_u8 v203, v56 offset:2112
	ds_load_u8 v204, v56 offset:5760
	ds_load_u8 v205, v56 offset:5632
	ds_load_u8 v206, v56 offset:6016
	ds_load_u8 v207, v56 offset:5888
	ds_load_u8 v208, v56 offset:6080
	ds_load_u8 v209, v56 offset:5952
	ds_load_u8 v210, v56 offset:5824
	ds_load_u8 v211, v56 offset:5696
	ds_load_u8 v212, v56 offset:5248
	ds_load_u8 v213, v56 offset:5120
	ds_load_u8 v214, v56 offset:5504
	ds_load_u8 v215, v56 offset:5376
	ds_load_u8 v216, v56 offset:5568
	ds_load_u8 v217, v56 offset:5440
	ds_load_u8 v15, v56 offset:5312
	ds_load_u8 v219, v56 offset:5184
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	ds_load_u8 v61, v58 offset:480
	ds_load_u8 v255, v58 offset:1056
	v_perm_b32 v62, v64, v62, 0xc0c0004
	ds_load_u8 v64, v58 offset:416
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v58 offset:352
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v58 offset:288
	v_perm_b32 v140, v141, v140, 0xc0c0004
	v_perm_b32 v141, v143, v142, 0xc0c0004
	v_perm_b32 v143, v149, v148, 0xc0c0004
	ds_load_u8 v148, v58 offset:1760
	v_perm_b32 v149, v151, v150, 0xc0c0004
	ds_load_u8 v150, v58 offset:1696
	v_perm_b32 v151, v157, v156, 0xc0c0004
	ds_load_u8 v156, v58 offset:1632
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v157, v159, v158, 0xc0c0004
	ds_load_u8 v158, v58 offset:1568
	v_perm_b32 v253, v83, v82, 0xc0c0004
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v82, v58 offset:1248
	ds_load_u8 v83, v58 offset:1184
	v_perm_b32 v85, v87, v86, 0xc0c0004
	ds_load_u8 v87, v58 offset:1120
	ds_load_u8 v51, v58 offset:3040
	s_waitcnt lgkmcnt(59)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v58 offset:2912
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v175, v58 offset:2848
	s_waitcnt lgkmcnt(53)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v58 offset:2784
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v58 offset:2720
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	ds_load_u8 v189, v58 offset:2656
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v58 offset:2592
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v58 offset:3424
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v58 offset:3360
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v58 offset:3296
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v58 offset:3232
	ds_load_u8 v49, v58 offset:2976
	v_dual_mov_b32 v44, v43 :: v_dual_mov_b32 v43, v42
	v_dual_mov_b32 v42, v41 :: v_dual_mov_b32 v41, v40
	v_dual_mov_b32 v40, v39 :: v_dual_mov_b32 v39, v38
	v_dual_mov_b32 v38, v37 :: v_dual_mov_b32 v37, v36
	v_dual_mov_b32 v36, v35 :: v_dual_mov_b32 v35, v221
	ds_load_u8 v221, v56 offset:4608
	ds_load_u8 v222, v56 offset:4992
	ds_load_u8 v223, v56 offset:4864
	ds_load_u8 v224, v56 offset:5056
	ds_load_u8 v225, v56 offset:4928
	ds_load_u8 v226, v56 offset:4800
	ds_load_u8 v227, v56 offset:4672
	ds_load_u8 v228, v56 offset:4224
	ds_load_u8 v229, v56 offset:4096
	ds_load_u8 v230, v56 offset:4480
	ds_load_u8 v231, v56 offset:4352
	ds_load_u8 v232, v56 offset:4544
	ds_load_u8 v233, v56 offset:4416
	ds_load_u8 v234, v56 offset:4288
	ds_load_u8 v235, v56 offset:4160
	ds_load_u8 v55, v56 offset:7808
	ds_load_u8 v237, v56 offset:7680
	ds_load_u8 v238, v56 offset:8064
	ds_load_u8 v239, v56 offset:7936
	ds_load_u8 v240, v56 offset:8128
	ds_load_u8 v241, v56 offset:8000
	ds_load_u8 v242, v56 offset:7872
	ds_load_u8 v243, v56 offset:7744
	ds_load_u8 v244, v58 offset:992
	ds_load_u8 v245, v58 offset:928
	ds_load_u8 v246, v58 offset:864
	ds_load_u8 v247, v58 offset:800
	ds_load_u8 v248, v58 offset:736
	ds_load_u8 v249, v58 offset:672
	ds_load_u8 v250, v58 offset:608
	ds_load_u8 v251, v58 offset:544
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v56 offset:7616
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v56 offset:7488
	v_perm_b32 v159, v165, v164, 0xc0c0004
	ds_load_u8 v164, v58 offset:1504
	v_perm_b32 v165, v167, v166, 0xc0c0004
	ds_load_u8 v166, v58 offset:1440
	v_perm_b32 v167, v81, v80, 0xc0c0004
	ds_load_u8 v80, v58 offset:1376
	ds_load_u8 v81, v58 offset:1312
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v196, v197, v196, 0xc0c0004
	ds_load_u8 v197, v58 offset:2528
	v_perm_b32 v198, v199, v198, 0xc0c0004
	ds_load_u8 v199, v58 offset:2464
	v_perm_b32 v16, v103, v102, 0xc0c0004
	v_perm_b32 v104, v105, v104, 0xc0c0004
	v_perm_b32 v105, v107, v106, 0xc0c0004
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v102, v56 offset:7360
	v_perm_b32 v109, v111, v110, 0xc0c0004
	v_perm_b32 v110, v205, v204, 0xc0c0004
	v_perm_b32 v111, v207, v206, 0xc0c0004
	ds_load_u8 v107, v58 offset:3936
	ds_load_u8 v205, v58 offset:3872
	ds_load_u8 v207, v58 offset:3808
	v_perm_b32 v204, v213, v212, 0xc0c0004
	v_perm_b32 v206, v215, v214, 0xc0c0004
	ds_load_u8 v213, v58 offset:3744
	ds_load_u8 v215, v58 offset:3680
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v214, v223, v222, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v222, v231, v230, 0xc0c0004
	ds_load_u8 v223, v58 offset:3552
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v58 offset:3488
	v_perm_b32 v124, v125, v124, 0xc0c0004
	ds_load_u8 v125, v56 offset:7232
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v56 offset:7104
	ds_load_u8 v231, v56 offset:6848
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v56 offset:6720
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v56 offset:6592
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v56 offset:6464
	v_perm_b32 v212, v221, v220, 0xc0c0004
	v_perm_b32 v220, v229, v228, 0xc0c0004
	ds_load_u8 v221, v58 offset:3616
	ds_load_u8 v229, v56 offset:6976
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s34, 1
	s_mov_b32 s16, s3
	s_cmp_lt_i32 s1, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v86, v89, v88, 0xc0c0004
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s34, s1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v254, v91, v90, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s3, s34, 12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v50, v93, v92, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s18, s3, 0
	v_dual_mov_b32 v34, v33 :: v_dual_mov_b32 v33, v32
	v_dual_mov_b32 v32, v31 :: v_dual_mov_b32 v31, v30
	v_dual_mov_b32 v30, v29 :: v_dual_mov_b32 v29, v28
	v_dual_mov_b32 v28, v27 :: v_dual_mov_b32 v27, v26
	v_dual_mov_b32 v26, v25 :: v_dual_mov_b32 v25, v24
	v_dual_mov_b32 v24, v23 :: v_dual_mov_b32 v23, v22
	v_dual_mov_b32 v22, v21 :: v_dual_mov_b32 v21, v20
	v_dual_mov_b32 v20, v19 :: v_dual_mov_b32 v19, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v122, v123, v122, 0xc0c0004
	v_perm_b32 v136, v137, v136, 0xc0c0004
	v_perm_b32 v137, v139, v138, 0xc0c0004
	v_perm_b32 v138, v147, v146, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[88:91], v59, s[24:27], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v139, v155, v154, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s3, s18, s3
	v_mov_b32_e32 v18, v17
	v_mov_b32_e32 v17, v13
	v_mov_b32_e32 v13, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v0, v95, v94, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[92:95], v57, s[24:27], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v59, v145, v144, 0xc0c0004
	v_perm_b32 v145, v161, v160, 0xc0c0004
	v_perm_b32 v146, v171, v170, 0xc0c0004
	v_perm_b32 v147, v169, v168, 0xc0c0004
	v_perm_b32 v154, v179, v178, 0xc0c0004
	v_perm_b32 v155, v177, v176, 0xc0c0004
	v_perm_b32 v160, v187, v186, 0xc0c0004
	v_perm_b32 v161, v185, v184, 0xc0c0004
	v_perm_b32 v67, v69, v67, 0xc0c0004
	v_perm_b32 v69, v77, v76, 0xc0c0004
	v_perm_b32 v77, v158, v156, 0xc0c0004
	v_perm_b32 v156, v175, v173, 0xc0c0004
	v_perm_b32 v49, v49, v51, 0xc0c0004
	v_perm_b32 v51, v191, v189, 0xc0c0004
	v_perm_b32 v158, v183, v181, 0xc0c0004
	v_perm_b32 v252, v75, v74, 0xc0c0004
	ds_load_u8 v74, v58 offset:2016
	ds_load_u8 v75, v58 offset:1888
	ds_load_u8 v142, v58 offset:1824
	v_perm_b32 v63, v65, v63, 0xc0c0004
	v_perm_b32 v53, v97, v96, 0xc0c0004
	ds_load_u8 v96, v58 offset:2400
	ds_load_u8 v97, v58 offset:2336
	v_perm_b32 v54, v99, v98, 0xc0c0004
	v_perm_b32 v52, v101, v100, 0xc0c0004
	ds_load_u8 v98, v58 offset:2272
	ds_load_u8 v99, v58 offset:2208
	ds_load_u8 v100, v58 offset:2144
	ds_load_u8 v101, v58 offset:2080
	ds_load_u8 v65, v58 offset:1952
	ds_load_u8 v103, v58 offset:4064
	ds_load_u8 v106, v58 offset:4000
	ds_load_u8 v123, v58 offset:3168
	ds_load_u8 v58, v58 offset:3104
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v56 offset:6336
	ds_load_u8 v56, v56 offset:6208
	v_perm_b32 v57, v163, v162, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v162, v195, v194, 0xc0c0004
	v_perm_b32 v194, v229, v127, 0xc0c0004
	v_perm_b32 v61, v64, v61, 0xc0c0004
	v_perm_b32 v64, v79, v78, 0xc0c0004
	v_perm_b32 v78, v150, v148, 0xc0c0004
	v_perm_b32 v79, v81, v80, 0xc0c0004
	v_perm_b32 v148, v166, v164, 0xc0c0004
	v_perm_b32 v166, v199, v197, 0xc0c0004
	v_perm_b32 v197, v117, v115, 0xc0c0004
	v_perm_b32 v199, v113, v223, 0xc0c0004
	v_lshl_or_b32 v81, v157, 16, v151
	v_lshl_or_b32 v80, v165, 16, v159
	v_lshl_or_b32 v115, v114, 16, v112
	v_lshl_or_b32 v113, v122, 16, v120
	v_lshl_or_b32 v112, v126, 16, v124
	v_lshl_or_b32 v120, v147, 16, v146
	v_lshl_or_b32 v127, v155, 16, v154
	v_lshl_or_b32 v126, v161, 16, v160
	v_lshl_or_b32 v147, v49, 16, v156
	v_lshl_or_b32 v146, v158, 16, v51
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[154:157], off, off
	scratch_load_b128 v[158:161], off, off offset:16
	v_perm_b32 v144, v153, v152, 0xc0c0004
	v_perm_b32 v168, v203, v202, 0xc0c0004
	v_perm_b32 v169, v201, v200, 0xc0c0004
	v_perm_b32 v71, v73, v71, 0xc0c0004
	v_perm_b32 v56, v56, v135, 0xc0c0004
	v_perm_b32 v195, v133, v131, 0xc0c0004
	v_perm_b32 v200, v247, v246, 0xc0c0004
	v_perm_b32 v201, v245, v244, 0xc0c0004
	v_perm_b32 v202, v251, v250, 0xc0c0004
	v_perm_b32 v203, v249, v248, 0xc0c0004
	v_perm_b32 v76, v142, v75, 0xc0c0004
	v_perm_b32 v65, v65, v74, 0xc0c0004
	v_perm_b32 v150, v83, v82, 0xc0c0004
	v_perm_b32 v181, v205, v107, 0xc0c0004
	v_perm_b32 v58, v58, v123, 0xc0c0004
	v_perm_b32 v205, v121, v119, 0xc0c0004
	v_lshl_or_b32 v75, v62, 16, v60
	v_lshl_or_b32 v74, v68, 16, v66
	v_lshl_or_b32 v73, v72, 16, v70
	v_lshl_or_b32 v72, v63, 16, v252
	v_lshl_or_b32 v83, v141, 16, v140
	v_lshl_or_b32 v82, v149, 16, v143
	v_perm_b32 v163, v193, v192, 0xc0c0004
	v_perm_b32 v192, v125, v102, 0xc0c0004
	v_perm_b32 v87, v255, v87, 0xc0c0004
	v_perm_b32 v164, v97, v96, 0xc0c0004
	v_perm_b32 v173, v101, v100, 0xc0c0004
	v_perm_b32 v175, v99, v98, 0xc0c0004
	v_perm_b32 v183, v106, v103, 0xc0c0004
	v_lshl_or_b32 v99, v253, 16, v167
	v_lshl_or_b32 v98, v85, 16, v84
	v_lshl_or_b32 v97, v254, 16, v86
	v_lshl_or_b32 v96, v0, 16, v50
	v_lshl_or_b32 v103, v174, 16, v172
	v_lshl_or_b32 v102, v182, 16, v180
	v_lshl_or_b32 v101, v190, 16, v188
	v_lshl_or_b32 v100, v198, 16, v196
	v_lshl_or_b32 v114, v118, 16, v116
	v_lshl_or_b32 v117, v134, 16, v132
	v_lshl_or_b32 v116, v137, 16, v136
	v_lshl_or_b32 v123, v59, 16, v138
	v_lshl_or_b32 v122, v144, 16, v139
	v_lshl_or_b32 v121, v145, 16, v57
	v_lshl_or_b32 v132, v195, 16, v56
	v_lshl_or_b32 v139, v201, 16, v200
	v_lshl_or_b32 v138, v203, 16, v202
	v_lshl_or_b32 v137, v61, 16, v67
	v_lshl_or_b32 v136, v69, 16, v64
	v_lshl_or_b32 v141, v148, 16, v79
	v_lshl_or_b32 v148, v205, 16, v58
	v_perm_b32 v228, v237, v55, 0xc0c0004
	v_perm_b32 v230, v239, v238, 0xc0c0004
	v_perm_b32 v170, v211, v210, 0xc0c0004
	v_perm_b32 v171, v209, v208, 0xc0c0004
	v_perm_b32 v176, v219, v15, 0xc0c0004
	v_perm_b32 v177, v217, v216, 0xc0c0004
	v_perm_b32 v178, v227, v226, 0xc0c0004
	v_perm_b32 v179, v225, v224, 0xc0c0004
	v_perm_b32 v184, v235, v234, 0xc0c0004
	v_perm_b32 v185, v233, v232, 0xc0c0004
	v_lshl_or_b32 v107, v54, 16, v53
	v_lshl_or_b32 v106, v16, 16, v52
	v_lshl_or_b32 v105, v105, 16, v104
	v_lshl_or_b32 v104, v109, 16, v108
	v_lshl_or_b32 v111, v111, 16, v110
	v_lshl_or_b32 v110, v206, 16, v204
	v_lshl_or_b32 v109, v214, 16, v212
	v_lshl_or_b32 v108, v222, 16, v220
	v_lshl_or_b32 v125, v163, 16, v162
	v_lshl_or_b32 v124, v169, 16, v168
	v_lshl_or_b32 v134, v71, 16, v192
	v_lshl_or_b32 v143, v65, 16, v76
	v_lshl_or_b32 v142, v78, 16, v77
	v_lshl_or_b32 v140, v150, 16, v87
	v_perm_b32 v186, v243, v242, 0xc0c0004
	v_perm_b32 v187, v241, v240, 0xc0c0004
	v_perm_b32 v193, v129, v231, 0xc0c0004
	v_perm_b32 v189, v221, v215, 0xc0c0004
	v_perm_b32 v191, v213, v207, 0xc0c0004
	v_lshl_or_b32 v119, v230, 16, v228
	v_lshl_or_b32 v118, v130, 16, v128
	v_lshl_or_b32 v131, v171, 16, v170
	v_lshl_or_b32 v130, v177, 16, v176
	v_lshl_or_b32 v129, v179, 16, v178
	v_lshl_or_b32 v128, v185, 16, v184
	v_lshl_or_b32 v145, v166, 16, v164
	v_lshl_or_b32 v144, v175, 16, v173
	v_lshl_or_b32 v135, v187, 16, v186
	v_lshl_or_b32 v133, v194, 16, v193
	v_lshl_or_b32 v151, v183, 16, v181
	v_lshl_or_b32 v150, v191, 16, v189
	v_lshl_or_b32 v149, v199, 16, v197
	v_dual_mov_b32 v221, v35 :: v_dual_add_nc_u32 v152, s18, v236
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v153, s3, v236
	v_dual_mov_b32 v35, v36 :: v_dual_mov_b32 v36, v37
	v_dual_mov_b32 v37, v38 :: v_dual_mov_b32 v38, v39
	v_dual_mov_b32 v39, v40 :: v_dual_mov_b32 v40, v41
	v_dual_mov_b32 v41, v42 :: v_dual_mov_b32 v42, v43
	v_dual_mov_b32 v43, v44 :: v_dual_mov_b32 v44, v45
	v_dual_mov_b32 v45, v46 :: v_dual_mov_b32 v46, v47
	v_dual_mov_b32 v47, v48 :: v_dual_mov_b32 v48, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s17, 1
	s_mov_b32 s0, s30
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s30, s18, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s17, s36
	s_mov_b32 s17, s1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v152, v[9:12] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v153, v[88:91]
	s_waitcnt vmcnt(2)
	ds_store_b128 v153, v[92:95] offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[80:83], v[72:75], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[120:123], v[72:75], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[72:79], v[80:83], v[136:139], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[120:123], v[136:139], v[154:161] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[100:103], v[96:99], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[124:127], v[96:99], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[100:103], v[140:143], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[124:127], v[140:143], v[80:87] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[108:111], v[104:107], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[128:131], v[104:107], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[108:111], v[144:147], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[128:131], v[144:147], v[80:87] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[116:119], v[112:115], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[132:135], v[112:115], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[116:119], v[148:151], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[132:135], v[148:151], v[80:87] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v0, v56
	v_mov_b32_e32 v220, v14
	v_cvt_f32_i32_e32 v16, v57
	v_cvt_f32_i32_e32 v49, v58
	v_cvt_f32_i32_e32 v50, v59
	v_cvt_f32_i32_e32 v51, v60
	v_cvt_f32_i32_e32 v52, v61
	v_cvt_f32_i32_e32 v53, v62
	v_cvt_f32_i32_e32 v54, v63
	v_cvt_f32_i32_e32 v56, v64
	v_cvt_f32_i32_e32 v57, v65
	v_cvt_f32_i32_e32 v58, v66
	v_cvt_f32_i32_e32 v59, v67
	v_cvt_f32_i32_e32 v60, v68
	v_cvt_f32_i32_e32 v61, v69
	v_cvt_f32_i32_e32 v62, v70
	v_cvt_f32_i32_e32 v63, v71
	v_cvt_f32_i32_e32 v64, v72
	v_cvt_f32_i32_e32 v65, v73
	v_cvt_f32_i32_e32 v66, v74
	v_cvt_f32_i32_e32 v67, v75
	v_cvt_f32_i32_e32 v68, v76
	v_cvt_f32_i32_e32 v69, v77
	v_cvt_f32_i32_e32 v70, v78
	v_cvt_f32_i32_e32 v71, v79
	v_cvt_f32_i32_e32 v72, v80
	v_cvt_f32_i32_e32 v73, v81
	v_cvt_f32_i32_e32 v74, v82
	v_cvt_f32_i32_e32 v75, v83
	v_cvt_f32_i32_e32 v76, v84
	v_cvt_f32_i32_e32 v77, v85
	v_cvt_f32_i32_e32 v78, v86
	v_cvt_f32_i32_e32 v79, v87
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v221, v221, v0
	v_mov_b32_e32 v0, v13
	v_mov_b32_e32 v13, v17
	v_dual_mov_b32 v17, v18 :: v_dual_mov_b32 v18, v19
	v_dual_mov_b32 v19, v20 :: v_dual_mov_b32 v20, v21
	v_dual_mov_b32 v21, v22 :: v_dual_mov_b32 v22, v23
	v_dual_mov_b32 v23, v24 :: v_dual_mov_b32 v24, v25
	v_dual_mov_b32 v25, v26 :: v_dual_mov_b32 v26, v27
	v_dual_mov_b32 v27, v28 :: v_dual_mov_b32 v28, v29
	v_dual_mov_b32 v29, v30 :: v_dual_mov_b32 v30, v31
	v_dual_mov_b32 v31, v32 :: v_dual_mov_b32 v32, v33
	v_dual_mov_b32 v33, v34 :: v_dual_add_f32 v48, v48, v16
	v_dual_add_f32 v47, v47, v49 :: v_dual_add_f32 v46, v46, v50
	v_dual_add_f32 v45, v45, v51 :: v_dual_add_f32 v44, v44, v52
	v_dual_add_f32 v43, v43, v53 :: v_dual_add_f32 v42, v42, v54
	v_dual_add_f32 v41, v41, v56 :: v_dual_add_f32 v40, v40, v57
	v_dual_add_f32 v39, v39, v58 :: v_dual_add_f32 v38, v38, v59
	v_dual_add_f32 v37, v37, v60 :: v_dual_add_f32 v36, v36, v61
	v_dual_add_f32 v35, v35, v62 :: v_dual_add_f32 v32, v32, v64
	v_dual_add_f32 v33, v33, v63 :: v_dual_add_f32 v30, v30, v66
	v_dual_add_f32 v31, v31, v65 :: v_dual_add_f32 v28, v28, v68
	v_dual_add_f32 v29, v29, v67 :: v_dual_add_f32 v26, v26, v70
	v_dual_add_f32 v27, v27, v69 :: v_dual_add_f32 v24, v24, v72
	v_dual_add_f32 v25, v25, v71 :: v_dual_add_f32 v22, v22, v74
	v_dual_add_f32 v23, v23, v73 :: v_dual_add_f32 v20, v20, v76
	v_dual_add_f32 v21, v21, v75 :: v_dual_add_f32 v18, v18, v78
	v_add_f32_e32 v19, v19, v77
	v_add_f32_e32 v17, v17, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v217, off, off offset:32
	scratch_load_b32 v219, off, off offset:36
	s_branch .LBB0_5
.LBB0_4:
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v221, 0
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s30, 0, 0x5000
	s_add_i32 s3, 0, 0x2000
	v_mov_b32_e32 v3, v15
.LBB0_5:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v52, v220, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s33
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_7
; %bb.6:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v54, s16, v52
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
	v_add_nc_u32_e32 v53, s0, v218
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v53 offset:832
	ds_load_u8 v1, v53 offset:768
	ds_load_u8 v2, v53 offset:960
	ds_load_u8 v3, v53 offset:896
	ds_load_u8 v4, v53 offset:576
	ds_load_u8 v5, v53 offset:512
	ds_load_u8 v6, v53 offset:704
	ds_load_u8 v7, v53 offset:640
	ds_load_u8 v8, v53 offset:320
	ds_load_u8 v9, v53 offset:256
	ds_load_u8 v10, v53 offset:448
	ds_load_u8 v11, v53 offset:384
	ds_load_u8 v12, v53 offset:64
	ds_load_u8 v13, v53
	ds_load_u8 v14, v53 offset:192
	ds_load_u8 v15, v53 offset:128
	ds_load_u8 v49, v53 offset:992
	ds_load_u8 v50, v53 offset:928
	ds_load_u8 v51, v53 offset:864
	ds_load_u8 v105, v53 offset:800
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v1, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v2, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v7, v6, 0xc0c0004
	v_lshl_or_b32 v64, v1, 16, v0
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v9, v8, 0xc0c0004
	ds_load_u8 v5, v54 offset:1664
	ds_load_u8 v6, v54 offset:1536
	ds_load_u8 v7, v54 offset:1920
	ds_load_u8 v8, v54 offset:1792
	v_lshl_or_b32 v63, v3, 16, v2
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	v_lshl_or_b32 v62, v2, 16, v1
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v51, v105, v51, 0xc0c0004
	v_lshl_or_b32 v61, v4, 16, v3
	ds_load_u8 v1, v54 offset:1152
	ds_load_u8 v2, v54 offset:1024
	ds_load_u8 v3, v54 offset:1408
	ds_load_u8 v4, v54 offset:1280
	ds_load_u8 v9, v54 offset:640
	ds_load_u8 v10, v54 offset:512
	ds_load_u8 v11, v54 offset:896
	ds_load_u8 v12, v54 offset:768
	ds_load_u8 v13, v54 offset:128
	ds_load_u8 v14, v54
	ds_load_u8 v15, v54 offset:384
	ds_load_u8 v16, v54 offset:256
	ds_load_u8 v55, v54 offset:1984
	ds_load_u8 v56, v54 offset:1856
	ds_load_u8 v57, v54 offset:1728
	ds_load_u8 v58, v54 offset:1600
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
	v_lshl_or_b32 v71, v2, 16, v1
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v14, v13, 0xc0c0004
	v_lshl_or_b32 v72, v6, 16, v5
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v16, v15, 0xc0c0004
	v_lshl_or_b32 v70, v4, 16, v3
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	v_lshl_or_b32 v69, v8, 16, v7
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	ds_load_u8 v65, v53 offset:1856
	ds_load_u8 v66, v53 offset:1792
	ds_load_u8 v67, v53 offset:1984
	ds_load_u8 v68, v53 offset:1920
	ds_load_u8 v73, v53 offset:1600
	ds_load_u8 v74, v53 offset:1536
	ds_load_u8 v75, v53 offset:1728
	ds_load_u8 v76, v53 offset:1664
	ds_load_u8 v77, v53 offset:1344
	ds_load_u8 v78, v53 offset:1280
	ds_load_u8 v79, v53 offset:1472
	ds_load_u8 v80, v53 offset:1408
	ds_load_u8 v117, v53 offset:2016
	ds_load_u8 v118, v53 offset:1952
	ds_load_u8 v119, v53 offset:1888
	ds_load_u8 v120, v53 offset:1824
	ds_load_u8 v59, v54 offset:1472
	ds_load_u8 v60, v54 offset:1344
	ds_load_u8 v89, v54 offset:1216
	ds_load_u8 v93, v54 offset:1088
	ds_load_u8 v94, v54 offset:960
	ds_load_u8 v95, v54 offset:832
	ds_load_u8 v96, v54 offset:704
	ds_load_u8 v97, v54 offset:576
	ds_load_u8 v98, v54 offset:448
	ds_load_u8 v99, v54 offset:320
	ds_load_u8 v100, v54 offset:192
	ds_load_u8 v101, v54 offset:64
	ds_load_u8 v106, v53 offset:736
	ds_load_u8 v107, v53 offset:672
	ds_load_u8 v108, v53 offset:608
	ds_load_u8 v109, v53 offset:544
	ds_load_u8 v0, v53 offset:480
	ds_load_u8 v110, v53 offset:416
	ds_load_u8 v111, v53 offset:352
	ds_load_u8 v112, v53 offset:288
	ds_load_u8 v113, v53 offset:224
	ds_load_u8 v114, v53 offset:160
	ds_load_u8 v115, v53 offset:96
	ds_load_u8 v116, v53 offset:32
	ds_load_u8 v125, v53 offset:1504
	ds_load_u8 v126, v53 offset:1440
	ds_load_u8 v127, v53 offset:1376
	ds_load_u8 v128, v53 offset:1312
	ds_load_u8 v129, v53 offset:1248
	ds_load_u8 v130, v53 offset:1184
	ds_load_u8 v131, v53 offset:1120
	ds_load_u8 v132, v53 offset:1056
	ds_load_u8 v154, v53 offset:2528
	ds_load_u8 v155, v53 offset:2464
	ds_load_u8 v156, v53 offset:2400
	ds_load_u8 v157, v53 offset:2336
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v158, v53 offset:2272
	ds_load_u8 v159, v53 offset:2208
	ds_load_u8 v160, v53 offset:2144
	ds_load_u8 v161, v53 offset:2080
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v74, v76, v75, 0xc0c0004
	ds_load_u8 v185, v53 offset:4064
	ds_load_u8 v186, v53 offset:4000
	ds_load_u8 v187, v53 offset:3936
	ds_load_u8 v188, v53 offset:3872
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v75, v78, v77, 0xc0c0004
	ds_load_u8 v138, v54 offset:3008
	ds_load_u8 v139, v54 offset:2880
	ds_load_u8 v140, v54 offset:2752
	ds_load_u8 v141, v54 offset:2624
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v76, v80, v79, 0xc0c0004
	ds_load_u8 v78, v54 offset:3712
	ds_load_u8 v79, v54 offset:3584
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v53 offset:1088
	ds_load_u8 v81, v53 offset:1024
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v53 offset:1216
	ds_load_u8 v82, v53 offset:1152
	ds_load_u8 v121, v53 offset:1760
	ds_load_u8 v122, v53 offset:1696
	ds_load_u8 v123, v53 offset:1632
	ds_load_u8 v124, v53 offset:1568
	ds_load_u8 v142, v54 offset:2496
	ds_load_u8 v143, v54 offset:2368
	ds_load_u8 v144, v54 offset:2240
	ds_load_u8 v145, v54 offset:2112
	ds_load_u8 v173, v54 offset:5056
	ds_load_u8 v174, v54 offset:4928
	ds_load_u8 v175, v54 offset:4800
	ds_load_u8 v176, v54 offset:4672
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v56, v93, v89, 0xc0c0004
	v_perm_b32 v58, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v59, v97, v96, 0xc0c0004
	v_perm_b32 v60, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v93, v101, v100, 0xc0c0004
	v_perm_b32 v97, v99, v98, 0xc0c0004
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_lshl_or_b32 v96, v55, 16, v57
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v80, v82, v68, 0xc0c0004
	v_lshl_or_b32 v68, v67, 16, v65
	v_perm_b32 v77, v81, v66, 0xc0c0004
	ds_load_u8 v81, v54 offset:3968
	ds_load_u8 v82, v54 offset:3840
	v_lshl_or_b32 v67, v74, 16, v73
	v_lshl_or_b32 v66, v76, 16, v75
	v_perm_b32 v78, v79, v78, 0xc0c0004
	v_lshl_or_b32 v65, v80, 16, v77
	ds_load_u8 v73, v54 offset:3200
	ds_load_u8 v74, v54 offset:3072
	ds_load_u8 v75, v54 offset:3456
	ds_load_u8 v76, v54 offset:3328
	ds_load_u8 v77, v54 offset:2688
	ds_load_u8 v80, v54 offset:2560
	ds_load_u8 v83, v54 offset:2944
	ds_load_u8 v84, v54 offset:2816
	ds_load_u8 v102, v54 offset:4032
	ds_load_u8 v103, v54 offset:3904
	ds_load_u8 v104, v54 offset:3776
	ds_load_u8 v133, v54 offset:3648
	ds_load_u8 v79, v54 offset:2176
	ds_load_u8 v85, v54 offset:2048
	v_lshl_or_b32 v95, v58, 16, v56
	v_lshl_or_b32 v94, v60, 16, v59
	v_lshl_or_b32 v93, v97, 16, v93
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[61:64], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v50, v109, v108, 0xc0c0004
	v_perm_b32 v0, v110, v0, 0xc0c0004
	v_perm_b32 v108, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	v_perm_b32 v109, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v74, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v77, v80, v77, 0xc0c0004
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v54 offset:2432
	ds_load_u8 v86, v54 offset:2304
	ds_load_u8 v134, v54 offset:3520
	ds_load_u8 v135, v54 offset:3392
	ds_load_u8 v136, v54 offset:3264
	ds_load_u8 v137, v54 offset:3136
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v80, v84, v83, 0xc0c0004
	ds_load_u8 v83, v53 offset:2880
	ds_load_u8 v84, v53 offset:2816
	v_lshl_or_b32 v75, v74, 16, v73
	v_lshl_or_b32 v76, v81, 16, v78
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v79, v85, v79, 0xc0c0004
	v_lshl_or_b32 v74, v80, 16, v77
	v_perm_b32 v97, v133, v104, 0xc0c0004
	v_perm_b32 v98, v103, v102, 0xc0c0004
	v_perm_b32 v102, v141, v140, 0xc0c0004
	v_perm_b32 v103, v139, v138, 0xc0c0004
	v_perm_b32 v104, v145, v144, 0xc0c0004
	v_perm_b32 v133, v143, v142, 0xc0c0004
	v_lshl_or_b32 v100, v98, 16, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v98, v103, 16, v102
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v82, v86, v82, 0xc0c0004
	ds_load_u8 v85, v53 offset:3008
	ds_load_u8 v86, v53 offset:2944
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v101, v135, v134, 0xc0c0004
	v_lshl_or_b32 v97, v133, 16, v104
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v99, v137, v136, 0xc0c0004
	v_lshl_or_b32 v73, v82, 16, v79
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v53 offset:2112
	ds_load_u8 v90, v53 offset:2048
	ds_load_u8 v77, v53 offset:2624
	ds_load_u8 v78, v53 offset:2560
	ds_load_u8 v79, v53 offset:2752
	ds_load_u8 v80, v53 offset:2688
	ds_load_u8 v81, v53 offset:2368
	ds_load_u8 v82, v53 offset:2304
	ds_load_u8 v87, v53 offset:2496
	ds_load_u8 v88, v53 offset:2432
	ds_load_u8 v146, v53 offset:3040
	ds_load_u8 v147, v53 offset:2976
	ds_load_u8 v148, v53 offset:2912
	ds_load_u8 v149, v53 offset:2848
	v_lshl_or_b32 v99, v101, 16, v99
	v_perm_b32 v101, v176, v175, 0xc0c0004
	v_perm_b32 v102, v174, v173, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[65:68], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v102, v102, 16, v101
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v78, v80, v79, 0xc0c0004
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v53 offset:2240
	ds_load_u8 v91, v53 offset:2176
	ds_load_u8 v150, v53 offset:2784
	ds_load_u8 v151, v53 offset:2720
	ds_load_u8 v152, v53 offset:2656
	ds_load_u8 v153, v53 offset:2592
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v82, v88, v87, 0xc0c0004
	v_lshl_or_b32 v79, v78, 16, v77
	v_lshl_or_b32 v80, v85, 16, v83
	v_perm_b32 v84, v90, v84, 0xc0c0004
	ds_load_u8 v87, v54 offset:5760
	ds_load_u8 v88, v54 offset:5632
	ds_load_u8 v90, v54 offset:6016
	ds_load_u8 v92, v54 offset:5888
	v_lshl_or_b32 v78, v82, 16, v81
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v86, v91, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v86, 16, v84
	ds_load_u8 v81, v54 offset:5248
	ds_load_u8 v82, v54 offset:5120
	ds_load_u8 v83, v54 offset:5504
	ds_load_u8 v84, v54 offset:5376
	ds_load_u8 v85, v54 offset:4736
	ds_load_u8 v86, v54 offset:4608
	ds_load_u8 v91, v54 offset:4992
	ds_load_u8 v162, v54 offset:4864
	ds_load_u8 v163, v54 offset:6080
	ds_load_u8 v164, v54 offset:5952
	ds_load_u8 v165, v54 offset:5824
	ds_load_u8 v166, v54 offset:5696
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v88, v92, v90, 0xc0c0004
	ds_load_u8 v90, v54 offset:4224
	ds_load_u8 v92, v54 offset:4096
	ds_load_u8 v167, v54 offset:4480
	ds_load_u8 v168, v54 offset:4352
	ds_load_u8 v169, v54 offset:5568
	ds_load_u8 v170, v54 offset:5440
	ds_load_u8 v171, v54 offset:5312
	ds_load_u8 v172, v54 offset:5184
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v82, v84, v83, 0xc0c0004
	v_lshl_or_b32 v84, v88, 16, v87
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v86, v162, v91, 0xc0c0004
	ds_load_u8 v91, v53 offset:3904
	ds_load_u8 v162, v53 offset:3840
	ds_load_u8 v177, v53 offset:4032
	ds_load_u8 v178, v53 offset:3968
	ds_load_u8 v179, v54 offset:4544
	ds_load_u8 v180, v54 offset:4416
	ds_load_u8 v181, v54 offset:4288
	ds_load_u8 v182, v54 offset:4160
	v_lshl_or_b32 v83, v82, 16, v81
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v92, v168, v167, 0xc0c0004
	ds_load_u8 v167, v53 offset:3648
	ds_load_u8 v168, v53 offset:3584
	ds_load_u8 v183, v53 offset:3776
	ds_load_u8 v184, v53 offset:3712
	v_lshl_or_b32 v82, v86, 16, v85
	v_lshl_or_b32 v81, v92, 16, v90
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v85, v162, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[81:84], v[77:80], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v86, v178, v177, 0xc0c0004
	ds_load_u8 v90, v53 offset:3392
	ds_load_u8 v91, v53 offset:3328
	ds_load_u8 v92, v53 offset:3520
	ds_load_u8 v162, v53 offset:3456
	ds_load_u8 v177, v53 offset:3808
	ds_load_u8 v178, v53 offset:3744
	ds_load_u8 v189, v53 offset:3680
	ds_load_u8 v190, v53 offset:3616
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v134, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v133, v182, v181, 0xc0c0004
	v_lshl_or_b32 v88, v86, 16, v85
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v87, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v167, v184, v183, 0xc0c0004
	ds_load_u8 v168, v53 offset:3136
	ds_load_u8 v183, v53 offset:3072
	ds_load_u8 v184, v53 offset:3264
	ds_load_u8 v191, v53 offset:3200
	v_lshl_or_b32 v101, v134, 16, v133
	v_lshl_or_b32 v87, v167, 16, v87
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v85, v91, v90, 0xc0c0004
	ds_load_u8 v167, v53 offset:3552
	ds_load_u8 v192, v53 offset:3488
	ds_load_u8 v193, v53 offset:3424
	ds_load_u8 v194, v53 offset:3360
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v86, v162, v92, 0xc0c0004
	ds_load_u8 v90, v54 offset:7808
	ds_load_u8 v91, v54 offset:7680
	ds_load_u8 v92, v54 offset:8064
	ds_load_u8 v162, v54 offset:7936
	ds_load_u8 v195, v53 offset:3296
	ds_load_u8 v196, v53 offset:3232
	ds_load_u8 v197, v53 offset:3168
	ds_load_u8 v198, v53 offset:3104
	v_lshl_or_b32 v86, v86, 16, v85
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v53, v183, v168, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v168, v191, v184, 0xc0c0004
	ds_load_u8 v183, v54 offset:7296
	ds_load_u8 v184, v54 offset:7168
	ds_load_u8 v191, v54 offset:7552
	ds_load_u8 v199, v54 offset:7424
	ds_load_u8 v200, v54 offset:6784
	ds_load_u8 v201, v54 offset:6656
	ds_load_u8 v202, v54 offset:7040
	ds_load_u8 v203, v54 offset:6912
	ds_load_u8 v204, v54 offset:8128
	ds_load_u8 v205, v54 offset:8000
	ds_load_u8 v206, v54 offset:7872
	ds_load_u8 v207, v54 offset:7744
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v91, v162, v92, 0xc0c0004
	ds_load_u8 v162, v54 offset:6272
	ds_load_u8 v208, v54 offset:6144
	ds_load_u8 v209, v54 offset:6528
	ds_load_u8 v210, v54 offset:6400
	ds_load_u8 v211, v54 offset:7616
	ds_load_u8 v212, v54 offset:7488
	ds_load_u8 v213, v54 offset:7360
	ds_load_u8 v214, v54 offset:7232
	v_lshl_or_b32 v85, v168, 16, v53
	v_lshl_or_b32 v92, v91, 16, v90
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v184, v199, v191, 0xc0c0004
	ds_load_u8 v191, v54 offset:7104
	ds_load_u8 v199, v54 offset:6976
	ds_load_u8 v215, v54 offset:6848
	ds_load_u8 v216, v54 offset:6720
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v200, v201, v200, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v201, v203, v202, 0xc0c0004
	v_lshl_or_b32 v91, v184, 16, v183
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v53, v208, v162, 0xc0c0004
	v_perm_b32 v134, v205, v204, 0xc0c0004
	v_perm_b32 v133, v207, v206, 0xc0c0004
	v_lshl_or_b32 v90, v201, 16, v200
	ds_load_u8 v168, v54 offset:6592
	ds_load_u8 v183, v54 offset:6464
	ds_load_u8 v184, v54 offset:6336
	ds_load_u8 v200, v54 offset:6208
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v54, v210, v209, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v135, v214, v213, 0xc0c0004
	v_perm_b32 v136, v212, v211, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v89, v54, 16, v53
	v_wmma_i32_16x16x16_iu8 v[53:60], v[93:96], v[61:64], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v61, v166, v165, 0xc0c0004
	v_perm_b32 v62, v164, v163, 0xc0c0004
	v_perm_b32 v63, v172, v171, 0xc0c0004
	v_perm_b32 v64, v170, v169, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[53:60], v[97:100], v[65:68], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[89:92], v[85:88], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v62, 16, v61
	v_perm_b32 v61, v107, v106, 0xc0c0004
	v_lshl_or_b32 v103, v64, 16, v63
	v_perm_b32 v62, v112, v111, 0xc0c0004
	v_perm_b32 v63, v116, v115, 0xc0c0004
	v_perm_b32 v64, v114, v113, 0xc0c0004
	v_perm_b32 v106, v128, v127, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[53:60], v[101:104], v[77:80], v[53:60] neg_lo:[1,1,0]
	v_lshl_or_b32 v80, v49, 16, v51
	v_lshl_or_b32 v79, v61, 16, v50
	v_lshl_or_b32 v78, v0, 16, v62
	v_lshl_or_b32 v77, v64, 16, v63
	v_perm_b32 v0, v120, v119, 0xc0c0004
	v_perm_b32 v49, v118, v117, 0xc0c0004
	v_perm_b32 v50, v124, v123, 0xc0c0004
	v_perm_b32 v51, v122, v121, 0xc0c0004
	v_perm_b32 v107, v126, v125, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[61:68], v[69:72], v[77:80], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v72, v49, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v71, v51, 16, v50
	v_lshl_or_b32 v70, v107, 16, v106
	v_lshl_or_b32 v69, v109, 16, v108
	v_perm_b32 v0, v149, v148, 0xc0c0004
	v_perm_b32 v49, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v137, v216, v215, 0xc0c0004
	v_perm_b32 v138, v199, v191, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v200, v184, 0xc0c0004
	v_perm_b32 v105, v183, v168, 0xc0c0004
	v_perm_b32 v106, v157, v156, 0xc0c0004
	v_perm_b32 v107, v155, v154, 0xc0c0004
	v_perm_b32 v108, v161, v160, 0xc0c0004
	v_perm_b32 v109, v159, v158, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[61:68], v[73:76], v[69:72], v[61:68] neg_lo:[1,1,0]
	v_lshl_or_b32 v76, v49, 16, v0
	v_perm_b32 v0, v188, v187, 0xc0c0004
	v_perm_b32 v49, v186, v185, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[93:96], v[77:80], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v50, v153, v152, 0xc0c0004
	v_perm_b32 v51, v151, v150, 0xc0c0004
	v_lshl_or_b32 v74, v107, 16, v106
	v_lshl_or_b32 v73, v109, 16, v108
	v_lshl_or_b32 v108, v134, 16, v133
	v_lshl_or_b32 v107, v136, 16, v135
	v_lshl_or_b32 v106, v138, 16, v137
	v_lshl_or_b32 v105, v105, 16, v139
	v_wmma_i32_16x16x16_iu8 v[1:8], v[97:100], v[69:72], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v72, v49, 16, v0
	v_cvt_f32_i32_e32 v0, v10
	v_lshl_or_b32 v75, v51, 16, v50
	v_perm_b32 v50, v190, v189, 0xc0c0004
	v_perm_b32 v51, v178, v177, 0xc0c0004
	v_perm_b32 v77, v194, v193, 0xc0c0004
	v_perm_b32 v78, v192, v167, 0xc0c0004
	v_perm_b32 v79, v198, v197, 0xc0c0004
	v_perm_b32 v80, v196, v195, 0xc0c0004
	v_cvt_f32_i32_e32 v10, v11
	v_wmma_i32_16x16x16_iu8 v[53:60], v[105:108], v[85:88], v[53:60] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v48, v48, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v12
	v_wmma_i32_16x16x16_iu8 v[61:68], v[81:84], v[73:76], v[61:68] neg_lo:[1,1,0]
	v_lshl_or_b32 v71, v51, 16, v50
	v_lshl_or_b32 v70, v78, 16, v77
	v_lshl_or_b32 v69, v80, 16, v79
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v47, v47, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v13
	v_cvt_f32_i32_e32 v11, v14
	v_cvt_f32_i32_e32 v12, v15
	v_cvt_f32_i32_e32 v13, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v46, v46, v0 :: v_dual_add_f32 v45, v45, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v53
	v_wmma_i32_16x16x16_iu8 v[1:8], v[101:104], v[73:76], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[61:68], v[89:92], v[69:72], v[61:68] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v44, v44, v11 :: v_dual_add_f32 v43, v43, v12
	v_dual_add_f32 v42, v42, v13 :: v_dual_add_f32 v41, v41, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v54
	v_cvt_f32_i32_e32 v12, v56
	v_cvt_f32_i32_e32 v13, v57
	v_cvt_f32_i32_e32 v0, v58
	v_wmma_i32_16x16x16_iu8 v[1:8], v[105:108], v[69:72], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v11, v55
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v40, v40, v10
	v_dual_add_f32 v38, v38, v12 :: v_dual_add_f32 v37, v37, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v59
	v_cvt_f32_i32_e32 v13, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v36, v36, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v39, v39, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v60
	v_cvt_f32_i32_e32 v12, v61
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v31, v31, v13 :: v_dual_add_f32 v30, v30, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v68
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v35, v35, v10
	v_dual_add_f32 v33, v33, v11 :: v_dual_add_f32 v32, v32, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v64
	v_cvt_f32_i32_e32 v11, v65
	v_cvt_f32_i32_e32 v12, v66
	v_cvt_f32_i32_e32 v13, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v25, v25, v0 :: v_dual_add_f32 v24, v24, v1
	v_dual_add_f32 v23, v23, v2 :: v_dual_add_f32 v22, v22, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v5
	v_cvt_f32_i32_e32 v1, v6
	v_cvt_f32_i32_e32 v2, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v21, v21, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v3, v8
	v_cvt_f32_i32_e32 v4, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v29, v29, v10 :: v_dual_add_f32 v28, v28, v11
	v_dual_add_f32 v27, v27, v12 :: v_dual_add_f32 v26, v26, v13
	v_dual_add_f32 v20, v20, v0 :: v_dual_add_f32 v19, v19, v1
	v_dual_add_f32 v18, v18, v2 :: v_dual_add_f32 v17, v17, v3
	v_add_f32_e32 v221, v221, v4
.LBB0_7:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v85, 0
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
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, s30, v218
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
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
	ds_load_u8 v49, v1 offset:192
	ds_load_u8 v50, v1 offset:128
	ds_load_u8 v51, v1 offset:992
	ds_load_u8 v53, v1 offset:928
	ds_load_u8 v106, v1 offset:864
	ds_load_u8 v107, v1 offset:800
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v52, s3, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v0, v2, v0, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v4, v8, v7, 0xc0c0004
	v_lshl_or_b32 v13, v2, 16, v0
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v2, v10, v9, 0xc0c0004
	ds_load_u8 v6, v52 offset:1664
	ds_load_u8 v7, v52 offset:1536
	ds_load_u8 v8, v52 offset:1920
	ds_load_u8 v9, v52 offset:1792
	v_lshl_or_b32 v12, v4, 16, v3
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v14, v11, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v4, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v5, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v51, v53, v51, 0xc0c0004
	v_lshl_or_b32 v11, v3, 16, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v10, v5, 16, v4
	ds_load_u8 v2, v52 offset:1152
	ds_load_u8 v3, v52 offset:1024
	ds_load_u8 v4, v52 offset:1408
	ds_load_u8 v5, v52 offset:1280
	ds_load_u8 v15, v52 offset:640
	ds_load_u8 v16, v52 offset:512
	ds_load_u8 v49, v52 offset:896
	ds_load_u8 v50, v52 offset:768
	ds_load_u8 v54, v52 offset:128
	ds_load_u8 v55, v52
	ds_load_u8 v56, v52 offset:384
	ds_load_u8 v57, v52 offset:256
	ds_load_u8 v62, v52 offset:1984
	ds_load_u8 v63, v52 offset:1856
	ds_load_u8 v64, v52 offset:1728
	ds_load_u8 v65, v52 offset:1600
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v5, v4, 0xc0c0004
	v_perm_b32 v7, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v4, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v5, v50, v49, 0xc0c0004
	v_lshl_or_b32 v80, v3, 16, v2
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v8, v55, v54, 0xc0c0004
	v_lshl_or_b32 v81, v7, 16, v6
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v57, v56, 0xc0c0004
	v_lshl_or_b32 v79, v5, 16, v4
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	v_lshl_or_b32 v78, v9, 16, v8
	v_mov_b32_e32 v2, s16
	ds_load_u8 v70, v1 offset:1856
	ds_load_u8 v71, v1 offset:1792
	ds_load_u8 v72, v1 offset:1984
	ds_load_u8 v73, v1 offset:1920
	ds_load_u8 v74, v1 offset:1600
	ds_load_u8 v75, v1 offset:1536
	ds_load_u8 v76, v1 offset:1728
	ds_load_u8 v77, v1 offset:1664
	ds_load_u8 v82, v1 offset:1344
	ds_load_u8 v83, v1 offset:1280
	ds_load_u8 v84, v1 offset:1472
	ds_load_u8 v85, v1 offset:1408
	ds_load_u8 v118, v1 offset:2016
	ds_load_u8 v119, v1 offset:1952
	ds_load_u8 v120, v1 offset:1888
	ds_load_u8 v121, v1 offset:1824
	v_mov_b32_e32 v3, s17
	ds_load_u8 v66, v52 offset:1472
	ds_load_u8 v67, v52 offset:1344
	ds_load_u8 v68, v52 offset:1216
	ds_load_u8 v69, v52 offset:1088
	ds_load_u8 v94, v52 offset:960
	ds_load_u8 v95, v52 offset:832
	ds_load_u8 v96, v52 offset:704
	ds_load_u8 v97, v52 offset:576
	ds_load_u8 v15, v52 offset:448
	ds_load_u8 v16, v52 offset:320
	ds_load_u8 v49, v52 offset:192
	ds_load_u8 v50, v52 offset:64
	ds_load_u8 v134, v52 offset:3008
	ds_load_u8 v135, v52 offset:2880
	ds_load_u8 v136, v52 offset:2752
	ds_load_u8 v137, v52 offset:2624
	ds_load_u8 v138, v52 offset:2496
	ds_load_u8 v139, v52 offset:2368
	ds_load_u8 v140, v52 offset:2240
	ds_load_u8 v141, v52 offset:2112
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
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v126, v1 offset:1504
	ds_load_u8 v127, v1 offset:1440
	ds_load_u8 v128, v1 offset:1376
	ds_load_u8 v129, v1 offset:1312
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v75, v77, v76, 0xc0c0004
	ds_load_u8 v130, v1 offset:1248
	ds_load_u8 v131, v1 offset:1184
	ds_load_u8 v132, v1 offset:1120
	ds_load_u8 v133, v1 offset:1056
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v76, v83, v82, 0xc0c0004
	ds_load_u8 v152, v1 offset:2528
	ds_load_u8 v153, v1 offset:2464
	ds_load_u8 v154, v1 offset:2400
	ds_load_u8 v155, v1 offset:2336
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v77, v85, v84, 0xc0c0004
	ds_load_u8 v83, v52 offset:3712
	ds_load_u8 v84, v52 offset:3584
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v1 offset:1088
	ds_load_u8 v86, v1 offset:1024
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v1 offset:1216
	ds_load_u8 v87, v1 offset:1152
	ds_load_u8 v122, v1 offset:1760
	ds_load_u8 v123, v1 offset:1696
	ds_load_u8 v124, v1 offset:1632
	ds_load_u8 v125, v1 offset:1568
	ds_load_u8 v156, v1 offset:2272
	ds_load_u8 v157, v1 offset:2208
	ds_load_u8 v158, v1 offset:2144
	ds_load_u8 v159, v1 offset:2080
	ds_load_u8 v172, v52 offset:5056
	ds_load_u8 v173, v52 offset:4928
	ds_load_u8 v174, v52 offset:4800
	ds_load_u8 v175, v52 offset:4672
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v63, v69, v68, 0xc0c0004
	v_perm_b32 v65, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v66, v97, v96, 0xc0c0004
	v_perm_b32 v67, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	v_perm_b32 v15, v16, v15, 0xc0c0004
	v_dual_mov_b32 v4, s18 :: v_dual_mov_b32 v5, s19
	v_dual_mov_b32 v6, s20 :: v_dual_mov_b32 v7, s21
	v_dual_mov_b32 v8, s22 :: v_dual_mov_b32 v9, s23
	v_lshl_or_b32 v97, v62, 16, v64
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v85, v87, v73, 0xc0c0004
	v_lshl_or_b32 v73, v72, 16, v70
	v_perm_b32 v82, v86, v71, 0xc0c0004
	ds_load_u8 v86, v52 offset:3968
	ds_load_u8 v87, v52 offset:3840
	v_lshl_or_b32 v72, v75, 16, v74
	v_lshl_or_b32 v71, v77, 16, v76
	v_perm_b32 v83, v84, v83, 0xc0c0004
	v_lshl_or_b32 v70, v85, 16, v82
	ds_load_u8 v74, v52 offset:3200
	ds_load_u8 v75, v52 offset:3072
	ds_load_u8 v76, v52 offset:3456
	ds_load_u8 v77, v52 offset:3328
	ds_load_u8 v82, v52 offset:2688
	ds_load_u8 v85, v52 offset:2560
	ds_load_u8 v88, v52 offset:2944
	ds_load_u8 v89, v52 offset:2816
	ds_load_u8 v98, v52 offset:4032
	ds_load_u8 v99, v52 offset:3904
	ds_load_u8 v100, v52 offset:3776
	ds_load_u8 v101, v52 offset:3648
	ds_load_u8 v84, v52 offset:2176
	ds_load_u8 v90, v52 offset:2048
	v_lshl_or_b32 v96, v65, 16, v63
	v_lshl_or_b32 v95, v67, 16, v66
	v_lshl_or_b32 v94, v15, 16, v49
	v_wmma_i32_16x16x16_iu8 v[54:61], v[78:81], v[10:13], v[2:9] neg_lo:[1,1,0]
	v_perm_b32 v53, v111, v110, 0xc0c0004
	v_perm_b32 v0, v112, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[94:97], v[10:13], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v75, v77, v76, 0xc0c0004
	v_perm_b32 v14, v115, v14, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v76, v85, v82, 0xc0c0004
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v77, v89, v88, 0xc0c0004
	ds_load_u8 v88, v1 offset:2880
	ds_load_u8 v89, v1 offset:2816
	ds_load_u8 v87, v52 offset:2432
	ds_load_u8 v91, v52 offset:2304
	ds_load_u8 v102, v52 offset:3520
	ds_load_u8 v103, v52 offset:3392
	ds_load_u8 v104, v52 offset:3264
	ds_load_u8 v105, v52 offset:3136
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v49, v99, v98, 0xc0c0004
	v_lshl_or_b32 v85, v86, 16, v83
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v82, v90, v84, 0xc0c0004
	v_lshl_or_b32 v84, v75, 16, v74
	v_lshl_or_b32 v83, v77, 16, v76
	v_perm_b32 v15, v101, v100, 0xc0c0004
	v_perm_b32 v99, v137, v136, 0xc0c0004
	v_perm_b32 v100, v135, v134, 0xc0c0004
	v_perm_b32 v101, v141, v140, 0xc0c0004
	v_perm_b32 v111, v129, v128, 0xc0c0004
	v_lshl_or_b32 v13, v49, 16, v15
	v_perm_b32 v112, v127, v126, 0xc0c0004
	v_lshl_or_b32 v11, v100, 16, v99
	v_perm_b32 v99, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v91, v87, 0xc0c0004
	ds_load_u8 v90, v1 offset:3008
	ds_load_u8 v91, v1 offset:2944
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v98, v103, v102, 0xc0c0004
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v1 offset:2112
	ds_load_u8 v146, v1 offset:2048
	v_lshl_or_b32 v82, v87, 16, v82
	ds_load_u8 v74, v1 offset:2624
	ds_load_u8 v75, v1 offset:2560
	ds_load_u8 v76, v1 offset:2752
	ds_load_u8 v77, v1 offset:2688
	ds_load_u8 v86, v1 offset:2368
	ds_load_u8 v87, v1 offset:2304
	ds_load_u8 v92, v1 offset:2496
	ds_load_u8 v93, v1 offset:2432
	ds_load_u8 v142, v1 offset:3040
	ds_load_u8 v143, v1 offset:2976
	ds_load_u8 v144, v1 offset:2912
	ds_load_u8 v145, v1 offset:2848
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v50, v105, v104, 0xc0c0004
	v_perm_b32 v102, v139, v138, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[54:61], v[82:85], v[70:73], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v12, v98, 16, v50
	v_lshl_or_b32 v10, v102, 16, v101
	v_perm_b32 v102, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v75, v77, v76, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[62:69], v[10:13], v[70:73], v[62:69] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v93, v92, 0xc0c0004
	ds_load_u8 v91, v1 offset:2240
	ds_load_u8 v147, v1 offset:2176
	ds_load_u8 v148, v1 offset:2784
	ds_load_u8 v149, v1 offset:2720
	ds_load_u8 v150, v1 offset:2656
	ds_load_u8 v151, v1 offset:2592
	v_perm_b32 v89, v146, v89, 0xc0c0004
	ds_load_u8 v92, v52 offset:5760
	ds_load_u8 v93, v52 offset:5632
	ds_load_u8 v146, v52 offset:6016
	ds_load_u8 v160, v52 offset:5888
	v_lshl_or_b32 v77, v90, 16, v88
	v_lshl_or_b32 v76, v75, 16, v74
	v_lshl_or_b32 v75, v87, 16, v86
	v_perm_b32 v70, v107, v106, 0xc0c0004
	v_perm_b32 v71, v109, v108, 0xc0c0004
	v_perm_b32 v72, v114, v113, 0xc0c0004
	v_perm_b32 v73, v117, v116, 0xc0c0004
	v_lshl_or_b32 v99, v102, 16, v99
	v_lshl_or_b32 v109, v51, 16, v70
	v_lshl_or_b32 v108, v71, 16, v53
	v_lshl_or_b32 v107, v0, 16, v72
	v_lshl_or_b32 v106, v14, 16, v73
	v_perm_b32 v0, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v91, v147, v91, 0xc0c0004
	v_perm_b32 v14, v119, v118, 0xc0c0004
	v_perm_b32 v51, v125, v124, 0xc0c0004
	v_perm_b32 v53, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	v_lshl_or_b32 v74, v91, 16, v89
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v160, v146, 0xc0c0004
	ds_load_u8 v146, v52 offset:4224
	ds_load_u8 v160, v52 offset:4096
	ds_load_u8 v166, v52 offset:4480
	ds_load_u8 v167, v52 offset:4352
	ds_load_u8 v168, v52 offset:5568
	ds_load_u8 v169, v52 offset:5440
	ds_load_u8 v170, v52 offset:5312
	ds_load_u8 v171, v52 offset:5184
	ds_load_u8 v86, v52 offset:5248
	ds_load_u8 v87, v52 offset:5120
	ds_load_u8 v88, v52 offset:5504
	ds_load_u8 v89, v52 offset:5376
	ds_load_u8 v90, v52 offset:4736
	ds_load_u8 v91, v52 offset:4608
	ds_load_u8 v147, v52 offset:4992
	ds_load_u8 v161, v52 offset:4864
	ds_load_u8 v162, v52 offset:6080
	ds_load_u8 v163, v52 offset:5952
	ds_load_u8 v164, v52 offset:5824
	ds_load_u8 v165, v52 offset:5696
	v_perm_b32 v113, v133, v132, 0xc0c0004
	v_perm_b32 v114, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v87, v89, v88, 0xc0c0004
	v_perm_b32 v146, v160, v146, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	v_perm_b32 v160, v167, v166, 0xc0c0004
	ds_load_u8 v166, v1 offset:3648
	ds_load_u8 v167, v1 offset:3584
	ds_load_u8 v182, v1 offset:3776
	ds_load_u8 v183, v1 offset:3712
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v91, v161, v147, 0xc0c0004
	ds_load_u8 v147, v1 offset:3904
	ds_load_u8 v161, v1 offset:3840
	ds_load_u8 v176, v1 offset:4032
	ds_load_u8 v177, v1 offset:3968
	ds_load_u8 v178, v52 offset:4544
	ds_load_u8 v179, v52 offset:4416
	ds_load_u8 v180, v52 offset:4288
	ds_load_u8 v181, v52 offset:4160
	v_lshl_or_b32 v89, v93, 16, v92
	v_lshl_or_b32 v88, v87, 16, v86
	v_lshl_or_b32 v86, v160, 16, v146
	v_lshl_or_b32 v87, v91, 16, v90
	ds_load_u8 v146, v1 offset:4064
	ds_load_u8 v160, v1 offset:4000
	ds_load_u8 v184, v1 offset:3936
	ds_load_u8 v185, v1 offset:3872
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v15, v165, v164, 0xc0c0004
	v_perm_b32 v49, v163, v162, 0xc0c0004
	v_perm_b32 v50, v171, v170, 0xc0c0004
	v_perm_b32 v98, v169, v168, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[54:61], v[86:89], v[74:77], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v101, v49, 16, v15
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v90, v161, v147, 0xc0c0004
	v_lshl_or_b32 v100, v98, 16, v50
	v_perm_b32 v92, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v91, v177, v176, 0xc0c0004
	v_perm_b32 v166, v183, v182, 0xc0c0004
	ds_load_u8 v167, v1 offset:3136
	ds_load_u8 v182, v1 offset:3072
	ds_load_u8 v183, v1 offset:3264
	ds_load_u8 v190, v1 offset:3200
	ds_load_u8 v147, v1 offset:3392
	ds_load_u8 v161, v1 offset:3328
	ds_load_u8 v176, v1 offset:3520
	ds_load_u8 v177, v1 offset:3456
	ds_load_u8 v186, v1 offset:3808
	ds_load_u8 v187, v1 offset:3744
	ds_load_u8 v188, v1 offset:3680
	ds_load_u8 v189, v1 offset:3616
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v103, v181, v180, 0xc0c0004
	v_lshl_or_b32 v93, v91, 16, v90
	v_lshl_or_b32 v92, v166, 16, v92
	ds_load_u8 v166, v1 offset:3552
	ds_load_u8 v191, v1 offset:3488
	ds_load_u8 v192, v1 offset:3424
	ds_load_u8 v193, v1 offset:3360
	v_perm_b32 v104, v179, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v98, v104, 16, v103
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v90, v161, v147, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[62:69], v[98:101], v[74:77], v[62:69] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v91, v177, v176, 0xc0c0004
	v_perm_b32 v167, v182, v167, 0xc0c0004
	ds_load_u8 v147, v52 offset:7808
	ds_load_u8 v161, v52 offset:7680
	ds_load_u8 v176, v52 offset:8064
	ds_load_u8 v177, v52 offset:7936
	ds_load_u8 v194, v1 offset:3296
	ds_load_u8 v195, v1 offset:3232
	ds_load_u8 v196, v1 offset:3168
	ds_load_u8 v1, v1 offset:3104
	v_perm_b32 v182, v190, v183, 0xc0c0004
	ds_load_u8 v183, v52 offset:7296
	ds_load_u8 v190, v52 offset:7168
	ds_load_u8 v197, v52 offset:7552
	ds_load_u8 v198, v52 offset:7424
	v_lshl_or_b32 v91, v91, 16, v90
	v_wmma_i32_16x16x16_iu8 v[70:77], v[78:81], v[106:109], v[2:9] neg_lo:[1,1,0]
	v_lshl_or_b32 v90, v182, 16, v167
	ds_load_u8 v167, v52 offset:6784
	ds_load_u8 v182, v52 offset:6656
	ds_load_u8 v199, v52 offset:7040
	ds_load_u8 v200, v52 offset:6912
	ds_load_u8 v201, v52 offset:8128
	ds_load_u8 v202, v52 offset:8000
	ds_load_u8 v203, v52 offset:7872
	ds_load_u8 v204, v52 offset:7744
	v_lshl_or_b32 v81, v14, 16, v0
	v_lshl_or_b32 v80, v53, 16, v51
	v_lshl_or_b32 v79, v112, 16, v111
	v_lshl_or_b32 v78, v114, 16, v113
	v_perm_b32 v0, v145, v144, 0xc0c0004
	v_perm_b32 v14, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v147, v161, v147, 0xc0c0004
	ds_load_u8 v161, v52 offset:6272
	ds_load_u8 v205, v52 offset:6144
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	ds_load_u8 v177, v52 offset:7616
	ds_load_u8 v206, v52 offset:7488
	ds_load_u8 v207, v52 offset:7360
	ds_load_u8 v208, v52 offset:7232
	v_perm_b32 v51, v151, v150, 0xc0c0004
	v_perm_b32 v53, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v183, v190, v183, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v167, v182, v167, 0xc0c0004
	v_perm_b32 v190, v198, v197, 0xc0c0004
	ds_load_u8 v197, v52 offset:6528
	ds_load_u8 v198, v52 offset:6400
	ds_load_u8 v209, v52 offset:7104
	ds_load_u8 v210, v52 offset:6976
	ds_load_u8 v211, v52 offset:6848
	ds_load_u8 v212, v52 offset:6720
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v182, v200, v199, 0xc0c0004
	ds_load_u8 v199, v52 offset:6592
	ds_load_u8 v200, v52 offset:6464
	ds_load_u8 v213, v52 offset:6336
	ds_load_u8 v52, v52 offset:6208
	v_perm_b32 v111, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v15, v204, v203, 0xc0c0004
	v_perm_b32 v112, v153, v152, 0xc0c0004
	v_perm_b32 v113, v159, v158, 0xc0c0004
	v_perm_b32 v114, v157, v156, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[2:9], v[94:97], v[106:109], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[82:85], v[78:81], v[70:77] neg_lo:[1,1,0]
	v_lshl_or_b32 v85, v14, 16, v0
	v_lshl_or_b32 v84, v53, 16, v51
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v161, v205, v161, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v50, v206, v177, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v49, v208, v207, 0xc0c0004
	v_lshl_or_b32 v83, v112, 16, v111
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v16, v198, v197, 0xc0c0004
	v_lshl_or_b32 v82, v114, 16, v113
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v135, v210, v209, 0xc0c0004
	v_lshl_or_b32 v112, v50, 16, v49
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v134, v212, v211, 0xc0c0004
	v_lshl_or_b32 v102, v16, 16, v161
	v_perm_b32 v16, v202, v201, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v52, v213, 0xc0c0004
	v_perm_b32 v110, v200, v199, 0xc0c0004
	v_perm_b32 v0, v185, v184, 0xc0c0004
	v_perm_b32 v14, v160, v146, 0xc0c0004
	v_lshl_or_b32 v113, v16, 16, v15
	v_perm_b32 v15, v189, v188, 0xc0c0004
	v_perm_b32 v16, v187, v186, 0xc0c0004
	v_perm_b32 v49, v193, v192, 0xc0c0004
	v_perm_b32 v50, v191, v166, 0xc0c0004
	v_perm_b32 v1, v1, v196, 0xc0c0004
	v_perm_b32 v51, v195, v194, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[2:9], v[10:13], v[78:81], v[2:9] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v176, 16, v147
	v_lshl_or_b32 v104, v190, 16, v183
	v_lshl_or_b32 v103, v182, 16, v167
	v_lshl_or_b32 v111, v135, 16, v134
	v_lshl_or_b32 v110, v110, 16, v52
	v_wmma_i32_16x16x16_iu8 v[70:77], v[86:89], v[82:85], v[70:77] neg_lo:[1,1,0]
	v_lshl_or_b32 v13, v14, 16, v0
	v_lshl_or_b32 v12, v16, 16, v15
	v_lshl_or_b32 v11, v50, 16, v49
	v_lshl_or_b32 v10, v51, 16, v1
	v_wmma_i32_16x16x16_iu8 v[2:9], v[98:101], v[82:85], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[102:105], v[90:93], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[110:113], v[90:93], v[62:69] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[102:105], v[10:13], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[110:113], v[10:13], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
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
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v2
	v_cvt_f32_i32_e32 v79, v3
	v_cvt_f32_i32_e32 v80, v4
	v_cvt_f32_i32_e32 v81, v5
	v_cvt_f32_i32_e32 v82, v6
	v_cvt_f32_i32_e32 v83, v7
	v_cvt_f32_i32_e32 v84, v8
	v_cvt_f32_i32_e32 v85, v9
.LBB0_9:
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v2, 32, v218
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(1)
	v_bfe_u32 v0, v217, 4, 1
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v3, s7, v218
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s9, s13, 0xffff
	s_mov_b32 s11, 0x31027000
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v4, s7, v2
	.loc	1 379 22 is_stmt 1              ; generate_amdgcn.py:379:22
	v_or3_b32 v0, v0, v220, s6
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v3, 1, v3
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s12
	v_lshlrev_b32_e32 v4, 1, v4
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_lshlrev_b32_e32 v0, 1, v0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s1, s7, s29
	s_mov_b32 s0, 0x76543210
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s9, s15, 0xffff
	v_or_b32_e32 v6, 4, v0
	v_or_b32_e32 v7, 8, v0
	s_mov_b32 s8, s14
	v_or_b32_e32 v8, 12, v0
	v_or_b32_e32 v9, 16, v0
	v_or_b32_e32 v10, 20, v0
	v_or_b32_e32 v11, 24, v0
	v_or_b32_e32 v12, 28, v0
	s_clause 0x7
	buffer_load_u16 v5, v0, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	v_or_b32_e32 v13, 0x80, v0
	v_or_b32_e32 v14, 0x84, v0
	v_or_b32_e32 v15, 0x88, v0
	v_or_b32_e32 v16, 0x8c, v0
	v_or_b32_e32 v49, 0x90, v0
	v_or_b32_e32 v53, 0x98, v0
	v_or_b32_e32 v50, 0x94, v0
	v_or_b32_e32 v0, 0x9c, v0
	s_clause 0x7
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	buffer_load_u16 v51, v49, s[8:11], 0 offen
	buffer_load_u16 v52, v50, s[8:11], 0 offen
	buffer_load_u16 v53, v53, s[8:11], 0 offen
	buffer_load_u16 v54, v0, s[8:11], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(18)
	v_dual_add_f32 v49, v221, v1 :: v_dual_and_b32 v0, 56, v219
	v_dual_add_f32 v50, v48, v55 :: v_dual_add_f32 v55, v47, v56
	v_dual_add_f32 v56, v46, v57 :: v_dual_add_f32 v57, v45, v58
	v_dual_add_f32 v58, v44, v59 :: v_dual_add_f32 v59, v43, v60
	v_dual_add_f32 v60, v42, v61 :: v_dual_add_f32 v61, v41, v62
	v_dual_add_f32 v62, v40, v63 :: v_dual_add_f32 v63, v39, v64
	v_dual_add_f32 v64, v38, v65 :: v_dual_add_f32 v65, v37, v66
	v_dual_add_f32 v66, v36, v67 :: v_dual_add_f32 v67, v35, v68
	v_dual_add_f32 v68, v33, v69 :: v_dual_add_f32 v69, v32, v70
	v_dual_add_f32 v70, v31, v71 :: v_dual_add_f32 v71, v30, v72
	v_dual_add_f32 v72, v29, v73 :: v_dual_add_f32 v73, v28, v74
	v_dual_add_f32 v74, v27, v75 :: v_dual_add_f32 v75, v26, v76
	v_dual_add_f32 v76, v25, v77 :: v_dual_add_f32 v77, v24, v78
	v_dual_add_f32 v78, v23, v79 :: v_dual_add_f32 v79, v22, v80
	v_dual_add_f32 v80, v21, v81 :: v_dual_add_f32 v81, v20, v82
	v_dual_add_f32 v82, v19, v83 :: v_dual_mov_b32 v87, 0x5410
	v_dual_add_f32 v83, v18, v84 :: v_dual_add_f32 v84, v17, v85
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v85, s29, v218
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v221, v49, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v49, s29, v2
	s_add_i32 s1, s1, s6
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v88, 0x7632
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v2, s1, v0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v70, s2
	v_cndmask_b32_e64 v29, v29, v72, s2
	v_cndmask_b32_e64 v28, v28, v73, s2
	v_cndmask_b32_e64 v32, v32, v69, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add_lshl_u32 v70, v2, v85, 1
	v_add_lshl_u32 v72, v2, v49, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v74, s2
	v_cndmask_b32_e64 v22, v22, v79, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v0, s1, v0, 64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v48, v50, s2
	v_cndmask_b32_e64 v47, v47, v55, s2
	v_cndmask_b32_e64 v46, v46, v56, s2
	v_cndmask_b32_e64 v45, v45, v57, s2
	v_cndmask_b32_e64 v44, v44, v58, s2
	v_cndmask_b32_e64 v41, v41, v61, s2
	v_cndmask_b32_e64 v37, v37, v65, s2
	v_cndmask_b32_e64 v33, v33, v68, s2
	v_cndmask_b32_e64 v30, v30, v71, s2
	v_cndmask_b32_e64 v26, v26, v75, s2
	v_cndmask_b32_e64 v25, v25, v76, s2
	v_cndmask_b32_e64 v24, v24, v77, s2
	v_cndmask_b32_e64 v23, v23, v78, s2
	v_cndmask_b32_e64 v21, v21, v80, s2
	v_cndmask_b32_e64 v20, v20, v81, s2
	v_cndmask_b32_e64 v19, v19, v82, s2
	v_cndmask_b32_e64 v18, v18, v83, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add_lshl_u32 v71, v0, v85, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v59, s2
	v_cndmask_b32_e64 v42, v42, v60, s2
	v_cndmask_b32_e64 v38, v38, v64, s2
	v_cndmask_b32_e64 v35, v35, v67, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.h, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v40, v62, s2
	v_cndmask_b32_e64 v39, v39, v63, s2
	v_cndmask_b32_e64 v36, v36, v66, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s5, s5, 0xffff
	v_mov_b16_e32 v50.h, v1.h
	v_mov_b16_e32 v62.h, v1.h
	v_mov_b16_e32 v56.h, v1.h
	v_mov_b16_e32 v55.h, v1.h
	v_mov_b16_e32 v57.h, v1.h
	v_mov_b16_e32 v66.h, v1.h
	v_mov_b16_e32 v64.h, v1.h
	v_mov_b16_e32 v69.h, v1.h
	v_mov_b16_e32 v58.h, v1.h
	v_mov_b16_e32 v59.h, v1.h
	v_mov_b16_e32 v60.h, v1.h
	v_mov_b16_e32 v61.h, v1.h
	v_mov_b16_e32 v63.h, v1.h
	v_mov_b16_e32 v65.h, v1.h
	v_mov_b16_e32 v67.h, v1.h
	v_mov_b16_e32 v68.h, v1.h
	s_mov_b32 s6, s10
	s_mov_b32 s7, s11
	v_add_lshl_u32 v0, v0, v49, 1
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v2, 16, v3
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v3, 16, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v17, v84, s2
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v4, 16, v5
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v5, 16, v6
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt vmcnt(13)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v73, v2, v5 :: v_dual_lshlrev_b32 v6, 16, v7
	v_mul_f32_e32 v5, v3, v5
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v74, v2, v6 :: v_dual_lshlrev_b32 v7, 16, v8
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v8, 16, v9
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v9, 16, v10
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v10, 16, v11
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v11, 16, v12
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v12, 16, v13
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v75, v2, v7 :: v_dual_and_b32 v86, 16, v217
	v_mul_f32_e32 v7, v3, v7
	v_mul_f32_e32 v79, v2, v11
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v13, 16, v14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v14, 16, v15
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v15, 16, v16
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v51
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v51, 16, v52
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v52, 16, v53
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v53, 16, v54
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v54, v2, v4
	v_dual_mul_f32 v4, v3, v4 :: v_dual_mul_f32 v77, v2, v9
	v_mul_f32_e32 v78, v2, v10
	v_mul_f32_e32 v81, v2, v13
	v_mul_f32_e32 v82, v2, v14
	v_mul_f32_e32 v83, v2, v15
	v_mul_f32_e32 v76, v2, v8
	v_mul_f32_e32 v85, v2, v51
	v_dual_mul_f32 v80, v2, v12 :: v_dual_mul_f32 v9, v3, v9
	v_mul_f32_e32 v89, v2, v52
	v_dual_mul_f32 v84, v2, v16 :: v_dual_mul_f32 v11, v3, v11
	v_mul_f32_e32 v2, v2, v53
	v_dual_mul_f32 v6, v3, v6 :: v_dual_mul_f32 v45, v45, v76
	v_dual_mul_f32 v8, v3, v8 :: v_dual_mul_f32 v7, v29, v7
	v_dual_mul_f32 v10, v3, v10 :: v_dual_mul_f32 v41, v41, v80
	v_dual_mul_f32 v12, v3, v12 :: v_dual_mul_f32 v11, v25, v11
	v_dual_mul_f32 v13, v3, v13 :: v_dual_mul_f32 v34, v34, v54
	v_dual_mul_f32 v14, v3, v14 :: v_dual_mul_f32 v37, v37, v84
	v_dual_mul_f32 v15, v3, v15 :: v_dual_mul_f32 v4, v32, v4
	v_mul_f32_e32 v16, v3, v16
	v_dual_mul_f32 v51, v3, v51 :: v_dual_mul_f32 v32, v48, v73
	v_mul_f32_e32 v52, v3, v52
	v_dual_mul_f32 v3, v3, v53 :: v_dual_mul_f32 v46, v46, v75
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v47, v47, v74 :: v_dual_mul_f32 v44, v44, v77
	v_dual_mul_f32 v2, v33, v2 :: v_dual_mul_f32 v5, v31, v5
	v_mul_f32_e32 v10, v26, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v12, v24, v12 :: v_dual_mul_f32 v3, v17, v3
	.loc	1 387 15 is_stmt 1              ; generate_amdgcn.py:387:15
	v_max_f32_e32 v17, 0, v34
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v43, v43, v78 :: v_dual_mul_f32 v42, v42, v79
	v_dual_mul_f32 v38, v38, v83 :: v_dual_mul_f32 v35, v35, v89
	v_dual_mul_f32 v8, v28, v8 :: v_dual_mul_f32 v13, v23, v13
	v_dual_mul_f32 v14, v22, v14 :: v_dual_max_f32 v23, 0, v45
	v_dual_mul_f32 v15, v21, v15 :: v_dual_mul_f32 v16, v20, v16
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v25, 0, v43 :: v_dual_max_f32 v20, 0, v32
	v_max_f32_e32 v31, 0, v37
	v_dual_max_f32 v21, 0, v47 :: v_dual_max_f32 v22, 0, v46
	v_dual_max_f32 v33, 0, v35 :: v_dual_max_f32 v24, 0, v44
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v10, 0, v10
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v17, v17, v17 :: v_dual_max_f32 v8, 0, v8
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v3, 0, v3 :: v_dual_mul_f32 v20, v20, v20
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v31, v31, v31 :: v_dual_mul_f32 v22, v22, v22
	v_dual_mul_f32 v33, v33, v33 :: v_dual_mul_f32 v24, v24, v24
	v_mul_f32_e32 v5, v5, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v17.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v14, 0, v14 :: v_dual_mul_f32 v23, v23, v23
	v_dual_max_f32 v12, 0, v12 :: v_dual_mul_f32 v21, v21, v21
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v8, v8, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v50.l, v20.h
	v_mov_b16_e32 v62.l, v5.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v34, v3, v3 :: v_dual_and_b32 v3, 1, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v22.h
	v_mov_b16_e32 v56.l, v23.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v12, v12, v12 :: v_dual_and_b32 v35, 1, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v62
	v_add3_u32 v3, v17, v3, 0x7fff
	v_cmp_eq_u32_e32 vcc_lo, 0, v86
	v_and_b32_e32 v17, 1, v1
	v_mov_b16_e32 v1.l, v24.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v40, v40, v81 :: v_dual_mul_f32 v39, v39, v82
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v26, 0, v42 :: v_dual_max_f32 v7, 0, v7
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v10, v10, v10 :: v_dual_and_b32 v37, 1, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v20, v20, v35, 0x7fff
	v_add3_u32 v35, v5, v43, 0x7fff
	v_and_b32_e32 v5, 1, v1
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v36, v36, v85 :: v_dual_mul_f32 v19, v19, v51
	v_dual_mul_f32 v6, v30, v6 :: v_dual_mul_f32 v9, v27, v9
	v_dual_mul_f32 v18, v18, v52 :: v_dual_max_f32 v27, 0, v41
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v28, 0, v40
	v_dual_max_f32 v16, 0, v16 :: v_dual_mul_f32 v25, v25, v25
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v26, v26, v26 :: v_dual_mul_f32 v7, v7, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v55.l, v21.h
	v_add3_u32 v23, v23, v37, 0x7fff
	v_add3_u32 v5, v24, v5, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v30, 0, v38 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v32, 0, v36 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v18, 0, v18
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v27, v27, v27 :: v_dual_mul_f32 v28, v28, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v57.l, v25.h
	v_mov_b16_e32 v66.l, v12.h
	v_mov_b16_e32 v1.l, v26.h
	v_mov_b16_e32 v20.l, v3.h
	v_mov_b16_e32 v5.l, v23.h
	v_and_b32_e32 v36, 1, v55
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v29, 0, v39
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v30, v30, v30 :: v_dual_mul_f32 v11, v11, v11
	v_mul_f32_e32 v9, v9, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v8.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v18, v18, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_cndmask_b32 v23, 0x3276, v88 :: v_dual_and_b32 v38, 1, v57
	v_and_b32_e32 v47, 1, v66
	v_add3_u32 v3, v22, v17, 0x7fff
	v_and_b32_e32 v17, 1, v1
	v_mov_b16_e32 v1.l, v28.h
	v_dual_cndmask_b32 v22, v5, v20 :: v_dual_cndmask_b32 v5, v20, v5
	v_add3_u32 v21, v21, v36, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v15, 0, v15
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v4, v4, v4 :: v_dual_mul_f32 v29, v29, v29
	v_dual_mul_f32 v32, v32, v32 :: v_dual_mul_f32 v13, v13, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v64
	v_mov_b16_e32 v69.l, v18.h
	v_add3_u32 v25, v25, v38, 0x7fff
	v_mov_b16_e32 v3.l, v21.h
	v_and_b32_e32 v21, 1, v1
	v_mov_b16_e32 v1.l, v30.h
	v_add3_u32 v17, v26, v17, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v15, v15, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v58.l, v27.h
	v_mov_b16_e32 v59.l, v29.h
	v_mov_b16_e32 v60.l, v31.h
	v_mov_b16_e32 v61.l, v33.h
	v_dual_cndmask_b32 v20, 0x1054, v87 :: v_dual_and_b32 v51, 1, v69
	v_mov_b16_e32 v17.l, v25.h
	v_and_b32_e32 v24, 1, v1
	v_mov_b16_e32 v1.l, v32.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v19, 0, v19
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v14, v14, v14 :: v_dual_and_b32 v41, 1, v60
	v_dual_mul_f32 v16, v16, v16 :: v_dual_and_b32 v39, 1, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v40, 1, v59
	v_dual_cndmask_b32 v25, v17, v3 :: v_dual_and_b32 v42, 1, v61
	v_cndmask_b32_e32 v3, v3, v17, vcc_lo
	v_lshl_or_b32 v17, v20, 8, v20
	v_lshl_or_b32 v20, v23, 8, v23
	v_add3_u32 v23, v30, v24, 0x7fff
	v_and_b32_e32 v24, 1, v1
	v_mov_b16_e32 v1.l, v2.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v6, v6, v6 :: v_dual_mul_f32 v19, v19, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v27, v27, v39, 0x7fff
	v_add3_u32 v31, v31, v41, 0x7fff
	v_permlanex16_b32 v26, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v3, 0x540054, v17
	v_and_b32_e32 v17, 0x760076, v20
	v_add3_u32 v20, v32, v24, 0x7fff
	v_and_b32_e32 v24, 1, v1
	v_mov_b16_e32 v1.l, v4.h
	v_add3_u32 v21, v28, v21, 0x7fff
	v_mov_b16_e32 v63.l, v6.h
	v_add3_u32 v29, v29, v40, 0x7fff
	v_add3_u32 v33, v33, v42, 0x7fff
	v_mov_b16_e32 v21.l, v27.h
	v_mov_b16_e32 v20.l, v31.h
	v_lshl_or_b32 v3, v3, 4, v3
	v_lshl_or_b32 v17, v17, 4, v17
	v_add3_u32 v2, v2, v24, 0x7fff
	v_and_b32_e32 v24, 1, v1
	v_mov_b16_e32 v1.l, v7.h
	v_mov_b16_e32 v65.l, v10.h
	v_mov_b16_e32 v67.l, v14.h
	v_dual_cndmask_b32 v27, v20, v21 :: v_dual_and_b32 v44, 1, v63
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v23.l, v29.h
	v_mov_b16_e32 v2.l, v33.h
	v_dual_cndmask_b32 v20, v21, v20 :: v_dual_and_b32 v21, 0x5040504, v3
	v_and_b32_e32 v17, 0x7060706, v17
	v_and_b32_e32 v28, 1, v1
	v_mov_b16_e32 v1.l, v9.h
	v_dual_cndmask_b32 v29, v2, v23 :: v_dual_and_b32 v46, 1, v65
	v_dual_cndmask_b32 v23, v23, v2 :: v_dual_and_b32 v48, 1, v67
	v_perm_b32 v2, v5, v22, v21
	v_perm_b32 v3, v5, v22, v17
	v_and_b32_e32 v22, 1, v1
	v_mov_b16_e32 v1.l, v11.h
	v_add3_u32 v24, v4, v24, 0x7fff
	v_add3_u32 v6, v6, v44, 0x7fff
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v26, v25, v21
	v_perm_b32 v5, v26, v25, v17
	v_and_b32_e32 v25, 1, v1
	v_mov_b16_e32 v1.l, v13.h
	v_mov_b16_e32 v35.l, v24.h
	v_add3_u32 v24, v7, v28, 0x7fff
	v_add3_u32 v8, v8, v45, 0x7fff
	v_mov_b16_e32 v24.l, v6.h
	v_permlanex16_b32 v23, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v6, v20, v27, v21
	v_perm_b32 v7, v20, v27, v17
	v_and_b32_e32 v20, 1, v1
	v_mov_b16_e32 v1.l, v15.h
	v_add3_u32 v22, v9, v22, 0x7fff
	v_mov_b16_e32 v68.l, v16.h
	v_add3_u32 v10, v10, v46, 0x7fff
	v_mov_b16_e32 v22.l, v8.h
	v_perm_b32 v8, v23, v29, v21
	v_perm_b32 v9, v23, v29, v17
	v_and_b32_e32 v23, 1, v1
	v_mov_b16_e32 v1.l, v19.h
	v_add3_u32 v11, v11, v25, 0x7fff
	v_dual_cndmask_b32 v25, v22, v35 :: v_dual_and_b32 v50, 1, v68
	v_mov_b16_e32 v11.l, v10.h
	v_cndmask_b32_e32 v10, v35, v22, vcc_lo
	v_and_b32_e32 v22, 1, v1
	v_mov_b16_e32 v1.l, v34.h
	v_add3_u32 v14, v14, v48, 0x7fff
	v_add3_u32 v12, v12, v47, 0x7fff
	v_add3_u32 v16, v16, v50, 0x7fff
	v_add3_u32 v18, v18, v51, 0x7fff
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v15, v15, v23, 0x7fff
	v_add3_u32 v13, v13, v20, 0x7fff
	v_mov_b16_e32 v15.l, v14.h
	v_add3_u32 v14, v19, v22, 0x7fff
	v_add3_u32 v1, v34, v1, 0x7fff
	v_mov_b16_e32 v13.l, v12.h
	v_cndmask_b32_e32 v12, v24, v11, vcc_lo
	v_mov_b16_e32 v14.l, v16.h
	v_mov_b16_e32 v1.l, v18.h
	v_permlanex16_b32 v20, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v16, v11, v24, vcc_lo
	v_permlanex16_b32 v18, v12, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v12, v13, v14 :: v_dual_cndmask_b32 v19, v15, v1
	v_perm_b32 v10, v20, v25, v21
	v_perm_b32 v11, v20, v25, v17
	v_cndmask_b32_e32 v20, v14, v13, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_permlanex16_b32 v22, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v1, v1, v15, vcc_lo
	v_permlanex16_b32 v19, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v18, v16, v21
	v_perm_b32 v13, v18, v16, v17
	v_perm_b32 v14, v22, v20, v21
	v_perm_b32 v15, v22, v20, v17
	v_perm_b32 v16, v19, v1, v21
	v_perm_b32 v17, v19, v1, v17
	s_clause 0x3
	buffer_store_b128 v[2:5], v70, s[4:7], 0 offen
	buffer_store_b128 v[6:9], v71, s[4:7], 0 offen
	buffer_store_b128 v[10:13], v72, s[4:7], 0 offen
	buffer_store_b128 v[14:17], v0, s[4:7], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 44
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
		.amdhsa_next_free_sgpr 37
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 44
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18924
; TotalNumSgprs: 39
; NumVgprs: 256
; ScratchSize: 44
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 39
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 44
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 10
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
