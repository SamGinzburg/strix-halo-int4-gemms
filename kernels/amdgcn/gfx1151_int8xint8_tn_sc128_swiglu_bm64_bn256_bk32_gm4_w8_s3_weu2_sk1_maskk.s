	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
	v_mov_b32_e32 v180, v0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_mov_b32 s51, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v46, 3, v180
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v145, 3, v180
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s26, 63
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
	s_lshr_b32 s10, s10, 26
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
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v1, s26, v46
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v0, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v0
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
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 295 20 is_stmt 0              ; generate_amdgcn.py:295:20
	s_min_i32 s7, s6, 4
	.loc	1 296 29 is_stmt 1              ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s6, s7
	s_abs_i32 s5, s2
	s_cvt_f32_u32 s17, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s17
	v_readfirstlane_b32 s17, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v0, 56, v145
	s_mov_b32 s11, 0x31027000
	s_mov_b64 s[28:29], s[14:15]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s39, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s6
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s10, s17
	s_xor_b32 s17, s2, s7
	s_add_i32 s4, s10, s4
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s4, s5, s4
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s4, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s38, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
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
	s_lshl_b32 s30, s3, 5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s3, s31, 0x7f
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s4, s17
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v2, s30, v46
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s17, s4, s7
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s18, s26, s30
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s5, s3, 31
.Ltmp15:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s16
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s5, s5, 25
.Ltmp17:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s2, 6
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s31, 31
.Ltmp19:
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v43, v1, v0, s34
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s35, s27, 1
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s4, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s7, s3, s5
.Ltmp21:
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v1, s18, v43
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v151, 4, v180
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s6, 31
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s19, s35, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v5, s35, v151
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v152, 16, v151
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_and_b32 v208, 15, v180
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s30, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b32_e32 v4, s30, v152
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s33, s19
	v_lshl_add_u32 v154, v208, 4, v5
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 344 23 is_stmt 1              ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s31, v3
	v_cmp_gt_i32_e64 s4, s31, v4
	v_or_b32_e32 v42, 0x3f0, v180
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v157, s27, 5, v154
	v_add_nc_u32_e32 v0, s16, v154
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s5, s3, s2
	s_and_b32 s4, s4, s2
	s_cmp_gt_i32 s6, 63
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s16, v157
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s44, s30, 32
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v3, 0x80000000, v0, s5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v12, s44, v46
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v0, s27, v0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s19, s27, 6
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v2, s4
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s27, v2
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v13, s44, v151
	v_or_b32_e32 v14, s44, v152
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s16, s19
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s17, s26, 5
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v12
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v21, s16, v154
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v20, s18, s17, v43
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[36:37], v1, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[4:7], v3, s[36:39], 0 offen
	buffer_load_b128 v[8:11], v8, s[36:39], 0 offen
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s4
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v13
	v_cmp_gt_i32_e64 s5, s31, v14
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v22, s16, v157
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s27, v21
	v_add3_u32 v23, s16, s27, v157
	.loc	1 358 31 is_stmt 0              ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[12:15], v0, s[36:39], 0 offen
	buffer_load_b128 v[16:19], v1, s[36:39], 0 offen
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v0, 0x80000000, v20, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s3
	s_and_b32 s4, s5, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v1, 0x80000000, v21, vcc_lo
	v_cndmask_b32_e64 v3, 0x80000000, v22, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e64 v32, 0x80000000, v23, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[38:39], v0, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[20:23], v1, s[36:39], 0 offen
	buffer_load_b128 v[24:27], v3, s[36:39], 0 offen
	buffer_load_b128 v[28:31], v2, s[36:39], 0 offen
	buffer_load_b128 v[32:35], v32, s[36:39], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v40, 0, v145
	v_or_b32_e32 v153, 0x7f0, v180
	v_lshrrev_b32_e32 v0, 1, v180
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v1, 16, v208
	v_or_b32_e32 v2, 32, v208
	v_or_b32_e32 v3, 48, v208
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v41, v40, v145
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s6, 0x5f
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(9)
	ds_store_b64 v40, v[36:37] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v41, v[4:7]
	s_waitcnt vmcnt(7)
	ds_store_b128 v41, v[8:11] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v41, v[12:15] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v41, v[16:19] offset:20480
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v40, v[38:39] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v41, v[20:23] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v41, v[24:27] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v41, v[28:31] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v41, v[32:35] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_or_b32 v150, 0x70, v0, v208
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v33, 0x3f0, v180
	v_or_b32_e32 v19, 0x7f0, v180
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v4, 0x100, v150
	scratch_store_b32 off, v4, off offset:608 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x200, v150
	scratch_store_b32 off, v4, off offset:612 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x300, v150
	scratch_store_b32 off, v4, off offset:616 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x400, v150
	scratch_store_b32 off, v4, off offset:620 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x500, v150
	scratch_store_b32 off, v4, off offset:624 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x600, v150
	scratch_store_b32 off, v4, off offset:628 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x700, v150
	scratch_store_b32 off, v4, off offset:632 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x800, v150
	scratch_store_b32 off, v4, off offset:636 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x900, v150
	scratch_store_b32 off, v4, off offset:640 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xa00, v150
	scratch_store_b32 off, v4, off offset:644 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xb00, v150
	scratch_store_b32 off, v4, off offset:648 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xc00, v150
	scratch_store_b32 off, v4, off offset:652 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xd00, v150
	scratch_store_b32 off, v4, off offset:656 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xe00, v150
	scratch_store_b32 off, v4, off offset:660 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xf00, v150
	scratch_store_b32 off, v4, off offset:664 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1000, v150
	scratch_store_b32 off, v4, off offset:668 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1100, v150
	scratch_store_b32 off, v4, off offset:672 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1200, v150
	scratch_store_b32 off, v4, off offset:676 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1300, v150
	scratch_store_b32 off, v4, off offset:680 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1400, v150
	scratch_store_b32 off, v4, off offset:684 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1500, v150
	scratch_store_b32 off, v4, off offset:688 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1600, v150
	scratch_store_b32 off, v4, off offset:692 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1700, v150
	scratch_store_b32 off, v4, off offset:696 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1800, v150
	scratch_store_b32 off, v4, off offset:700 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1900, v150
	scratch_store_b32 off, v4, off offset:704 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1a00, v150
	scratch_store_b32 off, v4, off offset:708 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1b00, v150
	scratch_store_b32 off, v4, off offset:712 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1c00, v150
	scratch_store_b32 off, v4, off offset:716 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1d00, v150
	scratch_store_b32 off, v4, off offset:720 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1e00, v150
	scratch_store_b32 off, v4, off offset:724 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1f00, v150
	scratch_store_b32 off, v4, off offset:728 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x80, v150
	scratch_store_b32 off, v4, off offset:732 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x180, v150
	scratch_store_b32 off, v4, off offset:736 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x280, v150
	scratch_store_b32 off, v4, off offset:740 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x380, v150
	scratch_store_b32 off, v4, off offset:744 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x480, v150
	scratch_store_b32 off, v4, off offset:748 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x580, v150
	scratch_store_b32 off, v4, off offset:752 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x680, v150
	scratch_store_b32 off, v4, off offset:756 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x780, v150
	scratch_store_b32 off, v4, off offset:760 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x880, v150
	scratch_store_b32 off, v4, off offset:764 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x980, v150
	scratch_store_b32 off, v4, off offset:768 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xa80, v150
	scratch_store_b32 off, v4, off offset:772 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xb80, v150
	scratch_store_b32 off, v4, off offset:776 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xc80, v150
	scratch_store_b32 off, v4, off offset:780 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xd80, v150
	scratch_store_b32 off, v4, off offset:784 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xe80, v150
	scratch_store_b32 off, v4, off offset:788 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xf80, v150
	scratch_store_b32 off, v4, off offset:792 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1080, v150
	scratch_store_b32 off, v4, off offset:796 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1180, v150
	scratch_store_b32 off, v4, off offset:800 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1280, v150
	scratch_store_b32 off, v4, off offset:804 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1380, v150
	scratch_store_b32 off, v4, off offset:808 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1480, v150
	scratch_store_b32 off, v4, off offset:812 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1580, v150
	scratch_store_b32 off, v4, off offset:816 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1680, v150
	scratch_store_b32 off, v4, off offset:820 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1780, v150
	scratch_store_b32 off, v4, off offset:824 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1880, v150
	scratch_store_b32 off, v4, off offset:828 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1980, v150
	scratch_store_b32 off, v4, off offset:832 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1a80, v150
	scratch_store_b32 off, v4, off offset:836 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1b80, v150
	scratch_store_b32 off, v4, off offset:840 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1c80, v150
	scratch_store_b32 off, v4, off offset:844 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1d80, v150
	scratch_store_b32 off, v4, off offset:848 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1e80, v150
	scratch_store_b32 off, v4, off offset:852 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1f80, v150
	scratch_store_b32 off, v4, off offset:856 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr19
                                        ; implicit-def: $vgpr150
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
.LBB0_3:                                ; %Flow1174
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v4, s34, v208
	v_or_b32_e32 v1, s34, v1
	v_or_b32_e32 v2, s34, v2
	v_or_b32_e32 v3, s34, v3
	v_and_b32_e32 v5, 0xf0, v180
	s_ashr_i32 s45, s7, 7
	v_or_b32_e32 v148, s33, v180
	v_mul_lo_u32 v149, v4, s45
	v_mul_lo_u32 v156, v1, s45
	v_mul_lo_u32 v165, v2, s45
	v_mul_lo_u32 v166, v3, s45
	v_lshlrev_b32_e32 v3, 2, v5
	v_lshlrev_b32_e32 v1, 1, v180
	v_lshlrev_b32_e32 v4, 5, v180
	v_lshlrev_b32_e32 v2, 1, v5
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v148, off offset:576
	scratch_store_b32 off, v149, off offset:580
	scratch_store_b32 off, v5, off offset:860
	scratch_store_b32 off, v2, off offset:900
	scratch_store_b32 off, v3, off offset:904
	scratch_store_b32 off, v1, off offset:924
	scratch_store_b32 off, v4, off offset:928
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_and_or_b32 v150, 0x70, v0, v208
	v_dual_mov_b32 v54, 0 :: v_dual_and_b32 v1, 28, v1
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v58, 0
	v_mov_b32_e32 v75, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v0, 0x100, v150
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v207, 0
	scratch_store_b32 off, v0, off offset:608 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x200, v150
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v27, 0
	scratch_store_b32 off, v0, off offset:612 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v150
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v29, 0
	scratch_store_b32 off, v0, off offset:616 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v150
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v13, 0
	scratch_store_b32 off, v0, off offset:620 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x500, v150
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v11, 0
	scratch_store_b32 off, v0, off offset:624 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x600, v150
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v9, 0
	scratch_store_b32 off, v0, off offset:628 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x700, v150
	v_mov_b32_e32 v134, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v5, 0
	scratch_store_b32 off, v0, off offset:632 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x800, v150
	v_mov_b32_e32 v130, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v161, 0
	scratch_store_b32 off, v0, off offset:636 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x900, v150
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v253, 0
	scratch_store_b32 off, v0, off offset:640 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v150
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v245, 0
	scratch_store_b32 off, v0, off offset:644 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb00, v150
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v249, 0
	scratch_store_b32 off, v0, off offset:648 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v150
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v239, 0
	scratch_store_b32 off, v0, off offset:652 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd00, v150
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v235, 0
	scratch_store_b32 off, v0, off offset:656 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v150
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v225, 0
	scratch_store_b32 off, v0, off offset:660 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf00, v150
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v229, 0
	scratch_store_b32 off, v0, off offset:664 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1000, v150
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v221, 0
	scratch_store_b32 off, v0, off offset:668 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1100, v150
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v217, 0
	scratch_store_b32 off, v0, off offset:672 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1200, v150
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v215, 0
	scratch_store_b32 off, v0, off offset:676 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1300, v150
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v185, 0
	scratch_store_b32 off, v0, off offset:680 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1400, v150
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v209, 0
	scratch_store_b32 off, v0, off offset:684 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1500, v150
	v_mov_b32_e32 v228, 0
	v_mov_b32_e32 v226, 0
	v_mov_b32_e32 v232, 0
	v_mov_b32_e32 v230, 0
	scratch_store_b32 off, v0, off offset:688 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1600, v150
	v_mov_b32_e32 v224, 0
	v_mov_b32_e32 v222, 0
	v_mov_b32_e32 v220, 0
	v_mov_b32_e32 v218, 0
	scratch_store_b32 off, v0, off offset:692 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1700, v150
	v_mov_b32_e32 v212, 0
	v_mov_b32_e32 v206, 0
	v_mov_b32_e32 v210, 0
	v_mov_b32_e32 v216, 0
	scratch_store_b32 off, v0, off offset:696 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1800, v150
	v_mov_b32_e32 v214, 0
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s49, s6, 5
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	scratch_store_b32 off, v0, off offset:700 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1900, v150
	s_mov_b32 s16, 0
	s_add_i32 s14, s44, 32
	s_mov_b32 s15, 1
	s_and_b32 s5, s13, 0xffff
	scratch_store_b32 off, v0, off offset:704 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a00, v150
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_add_i32 s0, 0, 0x8000
	scratch_store_b32 off, v0, off offset:708 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b00, v150
	s_add_i32 s48, 0, 0x8800
	s_add_i32 s47, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s46, 0, 0x6000
	scratch_store_b32 off, v0, off offset:712 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c00, v150
	s_add_i32 s49, s49, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s17, s16
	scratch_store_b32 off, v0, off offset:716 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d00, v150
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	scratch_store_b32 off, v0, off offset:720 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e00, v150
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
	scratch_store_b32 off, v0, off offset:724 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f00, v150
	s_mov_b32 s51, s16
	s_mov_b32 s50, s16
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v46, off offset:584
	scratch_store_b32 off, v42, off offset:588
	scratch_store_b64 off, v[43:44], off offset:592
	v_mov_b32_e32 v59, 0
	scratch_store_b32 off, v0, off offset:728 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x80, v150
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v25, 0
	scratch_store_b32 off, v0, off offset:732 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x180, v150
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v147, 0
	v_mov_b32_e32 v135, 0
	scratch_store_b32 off, v0, off offset:736 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x280, v150
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v131, 0
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v21, 0
	scratch_store_b32 off, v0, off offset:740 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x380, v150
	v_mov_b32_e32 v233, 0
	scratch_store_b32 off, v0, off offset:744 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x480, v150
	scratch_store_b32 off, v0, off offset:748 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x580, v150
	scratch_store_b32 off, v0, off offset:752 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x680, v150
	scratch_store_b32 off, v0, off offset:756 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x780, v150
	scratch_store_b32 off, v0, off offset:760 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x880, v150
	scratch_store_b32 off, v0, off offset:764 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x980, v150
	scratch_store_b32 off, v0, off offset:768 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa80, v150
	scratch_store_b32 off, v0, off offset:772 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb80, v150
	scratch_store_b32 off, v0, off offset:776 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc80, v150
	scratch_store_b32 off, v0, off offset:780 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd80, v150
	scratch_store_b32 off, v0, off offset:784 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe80, v150
	scratch_store_b32 off, v0, off offset:788 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf80, v150
	scratch_store_b32 off, v0, off offset:792 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1080, v150
	scratch_store_b32 off, v0, off offset:796 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1180, v150
	scratch_store_b32 off, v0, off offset:800 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1280, v150
	scratch_store_b32 off, v0, off offset:804 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1380, v150
	scratch_store_b32 off, v0, off offset:808 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1480, v150
	scratch_store_b32 off, v0, off offset:812 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1580, v150
	scratch_store_b32 off, v0, off offset:816 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1680, v150
	scratch_store_b32 off, v0, off offset:820 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1780, v150
	scratch_store_b32 off, v0, off offset:824 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1880, v150
	scratch_store_b32 off, v0, off offset:828 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1980, v150
	scratch_store_b32 off, v0, off offset:832 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a80, v150
	scratch_store_b32 off, v0, off offset:836 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b80, v150
	scratch_store_b32 off, v0, off offset:840 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c80, v150
	scratch_store_b32 off, v0, off offset:844 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d80, v150
	scratch_store_b32 off, v0, off offset:848 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e80, v150
	scratch_store_b32 off, v0, off offset:852 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f80, v150
	scratch_store_b32 off, v0, off offset:856 ; 4-byte Folded Spill
	v_and_b32_e32 v0, 32, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v0, 0, v3, v0
	v_dual_mov_b32 v3, 0 :: v_dual_add_nc_u32 v0, v0, v1
	v_mov_b32_e32 v1, 0
	scratch_store_b32 off, v0, off offset:600 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v0, off offset:604 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:180
	scratch_store_b32 off, v0, off offset:56
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s53, s50, 5
	s_mov_b32 s52, s30
	s_mov_b32 s30, s44
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s44, s14, s53
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v89, off offset:28
	scratch_store_b32 off, v88, off offset:24
	scratch_store_b32 off, v93, off offset:44
	scratch_store_b32 off, v92, off offset:40
	scratch_store_b32 off, v91, off offset:36
	scratch_store_b32 off, v90, off offset:32
	scratch_store_b32 off, v95, off offset:52
	scratch_store_b32 off, v94, off offset:48
	scratch_store_b32 off, v85, off offset:324
	scratch_store_b32 off, v66, off offset:328
	scratch_store_b32 off, v128, off offset:332
	scratch_store_b32 off, v63, off offset:320
	scratch_store_b32 off, v39, off offset:316
	scratch_store_b32 off, v59, off offset:312
	scratch_store_b32 off, v58, off offset:308
	scratch_store_b32 off, v69, off offset:304
	scratch_store_b32 off, v54, off offset:300
	scratch_store_b32 off, v62, off offset:296
	scratch_store_b32 off, v44, off offset:292
	scratch_store_b32 off, v132, off offset:288
	scratch_store_b32 off, v25, off offset:284
	scratch_store_b32 off, v68, off offset:280
	scratch_store_b32 off, v38, off offset:276
	scratch_store_b32 off, v75, off offset:272
	scratch_store_b32 off, v53, off offset:268
	scratch_store_b32 off, v55, off offset:264
	scratch_store_b32 off, v30, off offset:260
	scratch_store_b32 off, v52, off offset:256
	scratch_store_b32 off, v71, off offset:252
	scratch_store_b32 off, v56, off offset:248
	scratch_store_b32 off, v45, off offset:244
	scratch_store_b32 off, v27, off offset:240
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v40, off offset:236
	scratch_store_b32 off, v29, off offset:232
	scratch_store_b32 off, v74, off offset:228
	scratch_store_b32 off, v26, off offset:224
	scratch_store_b32 off, v118, off offset:220
	scratch_store_b32 off, v24, off offset:216
	scratch_store_b32 off, v22, off offset:20
	scratch_store_b32 off, v21, off offset:212
	scratch_store_b32 off, v65, off offset:208
	scratch_store_b32 off, v18, off offset:204
	scratch_store_b32 off, v17, off offset:200
	scratch_store_b32 off, v15, off offset:196
	scratch_store_b32 off, v14, off offset:192
	scratch_store_b32 off, v48, off offset:188
	scratch_store_b32 off, v3, off offset:184
	scratch_store_b32 off, v1, off offset:176
	scratch_store_b32 off, v190, off offset:172
	scratch_store_b32 off, v147, off offset:168
	scratch_store_b32 off, v146, off offset:164
	scratch_store_b32 off, v189, off offset:16
	scratch_store_b32 off, v207, off offset:160
	scratch_store_b32 off, v134, off offset:156
	scratch_store_b32 off, v131, off offset:152
	scratch_store_b32 off, v135, off offset:148
	scratch_store_b32 off, v37, off offset:144
	scratch_store_b32 off, v130, off offset:140
	scratch_store_b32 off, v136, off offset:136
	scratch_store_b32 off, v28, off offset:12
	scratch_store_b32 off, v23, off offset:8
	scratch_store_b32 off, v64, off offset:132
	scratch_store_b32 off, v16, off offset:128
	scratch_store_b32 off, v13, off offset:4
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v12, off
	scratch_store_b32 off, v11, off offset:124
	scratch_store_b32 off, v10, off offset:120
	scratch_store_b32 off, v9, off offset:116
	scratch_store_b32 off, v8, off offset:112
	scratch_store_b32 off, v7, off offset:108
	scratch_store_b32 off, v6, off offset:104
	scratch_store_b32 off, v5, off offset:100
	v_or_b32_e32 v1, s44, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v136, s23 :: v_dual_add_nc_u32 v171, s0, v208
	v_dual_mov_b32 v135, s22 :: v_dual_add_nc_u32 v172, s51, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[1:2], null, s44, s26, v[43:44]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v134, s21 :: v_dual_add_nc_u32 v173, s1, v150
	v_dual_mov_b32 v132, s19 :: v_dual_mov_b32 v131, s18
	v_dual_mov_b32 v130, s17 :: v_dual_mov_b32 v129, s16
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s52, 31
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s51, s44, s35
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 25
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s51, s51, s33
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[146:147], v1, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v171 offset:832
	ds_load_u8 v2, v171 offset:768
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s52, s52, s1
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s53, s51, s27
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s52, s52, 7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v133, s20
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s54, s52, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s52, s45
	s_cselect_b32 s1, -1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v171 offset:960
	ds_load_u8 v3, v171 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v171 offset:576
	ds_load_u8 v4, v171 offset:512
	v_lshl_or_b32 v12, v2, 16, v1
	ds_load_u8 v1, v171 offset:320
	ds_load_u8 v2, v171 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v171 offset:704
	ds_load_u8 v5, v171 offset:640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v4, 16, v3
	ds_load_u8 v2, v171 offset:448
	ds_load_u8 v3, v171 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_lshl_or_b32 v10, v2, 16, v1
	ds_load_u8 v1, v171 offset:64
	ds_load_u8 v2, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v171 offset:192
	ds_load_u8 v3, v171 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v2, 16, v1
	ds_load_u8 v1, v172 offset:3328
	ds_load_u8 v2, v172 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v172 offset:3840
	ds_load_u8 v3, v172 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v172 offset:2304
	ds_load_u8 v4, v172 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v172 offset:2816
	ds_load_u8 v5, v172 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v4, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v1
	ds_load_u8 v1, v172 offset:1280
	ds_load_u8 v2, v172 offset:1024
	v_lshl_or_b32 v3, v5, 16, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v172 offset:1792
	ds_load_u8 v5, v172 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v5, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v172 offset:256
	ds_load_u8 v5, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v5, v1, 0xc0c0004
	ds_load_u8 v5, v172 offset:768
	ds_load_u8 v6, v172 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v172 offset:3456
	ds_load_u8 v6, v172 offset:3200
	v_wmma_i32_16x16x16_iu8 v[113:120], v[1:4], v[9:12], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v172 offset:3968
	ds_load_u8 v7, v172 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v172 offset:2432
	ds_load_u8 v8, v172 offset:2176
	v_lshl_or_b32 v16, v6, 16, v5
	ds_load_u8 v5, v172 offset:1408
	ds_load_u8 v6, v172 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v172 offset:2944
	ds_load_u8 v13, v172 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v13, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v15, v8, 16, v7
	ds_load_u8 v6, v172 offset:1920
	ds_load_u8 v7, v172 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v14, v6, 16, v5
	ds_load_u8 v5, v172 offset:384
	ds_load_u8 v6, v172 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v172 offset:896
	ds_load_u8 v7, v172 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v6, 16, v5
	ds_load_u8 v5, v171 offset:848
	ds_load_u8 v6, v171 offset:784
	v_wmma_i32_16x16x16_iu8 v[105:112], v[13:16], v[9:12], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v171 offset:976
	ds_load_u8 v7, v171 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v171 offset:592
	ds_load_u8 v8, v171 offset:528
	v_lshl_or_b32 v28, v6, 16, v5
	ds_load_u8 v5, v171 offset:336
	ds_load_u8 v6, v171 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v171 offset:720
	ds_load_u8 v17, v171 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v17, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v8, 16, v7
	ds_load_u8 v6, v171 offset:464
	ds_load_u8 v7, v171 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v26, v6, 16, v5
	ds_load_u8 v5, v171 offset:16
	ds_load_u8 v6, v171 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v6, 0xc0c0004
	ds_load_u8 v6, v171 offset:208
	ds_load_u8 v7, v171 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v6, 16, v5
	ds_load_u8 v5, v171 offset:864
	ds_load_u8 v6, v171 offset:800
	v_wmma_i32_16x16x16_iu8 v[81:88], v[1:4], v[25:28], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[13:16], v[25:28], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v171 offset:992
	ds_load_u8 v7, v171 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v171 offset:608
	ds_load_u8 v8, v171 offset:544
	v_lshl_or_b32 v32, v6, 16, v5
	ds_load_u8 v5, v171 offset:352
	ds_load_u8 v6, v171 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v171 offset:736
	ds_load_u8 v17, v171 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v17, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v8, 16, v7
	ds_load_u8 v6, v171 offset:480
	ds_load_u8 v7, v171 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v30, v6, 16, v5
	ds_load_u8 v5, v171 offset:32
	ds_load_u8 v6, v171 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v6, 0xc0c0004
	ds_load_u8 v6, v171 offset:224
	ds_load_u8 v7, v171 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v6, 16, v5
	ds_load_u8 v5, v171 offset:880
	ds_load_u8 v6, v171 offset:816
	v_wmma_i32_16x16x16_iu8 v[49:56], v[1:4], v[29:32], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v6, s0, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	ds_load_u8 v7, v171 offset:944
	v_wmma_i32_16x16x16_iu8 v[41:48], v[13:16], v[29:32], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v171 offset:624
	ds_load_u8 v8, v171 offset:560
	v_lshl_or_b32 v140, v6, 16, v5
	ds_load_u8 v5, v171 offset:368
	ds_load_u8 v6, v171 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v171 offset:752
	ds_load_u8 v17, v171 offset:688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v17, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v139, v8, 16, v7
	ds_load_u8 v6, v171 offset:496
	ds_load_u8 v7, v171 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v138, v6, 16, v5
	ds_load_u8 v5, v171 offset:112
	ds_load_u8 v6, v171 offset:48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v171 offset:240
	ds_load_u8 v7, v171 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v6, 16, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v5, v173 offset:3328
	ds_load_u8 v6, v173 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v173 offset:3840
	ds_load_u8 v7, v173 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v173 offset:2304
	ds_load_u8 v8, v173 offset:2048
	v_lshl_or_b32 v144, v6, 16, v5
	ds_load_u8 v5, v173 offset:1280
	ds_load_u8 v6, v173 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v173 offset:2816
	ds_load_u8 v17, v173 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v17, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v143, v8, 16, v7
	ds_load_u8 v6, v173 offset:1792
	ds_load_u8 v7, v173 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v142, v6, 16, v5
	ds_load_u8 v5, v173 offset:256
	ds_load_u8 v6, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v173 offset:768
	ds_load_u8 v7, v173 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v141, v6, 16, v5
	ds_load_u8 v5, v173 offset:3456
	ds_load_u8 v6, v173 offset:3200
	v_wmma_i32_16x16x16_iu8 v[121:128], v[141:144], v[9:12], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[141:144], v[25:28], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[141:144], v[29:32], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v173 offset:3968
	ds_load_u8 v7, v173 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v173 offset:2432
	ds_load_u8 v8, v173 offset:2176
	v_lshl_or_b32 v177, v6, 16, v5
	ds_load_u8 v5, v173 offset:1408
	ds_load_u8 v6, v173 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v173 offset:2944
	ds_load_u8 v17, v173 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v17, v8, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[1:4], v[137:140], v[129:136] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v176, v8, 16, v7
	ds_load_u8 v6, v173 offset:1920
	ds_load_u8 v7, v173 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v175, v6, 16, v5
	ds_load_u8 v5, v173 offset:384
	ds_load_u8 v6, v173 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v173 offset:896
	ds_load_u8 v7, v173 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v174, v6, 16, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[13:16], v[137:140], v[129:136] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[97:104], v[174:177], v[9:12], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[174:177], v[25:28], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[174:177], v[29:32], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[141:144], v[137:140], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[174:177], v[137:140], v[129:136] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v129, v171 offset:1792
	ds_load_u8 v130, v171 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v129, v130, 0xc0c0004
	ds_load_u8 v130, v171 offset:1920
	ds_load_u8 v131, v171 offset:1984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v130, v131, 0xc0c0004
	ds_load_u8 v131, v171 offset:1536
	ds_load_u8 v132, v171 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v131, v132, 0xc0c0004
	ds_load_u8 v132, v171 offset:1664
	ds_load_u8 v133, v171 offset:1728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v132, v133, 0xc0c0004
	v_lshl_or_b32 v132, v130, 16, v129
	ds_load_u8 v129, v171 offset:1280
	ds_load_u8 v130, v171 offset:1344
	v_lshl_or_b32 v131, v133, 16, v131
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v129, v130, 0xc0c0004
	ds_load_u8 v130, v171 offset:1408
	ds_load_u8 v133, v171 offset:1472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v130, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v130, 16, v129
	ds_load_u8 v129, v171 offset:1024
	ds_load_u8 v133, v171 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v129, v133, 0xc0c0004
	ds_load_u8 v133, v171 offset:1152
	ds_load_u8 v134, v171 offset:1216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v133, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v133, 16, v129
	ds_load_u8 v133, v172 offset:7424
	ds_load_u8 v134, v172 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v172 offset:7936
	ds_load_u8 v135, v172 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v172 offset:6400
	ds_load_u8 v136, v172 offset:6144
	v_lshl_or_b32 v144, v134, 16, v133
	ds_load_u8 v133, v172 offset:5376
	ds_load_u8 v134, v172 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v172 offset:6912
	ds_load_u8 v137, v172 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v143, v136, 16, v135
	ds_load_u8 v134, v172 offset:5888
	ds_load_u8 v135, v172 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	v_lshl_or_b32 v142, v134, 16, v133
	ds_load_u8 v133, v172 offset:4352
	ds_load_u8 v134, v172 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v172 offset:4864
	ds_load_u8 v135, v172 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v141, v134, 16, v133
	ds_load_u8 v133, v171 offset:1872
	ds_load_u8 v134, v171 offset:1808
	v_wmma_i32_16x16x16_iu8 v[113:120], v[141:144], v[129:132], v[113:120] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v113, v113
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v114, v114
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v171 offset:2000
	ds_load_u8 v135, v171 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v171 offset:1616
	ds_load_u8 v136, v171 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v171 offset:1744
	ds_load_u8 v137, v171 offset:1680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v137, v136, 0xc0c0004
	v_lshl_or_b32 v136, v134, 16, v133
	ds_load_u8 v133, v171 offset:1360
	ds_load_u8 v134, v171 offset:1296
	v_lshl_or_b32 v135, v137, 16, v135
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v171 offset:1488
	ds_load_u8 v137, v171 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v137, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v134, 16, v133
	ds_load_u8 v133, v171 offset:1104
	ds_load_u8 v137, v171 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v137, v133, 0xc0c0004
	ds_load_u8 v137, v171 offset:1232
	ds_load_u8 v138, v171 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v133, v137, 16, v133
	ds_load_u8 v137, v171 offset:1888
	ds_load_u8 v138, v171 offset:1824
	v_wmma_i32_16x16x16_iu8 v[81:88], v[141:144], v[133:136], v[81:88] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v82, v82
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v81, v81
	scratch_store_b32 off, v81, off offset:528 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v81, v84
	v_mov_b32_e32 v84, v167
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v171 offset:2016
	ds_load_u8 v139, v171 offset:1952
	scratch_store_b32 off, v81, off offset:540 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v81, v83
	scratch_store_b32 off, v82, off offset:532 ; 4-byte Folded Spill
	v_mov_b32_e32 v83, v206
	scratch_store_b32 off, v81, off offset:544 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v81, v86
	v_mov_b32_e32 v86, v205
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v171 offset:1632
	ds_load_u8 v140, v171 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v171 offset:1760
	ds_load_u8 v174, v171 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v174, v140, 0xc0c0004
	v_lshl_or_b32 v140, v138, 16, v137
	ds_load_u8 v137, v171 offset:1376
	ds_load_u8 v138, v171 offset:1312
	v_lshl_or_b32 v139, v174, 16, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v171 offset:1504
	ds_load_u8 v174, v171 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v174, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v138, 16, v137
	ds_load_u8 v137, v171 offset:1120
	ds_load_u8 v174, v171 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v174, v137, 0xc0c0004
	ds_load_u8 v174, v171 offset:1248
	ds_load_u8 v175, v171 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v174, 16, v137
	ds_load_u8 v174, v171 offset:1904
	ds_load_u8 v175, v171 offset:1840
	v_wmma_i32_16x16x16_iu8 v[49:56], v[141:144], v[137:140], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v175, s0, v153
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v175, v175
	ds_load_u8 v176, v171 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	ds_load_u8 v176, v171 offset:1648
	ds_load_u8 v177, v171 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	ds_load_u8 v177, v171 offset:1776
	ds_load_u8 v178, v171 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v178, v177, 0xc0c0004
	v_lshl_or_b32 v177, v175, 16, v174
	ds_load_u8 v174, v171 offset:1392
	ds_load_u8 v175, v171 offset:1328
	v_lshl_or_b32 v176, v178, 16, v176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v175, v171 offset:1520
	ds_load_u8 v178, v171 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v178, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v175, 16, v174
	ds_load_u8 v174, v171 offset:1136
	ds_load_u8 v178, v171 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v178, v174, 0xc0c0004
	ds_load_u8 v178, v171 offset:1264
	ds_load_u8 v171, v171 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v171, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v174, v171, 16, v174
	v_wmma_i32_16x16x16_iu8 v[17:24], v[141:144], v[174:177], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v141, v172 offset:7552
	ds_load_u8 v142, v172 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v172 offset:8064
	ds_load_u8 v143, v172 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v172 offset:6528
	ds_load_u8 v144, v172 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v172 offset:7040
	ds_load_u8 v171, v172 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v171, v144, 0xc0c0004
	v_lshl_or_b32 v144, v142, 16, v141
	ds_load_u8 v141, v172 offset:5504
	ds_load_u8 v142, v172 offset:5248
	v_lshl_or_b32 v143, v171, 16, v143
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v172 offset:6016
	ds_load_u8 v171, v172 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v171, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v142, 16, v141
	ds_load_u8 v141, v172 offset:4480
	ds_load_u8 v171, v172 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v171, v141, 0xc0c0004
	ds_load_u8 v171, v172 offset:4992
	ds_load_u8 v172, v172 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v141, v171, 16, v141
	v_wmma_i32_16x16x16_iu8 v[105:112], v[141:144], v[129:132], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[141:144], v[133:136], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[141:144], v[137:140], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[141:144], v[174:177], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v141, v173 offset:7424
	ds_load_u8 v142, v173 offset:7168
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v105, v105
	scratch_store_b32 off, v113, off offset:404 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v116
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v186, v5
	scratch_store_b32 off, v105, off offset:468 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v105, v108
	scratch_store_b32 off, v113, off offset:408 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v115
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v5, v156, s52, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v188, v7
	scratch_store_b32 off, v105, off offset:472 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v105, v107
	scratch_store_b32 off, v113, off offset:412 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v118
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v7, v166, s52, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v187, v8
	scratch_store_b32 off, v105, off offset:476 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v105, v110
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v173 offset:7936
	ds_load_u8 v143, v173 offset:7680
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v110, v49
	scratch_store_b32 off, v113, off offset:416 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v117
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s1
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v8, s53, v157
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v118, v75
	v_cvt_f32_i32_e32 v108, v51
	v_cvt_f32_i32_e32 v107, v54
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v173 offset:6400
	ds_load_u8 v144, v173 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v173 offset:6912
	ds_load_u8 v171, v173 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v171, v144, 0xc0c0004
	v_lshl_or_b32 v144, v142, 16, v141
	ds_load_u8 v141, v173 offset:5376
	ds_load_u8 v142, v173 offset:5120
	v_lshl_or_b32 v143, v171, 16, v143
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v173 offset:5888
	ds_load_u8 v171, v173 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v171, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v142, 16, v141
	ds_load_u8 v141, v173 offset:4352
	ds_load_u8 v171, v173 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v171, v141, 0xc0c0004
	ds_load_u8 v171, v173 offset:4864
	ds_load_u8 v172, v173 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v141, v171, 16, v141
	ds_load_u8 v171, v173 offset:7552
	ds_load_u8 v172, v173 offset:7296
	v_wmma_i32_16x16x16_iu8 v[57:64], v[141:144], v[137:140], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[141:144], v[129:132], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[141:144], v[133:136], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[141:144], v[174:177], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v49, v58
	scratch_store_b32 off, v49, off offset:556 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v49, v60
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v173 offset:8064
	ds_load_u8 v178, v173 offset:7808
	scratch_store_b32 off, v49, off offset:564 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v49, v62
	scratch_store_b32 off, v49, off offset:568 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v49, v61
	scratch_store_b32 off, v49, off offset:552 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v49, v64
	scratch_store_b32 off, v49, off offset:572 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v178, v172, 0xc0c0004
	ds_load_u8 v178, v173 offset:6528
	ds_load_u8 v179, v173 offset:6272
	v_cvt_f32_i32_e32 v49, v63
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v105, off offset:480
	scratch_store_b32 off, v81, off offset:548
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v184, v172, 16, v171
	ds_load_u8 v171, v173 offset:5504
	ds_load_u8 v172, v173 offset:5248
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v105, v109
	scratch_store_b32 off, v113, off offset:420 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v120
	v_cvt_f32_i32_e32 v81, v88
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v49, off offset:536
	scratch_store_b32 off, v105, off offset:484
	v_cvt_f32_i32_e32 v105, v112
	scratch_store_b32 off, v113, off offset:424 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v119
	scratch_store_b32 off, v81, off offset:560 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v81, v90
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v105, off offset:488 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v105, v111
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v113, off offset:428 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	ds_load_u8 v179, v173 offset:7040
	ds_load_u8 v181, v173 offset:6784
	v_cvt_f32_i32_e32 v113, v122
	scratch_store_b32 off, v105, off offset:492 ; 4-byte Folded Spill
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v122, v80
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v111, v50
	v_cvt_f32_i32_e32 v109, v52
	v_cvt_f32_i32_e32 v105, v56
	v_cvt_f32_i32_e32 v90, v45
	v_cvt_f32_i32_e32 v88, v47
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v181, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v183, v179, 16, v178
	ds_load_u8 v172, v173 offset:6016
	ds_load_u8 v178, v173 offset:5760
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v179, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s51, v157
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v178, v172, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v178, v23
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v182, v172, 16, v171
	ds_load_u8 v171, v173 offset:4480
	ds_load_u8 v172, v173 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v173 offset:4992
	ds_load_u8 v173, v173 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v173, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v181, v172, 16, v171
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v171, v18
	v_cvt_f32_i32_e32 v172, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[97:104], v[181:184], v[129:132], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[181:184], v[133:136], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[181:184], v[137:140], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[181:184], v[174:177], v[9:16] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v181, v1
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s44, v151
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v115, v33
	scratch_load_b32 v33, off, off offset:600 ; 4-byte Folded Reload
	scratch_store_b32 off, v113, off offset:336 ; 4-byte Folded Spill
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s44, v152
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v113, v121
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v66, v66
	scratch_store_b32 off, v81, off offset:432 ; 4-byte Folded Spill
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s31, v1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v1, v148, s54, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v113, off offset:352
	scratch_store_b32 off, v106, off offset:464
	scratch_store_b32 off, v97, off offset:384
	v_cvt_f32_i32_e32 v113, v124
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v97, v100
	v_cvt_f32_i32_e32 v81, v89
	v_cvt_f32_i32_e32 v65, v65
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v113, off offset:340
	scratch_store_b32 off, v66, off offset:496
	scratch_store_b32 off, v97, off offset:372
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v1, v1, s[40:43], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v113, v123
	v_cvt_f32_i32_e32 v97, v99
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v81, off offset:448
	scratch_store_b32 off, v65, off offset:512
	v_cvt_f32_i32_e32 v81, v92
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v113, off offset:356
	scratch_store_b32 off, v97, off offset:388
	v_cvt_f32_i32_e32 v113, v126
	v_cvt_f32_i32_e32 v97, v102
	v_cvt_f32_i32_e32 v65, v68
	scratch_store_b32 off, v81, off offset:436 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v81, v91
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v113, off offset:344
	scratch_store_b32 off, v97, off offset:376
	scratch_store_b32 off, v65, off offset:500
	v_cvt_f32_i32_e32 v113, v125
	v_cvt_f32_i32_e32 v97, v101
	v_cvt_f32_i32_e32 v65, v67
	scratch_store_b32 off, v81, off offset:452 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v81, v94
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v113, off offset:360
	scratch_store_b32 off, v97, off offset:392
	scratch_store_b32 off, v65, off offset:516
	v_cvt_f32_i32_e32 v113, v128
	v_cvt_f32_i32_e32 v97, v104
	v_cvt_f32_i32_e32 v65, v70
	scratch_store_b32 off, v81, off offset:440 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v81, v93
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v113, off offset:348
	scratch_store_b32 off, v97, off offset:380
	scratch_store_b32 off, v65, off offset:504
	v_cvt_f32_i32_e32 v65, v69
	v_cvt_f32_i32_e32 v141, v9
	v_add_nc_u32_e32 v9, s27, v148
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v114, off offset:400
	scratch_store_b32 off, v81, off offset:456
	scratch_store_b32 off, v65, off offset:520
	scratch_store_b32 off, v98, off offset:368
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v113, v127
	v_cvt_f32_i32_e32 v97, v103
	v_cvt_f32_i32_e32 v81, v96
	v_cvt_f32_i32_e32 v65, v72
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v183, v3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v3, v149, s52, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v9, v9, s54, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v184, v6
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v6, v165, s52, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v113, off offset:364
	scratch_store_b32 off, v97, off offset:396
	scratch_store_b32 off, v81, off offset:444
	scratch_store_b32 off, v65, off offset:508
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v81, v95
	v_cvt_f32_i32_e32 v65, v71
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v182, v4
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v4, s53, v154
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v132, v85
	v_mov_b32_e32 v85, v209
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v130, v87
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v81, off offset:460
	scratch_store_b32 off, v65, off offset:524
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v119, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v174, v19
	v_cvt_f32_i32_e32 v175, v22
	v_cvt_f32_i32_e32 v176, v21
	v_cvt_f32_i32_e32 v177, v24
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v101, v26
	v_cvt_f32_i32_e32 v97, v25
	v_cvt_f32_i32_e32 v102, v28
	v_cvt_f32_i32_e32 v98, v27
	v_cvt_f32_i32_e32 v103, v30
	v_cvt_f32_i32_e32 v99, v29
	v_cvt_f32_i32_e32 v100, v32
	v_cvt_f32_i32_e32 v96, v31
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v189, v3, s[4:7], 0 offen
	v_mov_b32_e32 v87, v208
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s0, s15, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v137, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s0, 2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v138, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s15, s0, 0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v142, v11
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s0, s15, 11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v139, v14
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s52, s0, 0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v143, v13
	v_cvt_f32_i32_e32 v140, v16
	v_cvt_f32_i32_e32 v144, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s0, s15, 13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v127, v74
	v_cvt_f32_i32_e32 v126, v73
	v_cvt_f32_i32_e32 v125, v76
	v_cvt_f32_i32_e32 v124, v78
	v_cvt_f32_i32_e32 v123, v77
	v_cvt_f32_i32_e32 v121, v79
	v_cvt_f32_i32_e32 v106, v53
	v_cvt_f32_i32_e32 v104, v55
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v129, v57
	v_cvt_f32_i32_e32 v133, v59
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v95, v42
	v_cvt_f32_i32_e32 v94, v41
	v_cvt_f32_i32_e32 v93, v44
	v_cvt_f32_i32_e32 v92, v43
	v_cvt_f32_i32_e32 v91, v46
	v_cvt_f32_i32_e32 v89, v48
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v117, v36
	v_cvt_f32_i32_e32 v112, v35
	v_cvt_f32_i32_e32 v120, v38
	v_cvt_f32_i32_e32 v113, v37
	v_cvt_f32_i32_e32 v116, v40
	v_cvt_f32_i32_e32 v114, v39
	v_dual_mov_b32 v67, v145 :: v_dual_mov_b32 v36, v154
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s53, s50, 1
	s_mov_b32 s1, s46
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v33, v1 offset:36864
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s51, v154
	s_mov_b32 s51, s47
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_add_i32 s47, s0, 0
	s_mov_b32 s0, s48
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	s_add_i32 s48, s52, 0x8000
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x2
	buffer_load_u16 v190, v5, s[4:7], 0 offen
	buffer_load_u16 v191, v6, s[4:7], 0 offen
	buffer_load_u16 v192, v7, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[17:20], v1, s[36:39], 0 offen
	buffer_load_b128 v[21:24], v2, s[36:39], 0 offen
	buffer_load_b128 v[25:28], v4, s[36:39], 0 offen
	buffer_load_b128 v[29:32], v8, s[36:39], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v193, v9, s[40:43], 0 offen
	scratch_load_b32 v34, off, off offset:604 ; 4-byte Folded Reload
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s46, s47, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s50, s49
	s_mov_b32 s50, s53
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(0)
	ds_load_b128 v[13:16], v34 offset:36864
	ds_load_b128 v[9:12], v34 offset:36880
	ds_load_b128 v[5:8], v34 offset:37376
	ds_load_b128 v[1:4], v34 offset:37392
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v193, 16, v193
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v209, s52, v145
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v33, v193 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[193:196], v34 offset:36864
	ds_load_b128 v[197:200], v34 offset:36880
	ds_load_b128 v[201:204], v34 offset:37376
	ds_load_b128 v[205:208], v34 offset:37392
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_store_b64 v209, v[146:147] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v146, 4, v180
	v_mov_b32_e32 v34, v153
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v146, s47, v146
	ds_store_b128 v146, v[17:20]
	ds_store_b128 v146, v[21:24] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v146, v[25:28] offset:16384
	ds_store_b128 v146, v[29:32] offset:20480
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v20, 16, v192
	v_dual_mov_b32 v22, v150 :: v_dual_lshlrev_b32 v19, 16, v191
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v80, v13, v20 :: v_dual_lshlrev_b32 v17, 16, v189
	v_mul_f32_e32 v74, v14, v19
	v_dual_mul_f32 v75, v16, v19 :: v_dual_lshlrev_b32 v18, 16, v190
	v_mul_f32_e32 v66, v10, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v131, v14, v17
	v_mul_f32_e32 v37, v13, v17
	v_mul_f32_e32 v135, v16, v17
	v_mul_f32_e32 v136, v15, v17
	v_mul_f32_e32 v64, v14, v18
	v_mul_f32_e32 v52, v13, v18
	v_dual_mul_f32 v65, v16, v18 :: v_dual_mul_f32 v146, v10, v17
	v_dual_mul_f32 v54, v15, v18 :: v_dual_mul_f32 v69, v13, v19
	v_dual_mul_f32 v82, v16, v20 :: v_dual_mul_f32 v71, v15, v19
	v_dual_mul_f32 v192, v9, v18 :: v_dual_mul_f32 v81, v14, v20
	v_dual_mul_f32 v58, v9, v19 :: v_dual_mul_f32 v79, v15, v20
	v_dual_mul_f32 v147, v9, v17 :: v_dual_mul_f32 v78, v12, v20
	v_dual_mul_f32 v189, v12, v17 :: v_dual_mul_f32 v70, v9, v20
	v_dual_mul_f32 v190, v11, v17 :: v_dual_mul_f32 v191, v10, v18
	v_dual_mul_f32 v68, v11, v20 :: v_dual_mul_f32 v209, v12, v18
	v_dual_mul_f32 v39, v11, v18 :: v_dual_mul_f32 v16, v8, v17
	v_dual_mul_f32 v63, v12, v19 :: v_dual_mul_f32 v28, v6, v18
	v_dual_mul_f32 v53, v11, v19 :: v_dual_mul_f32 v30, v8, v18
	v_dual_mul_f32 v73, v10, v20 :: v_dual_mul_f32 v26, v7, v18
	v_dual_mul_f32 v15, v6, v17 :: v_dual_mul_f32 v44, v5, v19
	v_mul_f32_e32 v10, v5, v17
	v_dual_mul_f32 v9, v7, v17 :: v_dual_mul_f32 v48, v6, v19
	v_dual_mul_f32 v23, v5, v18 :: v_dual_mul_f32 v38, v7, v19
	v_dual_mul_f32 v45, v8, v19 :: v_dual_mul_f32 v62, v6, v20
	v_mul_f32_e32 v55, v5, v20
	v_dual_mul_f32 v59, v8, v20 :: v_dual_mul_f32 v6, v1, v17
	v_dual_mul_f32 v56, v7, v20 :: v_dual_mul_f32 v7, v2, v17
	v_mul_f32_e32 v8, v4, v17
	v_dual_mul_f32 v5, v3, v17 :: v_dual_mul_f32 v12, v1, v18
	v_dual_mul_f32 v13, v2, v18 :: v_dual_mul_f32 v50, v4, v20
	v_dual_mul_f32 v14, v4, v18 :: v_dual_mul_f32 v29, v2, v19
	s_waitcnt lgkmcnt(8)
	v_dual_mul_f32 v11, v3, v18 :: v_dual_mul_f32 v168, v194, v17
	v_dual_mul_f32 v27, v1, v19 :: v_dual_mul_f32 v40, v3, v20
	v_dual_mul_f32 v237, v4, v19 :: v_dual_mul_f32 v60, v194, v18
	v_dual_mul_f32 v167, v3, v19 :: v_dual_mul_f32 v238, v196, v17
	v_dual_mul_f32 v49, v2, v20 :: v_dual_mul_f32 v242, v196, v18
	v_dual_mul_f32 v43, v1, v20 :: v_dual_mul_f32 v246, v196, v19
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v169, v193, v17
	v_dual_mul_f32 v41, v195, v17 :: v_dual_mul_f32 v72, v193, v19
	v_dual_mul_f32 v241, v193, v18 :: v_dual_mul_f32 v196, v196, v20
	s_waitcnt lgkmcnt(7)
	v_dual_mul_f32 v243, v195, v18 :: v_dual_mul_f32 v32, v198, v17
	v_dual_mul_f32 v77, v194, v19 :: v_dual_mul_f32 v250, v200, v17
	v_dual_mul_f32 v247, v195, v19 :: v_dual_mul_f32 v42, v197, v18
	v_mul_f32_e32 v194, v194, v20
	v_dual_mul_f32 v193, v193, v20 :: v_dual_mul_f32 v254, v200, v18
	v_mul_f32_e32 v195, v195, v20
	v_dual_mul_f32 v25, v197, v17 :: v_dual_mul_f32 v148, v199, v19
	v_mul_f32_e32 v251, v199, v17
	v_mul_f32_e32 v47, v198, v18
	s_waitcnt lgkmcnt(6)
	v_dual_mul_f32 v255, v199, v18 :: v_dual_mul_f32 v150, v204, v17
	v_mul_f32_e32 v61, v198, v19
	v_mul_f32_e32 v57, v197, v19
	v_dual_mul_f32 v145, v200, v19 :: v_dual_mul_f32 v24, v203, v18
	v_mul_f32_e32 v198, v198, v20
	v_dual_mul_f32 v197, v197, v20 :: v_dual_mul_f32 v154, v204, v18
	v_mul_f32_e32 v200, v200, v20
	v_dual_mul_f32 v199, v199, v20 :: v_dual_mul_f32 v46, v202, v19
	v_dual_mul_f32 v3, v202, v17 :: v_dual_mul_f32 v158, v204, v19
	v_mul_f32_e32 v149, v201, v17
	v_dual_mov_b32 v21, v151 :: v_dual_mul_f32 v204, v204, v20
	s_waitcnt lgkmcnt(5)
	v_dual_mul_f32 v151, v203, v17 :: v_dual_mul_f32 v164, v205, v18
	v_dual_mov_b32 v35, v152 :: v_dual_mul_f32 v2, v206, v17
	v_mul_f32_e32 v152, v202, v18
	v_dual_mul_f32 v153, v201, v18 :: v_dual_mul_f32 v162, v208, v17
	v_dual_mov_b32 v51, v157 :: v_dual_mul_f32 v4, v208, v18
	v_mul_f32_e32 v157, v201, v19
	v_dual_mul_f32 v159, v203, v19 :: v_dual_mul_f32 v202, v202, v20
	v_mul_f32_e32 v201, v201, v20
	v_dual_mul_f32 v203, v203, v20 :: v_dual_mul_f32 v170, v205, v19
	v_mul_f32_e32 v1, v205, v17
	v_mul_f32_e32 v17, v207, v17
	v_mul_f32_e32 v163, v206, v18
	v_dual_mul_f32 v18, v207, v18 :: v_dual_mul_f32 v31, v206, v19
	v_mul_f32_e32 v33, v208, v19
	v_dual_mul_f32 v19, v207, v19 :: v_dual_mul_f32 v206, v206, v20
	v_mul_f32_e32 v205, v205, v20
	v_mul_f32_e32 v208, v208, v20
	v_mul_f32_e32 v20, v207, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v76, off, off offset:180
	scratch_load_b32 v207, off, off offset:160
	scratch_load_b32 v134, off, off offset:56
	scratch_load_b32 v128, off, off offset:404
	v_dual_fmac_f32 v218, v62, v179 :: v_dual_fmac_f32 v211, v49, v184
	scratch_load_b32 v62, off, off offset:296 ; 4-byte Folded Reload
	v_fmac_f32_e32 v214, v59, v182
	scratch_load_b32 v59, off, off offset:312 ; 4-byte Folded Reload
	v_dual_fmac_f32 v226, v73, v175 :: v_dual_fmac_f32 v217, v55, v181
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v232, v196, v102 :: v_dual_fmac_f32 v83, v206, v139
	v_fmac_f32_e32 v215, v203, v142
	v_fmac_f32_e32 v216, v204, v138
	v_dual_fmac_f32 v185, v20, v144 :: v_dual_fmac_f32 v0, v58, v106
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v206, v83 :: v_dual_fmac_f32 v225, v70, v176
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v229, v79, v174
	v_fmac_f32_e32 v233, v80, v172
	v_fmac_f32_e32 v213, v56, v183
	v_dual_fmac_f32 v221, v68, v178 :: v_dual_fmac_f32 v230, v82, v173
	v_fmac_f32_e32 v222, v78, v177
	v_fmac_f32_e32 v234, v81, v171
	v_dual_fmac_f32 v210, v43, v186 :: v_dual_fmac_f32 v253, v46, v119
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v249, v158, v117
	v_fmac_f32_e32 v235, v193, v97
	scratch_load_b32 v46, off, off offset:584 ; 4-byte Folded Reload
	v_fmac_f32_e32 v227, v197, v99
	v_dual_fmac_f32 v252, v157, v115 :: v_dual_mov_b32 v157, v51
	v_fmac_f32_e32 v244, v170, v113
	v_fmac_f32_e32 v248, v159, v112
	v_dual_fmac_f32 v223, v199, v96 :: v_dual_fmac_f32 v236, v194, v101
	v_fmac_f32_e32 v228, v198, v103
	v_fmac_f32_e32 v224, v200, v100
	v_fmac_f32_e32 v220, v202, v137
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v76, v50, v187
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v134, v37, v128
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v76, off offset:180
	scratch_store_b32 off, v134, off offset:56
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v37, off, off offset:144
	scratch_load_b32 v134, off, off offset:76
	scratch_load_b32 v128, off, off offset:400
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v37, v192, v132
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v134, v131, v128
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v245, v31, v120
	scratch_store_b32 off, v134, off offset:76 ; 4-byte Folded Spill
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v131, off, off offset:152
	scratch_load_b32 v134, off, off offset:72
	scratch_load_b32 v128, off, off offset:412
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v134, v136, v128
	scratch_store_b32 off, v134, off offset:72 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v136, off, off offset:136
	scratch_load_b32 v134, off, off offset:60
	scratch_load_b32 v128, off, off offset:408
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v136, v39, v130
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v134, v135, v128
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v239, v19, v114 :: v_dual_fmac_f32 v240, v33, v116
	scratch_store_b32 off, v134, off offset:60 ; 4-byte Folded Spill
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v135, off, off offset:148
	scratch_load_b32 v134, off, off offset:64
	scratch_load_b32 v128, off, off offset:420
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v134, v147, v128
	scratch_store_b32 off, v134, off offset:64 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v147, off, off offset:168
	scratch_load_b32 v134, off, off offset:68
	scratch_load_b32 v128, off, off offset:416
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v134, v146, v128
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v146, off, off offset:164
	scratch_load_b32 v128, off, off offset:428
	scratch_store_b32 off, v134, off offset:68 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v84, v190, v128
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v128, off, off offset:332
	scratch_load_b32 v190, off, off offset:172
	scratch_load_b32 v134, off, off offset:424
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v190, v189, v134
	scratch_load_b32 v134, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v128, v10, v134
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v10, off, off offset:120
	scratch_load_b32 v134, off, off offset:80
	scratch_load_b32 v189, off, off offset:464
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v219, v201, v141
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v10, v11, v121
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v134, v15, v189
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v231, v195, v98 :: v_dual_fmac_f32 v212, v205, v143
	v_mov_b32_e32 v205, v86
	scratch_store_b32 off, v134, off offset:80 ; 4-byte Folded Spill
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:92
	scratch_load_b32 v134, off, off offset:476
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v205, v208, v140 :: v_dual_mov_b32 v208, v87
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v15, v9, v134
	scratch_store_b32 off, v15, off offset:92 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v9, off, off offset:116
	scratch_load_b32 v15, off, off offset:96
	scratch_load_b32 v134, off, off offset:472
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v9, v74, v111
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v15, v16, v134
	scratch_store_b32 off, v15, off offset:96 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v16, off, off offset:128
	scratch_load_b32 v15, off, off offset:84
	scratch_load_b32 v134, off, off offset:484
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v16, v26, v118
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v15, v6, v134
	scratch_store_b32 off, v15, off offset:84 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v6, off, off offset:104
	scratch_load_b32 v15, off, off offset:88
	scratch_load_b32 v134, off, off offset:480
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v15, v7, v134
	scratch_store_b32 off, v15, off offset:88 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:108
	scratch_load_b32 v15, off, off offset:492
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v7, v75, v109 :: v_dual_fmac_f32 v146, v5, v15
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:100
	scratch_load_b32 v15, off, off offset:488
	v_fmac_f32_e32 v6, v71, v108
	scratch_load_b32 v75, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v5, v66, v107
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v147, v8, v15
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v8, off, off offset:112
	scratch_load_b32 v15, off, off offset:528
	scratch_load_b32 v66, off, off offset:328
	scratch_load_b32 v58, off, off offset:308
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v8, v69, v110
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v69, off, off offset:304
	scratch_load_b32 v26, off, off offset:48
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v207, v52, v15
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v134, off, off offset:156
	scratch_load_b32 v15, off, off offset:16
	scratch_load_b32 v52, off, off offset:532
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v66, v53, v104
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v26, v44, v94
	scratch_load_b64 v[43:44], off, off offset:592 ; 8-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v15, v64, v52
	scratch_load_b32 v64, off, off offset:132 ; 4-byte Folded Reload
	scratch_store_b32 off, v26, off offset:48 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v94, off, off offset:48
	scratch_load_b32 v26, off, off offset:52
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v26, v48, v95
	scratch_store_b32 off, v26, off offset:52 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v95, off, off offset:52
	scratch_load_b32 v52, off, off offset:256
	scratch_load_b32 v26, off, off offset:40
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v26, v38, v92
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:280
	scratch_load_b32 v38, off, off offset:276
	scratch_store_b32 off, v26, off offset:40 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v92, off, off offset:40
	scratch_load_b32 v71, off, off offset:252
	scratch_load_b32 v26, off, off offset:44
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v26, v45, v93
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v56, off, off offset:248
	scratch_load_b32 v45, off, off offset:244
	scratch_store_b32 off, v26, off offset:44 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v93, off, off offset:44
	scratch_load_b32 v53, off, off offset:268
	scratch_load_b32 v26, off, off offset:32
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v26, v27, v90
	scratch_store_b32 off, v15, off offset:16 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v189, off, off offset:16
	scratch_load_b32 v15, off, off offset:544
	scratch_store_b32 off, v26, off offset:32 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v131, v54, v15
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:540
	scratch_load_b32 v54, off, off offset:300
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v134, v65, v15
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v90, off, off offset:32
	scratch_load_b32 v65, off, off offset:208
	scratch_load_b32 v26, off, off offset:36
	scratch_load_b32 v15, off, off offset:548
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v26, v29, v91
	scratch_store_b32 off, v26, off offset:36 ; 4-byte Folded Spill
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v91, off, off offset:36
	scratch_load_b32 v29, off, off offset:232
	scratch_load_b32 v74, off, off offset:228
	scratch_load_b32 v26, off, off offset:24
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v26, v167, v88 :: v_dual_mov_b32 v167, v84
	scratch_store_b32 off, v26, off offset:24 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v88, off, off offset:24
	scratch_load_b32 v26, off, off offset:28
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v26, v237, v89
	scratch_store_b32 off, v26, off offset:28 ; 4-byte Folded Spill
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v26, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v135, v191, v15
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v132, off, off offset:288
	scratch_load_b32 v130, off, off offset:140
	scratch_load_b32 v15, off, off offset:560
	scratch_load_b32 v89, off, off offset:28
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v59, v169, v26
	scratch_load_b32 v26, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v130, v209, v15
	v_mov_b32_e32 v209, v85
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v85, off, off offset:324
	scratch_load_b32 v15, off, off offset:8
	v_fmac_f32_e32 v209, v40, v188
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:236
	scratch_load_b32 v11, off, off offset:124
	v_fmac_f32_e32 v64, v30, v125
	scratch_load_b32 v30, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v85, v63, v105
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v15, v23, v126
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v63, off, off offset:320
	scratch_load_b32 v39, off, off offset:316
	scratch_store_b32 off, v15, off offset:8 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v23, off, off offset:8
	scratch_load_b32 v15, off, off offset:12
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v11, v14, v122
	scratch_load_b32 v14, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v63, v168, v26
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v26, off, off offset:356
	scratch_load_b32 v44, off, off offset:292
	scratch_load_b32 v55, off, off offset:264
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v15, v28, v127
	scratch_store_b32 off, v15, off offset:12 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v28, off, off offset:12
	scratch_load_b32 v118, off, off offset:220
	scratch_load_b32 v15, off, off
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v58, v41, v26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:240
	scratch_load_b32 v26, off, off offset:340
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v15, v12, v123
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v39, v238, v26
	scratch_load_b32 v26, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v54, v25, v26
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v25, off, off offset:284
	scratch_load_b32 v48, off, off offset:188
	scratch_load_b32 v26, off, off offset:344
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v69, v32, v26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:224
	scratch_load_b32 v32, off, off offset:364
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v44, v251, v32
	scratch_load_b32 v32, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v62, v250, v32
	scratch_load_b32 v32, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v25, v149, v32
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:580
	scratch_load_b32 v32, off, off offset:368
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v132, v3, v32
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:184
	scratch_load_b32 v32, off, off offset:388
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v3, v247, v133
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v38, v151, v32 :: v_dual_mov_b32 v151, v21
	scratch_load_b32 v21, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v68, v150, v21
	scratch_load_b32 v21, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v150, v22 :: v_dual_fmac_f32 v53, v1, v21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:176
	scratch_load_b32 v21, off, off offset:376
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v75, v2, v21
	scratch_load_b32 v2, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v30, v17, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:200
	scratch_load_b32 v2, off, off offset:380
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v55, v162, v2
	scratch_load_b32 v2, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v71, v241, v2
	scratch_load_b32 v2, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v52, v60, v2
	scratch_load_b32 v2, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v45, v243, v2
	scratch_load_b32 v2, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v56, v242, v2
	scratch_load_b32 v2, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v40, v42, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v42, off, off offset:588
	scratch_load_b32 v2, off, off offset:440
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v27, v47, v2
	scratch_load_b32 v2, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v74, v255, v2
	scratch_load_b32 v2, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v29, v254, v2
	scratch_load_b32 v2, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v118, v153, v2
	scratch_load_b32 v2, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v153, v34 :: v_dual_fmac_f32 v26, v152, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:20
	scratch_load_b32 v21, off, off offset:516
	v_mov_b32_e32 v152, v35
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v2, v24, v21
	scratch_store_b32 off, v15, off         ; 4-byte Folded Spill
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v24, off, off offset:216
	scratch_load_b32 v12, off, off
	scratch_load_b32 v15, off, off offset:4
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v14, v72, v129
	scratch_store_b32 off, v2, off offset:20 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v22, off, off offset:20
	scratch_load_b32 v21, off, off offset:212
	scratch_load_b32 v2, off, off offset:500
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v15, v13, v124 :: v_dual_fmac_f32 v24, v154, v2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v2, off, off offset:520 ; 4-byte Folded Reload
	scratch_store_b32 off, v15, off offset:4 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:196
	scratch_load_b32 v13, off, off offset:4
	v_mov_b32_e32 v154, v36
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v65, v164, v2
	scratch_load_b32 v2, off, off offset:504 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v21, v163, v2
	scratch_load_b32 v2, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v18, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:204
	scratch_load_b32 v2, off, off offset:508
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v18, v4, v2
	scratch_load_b32 v2, off, off offset:556 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v15, v77, v2
	scratch_load_b32 v2, off, off offset:564 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v48, v246, v2
	scratch_load_b32 v2, off, off offset:552 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v1, v57, v2
	scratch_load_b32 v2, off, off offset:568 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v155, v61, v2
	scratch_load_b32 v2, off, off offset:536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v160, v148, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:576
	scratch_load_b32 v2, off, off offset:572
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v161, v145, v2
	v_mov_b32_e32 v145, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0xa                            ; 44-byte Folded Reload
	scratch_load_b32 v32, off, off offset:84
	scratch_load_b32 v2, off, off offset:88
	scratch_load_b32 v4, off, off offset:92
	scratch_load_b32 v20, off, off offset:96
	scratch_load_b32 v31, off, off offset:80
	scratch_load_b32 v198, off, off offset:64
	scratch_load_b32 v199, off, off offset:68
	scratch_load_b32 v200, off, off offset:72
	scratch_load_b32 v201, off, off offset:60
	scratch_load_b32 v237, off, off offset:56
	scratch_load_b32 v238, off, off offset:76
	v_mov_b32_e32 v33, v42
	v_mov_b32_e32 v19, v153
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v85, off offset:324
	scratch_store_b32 off, v66, off offset:328
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v216, 0
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v210, 0
	v_mov_b32_e32 v249, 0
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v212, 0
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v219, 0
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v221, 0
	v_mov_b32_e32 v5, 0
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v230, 0
	v_mov_b32_e32 v229, 0
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v225, 0
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v233, 0
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v245, 0
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v155, 0
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v13, 0
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v59, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v128, 0
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v190, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v200, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v198, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v238, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s48, 0, 0x8800
	s_add_i32 s47, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s46, 0, 0x6000
