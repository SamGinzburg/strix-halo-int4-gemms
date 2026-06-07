	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v17, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v21, 15, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v18, 2, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v16, 2, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v46, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v19, 16, v17
	v_or_b32_e32 v20, 32, v17
	v_or_b32_e32 v41, 48, v17
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 12, v16
	v_or_b32_e32 v45, 0x3f0, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s26, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
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
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v3, s26, v18
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
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s5, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s4, s5
	s_abs_i32 s16, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v1, s27, v17
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v9, v21, 4, v1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s17, s17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b64 s[28:29], s[14:15]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s18, s18, s17
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[10:11], null, s27, 48, v[9:10]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s2, s17, s18
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v42, s27, 4, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s17, s17, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v43, s27, 5, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s2, s4, s17
	s_xor_b32 s17, s5, s7
	s_mul_i32 s18, s2, s16
	s_ashr_i32 s19, s17, 31
	s_sub_i32 s4, s4, s18
	s_add_i32 s17, s2, 1
	s_sub_i32 s18, s4, s16
	s_cmp_ge_u32 s4, s16
	s_cselect_b32 s2, s17, s2
	s_cselect_b32 s4, s18, s4
	s_add_i32 s17, s2, 1
	s_cmp_ge_u32 s4, s16
	s_cselect_b32 s2, s17, s2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s18, s31, 0xff
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s2, s2, s19
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s30, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s3, s18, 31
.Ltmp15:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s2, s2, s19
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s3, s3, 24
.Ltmp17:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s2, s7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s18, s18, s3
.Ltmp19:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s5, s7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s30, v18
	v_or_b32_e32 v4, s30, v17
	v_or_b32_e32 v5, s30, v19
	v_or_b32_e32 v6, s30, v20
	v_or_b32_e32 v7, s30, v41
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s6
.Ltmp20:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s17, s31, 63
.Ltmp21:
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s2, 8
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s3, 4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s20, s27, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s17, 63
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s31, v4
	v_cmp_gt_i32_e64 s4, s31, v5
	v_cmp_gt_i32_e64 s5, s31, v6
	v_cmp_gt_i32_e64 s6, s31, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s7, s33, s20
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v11, v3, v2, s34
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s7, v9
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s2, s3
	s_and_b32 s4, s4, s3
	s_and_b32 s5, s5, s3
	s_and_b32 s6, s6, s3
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s17, 0x7f
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s16, s26, s30
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s30, 64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s7, v42
	v_add_nc_u32_e32 v3, s7, v43
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v5, s16, v11
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v31, s35, v18
	v_or_b32_e32 v32, s35, v17
	v_or_b32_e32 v33, s35, v19
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s7, v10
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v6, 0x80000000, v2, s4
	v_cndmask_b32_e64 v7, 0x80000000, v3, s5
	.loc	1 346 30 is_stmt 1              ; generate_amdgcn.py:346:30
	s_lshl_b32 s4, s26, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s5, s27, 6
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v30, 0x80000000, v5, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v34, s35, v20
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s7, s7, s5
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v36, s16, s4, v11
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v32
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v35, s35, v41
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v37, s7, v9
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s31, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v4, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v38, s7, v42
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s6, s31, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[2:5], v1, s[36:39], 0 offen
	buffer_load_b128 v[12:15], v6, s[36:39], 0 offen
	buffer_load_b128 v[22:25], v7, s[36:39], 0 offen
	buffer_load_b128 v[26:29], v8, s[36:39], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v6, v30, s[8:11], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v36, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v39, s7, v43
	v_add_nc_u32_e32 v40, s7, v10
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s7, s31, v35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v7, 0x80000000, v37, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	s_mov_b32 s16, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v8, 0x80000000, v38, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s6, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v38, 0x80000000, v39, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s7, s2
	s_cmpk_gt_i32 s17, 0xbf
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v39, 0x80000000, v40, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v40, v1, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[30:33], v7, s[36:39], 0 offen
	buffer_load_b128 v[34:37], v8, s[36:39], 0 offen
	buffer_load_b128 v[47:50], v38, s[36:39], 0 offen
	buffer_load_b128 v[51:54], v39, s[36:39], 0 offen
	v_add_nc_u32_e32 v7, 0, v46
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v8, 0, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v7, v[12:15] offset:4096
	s_waitcnt vmcnt(7)
	ds_store_b128 v7, v[22:25] offset:8192
	s_waitcnt vmcnt(6)
	ds_store_b128 v7, v[26:29] offset:12288
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(5)
	ds_store_b32 v8, v6 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v7, v[2:5]
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v8, v40 offset:33792
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v7, v[30:33] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v7, v[34:37] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v7, v[47:50] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v7, v[51:54] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v59, 0x3f0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v44, 0x70, v1
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr59
                                        ; implicit-def: $vgpr44