.LBB0_8:                                ; %Flow1175
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v63, off offset:320
	scratch_store_b32 off, v59, off offset:312
	scratch_store_b32 off, v39, off offset:316
	scratch_store_b32 off, v58, off offset:308
	scratch_store_b32 off, v22, off offset:20
	scratch_store_b32 off, v21, off offset:212
	scratch_store_b32 off, v69, off offset:304
	scratch_store_b32 off, v54, off offset:300
	scratch_store_b32 off, v44, off offset:292
	scratch_store_b32 off, v132, off offset:288
	scratch_store_b32 off, v25, off offset:284
	scratch_store_b32 off, v68, off offset:280
	scratch_store_b32 off, v38, off offset:276
	scratch_store_b32 off, v75, off offset:272
	scratch_store_b32 off, v53, off offset:268
	scratch_store_b32 off, v55, off offset:264
	scratch_store_b32 off, v30, off offset:260
	scratch_store_b32 off, v52, off offset:256
	scratch_store_b32 off, v71, off offset:252
	scratch_store_b32 off, v56, off offset:248
	scratch_store_b32 off, v45, off offset:244
	scratch_store_b32 off, v27, off offset:240
	scratch_store_b32 off, v40, off offset:236
	scratch_store_b32 off, v29, off offset:232
	scratch_store_b32 off, v74, off offset:228
	scratch_store_b32 off, v26, off offset:224
	scratch_store_b32 off, v118, off offset:220
	scratch_store_b32 off, v24, off offset:216
	scratch_store_b32 off, v65, off offset:208
	scratch_store_b32 off, v18, off offset:204
	scratch_store_b32 off, v17, off offset:200
	scratch_store_b32 off, v15, off offset:196
	s_clause 0x1d                           ; 120-byte Folded Spill
	scratch_store_b32 off, v14, off offset:192
	scratch_store_b32 off, v48, off offset:188
	scratch_store_b32 off, v3, off offset:184
	scratch_store_b32 off, v1, off offset:176
	scratch_store_b32 off, v190, off offset:172
	scratch_store_b32 off, v167, off offset:400
	scratch_store_b32 off, v147, off offset:168
	scratch_store_b32 off, v146, off offset:164
	scratch_store_b32 off, v189, off offset:16
	scratch_store_b32 off, v207, off offset:160
	scratch_store_b32 off, v134, off offset:156
	scratch_store_b32 off, v131, off offset:152
	scratch_store_b32 off, v135, off offset:148
	scratch_store_b32 off, v37, off offset:144
	scratch_store_b32 off, v130, off offset:140
	scratch_store_b32 off, v136, off offset:136
	scratch_store_b32 off, v28, off offset:12
	scratch_store_b32 off, v23, off offset:8
	scratch_store_b32 off, v64, off offset:132
	scratch_store_b32 off, v16, off offset:128
	scratch_store_b32 off, v13, off offset:4
	scratch_store_b32 off, v12, off
	scratch_store_b32 off, v11, off offset:124
	scratch_store_b32 off, v10, off offset:120
	scratch_store_b32 off, v9, off offset:116
	scratch_store_b32 off, v8, off offset:112
	scratch_store_b32 off, v7, off offset:108
	scratch_store_b32 off, v6, off offset:104
	scratch_store_b32 off, v5, off offset:100
	scratch_store_b32 off, v0, off offset:396
	s_waitcnt vmcnt(10)
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v32, off offset:84
	scratch_store_b32 off, v128, off offset:332
	s_waitcnt vmcnt(6)
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v31, off offset:80
	scratch_store_b32 off, v20, off offset:96
	scratch_store_b32 off, v4, off offset:92
	scratch_store_b32 off, v2, off offset:88
	scratch_store_b32 off, v62, off offset:296
	s_waitcnt vmcnt(0)
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v238, off offset:76
	scratch_store_b32 off, v237, off offset:56
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v0, s0, v208
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v73, v0 offset:1088
	ds_load_u8_d16 v74, v0 offset:1152
	ds_load_u8_d16 v241, v0 offset:1040
	ds_load_u8_d16 v243, v0 offset:1104
	ds_load_u8_d16 v159, v0 offset:1056
	ds_load_u8_d16 v162, v0 offset:1120
	ds_load_u8_d16 v207, v0 offset:1136
	ds_load_u8_d16 v237, v0 offset:1072
	ds_load_u8_d16 v10, v0 offset:1216
	ds_load_u8_d16 v1, v0
	ds_load_u8_d16 v88, v0 offset:16
	ds_load_u8_d16 v54, v0 offset:32
	ds_load_u8_d16 v53, v0 offset:48
	ds_load_u8_d16 v2, v0 offset:64
	ds_load_u8_d16 v97, v0 offset:80
	ds_load_u8_d16 v81, v0 offset:96
	ds_load_u8_d16 v55, v0 offset:112
	ds_load_u8_d16 v3, v0 offset:128
	ds_load_u8_d16 v4, v0 offset:192
	ds_load_u8_d16 v106, v0 offset:144
	ds_load_u8_d16 v107, v0 offset:208
	ds_load_u8_d16 v91, v0 offset:160
	ds_load_u8_d16 v92, v0 offset:224
	ds_load_u8_d16 v56, v0 offset:240
	ds_load_u8_d16 v64, v0 offset:176
	ds_load_u8_d16 v5, v0 offset:256
	ds_load_u8_d16 v6, v0 offset:320
	ds_load_u8_d16 v110, v0 offset:272
	ds_load_u8_d16 v111, v0 offset:336
	ds_load_u8_d16 v95, v0 offset:288
	ds_load_u8_d16 v96, v0 offset:352
	ds_load_u8_d16 v65, v0 offset:368
	ds_load_u8_d16 v59, v0 offset:304
	ds_load_u8_d16 v123, v0 offset:384
	ds_load_u8_d16 v124, v0 offset:448
	ds_load_u8_d16 v113, v0 offset:400
	ds_load_u8_d16 v114, v0 offset:464
	ds_load_u8_d16 v98, v0 offset:416
	ds_load_u8_d16 v99, v0 offset:480
	ds_load_u8_d16 v63, v0 offset:496
	ds_load_u8_d16 v76, v0 offset:432
	ds_load_u8_d16 v7, v0 offset:512
	ds_load_u8_d16 v8, v0 offset:576
	ds_load_u8_d16 v115, v0 offset:528
	ds_load_u8_d16 v116, v0 offset:592
	ds_load_u8_d16 v100, v0 offset:544
	ds_load_u8_d16 v101, v0 offset:608
	ds_load_u8_d16 v84, v0 offset:624
	ds_load_u8_d16 v85, v0 offset:560
	ds_load_u8_d16 v125, v0 offset:640
	ds_load_u8_d16 v126, v0 offset:704
	ds_load_u8_d16 v117, v0 offset:656
	ds_load_u8_d16 v118, v0 offset:720
	ds_load_u8_d16 v102, v0 offset:672
	ds_load_u8_d16 v103, v0 offset:736
	ds_load_u8_d16 v86, v0 offset:752
	ds_load_u8_d16 v87, v0 offset:688
	ds_load_u8_d16 v129, v0 offset:768
	ds_load_u8_d16 v130, v0 offset:832
	ds_load_u8_d16 v119, v0 offset:784
	ds_load_u8_d16 v120, v0 offset:848
	ds_load_u8_d16 v104, v0 offset:800
	ds_load_u8_d16 v105, v0 offset:864
	ds_load_u8_d16 v89, v0 offset:880
	ds_load_u8_d16 v90, v0 offset:816
	ds_load_u8_d16 v127, v0 offset:896
	ds_load_u8_d16 v128, v0 offset:960
	ds_load_u8_d16 v70, v0 offset:1024
	ds_load_u8_d16 v121, v0 offset:912
	ds_load_u8_d16 v122, v0 offset:976
	ds_load_u8_d16 v108, v0 offset:928
	ds_load_u8_d16 v109, v0 offset:992
	ds_load_u8_d16 v93, v0 offset:944
	v_dual_mov_b32 v254, 0 :: v_dual_add_nc_u32 v9, s0, v33
	ds_load_u8_d16 v62, v0 offset:1536
	ds_load_u8_d16 v178, v0 offset:1424
	ds_load_u8_d16 v179, v0 offset:1488
	ds_load_u8_d16 v251, v0 offset:1440
	ds_load_u8_d16 v143, v0 offset:1504
	ds_load_u8_d16 v246, v0 offset:1520
	ds_load_u8_d16 v247, v0 offset:1456
	ds_load_u8_d16 v77, v0 offset:1600
	ds_load_u8_d16 v78, v0 offset:1664
	ds_load_u8_d16 v188, v0 offset:1552
	ds_load_u8_d16 v189, v0 offset:1616
	ds_load_u8_d16 v181, v0 offset:1568
	ds_load_u8_d16 v182, v0 offset:1632
	ds_load_u8_d16 v144, v0 offset:1648
	ds_load_u8_d16 v146, v0 offset:1584
	ds_load_u8_d16 v79, v0 offset:1728
	ds_load_u8_d16 v80, v0 offset:1792
	ds_load_u8_d16 v191, v0 offset:1680
	ds_load_u8_d16 v57, v0 offset:1744
	ds_load_u8_d16 v184, v0 offset:1696
	ds_load_u8_d16 v187, v0 offset:1760
	ds_load_u8_d16 v176, v0 offset:1776
	ds_load_u8_d16 v177, v0 offset:1712
	ds_load_u8_d16 v82, v0 offset:1856
	ds_load_u8_d16 v83, v0 offset:1920
	ds_load_u8_d16 v60, v0 offset:1808
	ds_load_u8_d16 v61, v0 offset:1872
	ds_load_u8_d16 v190, v0 offset:1824
	ds_load_u8_d16 v192, v0 offset:1888
	ds_load_u8_d16 v183, v0 offset:1904
	ds_load_u8_d16 v186, v0 offset:1840
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v11, 0, 1, s2
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v15, 0
	v_mov_b32_e32 v194, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v13, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(62)
	scratch_store_b32 off, v10, off offset:404 ; 4-byte Folded Spill
	ds_load_u8_d16 v10, v0 offset:1280
	v_mov_b32_e32 v154, 0
	v_mov_b32_e32 v152, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v30, 0
	v_mov_b32_e32 v26, 0
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v20, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v12, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v193, 0
	v_mov_b32_e32 v195, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v10, off offset:408 ; 4-byte Folded Spill
	ds_load_u8_d16 v250, v0 offset:1168
	ds_load_u8_d16 v139, v0 offset:1232
	ds_load_u8_d16 v164, v0 offset:1184
	ds_load_u8_d16 v163, v0 offset:1248
	ds_load_u8_d16 v238, v0 offset:1264
	ds_load_u8_d16 v158, v0 offset:1200
	ds_load_u8_d16 v10, v0 offset:1344
	v_mov_b32_e32 v153, 0
	v_mov_b32_e32 v151, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v145, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v21, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v10, off offset:472 ; 4-byte Folded Spill
	ds_load_u8_d16 v10, v0 offset:1408
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v10, off offset:484 ; 4-byte Folded Spill
	ds_load_u8_d16 v147, v0 offset:1296
	ds_load_u8_d16 v175, v0 offset:1360
	ds_load_u8_d16 v140, v0 offset:1312
	ds_load_u8_d16 v141, v0 offset:1376
	ds_load_u8_d16 v157, v0 offset:1392
	ds_load_u8_d16 v242, v0 offset:1328
	ds_load_u8_d16 v10, v0 offset:1472
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v10, off offset:488 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v10, s0, v19
	ds_load_u8_d16 v94, v0 offset:1984
	ds_load_u8_d16 v71, v0 offset:1936
	ds_load_u8_d16 v72, v0 offset:2000
	ds_load_u8_d16 v68, v0 offset:1952
	ds_load_u8_d16 v69, v0 offset:2016
	ds_load_u8_d16 v112, v9
	ds_load_u8_d16 v66, v10
	ds_load_u8_d16 v67, v0 offset:1968
	v_mov_b32_e32 v0, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v11
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v19, off offset:448 ; 4-byte Folded Spill
	v_mov_b32_e32 v19, 0
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v33, off offset:932 ; 4-byte Folded Spill
	v_mov_b32_e32 v33, 0
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	v_perm_b32 v0, v129, v130, 0xc0c0004
	v_perm_b32 v9, v127, v128, 0xc0c0004
	v_perm_b32 v10, v7, v8, 0xc0c0004
	v_perm_b32 v11, v125, v126, 0xc0c0004
	s_mov_b32 s4, 0
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v145, v83, v94, 0xc0c0004
	v_lshl_or_b32 v20, v9, 16, v0
	v_perm_b32 v0, v5, v6, 0xc0c0004
	v_perm_b32 v9, v123, v124, 0xc0c0004
	v_lshl_or_b32 v19, v11, 16, v10
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_lshl_or_b32 v18, v9, 16, v0
	v_perm_b32 v0, v1, v2, 0xc0c0004
	v_perm_b32 v9, v3, v4, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v10, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v17, v9, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:656
	scratch_load_b32 v9, off, off offset:652
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s11, s4
	v_mov_b16_e64 v142.l, v53.l
	v_mov_b16_e32 v75.l, v54.l
	v_mov_b16_e64 v255.l, v55.l
	v_mov_b16_e32 v58.l, v65.l
	v_perm_b32 v148, v62, v77, 0xc0c0004
	v_perm_b32 v149, v78, v79, 0xc0c0004
	v_dual_mov_b32 v153, v200 :: v_dual_mov_b32 v152, v199
	v_dual_mov_b32 v151, v198 :: v_dual_mov_b32 v154, v201
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v12, off, off offset:644
	scratch_load_b32 v11, off, off offset:636
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v138, s11 :: v_dual_mov_b32 v137, s10
	v_dual_mov_b32 v135, s8 :: v_dual_mov_b32 v136, s9
	v_dual_mov_b32 v133, s6 :: v_dual_mov_b32 v134, s7
	v_dual_mov_b32 v131, s4 :: v_dual_mov_b32 v132, s5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v10, s51, v10
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, s51, v0
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v9, s51, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v10, v10
	ds_load_u8 v0, v0
	ds_load_u8 v9, v9
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v12, s51, v12
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s51, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v12, v12
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v9, off, off offset:664 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s51, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v10, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v196, v9, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:624 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v10, s51, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v11, off, off offset:648 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s51, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v12, off, off offset:772 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v195, v11, 16, v10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:628
	scratch_load_b32 v9, off, off offset:620
	v_add_nc_u32_e32 v0, s51, v0
	scratch_load_b32 v11, off, off offset:764 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v12, s51, v12
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v10, s51, v10
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v9, s51, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v12, v12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s51, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v10, v10
	ds_load_u8 v9, v9
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v9, off, off offset:632 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s51, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v10, off, off offset:612 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v194, v9, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:608 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v9, s51, v150
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v9
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v10, s51, v10
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s51, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v10, v10
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v9, off, off offset:616 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s51, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v10, off, off offset:788 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v193, v9, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:784
	scratch_load_b32 v9, off, off offset:780
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[167:174], v[193:196], v[17:20], v[131:138] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v10, s51, v10
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s51, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s51, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v10, v10
	ds_load_u8 v0, v0
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v9, off, off offset:792 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s51, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v10, off, off offset:768 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v200, v9, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v10, s51, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v11, off, off offset:776 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s51, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v199, v11, 16, v10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:756
	scratch_load_b32 v9, off, off offset:748
	v_add_nc_u32_e32 v0, s51, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v11, v117, v118, 0xc0c0004
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v10, s51, v10
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s51, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v10, v10
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v9, off, off offset:760 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s51, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v10, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v198, v9, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:736
	scratch_load_b32 v9, off, off offset:732
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v10, s51, v10
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s51, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s51, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v10, v10
	ds_load_u8 v0, v0
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v9, off, off offset:744 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s51, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_perm_b32 v10, v115, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v197, v9, 16, v0
	v_perm_b32 v0, v119, v120, 0xc0c0004
	v_perm_b32 v9, v121, v122, 0xc0c0004
	v_lshl_or_b32 v35, v11, 16, v10
	v_perm_b32 v10, v100, v101, 0xc0c0004
	v_perm_b32 v11, v102, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v36, v9, 16, v0
	v_perm_b32 v0, v110, v111, 0xc0c0004
	v_perm_b32 v9, v113, v114, 0xc0c0004
	v_lshl_or_b32 v51, v11, 16, v10
	v_perm_b32 v10, v85, v84, 0xc0c0004
	v_perm_b32 v11, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v34, v9, 16, v0
	v_perm_b32 v0, v88, v97, 0xc0c0004
	v_perm_b32 v9, v106, v107, 0xc0c0004
	v_lshl_or_b32 v203, v11, 16, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v33, v9, 16, v0
	v_perm_b32 v0, v104, v105, 0xc0c0004
	v_perm_b32 v9, v108, v109, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[197:200], v[33:36], v[131:138] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v9, 16, v0
	v_perm_b32 v0, v95, v96, 0xc0c0004
	v_perm_b32 v9, v98, v99, 0xc0c0004
	v_lshl_or_b32 v50, v9, 16, v0
	v_perm_b32 v0, v54, v81, 0xc0c0004
	v_perm_b32 v9, v91, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v49, v9, 16, v0
	v_perm_b32 v0, v90, v89, 0xc0c0004
	v_perm_b32 v9, v93, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[197:200], v[49:52], v[131:138] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v204, v9, 16, v0
	v_perm_b32 v0, v59, v65, 0xc0c0004
	v_perm_b32 v9, v76, v63, 0xc0c0004
	v_mov_b16_e32 v65.l, v64.l
	v_lshl_or_b32 v202, v9, 16, v0
	v_perm_b32 v0, v53, v55, 0xc0c0004
	v_perm_b32 v9, v64, v56, 0xc0c0004
	v_mov_b16_e32 v64.l, v56.l
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v201, v9, 16, v0
	v_perm_b32 v0, v80, v82, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[197:200], v[17:20], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[193:196], v[33:36], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[193:196], v[49:52], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[193:196], v[201:204], v[131:138] neg_lo:[1,1,0]
	v_lshl_or_b32 v196, v145, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:408
	scratch_load_b32 v145, off, off offset:472
	v_lshl_or_b32 v195, v149, 16, v148
	v_wmma_i32_16x16x16_iu8 v[131:138], v[197:200], v[201:204], v[131:138] neg_lo:[1,1,0]
	v_mov_b32_e32 v201, v150
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:704
	scratch_load_b32 v150, off, off offset:708
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v145, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v145, off, off offset:484
	scratch_load_b32 v148, off, off offset:488
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v149, s51, v149
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v150, s51, v150
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v149, v149
	ds_load_u8 v150, v150
	s_waitcnt vmcnt(0)
	v_perm_b32 v145, v145, v148, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v148, off, off offset:728 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v194, v145, 16, v0
	scratch_load_b32 v145, off, off offset:404 ; 4-byte Folded Reload
	v_perm_b32 v0, v70, v73, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v148, s51, v148
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt vmcnt(0)
	v_perm_b32 v145, v74, v145, 0xc0c0004
	ds_load_u8 v148, v148
	v_lshl_or_b32 v193, v145, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:720
	scratch_load_b32 v145, off, off offset:716
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s51, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v145, s51, v145
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v145, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v145, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v145, off, off offset:724 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v145, s51, v145
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v145, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v145, v148, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v148, off, off offset:700 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v200, v145, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:688 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v148, s51, v148
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v148, v148
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v149, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v149, off, off offset:712 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v149, s51, v149
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v149, v149
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v150, off, off offset:836 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v199, v149, 16, v148
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:696
	scratch_load_b32 v145, off, off offset:684
	v_add_nc_u32_e32 v0, s51, v0
	scratch_load_b32 v149, off, off offset:832 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v150, s51, v150
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v148, s51, v148
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v145, s51, v145
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v150, v150
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v149, s51, v149
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v148, v148
	ds_load_u8 v145, v145
	ds_load_u8 v149, v149
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v145, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v145, off, off offset:692 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v145, s51, v145
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v145, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v145, v148, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v148, off, off offset:676 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v198, v145, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:668
	scratch_load_b32 v145, off, off offset:672
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v148, s51, v148
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s51, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v145, s51, v145
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v148, v148
	ds_load_u8 v0, v0
	ds_load_u8 v145, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v145, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v145, off, off offset:680 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v145, s51, v145
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v145, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v148, v145, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v148, off, off offset:856 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v197, v145, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:848
	scratch_load_b32 v145, off, off offset:844
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[167:174], v[197:200], v[193:196], v[167:174] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v148, s51, v148
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s51, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v145, s51, v145
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v148, v148
	ds_load_u8 v0, v0
	ds_load_u8 v145, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v145, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v145, off, off offset:852 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v145, s51, v145
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v145, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v145, v148, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v148, off, off offset:828 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v204, v145, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:816 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v148, s51, v148
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v148, v148
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v149, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v149, off, off offset:840 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v149, s51, v149
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v149, v149
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	v_mov_b32_e32 v150, v201
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v203, v149, 16, v148
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:824
	scratch_load_b32 v145, off, off offset:812
	v_add_nc_u32_e32 v0, s51, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v149, v191, v57, 0xc0c0004
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v148, s51, v148
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v145, s51, v145
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v148, v148
	ds_load_u8 v145, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v145, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v145, off, off offset:820 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v145, s51, v145
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v145, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v145, v148, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v148, off, off offset:804 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v202, v145, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:796
	scratch_load_b32 v145, off, off offset:800
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v148, s51, v148
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s51, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v145, s51, v145
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v148, v148
	ds_load_u8 v0, v0
	ds_load_u8 v145, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v145, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v145, off, off offset:808 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v145, s51, v145
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v145, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v148, v145, 0xc0c0004
	v_perm_b32 v148, v188, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v201, v145, 16, v0
	v_perm_b32 v0, v60, v61, 0xc0c0004
	v_perm_b32 v145, v71, v72, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[201:204], v[193:196], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v195, v149, 16, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v196, v145, 16, v0
	v_perm_b32 v0, v147, v175, 0xc0c0004
	v_perm_b32 v145, v178, v179, 0xc0c0004
	v_perm_b32 v148, v181, v182, 0xc0c0004
	v_perm_b32 v149, v184, v187, 0xc0c0004
	v_lshl_or_b32 v194, v145, 16, v0
	v_perm_b32 v0, v241, v243, 0xc0c0004
	v_perm_b32 v145, v250, v139, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v193, v145, 16, v0
	v_perm_b32 v0, v190, v192, 0xc0c0004
	v_perm_b32 v145, v68, v69, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[197:200], v[193:196], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[201:204], v[193:196], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v196, v145, 16, v0
	v_perm_b32 v0, v140, v141, 0xc0c0004
	v_perm_b32 v145, v251, v143, 0xc0c0004
	v_lshl_or_b32 v195, v149, 16, v148
	v_perm_b32 v148, v146, v144, 0xc0c0004
	v_perm_b32 v149, v177, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v194, v145, 16, v0
	v_perm_b32 v0, v159, v162, 0xc0c0004
	v_perm_b32 v145, v164, v163, 0xc0c0004
	v_lshl_or_b32 v193, v145, 16, v0
	v_perm_b32 v0, v186, v183, 0xc0c0004
	v_perm_b32 v145, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[197:200], v[193:196], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[201:204], v[193:196], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v195, v149, 16, v148
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:580
	scratch_load_b32 v148, off, off offset:576
	v_lshl_or_b32 v196, v145, 16, v0
	v_perm_b32 v0, v242, v157, 0xc0c0004
	v_perm_b32 v145, v247, v246, 0xc0c0004
	v_cvt_f32_i32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v194, v145, 16, v0
	v_perm_b32 v0, v237, v207, 0xc0c0004
	v_perm_b32 v145, v158, v238, 0xc0c0004
	v_lshl_or_b32 v193, v145, 16, v0
	v_cvt_f32_i32_e32 v0, v9
	v_cvt_f32_i32_e32 v145, v35
	v_cvt_f32_i32_e32 v35, v38
	v_cvt_f32_i32_e32 v38, v174
	v_wmma_i32_16x16x16_iu8 v[49:56], v[197:200], v[193:196], v[49:56] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	v_wmma_i32_16x16x16_iu8 v[131:138], v[201:204], v[193:196], v[131:138] neg_lo:[1,1,0]
	v_dual_mov_b32 v200, v153 :: v_dual_mov_b32 v199, v152
	v_mov_b32_e32 v198, v151
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	v_mov_b32_e32 v201, v154
	v_cvt_f32_i32_e32 v203, v23
	v_cvt_f32_i32_e32 v204, v24
	v_cvt_f32_i32_e32 v197, v25
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	v_cvt_f32_i32_e32 v202, v26
	v_cvt_f32_i32_e32 v195, v27
	v_cvt_f32_i32_e32 v196, v28
	v_cvt_f32_i32_e32 v193, v29
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	v_cvt_f32_i32_e32 v194, v30
	v_cvt_f32_i32_e32 v153, v31
	v_cvt_f32_i32_e32 v154, v32
	v_cvt_f32_i32_e32 v151, v33
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	v_cvt_f32_i32_e32 v152, v34
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v33, v39
	v_cvt_f32_i32_e32 v32, v40
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	v_cvt_f32_i32_e32 v30, v41
	v_cvt_f32_i32_e32 v31, v42
	v_cvt_f32_i32_e32 v28, v43
	v_cvt_f32_i32_e32 v29, v44
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	v_cvt_f32_i32_e32 v26, v45
	v_cvt_f32_i32_e32 v27, v46
	v_cvt_f32_i32_e32 v24, v47
	v_cvt_f32_i32_e32 v25, v48
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v17
	v_cvt_f32_i32_e32 v23, v49
	v_cvt_f32_i32_e32 v16, v55
	v_mov_b16_e64 v55.l, v255.l
	v_cvt_f32_i32_e32 v14, v56
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v18
	v_cvt_f32_i32_e32 v18, v53
	v_mov_b16_e64 v53.l, v142.l
	v_mov_b16_e32 v56.l, v64.l
	v_mov_b16_e32 v64.l, v65.l
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v19
	v_cvt_f32_i32_e32 v19, v54
	v_mov_b16_e32 v54.l, v75.l
	v_mov_b16_e32 v65.l, v58.l
	v_cvt_f32_i32_e32 v17, v131
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v20
	v_cvt_f32_i32_e32 v20, v51
	v_cvt_f32_i32_e32 v15, v132
	v_cvt_f32_i32_e32 v12, v133
	v_cvt_f32_i32_e32 v13, v134
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v21
	v_cvt_f32_i32_e32 v21, v52
	v_cvt_f32_i32_e32 v10, v135
	v_cvt_f32_i32_e32 v11, v136
	v_cvt_f32_i32_e32 v9, v137
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v22
	v_cvt_f32_i32_e32 v22, v50
	v_cvt_f32_i32_e32 v41, v169
	v_cvt_f32_i32_e32 v42, v170
	v_cvt_f32_i32_e32 v39, v171
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v138
	v_cvt_f32_i32_e32 v40, v172
	v_cvt_f32_i32_e32 v37, v173
	v_cvt_f32_i32_e32 v43, v167
	v_cvt_f32_i32_e32 v44, v168
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_mov_b16_e64 v142.l, v246.l
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v151, off offset:604
	scratch_store_b32 off, v154, off offset:864
	scratch_store_b32 off, v153, off offset:1072
	v_mov_b16_e64 v151.l, v242.l
	v_mov_b16_e64 v154.l, v241.l
	v_mov_b16_e64 v153.l, v158.l
	v_mov_b16_e64 v158.l, v238.l
	v_mov_b16_e64 v255.l, v237.l
	v_mov_b16_e64 v75.l, v207.l
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v44, off offset:1180
	scratch_store_b32 off, v200, off offset:72
	scratch_store_b32 off, v199, off offset:68
	scratch_store_b32 off, v198, off offset:64
	scratch_store_b32 off, v201, off offset:60
	scratch_store_b32 off, v43, off offset:1044
	scratch_store_b32 off, v42, off offset:1040
	scratch_store_b32 off, v41, off offset:1036
	scratch_store_b32 off, v40, off offset:920
	scratch_store_b32 off, v39, off offset:916
	scratch_store_b32 off, v38, off offset:912
	scratch_store_b32 off, v37, off offset:908
	scratch_store_b32 off, v204, off offset:896
	scratch_store_b32 off, v203, off offset:892
	scratch_store_b32 off, v202, off offset:888
	scratch_store_b32 off, v197, off offset:884
	scratch_store_b32 off, v196, off offset:880
	scratch_store_b32 off, v195, off offset:876
	scratch_store_b32 off, v194, off offset:872
	scratch_store_b32 off, v193, off offset:868
	scratch_store_b32 off, v36, off offset:592
	scratch_store_b32 off, v35, off offset:584
	scratch_store_b32 off, v34, off offset:572
	scratch_store_b32 off, v33, off offset:568
	scratch_store_b32 off, v32, off offset:564
	scratch_store_b32 off, v31, off offset:556
	scratch_store_b32 off, v30, off offset:552
	scratch_store_b32 off, v29, off offset:548
	scratch_store_b32 off, v28, off offset:544
	scratch_store_b32 off, v27, off offset:540
	scratch_store_b32 off, v26, off offset:536
	scratch_store_b32 off, v25, off offset:524
	s_clause 0x10                           ; 68-byte Folded Spill
	scratch_store_b32 off, v24, off offset:520
	scratch_store_b32 off, v23, off offset:480
	scratch_store_b32 off, v22, off offset:476
	scratch_store_b32 off, v21, off offset:468
	scratch_store_b32 off, v20, off offset:464
	scratch_store_b32 off, v19, off offset:460
	scratch_store_b32 off, v18, off offset:456
	scratch_store_b32 off, v17, off offset:452
	scratch_store_b32 off, v16, off offset:444
	scratch_store_b32 off, v15, off offset:440
	scratch_store_b32 off, v14, off offset:436
	scratch_store_b32 off, v13, off offset:432
	scratch_store_b32 off, v12, off offset:428
	scratch_store_b32 off, v11, off offset:424
	scratch_store_b32 off, v10, off offset:420
	scratch_store_b32 off, v9, off offset:416
	scratch_store_b32 off, v0, off offset:412
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v12, 0
	scratch_store_b32 off, v152, off offset:600 ; 4-byte Folded Spill
	v_mov_b16_e64 v152.l, v243.l
	v_mov_b32_e32 v243, 0
	v_mov_b32_e32 v11, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	scratch_store_b32 off, v12, off offset:336 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	v_perm_b32 v0, v129, v130, 0xc0c0004
	v_perm_b32 v9, v127, v128, 0xc0c0004
	v_perm_b32 v7, v7, v8, 0xc0c0004
	s_mov_b32 s4, 0
	v_perm_b32 v10, v125, v126, 0xc0c0004
	s_mov_b32 s5, s4
	v_lshl_or_b32 v8, v9, 16, v0
	v_perm_b32 v0, v5, v6, 0xc0c0004
	v_perm_b32 v5, v123, v124, 0xc0c0004
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	v_lshl_or_b32 v6, v5, 16, v0
	v_perm_b32 v0, v1, v2, 0xc0c0004
	v_perm_b32 v1, v3, v4, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v2, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_lshl_or_b32 v7, v10, 16, v7
	v_lshl_or_b32 v5, v1, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v0, off, off offset:656
	scratch_load_b32 v1, off, off offset:652
	scratch_load_b32 v4, off, off offset:644
	scratch_load_b32 v3, off, off offset:636
	scratch_load_b32 v10, off, off offset:788
	scratch_load_b32 v9, off, off offset:612
	scratch_load_b32 v11, off, off offset:764
	scratch_load_b32 v12, off, off offset:772
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v2, s1, v2
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v1, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v3, s1, v3
	v_add_nc_u32_e32 v4, s1, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v10, s1, v10
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v3, v3
	ds_load_u8 v4, v4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v9, s1, v9
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v11, s1, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v10, v10
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v12, s1, v12
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v9
	ds_load_u8 v11, v11
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:664 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v2, off, off offset:640 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s1, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v3, off, off offset:648 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s1, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	v_lshl_or_b32 v4, v1, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:624 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v3, v3, 16, v2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:628
	scratch_load_b32 v1, off, off offset:620
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s1, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v2, v2
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:632 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v1, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:608 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v1, s1, v150
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:616 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v9, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v9, off, off offset:780 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v1, v1, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:784 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v9, s1, v9
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v9
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v9, off, off offset:792 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s1, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v10, off, off offset:768 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v126, v9, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v10, s1, v10
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v11, off, off offset:776 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s1, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v125, v11, 16, v10
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:756
	scratch_load_b32 v9, off, off offset:748
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v11, v117, v118, 0xc0c0004
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v10, s1, v10
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s1, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v10, v10
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v9, off, off offset:760 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s1, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v10, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v124, v9, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:736
	scratch_load_b32 v9, off, off offset:732
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v10, s1, v10
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s1, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v10, v10
	ds_load_u8 v0, v0
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v9, off, off offset:744 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s1, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_perm_b32 v10, v115, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v123, v9, 16, v0
	v_perm_b32 v0, v119, v120, 0xc0c0004
	v_perm_b32 v9, v121, v122, 0xc0c0004
	v_lshl_or_b32 v51, v11, 16, v10
	v_perm_b32 v10, v100, v101, 0xc0c0004
	v_perm_b32 v11, v102, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v52, v9, 16, v0
	v_perm_b32 v0, v110, v111, 0xc0c0004
	v_perm_b32 v9, v113, v114, 0xc0c0004
	v_lshl_or_b32 v100, v11, 16, v10
	v_perm_b32 v10, v85, v84, 0xc0c0004
	v_perm_b32 v11, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v9, 16, v0
	v_perm_b32 v0, v88, v97, 0xc0c0004
	v_perm_b32 v9, v106, v107, 0xc0c0004
	v_lshl_or_b32 v49, v9, 16, v0
	v_perm_b32 v0, v104, v105, 0xc0c0004
	v_perm_b32 v9, v108, v109, 0xc0c0004
	v_lshl_or_b32 v105, v11, 16, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v101, v9, 16, v0
	v_perm_b32 v0, v95, v96, 0xc0c0004
	v_perm_b32 v9, v98, v99, 0xc0c0004
	v_lshl_or_b32 v99, v9, 16, v0
	v_perm_b32 v0, v54, v81, 0xc0c0004
	v_perm_b32 v9, v91, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v98, v9, 16, v0
	v_perm_b32 v0, v90, v89, 0xc0c0004
	v_perm_b32 v9, v93, v112, 0xc0c0004
	v_lshl_or_b32 v106, v9, 16, v0
	v_perm_b32 v0, v59, v65, 0xc0c0004
	v_perm_b32 v9, v76, v63, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v59, off, off offset:852
	scratch_load_b32 v63, off, off offset:836
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v104, v9, 16, v0
	v_perm_b32 v0, v53, v55, 0xc0c0004
	v_perm_b32 v9, v64, v56, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v9, 16, v0
	v_dual_mov_b32 v16, s11 :: v_dual_mov_b32 v15, s10
	v_dual_mov_b32 v14, s9 :: v_dual_mov_b32 v13, s8
	v_dual_mov_b32 v12, s7 :: v_dual_mov_b32 v11, s6
	v_dual_mov_b32 v10, s5 :: v_dual_mov_b32 v9, s4
	v_perm_b32 v0, v80, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[1:4], v[5:8], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[1:4], v[49:52], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[123:126], v[49:52], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[1:4], v[98:101], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[123:126], v[98:101], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[1:4], v[103:106], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v1, v83, v94, 0xc0c0004
	v_perm_b32 v2, v62, v77, 0xc0c0004
	v_perm_b32 v3, v78, v79, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[123:126], v[5:8], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v4, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:408
	scratch_load_b32 v1, off, off offset:472
	v_lshl_or_b32 v3, v3, 16, v2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v5, off, off offset:716
	scratch_load_b32 v6, off, off offset:724
	scratch_load_b32 v7, off, off offset:700
	scratch_load_b32 v8, off, off offset:708
	scratch_load_b32 v58, off, off offset:676
	scratch_load_b32 v62, off, off offset:828
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[9:16], v[123:126], v[103:106], v[9:16] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v59, s1, v59
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v63, s1, v63
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v59, v59
	ds_load_u8 v63, v63
	s_waitcnt vmcnt(6)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:484
	scratch_load_b32 v2, off, off offset:488
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v5, s1, v5
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v6, s1, v6
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v7, s1, v7
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v8, s1, v8
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v58, s1, v58
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v5, v5
	ds_load_u8 v6, v6
	ds_load_u8 v7, v7
	ds_load_u8 v8, v8
	ds_load_u8 v58, v58
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v62, s1, v62
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v62, v62
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v1, 16, v0
	scratch_load_b32 v1, off, off offset:404 ; 4-byte Folded Reload
	v_perm_b32 v0, v70, v73, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v74, v1, 0xc0c0004
	v_lshl_or_b32 v1, v1, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:720 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v5, off, off offset:728 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s1, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v6, off, off offset:704 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v6, s1, v6
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v7, off, off offset:712 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v7, s1, v7
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v7, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	v_lshl_or_b32 v8, v5, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:688 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v7, v7, 16, v6
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v6, off, off offset:692
	scratch_load_b32 v5, off, off offset:684
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v6, s1, v6
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s1, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v6, v6
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v5, off, off offset:696 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s1, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v5, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:672
	scratch_load_b32 v5, off, off offset:668
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s1, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v5, off, off offset:680 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s1, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v58, v5, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v58, off, off offset:844 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v5, v5, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:848 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[17:24], v[5:8], v[1:4], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v207, v21
	v_cvt_f32_i32_e32 v254, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v246, v18
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v58, s1, v58
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v58, v58
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v58, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v58, off, off offset:856 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v58, s1, v58
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v59, off, off offset:832 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v65, v58, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:816 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v59, s1, v59
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v59, v59
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v62, v59, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v62, off, off offset:840 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v62, s1, v62
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v62, v62
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v62, 16, v59
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v59, off, off offset:820
	scratch_load_b32 v58, off, off offset:812
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v59, s1, v59
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v58, s1, v58
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v59, v59
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v58, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v58, off, off offset:824 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v58, s1, v58
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v59, off, off offset:804 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v63, v58, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:800
	scratch_load_b32 v58, off, off offset:796
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v59, s1, v59
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v58, s1, v58
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v59, v59
	ds_load_u8 v0, v0
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v58, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v58, off, off offset:808 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v58, s1, v58
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v62, v58, 16, v0
	v_perm_b32 v0, v60, v61, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[62:65], v[1:4], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v1, v71, v72, 0xc0c0004
	v_perm_b32 v2, v188, v189, 0xc0c0004
	v_perm_b32 v3, v191, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v194, v25
	v_lshl_or_b32 v4, v1, 16, v0
	v_perm_b32 v0, v147, v175, 0xc0c0004
	v_perm_b32 v1, v178, v179, 0xc0c0004
	v_lshl_or_b32 v3, v3, 16, v2
	v_cvt_f32_i32_e32 v195, v26
	v_cvt_f32_i32_e32 v174, v27
	v_cvt_f32_i32_e32 v193, v28
	v_lshl_or_b32 v2, v1, 16, v0
	v_perm_b32 v0, v154, v152, 0xc0c0004
	v_perm_b32 v1, v250, v139, 0xc0c0004
	v_cvt_f32_i32_e32 v172, v29
	v_cvt_f32_i32_e32 v173, v30
	v_cvt_f32_i32_e32 v170, v31
	v_cvt_f32_i32_e32 v171, v32
	v_lshl_or_b32 v1, v1, 16, v0
	v_perm_b32 v0, v190, v192, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[5:8], v[1:4], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[62:65], v[1:4], v[41:48] neg_lo:[1,1,0]
	v_perm_b32 v1, v68, v69, 0xc0c0004
	v_perm_b32 v2, v181, v182, 0xc0c0004
	v_perm_b32 v3, v184, v187, 0xc0c0004
	v_cvt_f32_i32_e32 v168, v33
	v_cvt_f32_i32_e32 v169, v34
	v_lshl_or_b32 v4, v1, 16, v0
	v_perm_b32 v0, v140, v141, 0xc0c0004
	v_perm_b32 v1, v251, v143, 0xc0c0004
	v_lshl_or_b32 v3, v3, 16, v2
	v_cvt_f32_i32_e32 v138, v35
	v_cvt_f32_i32_e32 v167, v36
	v_cvt_f32_i32_e32 v136, v37
	v_lshl_or_b32 v2, v1, 16, v0
	v_perm_b32 v0, v159, v162, 0xc0c0004
	v_perm_b32 v1, v164, v163, 0xc0c0004
	v_cvt_f32_i32_e32 v137, v38
	v_cvt_f32_i32_e32 v134, v39
	v_cvt_f32_i32_e32 v135, v40
	v_cvt_f32_i32_e32 v132, v41
	v_lshl_or_b32 v1, v1, 16, v0
	v_perm_b32 v0, v186, v183, 0xc0c0004
	v_cvt_f32_i32_e32 v133, v42
	v_cvt_f32_i32_e32 v242, v43
	v_cvt_f32_i32_e32 v243, v44
	v_wmma_i32_16x16x16_iu8 v[49:56], v[5:8], v[1:4], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[62:65], v[1:4], v[84:91] neg_lo:[1,1,0]
	v_perm_b32 v1, v67, v66, 0xc0c0004
	v_perm_b32 v2, v146, v144, 0xc0c0004
	v_perm_b32 v3, v177, v176, 0xc0c0004
	v_cvt_f32_i32_e32 v241, v45
	v_cvt_f32_i32_e32 v131, v46
	v_lshl_or_b32 v4, v1, 16, v0
	v_perm_b32 v0, v151, v157, 0xc0c0004
	v_perm_b32 v1, v247, v142, 0xc0c0004
	v_lshl_or_b32 v3, v3, 16, v2
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v237, v49
	v_lshl_or_b32 v2, v1, 16, v0
	v_perm_b32 v0, v255, v75, 0xc0c0004
	v_perm_b32 v1, v153, v158, 0xc0c0004
	v_cvt_f32_i32_e32 v46, v50
	v_cvt_f32_i32_e32 v200, v51
	v_cvt_f32_i32_e32 v238, v52
	v_cvt_f32_i32_e32 v198, v53
	v_lshl_or_b32 v1, v1, 16, v0
	v_cvt_f32_i32_e32 v199, v54
	v_cvt_f32_i32_e32 v44, v55
	v_cvt_f32_i32_e32 v45, v56
	v_cvt_f32_i32_e32 v42, v84
	v_wmma_i32_16x16x16_iu8 v[95:102], v[5:8], v[1:4], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[62:65], v[1:4], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v43, v85
	v_cvt_f32_i32_e32 v40, v86
	v_cvt_f32_i32_e32 v41, v87
	v_cvt_f32_i32_e32 v38, v88
	v_cvt_f32_i32_e32 v39, v89
	v_cvt_f32_i32_e32 v36, v90
	v_cvt_f32_i32_e32 v37, v91
	v_cvt_f32_i32_e32 v33, v95
	v_cvt_f32_i32_e32 v34, v96
	v_cvt_f32_i32_e32 v31, v97
	v_cvt_f32_i32_e32 v32, v98
	v_cvt_f32_i32_e32 v29, v99
	v_cvt_f32_i32_e32 v30, v100
	v_cvt_f32_i32_e32 v27, v101
	v_cvt_f32_i32_e32 v28, v102
	v_cvt_f32_i32_e32 v25, v9
	v_cvt_f32_i32_e32 v26, v10
	v_cvt_f32_i32_e32 v35, v11
	v_cvt_f32_i32_e32 v11, v12
	v_cvt_f32_i32_e32 v0, v13
	v_cvt_f32_i32_e32 v9, v14
	v_cvt_f32_i32_e32 v10, v15
	v_cvt_f32_i32_e32 v1, v16
	v_cvt_f32_i32_e32 v16, v19
	v_cvt_f32_i32_e32 v19, v20
	v_cvt_f32_i32_e32 v15, v22
	v_cvt_f32_i32_e32 v13, v23
	v_cvt_f32_i32_e32 v14, v24
	scratch_store_b32 off, v1, off offset:336 ; 4-byte Folded Spill
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s30, 31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v2, off, off offset:928
	scratch_load_b32 v3, off, off offset:924
	scratch_load_b32 v4, off, off offset:904
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 25
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v19, off offset:1296
	scratch_store_b32 off, v16, off offset:1292
	scratch_store_b32 off, v15, off offset:1288
	scratch_store_b32 off, v14, off offset:1280
	scratch_store_b32 off, v13, off offset:1276
	scratch_store_b32 off, v195, off offset:1272
	scratch_store_b32 off, v194, off offset:1268
	scratch_store_b32 off, v193, off offset:1264
	scratch_store_b32 off, v174, off offset:1260
	scratch_store_b32 off, v173, off offset:1256
	scratch_store_b32 off, v172, off offset:1252
	scratch_store_b32 off, v171, off offset:1248
	scratch_store_b32 off, v170, off offset:1244
	scratch_store_b32 off, v169, off offset:1240
	scratch_store_b32 off, v168, off offset:1236
	scratch_store_b32 off, v167, off offset:1232
	scratch_store_b32 off, v138, off offset:1228
	scratch_store_b32 off, v137, off offset:1220
	scratch_store_b32 off, v136, off offset:1216
	scratch_store_b32 off, v135, off offset:1212
	scratch_store_b32 off, v134, off offset:1208
	scratch_store_b32 off, v133, off offset:1204
	scratch_store_b32 off, v132, off offset:1200
	scratch_store_b32 off, v131, off offset:1196
	scratch_store_b32 off, v48, off offset:1192
	scratch_store_b32 off, v47, off offset:1188
	scratch_store_b32 off, v46, off offset:1184
	scratch_store_b32 off, v45, off offset:992
	scratch_store_b32 off, v44, off offset:988
	scratch_store_b32 off, v43, off offset:984
	scratch_store_b32 off, v42, off offset:980
	scratch_store_b32 off, v41, off offset:976
	s_clause 0x14                           ; 84-byte Folded Spill
	scratch_store_b32 off, v40, off offset:972
	scratch_store_b32 off, v39, off offset:968
	scratch_store_b32 off, v38, off offset:964
	scratch_store_b32 off, v37, off offset:944
	scratch_store_b32 off, v36, off offset:940
	scratch_store_b32 off, v145, off offset:588
	scratch_store_b32 off, v35, off offset:560
	scratch_store_b32 off, v34, off offset:532
	scratch_store_b32 off, v33, off offset:528
	scratch_store_b32 off, v32, off offset:516
	scratch_store_b32 off, v31, off offset:512
	scratch_store_b32 off, v30, off offset:508
	scratch_store_b32 off, v29, off offset:504
	scratch_store_b32 off, v28, off offset:500
	scratch_store_b32 off, v27, off offset:496
	scratch_store_b32 off, v26, off offset:492
	scratch_store_b32 off, v25, off offset:488
	scratch_store_b32 off, v11, off offset:484
	scratch_store_b32 off, v10, off offset:472
	scratch_store_b32 off, v9, off offset:408
	scratch_store_b32 off, v0, off offset:404
	s_add_i32 s0, s30, s0
	s_mov_b32 s15, 0x31027000
	s_ashr_i32 s0, s0, 7
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s45
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v0, v149, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s0, s35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v1, v148, s1, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_and_b32 s13, s13, 0xffff
	v_add_lshl_u32 v5, v165, s0, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	v_add3_u32 v57, s33, s27, v180
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	v_add_lshl_u32 v6, v166, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	s_mov_b32 s31, s15
	s_and_b32 s29, s29, 0xffff
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v7, v57, s1, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v25, s48, v208
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v76, 0
	s_waitcnt lgkmcnt(5)
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v70, 0
	s_waitcnt lgkmcnt(4)
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v28, 0
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v66, 0
	v_mov_b32_e32 v73, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v204, 0
	v_mov_b32_e32 v71, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v202, 0
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v42, 0
	v_mov_b32_e32 v197, 0
	v_mov_b32_e32 v203, 0
	v_mov_b32_e32 v43, 0
	s_mov_b32 s4, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v167, 0
	v_mov_b32_e32 v188, 0
	v_mov_b32_e32 v194, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(4)
	v_and_b32_e32 v2, 32, v2
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v2, 0, v4, v2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v4, v156, s0, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_and_b32_e32 v3, 28, v3
	v_add_nc_u32_e32 v62, v2, v3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v2, 0x80000000, v4 :: v_dual_cndmask_b32 v3, 0x80000000, v5
	v_dual_cndmask_b32 v4, 0x80000000, v6 :: v_dual_cndmask_b32 v5, 0x80000000, v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v0, off offset:1300 ; 4-byte Folded Spill
	buffer_load_u16 v0, v2, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v62, v1 offset:36864
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:1284 ; 4-byte Folded Spill
	buffer_load_u16 v0, v3, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:1224 ; 4-byte Folded Spill
	buffer_load_u16 v0, v4, s[12:15], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:996 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:900 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v0, v5, s[28:31], 0 offen
	v_mov_b32_e32 v139, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v121, 0, v1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	scratch_load_b32 v1, off, off offset:932 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[33:36], v121 offset:36864
	ds_load_b128 v[29:32], v121 offset:36880
	ds_load_b128 v[21:24], v121 offset:37376
	ds_load_b128 v[17:20], v121 offset:37392
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s48, v1
	scratch_load_b32 v1, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v62, v0 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s48, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v1, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v1, v25
	ds_load_u8_d16 v169, v25 offset:16
	ds_load_u8_d16 v0, v25 offset:32
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1428 ; 4-byte Folded Spill
	ds_load_u8_d16 v250, v25 offset:48
	ds_load_u8_d16 v2, v25 offset:64
	ds_load_u8_d16 v170, v25 offset:80
	ds_load_u8_d16 v0, v25 offset:96
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1432 ; 4-byte Folded Spill
	ds_load_u8_d16 v255, v25 offset:112
	ds_load_u8_d16 v3, v25 offset:128
	ds_load_u8_d16 v4, v25 offset:192
	ds_load_u8_d16 v251, v25 offset:144
	ds_load_u8_d16 v98, v25 offset:208
	ds_load_u8_d16 v0, v25 offset:160
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1436 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:224
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1440 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:240
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1312 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:176
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1316 ; 4-byte Folded Spill
	ds_load_u8_d16 v5, v25 offset:256
	ds_load_u8_d16 v6, v25 offset:320
	ds_load_u8_d16 v103, v25 offset:272
	ds_load_u8_d16 v104, v25 offset:336
	ds_load_u8_d16 v0, v25 offset:288
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1460 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:352
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1464 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:368
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1336 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:304
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1340 ; 4-byte Folded Spill
	ds_load_u8_d16 v7, v25 offset:384
	ds_load_u8_d16 v8, v25 offset:448
	ds_load_u8_d16 v106, v25 offset:400
	ds_load_u8_d16 v107, v25 offset:464
	ds_load_u8_d16 v0, v25 offset:416
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1468 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:480
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1472 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:496
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1344 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:432
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1348 ; 4-byte Folded Spill
	ds_load_u8_d16 v9, v25 offset:512
	ds_load_u8_d16 v10, v25 offset:576
	ds_load_u8_d16 v110, v25 offset:528
	ds_load_u8_d16 v112, v25 offset:592
	ds_load_u8_d16 v0, v25 offset:544
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1496 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:608
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1500 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:624
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1368 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:560
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1372 ; 4-byte Folded Spill
	ds_load_u8_d16 v11, v25 offset:640
	ds_load_u8_d16 v12, v25 offset:704
	ds_load_u8_d16 v114, v25 offset:656
	ds_load_u8_d16 v115, v25 offset:720
	ds_load_u8_d16 v0, v25 offset:672
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1504 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:736
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1508 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:752
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1376 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:688
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1380 ; 4-byte Folded Spill
	ds_load_u8_d16 v13, v25 offset:768
	ds_load_u8_d16 v14, v25 offset:832
	ds_load_u8_d16 v119, v25 offset:784
	ds_load_u8_d16 v61, v25 offset:848
	ds_load_u8_d16 v0, v25 offset:800
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1528 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:864
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1532 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:880
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1400 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:816
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1404 ; 4-byte Folded Spill
	ds_load_u8_d16 v15, v25 offset:896
	ds_load_u8_d16 v16, v25 offset:960
	ds_load_u8_d16 v53, v25 offset:1024
	ds_load_u8_d16 v59, v25 offset:912
	ds_load_u8_d16 v60, v25 offset:976
	ds_load_u8_d16 v116, v25 offset:928
	ds_load_u8_d16 v0, v25 offset:992
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1536 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:944
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1408 ; 4-byte Folded Spill
	ds_load_u8_d16 v54, v25 offset:1088
	ds_load_u8_d16 v55, v25 offset:1152
	ds_load_u8_d16 v101, v25 offset:1040
	ds_load_u8_d16 v102, v25 offset:1104
	ds_load_u8_d16 v0, v25 offset:1056
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1444 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1120
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1448 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1136
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1320 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1072
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1324 ; 4-byte Folded Spill
	ds_load_u8_d16 v56, v25 offset:1216
	ds_load_u8_d16 v124, v25 offset:1280
	ds_load_u8_d16 v63, v25 offset:1168
	ds_load_u8_d16 v105, v25 offset:1232
	ds_load_u8_d16 v0, v25 offset:1184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1452 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1248
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1456 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1264
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1328 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1200
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1332 ; 4-byte Folded Spill
	ds_load_u8_d16 v125, v25 offset:1344
	ds_load_u8_d16 v126, v25 offset:1408
	ds_load_u8_d16 v108, v25 offset:1296
	ds_load_u8_d16 v109, v25 offset:1360
	ds_load_u8_d16 v0, v25 offset:1312
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1480 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1376
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1484 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1392
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1352 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1328
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1356 ; 4-byte Folded Spill
	ds_load_u8_d16 v127, v25 offset:1472
	ds_load_u8_d16 v128, v25 offset:1536
	ds_load_u8_d16 v111, v25 offset:1424
	ds_load_u8_d16 v113, v25 offset:1488
	ds_load_u8_d16 v0, v25 offset:1440
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1488 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1504
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1492 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1520
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1360 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1456
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1364 ; 4-byte Folded Spill
	ds_load_u8_d16 v129, v25 offset:1600
	ds_load_u8_d16 v130, v25 offset:1664
	ds_load_u8_d16 v117, v25 offset:1552
	ds_load_u8_d16 v118, v25 offset:1616
	ds_load_u8_d16 v0, v25 offset:1568
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1512 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1632
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1516 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1384 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1584
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1388 ; 4-byte Folded Spill
	ds_load_u8_d16 v131, v25 offset:1728
	ds_load_u8_d16 v132, v25 offset:1792
	ds_load_u8_d16 v65, v25 offset:1680
	ds_load_u8_d16 v58, v25 offset:1744
	ds_load_u8_d16 v0, v25 offset:1696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1520 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1524 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1392 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1396 ; 4-byte Folded Spill
	ds_load_u8_d16 v133, v25 offset:1856
	ds_load_u8_d16 v134, v25 offset:1920
	ds_load_u8_d16 v64, v25 offset:1808
	ds_load_u8_d16 v99, v25 offset:1872
	ds_load_u8_d16 v247, v25 offset:1824
	ds_load_u8_d16 v196, v25 offset:1888
	ds_load_u8_d16 v0, v25 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1412 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1840
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1416 ; 4-byte Folded Spill
	ds_load_u8_d16 v135, v25 offset:1984
	ds_load_u8_d16 v120, v25 offset:1936
	ds_load_u8_d16 v122, v25 offset:2000
	ds_load_u8_d16 v168, v25 offset:1952
	ds_load_u8_d16 v100, v25 offset:2016
	ds_load_u8_d16 v0, v26
	v_mov_b32_e32 v26, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1476 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v27
	v_mov_b32_e32 v27, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1420 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v25 offset:1968
	v_mov_b32_e32 v25, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1424 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v0, v13, v14, 0xc0c0004
	v_perm_b32 v25, v15, v16, 0xc0c0004
	v_perm_b32 v26, v9, v10, 0xc0c0004
	v_perm_b32 v27, v11, v12, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v28, v25, 16, v0
	v_perm_b32 v0, v5, v6, 0xc0c0004
	v_perm_b32 v25, v7, v8, 0xc0c0004
	v_lshl_or_b32 v27, v27, 16, v26
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	v_lshl_or_b32 v26, v25, 16, v0
	v_perm_b32 v0, v1, v2, 0xc0c0004
	v_perm_b32 v25, v3, v4, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:660
	scratch_load_b32 v37, off, off offset:652
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_lshl_or_b32 v25, v25, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v0, off, off offset:656
	scratch_load_b32 v40, off, off offset:644
	scratch_load_b32 v39, off, off offset:636
	scratch_load_b32 v144, off, off offset:716
	scratch_load_b32 v145, off, off offset:728
	scratch_load_b32 v146, off, off offset:704
	scratch_load_b32 v147, off, off offset:708
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v38, s47, v38
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v37, s47, v37
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v0, s47, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v39, s47, v39
	v_add_nc_u32_e32 v40, s47, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v145, s47, v145
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v146, s47, v146
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v40, v40
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v144, s47, v144
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v145, v145
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v147, s47, v147
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v146, v146
	ds_load_u8 v144, v144
	ds_load_u8 v147, v147
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:664 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s47, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v184, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:624 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s47, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:648 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s47, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:772 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v183, v39, 16, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:628
	scratch_load_b32 v37, off, off offset:620
	v_add_nc_u32_e32 v0, s47, v0
	scratch_load_b32 v39, off, off offset:764 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v40, s47, v40
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, s47, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s47, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s47, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v37, v37
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:632 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s47, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:612 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v182, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:608 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v37, s47, v150
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s47, v38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s47, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:616 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s47, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:788 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v181, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:784
	scratch_load_b32 v37, off, off offset:780
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, s47, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s47, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:792 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s47, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:768 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v189, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s47, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:776 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s47, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v188, v39, 16, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:756
	scratch_load_b32 v37, off, off offset:748
	v_add_nc_u32_e32 v0, s47, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v39, v114, v115, 0xc0c0004
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s47, v38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s47, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:760 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s47, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v187, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:736
	scratch_load_b32 v37, off, off offset:732
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, s47, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s47, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:744 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s47, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	v_perm_b32 v38, v110, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v186, v37, 16, v0
	v_perm_b32 v0, v119, v61, 0xc0c0004
	v_perm_b32 v37, v59, v60, 0xc0c0004
	v_lshl_or_b32 v76, v39, 16, v38
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:1496
	scratch_load_b32 v39, off, off offset:1500
	v_lshl_or_b32 v77, v37, 16, v0
	v_perm_b32 v0, v103, v104, 0xc0c0004
	v_perm_b32 v37, v106, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v37, 16, v0
	v_perm_b32 v0, v169, v170, 0xc0c0004
	v_perm_b32 v37, v251, v98, 0xc0c0004
	v_lshl_or_b32 v74, v37, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1528
	scratch_load_b32 v37, off, off offset:1532
	s_waitcnt vmcnt(2)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:1504
	scratch_load_b32 v40, off, off offset:1508
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v37, 0xc0c0004
	scratch_load_b32 v37, off, off offset:1536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v39, v39, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v39, 16, v38
	s_waitcnt vmcnt(0)
	v_perm_b32 v37, v116, v37, 0xc0c0004
	v_lshl_or_b32 v93, v37, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1460
	scratch_load_b32 v37, off, off offset:1464
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v37, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:1468
	scratch_load_b32 v38, off, off offset:1472
	s_waitcnt vmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v37, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1428
	scratch_load_b32 v37, off, off offset:1432
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v37, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:1436
	scratch_load_b32 v38, off, off offset:1440
	s_waitcnt vmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v37, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1400
	scratch_load_b32 v37, off, off offset:1404
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:1408
	scratch_load_b32 v38, off, off offset:1476
	s_waitcnt vmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:1368
	scratch_load_b32 v39, off, off offset:1372
	v_lshl_or_b32 v193, v37, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1336
	scratch_load_b32 v37, off, off offset:1340
	s_waitcnt vmcnt(2)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:1376
	scratch_load_b32 v40, off, off offset:1380
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v192, v39, 16, v38
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:1344
	scratch_load_b32 v38, off, off offset:1348
	s_waitcnt vmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v191, v37, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:1312
	scratch_load_b32 v38, off, off offset:1316
	v_perm_b32 v0, v250, v255, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v190, v37, 16, v0
	v_dual_mov_b32 v44, s11 :: v_dual_mov_b32 v43, s10
	v_dual_mov_b32 v42, s9 :: v_dual_mov_b32 v41, s8
	v_dual_mov_b32 v40, s7 :: v_dual_mov_b32 v39, s6
	v_dual_mov_b32 v38, s5 :: v_dual_mov_b32 v37, s4
	v_perm_b32 v0, v132, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[181:184], v[25:28], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[186:189], v[25:28], v[37:44] neg_lo:[1,1,0]
	v_perm_b32 v25, v134, v135, 0xc0c0004
	v_perm_b32 v26, v128, v129, 0xc0c0004
	v_perm_b32 v27, v130, v131, 0xc0c0004
	v_lshl_or_b32 v28, v25, 16, v0
	v_perm_b32 v0, v124, v125, 0xc0c0004
	v_perm_b32 v25, v126, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v27, v27, 16, v26
	v_lshl_or_b32 v26, v25, 16, v0
	v_perm_b32 v0, v53, v54, 0xc0c0004
	v_perm_b32 v25, v55, v56, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v25, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:720 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s47, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v144, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v144, off, off offset:724 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v144, s47, v144
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v144, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v144, v145, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v145, off, off offset:700 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v145, s47, v145
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[171:178], v[181:184], v[74:77], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[186:189], v[74:77], v[37:44] neg_lo:[1,1,0]
	ds_load_u8 v145, v145
	v_wmma_i32_16x16x16_iu8 v[74:81], v[181:184], v[90:93], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[186:189], v[90:93], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[181:184], v[190:193], v[37:44] neg_lo:[1,1,0]
	v_lshl_or_b32 v184, v144, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:688 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[37:44], v[186:189], v[190:193], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v145, v146, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v146, off, off offset:712 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v146, s47, v146
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v146, v146
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v147, off, off offset:836 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v183, v146, 16, v145
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v145, off, off offset:696
	scratch_load_b32 v144, off, off offset:684
	v_add_nc_u32_e32 v0, s47, v0
	scratch_load_b32 v146, off, off offset:832 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v147, s47, v147
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v145, s47, v145
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v144, s47, v144
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v147, v147
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v146, s47, v146
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v145, v145
	ds_load_u8 v144, v144
	ds_load_u8 v146, v146
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v144, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v144, off, off offset:692 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v144, s47, v144
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v144, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v144, v145, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v145, off, off offset:676 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v182, v144, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:668
	scratch_load_b32 v144, off, off offset:672
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v145, s47, v145
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v144, s47, v144
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v145, v145
	ds_load_u8 v0, v0
	ds_load_u8 v144, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v144, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v144, off, off offset:680 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v144, s47, v144
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v144, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v145, off, off offset:856 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v181, v144, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:848
	scratch_load_b32 v144, off, off offset:844
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[45:52], v[181:184], v[25:28], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v201, v49
	v_cvt_f32_i32_e32 v167, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v195, v46
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v145, s47, v145
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v144, s47, v144
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v145, v145
	ds_load_u8 v0, v0
	ds_load_u8 v144, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v144, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v144, off, off offset:852 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v144, s47, v144
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v144, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v144, v145, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v145, off, off offset:828 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v189, v144, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:816 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v145, s47, v145
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v145, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v145, v146, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v146, off, off offset:840 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v146, s47, v146
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v146, v146
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v188, v146, 16, v145
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v145, off, off offset:824
	scratch_load_b32 v144, off, off offset:812
	v_add_nc_u32_e32 v0, s47, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v145, s47, v145
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v144, s47, v144
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v145, v145
	ds_load_u8 v144, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v144, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v144, off, off offset:820 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v144, s47, v144
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v144, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v144, v145, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v145, off, off offset:804 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v187, v144, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:796
	scratch_load_b32 v144, off, off offset:800
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v145, s47, v145
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v144, s47, v144
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v145, v145
	ds_load_u8 v0, v0
	ds_load_u8 v144, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v144, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v144, off, off offset:808 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v144, s47, v144
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v144, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v186, v144, 16, v0
	v_perm_b32 v0, v64, v99, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[136:143], v[186:189], v[25:28], v[136:143] neg_lo:[1,1,0]
	v_perm_b32 v25, v120, v122, 0xc0c0004
	v_perm_b32 v26, v117, v118, 0xc0c0004
	v_perm_b32 v27, v65, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v191, v136
	v_lshl_or_b32 v28, v25, 16, v0
	v_perm_b32 v0, v108, v109, 0xc0c0004
	v_perm_b32 v25, v111, v113, 0xc0c0004
	v_lshl_or_b32 v27, v27, 16, v26
	v_cvt_f32_i32_e32 v192, v137
	v_cvt_f32_i32_e32 v190, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v25, 16, v0
	v_perm_b32 v0, v101, v102, 0xc0c0004
	v_perm_b32 v25, v63, v105, 0xc0c0004
	v_lshl_or_b32 v25, v25, 16, v0
	v_perm_b32 v0, v247, v196, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[181:184], v[25:28], v[171:178] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[186:189], v[25:28], v[66:73] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:1512
	scratch_load_b32 v27, off, off offset:1516
	v_perm_b32 v25, v168, v100, 0xc0c0004
	v_cvt_f32_i32_e32 v179, v173
	v_cvt_f32_i32_e32 v173, v175
	v_cvt_f32_i32_e32 v146, v66
	v_cvt_f32_i32_e32 v147, v67
	v_cvt_f32_i32_e32 v145, v69
	v_cvt_f32_i32_e32 v193, v70
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v26, v27, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:1520
	scratch_load_b32 v28, off, off offset:1524
	s_waitcnt vmcnt(0)
	v_perm_b32 v27, v27, v28, 0xc0c0004
	v_lshl_or_b32 v28, v25, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1480
	scratch_load_b32 v25, off, off offset:1484
	v_lshl_or_b32 v27, v27, 16, v26
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v25, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:1488
	scratch_load_b32 v26, off, off offset:1492
	s_waitcnt vmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v25, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1444
	scratch_load_b32 v25, off, off offset:1448
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v25, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:1452
	scratch_load_b32 v144, off, off offset:1456
	s_waitcnt vmcnt(0)
	v_perm_b32 v25, v25, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v25, 16, v0
	v_wmma_i32_16x16x16_iu8 v[74:81], v[181:184], v[25:28], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[186:189], v[25:28], v[82:89] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1412
	scratch_load_b32 v25, off, off offset:1416
	v_cvt_f32_i32_e32 v139, v74
	v_cvt_f32_i32_e32 v137, v76
	v_cvt_f32_i32_e32 v136, v78
	v_cvt_f32_i32_e32 v78, v80
	v_cvt_f32_i32_e32 v76, v83
	v_cvt_f32_i32_e32 v74, v85
	v_cvt_f32_i32_e32 v70, v89
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:1420
	scratch_load_b32 v26, off, off offset:1424
	s_waitcnt vmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:1384
	scratch_load_b32 v27, off, off offset:1388
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:1392
	scratch_load_b32 v28, off, off offset:1396
	s_waitcnt vmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_lshl_or_b32 v28, v25, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1352
	scratch_load_b32 v25, off, off offset:1356
	v_lshl_or_b32 v27, v27, 16, v26
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:1360
	scratch_load_b32 v26, off, off offset:1364
	s_waitcnt vmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v25, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1320
	scratch_load_b32 v25, off, off offset:1324
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:1328
	scratch_load_b32 v144, off, off offset:1332
	s_waitcnt vmcnt(0)
	v_perm_b32 v25, v144, v25, 0xc0c0004
	v_cvt_f32_i32_e32 v144, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v25, v25, 16, v0
	v_cvt_f32_i32_e32 v0, v79
	v_cvt_f32_i32_e32 v79, v81
	v_wmma_i32_16x16x16_iu8 v[90:97], v[181:184], v[25:28], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[186:189], v[25:28], v[37:44] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v189, v138
	v_cvt_f32_i32_e32 v187, v140
	v_cvt_f32_i32_e32 v188, v141
	v_cvt_f32_i32_e32 v184, v142
	v_cvt_f32_i32_e32 v186, v143
	v_cvt_f32_i32_e32 v182, v171
	v_cvt_f32_i32_e32 v183, v172
	v_cvt_f32_i32_e32 v181, v174
	v_cvt_f32_i32_e32 v174, v176
	v_cvt_f32_i32_e32 v171, v177
	v_cvt_f32_i32_e32 v172, v178
	v_cvt_f32_i32_e32 v143, v71
	v_cvt_f32_i32_e32 v141, v72
	v_cvt_f32_i32_e32 v142, v73
	v_cvt_f32_i32_e32 v140, v75
	v_cvt_f32_i32_e32 v138, v77
	v_cvt_f32_i32_e32 v77, v82
	v_cvt_f32_i32_e32 v75, v84
	v_cvt_f32_i32_e32 v73, v86
	v_cvt_f32_i32_e32 v72, v87
	v_cvt_f32_i32_e32 v71, v88
	v_cvt_f32_i32_e32 v69, v90
	v_cvt_f32_i32_e32 v68, v91
	v_cvt_f32_i32_e32 v67, v92
	v_cvt_f32_i32_e32 v66, v93
	v_cvt_f32_i32_e32 v28, v94
	v_cvt_f32_i32_e32 v27, v95
	v_cvt_f32_i32_e32 v26, v96
	v_mov_b32_e32 v96, v0
	v_cvt_f32_i32_e32 v25, v97
	v_cvt_f32_i32_e32 v204, v37
	v_cvt_f32_i32_e32 v0, v38
	v_cvt_f32_i32_e32 v194, v39
	v_cvt_f32_i32_e32 v203, v40
	v_cvt_f32_i32_e32 v202, v41
	v_cvt_f32_i32_e32 v197, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v42, v44
	v_cvt_f32_i32_e32 v40, v47
	v_cvt_f32_i32_e32 v41, v48
	v_cvt_f32_i32_e32 v39, v50
	v_cvt_f32_i32_e32 v37, v51
	v_cvt_f32_i32_e32 v38, v52
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v158, off, off offset:88
	scratch_load_b32 v159, off, off offset:92
	scratch_load_b32 v162, off, off offset:96
	scratch_load_b32 v164, off, off offset:80
	scratch_load_b32 v163, off, off offset:332
	scratch_load_b32 v157, off, off offset:84
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v43, off offset:1308
	scratch_store_b32 off, v42, off offset:1304
	scratch_store_b32 off, v41, off offset:1176
	scratch_store_b32 off, v40, off offset:1172
	scratch_store_b32 off, v39, off offset:1168
	scratch_store_b32 off, v38, off offset:1164
	scratch_store_b32 off, v37, off offset:1160
	scratch_store_b32 off, v192, off offset:1156
	scratch_store_b32 off, v191, off offset:1152
	scratch_store_b32 off, v190, off offset:1148
	scratch_store_b32 off, v189, off offset:1144
	scratch_store_b32 off, v188, off offset:1140
	scratch_store_b32 off, v187, off offset:1136
	scratch_store_b32 off, v186, off offset:1132
	scratch_store_b32 off, v184, off offset:1128
	scratch_store_b32 off, v183, off offset:1124
	scratch_store_b32 off, v182, off offset:1120
	scratch_store_b32 off, v181, off offset:1116
	scratch_store_b32 off, v179, off offset:1112
	scratch_store_b32 off, v174, off offset:1108
	scratch_store_b32 off, v173, off offset:1104
	scratch_store_b32 off, v172, off offset:1100
	scratch_store_b32 off, v171, off offset:1096
	scratch_store_b32 off, v147, off offset:1092
	scratch_store_b32 off, v146, off offset:1088
	scratch_store_b32 off, v145, off offset:1084
	scratch_store_b32 off, v144, off offset:1080
	scratch_store_b32 off, v143, off offset:1076
	scratch_store_b32 off, v142, off offset:1068
	scratch_store_b32 off, v141, off offset:1064
	scratch_store_b32 off, v140, off offset:1060
	scratch_store_b32 off, v139, off offset:1056
	s_clause 0x15                           ; 88-byte Folded Spill
	scratch_store_b32 off, v138, off offset:1052
	scratch_store_b32 off, v137, off offset:1048
	scratch_store_b32 off, v136, off offset:1032
	scratch_store_b32 off, v79, off offset:1028
	scratch_store_b32 off, v78, off offset:1024
	scratch_store_b32 off, v77, off offset:1020
	scratch_store_b32 off, v76, off offset:1016
	scratch_store_b32 off, v75, off offset:1012
	scratch_store_b32 off, v74, off offset:1008
	scratch_store_b32 off, v73, off offset:1004
	scratch_store_b32 off, v72, off offset:1000
	scratch_store_b32 off, v71, off offset:960
	scratch_store_b32 off, v70, off offset:956
	scratch_store_b32 off, v69, off offset:952
	scratch_store_b32 off, v68, off offset:948
	scratch_store_b32 off, v67, off offset:936
	scratch_store_b32 off, v66, off offset:932
	scratch_store_b32 off, v28, off offset:928
	scratch_store_b32 off, v27, off offset:924
	scratch_store_b32 off, v26, off offset:904
	scratch_store_b32 off, v25, off offset:900
	scratch_store_b32 off, v0, off offset:448
	ds_load_b128 v[45:48], v121 offset:36864
	ds_load_b128 v[41:44], v121 offset:36880
	ds_load_b128 v[37:40], v121 offset:37376
	ds_load_b128 v[25:28], v121 offset:37392
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v0, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v49, off, off offset:852 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_mov_b16_e64 v183.l, v255.l
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:856 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v1, v1, v2, 0xc0c0004
	v_perm_b32 v2, v3, v4, 0xc0c0004
	v_perm_b32 v53, v53, v54, 0xc0c0004
	v_perm_b32 v54, v55, v56, 0xc0c0004
	v_perm_b32 v5, v5, v6, 0xc0c0004
	v_perm_b32 v6, v7, v8, 0xc0c0004
	v_perm_b32 v13, v13, v14, 0xc0c0004
	v_perm_b32 v14, v15, v16, 0xc0c0004
	v_perm_b32 v9, v9, v10, 0xc0c0004
	v_perm_b32 v10, v11, v12, 0xc0c0004
	v_perm_b32 v59, v59, v60, 0xc0c0004
	v_perm_b32 v58, v65, v58, 0xc0c0004
	v_lshl_or_b32 v69, v14, 16, v13
	v_mov_b32_e32 v255, v254
	v_lshl_or_b32 v68, v10, 16, v9
	v_mov_b32_e32 v254, v96
	v_dual_mov_b32 v179, v156 :: v_dual_mov_b32 v66, v150
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v173, v158 :: v_dual_mov_b32 v178, v155
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v175, v162 :: v_dual_mov_b32 v172, v157
	v_dual_mov_b32 v177, v164 :: v_dual_mov_b32 v174, v159
	v_mov_b32_e32 v181, v165
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v165, s46, v66
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v66, v2, 16, v1
	v_mov_b32_e32 v182, v166
	v_mov_b32_e32 v166, v160
	v_mov_b32_e32 v176, v163
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v50, off, off offset:660
	scratch_load_b32 v51, off, off offset:656
	scratch_load_b32 v52, off, off offset:652
	scratch_load_b32 v67, off, off offset:648
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v171, v161 :: v_dual_add_nc_u32 v70, s46, v49
	scratch_load_b32 v49, off, off offset:848 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v81, s46, v67
	scratch_load_b32 v67, off, off offset:644 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v71, s46, v49
	scratch_load_b32 v49, off, off offset:844 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v82, s46, v67
	scratch_load_b32 v67, off, off offset:640 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v72, s46, v49
	scratch_load_b32 v49, off, off offset:840 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v83, s46, v67
	scratch_load_b32 v67, off, off offset:636 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v143, s46, v49
	scratch_load_b32 v49, off, off offset:836 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v84, s46, v67
	scratch_load_b32 v67, off, off offset:632 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v144, s46, v49
	scratch_load_b32 v49, off, off offset:832 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v158, s46, v67
	scratch_load_b32 v67, off, off offset:628 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v85, s46, v49
	scratch_load_b32 v49, off, off offset:828 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v159, s46, v67
	scratch_load_b32 v67, off, off offset:624 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v86, s46, v49
	scratch_load_b32 v49, off, off offset:824 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v160, s46, v67
	scratch_load_b32 v67, off, off offset:620 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v139, s46, v49
	scratch_load_b32 v49, off, off offset:820 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v161, s46, v67
	scratch_load_b32 v67, off, off offset:616 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v50, s46, v50
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v140, s46, v49
	scratch_load_b32 v49, off, off offset:816 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v162, s46, v67
	scratch_load_b32 v67, off, off offset:612 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v51, s46, v51
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v141, s46, v49
	scratch_load_b32 v49, off, off offset:812 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v163, s46, v67
	scratch_load_b32 v67, off, off offset:608 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v52, s46, v52
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v51
	ds_load_u8 v2, v52
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v142, s46, v49
	scratch_load_b32 v49, off, off offset:808 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, s46, v49
	scratch_load_b32 v49, off, off offset:804 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v136, s46, v49
	scratch_load_b32 v49, off, off offset:800 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v137, s46, v49
	scratch_load_b32 v49, off, off offset:796 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v138, s46, v49
	scratch_load_b32 v49, off, off offset:792 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s46, v49
	scratch_load_b32 v49, off, off offset:788 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v74, s46, v49
	scratch_load_b32 v49, off, off offset:784 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s46, v49
	scratch_load_b32 v49, off, off offset:780 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v76, s46, v49
	scratch_load_b32 v49, off, off offset:776 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v77, s46, v49
	scratch_load_b32 v49, off, off offset:772 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v78, s46, v49
	scratch_load_b32 v49, off, off offset:768 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v79, s46, v49
	scratch_load_b32 v49, off, off offset:764 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v80, s46, v49
	scratch_load_b32 v49, off, off offset:760 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v87, s46, v49
	scratch_load_b32 v49, off, off offset:756 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v88, s46, v49
	scratch_load_b32 v49, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v89, s46, v49
	scratch_load_b32 v49, off, off offset:748 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v90, s46, v49
	scratch_load_b32 v49, off, off offset:744 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v91, s46, v49
	scratch_load_b32 v49, off, off offset:740 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v92, s46, v49
	scratch_load_b32 v49, off, off offset:736 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v93, s46, v49
	scratch_load_b32 v49, off, off offset:732 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v94, s46, v49
	scratch_load_b32 v49, off, off offset:728 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v95, s46, v49
	scratch_load_b32 v49, off, off offset:724 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v96, s46, v49
	scratch_load_b32 v49, off, off offset:720 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v97, s46, v49
	scratch_load_b32 v49, off, off offset:716 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v145, s46, v49
	scratch_load_b32 v49, off, off offset:712 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v146, s46, v49
	scratch_load_b32 v49, off, off offset:708 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v147, s46, v49
	scratch_load_b32 v49, off, off offset:704 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v148, s46, v49
	scratch_load_b32 v49, off, off offset:700 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v149, s46, v49
	scratch_load_b32 v49, off, off offset:696 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v150, s46, v49
	scratch_load_b32 v49, off, off offset:692 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v151, s46, v49
	scratch_load_b32 v49, off, off offset:688 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s46, v49
	scratch_load_b32 v49, off, off offset:684 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v153, s46, v49
	scratch_load_b32 v49, off, off offset:680 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v154, s46, v49
	scratch_load_b32 v49, off, off offset:676 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v155, s46, v49
	scratch_load_b32 v49, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v156, s46, v49
	scratch_load_b32 v49, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v157, s46, v49
	scratch_load_b32 v49, off, off offset:664 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v49, s46, v49
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v49
	ds_load_u8 v3, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v2, 16, v1
	ds_load_u8 v1, v83
	ds_load_u8 v2, v84
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v81
	ds_load_u8 v3, v82
	v_perm_b32 v81, v132, v133, 0xc0c0004
	v_perm_b32 v82, v134, v135, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v84, v82, 16, v81
	v_perm_b32 v81, v128, v129, 0xc0c0004
	v_perm_b32 v82, v130, v131, 0xc0c0004
	v_lshl_or_b32 v83, v82, 16, v81
	v_perm_b32 v81, v124, v125, 0xc0c0004
	v_perm_b32 v82, v126, v127, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v82, v82, 16, v81
	v_lshl_or_b32 v81, v54, 16, v53
	ds_load_u8 v53, v97
	ds_load_u8 v54, v145
	v_lshl_or_b32 v51, v2, 16, v1
	ds_load_u8 v1, v160
	ds_load_u8 v2, v161
	ds_load_u8 v3, v159
	v_mov_b32_e32 v160, v166
	v_dual_mov_b32 v166, v182 :: v_dual_mov_b32 v161, v171
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v95
	ds_load_u8 v55, v96
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v158
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v54, 16, v53
	ds_load_u8 v53, v148
	ds_load_u8 v54, v149
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:576
	scratch_load_b32 v149, off, off offset:580
	v_mov_b32_e32 v158, v173
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v164, s46, v67
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v67, v6, 16, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v146
	ds_load_u8 v55, v147
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v54, 16, v53
	ds_load_u8 v53, v152
	ds_load_u8 v54, v153
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v150
	ds_load_u8 v95, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v95, v54, 0xc0c0004
	ds_load_u8 v95, v157
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_mov_b32_e32 v157, v172
	v_mov_b32_e32 v159, v174
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v156
	v_lshl_or_b32 v50, v2, 16, v1
	v_mov_b32_e32 v156, v179
	ds_load_u8 v1, v164
	ds_load_u8 v2, v165
	v_mov_b32_e32 v165, v181
	ds_load_u8 v73, v73
	ds_load_u8 v74, v74
	v_mov_b32_e32 v164, v177
	ds_load_u8 v3, v163
	v_mov_b32_e32 v163, v176
	ds_load_u8 v75, v75
	ds_load_u8 v76, v76
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v53, v95, v53, 0xc0c0004
	ds_load_u8 v95, v154
	ds_load_u8 v96, v155
	v_mov_b32_e32 v155, v178
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v162
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	v_mov_b32_e32 v162, v175
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v135, v73, 16, v75
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_lshl_or_b32 v53, v95, 16, v53
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v49, v2, 16, v1
	v_mov_b32_e32 v1, s4
	v_mov_b32_e32 v3, s6
	ds_load_u8 v73, v79
	ds_load_u8 v74, v80
	v_mov_b32_e32 v7, s10
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v4, s7
	v_mov_b32_e32 v2, s5
	v_mov_b32_e32 v6, s9
	v_mov_b32_e32 v8, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[49:52], v[66:69], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[53:56], v[81:84], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v77
	ds_load_u8 v75, v78
	v_cvt_f32_i32_e32 v147, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v74, 16, v73
	ds_load_u8 v73, v89
	ds_load_u8 v74, v90
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v87
	ds_load_u8 v75, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v133, v74, 16, v73
	ds_load_u8 v73, v93
	ds_load_u8 v74, v94
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v91
	ds_load_u8 v75, v92
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v132, v74, 16, v73
	v_wmma_i32_16x16x16_iu8 v[73:80], v[132:135], v[66:69], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v66, v71
	ds_load_u8 v67, v72
	v_cvt_f32_i32_e32 v72, v10
	v_cvt_f32_i32_e32 v71, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v0, v0
	ds_load_u8 v67, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v67, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v0, 16, v66
	ds_load_u8 v0, v85
	ds_load_u8 v66, v86
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v143
	ds_load_u8 v67, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v66, 16, v0
	ds_load_u8 v0, v141
	ds_load_u8 v66, v142
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v139
	ds_load_u8 v67, v140
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v66, 16, v0
	ds_load_u8 v0, v137
	ds_load_u8 v66, v138
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v123
	ds_load_u8 v70, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v70, v66, 0xc0c0004
	v_cvt_f32_i32_e32 v70, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v66, v66, 16, v0
	v_perm_b32 v0, v119, v61, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[73:80], v[66:69], v[81:84], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v126, v59, 16, v0
	v_perm_b32 v0, v110, v112, 0xc0c0004
	v_perm_b32 v59, v114, v115, 0xc0c0004
	v_cvt_f32_i32_e32 v191, v73
	v_cvt_f32_i32_e32 v192, v74
	v_cvt_f32_i32_e32 v189, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v125, v59, 16, v0
	v_perm_b32 v0, v103, v104, 0xc0c0004
	v_perm_b32 v59, v106, v107, 0xc0c0004
	v_cvt_f32_i32_e32 v190, v76
	v_cvt_f32_i32_e32 v144, v77
	v_cvt_f32_i32_e32 v146, v78
	v_cvt_f32_i32_e32 v142, v79
	v_cvt_f32_i32_e32 v143, v80
	v_lshl_or_b32 v124, v59, 16, v0
	v_perm_b32 v0, v169, v170, 0xc0c0004
	v_perm_b32 v59, v251, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v123, v59, 16, v0
	v_perm_b32 v0, v64, v99, 0xc0c0004
	v_perm_b32 v59, v120, v122, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[81:88], v[49:52], v[123:126], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v61, v59, 16, v0
	v_perm_b32 v0, v117, v118, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[89:96], v[132:135], v[123:126], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v123, v9
	v_lshl_or_b32 v60, v58, 16, v0
	v_perm_b32 v0, v108, v109, 0xc0c0004
	v_perm_b32 v58, v111, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v58, 16, v0
	v_perm_b32 v0, v101, v102, 0xc0c0004
	v_perm_b32 v58, v63, v105, 0xc0c0004
	v_lshl_or_b32 v58, v58, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[81:88], v[53:56], v[58:61], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[66:69], v[58:61], v[89:96] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1528
	scratch_load_b32 v58, off, off offset:1532
	v_cvt_f32_i32_e32 v188, v81
	v_cvt_f32_i32_e32 v141, v82
	v_cvt_f32_i32_e32 v186, v83
	v_cvt_f32_i32_e32 v187, v84
	v_cvt_f32_i32_e32 v184, v86
	v_cvt_f32_i32_e32 v181, v87
	v_cvt_f32_i32_e32 v182, v88
	v_cvt_f32_i32_e32 v178, v89
	v_cvt_f32_i32_e32 v179, v90
	v_cvt_f32_i32_e32 v176, v91
	v_cvt_f32_i32_e32 v177, v92
	v_cvt_f32_i32_e32 v174, v93
	v_cvt_f32_i32_e32 v175, v94
	v_cvt_f32_i32_e32 v139, v95
	v_cvt_f32_i32_e32 v140, v96
	v_mov_b32_e32 v96, v254
	v_mov_b32_e32 v254, v255
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v58, 0xc0c0004
	scratch_load_b32 v58, off, off offset:1536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v58, v116, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v58, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1496
	scratch_load_b32 v58, off, off offset:1500
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v58, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v58, off, off offset:1504
	scratch_load_b32 v59, off, off offset:1508
	s_waitcnt vmcnt(0)
	v_perm_b32 v58, v58, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v58, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1460
	scratch_load_b32 v58, off, off offset:1464
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v58, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v58, off, off offset:1468
	scratch_load_b32 v59, off, off offset:1472
	s_waitcnt vmcnt(0)
	v_perm_b32 v58, v58, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v58, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1428
	scratch_load_b32 v58, off, off offset:1432
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v58, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v58, off, off offset:1436
	scratch_load_b32 v63, off, off offset:1440
	s_waitcnt vmcnt(0)
	v_perm_b32 v58, v58, v63, 0xc0c0004
	v_perm_b32 v63, v168, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v58, v58, 16, v0
	v_perm_b32 v0, v247, v196, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[101:108], v[49:52], v[58:61], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v100, v63, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1512
	scratch_load_b32 v63, off, off offset:1516
	v_wmma_i32_16x16x16_iu8 v[109:116], v[132:135], v[58:61], v[1:8] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v63, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v63, off, off offset:1520
	scratch_load_b32 v64, off, off offset:1524
	s_waitcnt vmcnt(0)
	v_perm_b32 v63, v63, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v63, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1480
	scratch_load_b32 v63, off, off offset:1484
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v63, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v63, off, off offset:1488
	scratch_load_b32 v64, off, off offset:1492
	s_waitcnt vmcnt(0)
	v_perm_b32 v63, v63, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v63, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1444
	scratch_load_b32 v63, off, off offset:1448
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v63, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v63, off, off offset:1452
	scratch_load_b32 v64, off, off offset:1456
	s_waitcnt vmcnt(0)
	v_perm_b32 v63, v63, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v63, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1400
	scratch_load_b32 v58, off, off offset:1404
	v_wmma_i32_16x16x16_iu8 v[101:108], v[53:56], v[97:100], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[66:69], v[97:100], v[109:116] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v137, v101
	v_cvt_f32_i32_e32 v138, v102
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v173, v103
	v_cvt_f32_i32_e32 v136, v104
	v_cvt_f32_i32_e32 v171, v105
	v_cvt_f32_i32_e32 v172, v106
	v_cvt_f32_i32_e32 v91, v107
	v_cvt_f32_i32_e32 v92, v108
	v_cvt_f32_i32_e32 v89, v109
	v_cvt_f32_i32_e32 v90, v110
	v_cvt_f32_i32_e32 v87, v111
	v_cvt_f32_i32_e32 v88, v112
	v_cvt_f32_i32_e32 v86, v114
	v_cvt_f32_i32_e32 v83, v115
	v_cvt_f32_i32_e32 v84, v116
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v58, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v58, off, off offset:1408
	scratch_load_b32 v59, off, off offset:1476
	s_waitcnt vmcnt(0)
	v_perm_b32 v58, v58, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v58, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1368
	scratch_load_b32 v58, off, off offset:1372
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v58, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v58, off, off offset:1376
	scratch_load_b32 v59, off, off offset:1380
	s_waitcnt vmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v58, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1336
	scratch_load_b32 v58, off, off offset:1340
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v58, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v58, off, off offset:1344
	scratch_load_b32 v59, off, off offset:1348
	s_waitcnt vmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v58, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v58, off, off offset:1312
	scratch_load_b32 v63, off, off offset:1316
	v_perm_b32 v0, v250, v183, 0xc0c0004
	v_cvt_f32_i32_e32 v183, v85
	v_cvt_f32_i32_e32 v85, v113
	s_waitcnt vmcnt(0)
	v_perm_b32 v58, v63, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v0
	v_wmma_i32_16x16x16_iu8 v[124:131], v[49:52], v[58:61], v[1:8] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1412
	scratch_load_b32 v49, off, off offset:1416
	v_wmma_i32_16x16x16_iu8 v[1:8], v[132:135], v[58:61], v[1:8] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:1420
	scratch_load_b32 v50, off, off offset:1424
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v49, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1384
	scratch_load_b32 v49, off, off offset:1388
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:1392
	scratch_load_b32 v50, off, off offset:1396
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v49, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1352
	scratch_load_b32 v49, off, off offset:1356
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:1360
	scratch_load_b32 v50, off, off offset:1364
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v49, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1320
	scratch_load_b32 v49, off, off offset:1324
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:1328
	scratch_load_b32 v63, off, off offset:1332
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v63, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v0
	v_wmma_i32_16x16x16_iu8 v[124:131], v[53:56], v[49:52], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[66:69], v[49:52], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v67, v12
	v_cvt_f32_i32_e32 v66, v14
	v_cvt_f32_i32_e32 v69, v16
	v_cvt_f32_i32_e32 v81, v124
	v_cvt_f32_i32_e32 v82, v125
	v_cvt_f32_i32_e32 v79, v126
	v_cvt_f32_i32_e32 v80, v127
	v_cvt_f32_i32_e32 v77, v128
	v_cvt_f32_i32_e32 v78, v129
	v_cvt_f32_i32_e32 v75, v130
	v_cvt_f32_i32_e32 v76, v131
	v_cvt_f32_i32_e32 v73, v1
	v_cvt_f32_i32_e32 v74, v2
	v_cvt_f32_i32_e32 v52, v3
	v_cvt_f32_i32_e32 v68, v4
	v_cvt_f32_i32_e32 v50, v5
	v_cvt_f32_i32_e32 v51, v6
	v_cvt_f32_i32_e32 v0, v7
	v_cvt_f32_i32_e32 v49, v8