.LBB0_3:                                ; %Flow46
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v2, s34, v21
	v_and_b32_e32 v38, 0xf0, v0
	s_ashr_i32 s48, s18, 8
	v_or_b32_e32 v39, s33, v0
	v_lshlrev_b32_e32 v14, 1, v0
	v_mul_lo_u32 v40, v2, s48
	v_lshlrev_b32_e32 v135, 2, v38
	v_lshlrev_b32_e32 v15, 5, v0
	v_lshlrev_b32_e32 v134, 1, v38
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s15, s17, 6
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v44, 0x70, v1
	v_dual_mov_b32 v22, 0 :: v_dual_and_b32 v1, 32, v15
	v_and_b32_e32 v23, 28, v14
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v48, 0, v134
	v_mov_b32_e32 v26, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v24, 0, v135, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_add_nc_u32_e32 v47, v24, v23
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v37, 0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_add_i32 s7, s35, 64
	s_mov_b32 s14, 1
	s_and_b32 s41, s13, 0xffff
	s_mov_b32 s40, s12
	s_and_b32 s45, s29, 0xffff
	s_mov_b32 s44, s28
	s_add_i32 s6, 0, 0x8000
	s_add_i32 s1, 0, 0x8400
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s15, s15, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s4, s6
	s_mov_b32 s6, s1
	s_mov_b32 s1, s16
	s_mov_b32 s16, s0
	s_mov_b32 s0, s30
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s5, s17, 6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v49, s1, v44, v21
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s0, 31
	s_mov_b32 s30, s35
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s7, s5
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 24
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v54, s35, v18
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s0, s1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v50, s4, v21
	v_add_nc_u32_e32 v51, s4, v45
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v55, s35, v17
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[52:53], null, s35, s26, v[11:12]
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s4, s35, s27
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s18, s0, 8
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s4, s33
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v54
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s18, s48
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v54, v40, s18, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s18, s18, s27
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s31, v55
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v55, v39, s18, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v56, s35, v19
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_cndmask_b32 v55, 0x80000000, v55
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v125, v52, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v190, v55, s[44:47], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v191, v54, s[40:43], 0 offen
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v57, s35, v20
	v_or_b32_e32 v58, s35, v41
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v53, s4, v9
	v_add_nc_u32_e32 v59, s4, v42
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s1, s31, v56
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v60, s4, v43
	v_add_nc_u32_e32 v61, s4, v10
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v57
	v_cmp_gt_i32_e64 s5, s31, v58
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v53, 0x80000000, v53, s0
	v_cndmask_b32_e64 v56, 0x80000000, v59, s1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v184, v49 offset:6400
	ds_load_u8 v185, v49 offset:6144
	ds_load_u8 v186, v49 offset:6912
	ds_load_u8 v187, v49 offset:6656
	ds_load_u8 v188, v49 offset:7040
	ds_load_u8 v189, v49 offset:6784
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v57, 0x80000000, v60, s4
	v_cndmask_b32_e64 v58, 0x80000000, v61, s5
	s_clause 0x3
	buffer_load_b128 v[65:68], v53, s[36:39], 0 offen
	buffer_load_b128 v[69:72], v56, s[36:39], 0 offen
	buffer_load_b128 v[73:76], v57, s[36:39], 0 offen
	buffer_load_b128 v[77:80], v58, s[36:39], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v50 offset:208
	ds_load_u8 v59, v50 offset:240
	ds_load_u8 v60, v50 offset:224
	ds_load_u8 v61, v50 offset:192
	ds_load_u8 v62, v50 offset:144
	ds_load_u8 v63, v50 offset:176
	ds_load_u8 v64, v50 offset:160
	ds_load_u8 v81, v50 offset:128
	ds_load_u8 v82, v50 offset:80
	ds_load_u8 v83, v50 offset:112
	ds_load_u8 v84, v50 offset:96
	ds_load_u8 v85, v50 offset:64
	ds_load_u8 v86, v50
	ds_load_u8 v87, v50 offset:16
	ds_load_u8 v88, v50 offset:32
	ds_load_u8 v89, v50 offset:48
	ds_load_u8 v90, v50 offset:464
	ds_load_u8 v91, v50 offset:496
	ds_load_u8 v92, v50 offset:480
	ds_load_u8 v93, v50 offset:448
	ds_load_u8 v94, v50 offset:400
	ds_load_u8 v95, v50 offset:432
	ds_load_u8 v96, v50 offset:416
	ds_load_u8 v97, v50 offset:384
	ds_load_u8 v98, v50 offset:336
	ds_load_u8 v99, v50 offset:368
	ds_load_u8 v100, v50 offset:352
	ds_load_u8 v101, v50 offset:320
	ds_load_u8 v102, v50 offset:272
	ds_load_u8 v103, v50 offset:304
	ds_load_u8 v104, v50 offset:288
	ds_load_u8 v105, v50 offset:256
	ds_load_u8 v106, v49 offset:4352
	ds_load_u8 v107, v49 offset:4096
	ds_load_u8 v108, v49 offset:4864
	ds_load_u8 v109, v50 offset:720
	ds_load_u8 v110, v50 offset:752
	ds_load_u8 v111, v50 offset:736
	ds_load_u8 v112, v50 offset:704
	ds_load_u8 v113, v50 offset:656
	ds_load_u8 v114, v50 offset:688
	ds_load_u8 v115, v50 offset:672
	ds_load_u8 v116, v50 offset:640
	ds_load_u8 v117, v50 offset:592
	ds_load_u8 v118, v50 offset:624
	ds_load_u8 v119, v50 offset:608
	ds_load_u8 v120, v50 offset:576
	ds_load_u8 v121, v50 offset:528
	ds_load_u8 v122, v50 offset:560
	ds_load_u8 v123, v50 offset:544
	ds_load_u8 v124, v50 offset:512
	ds_load_u8 v126, v50 offset:976
	ds_load_u8 v51, v51
	ds_load_u8 v127, v50 offset:992
	ds_load_u8 v128, v50 offset:960
	ds_load_u8 v129, v50 offset:912
	ds_load_u8 v130, v50 offset:944
	ds_load_u8 v131, v50 offset:928
	ds_load_u8 v132, v50 offset:896
	ds_load_u8 v133, v50 offset:848
	ds_load_u8 v134, v50 offset:880
	ds_load_u8 v135, v50 offset:864
	ds_load_u8 v136, v50 offset:832
	ds_load_u8 v137, v50 offset:784
	ds_load_u8 v138, v50 offset:816
	ds_load_u8 v139, v50 offset:800
	ds_load_u8 v50, v50 offset:768
	ds_load_u8 v140, v49 offset:12544
	ds_load_u8 v141, v49 offset:12288
	ds_load_u8 v142, v49 offset:13056
	ds_load_u8 v143, v49 offset:12800
	ds_load_u8 v144, v49 offset:3328
	ds_load_u8 v145, v49 offset:3072
	ds_load_u8 v146, v49 offset:3840
	ds_load_u8 v147, v49 offset:3584
	ds_load_u8 v148, v49 offset:3968
	ds_load_u8 v149, v49 offset:3712
	ds_load_u8 v150, v49 offset:3456
	ds_load_u8 v151, v49 offset:3200
	ds_load_u8 v152, v49 offset:2304
	ds_load_u8 v153, v49 offset:2048
	ds_load_u8 v154, v49 offset:2816
	ds_load_u8 v155, v49 offset:2560
	ds_load_u8 v156, v49 offset:2944
	ds_load_u8 v157, v49 offset:2688
	ds_load_u8 v158, v49 offset:2432
	ds_load_u8 v159, v49 offset:2176
	ds_load_u8 v160, v49 offset:1280
	ds_load_u8 v161, v49 offset:1024
	ds_load_u8 v162, v49 offset:1792
	ds_load_u8 v163, v49 offset:1536
	ds_load_u8 v164, v49 offset:1920
	ds_load_u8 v165, v49 offset:1664
	ds_load_u8 v166, v49 offset:1408
	ds_load_u8 v167, v49 offset:1152
	ds_load_u8 v168, v49 offset:256
	ds_load_u8 v169, v49
	ds_load_u8 v170, v49 offset:768
	ds_load_u8 v171, v49 offset:512
	ds_load_u8 v172, v49 offset:896
	ds_load_u8 v173, v49 offset:640
	ds_load_u8 v174, v49 offset:384
	ds_load_u8 v175, v49 offset:128
	ds_load_u8 v176, v49 offset:7424
	ds_load_u8 v177, v49 offset:7168
	ds_load_u8 v178, v49 offset:7936
	ds_load_u8 v179, v49 offset:7680
	ds_load_u8 v180, v49 offset:8064
	ds_load_u8 v181, v49 offset:7808
	ds_load_u8 v182, v49 offset:7552
	ds_load_u8 v183, v49 offset:7296
	ds_load_u8 v54, v49 offset:6528
	ds_load_u8 v55, v49 offset:6272
	ds_load_u8 v192, v49 offset:5376
	ds_load_u8 v193, v49 offset:5120
	ds_load_u8 v194, v49 offset:5888
	ds_load_u8 v195, v49 offset:5632
	ds_load_u8 v196, v49 offset:6016
	ds_load_u8 v197, v49 offset:5760
	ds_load_u8 v198, v49 offset:5504
	ds_load_u8 v199, v49 offset:5248
	ds_load_u8 v53, v49 offset:4608
	ds_load_u8 v56, v49 offset:4992
	ds_load_u8 v57, v49 offset:4736
	ds_load_u8 v58, v49 offset:4480
	ds_load_u8 v200, v49 offset:4224
	ds_load_u8 v201, v49 offset:11520
	ds_load_u8 v202, v49 offset:11264
	ds_load_u8 v203, v49 offset:12032
	ds_load_u8 v204, v49 offset:11776
	ds_load_u8 v205, v49 offset:12160
	ds_load_u8 v206, v49 offset:11904
	ds_load_u8 v207, v49 offset:11648
	ds_load_u8 v208, v49 offset:11392
	ds_load_u8 v209, v49 offset:10496
	ds_load_u8 v210, v49 offset:10240
	ds_load_u8 v211, v49 offset:11008
	ds_load_u8 v212, v49 offset:10752
	ds_load_u8 v213, v49 offset:11136
	ds_load_u8 v214, v49 offset:10880
	ds_load_u8 v215, v49 offset:10624
	ds_load_u8 v216, v49 offset:10368
	ds_load_u8 v217, v49 offset:9472
	ds_load_u8 v218, v49 offset:9216
	ds_load_u8 v219, v49 offset:9984
	ds_load_u8 v220, v49 offset:9728
	ds_load_u8 v221, v49 offset:10112
	ds_load_u8 v222, v49 offset:9856
	ds_load_u8 v223, v49 offset:9600
	ds_load_u8 v224, v49 offset:9344
	ds_load_u8 v225, v49 offset:8448
	ds_load_u8 v226, v49 offset:8192
	ds_load_u8 v227, v49 offset:8960
	ds_load_u8 v228, v49 offset:8704
	ds_load_u8 v229, v49 offset:9088
	ds_load_u8 v230, v49 offset:8832
	ds_load_u8 v231, v49 offset:8576
	ds_load_u8 v232, v49 offset:8320
	ds_load_u8 v233, v49 offset:15616
	ds_load_u8 v234, v49 offset:15360
	ds_load_u8 v235, v49 offset:16128
	ds_load_u8 v236, v49 offset:15872
	ds_load_u8 v237, v49 offset:16256
	ds_load_u8 v238, v49 offset:16000
	ds_load_u8 v239, v49 offset:15744
	ds_load_u8 v240, v49 offset:15488
	ds_load_u8 v241, v49 offset:14592
	ds_load_u8 v242, v49 offset:14336
	ds_load_u8 v243, v49 offset:15104
	ds_load_u8 v244, v49 offset:14848
	ds_load_u8 v245, v49 offset:15232
	ds_load_u8 v246, v49 offset:14976
	ds_load_u8 v247, v49 offset:14720
	ds_load_u8 v248, v49 offset:14464
	ds_load_u8 v249, v49 offset:13568
	ds_load_u8 v250, v49 offset:13312
	ds_load_u8 v251, v49 offset:14080
	ds_load_u8 v252, v49 offset:13824
	ds_load_u8 v253, v49 offset:14208
	ds_load_u8 v254, v49 offset:13952
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v52, v61, v52, 0xc0c0004
	ds_load_u8 v61, v49 offset:13696
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v49 offset:13440
	v_perm_b32 v62, v81, v62, 0xc0c0004
	ds_load_u8 v81, v49 offset:13184
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v49 offset:12928
	v_perm_b32 v82, v85, v82, 0xc0c0004
	ds_load_u8 v85, v49 offset:12672
	ds_load_u8 v49, v49 offset:12416
	v_perm_b32 v255, v84, v83, 0xc0c0004
	v_perm_b32 v86, v86, v87, 0xc0c0004
	v_perm_b32 v87, v88, v89, 0xc0c0004
	v_perm_b32 v88, v145, v144, 0xc0c0004
	v_perm_b32 v89, v147, v146, 0xc0c0004
	v_perm_b32 v144, v153, v152, 0xc0c0004
	v_perm_b32 v145, v155, v154, 0xc0c0004
	v_perm_b32 v146, v161, v160, 0xc0c0004
	v_perm_b32 v147, v163, v162, 0xc0c0004
	v_perm_b32 v152, v169, v168, 0xc0c0004
	v_perm_b32 v153, v171, v170, 0xc0c0004
	v_perm_b32 v90, v93, v90, 0xc0c0004
	v_perm_b32 v91, v92, v91, 0xc0c0004
	v_perm_b32 v92, v97, v94, 0xc0c0004
	v_perm_b32 v93, v96, v95, 0xc0c0004
	v_perm_b32 v94, v101, v98, 0xc0c0004
	v_perm_b32 v95, v100, v99, 0xc0c0004
	v_perm_b32 v96, v105, v102, 0xc0c0004
	v_perm_b32 v97, v104, v103, 0xc0c0004
	v_perm_b32 v98, v177, v176, 0xc0c0004
	v_perm_b32 v99, v179, v178, 0xc0c0004
	v_perm_b32 v100, v185, v184, 0xc0c0004
	v_perm_b32 v101, v187, v186, 0xc0c0004
	v_perm_b32 v102, v193, v192, 0xc0c0004
	v_perm_b32 v103, v195, v194, 0xc0c0004
	v_perm_b32 v104, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v53, v53, v108, 0xc0c0004
	v_perm_b32 v105, v112, v109, 0xc0c0004
	v_perm_b32 v106, v111, v110, 0xc0c0004
	v_perm_b32 v107, v116, v113, 0xc0c0004
	v_perm_b32 v108, v115, v114, 0xc0c0004
	v_perm_b32 v109, v120, v117, 0xc0c0004
	v_perm_b32 v110, v119, v118, 0xc0c0004
	v_perm_b32 v111, v124, v121, 0xc0c0004
	v_perm_b32 v112, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v113, v202, v201, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v114, v204, v203, 0xc0c0004
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v115, v210, v209, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v116, v212, v211, 0xc0c0004
	v_perm_b32 v121, v128, v126, 0xc0c0004
	v_perm_b32 v51, v127, v51, 0xc0c0004
	v_perm_b32 v124, v136, v133, 0xc0c0004
	v_perm_b32 v126, v135, v134, 0xc0c0004
	v_perm_b32 v50, v50, v137, 0xc0c0004
	v_perm_b32 v127, v139, v138, 0xc0c0004
	v_perm_b32 v134, v141, v140, 0xc0c0004
	v_perm_b32 v135, v143, v142, 0xc0c0004
	v_perm_b32 v136, v151, v150, 0xc0c0004
	v_perm_b32 v137, v149, v148, 0xc0c0004
	v_perm_b32 v138, v159, v158, 0xc0c0004
	v_perm_b32 v139, v157, v156, 0xc0c0004
	v_perm_b32 v140, v167, v166, 0xc0c0004
	v_perm_b32 v141, v165, v164, 0xc0c0004
	v_perm_b32 v142, v175, v174, 0xc0c0004
	v_perm_b32 v143, v173, v172, 0xc0c0004
	v_perm_b32 v54, v55, v54, 0xc0c0004
	v_perm_b32 v55, v189, v188, 0xc0c0004
	v_perm_b32 v154, v200, v58, 0xc0c0004
	v_perm_b32 v56, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v61, v60, v61, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v49, v85, 0xc0c0004
	v_perm_b32 v64, v64, v81, 0xc0c0004
	v_lshl_or_b32 v84, v59, 16, v52
	v_lshl_or_b32 v83, v63, 16, v62
	v_lshl_or_b32 v82, v255, 16, v82
	v_lshl_or_b32 v81, v87, 16, v86
	v_lshl_or_b32 v60, v89, 16, v88
	v_lshl_or_b32 v59, v145, 16, v144
	v_lshl_or_b32 v58, v147, 16, v146
	v_lshl_or_b32 v57, v153, 16, v152
	v_perm_b32 v117, v218, v217, 0xc0c0004
	v_perm_b32 v118, v220, v219, 0xc0c0004
	v_perm_b32 v119, v226, v225, 0xc0c0004
	v_perm_b32 v120, v228, v227, 0xc0c0004
	v_perm_b32 v122, v132, v129, 0xc0c0004
	v_perm_b32 v123, v131, v130, 0xc0c0004
	v_perm_b32 v148, v183, v182, 0xc0c0004
	v_perm_b32 v149, v181, v180, 0xc0c0004
	v_perm_b32 v150, v199, v198, 0xc0c0004
	v_perm_b32 v151, v197, v196, 0xc0c0004
	v_perm_b32 v167, v254, v253, 0xc0c0004
	v_lshl_or_b32 v88, v91, 16, v90
	v_lshl_or_b32 v87, v93, 16, v92
	v_lshl_or_b32 v86, v95, 16, v94
	v_lshl_or_b32 v85, v97, 16, v96
	v_lshl_or_b32 v92, v99, 16, v98
	v_lshl_or_b32 v91, v101, 16, v100
	v_lshl_or_b32 v90, v103, 16, v102
	v_lshl_or_b32 v89, v53, 16, v104
	v_lshl_or_b32 v94, v110, 16, v109
	v_lshl_or_b32 v93, v112, 16, v111
	v_lshl_or_b32 v100, v114, 16, v113
	v_lshl_or_b32 v99, v116, 16, v115
	v_lshl_or_b32 v104, v51, 16, v121
	v_lshl_or_b32 v101, v127, 16, v50
	v_lshl_or_b32 v112, v137, 16, v136
	v_lshl_or_b32 v111, v139, 16, v138
	v_lshl_or_b32 v110, v141, 16, v140
	v_lshl_or_b32 v109, v143, 16, v142
	v_lshl_or_b32 v115, v55, 16, v54
	v_lshl_or_b32 v113, v56, 16, v154
	v_lshl_or_b32 v121, v64, 16, v49
	v_wmma_i32_16x16x16_iu8 v[49:56], v[57:60], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v128, v234, v233, 0xc0c0004
	v_perm_b32 v129, v236, v235, 0xc0c0004
	v_perm_b32 v130, v242, v241, 0xc0c0004
	v_perm_b32 v131, v244, v243, 0xc0c0004
	v_perm_b32 v132, v250, v249, 0xc0c0004
	v_perm_b32 v133, v252, v251, 0xc0c0004
	v_perm_b32 v155, v208, v207, 0xc0c0004
	v_perm_b32 v156, v206, v205, 0xc0c0004
	v_perm_b32 v157, v216, v215, 0xc0c0004
	v_perm_b32 v158, v214, v213, 0xc0c0004
	v_perm_b32 v159, v224, v223, 0xc0c0004
	v_perm_b32 v160, v222, v221, 0xc0c0004
	v_perm_b32 v161, v232, v231, 0xc0c0004
	v_perm_b32 v162, v230, v229, 0xc0c0004
	v_lshl_or_b32 v96, v106, 16, v105
	v_lshl_or_b32 v95, v108, 16, v107
	v_lshl_or_b32 v98, v118, 16, v117
	v_lshl_or_b32 v97, v120, 16, v119
	v_lshl_or_b32 v103, v123, 16, v122
	v_lshl_or_b32 v116, v149, 16, v148
	v_lshl_or_b32 v114, v151, 16, v150
	v_lshl_or_b32 v122, v167, 16, v61
	v_wmma_i32_16x16x16_iu8 v[57:64], v[109:112], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[89:92], v[85:88], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v163, v240, v239, 0xc0c0004
	v_perm_b32 v164, v238, v237, 0xc0c0004
	v_perm_b32 v165, v248, v247, 0xc0c0004
	v_perm_b32 v166, v246, v245, 0xc0c0004
	v_lshl_or_b32 v102, v126, 16, v124
	v_lshl_or_b32 v108, v129, 16, v128
	v_lshl_or_b32 v107, v131, 16, v130
	v_lshl_or_b32 v106, v133, 16, v132
	v_lshl_or_b32 v105, v135, 16, v134
	v_lshl_or_b32 v120, v156, 16, v155
	v_lshl_or_b32 v119, v158, 16, v157
	v_lshl_or_b32 v118, v160, 16, v159
	v_lshl_or_b32 v117, v162, 16, v161
	v_wmma_i32_16x16x16_iu8 v[57:64], v[113:116], v[85:88], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[97:100], v[93:96], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v124, v164, 16, v163
	v_lshl_or_b32 v123, v166, 16, v165
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s14, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[117:120], v[93:96], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[105:108], v[101:104], v[49:56] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s14, 2
	s_cselect_b32 s14, s14, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[121:124], v[101:104], v[57:64] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v81, v49
	v_cvt_f32_i32_e32 v82, v50
	v_cvt_f32_i32_e32 v83, v51
	v_cvt_f32_i32_e32 v84, v52
	v_cvt_f32_i32_e32 v85, v53
	v_cvt_f32_i32_e32 v86, v54
	v_cvt_f32_i32_e32 v87, v55
	v_cvt_f32_i32_e32 v88, v56
	v_cvt_f32_i32_e32 v89, v57
	v_cvt_f32_i32_e32 v90, v58
	v_cvt_f32_i32_e32 v91, v59
	v_cvt_f32_i32_e32 v92, v60
	v_cvt_f32_i32_e32 v93, v61
	v_cvt_f32_i32_e32 v94, v62
	v_cvt_f32_i32_e32 v95, v63
	v_cvt_f32_i32_e32 v96, v64
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s0, s14, 10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s1, s14, 14
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s5, s0, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s0, s1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s17, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s1, s5, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s17, s15
	s_mov_b32 s17, s4
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v97, 16, v191
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v49, 16, v190
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v47, v49 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[49:52], v48 offset:34816
	ds_load_b128 v[53:56], v48 offset:34832
	ds_load_b128 v[57:60], v48 offset:35328
	ds_load_b128 v[61:64], v48 offset:35344
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v12, s5, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v13, s0, v46
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_store_b32 v12, v125 offset:32768
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(4)
	v_mul_f32_e32 v12, v49, v97
	v_mul_f32_e32 v49, v50, v97
	v_mul_f32_e32 v50, v51, v97
	v_mul_f32_e32 v51, v52, v97
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v52, v53, v97
	v_mul_f32_e32 v53, v54, v97
	v_mul_f32_e32 v54, v55, v97
	v_mul_f32_e32 v55, v56, v97
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v56, v57, v97 :: v_dual_fmac_f32 v25, v51, v84
	v_mul_f32_e32 v57, v58, v97
	v_mul_f32_e32 v58, v59, v97
	v_mul_f32_e32 v59, v60, v97
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v60, v61, v97
	v_mul_f32_e32 v61, v62, v97
	v_dual_mul_f32 v62, v63, v97 :: v_dual_fmac_f32 v31, v57, v90
	v_mul_f32_e32 v63, v64, v97
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v22, v12, v81 :: v_dual_fmac_f32 v33, v59, v92
	v_dual_fmac_f32 v23, v49, v82 :: v_dual_fmac_f32 v24, v50, v83
	v_dual_fmac_f32 v26, v52, v85 :: v_dual_fmac_f32 v35, v61, v94
	v_fmac_f32_e32 v28, v54, v87
	v_dual_fmac_f32 v30, v56, v89 :: v_dual_fmac_f32 v37, v62, v95
	v_dual_fmac_f32 v36, v63, v96 :: v_dual_fmac_f32 v27, v53, v86
	v_dual_fmac_f32 v32, v58, v91 :: v_dual_fmac_f32 v29, v55, v88
	v_fmac_f32_e32 v34, v60, v93
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v13, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v13, v[69:72] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v13, v[73:76] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v13, v[77:80] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v59, v45 :: v_dual_lshlrev_b32 v134, 1, v38
	v_lshlrev_b32_e32 v135, 2, v38
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	s_add_i32 s6, 0, 0x8000
	s_add_i32 s1, 0, 0x8400
	s_add_i32 s0, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v18, v44, v21
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_mov_b32_e32 v55, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
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
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v6, s6, v21
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v6 offset:240
	ds_load_u8 v2, v6 offset:208
	ds_load_u8 v3, v6 offset:224
	ds_load_u8 v4, v6 offset:192
	ds_load_u8 v7, v6 offset:144
	ds_load_u8 v8, v6 offset:160
	ds_load_u8 v9, v6 offset:128
	ds_load_u8 v10, v6 offset:176
	ds_load_u8 v11, v6 offset:112
	ds_load_u8 v12, v6 offset:80
	ds_load_u8 v13, v6 offset:96
	ds_load_u8 v16, v6 offset:64
	ds_load_u8 v19, v6 offset:16
	ds_load_u8 v20, v6 offset:32
	ds_load_u8 v41, v6
	ds_load_u8 v42, v6 offset:48
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v43, s6, v59
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s6, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s16, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v104, v6 offset:752
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v2, v4, v2, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v9, v7, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v7, v8, v10, 0xc0c0004
	ds_load_u8 v8, v5 offset:3328
	ds_load_u8 v9, v5 offset:3072
	ds_load_u8 v10, v5 offset:3840
	ds_load_u8 v46, v5 offset:3584
	v_lshl_or_b32 v4, v1, 16, v2
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v2, v13, v11, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v1, v16, v12, 0xc0c0004
	v_lshl_or_b32 v3, v7, 16, v3
	ds_load_u8 v11, v43
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v7, v41, v19, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v20, v42, 0xc0c0004
	ds_load_u8 v13, v5 offset:2304
	ds_load_u8 v16, v5 offset:2048
	ds_load_u8 v19, v5 offset:2816
	ds_load_u8 v20, v5 offset:2560
	ds_load_u8 v41, v5 offset:1280
	ds_load_u8 v42, v5 offset:1024
	ds_load_u8 v43, v5 offset:1792
	ds_load_u8 v47, v5 offset:1536
	ds_load_u8 v57, v5 offset:3968
	ds_load_u8 v58, v5 offset:3712
	ds_load_u8 v68, v5 offset:3456
	ds_load_u8 v72, v5 offset:3200
	v_lshl_or_b32 v2, v2, 16, v1
	v_lshl_or_b32 v1, v12, 16, v7
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v13, v16, v13, 0xc0c0004
	v_perm_b32 v9, v46, v10, 0xc0c0004
	ds_load_u8 v46, v5 offset:256
	ds_load_u8 v48, v5
	ds_load_u8 v49, v5 offset:768
	ds_load_u8 v50, v5 offset:512
	ds_load_u8 v73, v5 offset:2944
	ds_load_u8 v74, v5 offset:2688
	ds_load_u8 v75, v5 offset:2432
	ds_load_u8 v76, v5 offset:2176
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	v_perm_b32 v16, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v42, v47, v43, 0xc0c0004
	v_lshl_or_b32 v10, v9, 16, v8
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	v_lshl_or_b32 v9, v16, 16, v13
	v_lshl_or_b32 v8, v42, 16, v41
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v72, v72, v68, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v48, v46, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v41, v50, v49, 0xc0c0004
	v_dual_mov_b32 v56, s11 :: v_dual_mov_b32 v55, s10
	ds_load_u8 v42, v6 offset:464
	ds_load_u8 v43, v6 offset:480
	ds_load_u8 v46, v6 offset:448
	ds_load_u8 v44, v6 offset:288
	ds_load_u8 v45, v6 offset:256
	v_lshl_or_b32 v7, v41, 16, v7
	ds_load_u8 v41, v6 offset:496
	ds_load_u8 v47, v6 offset:400
	ds_load_u8 v48, v6 offset:432
	ds_load_u8 v69, v6 offset:416
	ds_load_u8 v70, v6 offset:384
	ds_load_u8 v71, v6 offset:368
	ds_load_u8 v80, v6 offset:336
	ds_load_u8 v81, v6 offset:352
	ds_load_u8 v82, v6 offset:320
	ds_load_u8 v83, v6 offset:272
	ds_load_u8 v84, v6 offset:304
	v_dual_mov_b32 v54, s9 :: v_dual_mov_b32 v53, s8
	v_dual_mov_b32 v52, s7 :: v_dual_mov_b32 v51, s6
	v_dual_mov_b32 v50, s5 :: v_dual_mov_b32 v49, s4
	ds_load_u8 v19, v5 offset:1920
	ds_load_u8 v20, v5 offset:1664
	ds_load_u8 v77, v5 offset:1408
	ds_load_u8 v78, v5 offset:1152
	ds_load_u8 v12, v5 offset:896
	ds_load_u8 v13, v5 offset:640
	ds_load_u8 v16, v5 offset:384
	ds_load_u8 v79, v5 offset:128
	ds_load_u8 v117, v5 offset:10112
	ds_load_u8 v118, v5 offset:9856
	ds_load_u8 v119, v5 offset:9600
	ds_load_u8 v120, v5 offset:9344
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v58, v76, v75, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[60:67], v[7:10], v[1:4], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v9, v70, v47, 0xc0c0004
	v_perm_b32 v47, v69, v48, 0xc0c0004
	v_perm_b32 v8, v43, v41, 0xc0c0004
	v_perm_b32 v7, v46, v42, 0xc0c0004
	ds_load_u8 v41, v5 offset:7424
	ds_load_u8 v42, v5 offset:7168
	ds_load_u8 v43, v5 offset:7936
	ds_load_u8 v91, v5 offset:7680
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v45, v45, v83, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v44, v44, v84, 0xc0c0004
	v_lshl_or_b32 v9, v47, 16, v9
	v_lshl_or_b32 v10, v8, 16, v7
	v_perm_b32 v48, v82, v80, 0xc0c0004
	v_perm_b32 v69, v81, v71, 0xc0c0004
	v_lshl_or_b32 v7, v44, 16, v45
	ds_load_u8 v70, v5 offset:6400
	ds_load_u8 v71, v5 offset:6144
	ds_load_u8 v80, v5 offset:6912
	ds_load_u8 v81, v5 offset:6656
	ds_load_u8 v46, v6 offset:592
	ds_load_u8 v85, v6 offset:608
	ds_load_u8 v86, v6 offset:576
	ds_load_u8 v87, v6 offset:528
	ds_load_u8 v88, v6 offset:560
	ds_load_u8 v89, v6 offset:544
	ds_load_u8 v90, v6 offset:512
	ds_load_u8 v82, v5 offset:8064
	ds_load_u8 v83, v5 offset:7808
	ds_load_u8 v84, v5 offset:7552
	ds_load_u8 v92, v5 offset:7296
	v_lshl_or_b32 v8, v69, 16, v48
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v76, v78, v77, 0xc0c0004
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v16, v79, v16, 0xc0c0004
	v_perm_b32 v12, v13, v12, 0xc0c0004
	v_lshl_or_b32 v75, v57, 16, v72
	v_lshl_or_b32 v74, v73, 16, v58
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	v_lshl_or_b32 v73, v19, 16, v76
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v42, v91, v43, 0xc0c0004
	ds_load_u8 v43, v5 offset:5376
	ds_load_u8 v44, v5 offset:5120
	ds_load_u8 v45, v5 offset:5888
	ds_load_u8 v47, v5 offset:5632
	ds_load_u8 v91, v5 offset:7040
	ds_load_u8 v93, v5 offset:6784
	ds_load_u8 v94, v5 offset:6528
	ds_load_u8 v95, v5 offset:6272
	v_lshl_or_b32 v72, v12, 16, v16
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v46, v86, v46, 0xc0c0004
	v_perm_b32 v48, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[72:75], v[1:4], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v69, v81, v80, 0xc0c0004
	ds_load_u8 v70, v5 offset:4352
	ds_load_u8 v71, v5 offset:4096
	ds_load_u8 v80, v5 offset:4864
	ds_load_u8 v81, v5 offset:4608
	ds_load_u8 v96, v6 offset:720
	ds_load_u8 v97, v6 offset:736
	ds_load_u8 v98, v6 offset:704
	ds_load_u8 v99, v5 offset:6016
	ds_load_u8 v100, v5 offset:5760
	ds_load_u8 v101, v5 offset:5504
	ds_load_u8 v102, v5 offset:5248
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v86, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v12, v92, v84, 0xc0c0004
	v_perm_b32 v13, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v103, v44, v43, 0xc0c0004
	v_lshl_or_b32 v44, v42, 16, v41
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v45, v47, v45, 0xc0c0004
	ds_load_u8 v47, v6 offset:656
	ds_load_u8 v105, v6 offset:688
	ds_load_u8 v106, v6 offset:672
	ds_load_u8 v107, v6 offset:640
	ds_load_u8 v108, v5 offset:4992
	ds_load_u8 v109, v5 offset:4736
	ds_load_u8 v110, v5 offset:4480
	ds_load_u8 v111, v5 offset:4224
	v_lshl_or_b32 v43, v69, 16, v48
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	v_perm_b32 v16, v95, v94, 0xc0c0004
	v_lshl_or_b32 v42, v45, 16, v103
	ds_load_u8 v45, v6 offset:624
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v71, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v48, v98, v96, 0xc0c0004
	v_perm_b32 v19, v93, v91, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v57, v100, v99, 0xc0c0004
	v_lshl_or_b32 v4, v13, 16, v12
	v_lshl_or_b32 v41, v71, 16, v70
	v_perm_b32 v71, v97, v104, 0xc0c0004
	ds_load_u8 v69, v6 offset:800
	ds_load_u8 v70, v6 offset:768
	ds_load_u8 v80, v6 offset:784
	ds_load_u8 v81, v6 offset:848
	ds_load_u8 v96, v6 offset:864
	ds_load_u8 v97, v6 offset:832
	ds_load_u8 v98, v6 offset:816
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v20, v102, v101, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[60:67], v[41:44], v[7:10], v[60:67] neg_lo:[1,1,0]
	v_lshl_or_b32 v44, v71, 16, v48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v41, v107, v47, 0xc0c0004
	ds_load_u8 v47, v5 offset:11520
	ds_load_u8 v48, v5 offset:11264
	ds_load_u8 v71, v5 offset:12032
	ds_load_u8 v103, v5 offset:11776
	v_perm_b32 v42, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v58, v111, v110, 0xc0c0004
	v_perm_b32 v76, v109, v108, 0xc0c0004
	v_lshl_or_b32 v3, v19, 16, v16
	v_lshl_or_b32 v2, v57, 16, v20
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v45, v85, v45, 0xc0c0004
	v_perm_b32 v85, v90, v87, 0xc0c0004
	ds_load_u8 v87, v5 offset:10496
	ds_load_u8 v88, v5 offset:10240
	v_lshl_or_b32 v43, v42, 16, v41
	v_lshl_or_b32 v1, v76, 16, v58
	v_lshl_or_b32 v42, v45, 16, v46
	v_lshl_or_b32 v41, v86, 16, v85
	ds_load_u8 v45, v5 offset:11008
	ds_load_u8 v46, v5 offset:10752
	ds_load_u8 v85, v5 offset:9472
	ds_load_u8 v86, v5 offset:9216
	ds_load_u8 v89, v5 offset:12160
	ds_load_u8 v90, v5 offset:11904
	ds_load_u8 v104, v5 offset:11648
	ds_load_u8 v105, v5 offset:11392
	v_perm_b32 v20, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v69, v69, v98, 0xc0c0004
	v_perm_b32 v57, v118, v117, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[49:56], v[1:4], v[7:10], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v48, v103, v71, 0xc0c0004
	ds_load_u8 v71, v5 offset:9984
	ds_load_u8 v103, v5 offset:9728
	ds_load_u8 v106, v5 offset:11136
	ds_load_u8 v107, v5 offset:10880
	ds_load_u8 v112, v5 offset:10624
	ds_load_u8 v113, v5 offset:10368
	v_lshl_or_b32 v2, v57, 16, v20
	v_lshl_or_b32 v48, v48, 16, v47
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v5 offset:8448
	ds_load_u8 v114, v5 offset:8192
	ds_load_u8 v115, v5 offset:8960
	ds_load_u8 v116, v5 offset:8704
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v46, v86, v85, 0xc0c0004
	ds_load_u8 v85, v6 offset:976
	ds_load_u8 v86, v6 offset:992
	ds_load_u8 v121, v6 offset:960
	ds_load_u8 v122, v6 offset:912
	ds_load_u8 v123, v6 offset:944
	ds_load_u8 v124, v6 offset:928
	ds_load_u8 v125, v6 offset:896
	ds_load_u8 v6, v6 offset:880
	v_lshl_or_b32 v47, v45, 16, v87
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v12, v105, v104, 0xc0c0004
	v_perm_b32 v13, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v71, v103, v71, 0xc0c0004
	ds_load_u8 v103, v5 offset:9088
	ds_load_u8 v126, v5 offset:8832
	ds_load_u8 v127, v5 offset:8576
	ds_load_u8 v128, v5 offset:8320
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v19, v107, v106, 0xc0c0004
	v_lshl_or_b32 v4, v13, 16, v12
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v16, v113, v112, 0xc0c0004
	v_lshl_or_b32 v46, v71, 16, v46
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v11, v86, v11, 0xc0c0004
	v_perm_b32 v88, v114, v88, 0xc0c0004
	v_lshl_or_b32 v3, v19, 16, v16
	v_perm_b32 v114, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v6, v96, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v45, v114, 16, v88
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v72, v126, v103, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v128, v127, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[60:67], v[45:48], v[41:44], v[60:67] neg_lo:[1,1,0]
	v_perm_b32 v45, v121, v85, 0xc0c0004
	v_perm_b32 v46, v125, v122, 0xc0c0004
	v_perm_b32 v47, v124, v123, 0xc0c0004
	ds_load_u8 v71, v5 offset:15616
	ds_load_u8 v85, v5 offset:15360
	ds_load_u8 v86, v5 offset:16128
	ds_load_u8 v87, v5 offset:15872
	v_lshl_or_b32 v1, v72, 16, v58
	v_lshl_or_b32 v48, v11, 16, v45
	v_perm_b32 v11, v97, v81, 0xc0c0004
	v_lshl_or_b32 v47, v47, 16, v46
	v_perm_b32 v45, v70, v80, 0xc0c0004
	ds_load_u8 v46, v5 offset:14592
	ds_load_u8 v70, v5 offset:14336
	ds_load_u8 v80, v5 offset:15104
	ds_load_u8 v81, v5 offset:14848
	ds_load_u8 v88, v5 offset:13568
	ds_load_u8 v96, v5 offset:13312
	ds_load_u8 v97, v5 offset:14080
	ds_load_u8 v98, v5 offset:13824
	ds_load_u8 v114, v5 offset:16256
	ds_load_u8 v115, v5 offset:16000
	ds_load_u8 v116, v5 offset:15744
	ds_load_u8 v121, v5 offset:15488
	v_wmma_i32_16x16x16_iu8 v[49:56], v[1:4], v[41:44], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v45, v69, 16, v45
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v70, v70, v46, 0xc0c0004
	v_lshl_or_b32 v46, v6, 16, v11
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	v_perm_b32 v71, v85, v71, 0xc0c0004
	v_perm_b32 v85, v87, v86, 0xc0c0004
	ds_load_u8 v86, v5 offset:12544
	ds_load_u8 v87, v5 offset:12288
	ds_load_u8 v122, v5 offset:13056
	ds_load_u8 v123, v5 offset:12800
	ds_load_u8 v124, v5 offset:15232
	ds_load_u8 v125, v5 offset:14976
	ds_load_u8 v129, v5 offset:14720
	ds_load_u8 v130, v5 offset:14464
	ds_load_u8 v81, v5 offset:14208
	ds_load_u8 v131, v5 offset:13952
	ds_load_u8 v132, v5 offset:13696
	ds_load_u8 v133, v5 offset:13440
	v_lshl_or_b32 v70, v80, 16, v70
	ds_load_u8 v6, v5 offset:13184
	ds_load_u8 v11, v5 offset:12928
	ds_load_u8 v80, v5 offset:12672
	ds_load_u8 v5, v5 offset:12416
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v88, v96, v88, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v96, v98, v97, 0xc0c0004
	v_lshl_or_b32 v71, v85, 16, v71
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v7, v121, v116, 0xc0c0004
	v_perm_b32 v8, v115, v114, 0xc0c0004
	v_lshl_or_b32 v69, v96, 16, v88
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v4, v8, 16, v7
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v85, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v86, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v131, v81, 0xc0c0004
	v_perm_b32 v9, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v12, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v6, v11, v6, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v80, 0xc0c0004
	v_lshl_or_b32 v68, v86, 16, v85
	v_lshl_or_b32 v3, v10, 16, v9
	v_lshl_or_b32 v2, v13, 16, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v1, v6, 16, v5
	v_wmma_i32_16x16x16_iu8 v[60:67], v[68:71], v[45:48], v[60:67] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[1:4], v[45:48], v[49:56] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v41, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v42, v62
	v_cvt_f32_i32_e32 v43, v63
	v_cvt_f32_i32_e32 v44, v64
	v_cvt_f32_i32_e32 v46, v65
	v_cvt_f32_i32_e32 v47, v66
	v_cvt_f32_i32_e32 v48, v67
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v45, v60
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s4, s30, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s5, s4, s27
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s48
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v40, s4, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v39, s5, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v3, 28, v14
	v_mov_b32_e32 v20, 0
	buffer_load_u16 v60, v1, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_and_b32_e32 v1, 32, v15
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v57, 0, v134
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v68, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v1, 0, v135, v1
	v_mov_b32_e32 v19, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v58, v1, v3
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v73, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v64, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v58, v1 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v57 offset:34816
	ds_load_b128 v[5:8], v57 offset:34832
	ds_load_b128 v[9:12], v57 offset:35328
	ds_load_b128 v[13:16], v57 offset:35344
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v62, s1, v21
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v17, v62 offset:240
	ds_load_u8 v19, v62 offset:208
	ds_load_u8 v20, v62 offset:224
	ds_load_u8 v63, v62 offset:192
	ds_load_u8 v64, v62 offset:144
	ds_load_u8 v65, v62 offset:160
	ds_load_u8 v66, v62 offset:128
	ds_load_u8 v67, v62 offset:176
	ds_load_u8 v68, v62 offset:112
	ds_load_u8 v69, v62 offset:80
	ds_load_u8 v70, v62 offset:96
	ds_load_u8 v71, v62 offset:64
	ds_load_u8 v72, v62 offset:16
	ds_load_u8 v73, v62 offset:32
	ds_load_u8 v74, v62
	ds_load_u8 v75, v62 offset:48
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v61, s0, v18
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v18, s1, v59
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v133, v62 offset:752
	ds_load_u8 v90, v18
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v19, v63, v19, 0xc0c0004
	v_perm_b32 v17, v20, v17, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v63, v66, v64, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v64, v65, v67, 0xc0c0004
	ds_load_u8 v65, v61 offset:3328
	ds_load_u8 v66, v61 offset:3072
	ds_load_u8 v67, v61 offset:3840
	ds_load_u8 v76, v61 offset:3584
	v_lshl_or_b32 v20, v17, 16, v19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v17, v71, v69, 0xc0c0004
	v_lshl_or_b32 v19, v64, 16, v63
	v_perm_b32 v63, v70, v68, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v64, v74, v72, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v68, v73, v75, 0xc0c0004
	ds_load_u8 v18, v61 offset:2304
	ds_load_u8 v69, v61 offset:2048
	ds_load_u8 v70, v61 offset:2816
	ds_load_u8 v71, v61 offset:2560
	ds_load_u8 v72, v61 offset:1280
	ds_load_u8 v73, v61 offset:1024
	ds_load_u8 v74, v61 offset:1792
	ds_load_u8 v75, v61 offset:1536
	ds_load_u8 v94, v61 offset:3968
	ds_load_u8 v95, v61 offset:3712
	ds_load_u8 v96, v61 offset:3456
	ds_load_u8 v97, v61 offset:3200
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v69, v69, v18, 0xc0c0004
	v_perm_b32 v66, v76, v67, 0xc0c0004
	ds_load_u8 v67, v61 offset:256
	ds_load_u8 v76, v61
	ds_load_u8 v77, v61 offset:768
	ds_load_u8 v78, v61 offset:512
	ds_load_u8 v98, v61 offset:2944
	ds_load_u8 v99, v61 offset:2688
	ds_load_u8 v100, v61 offset:2432
	ds_load_u8 v101, v61 offset:2176
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v71, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v72, v75, v74, 0xc0c0004
	v_lshl_or_b32 v18, v63, 16, v17
	v_lshl_or_b32 v17, v68, 16, v64
	v_lshl_or_b32 v85, v66, 16, v65
	v_lshl_or_b32 v84, v70, 16, v69
	v_lshl_or_b32 v83, v72, 16, v71
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v63, v76, v67, 0xc0c0004
	v_mov_b32_e32 v73, s11
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v64, v78, v77, 0xc0c0004
	ds_load_u8 v65, v62 offset:464
	ds_load_u8 v87, v62 offset:480
	ds_load_u8 v88, v62 offset:448
	ds_load_u8 v59, v62 offset:288
	ds_load_u8 v86, v62 offset:256
	v_dual_mov_b32 v72, s10 :: v_dual_mov_b32 v71, s9
	v_lshl_or_b32 v82, v64, 16, v63
	ds_load_u8 v63, v62 offset:496
	ds_load_u8 v64, v62 offset:400
	ds_load_u8 v89, v62 offset:432
	ds_load_u8 v91, v62 offset:416
	ds_load_u8 v92, v62 offset:384
	ds_load_u8 v93, v62 offset:368
	ds_load_u8 v110, v62 offset:336
	ds_load_u8 v111, v62 offset:352
	ds_load_u8 v112, v62 offset:320
	ds_load_u8 v113, v62 offset:272
	ds_load_u8 v114, v62 offset:304
	v_dual_mov_b32 v70, s8 :: v_dual_mov_b32 v69, s7
	v_dual_mov_b32 v68, s6 :: v_dual_mov_b32 v67, s5
	v_mov_b32_e32 v66, s4
	ds_load_u8 v134, v62 offset:656
	ds_load_u8 v135, v62 offset:688
	ds_load_u8 v136, v62 offset:672
	ds_load_u8 v137, v62 offset:640
	ds_load_u8 v138, v61 offset:4992
	ds_load_u8 v139, v61 offset:4736
	ds_load_u8 v140, v61 offset:4480
	ds_load_u8 v141, v61 offset:4224
	ds_load_u8 v115, v62 offset:592
	ds_load_u8 v116, v62 offset:608
	ds_load_u8 v117, v62 offset:576
	ds_load_u8 v118, v62 offset:528
	ds_load_u8 v119, v62 offset:560
	ds_load_u8 v120, v62 offset:544
	ds_load_u8 v121, v62 offset:512
	ds_load_u8 v102, v61 offset:1920
	ds_load_u8 v103, v61 offset:1664
	ds_load_u8 v104, v61 offset:1408
	ds_load_u8 v105, v61 offset:1152
	ds_load_u8 v106, v61 offset:896
	ds_load_u8 v107, v61 offset:640
	ds_load_u8 v108, v61 offset:384
	ds_load_u8 v109, v61 offset:128
	v_wmma_i32_16x16x16_iu8 v[74:81], v[82:85], v[17:20], v[66:73] neg_lo:[1,1,0]
	ds_load_u8 v147, v61 offset:10112
	ds_load_u8 v148, v61 offset:9856
	ds_load_u8 v149, v61 offset:9600
	ds_load_u8 v150, v61 offset:9344
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v82, v91, v89, 0xc0c0004
	v_perm_b32 v63, v87, v63, 0xc0c0004
	v_perm_b32 v65, v88, v65, 0xc0c0004
	ds_load_u8 v87, v61 offset:7424
	ds_load_u8 v88, v61 offset:7168
	ds_load_u8 v122, v61 offset:7936
	ds_load_u8 v123, v61 offset:7680
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v64, v92, v64, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v83, v112, v110, 0xc0c0004
	v_perm_b32 v89, v111, v93, 0xc0c0004
	ds_load_u8 v91, v61 offset:6400
	ds_load_u8 v92, v61 offset:6144
	ds_load_u8 v93, v61 offset:6912
	ds_load_u8 v110, v61 offset:6656
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v86, v86, v113, 0xc0c0004
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v59, v59, v114, 0xc0c0004
	v_lshl_or_b32 v85, v63, 16, v65
	v_lshl_or_b32 v84, v82, 16, v64
	v_lshl_or_b32 v83, v89, 16, v83
	v_perm_b32 v95, v101, v100, 0xc0c0004
	v_lshl_or_b32 v82, v59, 16, v86
	ds_load_u8 v59, v61 offset:8064
	ds_load_u8 v111, v61 offset:7808
	ds_load_u8 v112, v61 offset:7552
	ds_load_u8 v113, v61 offset:7296
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v99, v105, v104, 0xc0c0004
	v_perm_b32 v100, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v101, v109, v108, 0xc0c0004
	v_perm_b32 v102, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v63, v88, v87, 0xc0c0004
	v_lshl_or_b32 v97, v94, 16, v96
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v64, v123, v122, 0xc0c0004
	ds_load_u8 v65, v61 offset:5376
	ds_load_u8 v86, v61 offset:5120
	ds_load_u8 v87, v61 offset:5888
	ds_load_u8 v88, v61 offset:5632
	ds_load_u8 v114, v61 offset:7040
	ds_load_u8 v122, v61 offset:6784
	ds_load_u8 v123, v61 offset:6528
	ds_load_u8 v124, v61 offset:6272
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	v_lshl_or_b32 v96, v98, 16, v95
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v92, v110, v93, 0xc0c0004
	ds_load_u8 v89, v61 offset:4352
	ds_load_u8 v93, v61 offset:4096
	ds_load_u8 v110, v61 offset:4864
	ds_load_u8 v125, v61 offset:4608
	ds_load_u8 v126, v62 offset:720
	ds_load_u8 v127, v62 offset:736
	ds_load_u8 v128, v62 offset:704
	ds_load_u8 v129, v61 offset:6016
	ds_load_u8 v130, v61 offset:5760
	ds_load_u8 v131, v61 offset:5504
	ds_load_u8 v132, v61 offset:5248
	v_lshl_or_b32 v95, v100, 16, v99
	v_lshl_or_b32 v94, v102, 16, v101
	v_perm_b32 v103, v141, v140, 0xc0c0004
	v_perm_b32 v104, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v59, v111, v59, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v98, v113, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[94:97], v[17:20], v[66:73] neg_lo:[1,1,0]
	v_lshl_or_b32 v17, v104, 16, v103
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v65, v86, v65, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v93, v93, v89, 0xc0c0004
	v_perm_b32 v86, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v110, v125, v110, 0xc0c0004
	v_lshl_or_b32 v89, v64, 16, v63
	v_lshl_or_b32 v88, v92, 16, v91
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v64, v128, v126, 0xc0c0004
	v_lshl_or_b32 v87, v86, 16, v65
	v_lshl_or_b32 v86, v110, 16, v93
	v_perm_b32 v65, v127, v133, 0xc0c0004
	ds_load_u8 v63, v62 offset:624
	ds_load_u8 v91, v62 offset:800
	ds_load_u8 v92, v62 offset:768
	ds_load_u8 v93, v62 offset:784
	ds_load_u8 v110, v62 offset:848
	ds_load_u8 v125, v62 offset:864
	ds_load_u8 v126, v62 offset:832
	ds_load_u8 v127, v62 offset:816
	v_wmma_i32_16x16x16_iu8 v[74:81], v[86:89], v[82:85], v[74:81] neg_lo:[1,1,0]
	v_lshl_or_b32 v89, v65, 16, v64
	v_perm_b32 v64, v137, v134, 0xc0c0004
	ds_load_u8 v65, v61 offset:11520
	ds_load_u8 v128, v61 offset:11264
	ds_load_u8 v133, v61 offset:12032
	ds_load_u8 v134, v61 offset:11776
	v_perm_b32 v87, v117, v115, 0xc0c0004
	v_perm_b32 v115, v121, v118, 0xc0c0004
	ds_load_u8 v117, v61 offset:10496
	ds_load_u8 v118, v61 offset:10240
	v_perm_b32 v86, v136, v135, 0xc0c0004
	v_perm_b32 v99, v124, v123, 0xc0c0004
	v_perm_b32 v100, v122, v114, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v101, v132, v131, 0xc0c0004
	v_perm_b32 v102, v130, v129, 0xc0c0004
	v_lshl_or_b32 v88, v86, 16, v64
	v_lshl_or_b32 v20, v59, 16, v98
	v_lshl_or_b32 v19, v100, 16, v99
	v_perm_b32 v97, v150, v149, 0xc0c0004
	v_lshl_or_b32 v18, v102, 16, v101
	v_perm_b32 v98, v148, v147, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v91, v91, v127, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v65, v128, v65, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[66:73], v[17:20], v[82:85], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v128, v134, v133, 0xc0c0004
	ds_load_u8 v133, v61 offset:9984
	ds_load_u8 v134, v61 offset:9728
	ds_load_u8 v136, v61 offset:11136
	ds_load_u8 v137, v61 offset:10880
	ds_load_u8 v142, v61 offset:10624
	ds_load_u8 v143, v61 offset:10368
	v_lshl_or_b32 v18, v98, 16, v97
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v61 offset:8448
	ds_load_u8 v144, v61 offset:8192
	ds_load_u8 v145, v61 offset:8960
	ds_load_u8 v146, v61 offset:8704
	v_lshl_or_b32 v65, v128, 16, v65
	ds_load_u8 v128, v62 offset:880
	v_perm_b32 v63, v116, v63, 0xc0c0004
	v_perm_b32 v116, v120, v119, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v87, v63, 16, v87
	v_lshl_or_b32 v86, v116, 16, v115
	ds_load_u8 v63, v61 offset:11008
	ds_load_u8 v64, v61 offset:10752
	ds_load_u8 v115, v61 offset:9472
	ds_load_u8 v116, v61 offset:9216
	ds_load_u8 v119, v61 offset:12160
	ds_load_u8 v120, v61 offset:11904
	ds_load_u8 v121, v61 offset:11648
	ds_load_u8 v135, v61 offset:11392
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v61 offset:9088
	ds_load_u8 v157, v61 offset:8832
	ds_load_u8 v158, v61 offset:8576
	ds_load_u8 v159, v61 offset:8320
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v96, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v95, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v118, v144, v118, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v144, v146, v145, 0xc0c0004
	v_lshl_or_b32 v19, v96, 16, v95
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v62 offset:976
	ds_load_u8 v151, v62 offset:992
	ds_load_u8 v152, v62 offset:960
	ds_load_u8 v153, v62 offset:912
	ds_load_u8 v154, v62 offset:944
	ds_load_u8 v155, v62 offset:928
	ds_load_u8 v156, v62 offset:896
	v_lshl_or_b32 v62, v144, 16, v118
	v_lshl_or_b32 v64, v63, 16, v117
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v59, v135, v121, 0xc0c0004
	v_lshl_or_b32 v63, v133, 16, v115
	v_perm_b32 v94, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v100, v157, v134, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v99, v159, v158, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[74:81], v[62:65], v[86:89], v[74:81] neg_lo:[1,1,0]
	v_lshl_or_b32 v20, v94, 16, v59
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v17, v100, 16, v99
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v63, v151, v90, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v62, v152, v116, 0xc0c0004
	ds_load_u8 v115, v61 offset:15616
	ds_load_u8 v116, v61 offset:15360
	ds_load_u8 v117, v61 offset:16128
	ds_load_u8 v118, v61 offset:15872
	v_wmma_i32_16x16x16_iu8 v[66:73], v[17:20], v[86:89], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v90, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v64, v156, v153, 0xc0c0004
	v_lshl_or_b32 v65, v63, 16, v62
	v_perm_b32 v62, v126, v110, 0xc0c0004
	v_perm_b32 v63, v125, v128, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v64, v90, 16, v64
	v_perm_b32 v90, v92, v93, 0xc0c0004
	ds_load_u8 v92, v61 offset:14592
	ds_load_u8 v93, v61 offset:14336
	ds_load_u8 v110, v61 offset:15104
	ds_load_u8 v125, v61 offset:14848
	ds_load_u8 v126, v61 offset:13568
	ds_load_u8 v127, v61 offset:13312
	ds_load_u8 v128, v61 offset:14080
	ds_load_u8 v133, v61 offset:13824
	ds_load_u8 v144, v61 offset:16256
	ds_load_u8 v145, v61 offset:16000
	ds_load_u8 v146, v61 offset:15744
	ds_load_u8 v151, v61 offset:15488
	v_lshl_or_b32 v63, v63, 16, v62
	v_lshl_or_b32 v62, v91, 16, v90
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v116, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v110, v125, v110, 0xc0c0004
	ds_load_u8 v117, v61 offset:12544
	ds_load_u8 v118, v61 offset:12288
	ds_load_u8 v152, v61 offset:13056
	ds_load_u8 v153, v61 offset:12800
	ds_load_u8 v154, v61 offset:15232
	ds_load_u8 v155, v61 offset:14976
	ds_load_u8 v156, v61 offset:14720
	ds_load_u8 v160, v61 offset:14464
	ds_load_u8 v125, v61 offset:14208
	ds_load_u8 v161, v61 offset:13952
	ds_load_u8 v162, v61 offset:13696
	ds_load_u8 v163, v61 offset:13440
	v_lshl_or_b32 v93, v116, 16, v115
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	v_lshl_or_b32 v92, v110, 16, v92
	ds_load_u8 v110, v61 offset:13184
	ds_load_u8 v115, v61 offset:12928
	ds_load_u8 v116, v61 offset:12672
	ds_load_u8 v61, v61 offset:12416
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v127, v133, v128, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v59, v151, v146, 0xc0c0004
	v_perm_b32 v82, v145, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v91, v127, 16, v126
	v_lshl_or_b32 v20, v82, 16, v59
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v90, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v117, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v84, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v94, v161, v125, 0xc0c0004
	v_perm_b32 v83, v160, v156, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v85, v163, v162, 0xc0c0004
	v_lshl_or_b32 v90, v117, 16, v90
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v95, v115, v110, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v61, v116, 0xc0c0004
	v_lshl_or_b32 v19, v84, 16, v83
	v_lshl_or_b32 v18, v94, 16, v85
	v_wmma_i32_16x16x16_iu8 v[74:81], v[90:93], v[62:65], v[74:81] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v17, v95, 16, v61
	v_cvt_f32_i32_e32 v61, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[17:20], v[62:65], v[66:73] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v17, v74
	v_cvt_f32_i32_e32 v19, v75
	v_cvt_f32_i32_e32 v20, v76
	v_cvt_f32_i32_e32 v62, v78
	v_cvt_f32_i32_e32 v63, v79
	v_cvt_f32_i32_e32 v64, v80
	v_cvt_f32_i32_e32 v65, v81
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
	s_ashr_i32 s0, s35, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s35, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v59, 16, v0
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 8
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v21, s27, v21
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s0, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s48
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v18, v40, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v39, v39, s1, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v40.h, v60.l
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v74, 0x7632
	v_mov_b16_e32 v86.h, v40.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v39, v39, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v18, v18, s[12:15], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v0, v16, v40
	v_mul_f32_e32 v13, v13, v40
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v15, v15, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v85.h, v40.l
	v_mov_b16_e32 v84.h, v40.l
	v_mov_b32_e32 v60, 0x5410
	v_cmp_eq_u32_e32 vcc_lo, 0, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v15, v55, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v83.h, v40.l
	v_mov_b16_e32 v80.h, v40.l
	v_mov_b16_e32 v82.h, v40.l
	v_mov_b16_e32 v79.h, v40.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v15, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v81.h, v40.l
	v_mov_b16_e32 v75.h, v40.l
	v_mov_b16_e32 v78.h, v40.l
	v_mov_b16_e32 v77.h, v40.l
	v_mov_b16_e32 v16.h, v40.l
	v_mov_b16_e32 v76.h, v40.l
	v_mov_b16_e32 v87.h, v40.l
	v_mov_b16_e32 v88.h, v40.l
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s34, s34, s27
	s_mov_b32 s0, 0x76543210
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v38, 1, v38
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v21, s34, s33, v21
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
	s_and_b32 s25, s25, 0xffff
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v21, v21, v38, 1
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v1, v1, v40 :: v_dual_lshlrev_b32 v18, 16, v18
	v_mul_f32_e32 v7, v7, v40
	v_mul_f32_e32 v6, v6, v40
	v_mul_f32_e32 v5, v5, v40
	v_mul_f32_e32 v4, v4, v40
	v_mul_f32_e32 v3, v3, v40
	v_mul_f32_e32 v2, v2, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v1, v45, v22
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v1, 16, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v0, v0, v56, v36
	v_fma_f32 v47, v7, v47, v28
	v_fma_f32 v46, v6, v46, v27
	v_fma_f32 v44, v5, v44, v26
	v_fma_f32 v43, v4, v43, v25
	v_fma_f32 v42, v3, v42, v24
	v_fma_f32 v41, v2, v41, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v36, v0, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v58, v1 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v57 offset:34816
	ds_load_b128 v[4:7], v57 offset:34832
	v_mul_f32_e32 v14, v14, v40
	v_mul_f32_e32 v12, v12, v40
	v_mul_f32_e32 v11, v11, v40
	v_mul_f32_e32 v10, v10, v40
	v_mul_f32_e32 v9, v9, v40
	v_mul_f32_e32 v8, v8, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v13, v53, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v23, v41, s3
	v_cndmask_b32_e64 v22, v22, v45, s3
	v_cndmask_b32_e64 v28, v28, v47, s3
	v_cndmask_b32_e64 v26, v26, v44, s3
	v_cndmask_b32_e64 v34, v34, v13, s3
	v_cndmask_b32_e64 v25, v25, v43, s3
	v_cndmask_b32_e64 v27, v27, v46, s3
	v_cndmask_b32_e64 v24, v24, v42, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.h, v40.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v0, v0, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v11, v51, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v1, v1, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v14, v54, v35
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v3, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v12, v52, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v5, v5, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v10, v50, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v35, v14, s3
	v_cndmask_b32_e64 v32, v32, v11, s3
	v_cndmask_b32_e64 v33, v33, v12, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[12:15], v57 offset:35344
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v10, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v2, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v49, v9, v49, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v7, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v48, v8, v48, v29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[8:11], v57 offset:35328
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v1, v19, v23
	v_fma_f32 v0, v0, v17, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v49, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v6, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v48, s3
	v_cndmask_b32_e64 v1, v23, v1, s2
	v_cndmask_b32_e64 v0, v22, v0, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v4, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v6, v64, v28
	v_fma_f32 v7, v7, v65, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v0, v0, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v4, v62, v26
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v12, v12, v18
	v_mul_f32_e32 v13, v13, v18
	v_mul_f32_e32 v15, v15, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v28, v6, s2
	v_cndmask_b32_e64 v4, v26, v4, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v12, v70, v34
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v10, v10, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v13, v71, v35
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v8, v18
	v_mul_f32_e32 v11, v11, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v15, v73, v36
	v_fma_f32 v10, v10, v68, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v34, v12, s2
	v_cndmask_b32_e64 v13, v35, v13, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v8, v66, v30
	v_fma_f32 v11, v11, v69, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v32, v10, s2
	v_cndmask_b32_e64 v15, v36, v15, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v13, v13, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v30, v8, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v10, v10, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v33, v11, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v15, v15, v15 :: v_dual_max_f32 v12, 0, v12
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v9, v9, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v15, 0, v15 :: v_dual_mul_f32 v12, v12, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v9, v67, v31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v10, v10, v10 :: v_dual_mul_f32 v13, v13, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v29, v7, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v11, 0, v11
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v15, v15, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v86.l, v12.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v31, v9, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v6, v6, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v3, v61, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v85.l, v13.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v7, v7, v7
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v8, v8, v8 :: v_dual_mul_f32 v11, v11, v11
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v9, v9, v9 :: v_dual_and_b32 v30, 1, v86
	v_max_f32_e32 v6, 0, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v84.l, v10.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v25, v3, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v29, 1, v85
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v63, v27
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v7, 0, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v83.l, v11.h
	v_add3_u32 v12, v12, v30, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v2, v20, v24
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v9, 0, v9 :: v_dual_mul_f32 v6, v6, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v84
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v14, v14, v18 :: v_dual_max_f32 v3, v3, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v13, v13, v29, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v27, v5, s2
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v4, v4, v4 :: v_dual_mul_f32 v7, v7, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.l, v12.h
	v_and_b32_e32 v27, 1, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v24, v2, s2
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v9, v9, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v80.l, v6.h
	v_add3_u32 v10, v10, v28, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v0, 0, v0 :: v_dual_max_f32 v3, 0, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v82.l, v8.h
	v_mov_b16_e32 v79.l, v7.h
	v_add3_u32 v11, v11, v27, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v5, v5, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v81.l, v9.h
	v_mov_b16_e32 v11.l, v10.h
	v_and_b32_e32 v24, 1, v80
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v14, v72, v37
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v0, v0, v0 :: v_dual_mul_f32 v3, v3, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v26, 1, v82
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v2, 0, v2 :: v_dual_and_b32 v23, 1, v79
	v_max_f32_e32 v5, 0, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v25, 1, v81
	v_add3_u32 v6, v6, v24, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v37, v14, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v75.l, v3.h
	v_add3_u32 v8, v8, v26, 0x7fff
	v_add3_u32 v7, v7, v23, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v5, v5, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v6.h
	v_cndmask_b32_e32 v6, 0x3276, v74, vcc_lo
	v_add3_u32 v9, v9, v25, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v1, 0, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v78.l, v4.h
	v_mov_b16_e32 v9.l, v8.h
	v_and_b32_e32 v18, 1, v75
	v_mov_b16_e32 v77.l, v5.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v14, 0, v14 :: v_dual_mul_f32 v1, v1, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v3, v3, v18, 0x7fff
	v_and_b32_e32 v22, 1, v78
	v_and_b32_e32 v20, 1, v77
	v_mov_b16_e32 v16.l, v1.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v14, v14, v14 :: v_dual_and_b32 v17, 1, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v4, v4, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v5, v5, v20, 0x7fff
	v_mov_b16_e32 v76.l, v2.h
	v_mov_b16_e32 v88.l, v14.h
	v_add3_u32 v0, v0, v17, 0x7fff
	v_mov_b16_e32 v5.l, v4.h
	v_and_b32_e32 v16, 1, v16
	v_mov_b16_e32 v87.l, v15.h
	v_cndmask_b32_e32 v4, 0x1054, v60, vcc_lo
	v_and_b32_e32 v32, 1, v88
	v_lshl_or_b32 v6, v6, 8, v6
	v_add3_u32 v1, v1, v16, 0x7fff
	v_mov_b16_e32 v1.l, v0.h
	v_and_b32_e32 v19, 1, v76
	v_and_b32_e32 v31, 1, v87
	v_lshl_or_b32 v4, v4, 8, v4
	v_add3_u32 v14, v14, v32, 0x7fff
	v_and_b32_e32 v6, 0x760076, v6
	v_add3_u32 v2, v2, v19, 0x7fff
	v_add3_u32 v0, v15, v31, 0x7fff
	v_and_b32_e32 v4, 0x540054, v4
	v_mov_b16_e32 v0.l, v14.h
	v_lshl_or_b32 v6, v6, 4, v6
	v_mov_b16_e32 v3.l, v2.h
	v_cndmask_b32_e32 v2, v5, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v5, vcc_lo
	v_lshl_or_b32 v4, v4, 4, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v8, v9, v13 :: v_dual_cndmask_b32 v5, v7, v3
	v_cndmask_b32_e32 v3, v3, v7, vcc_lo
	v_cndmask_b32_e32 v7, v13, v9, vcc_lo
	v_dual_cndmask_b32 v9, v0, v11 :: v_dual_cndmask_b32 v0, v11, v0
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x5040504, v4
	v_and_b32_e32 v11, 0x7060706, v6
	v_permlanex16_b32 v3, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v2, v10
	v_perm_b32 v1, v1, v2, v11
	v_perm_b32 v2, v3, v5, v10
	v_perm_b32 v3, v3, v5, v11
	v_perm_b32 v4, v6, v7, v10
	v_perm_b32 v5, v6, v7, v11
	v_perm_b32 v6, v8, v9, v10
	v_perm_b32 v7, v8, v9, v11
	s_clause 0x1
	buffer_store_b128 v[0:3], v21, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v21, s[24:27], 0 offen offset:256
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 49
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14708
; TotalNumSgprs: 51
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 51
; NumVGPRsForWavesPerEU: 256
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
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