.LBB0_16:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s44, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s44, s0
	v_dual_mov_b32 v127, v50 :: v_dual_mov_b32 v132, v52
	s_ashr_i32 s0, s0, 7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v99.l, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s0, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s45
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v1, v148, s1, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v2, v156, s0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v196, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v0, v149, s0, 1
	v_add_lshl_u32 v3, v165, s0, 1
	v_add_lshl_u32 v4, v166, s0, 1
	v_mov_b32_e32 v133, v68
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x1
	buffer_load_u16 v68, v3, s[12:15], 0 offen
	buffer_load_u16 v166, v4, s[12:15], 0 offen
	v_mov_b16_e32 v120.l, v99.l
	v_mov_b16_e32 v106.l, v99.l
	v_mov_b32_e32 v102, v89
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s34, s34, s27
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, 0x7ffffffe
	v_mov_b32_e32 v126, v49
	v_mov_b32_e32 v128, v51
	v_mov_b32_e32 v122, v74
	v_mov_b32_e32 v134, v73
	v_mov_b32_e32 v168, v75
	v_mov_b32_e32 v170, v78
	v_mov_b32_e32 v101, v90
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	buffer_load_u16 v65, v2, s[12:15], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v62, v1 offset:36864
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v1, v57, s1, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v121 offset:36864
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v145, 16, v68
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v165, 16, v0
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v65, 16, v65
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[49:52], v121 offset:36880
	ds_load_b128 v[9:12], v121 offset:37376
	ds_load_b128 v[1:4], v121 offset:37392
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v247, off, off offset:320 ; 4-byte Folded Reload
	ds_store_b32 v62, v5 offset:36864
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	scratch_load_b32 v5, off, off offset:1300 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v251, off, off offset:312 ; 4-byte Folded Reload
	ds_load_b128 v[61:64], v121 offset:36864
	ds_load_b128 v[53:56], v121 offset:36880
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v0, v62, v165
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v120.h, v5.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v46, v120
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v5, v246, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v247, v5, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v0, v0, v72, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v5, v0, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v5, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v5, v5
	v_ldexp_f32 v5, v5, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v6, null, v5, v5, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v7, v6
	v_fma_f32 v8, -v6, v7, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, v8, v7
	v_div_scale_f32 v8, vcc_lo, v0, v5, v0
	v_mul_f32_e32 v13, v8, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v6, v13, v8
	v_fmac_f32_e32 v13, v14, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v6, -v6, v13, v8
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v8, v61, v165
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v6, v6, v7, v13
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v7, v45, v120
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v7, v7, v254, v251
	scratch_load_b32 v254, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v251, v7, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v8, v8, v123, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v8, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v8, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v8, v8
	v_ldexp_f32 v8, v8, v13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v75, v6, v5, v0
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v250, off, off offset:308
	scratch_load_b32 v5, off, off offset:1292
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v47, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v13, null, v8, v8, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v13
	v_fma_f32 v15, -v13, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v7, v8, v7
	v_mul_f32_e32 v16, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v13, v16, v15
	v_fmac_f32_e32 v16, v72, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v13, -v13, v16, v15
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v246, off, off offset:316
	scratch_load_b32 v15, off, off offset:1296
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v13, v13, v14, v16
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v14, v48, v120
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v119, v13, v8, v7
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v255, off, off offset:304
	scratch_load_b32 v8, off, off offset:1288
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v7, v42, v120
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(4)
	v_fma_f32 v0, v0, v5, v250
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v63, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v250, v0, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v5, v71, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v5, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v5, 0xbfb8aa3b, v0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v14, v14, v15, v246
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v15, v64, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v246, v14, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v15, v15, v67, v14
	s_waitcnt vmcnt(0)
	v_fma_f32 v7, v7, v8, v255
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v8, v54, v165
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v14, v15, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v7, v255, v7, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v15, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v8, v8, v66, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v8, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v8, 0xbfb8aa3b, v7 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v16, null, v15, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v16
	v_fma_f32 v72, -v16, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v72, v67
	v_div_scale_f32 v72, vcc_lo, v14, v15, v14
	v_mul_f32_e32 v73, v72, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v16, v73, v72
	v_fmac_f32_e32 v73, v74, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v73, v72
	v_div_fmas_f32 v16, v16, v67, v73
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v118, v16, v15, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v14, v41, v120
	v_mul_f32_e32 v15, v53, v165
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v14, v14, v207, v254
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v254, v14, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v15, v15, v70, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v5, v5, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v14, v15, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v15, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v6, null, v5, v5, v0
	v_rcp_f32_e32 v67, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v6, v67, 1.0
	v_fmac_f32_e32 v67, v71, v67
	v_div_scale_f32 v71, vcc_lo, v0, v5, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v71, v67
	v_fma_f32 v73, -v6, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v67
	v_fma_f32 v6, -v6, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v6, v6, v67, v72
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v117, v6, v5, v0
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v207, off, off offset:296
	scratch_load_b32 v5, off, off offset:1280
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v44, v120
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v8, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v8, v8, v13
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v8, 1.0, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v13, null, v8, v8, v7
	v_rcp_f32_e32 v66, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v13, v66, 1.0
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v7, v8, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v67, v66
	v_fma_f32 v72, -v13, v71, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v66
	v_fma_f32 v13, -v13, v71, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v13, v13, v66, v71
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v115, v13, v8, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v14
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v15, v15, v16
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v16, null, v15, v15, v14
	v_rcp_f32_e32 v66, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v16, v66, 1.0
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v14, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v67, v66
	v_fma_f32 v71, -v16, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v66
	v_fma_f32 v16, -v16, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v16, v16, v66, v70
	v_div_fixup_f32 v114, v16, v15, v14
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v5, v207
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v56, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v207, v0, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v5, v69, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v5, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v5, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v5, v5
	v_ldexp_f32 v5, v5, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v5, null, v66, v66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v6, v5
	v_fma_f32 v67, -v5, v6, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v6, v67, v6
	v_div_scale_f32 v67, vcc_lo, v0, v66, v0
	v_mul_f32_e32 v69, v67, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v5, v69, v67
	v_fmac_f32_e32 v69, v70, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v5, -v5, v69, v67
	v_div_fmas_f32 v67, v5, v6, v69
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v247, off, off offset:292
	scratch_load_b32 v6, off, off offset:1276
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v43, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v113, v67, v66, v0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v251, off, off offset:284
	scratch_load_b32 v66, off, off offset:1268
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v37, v120
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v5, v5, v6, v247
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v6, v55, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v247, v5, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v66, v251
	v_fma_f32 v6, v6, v147, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v251, v0, s2
	v_cndmask_b32_e64 v69, v5, v6, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v5, 0xbfb8aa3b, v69
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v69
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v5, v5, v6
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v70, 1.0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v5, null, v70, v70, v69
	v_rcp_f32_e32 v6, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v5, v6, 1.0
	v_fmac_f32_e32 v6, v7, v6
	v_div_scale_f32 v7, vcc_lo, v69, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v8, v7, v6
	v_fma_f32 v13, -v5, v8, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v8, v13, v6
	v_fma_f32 v5, -v5, v8, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v71, v5, v6, v8
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v246, off, off offset:288
	scratch_load_b32 v6, off, off offset:1272
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v38, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v112, v71, v70, v69
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v250, off, off offset:280
	scratch_load_b32 v70, off, off offset:1264
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v40, v120
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v5, v5, v6, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v246, v5, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_load_b128 v[13:16], v121 offset:37376
	ds_load_b128 v[5:8], v121 offset:37392
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v69, v69, v70, v250
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v250, v69, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v73, v14, v165
	v_mul_f32_e32 v70, v16, v165
	v_mul_f32_e32 v66, v13, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v73, v73, v192, v72
	v_mov_b32_e32 v192, v79
	v_fma_f32 v66, v66, v191, v0
	v_fma_f32 v70, v70, v190, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v72, v73, s3
	v_cndmask_b32_e64 v0, v0, v66, s3
	v_mov_b32_e32 v147, v76
	v_mov_b32_e32 v169, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v70, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v72
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v73, v73, v74
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v73, 1.0, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v74, null, v73, v73, v72
	v_rcp_f32_e32 v76, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v74, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v72, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v74, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v74, -v74, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v74, v74, v76, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v111, v74, v73, v72
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v255, off, off offset:276
	scratch_load_b32 v73, off, off offset:1260
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v72, v39, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v0
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v66, v66, v67
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v66, v66, v0
	v_rcp_f32_e32 v76, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v67, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v0, v66, v0
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v72, v72, v73, v255
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v73, v15, v165 :: v_dual_mul_f32 v78, v77, v76
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v255, v72, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v79, -v67, v78, v77
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v73, v73, v189, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v78, v79, v76
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v72, v73, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v67, -v67, v78, v77
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v67, v67, v76, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v110, v67, v66, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v254, off, off offset:272
	scratch_load_b32 v66, off, off offset:1256
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v26, v120
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v70, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v71
	v_fma_f32 v77, -v71, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v69, v70, v69
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v71, v78, v77
	v_fmac_f32_e32 v78, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v78, v77
	v_div_fmas_f32 v71, v71, v76, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v109, v71, v70, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v247, off, off offset:268
	scratch_load_b32 v70, off, off offset:1252
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v25, v120
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v73, v73
	v_ldexp_f32 v73, v73, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v73, 1.0, v73
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v74, null, v73, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v74
	v_fma_f32 v77, -v74, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v72, v73, v72
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v74, v78, v77
	v_fmac_f32_e32 v78, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v74, v78, v77
	v_div_fmas_f32 v74, v74, v76, v78
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v108, v74, v73, v72
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v246, off, off offset:264
	scratch_load_b32 v73, off, off offset:1248
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v72, v28, v120
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(4)
	v_fma_f32 v0, v0, v66, v254
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v66, v6, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v254, v0, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v66, v66, v146, v0
	v_mov_b32_e32 v146, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v66, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v66, v66
	v_ldexp_f32 v66, v66, v67
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v69, v69, v70, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v247, v69, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v72, v72, v73, v246
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v73, v8, v165
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v246, v72, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v73, v73, v143, v72
	v_mov_b32_e32 v143, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v72, v73, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v70, v5, v165 :: v_dual_mul_f32 v73, 0xbfb8aa3b, v72
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v66, v66, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v70, v70, v144, v69
	v_mov_b32_e32 v144, v85
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v76, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v70, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v77, -v67, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v0, v66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v67, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v67, -v67, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v67, v67, v76, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v107, v67, v66, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v251, off, off offset:260
	scratch_load_b32 v66, off, off offset:1244
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v27, v120
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v70, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v71
	v_fma_f32 v77, -v71, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v69, v70, v69
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v71, v78, v77
	v_fmac_f32_e32 v78, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v78, v77
	v_div_fmas_f32 v71, v71, v76, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v121, v71, v70, v69
	.loc	1 364 22 is_stmt 1              ; generate_amdgcn.py:364:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v69, off, off offset:1284
	scratch_load_b32 v250, off, off offset:256
	scratch_load_b32 v70, off, off offset:1240
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v72
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v73, v73, v74
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v73, 1.0, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v74, null, v73, v73, v72
	v_rcp_f32_e32 v76, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v74, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v72, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v74, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v74, -v74, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v74, v74, v76, v78
	v_div_fixup_f32 v105, v74, v73, v72
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v255, off, off offset:252
	scratch_load_b32 v73, off, off offset:1236
	s_waitcnt vmcnt(5)
	v_fma_f32 v0, v0, v66, v251
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v66, v7, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v251, v0, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v66, v66, v142, v0
	v_mov_b32_e32 v142, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v66, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v106.h, v69.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v46, v106
	v_mul_f32_e32 v72, v45, v106
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v69, v69, v70, v250
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v70, v62, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v250, v69, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v70, v70, v141, v69
	v_mov_b32_e32 v141, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v70, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v66, v66, v67
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v66, v66, v0
	v_rcp_f32_e32 v76, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v67, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v0, v66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v67, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v67, -v67, v78, v77
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v72, v72, v73, v255
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v73, v61, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v67, v67, v76, v78
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v255, v72, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v104, v67, v66, v0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v254, off, off offset:248
	scratch_load_b32 v66, off, off offset:1232
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v73, v73, v188, v72
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v48, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v72, v73, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v70, v70
	v_mul_f32_e32 v73, 0xbfb8aa3b, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v70, v70, v71
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v70, 1.0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v70, v70, v69
	v_rcp_f32_e32 v76, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v71, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v69, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v71, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v71, -v71, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v71, v71, v76, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v103, v71, v70, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v247, off, off offset:244
	scratch_load_b32 v70, off, off offset:1228
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v47, v106
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v73, v73
	v_ldexp_f32 v73, v73, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v73, 1.0, v73
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v74, null, v73, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v74
	v_fma_f32 v77, -v74, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v72, v73, v72
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v74, v78, v77
	v_fmac_f32_e32 v78, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v74, v78, v77
	v_div_fmas_f32 v74, v74, v76, v78
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v98, v74, v73, v72
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v246, off, off offset:240
	scratch_load_b32 v73, off, off offset:1220
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v72, v42, v106
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(4)
	v_fma_f32 v0, v0, v66, v254
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v66, v64, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v254, v0, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v66, v66, v187, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v66, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v66, v66
	v_ldexp_f32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v66, v66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v67
	v_fma_f32 v77, -v67, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v0, v66, v0
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v69, v69, v70, v247
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v70, v63, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v247, v69, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v79, -v67, v78, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v70, v70, v186, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v78, v79, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v70, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v67, -v67, v78, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v67, v67, v76, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v95, v67, v66, v0
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v251, off, off offset:236
	scratch_load_b32 v66, off, off offset:1216
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v41, v106
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v69
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v70, v70, v71
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v70, 1.0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v70, v70, v69
	v_rcp_f32_e32 v76, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v71, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v69, v70, v69
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v72, v72, v73, v246
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v73, v54, v65 :: v_dual_mul_f32 v78, v77, v76
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v246, v72, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v79, -v71, v78, v77
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v73, v73, v184, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v78, v79, v76
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v72, v73, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v71, -v71, v78, v77
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v71, v71, v76, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v94, v71, v70, v69
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v250, off, off offset:232
	scratch_load_b32 v70, off, off offset:1212
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v44, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v72
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v73, v73, v74
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v73, 1.0, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v74, null, v73, v73, v72
	v_rcp_f32_e32 v76, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v74, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v72, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v74, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v74, -v74, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v74, v74, v76, v78
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v0, v0, v66, v251
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v66, v53, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v251, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v66, v66, v183, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v66, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v0
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v66, v66, v67
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v66, v66, v0
	v_rcp_f32_e32 v76, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v67, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v0, v66, v0
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v69, v69, v70, v250
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v70, v56, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v78, v77, v76
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v250, v69, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v79, -v67, v78, v77
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v70, v70, v182, v69
	v_mov_b32_e32 v182, v92
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v92, v74, v73, v72
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v247, off, off offset:228
	scratch_load_b32 v73, off, off offset:1208
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v72, v43, v106
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v78, v79, v76
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v70, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v67, -v67, v78, v77
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v67, v67, v76, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v116, v67, v66, v0
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v246, off, off offset:224
	scratch_load_b32 v66, off, off offset:1204
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v38, v106
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v69
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v70, v70, v71
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v70, 1.0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v70, v70, v69
	v_rcp_f32_e32 v76, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v71, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v69, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v71, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v71, -v71, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v71, v71, v76, v78
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v72, v72, v73, v247
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v73, v55, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v247, v72, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v73, v73, v181, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v72, v73, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v66, v246
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v66, v14, v65 :: v_dual_mul_f32 v73, 0xbfb8aa3b, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v246, v0, s2
	scratch_load_b32 v246, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v66, v66, v179, v0
	v_mov_b32_e32 v179, v91
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v91, v71, v70, v69
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v247, off, off offset:220
	scratch_load_b32 v70, off, off offset:1200
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v37, v106
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v66, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v72
	v_mul_f32_e32 v66, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v73, v73
	v_ldexp_f32 v73, v73, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v73, 1.0, v73
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v74, null, v73, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v74
	v_fma_f32 v77, -v74, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v72, v73, v72
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v74, v78, v77
	v_fmac_f32_e32 v78, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v74, v78, v77
	v_div_fmas_f32 v74, v74, v76, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v89, v74, v73, v72
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v72, v40, v106
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v73, v16, v65 :: v_dual_fmac_f32 v66, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v66, v66
	v_ldexp_f32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v66, v66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v67
	v_fma_f32 v77, -v67, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v0, v66, v0
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v67, v78, v77
	v_fmac_f32_e32 v78, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v78, v77
	v_div_fmas_f32 v67, v67, v76, v78
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v72, v72, v243, v246
	scratch_load_b32 v243, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v246, v72, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v69, v69, v70, v247
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v70, v13, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v73, v73, v177, v72
	v_mov_b32_e32 v177, v88
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v247, v69, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v88, v67, v66, v0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v39, v106
	v_mul_f32_e32 v66, v15, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v72, v73, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v70, v70, v178, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v70, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v69
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v69
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v70, v70, v71
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v70, 1.0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v70, v70, v69
	v_rcp_f32_e32 v76, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v71, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v69, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v71, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v71, -v71, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v71, v71, v76, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v148, v71, v70, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v26, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v72
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v73, v73, v74
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v73, 1.0, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v74, null, v73, v73, v72
	v_rcp_f32_e32 v76, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v74, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v72, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v74, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v74, -v74, v78, v77
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v74, v74, v76, v78
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v242, v243
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v242, off, off offset:212
	scratch_load_b32 v70, off, off offset:1196
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v243, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v66, v66, v176, v0
	v_mov_b32_e32 v176, v87
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v87, v74, v73, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v66, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v0
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v66, v66, v67
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v66, v66, v0
	v_rcp_f32_e32 v76, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v67, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v0, v66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v67, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v67, -v67, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v67, v67, v76, v78
	v_div_fixup_f32 v150, v67, v66, v0
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v66, off, off offset:196
	scratch_load_b32 v67, off, off offset:1184
	scratch_load_b32 v0, off, off offset:1224
	s_waitcnt vmcnt(3)
	v_fma_f32 v69, v69, v70, v242
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v70, v6, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v242, v69, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v70, v70, v175, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v70, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v70, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v71
	v_fma_f32 v73, -v71, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v69, v70, v69
	v_mul_f32_e32 v74, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v71, v74, v73
	v_fmac_f32_e32 v74, v76, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v71, v74, v73
	scratch_load_b32 v73, off, off offset:208 ; 4-byte Folded Reload
	v_div_fmas_f32 v71, v71, v72, v74
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v72, v25, v106
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v86, v71, v70, v69
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, v72, v241, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v73, v72, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v73, v5, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v73, v73, v174, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v72, v73, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v72
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v72
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v73, v73, v74
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v73, 1.0, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v74, null, v73, v73, v72
	v_rcp_f32_e32 v76, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v74, v76, 1.0
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v72, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v76
	v_fma_f32 v79, -v74, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v76
	v_fma_f32 v74, -v74, v78, v77
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v74, v74, v76, v78
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v77, off, off offset:204
	scratch_load_b32 v78, off, off offset:1192
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v76, v28, v106
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v149, v74, v73, v72
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, v76, v78, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v77, v76, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v77, v8, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v77, v77, v140, v76
	v_mov_b32_e32 v140, v80
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v76, v77, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v77, 0xbfb8aa3b, v76
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v77
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v76
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v77, v77, v78
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v77, 1.0, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v78, null, v77, v77, v76
	v_rcp_f32_e32 v79, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v78, v79, 1.0
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v80, vcc_lo, v76, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v80, v79
	v_fma_f32 v82, -v78, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v79
	v_fma_f32 v78, -v78, v81, v80
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v78, v78, v79, v81
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v80, off, off offset:200
	scratch_load_b32 v81, off, off offset:1188
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v79, v27, v106
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, v79, v81, v80
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v80, v79, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v80, v7, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v80, v80, v139, v79
	v_mov_b32_e32 v139, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v79, v80, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v80, 0xbfb8aa3b, v79
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v80
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v79
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v80, v80, v81
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v80, 1.0, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v81, null, v80, v80, v79
	v_rcp_f32_e32 v82, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v81, v82, 1.0
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, vcc_lo, v79, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v84, v83, v82
	v_fma_f32 v85, -v81, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v82
	v_fma_f32 v81, -v81, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v81, v81, v82, v84
	v_div_fixup_f32 v82, v78, v77, v76
	v_div_fixup_f32 v83, v81, v80, v79
	.loc	1 364 22 is_stmt 1              ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v81.h, v0.l
	v_mov_b16_e32 v81.l, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v46, v81
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v0, v0, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v66, v0, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v66, v62, v145
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v66, v66, v138, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v66, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v66, v66
	v_ldexp_f32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v66, v66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v69, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v0, v66, v0
	v_mul_f32_e32 v70, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v67, v70, v69
	v_fmac_f32_e32 v70, v71, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v70, v69
	scratch_load_b32 v69, off, off offset:192 ; 4-byte Folded Reload
	v_div_fmas_f32 v67, v67, v68, v70
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v68, v45, v81
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v68, v68, v237, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v69, v68, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v61, v145
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v69, v69, v137, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v69, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v69, v69
	v_ldexp_f32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v69, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v72, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v71
	v_div_scale_f32 v72, vcc_lo, v68, v69, v68
	v_mul_f32_e32 v73, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v70, v73, v72
	v_fmac_f32_e32 v73, v74, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v70, -v70, v73, v72
	scratch_load_b32 v72, off, off offset:188 ; 4-byte Folded Reload
	v_div_fmas_f32 v70, v70, v71, v73
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v71, v48, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v156, v70, v69, v68
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, v71, v238, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v72, v71, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v72, v64, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v72, v72, v136, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v71, v72, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v72, 0xbfb8aa3b, v71
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v72
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v71
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v72, v72, v73
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v72, 1.0, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, null, v72, v72, v71
	v_rcp_f32_e32 v74, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v73, v74, 1.0
	v_fmac_f32_e32 v74, v76, v74
	v_div_scale_f32 v76, vcc_lo, v71, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v76, v74
	v_fma_f32 v78, -v73, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v78, v74
	v_fma_f32 v73, -v73, v77, v76
	scratch_load_b32 v76, off, off offset:184 ; 4-byte Folded Reload
	v_div_fmas_f32 v73, v73, v74, v77
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v74, v47, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v153, v73, v72, v71
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v74, v74, v200, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v76, v74, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v76, v63, v145
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v76, v76, v173, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v74, v76, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v76, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v76
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v76, v76
	v_ldexp_f32 v76, v76, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v76, 1.0, v76
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v77, null, v76, v76, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v78, v77
	v_fma_f32 v79, -v77, v78, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v74, v76, v74
	v_mul_f32_e32 v80, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v77, v80, v79
	v_fmac_f32_e32 v80, v84, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v77, -v77, v80, v79
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v79, v54, v145
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v77, v77, v78, v80
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v78, v42, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v154, v77, v76, v74
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v78, v78, v199, v155
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v74, off, off offset:1144 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v155, v78, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v155, v67, v66, v0
	scratch_load_b32 v66, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v41, v81
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v79, v79, v172, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v78, v79, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v79, 0xbfb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v79
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v79, v79
	v_ldexp_f32 v79, v79, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v79, 1.0, v79
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v80, null, v79, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v84, v80
	v_fma_f32 v85, -v80, v84, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v84
	v_div_scale_f32 v85, vcc_lo, v78, v79, v78
	v_mul_f32_e32 v90, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v80, v90, v85
	v_fmac_f32_e32 v90, v93, v84
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v93, off, off offset:980 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v80, -v80, v90, v85
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v80, v80, v84, v90
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v84, off, off offset:148
	scratch_load_b32 v85, off, off offset:344
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v78, v80, v79, v78
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v77, off, off offset:168
	scratch_load_b32 v79, off, off offset:368
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(5)
	v_fma_f32 v0, v0, v198, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v66, v0, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v66, v53, v145
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v66, v66, v171, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v97, v0, v66, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v0, 0xbfb8aa3b, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v151, 1.0, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v0, null, v151, v151, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v0
	v_fma_f32 v67, -v0, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v97, v151, v97
	v_mul_f32_e32 v68, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v0, v68, v67
	v_fmac_f32_e32 v68, v69, v66
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v69, off, off offset:1036
	scratch_load_b32 v71, off, off offset:72
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v0, -v0, v68, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v237, off, off offset:56
	scratch_load_b32 v67, off, off offset:1044
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v152, v0, v66, v68
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v238, off, off offset:76
	scratch_load_b32 v66, off, off offset:1180
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v0, v34, v120
	v_mul_f32_e32 v68, v57, v165
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, v0, v66, v238
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v33, v120
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v238, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v66, v67, v237
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v58, v165
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v237, v66, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v67, v195, v0
	v_fma_f32 v68, v68, v167, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v67, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v36, v120
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v66, v68, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:1040
	scratch_load_b32 v70, off, off offset:60
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v75
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v75, off, off offset:1148 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v66, v119
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v66, v66
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v67, v67, v68, v70
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v35, v120
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v70, v67, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v68, v69, v71
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v69, off, off offset:996
	scratch_load_b32 v70, off, off offset:1172
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v71, v68, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v71, off, off offset:1176 ; 4-byte Folded Reload
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v99.h, v69.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v59, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v45, v45, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v69, v69, v70, v68
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v70, v60, v165
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v46, v46, v99
	v_mul_f32_e32 v48, v48, v99
	v_mul_f32_e32 v42, v42, v99
	v_mul_f32_e32 v47, v47, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v70, v70, v71, v67
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v71.l, v0.h
	v_mov_b16_e32 v71.h, v99.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v41, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v71, v0, v71, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v67, v70, s3
	v_cndmask_b32_e64 v67, v68, v69, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v69, off, off offset:916
	scratch_load_b32 v72, off, off offset:64
	scratch_load_b32 v70, off, off offset:920
	scratch_load_b32 v73, off, off offset:68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v66.h
	v_mov_b16_e32 v68.h, v99.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v68, 1, v68
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v68, v66, v68, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v66, v67, v117 :: v_dual_mul_f32 v67, v29, v120
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v66, v66
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v67, v67, v69, v72
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v30, v120
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v72, v67, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v69, v69, v70, v73
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.l, v0.h
	v_mov_b16_e32 v70.h, v99.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v72, v50, v165
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add3_u32 v70, v0, v70, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v73, v69, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v73, off, off offset:1168 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v49, v165
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v76.h, 0x7fff, v70.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v69, v69, v201, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v67, v69, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v67, v114
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v72, v72, v73, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v73.l, v66.h
	v_mov_b16_e32 v73.h, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v73, v66, v73, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v0, v72, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v0.h, 0x7fff, v71.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v71, off, off offset:400
	scratch_load_b32 v69, off, off offset:908
	scratch_load_b32 v72, off, off offset:172
	scratch_load_b32 v70, off, off offset:912
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v0.l, 0x7fff, v68.h, s0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v31, v120
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v66, v115
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v76.l, 0x7fff, v73.h, s4
	v_cmp_o_f32_e64 s0, v67, v67
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v115, 16, v166
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v61, v61, v115
	v_mul_f32_e32 v63, v63, v115
	v_mul_f32_e32 v62, v62, v115
	v_mul_f32_e32 v64, v64, v115
	v_mul_f32_e32 v54, v54, v115
	v_mul_f32_e32 v53, v53, v115
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v68, v68, v69, v71
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v32, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v71, v68, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v69, v69, v70, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.l, v66.h
	v_mov_b16_e32 v70.h, v99.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v71, off, off offset:1160 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v70, v66, v70, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v72, v69, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v72, off, off offset:1164 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v51, v165
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v69, v69, v71, v68
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v71, v52, v165
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v71, v71, v72, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v72.l, v67.h
	v_mov_b16_e32 v72.h, v99.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v66, v71, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v71, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v72, 1, v72
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v66, v113
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v73, v67, v72, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v68, v69, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v69, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v21, v120
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v72.h, 0x7fff, v70.h, vcc_lo
	v_cndmask_b16 v72.l, 0x7fff, v73.h, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v73, off, off offset:1156 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v70, v9, v165
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v67, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v67, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v68, v68, v69, v163
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v22, v120
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v163, v68, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v69, v69, v71, v164
	scratch_load_b32 v71, off, off offset:1152 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v164, v69, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v70, v70, v71, v68
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v71, v10, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v70, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v71, v71, v73, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v73.l, v66.h
	v_mov_b16_e32 v73.h, v99.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v70, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v73, v66, v73, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v69, v71, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v71, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v67.h
	v_mov_b16_e32 v69.h, v99.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v66, v66, v111 :: v_dual_and_b32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v66, v66
	v_add3_u32 v69, v67, v69, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v67, v68, v110 :: v_dual_mul_f32 v68, v23, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v67, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v68, v68, v70, v159
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v70, v24, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v159, v68, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v70, v70, v71, v162
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v71.l, v66.h
	v_mov_b16_e32 v71.h, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v71, v66, v71, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v162, v70, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v70, v11, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v71.h, 0x7fff, v71.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v70, v70, v74, v68
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v74, v12, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v74, v74, v75, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v75.l, v67.h
	v_mov_b16_e32 v75.h, v99.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v66, v74, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v74, off, off offset:1136 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v66, v66, v109 :: v_dual_and_b32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v75, v67, v75, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v68, v70, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v69, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v70.h, 0x7fff, v73.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v73, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v71.l, 0x7fff, v75.h, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v75, off, off offset:1140 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v17, v120
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v67, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v67, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v68, v68, v69, v157
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v18, v120
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v157, v68, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v69, v69, v73, v158
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v73.l, v66.h
	v_mov_b16_e32 v73.h, v99.l
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v73, v66, v73, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v158, v69, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v1, v165
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v73.h, 0x7fff, v73.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v69, v69, v74, v68
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v74, v2, v165
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v74, v74, v75, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v75.l, v67.h
	v_mov_b16_e32 v75.h, v99.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v66, v74, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v66, v107
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v75, v67, v75, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v68, v69, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:164
	scratch_load_b32 v69, off, off offset:364
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v19, v120
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_cndmask_b16 v73.l, 0x7fff, v75.h, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v75, off, off offset:1128 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v67, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v67, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v68, v68, v69, v74
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v20, v120
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v74, v68, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v69, v69, v79, v77
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v74, v3, v165
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v77, v69, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v77, off, off offset:1132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v74, v74, v75, v68
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v75, v4, v165
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v74, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:160
	scratch_load_b32 v74, off, off offset:356
	s_waitcnt vmcnt(2)
	v_fma_f32 v75, v75, v77, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v77.l, v66.h
	v_mov_b16_e32 v77.h, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v77, 1, v77
	v_add3_u32 v77, v66, v77, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v69, v75, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v80, off, off offset:16
	scratch_load_b32 v75, off, off offset:360
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v67.h
	v_mov_b16_e32 v69.h, v99.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v66, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v69, 1, v69
	v_cmp_o_f32_e64 s1, v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v67, v69, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v67, v68, v104 :: v_dual_mul_f32 v68, v33, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v67, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v68, v68, v74, v79
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v74, v34, v106
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v79, v68, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v79, off, off offset:1120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v74, v74, v75, v80
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v75.l, v66.h
	v_mov_b16_e32 v75.h, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v75, v66, v75, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v80, v74, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v80, off, off offset:1124 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v74, v57, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v75.h, 0x7fff, v75.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v74, v74, v79, v68
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v79, v58, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v79, v79, v80, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v80.l, v67.h
	v_mov_b16_e32 v80.h, v99.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v66, v79, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v80, 1, v80
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v66, v103
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v103, off, off offset:1020 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v80, v67, v80, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v68, v74, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v74.l, 0x7fff, v69.h, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:152
	scratch_load_b32 v69, off, off offset:348
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v74.h, 0x7fff, v77.h, vcc_lo
	v_cndmask_b16 v75.l, 0x7fff, v80.h, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v80, off, off offset:156
	scratch_load_b32 v77, off, off offset:352
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v35, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v67, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v67, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v68, v68, v69, v79
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v36, v106
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v79, v68, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fma_f32 v69, v69, v77, v80
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v77.l, v66.h
	v_mov_b16_e32 v77.h, v99.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v79, off, off offset:1112 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v77, 1, v77
	v_add3_u32 v77, v66, v77, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v80, v69, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v80, off, off offset:1116 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v59, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v77.h, 0x7fff, v77.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v69, v69, v79, v68
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v79, v60, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v79, v79, v80, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v80.l, v67.h
	v_mov_b16_e32 v80.h, v99.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v66, v79, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v80, 1, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v66, v95
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v80, v67, v80, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v68, v69, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:144
	scratch_load_b32 v69, off, off offset:340
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v29, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_cndmask_b16 v77.l, 0x7fff, v80.h, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v80, off, off offset:1104 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v67, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v67, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v68, v68, v69, v79
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v30, v106
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v79, v68, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v69, v69, v85, v84
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v79, v49, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v84, v69, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v84, off, off offset:1108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v79, v79, v80, v68
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v80, v50, v65
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v79, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v85, off, off offset:136
	scratch_load_b32 v79, off, off offset:892
	s_waitcnt vmcnt(2)
	v_fma_f32 v80, v80, v84, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v84.l, v66.h
	v_mov_b16_e32 v84.h, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v84, 1, v84
	v_add3_u32 v84, v66, v84, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v69, v80, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v90, off, off offset:140
	scratch_load_b32 v80, off, off offset:896
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v67.h
	v_mov_b16_e32 v69.h, v99.l
	v_cndmask_b16 v100.h, 0x7fff, v84.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v66, v92
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v92, off, off offset:1024 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v69, 1, v69
	v_cmp_o_f32_e64 s1, v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v69, v67, v69, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v67, v68, v116 :: v_dual_mul_f32 v68, v31, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v100.l, 0x7fff, v69.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s4, v67, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v68, v68, v79, v85
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v79, v32, v106
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v85, v68, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v85, off, off offset:1096 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fma_f32 v79, v79, v80, v90
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v80.l, v66.h
	v_mov_b16_e32 v80.h, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v80, 1, v80
	v_add3_u32 v80, v66, v80, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v90, v79, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v90, off, off offset:1100 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v79, v51, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v135.h, 0x7fff, v80.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v80, off, off offset:8
	scratch_load_b32 v69, off, off offset:884
	s_waitcnt vmcnt(3)
	v_fma_f32 v79, v79, v85, v68
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v85, v52, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v85, v85, v90, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v90.l, v67.h
	v_mov_b16_e32 v90.h, v99.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v66, v85, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v90, 1, v90
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v66, v91
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v91, v38, v81
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v90, v67, v90, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v68, v79, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v84, off, off offset:12
	scratch_load_b32 v79, off, off offset:888
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v21, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_cndmask_b16 v135.l, 0x7fff, v90.h, s4
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v67, v89
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v85, off, off offset:132
	scratch_load_b32 v89, off, off offset:880
	s_waitcnt vmcnt(4)
	v_fma_f32 v68, v68, v69, v80
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v22, v106
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v38, v38, v99
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v67, v67
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v80, v68, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v80, off, off offset:1088 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fma_f32 v69, v69, v79, v84
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v79.l, v66.h
	v_mov_b16_e32 v79.h, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v79, 1, v79
	v_add3_u32 v79, v66, v79, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v84, v69, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v84, off, off offset:1092 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v9, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v131.h, 0x7fff, v79.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v79, v11, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v69, v69, v80, v68
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v80, v10, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v80, v80, v84, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v84.l, v67.h
	v_mov_b16_e32 v84.h, v99.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v66, v80, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v84, 1, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v66, v88
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v84, v67, v84, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v68, v69, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v80, off, off offset:128
	scratch_load_b32 v69, off, off offset:876
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v23, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_cndmask_b16 v131.l, 0x7fff, v84.h, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v84, off, off offset:1084 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v67, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v67, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v68, v68, v69, v80
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v24, v106
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v80, v68, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v80, off, off offset:1080 ; 4-byte Folded Reload
	v_fma_f32 v69, v69, v89, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v85, v69, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v79, v79, v80, v68
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v80, v12, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v79, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v80, v80, v84, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v84.l, v66.h
	v_mov_b16_e32 v84.h, v99.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v85, off, off
	scratch_load_b32 v79, off, off offset:868
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v84, 1, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v84, v66, v84, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v69, v80, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v67.h
	v_mov_b16_e32 v69.h, v99.l
	v_cndmask_b16 v129.h, 0x7fff, v84.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v66, v87
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v87, off, off offset:4
	scratch_load_b32 v80, off, off offset:872
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v69, 1, v69
	v_cmp_o_f32_e64 s1, v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v69, v67, v69, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v68, v150
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v17, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v129.l, 0x7fff, v69.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s4, v67, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v68, v68, v79, v85
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v79, v18, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v85, v68, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v85, v2, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v79, v79, v80, v87
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v80.l, v66.h
	v_mov_b16_e32 v80.h, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v80, 1, v80
	v_add3_u32 v80, v66, v80, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v87, v79, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v87, off, off offset:1076 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v79, v1, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v130.h, 0x7fff, v80.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v80, off, off offset:120
	scratch_load_b32 v69, off, off offset:1072
	v_fma_f32 v79, v79, v193, v68
	s_waitcnt vmcnt(2)
	v_fma_f32 v85, v85, v87, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v87.l, v67.h
	v_mov_b16_e32 v87.h, v99.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v66, v85, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v66, v66, v86 :: v_dual_and_b32 v87, 1, v87
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v86, v31, v81
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v87, v67, v87, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v68, v79, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v84, off, off offset:124
	scratch_load_b32 v79, off, off offset:864
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v19, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v31, v99
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v67, v149
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v130.l, 0x7fff, v87.h, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v68, v68, v69, v80
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v20, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v67, v67
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v80, v68, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v80, off, off offset:1064 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v69, v69, v79, v84
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v79.l, v66.h
	v_mov_b16_e32 v79.h, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v79, 1, v79
	v_add3_u32 v79, v66, v79, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v84, v69, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v3, v65
	v_mul_f32_e32 v65, v4, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v84, off, off offset:116
	scratch_load_b32 v85, off, off offset:600
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v125.h, 0x7fff, v79.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v79, off, off offset:1056 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fma_f32 v69, v69, v80, v68
	scratch_load_b32 v80, off, off offset:1068 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v65, v65, v80, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v80.l, v67.h
	v_mov_b16_e32 v80.h, v99.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v66, v65, s3
	v_cndmask_b32_e64 v66, v68, v69, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v69, off, off offset:112
	scratch_load_b32 v68, off, off offset:604
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v65, v65, v82 :: v_dual_and_b32 v80, 1, v80
	v_mul_f32_e32 v66, v66, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v80, v67, v80, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v33, v81
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v125.l, 0x7fff, v80.h, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v80, off, off offset:1060 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v66, v66
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v67, v67, v68, v69
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v34, v81
	v_mul_f32_e32 v34, v34, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v69, v67, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v68, v85, v84
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v57, v145
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	scratch_load_b32 v85, off, off offset:860 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v57, v115
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v84, v68, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v69, v69, v79, v67
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v79, v58, v145
	v_mul_f32_e32 v58, v58, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v67, v69, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v79, v79, v80, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v80.l, v65.h
	v_mov_b16_e32 v80.h, v99.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v82, off, off offset:104
	scratch_load_b32 v69, off, off offset:588
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v80, 1, v80
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v80, v65, v80, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v68, v79, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v83, off, off offset:108
	scratch_load_b32 v79, off, off offset:592
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v66.h
	v_mov_b16_e32 v68.h, v99.l
	v_cndmask_b16 v123.h, 0x7fff, v80.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v65, v65, v155 :: v_dual_and_b32 v68, 1, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v68, v66, v68, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v67, v156
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v35, v81
	v_mul_f32_e32 v35, v35, v99
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v123.l, 0x7fff, v68.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s4, v66, v66
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v67, v67, v69, v82
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v36, v81
	v_mul_f32_e32 v36, v36, v99
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v82, v67, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v82, off, off offset:1048 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v69, v69, v79, v83
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v79.l, v65.h
	v_mov_b16_e32 v79.h, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v79, 1, v79
	v_add3_u32 v79, v65, v79, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v83, v69, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v83, off, off offset:1052 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v59, v145
	v_mul_f32_e32 v59, v59, v115
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v124.h, 0x7fff, v79.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:396
	scratch_load_b32 v68, off, off offset:572
	s_waitcnt vmcnt(3)
	v_fma_f32 v69, v69, v82, v67
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v82, v60, v145
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v82, v82, v83, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v83.l, v66.h
	v_mov_b16_e32 v83.h, v99.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v65, v82, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v82, off, off offset:1032 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v83, 1, v83
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v65, v65, v153
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v83, v66, v83, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v67, v69, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v80, off, off offset:100
	scratch_load_b32 v69, off, off offset:584
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v29, v81
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_cndmask_b16 v124.l, 0x7fff, v83.h, s4
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v83, v55, v145 :: v_dual_mul_f32 v66, v66, v154
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v67, v67, v68, v79
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v30, v81
	v_mul_f32_e32 v30, v30, v99
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v55, v55, v115
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v79, v67, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v79, off, off offset:988 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v68, v68, v69, v80
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v65.h
	v_mov_b16_e32 v69.h, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v69, v65, v69, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v80, v68, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v80, off, off offset:992 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v68, v43, v81
	v_mul_f32_e32 v43, v43, v99
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v95.h, 0x7fff, v69.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v68, v68, v79, v160
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v79, v44, v81
	v_mul_f32_e32 v44, v44, v99
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v160, v68, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v83, v83, v179, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v83, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v83.l, v66.h
	v_mov_b16_e32 v83.h, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v83, 1, v83
	v_add3_u32 v83, v66, v83, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v79, v79, v80, v161
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v80, v49, v145
	v_mul_f32_e32 v49, v49, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v161, v79, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v80, v80, v82, v67
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v82, v56, v145
	v_mul_f32_e32 v56, v56, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v67, v80, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v82, v82, v182, v79
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v80, v152, v151, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v79, v82, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v82, v50, v145 :: v_dual_mul_f32 v67, v67, v80
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v80.h, v99.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v50, v50, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v84, 0xbfb8aa3b, v79
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v82, v82, v96, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v80.l, v67.h
	v_cmp_o_f32_e64 s1, v67, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v65, v82, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v82, 0xbfb8aa3b, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v80, 1, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v84, 0, 0x42800000, s0
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v65, v65, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v82
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v80, v67, v80, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v89, off, off offset:324
	scratch_load_b32 v67, off, off offset:564
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v79
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v111.l, 0x7fff, v80.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v69, v84
	v_cndmask_b32_e64 v84, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v66, v66
	v_mov_b16_e32 v66.l, v65.h
	v_mov_b16_e32 v66.h, v99.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v78, v78
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v95.l, 0x7fff, v83.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v83, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v66, 1, v66
	v_cmp_o_f32_e64 s0, v65, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v69, v69, v84
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v87, v65, v66, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v32, v81
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v66, v78, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v88, off, off offset:328
	scratch_load_b32 v78, off, off offset:568
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v111.h, 0x7fff, v87.h, s0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v32, v32, v99 :: v_dual_add_f32 v83, 1.0, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v69, v69, v79
	v_div_scale_f32 v98, s4, v68, v83, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v84, v82
	v_fma_f32 v66, -v82, v84, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v66, v84
	v_div_scale_f32 v66, vcc_lo, v79, v69, v79
	v_mul_f32_e32 v90, v66, v84
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v65, v65, v67, v89
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v51, v145
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v89, v65, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v52, v145
	v_mul_f32_e32 v52, v52, v115
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v78, v86, v78, v88
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v86, null, v83, v83, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v88, v78, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v88, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v96, v67, v92, v78
	scratch_load_b32 v92, off, off offset:1028 ; 4-byte Folded Reload
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v67, s27, v208
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v78, v96, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v96, v39, v81
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v94, s27, 4, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v97, v65, v92, v89
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v92, off, off offset:984 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v65, -v82, v90, v66
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v87, v89, v97, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v97, off, off offset:976 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v90, v65, v84
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v37, v81
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v85, 1, v85
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v37, v37, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v82, v90, v66
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v93, v252
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v93, s27, 5, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v84, v66, v84, v90
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v69, v84, v69, v79
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v84, v22, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v22, v22, v99 :: v_dual_mul_f32 v69, v87, v69
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v91, v91, v92, v253
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v92, -v86, v88, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v91, v253, v91, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v88, v92, v88
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v92, v14, v145
	v_mul_f32_e32 v14, v14, v115
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v82, v98, v88
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v101, v92, v101, v91
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v92, s34, s33, v85
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v85, v252, v65, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v13, v145
	v_mul_f32_e32 v13, v13, v115
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v91, v91, v101, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v101, -v86, v82, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v90, v65, v102, v85
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[65:66], null, s27, 48, v[67:68]
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v102, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v82, v101, v88
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v85, v85, v90, s3
	s_mov_b32 s27, 0x31027000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v102
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v86, -v86, v82, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v101, 0xbfb8aa3b, v85
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v102, v15, v145
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v90, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v82, v86, v88, v82
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v101
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v91
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v68, v82, v83, v68
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v83.h, v99.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v89, 0, 0x42800000, s0
	v_exp_f32_e32 v86, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v68, v78, v68
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v89, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v83.l, v68.h
	v_cmp_o_f32_e64 s0, v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v80, v89
	v_ldexp_f32 v78, v86, v79
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v79.l, v69.h
	v_mov_b16_e32 v79.h, v99.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v86, v21, v81 :: v_dual_and_b32 v83, 1, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v78, 1.0, v78 :: v_dual_and_b32 v79, 1, v79
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v80, v80, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v83, v68, v83, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v78, v78, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v79, v69, v79, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v69, 1.0, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v112.l, 0x7fff, v83.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v80, v82
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v83.h, v99.l
	v_cndmask_b16 v112.h, 0x7fff, v79.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v90, off, off offset:52
	scratch_load_b32 v79, off, off offset:556
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v87, null, v69, v69, v85
	v_div_scale_f32 v101, s1, v85, v69, v85
	v_fma_f32 v88, -v82, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v88, v80
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v88, v40, v81
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v88, v88, v97, v249
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v97, v9, v145
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v88, v249, v88, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v79, v84, v79, v90
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v89, off, off offset:48
	scratch_load_b32 v84, off, off offset:552
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v90, v79, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v84, v86, v84, v89
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v86, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v89, v84, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v89, vcc_lo, v91, v78, v91
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v84, v10, v145
	v_mul_f32_e32 v10, v10, v115
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v97, v97, v103, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v90, -v87, v86, 1.0
	v_mul_f32_e32 v98, v89, v80
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v79, v97, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v86, v90, v86
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v90, off, off offset:972
	scratch_load_b32 v97, off, off offset:968
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v103, -v82, v98, v89
	v_mul_f32_e32 v104, v101, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v98, v103, v80 :: v_dual_mul_f32 v103, v5, v145
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v5, v115
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v82, -v82, v98, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v80, v82, v80, v98
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v78, v80, v78, v91
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v90, v96, v90, v248
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v96, v16, v145
	v_mul_f32_e32 v16, v16, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v90, v248, v90, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v96, v96, v177, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v102, v102, v176, v90
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v88, v88, v96, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v96, off, off offset:1016 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v102, v90, v102, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v90, 0xbfb8aa3b, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v90
	v_cndmask_b32_e64 v89, 0, 0x42800000, s4
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v89, 0xbfb8aa3b, v88
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v84, v84, v96, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v96, -v87, v104, v101
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v84, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v104, v96, v86
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v84, 0xbfb8aa3b, v102
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v96, v25, v81
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v68, v68, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v82, -v87, v104, v101
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v82, v82, v86, v104
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v86, v89
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v84, 0, 0x42800000, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v104, off, off offset:1012 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v69, v82, v69, v85
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, s5
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v85, v23, v81 :: v_dual_fmac_f32 v84, 0xbfb8aa3b, v102
	v_mul_f32_e32 v23, v23, v99
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v69, v79, v69
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v79, v86, v80
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v80.l, v68.h
	v_mov_b16_e32 v80.h, v99.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v78, v84
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v84, v24, v81
	v_mul_f32_e32 v24, v24, v99
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v83.l, v69.h
	v_and_b32_e32 v80, 1, v80
	v_cmp_o_f32_e64 s0, v69, v69
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v79, 1.0, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v83, 1, v83
	v_add3_u32 v80, v68, v80, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v78, v78, v82
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v79, v79, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v83, v69, v83, 0x7fff
	v_cndmask_b16 v90.h, 0x7fff, v80.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v91, off, off offset:44
	scratch_load_b32 v80, off, off offset:548
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v68, 1.0, v78
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v78, v82
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v90.l, 0x7fff, v83.h, s0
	v_mov_b16_e32 v83.h, v99.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v86, null, v68, v68, v102
	v_div_scale_f32 v101, s1, v102, v68, v102
	v_fma_f32 v87, -v82, v78, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v78, v87, v78 :: v_dual_mul_f32 v87, v26, v81
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v80, v84, v80, v91
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v89, off, off offset:40
	scratch_load_b32 v84, off, off offset:544
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v91, v80, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v84, v85, v84, v89
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v85, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v89, v84, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v89, vcc_lo, v88, v79, v88
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v84, v12, v145
	v_mul_f32_e32 v12, v12, v115
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v91, -v86, v85, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v98, v89, v78 :: v_dual_fmac_f32 v85, v91, v85
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v91, off, off offset:964 ; 4-byte Folded Reload
	v_fma_f32 v87, v87, v97, v245
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v97, v11, v145
	v_mul_f32_e32 v11, v11, v115
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v105, v101, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v87, v245, v87, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v91, v96, v91, v244
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v96, v6, v145
	v_mul_f32_e32 v6, v6, v115
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v91, v244, v91, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v96, v96, v146, v87
	v_fma_f32 v103, v103, v144, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v87, v87, v96, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v96, off, off offset:1008 ; 4-byte Folded Reload
	v_fma_f32 v97, v97, v104, v80
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v104, -v82, v98, v89
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v91, v91, v103, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v103, 0xbfb8aa3b, v87 :: v_dual_fmac_f32 v98, v104, v78
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v104, v7, v145
	v_mul_f32_e32 v7, v7, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v103
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v82, -v82, v98, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v89, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v78, v82, v78, v98
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v98, v27, v81 :: v_dual_fmac_f32 v89, 0xbfb8aa3b, v87
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v78, v78, v79, v88
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v80, v97, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v84, v84, v96, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v96, -v86, v105, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v84, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v105, v96, v85 :: v_dual_mul_f32 v84, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v69, v69, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v82, -v86, v105, v101
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v84
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v101, off, off offset:944 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v82, v82, v85, v105
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v85, v89
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v84, 0, 0x42800000, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v105, off, off offset:1004 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v68, v82, v68, v102
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, s5
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v68, v79, v68
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v79, v85, v80
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v80.l, v69.h
	v_mov_b16_e32 v80.h, v99.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v78, v84
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v83.l, v68.h
	v_cmp_o_f32_e64 s0, v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v79, 1.0, v79 :: v_dual_and_b32 v80, 1, v80
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v83, 1, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v80, v69, v80, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v18, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v78, v78, v82
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v79, v79, v87
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v88.h, 0x7fff, v80.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v97, off, off offset:36
	scratch_load_b32 v80, off, off offset:540
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v83, v68, v83, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v85, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v88.l, 0x7fff, v83.h, s0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v84, 1.0, v78
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v78, v17, v81
	v_mul_f32_e32 v17, v17, v99
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v86, null, v84, v84, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v89, -v82, v85, 1.0
	v_div_scale_f32 v103, s1, v91, v84, v91
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, vcc_lo, v87, v79, v87
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v102, v89, v85
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v69, v69, v80, v97
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v96, off, off offset:32
	scratch_load_b32 v80, off, off offset:536
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v97, v69, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v28, v81
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v78, v78, v80, v96
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v80, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v96, v96, v78, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v78, v2, v145
	v_mul_f32_e32 v2, v2, v115
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v97, -v86, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v97, v80
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v97, off, off offset:940 ; 4-byte Folded Reload
	v_fma_f32 v69, v69, v101, v240
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v101, v1, v145
	v_dual_mul_f32 v1, v1, v115 :: v_dual_mul_f32 v106, v103, v80
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v240, v69, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v101, v101, v105, v96
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v105, -v82, v102, v89
	v_fmac_f32_e32 v102, v105, v85
	v_fma_f32 v105, -v86, v106, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v82, -v82, v102, v89
	v_fmac_f32_e32 v106, v105, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v82, v85, v102
	v_fma_f32 v85, -v86, v106, v103
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v79, v82, v79, v87
	v_div_fmas_f32 v80, v85, v80, v106
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v82, v96, v101, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v101, off, off offset:960 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v80, v80, v84, v91
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v91, v19, v81
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v97, v98, v97, v239
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v98, v8, v145
	v_mul_f32_e32 v8, v8, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v97, v239, v97, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v98, v98, v143, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v104, v104, v139, v97
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v98, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v98, off, off offset:1000 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v98, v78, v98, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v97, v104, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v97, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v98, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v89, 0xbfb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v97
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v68, v68, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v89
	v_cndmask_b32_e64 v97, 0, 0x42800000, s4
	v_cndmask_b32_e64 v84, 0, 0xffffffc0, s4
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v89, v20, v81
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v86, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v97, 0xbfb8aa3b, v69 :: v_dual_fmac_f32 v86, 0xbfb8aa3b, v78
	v_exp_f32_e32 v85, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v83, v86
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v86, v82, v80
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v80.l, v68.h
	v_mov_b16_e32 v80.h, v99.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, s5
	v_ldexp_f32 v79, v85, v84
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v84.l, v86.h
	v_mov_b16_e32 v84.h, v99.l
	v_and_b32_e32 v80, 1, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v82, v83, v82
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v86, v86
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v79, 1.0, v79
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v85, 1, v84
	v_add3_u32 v87, v68, v80, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v80, 1.0, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v83, null, v79, v79, v69
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v81, v86, v85, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v97, off, off offset:28
	scratch_load_b32 v85, off, off offset:524
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v68.h, 0x7fff, v87.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v84, null, v80, v80, v78
	v_rcp_f32_e32 v82, v83
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v68.l, 0x7fff, v81.h, s0
	v_mov_b16_e32 v81.h, v99.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v87, v89, v85, v97
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v96, off, off offset:24
	scratch_load_b32 v85, off, off offset:520
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v87, v97, v87, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v97, off, off offset:532 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v89, v91, v85, v96
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v85, v84
	v_fma_f32 v91, -v83, v82, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v96, v89, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v89, v4, v145 :: v_dual_fmac_f32 v82, v91, v82
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v91, vcc_lo, v69, v79, v69
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v4, v115
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v96, -v84, v85, 1.0
	v_dual_mul_f32 v98, v91, v82 :: v_dual_fmac_f32 v85, v96, v85
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v96, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v46, v46, v97, v236
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v97, v3, v145
	v_mul_f32_e32 v3, v3, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v236, v46, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v97, v97, v101, v86
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v101, -v83, v98, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v62, v62, v142, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v98, v101, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v46, v62, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v62, off, off offset:956 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v83, -v83, v98, v91
	v_div_fmas_f32 v82, v83, v82, v98
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v69, v82, v79, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v86, v97, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v82, v33, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v86, off, off offset:952 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v45, v45, v96, v235
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v96, s1, v78, v80, v78
	s_mov_b32 vcc_lo, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v235, v45, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v102, v96, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v61, v61, v141, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v45, v61, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v61, 0xbfb8aa3b, v46
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v62, v89, v62, v87
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v89, -v84, v102, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v61
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v87, v62, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v102, v89, v85
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v87, 0xbfb8aa3b, v45
	v_cndmask_b32_e64 v61, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v62, v62, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v83, -v84, v102, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v87
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v83, v83, v85, v102
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v85, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v84, 0, 0x42800000, s5
	v_exp_f32_e32 v61, v61
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v78, v83, v80, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v45
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v78, v79, v78
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v79.l, v62.h
	v_mov_b16_e32 v79.h, v99.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v69, v84
	v_ldexp_f32 v61, v61, v80
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v81.l, v78.h
	v_and_b32_e32 v79, 1, v79
	v_cmp_o_f32_e64 s0, v78, v78
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v61, 1.0, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v81, 1, v81
	v_add3_u32 v79, v62, v79, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v69, v69, v80
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v80, null, v61, v61, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v81, v78, v81, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v79.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v79, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v62, 1.0, v69
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v69, v80
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v33.l, 0x7fff, v81.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v83, null, v62, v62, v45
	v_fma_f32 v84, -v80, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v84, v69
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v48, v48, v85, v232
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v232, v48, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v64, v64, v140, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v48, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v64, off, off offset:948 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v34, v34, v79, v234
	scratch_load_b32 v79, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v234, v34, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v58, v58, v64, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v34, v58, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v79, v82, v79, v233
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v82, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v233, v79, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v79, vcc_lo, v46, v61, v46
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v57, v57, v86, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v84, -v83, v82, 1.0
	v_mul_f32_e32 v85, v79, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v78, v57, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v82, v84, v82
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v84, off, off offset:512 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v86, -v80, v85, v79
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v78, off, off offset:508 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v85, v86, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v58, -v80, v85, v79
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v79, off, off offset:936 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v58, v58, v69, v85
	v_div_fixup_f32 v46, v58, v61, v46
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v34, v34, v46
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v47, v47, v84, v231
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v84, s1, v45, v62, v45
	s_mov_b32 vcc_lo, s1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v42, v42, v78, v228
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v231, v47, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v87, v84, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v228, v42, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v63, v63, v192, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v64, -v83, v87, v84
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v54, v54, v170, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v47, v63, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v63, 0xbfb8aa3b, v48
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v87, v64, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v54, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v64, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v63
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v83, v87, v84
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v54, off, off offset:932 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v64
	v_cndmask_b32_e64 v63, 0, 0x42800000, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v69, v69, v82, v87
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v64, 0, 0x42800000, s5
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v48
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v45, v69, v62, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v62.h, v99.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v47
	v_exp_f32_e32 v63, v63
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v45, v57, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v46, v64
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v62.l, v45.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cmp_o_f32_e64 s0, v45, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v57, v63, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v58.l, v34.h
	v_mov_b16_e32 v58.h, v99.l
	v_and_b32_e32 v62, 1, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v46, v46, v61
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v57, 1.0, v57 :: v_dual_and_b32 v58, 1, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v62, v45, v62, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v46, 1.0, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v61, null, v57, v57, v48
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v58, v34, v58, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v45, v60, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v46, v46, v47
	v_rcp_f32_e32 v63, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v34.h, 0x7fff, v58.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v58, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v60, vcc_lo, v48, v57, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v34.l, 0x7fff, v62.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v61, v63, 1.0
	v_fmac_f32_e32 v63, v69, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v60, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v36, v36, v58, v230
	scratch_load_b32 v58, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v230, v36, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v45, v54, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v36, v45, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v35, v35, v58, v229
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v58, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v229, v35, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v59, v59, v79, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v64, v58, 1.0
	v_fma_f32 v79, -v61, v78, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v35, v59, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v58, v69, v58
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v69, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v78, v79, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v61, v78, v60
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v61, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v45, v45, v63, v78
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v63, off, off offset:924 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v45, v45, v57, v48
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v36, v36, v45
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v41, v41, v69, v227
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, s1, v47, v46, v47
	s_mov_b32 vcc_lo, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v227, v41, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v80, v69, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v53, v53, v169, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v54, -v64, v80, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v53, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v53, 0xbfb8aa3b, v42
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v80, v54, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v54, 0xbfb8aa3b, v41
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v60, -v64, v80, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v53, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v58, v60, v58, v80
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s5
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v46, v58, v46, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s5
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v41
	v_exp_f32_e32 v53, v53
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v35, v35, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v45, v54
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v54, v29, v99
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v46, v53, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v47.l, v36.h
	v_mov_b16_e32 v47.h, v99.l
	v_mov_b16_e32 v53.l, v35.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v45, v45, v48
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v53.h, v99.l
	v_and_b32_e32 v47, 1, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v46, v46, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v47, v36, v47, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v53, 1, v53
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v45, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v29.h, 0x7fff, v47.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v47, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v57, null, v36, v36, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v53, v35, v53, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v58, -v48, v45, 1.0
	v_fmac_f32_e32 v45, v58, v45
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v58, off, off offset:500 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v30, v30, v47, v226
	scratch_load_b32 v47, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v226, v30, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v44, v44, v58, v224
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v58, vcc_lo, v42, v46, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v224, v44, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v60, v58, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v56, v56, v147, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v44, v56, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v56, off, off offset:928 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v43, v43, v61, v223
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v62, 0xbfb8aa3b, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v223, v43, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v55, v55, v168, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v55, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v55, 0, 0x42800000, s1
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v55, v55
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v47, v54, v47, v225
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v54, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v225, v47, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v59, -v57, v54, 1.0
	v_fmac_f32_e32 v54, v59, v54
	v_div_scale_f32 v59, s0, v41, v36, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v61, v59, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v49, v49, v56, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v56, -v48, v60, v58
	v_fmac_f32_e32 v60, v56, v45
	v_fma_f32 v56, -v57, v61, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v48, -v48, v60, v58
	v_fmac_f32_e32 v61, v56, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v45, v48, v45, v60
	v_fma_f32 v48, -v57, v61, v59
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v42, v45, v46, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v47, v49, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v49, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v48, v48, v54, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v54, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v50, v50, v63, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s1
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v36, v48, v36, v41
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v29.l, 0x7fff, v53.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v53, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v50, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v50, 0xbfb8aa3b, v43
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v36, v45, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v35, v55, v46
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.h, v99.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v30, v30, v42
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v50
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.h, v99.l
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.l, v36.h
	v_mov_b16_e32 v42.l, v30.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, s4
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v30, v30
	v_and_b32_e32 v46, 1, v46
	v_and_b32_e32 v42, 1, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v46, v36, v46, 0x7fff
	v_add3_u32 v42, v30, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v50
	v_ldexp_f32 v41, v41, v45
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v35, v35, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v47, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v48, null, v41, v41, v43
	v_fma_f32 v50, -v45, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v47, v50, v47
	v_div_scale_f32 v50, vcc_lo, v44, v35, v44
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v32, v32, v49, v222
	scratch_load_b32 v49, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v37, v37, v54, v219
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v54, off, off offset:900 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v222, v32, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v51, v115
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v219, v37, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v38, v38, v53, v220
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v53, off, off offset:904 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v13, v13, v134, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v220, v38, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v14, v14, v122, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v38, v14, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v31, v31, v49, v221
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v49, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v52, v52, v54, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v221, v31, s2
	v_cndmask_b32_e64 v38, v30, v52, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v52, 0xbfb8aa3b, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v32, v32, v53, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v48, v49, 1.0
	v_mul_f32_e32 v53, v50, v47
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v32, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v49, v51, v49
	v_div_scale_f32 v51, s1, v43, v41, v43
	v_fma_f32 v54, -v45, v53, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v55, v51, v49
	v_fmac_f32_e32 v53, v54, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v48, v55, v51
	v_fma_f32 v32, -v45, v53, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v30, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v37, v13, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v13, 0, 0x42800000, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v32, v47, v53
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v37, -v48, v55, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v30
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v14
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v47, v9, v115
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v32, v32, v35, v44
	v_div_fmas_f32 v37, v37, v49, v55
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_exp_f32_e32 v44, v13
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.h, 0x7fff, v42.h, s0
	v_cmp_o_f32_e64 s0, v36, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v35, v37, v41, v43
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v43, v38, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.l, 0x7fff, v46.h, s0
	v_mov_b16_e32 v38.h, v99.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v30
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v35, v31, v35
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.h, v99.l
	v_mov_b16_e32 v31.l, v43.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v44, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v43, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v37, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v35.h
	v_and_b32_e32 v42, 1, v31
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v32
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v36, v36, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v37, v37, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v43, v42, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v43, v40, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v40, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v42, v21, v99
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v35, v31, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v38, v41
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v21, null, v37, v37, v30
	v_fma_f32 v45, -v41, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v38, v45, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v22, v22, v40, v218
	scratch_load_b32 v40, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v44, v42, v40, v217
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v42, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v40, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v21, v40, 1.0
	v_fmac_f32_e32 v40, v45, v40
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v43, v43, v42, v216
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v218, v22, s2
	v_cndmask_b32_e64 v22, v217, v44, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v44, v39, v99
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, vcc_lo, v14, v36, v14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v216, v43, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v46, v16, v133, v43
	scratch_load_b32 v16, off, off offset:560 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v43, v46, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v46, v15, v115
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v47, v204, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v22, v15, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v9
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v44, v44, v16, v215
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v16, v39, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v215, v44, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v41, v16, v39
	v_div_scale_f32 v44, s1, v30, v37, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v46, v46, v132, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v16, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v48, v44, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v46, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v46, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v41, v16, v39
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v45
	v_mul_f32_e32 v47, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v16, v39, v38, v16
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v47
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v14, v16, v36, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v22, v41, v38
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v38, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v10, v10, v46, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v21, v48, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v42, v10, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v48, v46, v40
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v21, -v21, v48, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v43
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v21, v21, v40, v48
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v42
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v21, v37, v30
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v32.l, 0x7fff, v31.h, vcc_lo
	v_mov_b16_e32 v30.h, v99.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v14, v15, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v15, v39, v21
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.l, v10.h
	v_mov_b16_e32 v21.h, v99.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v16, null, v22, v22, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v14.h
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v35, v16
	v_div_scale_f32 v36, null, v15, v15, v43
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v21, v10, v21, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v10, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v24, v24, v38, v214
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v31, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v16, v35, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v14, v30, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v35, v37, v35
	v_div_scale_f32 v37, vcc_lo, v9, v22, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v36, v31, 1.0
	v_dual_fmac_f32 v31, v38, v31 :: v_dual_add_nc_u32 v66, 0x80, v92
	v_div_scale_f32 v38, s1, v43, v15, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v40, v38, v31
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v10, v23, v10, v213
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v214, v24, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v24, v37, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v213, v10, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v12, v203, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v16, v24, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v11, v194, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v23, v12, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v24, v39, v35
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v23, v26, v99
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v36, v40, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v10, v11, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v11, -v16, v24, v37
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v25, v99
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v25, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v40, v39, v31
	v_div_fmas_f32 v11, v11, v35, v24
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v24, -v36, v40, v38
	v_div_fixup_f32 v9, v11, v22, v9
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v22, v27, v99
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v24, v24, v31, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_mov_b16_e32 v14.h, v99.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v12, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.h, v99.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v15, v24, v15, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v30.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v24, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v9.h
	v_cmp_o_f32_e64 s4, v9, v9
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v12, 1, v12
	v_mov_b16_e32 v14.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v9, v12, 0x7fff
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s4
	v_add3_u32 v9, v10, v14, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v14, v28, v99
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v23, v23, v25, v206
	scratch_load_b32 v25, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v206, v23, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v6, v6, v128, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v23, v6, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v23, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v17, v17, v24, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v210, v17, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v1, v202, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v17, v1, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v17, v20, v99
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v16, v16, v25, v212
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v212, v16, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v18, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v5, v127, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v11, v5, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v11, 0xbfb8aa3b, v6
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v14, v14, v23, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v15, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v205, v14, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v11, 0, 0x42800000, s0
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v8, v8, v126, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v15, 0, 0x42800000, s1
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v6
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v14, v8, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v11, v11, v18
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v18, off, off offset:472 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v15, v15, v23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v23, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v11
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, s1, v6, v11, v6
	v_div_scale_f32 v28, s4, v5, v15, v5
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v18, v22, v18, v185
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v22, null, v11, v11, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v16, v16, v23, v211
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v185, v18, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v14, v22
	v_div_scale_f32 v23, null, v15, v15, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v211, v16, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v7, v7, v196, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v24, v23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v2, v197, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v18, v7, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v8
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v22, v14, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v16, v2, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v25, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v14, v26, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v26, -v23, v24, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v25
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v30, v27, v14
	v_fmac_f32_e32 v24, v26, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, s0
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v8
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v35, -v22, v30, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v7
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v30, v35, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v22, v30, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v18, v18, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v26, v28, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v14, v22, v14, v30
	s_mov_b32 vcc_lo, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v25, v25, v31
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v23, v26, v28
	v_div_fixup_f32 v6, v14, v11, v6
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v11, v19, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v19, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v25, 1.0, v25 :: v_dual_fmac_f32 v26, v31, v24
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v18, v18, v8
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v25, v25, v7
	v_fma_f32 v23, -v23, v26, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v36, v35
	v_rcp_f32_e32 v27, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v22, v23, v24, v26
	v_div_fixup_f32 v5, v22, v15, v5
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:180
	scratch_load_b32 v22, off, off offset:412
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v23, -v35, v36, 1.0
	v_div_scale_f32 v15, vcc_lo, v8, v18, v8
	v_fma_f32 v16, -v31, v27, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v1, v1, v5 :: v_dual_fmac_f32 v36, v23, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v27, v16, v27
	v_div_scale_f32 v16, s0, v7, v25, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v14, v15, v36 :: v_dual_mul_f32 v5, v16, v27
	v_fma_f32 v6, -v31, v5, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, v6, v27
	v_fma_f32 v16, -v31, v5, v16
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v17, v17, v22, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v20, v17, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v17, off, off offset:1308 ; 4-byte Folded Reload
	v_fma_f32 v11, v11, v19, v209
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v19, -v35, v14, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v209, v11, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v14, v19, v36
	v_fma_f32 v15, -v35, v14, v15
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v14, v15, v36, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v15, off, off offset:1304 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v5, v16, v27, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v5, v25, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v1.h
	v_mov_b16_e32 v7.h, v99.l
	v_cndmask_b16 v12.l, 0x7fff, v9.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v3, v17, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v11, v3, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v4, v4, v15, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v15.l, v2.h
	v_mov_b16_e32 v15.h, v99.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v6, v4, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v14, v18, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v5, 1, v15
	v_mov_b16_e32 v8.h, v99.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v6, 1, v7
	v_mov_b16_e32 v7.l, v3.h
	v_add3_u32 v5, v2, v5, 0x7fff
	v_and_b32_e32 v2, 16, v180
	v_mov_b16_e32 v8.l, v4.h
	v_add3_u32 v6, v1, v6, 0x7fff
	v_and_b32_e32 v7, 1, v7
	v_cmp_o_f32_e64 s1, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v8, 1, v8
	v_add3_u32 v1, v3, v7, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s0
	s_mov_b32 s0, 0x76543210
	v_add3_u32 v7, v4, v8, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s2
	v_cndmask_b32_e32 v1, v72, v0, vcc_lo
	v_cndmask_b32_e32 v0, v0, v72, vcc_lo
	v_dual_cndmask_b32 v30, v13, v34 :: v_dual_cndmask_b32 v13, v34, v13
	v_cndmask_b32_e32 v31, v32, v29, vcc_lo
	v_dual_cndmask_b32 v29, v29, v32 :: v_dual_cndmask_b32 v32, v3, v21
	v_cndmask_b32_e32 v3, v21, v3, vcc_lo
	v_mov_b32_e32 v21, 0x5410
	v_dual_mov_b32 v34, 0x7632 :: v_dual_cndmask_b32 v27, v33, v88
	v_cndmask_b32_e32 v28, v88, v33, vcc_lo
	v_cndmask_b32_e32 v5, v76, v70, vcc_lo
	v_cndmask_b32_e32 v9, v73, v75, vcc_lo
	v_cndmask_b32_e32 v11, v77, v135, vcc_lo
	v_cndmask_b32_e32 v15, v100, v131, vcc_lo
	v_cndmask_b32_e32 v17, v129, v125, vcc_lo
	v_cndmask_b32_e32 v19, v130, v123, vcc_lo
	v_cndmask_b32_e32 v22, v124, v111, vcc_lo
	v_cndmask_b32_e32 v24, v95, v112, vcc_lo
	v_cndmask_b32_e32 v26, v90, v68, vcc_lo
	v_cndmask_b32_e32 v4, v70, v76, vcc_lo
	v_cndmask_b32_e32 v6, v74, v71, vcc_lo
	v_cndmask_b32_e32 v8, v75, v73, vcc_lo
	v_cndmask_b32_e32 v10, v135, v77, vcc_lo
	v_cndmask_b32_e32 v14, v131, v100, vcc_lo
	v_cndmask_b32_e32 v16, v125, v129, vcc_lo
	v_cndmask_b32_e32 v18, v123, v130, vcc_lo
	v_dual_cndmask_b32 v20, v111, v124 :: v_dual_cndmask_b32 v23, v112, v95
	v_cndmask_b32_e32 v25, v68, v90, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v7.h, s1
	v_cndmask_b32_e32 v7, v71, v74, vcc_lo
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v33, v2, v12 :: v_dual_cndmask_b32 v2, v12, v2
	v_permlanex16_b32 v12, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v0, 0x1054, v21, vcc_lo
	v_cndmask_b32_e32 v21, 0x3276, v34, vcc_lo
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v21, v21, 8, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v21, 0x760076, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v21, v21, 4, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v35, 0x5040504, v0
	v_and_b32_e32 v36, 0x7060706, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v0, v12, v1, v35
	v_perm_b32 v1, v12, v1, v36
	v_perm_b32 v2, v5, v4, v35
	v_perm_b32 v3, v5, v4, v36
	v_perm_b32 v4, v7, v6, v35
	v_perm_b32 v5, v7, v6, v36
	v_perm_b32 v6, v9, v8, v35
	v_perm_b32 v7, v9, v8, v36
	v_perm_b32 v8, v11, v10, v35
	v_perm_b32 v9, v11, v10, v36
	v_perm_b32 v10, v15, v14, v35
	v_perm_b32 v11, v15, v14, v36
	v_perm_b32 v12, v17, v16, v35
	v_perm_b32 v13, v17, v16, v36
	v_perm_b32 v14, v19, v18, v35
	v_perm_b32 v15, v19, v18, v36
	v_perm_b32 v16, v22, v20, v35
	v_perm_b32 v17, v22, v20, v36
	v_perm_b32 v18, v24, v23, v35
	v_perm_b32 v19, v24, v23, v36
	v_perm_b32 v20, v26, v25, v35
	v_perm_b32 v21, v26, v25, v36
	v_perm_b32 v22, v28, v27, v35
	v_perm_b32 v23, v28, v27, v36
	v_perm_b32 v26, v29, v31, v35
	v_perm_b32 v27, v29, v31, v36
	v_perm_b32 v28, v37, v32, v35
	v_perm_b32 v29, v37, v32, v36
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v32, v92, v67, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v24, v34, v30, v35
	v_perm_b32 v25, v34, v30, v36
	v_add_lshl_u32 v34, v92, v94, 1
	v_perm_b32 v30, v38, v33, v35
	v_perm_b32 v31, v38, v33, v36
	s_clause 0x2
	buffer_store_b128 v[0:3], v32, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v32, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v34, s[24:27], 0 offen
	v_add_lshl_u32 v0, v66, v94, 1
	v_add_lshl_u32 v1, v92, v93, 1
	v_add_lshl_u32 v2, v66, v93, 1
	v_add_lshl_u32 v3, v92, v65, 1
	v_add_lshl_u32 v4, v66, v65, 1
	s_clause 0x4
	buffer_store_b128 v[12:15], v0, s[24:27], 0 offen
	buffer_store_b128 v[16:19], v1, s[24:27], 0 offen
	buffer_store_b128 v[20:23], v2, s[24:27], 0 offen
	buffer_store_b128 v[24:27], v3, s[24:27], 0 offen
	buffer_store_b128 v[28:31], v4, s[24:27], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1544
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
		.amdhsa_next_free_sgpr 55
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 55
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 1544
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 62964
; TotalNumSgprs: 57
; NumVgprs: 256
; ScratchSize: 1544
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 57
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 1544
    .sgpr_count:     57
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 651
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
