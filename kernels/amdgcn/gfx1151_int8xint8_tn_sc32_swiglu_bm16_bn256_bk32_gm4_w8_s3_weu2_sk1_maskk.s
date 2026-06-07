	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s6, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s2
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v16, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v14, 1, v0
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v15, 4, v0
	s_mov_b32 s31, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v17, 16, v15
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s26, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_mul_lo_u32 v2, s26, v16
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s10, 0, s5
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s5
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s10
	s_sub_i32 s5, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s16, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 295 20 is_stmt 0              ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 296 29 is_stmt 1              ; generate_amdgcn.py:296:29
	s_sub_i32 s4, s2, s5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s17, s7
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s18, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 14, v14
	s_mov_b32 s11, 0x31027000
	s_mov_b64 s[28:29], s[14:15]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_mov_b32 s39, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s10, s18
	s_sub_i32 s18, 0, s17
	s_mul_i32 s18, s18, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s10, s18
	s_xor_b32 s18, s4, s7
	s_add_i32 s2, s10, s2
	s_ashr_i32 s18, s18, 31
	s_mul_hi_u32 s2, s5, s2
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s2, s17
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_mov_b32 s38, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s5, s5, s19
	s_add_i32 s19, s2, 1
	s_sub_i32 s20, s5, s17
	s_cmp_ge_u32 s5, s17
	s_cselect_b32 s2, s19, s2
	s_cselect_b32 s5, s20, s5
	s_add_i32 s19, s2, 1
	s_cmp_ge_u32 s5, s17
	s_cselect_b32 s2, s19, s2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s17, s6, 31
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s2, s2, s18
	.loc	1 312 26                        ; generate_amdgcn.py:312:26
	s_lshl_b32 s30, s3, 5
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s3, s17, 31
.Ltmp15:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s2, s2, s18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s18, s2, s7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s7, s17, s3
.Ltmp19:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s4, s18
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v3, s30, v16
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s16
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s35, s27, 1
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s3, 4
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s2, 8
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s6, v3
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_add3_u32 v9, v2, v1, s34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s17, 31
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_mul_lo_u32 v6, s35, v15
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	s_mul_i32 s19, s26, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_add_nc_u32_e32 v2, s19, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v65, 15, v0
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v4, s30, v15
	v_or_b32_e32 v5, s30, v17
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s5, s35, s30
	v_lshl_add_u32 v18, v65, 4, v6
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s2, s6, v4
	v_cmp_gt_i32_e64 s4, s6, v5
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s16, s33, s5
	v_lshl_add_u32 v19, s27, 5, v18
	.loc	1 322 26 is_stmt 0              ; generate_amdgcn.py:322:26
	s_and_b32 s37, s37, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s5, s2, s3
	s_and_b32 s4, s4, s3
	s_cmp_gt_i32 s17, 63
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v1, s16, v18
	v_add_nc_u32_e32 v3, s16, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s48, s30, 32
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_lshl_b32 s20, s27, 6
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v8, s48, v16
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v4, 0x80000000, v1, s5
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v1, s27, v1
	v_add_nc_u32_e32 v7, s27, v3
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v20, s48, v15
	v_or_b32_e32 v21, s48, v17
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v6, 0x80000000, v3, s4
	.loc	1 322 34 is_stmt 0              ; generate_amdgcn.py:322:34
	s_add_i32 s16, s16, s20
	.loc	1 316 34 is_stmt 1              ; generate_amdgcn.py:316:34
	s_lshl_b32 s18, s26, 5
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s6, v8
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v30, s16, v18
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_add3_u32 v29, s19, s18, v9
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v1, 0x80000000, v1, s5
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_u16 v45, v2, s[8:11], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[2:5], v4, s[36:39], 0 offen
	buffer_load_b128 v[10:13], v6, s[36:39], 0 offen
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v6, 0x80000000, v7, s4
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s4, s6, v20
	v_cmp_gt_i32_e64 s5, s6, v21
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v31, s16, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v7, s27, v30
	v_add3_u32 v32, s16, s27, v19
	.loc	1 328 35 is_stmt 0              ; generate_amdgcn.py:328:35
	s_clause 0x1
	buffer_load_b128 v[21:24], v1, s[36:39], 0 offen
	buffer_load_b128 v[25:28], v6, s[36:39], 0 offen
	.loc	1 316 26 is_stmt 1              ; generate_amdgcn.py:316:26
	v_cndmask_b32_e32 v1, 0x80000000, v29, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	s_and_b32 s4, s5, s2
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_dual_cndmask_b32 v6, 0x80000000, v30 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_cndmask_b32_e64 v8, 0x80000000, v31, s4
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v20, 0x80000000, v32, s4
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_u16 v46, v1, s[8:11], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[29:32], v6, s[36:39], 0 offen
	buffer_load_b128 v[33:36], v8, s[36:39], 0 offen
	buffer_load_b128 v[37:40], v7, s[36:39], 0 offen
	buffer_load_b128 v[41:44], v20, s[36:39], 0 offen
	v_lshlrev_b32_e32 v20, 4, v0
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_add_nc_u32_e32 v6, 0, v14
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s17, 0x5f
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v7, 0, v20
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(9)
	ds_store_b16 v6, v45 offset:32768
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(8)
	ds_store_b128 v7, v[2:5]
	s_waitcnt vmcnt(7)
	ds_store_b128 v7, v[10:13] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(6)
	ds_store_b128 v7, v[21:24] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v7, v[25:28] offset:20480
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b16 v6, v46 offset:33280
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v7, v[29:32] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v7, v[33:36] offset:12288
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(1)
	ds_store_b128 v7, v[37:40] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v7, v[41:44] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_and_or_b32 v72, 0x70, v1, v65
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v73, 0x100, v72
	v_or_b32_e32 v74, 0x200, v72
	v_or_b32_e32 v75, 0x300, v72
	v_or_b32_e32 v76, 0x400, v72
	v_or_b32_e32 v77, 0x500, v72
	v_or_b32_e32 v78, 0x600, v72
	v_or_b32_e32 v79, 0x700, v72
	v_or_b32_e32 v80, 0x800, v72
	v_or_b32_e32 v81, 0x900, v72
	v_or_b32_e32 v82, 0xa00, v72
	v_or_b32_e32 v83, 0xb00, v72
	v_or_b32_e32 v84, 0xc00, v72
	v_or_b32_e32 v85, 0xd00, v72
	v_or_b32_e32 v86, 0xe00, v72
	v_or_b32_e32 v87, 0xf00, v72
	v_or_b32_e32 v70, 0x1000, v72
	v_or_b32_e32 v71, 0x1100, v72
	v_or_b32_e32 v88, 0x1200, v72
	v_or_b32_e32 v89, 0x1300, v72
	v_or_b32_e32 v90, 0x1400, v72
	v_or_b32_e32 v91, 0x1500, v72
	v_or_b32_e32 v92, 0x1600, v72
	v_or_b32_e32 v93, 0x1700, v72
	v_or_b32_e32 v94, 0x1800, v72
	v_or_b32_e32 v95, 0x1900, v72
	v_or_b32_e32 v96, 0x1a00, v72
	v_or_b32_e32 v97, 0x1b00, v72
	v_or_b32_e32 v98, 0x1c00, v72
	v_or_b32_e32 v99, 0x1d00, v72
	v_or_b32_e32 v100, 0x1e00, v72
	v_or_b32_e32 v101, 0x1f00, v72
	v_or_b32_e32 v69, 0x80, v72
	v_or_b32_e32 v102, 0x180, v72
	v_or_b32_e32 v103, 0x280, v72
	v_or_b32_e32 v104, 0x380, v72
	v_or_b32_e32 v105, 0x480, v72
	v_or_b32_e32 v106, 0x580, v72
	v_or_b32_e32 v107, 0x680, v72
	v_or_b32_e32 v108, 0x780, v72
	v_or_b32_e32 v109, 0x880, v72
	v_or_b32_e32 v110, 0x980, v72
	v_or_b32_e32 v111, 0xa80, v72
	v_or_b32_e32 v112, 0xb80, v72
	v_or_b32_e32 v113, 0xc80, v72
	v_or_b32_e32 v114, 0xd80, v72
	v_or_b32_e32 v115, 0xe80, v72
	v_or_b32_e32 v116, 0xf80, v72
	v_or_b32_e32 v117, 0x1080, v72
	v_or_b32_e32 v118, 0x1180, v72
	v_or_b32_e32 v119, 0x1280, v72
	v_or_b32_e32 v120, 0x1380, v72
	v_or_b32_e32 v121, 0x1480, v72
	v_or_b32_e32 v122, 0x1580, v72
	v_or_b32_e32 v123, 0x1680, v72
	v_or_b32_e32 v124, 0x1780, v72
	v_or_b32_e32 v125, 0x1880, v72
	v_or_b32_e32 v126, 0x1980, v72
	v_or_b32_e32 v127, 0x1a80, v72
	v_or_b32_e32 v128, 0x1b80, v72
	v_or_b32_e32 v129, 0x1c80, v72
	v_or_b32_e32 v130, 0x1d80, v72
	v_or_b32_e32 v131, 0x1e80, v72
	v_or_b32_e32 v132, 0x1f80, v72
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr72
                                        ; implicit-def: $vgpr73
                                        ; implicit-def: $vgpr74
                                        ; implicit-def: $vgpr75
                                        ; implicit-def: $vgpr76
                                        ; implicit-def: $vgpr77
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr86
                                        ; implicit-def: $vgpr87
                                        ; implicit-def: $vgpr70
                                        ; implicit-def: $vgpr71
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr99
                                        ; implicit-def: $vgpr100
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr102
                                        ; implicit-def: $vgpr103
                                        ; implicit-def: $vgpr104
                                        ; implicit-def: $vgpr105
                                        ; implicit-def: $vgpr106
                                        ; implicit-def: $vgpr107
                                        ; implicit-def: $vgpr108
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr110
                                        ; implicit-def: $vgpr111
                                        ; implicit-def: $vgpr112
                                        ; implicit-def: $vgpr113
                                        ; implicit-def: $vgpr114
                                        ; implicit-def: $vgpr115
                                        ; implicit-def: $vgpr116
                                        ; implicit-def: $vgpr117
                                        ; implicit-def: $vgpr118
                                        ; implicit-def: $vgpr119
                                        ; implicit-def: $vgpr120
                                        ; implicit-def: $vgpr121
                                        ; implicit-def: $vgpr122
                                        ; implicit-def: $vgpr123
                                        ; implicit-def: $vgpr124
                                        ; implicit-def: $vgpr125
                                        ; implicit-def: $vgpr126
                                        ; implicit-def: $vgpr127
                                        ; implicit-def: $vgpr128
                                        ; implicit-def: $vgpr129
                                        ; implicit-def: $vgpr130
                                        ; implicit-def: $vgpr131
                                        ; implicit-def: $vgpr132
.LBB0_3:                                ; %Flow214
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v2, s34, v65
	v_and_b32_e32 v66, 0xf0, v0
	s_ashr_i32 s49, s7, 5
	v_or_b32_e32 v67, s33, v0
	v_and_b32_e32 v11, 28, v14
	v_mul_lo_u32 v68, v2, s49
	v_lshlrev_b32_e32 v12, 2, v66
	v_lshlrev_b32_e32 v13, 5, v0
	v_lshlrev_b32_e32 v10, 1, v66
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	v_and_or_b32 v72, 0x70, v1, v65
	v_dual_mov_b32 v64, 0 :: v_dual_and_b32 v1, 32, v13
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v21, s27, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b32_e32 v73, 0x100, v72
	v_add3_u32 v1, 0, v12, v1
	v_or_b32_e32 v74, 0x200, v72
	v_or_b32_e32 v75, 0x300, v72
	v_or_b32_e32 v76, 0x400, v72
	v_or_b32_e32 v77, 0x500, v72
	v_or_b32_e32 v78, 0x600, v72
	v_or_b32_e32 v79, 0x700, v72
	v_or_b32_e32 v80, 0x800, v72
	v_or_b32_e32 v81, 0x900, v72
	v_or_b32_e32 v82, 0xa00, v72
	v_or_b32_e32 v83, 0xb00, v72
	v_or_b32_e32 v84, 0xc00, v72
	v_or_b32_e32 v85, 0xd00, v72
	v_or_b32_e32 v86, 0xe00, v72
	v_or_b32_e32 v87, 0xf00, v72
	v_or_b32_e32 v70, 0x1000, v72
	v_or_b32_e32 v71, 0x1100, v72
	v_or_b32_e32 v88, 0x1200, v72
	v_or_b32_e32 v89, 0x1300, v72
	v_or_b32_e32 v90, 0x1400, v72
	v_or_b32_e32 v91, 0x1500, v72
	v_or_b32_e32 v92, 0x1600, v72
	v_or_b32_e32 v93, 0x1700, v72
	v_or_b32_e32 v94, 0x1800, v72
	v_or_b32_e32 v95, 0x1900, v72
	v_or_b32_e32 v96, 0x1a00, v72
	v_or_b32_e32 v97, 0x1b00, v72
	v_or_b32_e32 v98, 0x1c00, v72
	v_or_b32_e32 v99, 0x1d00, v72
	v_or_b32_e32 v100, 0x1e00, v72
	v_or_b32_e32 v101, 0x1f00, v72
	v_or_b32_e32 v69, 0x80, v72
	v_or_b32_e32 v102, 0x180, v72
	v_or_b32_e32 v103, 0x280, v72
	v_or_b32_e32 v104, 0x380, v72
	v_or_b32_e32 v105, 0x480, v72
	v_or_b32_e32 v106, 0x580, v72
	v_or_b32_e32 v107, 0x680, v72
	v_or_b32_e32 v108, 0x780, v72
	v_or_b32_e32 v109, 0x880, v72
	v_or_b32_e32 v110, 0x980, v72
	v_or_b32_e32 v111, 0xa80, v72
	v_or_b32_e32 v112, 0xb80, v72
	v_or_b32_e32 v113, 0xc80, v72
	v_or_b32_e32 v114, 0xd80, v72
	v_or_b32_e32 v115, 0xe80, v72
	v_or_b32_e32 v116, 0xf80, v72
	v_or_b32_e32 v117, 0x1080, v72
	v_or_b32_e32 v118, 0x1180, v72
	v_or_b32_e32 v119, 0x1280, v72
	v_or_b32_e32 v120, 0x1380, v72
	v_or_b32_e32 v121, 0x1480, v72
	v_or_b32_e32 v122, 0x1580, v72
	v_or_b32_e32 v123, 0x1680, v72
	v_or_b32_e32 v124, 0x1780, v72
	v_or_b32_e32 v125, 0x1880, v72
	v_or_b32_e32 v126, 0x1980, v72
	v_or_b32_e32 v127, 0x1a80, v72
	v_or_b32_e32 v128, 0x1b80, v72
	v_or_b32_e32 v129, 0x1c80, v72
	v_or_b32_e32 v130, 0x1d80, v72
	v_or_b32_e32 v131, 0x1e80, v72
	v_or_b32_e32 v132, 0x1f80, v72
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v22, v1, v11
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v23, 0, v10
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v33, 0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_mov_b32 s16, 0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s14, s49, 3
	s_add_i32 s5, s48, 32
	s_mov_b32 s7, 1
	s_and_b32 s41, s13, 0xffff
	s_mov_b32 s40, s12
	s_and_b32 s45, s29, 0xffff
	s_mov_b32 s44, s28
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s52, 0, 0x8200
	s_add_i32 s51, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s50, 0, 0x6000
	s_add_i32 s14, s14, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	s_mov_b32 s31, s16
	s_mov_b32 s15, s16
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s4, s0
	s_mov_b32 s0, s30
	s_mov_b32 s30, s48
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s48, s15, 5
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v26, s1, v72
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s48, s5, s48
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s0, 31
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v29, s48, v16
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_lshr_b32 s1, s1, 27
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_mad_u64_u32 v[27:28], null, s48, s26, v[9:10]
	.loc	1 316 26 is_stmt 0              ; generate_amdgcn.py:316:26
	v_add_nc_u32_e32 v25, s4, v65
	.loc	1 312 21 is_stmt 1              ; generate_amdgcn.py:312:21
	v_or_b32_e32 v31, s48, v17
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s4, s48, s35
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_add_i32 s0, s0, s1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v30, s48, v15
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s4, s4, s33
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s53, s0, 5
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s0, s6, v29
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v24, s31, v72
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	s_add_i32 s31, s4, s27
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v28, s4, v18
	v_add_nc_u32_e32 v32, s4, v19
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s4, s6, v31
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s53, s49
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v31, v68, s53, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s53, s53, s35
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s1, s6, v30
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v29, s31, v18
	v_add_nc_u32_e32 v30, s31, v19
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v134, v21, s53, 1
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_cndmask_b32_e64 v27, 0x80000000, v27, s0
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v169, 0x80000000, v28, s1
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v170, 0x80000000, v29, s1
	v_cndmask_b32_e64 v173, 0x80000000, v30, s4
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v171, 0x80000000, v31, vcc_lo
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v177, 0x80000000, v134, vcc_lo
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v28, v25 offset:208
	ds_load_u8 v29, v25 offset:192
	ds_load_u8 v30, v25 offset:240
	ds_load_u8 v31, v25 offset:224
	ds_load_u8 v134, v25 offset:144
	ds_load_u8 v135, v25 offset:128
	ds_load_u8 v136, v25 offset:176
	ds_load_u8 v137, v25 offset:160
	ds_load_u8 v138, v25 offset:80
	ds_load_u8 v139, v25 offset:64
	ds_load_u8 v140, v25 offset:112
	ds_load_u8 v141, v25 offset:96
	ds_load_u8 v142, v25
	ds_load_u8 v143, v25 offset:16
	ds_load_u8 v144, v25 offset:32
	ds_load_u8 v145, v25 offset:48
	ds_load_u8 v146, v24 offset:3328
	ds_load_u8 v147, v24 offset:3072
	ds_load_u8 v148, v24 offset:3840
	ds_load_u8 v149, v24 offset:3584
	ds_load_u8 v150, v24 offset:2304
	ds_load_u8 v151, v24 offset:2048
	ds_load_u8 v152, v24 offset:2816
	ds_load_u8 v153, v24 offset:2560
	ds_load_u8 v154, v24 offset:1280
	ds_load_u8 v155, v24 offset:1024
	ds_load_u8 v156, v24 offset:1792
	ds_load_u8 v157, v24 offset:1536
	ds_load_u8 v158, v24 offset:256
	ds_load_u8 v159, v24
	ds_load_u8 v160, v24 offset:768
	ds_load_u8 v161, v24 offset:512
	ds_load_u8 v162, v24 offset:3456
	ds_load_u8 v163, v24 offset:3200
	ds_load_u8 v164, v24 offset:3968
	ds_load_u8 v165, v24 offset:3712
	ds_load_u8 v166, v24 offset:2432
	ds_load_u8 v167, v24 offset:2176
	ds_load_u8 v168, v24 offset:2944
	ds_load_u8 v172, v24 offset:2688
	ds_load_u8 v174, v24 offset:1408
	ds_load_u8 v175, v24 offset:1152
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v29, v31, v30, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v133, v67, s53, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v30, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v134, v137, v136, 0xc0c0004
	ds_load_u8 v176, v24 offset:1920
	ds_load_u8 v178, v24 offset:1664
	ds_load_u8 v136, v24 offset:896
	ds_load_u8 v137, v24 offset:640
	v_lshl_or_b32 v31, v29, 16, v28
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v28, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v29, v141, v140, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v141, v144, v145, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v133, 0x80000000, v133, vcc_lo
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v30, v134, 16, v30
	ds_load_u8 v134, v24 offset:384
	ds_load_u8 v135, v24 offset:128
	v_lshl_or_b32 v29, v29, 16, v28
	v_perm_b32 v28, v142, v143, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v142, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v143, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v148, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v150, v153, v152, 0xc0c0004
	v_lshl_or_b32 v28, v141, 16, v28
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v141, v155, v154, 0xc0c0004
	v_lshl_or_b32 v144, v143, 16, v142
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v142, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v151, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v152, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v161, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v163, v167, v166, 0xc0c0004
	v_lshl_or_b32 v142, v142, 16, v141
	v_perm_b32 v141, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v165, v172, v168, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v138, v26 offset:3328
	ds_load_u8 v139, v26 offset:3072
	ds_load_u8 v140, v26 offset:3840
	ds_load_u8 v145, v26 offset:3584
	ds_load_u8 v149, v26 offset:2816
	ds_load_u8 v162, v26 offset:3200
	ds_load_u8 v164, v26 offset:3968
	ds_load_u8 v166, v26 offset:3712
	ds_load_u8 v160, v26 offset:3456
	ds_load_u8 v167, v26 offset:2944
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v141, v151, 16, v141
	v_lshl_or_b32 v151, v165, 16, v163
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v165, v175, v174, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v174, v133, s[44:47], 0 offen
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v146, v26 offset:2304
	ds_load_u8 v153, v26 offset:2560
	ds_load_u8 v154, v26 offset:1792
	ds_load_u8 v155, v26 offset:1536
	ds_load_u8 v172, v26 offset:2688
	ds_load_u8 v147, v26 offset:2048
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v143, v150, 16, v148
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v148, v26 offset:1280
	ds_load_u8 v150, v26 offset:1024
	ds_load_u8 v156, v26 offset:256
	ds_load_u8 v157, v26
	ds_load_u8 v158, v26 offset:768
	ds_load_u8 v159, v26 offset:512
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v152, v161, 16, v152
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v161, v26 offset:2432
	ds_load_u8 v163, v26 offset:2176
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v135, v26 offset:1408
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v133, v137, v136, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v136, v26 offset:1152
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v137, v139, v138, 0xc0c0004
	ds_load_u8 v138, v26 offset:1920
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v139, v145, v140, 0xc0c0004
	ds_load_u8 v140, v26 offset:1664
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v168, v178, v176, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v162, v162, v160, 0xc0c0004
	v_perm_b32 v164, v166, v164, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v175, v25 offset:464
	ds_load_u8 v176, v25 offset:448
	ds_load_u8 v180, v25 offset:400
	ds_load_u8 v181, v25 offset:432
	ds_load_u8 v182, v25 offset:416
	ds_load_u8 v183, v25 offset:336
	ds_load_u8 v184, v25 offset:320
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v145, v147, v146, 0xc0c0004
	v_perm_b32 v147, v153, v149, 0xc0c0004
	ds_load_u8 v149, v26 offset:128
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v148, v150, v148, 0xc0c0004
	ds_load_u8 v150, v26 offset:896
	v_perm_b32 v153, v155, v154, 0xc0c0004
	ds_load_u8 v154, v26 offset:640
	ds_load_u8 v146, v26 offset:384
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v155, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v156, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v161, v163, v161, 0xc0c0004
	v_perm_b32 v163, v172, v167, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v136, v140, v138, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v172, v25 offset:384
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v160, v139, 16, v137
	v_lshl_or_b32 v159, v147, 16, v145
	v_lshl_or_b32 v158, v153, 16, v148
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v140, v154, v150, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v138, v149, v146, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v150, v168, 16, v165
	v_lshl_or_b32 v149, v133, 16, v134
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v157, v156, 16, v155
	v_lshl_or_b32 v168, v164, 16, v162
	v_lshl_or_b32 v167, v163, 16, v161
	v_lshl_or_b32 v166, v136, 16, v135
	v_lshl_or_b32 v165, v140, 16, v138
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v178, v25 offset:496
	ds_load_u8 v179, v25 offset:480
	v_wmma_i32_16x16x16_iu8 v[133:140], v[141:144], v[28:31], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[149:152], v[28:31], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[149:156], v[157:160], v[28:31], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[165:168], v[28:31], v[1:8] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v1, v25 offset:368
	ds_load_u8 v2, v25 offset:352
	ds_load_u8 v5, v25 offset:272
	ds_load_u8 v6, v25 offset:256
	ds_load_u8 v7, v25 offset:304
	ds_load_u8 v8, v25 offset:288
	ds_load_u8 v25, v24 offset:7424
	ds_load_u8 v28, v24 offset:7168
	ds_load_u8 v29, v24 offset:7936
	ds_load_u8 v30, v24 offset:7680
	ds_load_u8 v168, v24 offset:6656
	v_perm_b32 v167, v184, v183, 0xc0c0004
	v_perm_b32 v3, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v165, v172, v180, 0xc0c0004
	v_perm_b32 v166, v182, v181, 0xc0c0004
	ds_load_u8 v172, v24 offset:5376
	ds_load_u8 v176, v24 offset:4352
	ds_load_u8 v31, v24 offset:6400
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v180, v26 offset:7552
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v4, v179, v178, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v32, 0x80000000, v32, s4
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s7, 1
	s_mov_b32 s1, s50
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v4, v4, 16, v3
	v_lshl_or_b32 v3, v166, 16, v165
	v_lshl_or_b32 v2, v1, 16, v167
	ds_load_u8 v167, v24 offset:5120
	ds_load_u8 v175, v24 offset:5888
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v1, v6, v5, 0xc0c0004
	ds_load_u8 v5, v24 offset:5632
	ds_load_u8 v165, v24 offset:6144
	ds_load_u8 v166, v24 offset:6912
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v28, v25, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v8, v30, v29, 0xc0c0004
	ds_load_u8 v28, v24 offset:4864
	ds_load_u8 v30, v24 offset:4608
	ds_load_u8 v25, v24 offset:4096
	v_lshl_or_b32 v1, v6, 16, v1
	v_lshl_or_b32 v8, v8, 16, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s4, 2
	s_mov_b32 s31, s51
	s_cselect_b32 s7, s4, 0
	s_add_i32 s4, s15, 1
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_lshl_b32 s50, s7, 9
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_lshl_b32 s51, s7, 13
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_add_i32 s50, s50, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v6, v167, v172, 0xc0c0004
	ds_load_u8 v167, v24 offset:6528
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_add_i32 s51, s51, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v5, v5, v175, 0xc0c0004
	s_mov_b32 s0, s52
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_add_i32 s52, s50, 0x8000
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v6, v5, 16, v6
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v28, v30, v28, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v5, v25, v176, 0xc0c0004
	ds_load_u8 v25, v24 offset:6784
	ds_load_u8 v30, v24 offset:5504
	v_perm_b32 v29, v165, v31, 0xc0c0004
	v_perm_b32 v31, v168, v166, 0xc0c0004
	ds_load_u8 v165, v24 offset:7552
	ds_load_u8 v166, v24 offset:7808
	ds_load_u8 v168, v24 offset:6272
	ds_load_u8 v172, v24 offset:7040
	v_lshl_or_b32 v5, v28, 16, v5
	v_lshl_or_b32 v7, v31, 16, v29
	ds_load_u8 v29, v24 offset:7296
	ds_load_u8 v31, v24 offset:8064
	ds_load_u8 v28, v24 offset:5248
	ds_load_u8 v175, v24 offset:6016
	v_wmma_i32_16x16x16_iu8 v[133:140], v[5:8], v[1:4], v[133:140] neg_lo:[1,1,0]
	ds_load_u8 v5, v24 offset:5760
	ds_load_u8 v176, v24 offset:4480
	ds_load_u8 v178, v24 offset:4224
	ds_load_u8 v179, v24 offset:4992
	ds_load_u8 v24, v24 offset:4736
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v25, v25, v172, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v29, v165, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v7, v166, v31, 0xc0c0004
	v_perm_b32 v165, v168, v167, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v29, v26 offset:7424
	ds_load_u8 v31, v26 offset:7168
	ds_load_u8 v168, v26 offset:5376
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v8, v7, 16, v6
	v_lshl_or_b32 v7, v25, 16, v165
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v25, v26 offset:7936
	ds_load_u8 v165, v26 offset:7680
	ds_load_u8 v166, v26 offset:6912
	ds_load_u8 v167, v26 offset:6656
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v6, v28, v30, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v5, v5, v175, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v24, v24, v179, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v28, v26 offset:6400
	ds_load_u8 v30, v26 offset:6144
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v6, v5, 16, v6
	v_perm_b32 v5, v178, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v24, 16, v5
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v24, v26 offset:5888
	ds_load_u8 v175, v26 offset:5632
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[141:148], v[5:8], v[1:4], v[141:148] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v6, v31, v29, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v165, v25, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v167, v166, 0xc0c0004
	ds_load_u8 v165, v26 offset:8064
	ds_load_u8 v166, v26 offset:7808
	ds_load_u8 v5, v26 offset:4352
	ds_load_u8 v176, v26 offset:4096
	ds_load_u8 v178, v26 offset:4864
	ds_load_u8 v179, v26 offset:4608
	ds_load_u8 v25, v26 offset:7296
	ds_load_u8 v167, v26 offset:6528
	v_lshl_or_b32 v8, v7, 16, v6
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v146, v146
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v24, v175, v24, 0xc0c0004
	ds_load_u8 v175, v26 offset:5504
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v148, v148
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v5, v176, v5, 0xc0c0004
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v26 offset:5760
	ds_load_u8 v172, v26 offset:5120
	v_perm_b32 v28, v30, v28, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v25, v25, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v7, v29, 16, v28
	v_perm_b32 v28, v179, v178, 0xc0c0004
	v_lshl_or_b32 v5, v28, 16, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v172, v168, 0xc0c0004
	ds_load_u8 v168, v26 offset:6272
	v_lshl_or_b32 v6, v24, 16, v6
	ds_load_u8 v24, v26 offset:7040
	ds_load_u8 v172, v26 offset:6784
	v_wmma_i32_16x16x16_iu8 v[149:156], v[5:8], v[1:4], v[149:156] neg_lo:[1,1,0]
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[5:8], v169, s[36:39], 0 offen
	buffer_load_b128 v[28:31], v32, s[36:39], 0 offen
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v32, v26 offset:6016
	ds_load_u8 v176, v26 offset:5248
	ds_load_u8 v169, v26 offset:4224
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v26 offset:4480
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v24, v172, v24, 0xc0c0004
	ds_load_u8 v172, v26 offset:4992
	ds_load_u8 v26, v26 offset:4736
	v_lshl_or_b32 v167, v24, 16, v167
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v32, v166, v32, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v32, 16, v175
	v_cvt_f32_i32_e32 v32, v153
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v179, v169, v168, 0xc0c0004
	v_lshl_or_b32 v168, v165, 16, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v165, v26, 16, v179
	v_wmma_i32_16x16x16_iu8 v[157:164], v[165:168], v[1:4], v[157:164] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v150
	v_cvt_f32_i32_e32 v150, v155
	v_cvt_f32_i32_e32 v1, v149
	v_cvt_f32_i32_e32 v3, v151
	v_cvt_f32_i32_e32 v155, v160
	v_cvt_f32_i32_e32 v4, v152
	v_cvt_f32_i32_e32 v149, v154
	v_cvt_f32_i32_e32 v151, v156
	v_cvt_f32_i32_e32 v152, v157
	v_cvt_f32_i32_e32 v153, v158
	v_cvt_f32_i32_e32 v154, v159
	v_cvt_f32_i32_e32 v156, v161
	v_cvt_f32_i32_e32 v157, v162
	v_cvt_f32_i32_e32 v158, v163
	v_cvt_f32_i32_e32 v159, v164
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v24, 16, v174
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v178, v171, s[40:43], 0 offen
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x1
	buffer_load_b128 v[169:172], v170, s[36:39], 0 offen
	buffer_load_b128 v[173:176], v173, s[36:39], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v22, v24 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v160, 16, v178
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_add_nc_u32_e32 v25, s50, v14
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v26, s51, v20
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_add_i32 s50, s51, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s15, s14
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v166, v160, v135
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v24, v177, s[44:47], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v161, v160, v134
	v_dual_mul_f32 v162, v160, v133 :: v_dual_mul_f32 v163, v2, v160
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v164, v1, v160
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v165, v160, v136
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v167, v4, v160
	v_mul_f32_e32 v168, v3, v160
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[1:4], v23 offset:33792
	ds_load_b128 v[133:136], v23 offset:33808
	v_mul_f32_e32 v177, v160, v138
	v_dual_mul_f32 v178, v160, v137 :: v_dual_mul_f32 v149, v149, v160
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v32, v32, v160
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v179, v160, v140
	v_dual_mul_f32 v180, v160, v139 :: v_dual_mul_f32 v151, v151, v160
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v150, v150, v160 :: v_dual_mul_f32 v143, v160, v143
	v_mul_f32_e32 v155, v155, v160
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[137:140], v23 offset:34304
	v_mul_f32_e32 v141, v160, v141
	v_dual_mul_f32 v145, v160, v145 :: v_dual_mul_f32 v158, v158, v160
	v_dual_mul_f32 v142, v160, v142 :: v_dual_mul_f32 v153, v153, v160
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v152, v152, v160
	v_dual_mul_f32 v154, v154, v160 :: v_dual_mul_f32 v181, v160, v146
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v58, v162, v1 :: v_dual_fmac_f32 v59, v161, v2
	v_dual_fmac_f32 v54, v166, v3 :: v_dual_fmac_f32 v55, v165, v4
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	ds_load_b128 v[1:4], v23 offset:34320
	v_mul_f32_e32 v144, v160, v144
	v_mul_f32_e32 v183, v160, v147
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(2)
	v_fmac_f32_e32 v47, v179, v136
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v157, v157, v160 :: v_dual_fmac_f32 v50, v178, v133
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v182, v160, v148
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v42, v141, v137 :: v_dual_mul_f32 v159, v159, v160
	v_fmac_f32_e32 v46, v180, v135
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v51, v177, v134
	v_dual_fmac_f32 v43, v142, v138 :: v_dual_fmac_f32 v38, v143, v139
	v_fmac_f32_e32 v40, v144, v140
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v156, v156, v160
	s_mov_b32 s15, s4
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v36, v145, v1
	v_dual_fmac_f32 v37, v181, v2 :: v_dual_fmac_f32 v34, v183, v3
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v24
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_store_b32 v22, v1 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[133:136], v23 offset:33792
	ds_load_b128 v[137:140], v23 offset:33808
	ds_load_b128 v[141:144], v23 offset:34304
	ds_load_b128 v[145:148], v23 offset:34320
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	ds_store_b16 v25, v27 offset:32768
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	ds_store_b128 v26, v[5:8]
	ds_store_b128 v26, v[28:31] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	ds_store_b128 v26, v[169:172] offset:16384
	ds_store_b128 v26, v[173:176] offset:20480
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(7)
	v_dual_fmac_f32 v35, v164, v133 :: v_dual_fmac_f32 v56, v150, v139
	v_fmac_f32_e32 v64, v163, v134
	v_dual_fmac_f32 v62, v168, v135 :: v_dual_fmac_f32 v63, v167, v136
	v_dual_fmac_f32 v60, v32, v137 :: v_dual_fmac_f32 v57, v151, v140
	v_fmac_f32_e32 v61, v149, v138
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(6)
	v_dual_fmac_f32 v33, v182, v4 :: v_dual_fmac_f32 v52, v152, v141
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v49, v155, v144
	v_dual_fmac_f32 v53, v153, v142 :: v_dual_fmac_f32 v48, v154, v143
	s_waitcnt lgkmcnt(5)
	v_dual_fmac_f32 v45, v157, v146 :: v_dual_fmac_f32 v44, v156, v145
	v_fmac_f32_e32 v39, v158, v147
	v_fmac_f32_e32 v41, v159, v148
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s52, 0, 0x8200
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v35, 0
	s_add_i32 s51, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s50, 0, 0x6000
.LBB0_7:                                ; %._crit_edge
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v20, s0, v65
	.loc	1 316 26 is_stmt 1              ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cndmask_b32_e64 v133, 0, 1, s3
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	ds_load_u8_d16 v21, v20
	ds_load_u8_d16 v22, v20 offset:16
	ds_load_u8_d16 v23, v20 offset:32
	ds_load_u8_d16 v24, v20 offset:48
	ds_load_u8_d16 v25, v20 offset:64
	ds_load_u8_d16 v26, v20 offset:80
	ds_load_u8_d16 v27, v20 offset:96
	ds_load_u8_d16 v28, v20 offset:112
	ds_load_u8_d16 v29, v20 offset:128
	ds_load_u8_d16 v30, v20 offset:144
	ds_load_u8_d16 v31, v20 offset:160
	ds_load_u8_d16 v32, v20 offset:176
	ds_load_u8_d16 v150, v20 offset:192
	ds_load_u8_d16 v151, v20 offset:208
	ds_load_u8_d16 v167, v20 offset:224
	ds_load_u8_d16 v168, v20 offset:240
	ds_load_u8_d16 v1, v20 offset:256
	ds_load_u8_d16 v2, v20 offset:272
	ds_load_u8_d16 v3, v20 offset:288
	ds_load_u8_d16 v4, v20 offset:304
	ds_load_u8_d16 v5, v20 offset:320
	ds_load_u8_d16 v6, v20 offset:336
	ds_load_u8_d16 v7, v20 offset:352
	ds_load_u8_d16 v8, v20 offset:368
	ds_load_u8_d16 v9, v20 offset:384
	ds_load_u8_d16 v14, v20 offset:400
	ds_load_u8_d16 v15, v20 offset:416
	ds_load_u8_d16 v16, v20 offset:432
	ds_load_u8_d16 v17, v20 offset:448
	ds_load_u8_d16 v18, v20 offset:464
	ds_load_u8_d16 v19, v20 offset:480
	ds_load_u8_d16 v20, v20 offset:496
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v149, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cmp_ne_u32_e64 s0, 1, v133
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v135, s31, v85
	v_add_nc_u32_e32 v136, s31, v84
	v_add_nc_u32_e32 v133, s31, v87
	v_add_nc_u32_e32 v139, s31, v81
	v_add_nc_u32_e32 v137, s31, v83
	v_add_nc_u32_e32 v138, s31, v82
	v_add_nc_u32_e32 v140, s31, v80
	v_add_nc_u32_e32 v172, s31, v79
	v_add_nc_u32_e32 v173, s31, v78
	v_add_nc_u32_e32 v174, s31, v77
	v_add_nc_u32_e32 v175, s31, v76
	v_add_nc_u32_e32 v176, s31, v75
	v_add_nc_u32_e32 v196, s31, v74
	v_add_nc_u32_e32 v197, s31, v73
	v_add_nc_u32_e32 v198, s31, v72
	v_add_nc_u32_e32 v134, s31, v86
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v199, v135
	ds_load_u8 v200, v136
	ds_load_u8 v201, v133
	ds_load_u8 v139, v139
	ds_load_u8 v140, v140
	ds_load_u8 v137, v137
	ds_load_u8 v138, v138
	ds_load_u8 v202, v134
	ds_load_u8 v174, v174
	ds_load_u8 v175, v175
	ds_load_u8 v172, v172
	ds_load_u8 v197, v197
	ds_load_u8 v198, v198
	ds_load_u8 v176, v176
	ds_load_u8 v196, v196
	ds_load_u8 v173, v173
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v144, s31, v99
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v133, v150, v151, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v134, v167, v168, 0xc0c0004
	v_perm_b32 v135, v29, v30, 0xc0c0004
	v_perm_b32 v204, v31, v32, 0xc0c0004
	v_perm_b32 v205, v25, v26, 0xc0c0004
	v_perm_b32 v206, v27, v28, 0xc0c0004
	v_perm_b32 v207, v21, v22, 0xc0c0004
	v_perm_b32 v208, v23, v24, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v199, v200, v199, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v152, s31, v98
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v200, v202, v201, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v142, s31, v101
	v_add_nc_u32_e32 v155, s31, v95
	v_add_nc_u32_e32 v143, s31, v100
	v_add_nc_u32_e32 v156, s31, v94
	v_add_nc_u32_e32 v203, s31, v71
	v_add_nc_u32_e32 v153, s31, v97
	v_add_nc_u32_e32 v154, s31, v96
	v_add_nc_u32_e32 v157, s31, v93
	v_add_nc_u32_e32 v158, s31, v92
	v_add_nc_u32_e32 v159, s31, v91
	v_add_nc_u32_e32 v169, s31, v90
	v_add_nc_u32_e32 v170, s31, v89
	v_add_nc_u32_e32 v171, s31, v88
	v_add_nc_u32_e32 v209, s31, v70
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v136, v134, 16, v133
	v_lshl_or_b32 v135, v204, 16, v135
	v_lshl_or_b32 v134, v206, 16, v205
	v_lshl_or_b32 v133, v208, 16, v207
	v_perm_b32 v139, v140, v139, 0xc0c0004
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v138, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	v_perm_b32 v173, v198, v197, 0xc0c0004
	v_perm_b32 v174, v196, v176, 0xc0c0004
	v_lshl_or_b32 v140, v200, 16, v199
	ds_load_u8 v144, v144
	ds_load_u8 v196, v152
	ds_load_u8 v142, v142
	ds_load_u8 v197, v155
	ds_load_u8 v198, v156
	ds_load_u8 v199, v153
	ds_load_u8 v200, v154
	ds_load_u8 v143, v143
	ds_load_u8 v201, v159
	ds_load_u8 v202, v169
	ds_load_u8 v204, v157
	ds_load_u8 v203, v203
	ds_load_u8 v205, v209
	ds_load_u8 v206, v170
	ds_load_u8 v207, v171
	ds_load_u8 v208, v158
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v183, s31, v114
	s_mov_b32 s4, 0
	v_add_nc_u32_e32 v184, s31, v113
	v_add_nc_u32_e32 v181, s31, v116
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_mov_b32 s11, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v144, v196, v144, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v187, s31, v110
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	v_perm_b32 v143, v198, v197, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v197, v202, v201, 0xc0c0004
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v145, s31, v131
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v159, s11 :: v_dual_add_nc_u32 v146, s31, v130
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v198, v208, v204, 0xc0c0004
	v_dual_mov_b32 v154, s6 :: v_dual_add_nc_u32 v147, s31, v129
	v_dual_mov_b32 v152, s4 :: v_dual_add_nc_u32 v149, s31, v128
	v_dual_mov_b32 v153, s5 :: v_dual_add_nc_u32 v164, s31, v123
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v165, s31, v122
	v_add_nc_u32_e32 v166, s31, v121
	v_add_nc_u32_e32 v177, s31, v120
	v_add_nc_u32_e32 v178, s31, v119
	v_add_nc_u32_e32 v179, s31, v118
	v_add_nc_u32_e32 v180, s31, v117
	v_add_nc_u32_e32 v182, s31, v115
	v_add_nc_u32_e32 v185, s31, v112
	v_add_nc_u32_e32 v186, s31, v111
	v_add_nc_u32_e32 v188, s31, v109
	v_add_nc_u32_e32 v189, s31, v108
	v_add_nc_u32_e32 v190, s31, v107
	v_add_nc_u32_e32 v191, s31, v106
	v_add_nc_u32_e32 v192, s31, v105
	v_add_nc_u32_e32 v193, s31, v104
	v_add_nc_u32_e32 v194, s31, v103
	v_add_nc_u32_e32 v195, s31, v102
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v158, s10 :: v_dual_add_nc_u32 v141, s31, v132
	v_dual_mov_b32 v157, s9 :: v_dual_add_nc_u32 v160, s31, v127
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v161, s31, v126
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v155, s7 :: v_dual_add_nc_u32 v162, s31, v125
	v_dual_mov_b32 v156, s8 :: v_dual_add_nc_u32 v163, s31, v124
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v213, s31, v69
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v196, v200, v199, 0xc0c0004
	v_lshl_or_b32 v144, v142, 16, v144
	v_lshl_or_b32 v142, v198, 16, v197
	ds_load_u8 v183, v183
	ds_load_u8 v184, v184
	ds_load_u8 v181, v181
	ds_load_u8 v187, v187
	ds_load_u8 v188, v188
	ds_load_u8 v185, v185
	ds_load_u8 v186, v186
	ds_load_u8 v182, v182
	ds_load_u8 v191, v191
	ds_load_u8 v192, v192
	ds_load_u8 v189, v189
	ds_load_u8 v195, v195
	ds_load_u8 v197, v213
	ds_load_u8 v193, v193
	ds_load_u8 v194, v194
	ds_load_u8 v190, v190
	ds_load_u8 v146, v146
	ds_load_u8 v147, v147
	ds_load_u8 v198, v141
	ds_load_u8 v199, v161
	ds_load_u8 v200, v162
	ds_load_u8 v149, v149
	ds_load_u8 v201, v160
	ds_load_u8 v145, v145
	ds_load_u8 v165, v165
	ds_load_u8 v166, v166
	ds_load_u8 v202, v163
	ds_load_u8 v179, v179
	ds_load_u8 v180, v180
	ds_load_u8 v177, v177
	ds_load_u8 v178, v178
	ds_load_u8 v164, v164
	v_lshl_or_b32 v139, v137, 16, v139
	v_lshl_or_b32 v138, v172, 16, v138
	v_lshl_or_b32 v137, v174, 16, v173
	v_perm_b32 v209, v17, v18, 0xc0c0004
	v_perm_b32 v210, v19, v20, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v160, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v161, v182, v181, 0xc0c0004
	v_perm_b32 v162, v188, v187, 0xc0c0004
	v_perm_b32 v181, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v182, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v183, v190, v189, 0xc0c0004
	v_perm_b32 v184, v197, v195, 0xc0c0004
	v_perm_b32 v185, v194, v193, 0xc0c0004
	v_perm_b32 v211, v9, v14, 0xc0c0004
	v_perm_b32 v212, v15, v16, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[169:176], v[137:140], v[133:136], v[152:159] neg_lo:[1,1,0]
	v_lshl_or_b32 v140, v210, 16, v209
	v_perm_b32 v137, v5, v6, 0xc0c0004
	v_perm_b32 v138, v7, v8, 0xc0c0004
	v_perm_b32 v209, v1, v2, 0xc0c0004
	v_perm_b32 v210, v3, v4, 0xc0c0004
	v_lshl_or_b32 v143, v196, 16, v143
	v_perm_b32 v196, v205, v203, 0xc0c0004
	v_perm_b32 v141, v207, v206, 0xc0c0004
	v_lshl_or_b32 v163, v161, 16, v160
	v_lshl_or_b32 v162, v181, 16, v162
	v_lshl_or_b32 v161, v183, 16, v182
	v_lshl_or_b32 v160, v185, 16, v184
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v145, v145, v198, 0xc0c0004
	v_perm_b32 v147, v200, v199, 0xc0c0004
	v_perm_b32 v149, v201, v149, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v164, v202, 0xc0c0004
	v_perm_b32 v166, v180, v179, 0xc0c0004
	v_perm_b32 v177, v178, v177, 0xc0c0004
	v_lshl_or_b32 v139, v212, 16, v211
	v_lshl_or_b32 v138, v138, 16, v137
	v_lshl_or_b32 v137, v210, 16, v209
	v_lshl_or_b32 v141, v141, 16, v196
	v_wmma_i32_16x16x16_iu8 v[152:159], v[160:163], v[133:136], v[152:159] neg_lo:[1,1,0]
	v_lshl_or_b32 v136, v145, 16, v146
	v_lshl_or_b32 v135, v149, 16, v147
	v_lshl_or_b32 v134, v164, 16, v165
	v_lshl_or_b32 v133, v177, 16, v166
	v_wmma_i32_16x16x16_iu8 v[169:176], v[141:144], v[137:140], v[169:176] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[152:159], v[133:136], v[137:140], v[152:159] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v145, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v146, v172
	v_cvt_f32_i32_e32 v139, v173
	v_cvt_f32_i32_e32 v143, v174
	v_cvt_f32_i32_e32 v140, v175
	v_cvt_f32_i32_e32 v144, v176
	v_cvt_f32_i32_e32 v137, v152
	v_cvt_f32_i32_e32 v141, v153
	v_cvt_f32_i32_e32 v138, v154
	v_cvt_f32_i32_e32 v142, v155
	v_cvt_f32_i32_e32 v133, v156
	v_cvt_f32_i32_e32 v135, v157
	v_cvt_f32_i32_e32 v134, v158
	v_cvt_f32_i32_e32 v136, v159
	v_cvt_f32_i32_e32 v147, v169
	v_cvt_f32_i32_e32 v149, v170
.LBB0_9:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v152, 0
	v_mov_b32_e32 v154, 0
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v160, s1, v85
	v_add_nc_u32_e32 v161, s1, v84
	v_add_nc_u32_e32 v158, s1, v87
	v_add_nc_u32_e32 v204, s1, v81
	v_add_nc_u32_e32 v159, s1, v86
	v_add_nc_u32_e32 v202, s1, v83
	v_add_nc_u32_e32 v203, s1, v82
	v_add_nc_u32_e32 v205, s1, v80
	v_add_nc_u32_e32 v206, s1, v79
	v_add_nc_u32_e32 v207, s1, v78
	v_add_nc_u32_e32 v208, s1, v77
	v_add_nc_u32_e32 v209, s1, v76
	v_add_nc_u32_e32 v210, s1, v75
	v_add_nc_u32_e32 v211, s1, v74
	v_add_nc_u32_e32 v212, s1, v73
	v_add_nc_u32_e32 v213, s1, v72
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v160, v160
	ds_load_u8 v161, v161
	ds_load_u8 v158, v158
	ds_load_u8 v204, v204
	ds_load_u8 v205, v205
	ds_load_u8 v202, v202
	ds_load_u8 v203, v203
	ds_load_u8 v159, v159
	ds_load_u8 v208, v208
	ds_load_u8 v209, v209
	ds_load_u8 v206, v206
	ds_load_u8 v212, v212
	ds_load_u8 v213, v213
	ds_load_u8 v210, v210
	ds_load_u8 v211, v211
	ds_load_u8 v207, v207
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v154, s1, v99
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v29, v29, v30, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v30, v31, v32, 0xc0c0004
	v_perm_b32 v25, v25, v26, 0xc0c0004
	v_perm_b32 v26, v27, v28, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v155, s1, v98
	v_add_nc_u32_e32 v152, s1, v101
	v_add_nc_u32_e32 v194, s1, v95
	v_add_nc_u32_e32 v195, s1, v94
	v_add_nc_u32_e32 v196, s1, v93
	v_add_nc_u32_e32 v197, s1, v92
	v_add_nc_u32_e32 v198, s1, v91
	v_add_nc_u32_e32 v199, s1, v90
	v_add_nc_u32_e32 v200, s1, v89
	v_add_nc_u32_e32 v201, s1, v88
	v_add_nc_u32_e32 v153, s1, v100
	v_add_nc_u32_e32 v156, s1, v97
	v_add_nc_u32_e32 v157, s1, v96
	v_add_nc_u32_e32 v214, s1, v71
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v150, v150, v151, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v151, v167, v168, 0xc0c0004
	v_perm_b32 v21, v21, v22, 0xc0c0004
	v_perm_b32 v22, v23, v24, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v23, s1, v70
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v31, v30, 16, v29
	v_lshl_or_b32 v30, v26, 16, v25
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v24, v205, v204, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v25, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v207, v206, 0xc0c0004
	ds_load_u8 v167, v154
	ds_load_u8 v168, v155
	ds_load_u8 v202, v152
	ds_load_u8 v194, v194
	ds_load_u8 v195, v195
	ds_load_u8 v203, v156
	ds_load_u8 v204, v157
	ds_load_u8 v205, v153
	ds_load_u8 v198, v198
	ds_load_u8 v199, v199
	ds_load_u8 v196, v196
	ds_load_u8 v206, v214
	ds_load_u8 v207, v23
	ds_load_u8 v200, v200
	ds_load_u8 v201, v201
	ds_load_u8 v197, v197
	v_lshl_or_b32 v32, v151, 16, v150
	v_lshl_or_b32 v29, v22, 16, v21
	v_perm_b32 v21, v161, v160, 0xc0c0004
	v_perm_b32 v22, v159, v158, 0xc0c0004
	v_perm_b32 v26, v209, v208, 0xc0c0004
	v_perm_b32 v28, v213, v212, 0xc0c0004
	v_perm_b32 v150, v211, v210, 0xc0c0004
	s_mov_b32 s4, 0
	v_perm_b32 v17, v17, v18, 0xc0c0004
	v_perm_b32 v18, v19, v20, 0xc0c0004
	v_perm_b32 v9, v9, v14, 0xc0c0004
	v_perm_b32 v14, v15, v16, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v163, s1, v130
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v161, v22, 16, v21
	v_lshl_or_b32 v160, v25, 16, v24
	v_lshl_or_b32 v159, v27, 16, v26
	v_lshl_or_b32 v158, v150, 16, v28
	v_mov_b32_e32 v28, s11
	v_dual_mov_b32 v27, s10 :: v_dual_add_nc_u32 v148, s1, v132
	v_dual_mov_b32 v25, s8 :: v_dual_add_nc_u32 v162, s1, v131
	v_dual_mov_b32 v23, s6 :: v_dual_add_nc_u32 v164, s1, v129
	v_dual_mov_b32 v26, s9 :: v_dual_add_nc_u32 v165, s1, v128
	v_dual_mov_b32 v21, s4 :: v_dual_add_nc_u32 v166, s1, v127
	v_dual_mov_b32 v24, s7 :: v_dual_add_nc_u32 v169, s1, v126
	v_dual_mov_b32 v22, s5 :: v_dual_add_nc_u32 v171, s1, v124
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v181, s1, v114
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v17, v18, 16, v17
	v_lshl_or_b32 v16, v14, 16, v9
	v_perm_b32 v5, v5, v6, 0xc0c0004
	v_perm_b32 v6, v7, v8, 0xc0c0004
	v_perm_b32 v1, v1, v2, 0xc0c0004
	v_perm_b32 v2, v3, v4, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v205, v202, 0xc0c0004
	v_perm_b32 v7, v195, v194, 0xc0c0004
	v_perm_b32 v8, v204, v203, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v199, v198, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v197, v196, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v182, s1, v113
	v_add_nc_u32_e32 v179, s1, v116
	v_add_nc_u32_e32 v185, s1, v110
	v_add_nc_u32_e32 v170, s1, v125
	v_add_nc_u32_e32 v172, s1, v123
	v_add_nc_u32_e32 v173, s1, v122
	v_add_nc_u32_e32 v174, s1, v121
	v_add_nc_u32_e32 v175, s1, v120
	v_add_nc_u32_e32 v176, s1, v119
	v_add_nc_u32_e32 v177, s1, v118
	v_add_nc_u32_e32 v178, s1, v117
	v_add_nc_u32_e32 v180, s1, v115
	v_add_nc_u32_e32 v186, s1, v109
	v_add_nc_u32_e32 v19, s1, v69
	v_add_nc_u32_e32 v183, s1, v112
	v_add_nc_u32_e32 v184, s1, v111
	v_add_nc_u32_e32 v187, s1, v108
	v_add_nc_u32_e32 v188, s1, v107
	v_add_nc_u32_e32 v189, s1, v106
	v_add_nc_u32_e32 v190, s1, v105
	v_add_nc_u32_e32 v191, s1, v104
	v_add_nc_u32_e32 v192, s1, v103
	v_add_nc_u32_e32 v193, s1, v102
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[150:157], v[158:161], v[29:32], v[21:28] neg_lo:[1,1,0]
	v_lshl_or_b32 v15, v6, 16, v5
	v_lshl_or_b32 v14, v2, 16, v1
	v_lshl_or_b32 v4, v4, 16, v3
	v_lshl_or_b32 v3, v8, 16, v7
	v_lshl_or_b32 v2, v18, 16, v9
	ds_load_u8 v5, v181
	ds_load_u8 v6, v182
	ds_load_u8 v7, v179
	ds_load_u8 v8, v185
	ds_load_u8 v9, v186
	ds_load_u8 v18, v183
	ds_load_u8 v20, v184
	ds_load_u8 v158, v180
	ds_load_u8 v159, v189
	ds_load_u8 v160, v190
	ds_load_u8 v161, v187
	ds_load_u8 v167, v193
	ds_load_u8 v19, v19
	ds_load_u8 v168, v191
	ds_load_u8 v179, v192
	ds_load_u8 v180, v188
	ds_load_u8 v163, v163
	ds_load_u8 v164, v164
	ds_load_u8 v148, v148
	ds_load_u8 v169, v169
	ds_load_u8 v170, v170
	ds_load_u8 v165, v165
	ds_load_u8 v166, v166
	ds_load_u8 v162, v162
	ds_load_u8 v173, v173
	ds_load_u8 v174, v174
	ds_load_u8 v171, v171
	ds_load_u8 v177, v177
	ds_load_u8 v178, v178
	ds_load_u8 v175, v175
	ds_load_u8 v176, v176
	ds_load_u8 v172, v172
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v6, v158, v7, 0xc0c0004
	v_perm_b32 v7, v9, v8, 0xc0c0004
	v_perm_b32 v9, v20, v18, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v18, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v20, v180, v161, 0xc0c0004
	v_perm_b32 v19, v19, v167, 0xc0c0004
	v_perm_b32 v158, v179, v168, 0xc0c0004
	v_perm_b32 v1, v207, v206, 0xc0c0004
	v_perm_b32 v181, v201, v200, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	v_lshl_or_b32 v7, v9, 16, v7
	v_lshl_or_b32 v6, v20, 16, v18
	v_lshl_or_b32 v5, v158, 16, v19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v9, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v18, v162, v148, 0xc0c0004
	v_perm_b32 v19, v170, v169, 0xc0c0004
	v_perm_b32 v20, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v148, v174, v173, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v172, v171, 0xc0c0004
	v_perm_b32 v159, v178, v177, 0xc0c0004
	v_perm_b32 v160, v176, v175, 0xc0c0004
	v_lshl_or_b32 v1, v181, 16, v1
	v_wmma_i32_16x16x16_iu8 v[21:28], v[5:8], v[29:32], v[21:28] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v18, 16, v9
	v_lshl_or_b32 v7, v20, 16, v19
	v_lshl_or_b32 v6, v158, 16, v148
	v_lshl_or_b32 v5, v160, 16, v159
	v_wmma_i32_16x16x16_iu8 v[150:157], v[1:4], v[14:17], v[150:157] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[5:8], v[14:17], v[21:28] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v166, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v163, v152
	v_cvt_f32_i32_e32 v165, v153
	v_cvt_f32_i32_e32 v161, v154
	v_cvt_f32_i32_e32 v164, v155
	v_cvt_f32_i32_e32 v159, v156
	v_cvt_f32_i32_e32 v162, v157
	v_cvt_f32_i32_e32 v157, v21
	v_cvt_f32_i32_e32 v160, v22
	v_cvt_f32_i32_e32 v155, v23
	v_cvt_f32_i32_e32 v158, v24
	v_cvt_f32_i32_e32 v153, v25
	v_cvt_f32_i32_e32 v156, v26
	v_cvt_f32_i32_e32 v152, v27
	v_cvt_f32_i32_e32 v154, v28
	v_cvt_f32_i32_e32 v148, v150
.LBB0_11:
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 27
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s30, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s30, s14
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s0, 5
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s31, s15
	.loc	1 334 40 is_stmt 0              ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s35
	.loc	1 331 34 is_stmt 1              ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s49
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt lgkmcnt(15)
	v_add_lshl_u32 v1, v68, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt lgkmcnt(14)
	v_add_lshl_u32 v2, v67, s1, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s0
	s_waitcnt lgkmcnt(13)
	v_dual_mov_b32 v182, 0 :: v_dual_and_b32 v3, 32, v13
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	v_add3_u32 v185, s33, s27, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_add3_u32 v3, 0, v12, v3
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_and_b32 s13, s13, 0xffff
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v151, 0, v10
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt lgkmcnt(12)
	v_add_lshl_u32 v4, v185, s1, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_add_nc_u32_e32 v150, v3, v11
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v184, v1, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v17, s52, v65
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v175, 0
	v_mov_b32_e32 v169, 0
	v_mov_b32_e32 v171, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	v_mov_b32_e32 v167, 0
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v183, 0 :: v_dual_lshlrev_b32 v2, 16, v2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v150, v2 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v1, v3, s[28:31], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cndmask_b32_e64 v2, 0, 1, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[13:16], v151 offset:33792
	ds_load_b128 v[9:12], v151 offset:33808
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[5:8], v151 offset:34304
	ds_load_b128 v[1:4], v151 offset:34320
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v150, v18 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	ds_load_u8_d16 v217, v17
	ds_load_u8_d16 v218, v17 offset:16
	ds_load_u8_d16 v219, v17 offset:32
	ds_load_u8_d16 v220, v17 offset:48
	ds_load_u8_d16 v221, v17 offset:64
	ds_load_u8_d16 v222, v17 offset:80
	ds_load_u8_d16 v223, v17 offset:96
	ds_load_u8_d16 v224, v17 offset:112
	ds_load_u8_d16 v225, v17 offset:128
	ds_load_u8_d16 v226, v17 offset:144
	ds_load_u8_d16 v227, v17 offset:160
	ds_load_u8_d16 v228, v17 offset:176
	ds_load_u8_d16 v229, v17 offset:192
	ds_load_u8_d16 v230, v17 offset:208
	ds_load_u8_d16 v231, v17 offset:224
	ds_load_u8_d16 v232, v17 offset:240
	ds_load_u8_d16 v201, v17 offset:256
	ds_load_u8_d16 v202, v17 offset:272
	ds_load_u8_d16 v203, v17 offset:288
	ds_load_u8_d16 v204, v17 offset:304
	ds_load_u8_d16 v205, v17 offset:320
	ds_load_u8_d16 v206, v17 offset:336
	ds_load_u8_d16 v207, v17 offset:352
	ds_load_u8_d16 v208, v17 offset:368
	ds_load_u8_d16 v209, v17 offset:384
	ds_load_u8_d16 v210, v17 offset:400
	ds_load_u8_d16 v211, v17 offset:416
	ds_load_u8_d16 v212, v17 offset:432
	ds_load_u8_d16 v213, v17 offset:448
	ds_load_u8_d16 v214, v17 offset:464
	ds_load_u8_d16 v215, v17 offset:480
	ds_load_u8_d16 v216, v17 offset:496
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_cbranch_vccnz .LBB0_13
; %bb.12:
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v21, v229, v230, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v22, v231, v232, 0xc0c0004
	v_perm_b32 v23, v225, v226, 0xc0c0004
	v_perm_b32 v24, v227, v228, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v19, s51, v85
	v_add_nc_u32_e32 v20, s51, v84
	v_add_nc_u32_e32 v17, s51, v87
	v_add_nc_u32_e32 v18, s51, v86
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v171, v22, 16, v21
	v_lshl_or_b32 v170, v24, 16, v23
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v21, s51, v82
	v_add_nc_u32_e32 v22, s51, v81
	v_add_nc_u32_e32 v23, s51, v80
	v_add_nc_u32_e32 v25, s51, v83
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	ds_load_u8 v22, v22
	ds_load_u8 v23, v23
	ds_load_u8 v24, v25
	ds_load_u8 v21, v21
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v25, s51, v77
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v26, v221, v222, 0xc0c0004
	v_perm_b32 v27, v223, v224, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v27, 16, v26
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v20, s51, v76
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	v_perm_b32 v18, v217, v218, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	v_perm_b32 v23, v219, v220, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v21, v24, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v24, s51, v79
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v175, v17, 16, v19
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v17, s51, v78
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v25, v25
	ds_load_u8 v20, v20
	v_lshl_or_b32 v168, v23, 16, v18
	ds_load_u8 v18, v24
	ds_load_u8 v17, v17
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v19, s51, v73
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v174, v21, 16, v22
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v21, s51, v72
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v19, v19
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v20, v25, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v18, s51, v75
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v173, v17, 16, v20
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v17, s51, v74
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v20, s51, v114
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v21, v19, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v21, s51, v113
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v20, v20
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v18, s51, v116
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v172, v17, 16, v19
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v17, s51, v115
	v_add_nc_u32_e32 v19, s51, v110
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v21, s51, v109
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	ds_load_u8 v19, v19
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v17, v18, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v18, s51, v112
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v21, v19, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v21, s51, v111
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v18, v18
	ds_load_u8 v21, v21
	v_lshl_or_b32 v179, v17, 16, v20
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v17, s51, v106
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v18, v21, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v178, v18, 16, v19
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v18, s51, v105
	v_add_nc_u32_e32 v19, s51, v107
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v18, v18
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v18, s51, v108
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v19, s51, v103
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v177, v18, 16, v17
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v17, s51, v102
	v_add_nc_u32_e32 v18, s51, v69
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v19, v19
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v18, s51, v104
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v176, v18, 16, v17
	v_dual_mov_b32 v24, s11 :: v_dual_mov_b32 v23, s10
	v_dual_mov_b32 v22, s9 :: v_dual_mov_b32 v21, s8
	v_dual_mov_b32 v20, s7 :: v_dual_mov_b32 v19, s6
	v_dual_mov_b32 v18, s5 :: v_dual_mov_b32 v17, s4
	v_wmma_i32_16x16x16_iu8 v[25:32], v[172:175], v[168:171], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[176:179], v[168:171], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v168, v213, v214, 0xc0c0004
	v_perm_b32 v169, v215, v216, 0xc0c0004
	v_perm_b32 v170, v209, v210, 0xc0c0004
	v_perm_b32 v172, v211, v212, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v173, s51, v129
	v_add_nc_u32_e32 v174, s51, v131
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v171, v169, 16, v168
	v_perm_b32 v168, v205, v206, 0xc0c0004
	v_perm_b32 v169, v207, v208, 0xc0c0004
	v_lshl_or_b32 v170, v172, 16, v170
	v_perm_b32 v172, v203, v204, 0xc0c0004
	ds_load_u8 v173, v173
	ds_load_u8 v174, v174
	v_lshl_or_b32 v169, v169, 16, v168
	v_perm_b32 v168, v201, v202, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v176, s51, v127
	v_add_nc_u32_e32 v175, s51, v125
	v_add_nc_u32_e32 v177, s51, v119
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v168, v172, 16, v168
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v172, s51, v130
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v176, v176
	ds_load_u8 v175, v175
	ds_load_u8 v177, v177
	ds_load_u8 v172, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v173, s51, v132
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v174, s51, v126
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v174, v174
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v175, s51, v128
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v175, v175
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v176, v175, 0xc0c0004
	v_lshl_or_b32 v175, v173, 16, v172
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v172, s51, v122
	v_add_nc_u32_e32 v173, s51, v121
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v174, v176, 16, v174
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v176, s51, v123
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v172, v172
	ds_load_u8 v173, v173
	ds_load_u8 v176, v176
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v173, s51, v124
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v176, v173, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v176, s51, v117
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v173, v173, 16, v172
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v172, s51, v118
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v176, v176
	ds_load_u8 v172, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v176, v172, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v176, s51, v120
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v176, v176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v177, s51, v88
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v172, v176, 16, v172
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v176, s51, v96
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v177, v177
	v_wmma_i32_16x16x16_iu8 v[17:24], v[172:175], v[168:171], v[17:24] neg_lo:[1,1,0]
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v172, s51, v99
	v_add_nc_u32_e32 v173, s51, v98
	v_add_nc_u32_e32 v174, s51, v100
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v176, v176
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v175, s51, v94
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v172, v172
	ds_load_u8 v173, v173
	ds_load_u8 v174, v174
	ds_load_u8 v175, v175
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v173, s51, v101
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v174, s51, v95
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v174, v174
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v175, s51, v97
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v175, v175
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v176, v175, 0xc0c0004
	v_lshl_or_b32 v175, v173, 16, v172
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v172, s51, v91
	v_add_nc_u32_e32 v173, s51, v90
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v174, v176, 16, v174
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v176, s51, v92
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v172, v172
	ds_load_u8 v173, v173
	ds_load_u8 v176, v176
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v173, s51, v93
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v176, v173, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v176, s51, v70
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v173, v173, 16, v172
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v172, s51, v71
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v176, v176
	ds_load_u8 v172, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v176, v172, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v176, s51, v89
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v176, v176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v172, v176, 16, v172
	v_wmma_i32_16x16x16_iu8 v[25:32], v[172:175], v[168:171], v[25:32] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v172, v17
	v_cvt_f32_i32_e32 v174, v18
	v_cvt_f32_i32_e32 v173, v19
	v_cvt_f32_i32_e32 v175, v20
	v_cvt_f32_i32_e32 v168, v21
	v_cvt_f32_i32_e32 v170, v22
	v_cvt_f32_i32_e32 v169, v23
	v_cvt_f32_i32_e32 v171, v24
	v_cvt_f32_i32_e32 v179, v27
	v_cvt_f32_i32_e32 v181, v28
	v_cvt_f32_i32_e32 v176, v29
	v_cvt_f32_i32_e32 v178, v30
	v_cvt_f32_i32_e32 v177, v31
	v_cvt_f32_i32_e32 v180, v32
	v_cvt_f32_i32_e32 v182, v25
	v_cvt_f32_i32_e32 v183, v26
.LBB0_13:
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_b128 v[29:32], v151 offset:33792
	ds_load_b128 v[25:28], v151 offset:33808
	ds_load_b128 v[21:24], v151 offset:34304
	ds_load_b128 v[17:20], v151 offset:34320
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v191, 0
	v_mov_b32_e32 v186, 0
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_15
; %bb.14:
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v85, s50, v85
	v_add_nc_u32_e32 v84, s50, v84
	v_add_nc_u32_e32 v87, s50, v87
	v_add_nc_u32_e32 v81, s50, v81
	v_add_nc_u32_e32 v86, s50, v86
	v_add_nc_u32_e32 v83, s50, v83
	v_add_nc_u32_e32 v82, s50, v82
	v_add_nc_u32_e32 v80, s50, v80
	v_add_nc_u32_e32 v79, s50, v79
	v_add_nc_u32_e32 v78, s50, v78
	v_add_nc_u32_e32 v77, s50, v77
	v_add_nc_u32_e32 v76, s50, v76
	v_add_nc_u32_e32 v75, s50, v75
	v_add_nc_u32_e32 v74, s50, v74
	v_add_nc_u32_e32 v73, s50, v73
	v_add_nc_u32_e32 v72, s50, v72
	v_add_nc_u32_e32 v99, s50, v99
	v_add_nc_u32_e32 v167, s50, v93
	v_add_nc_u32_e32 v187, s50, v91
	v_add_nc_u32_e32 v188, s50, v90
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v85, v85
	ds_load_u8 v84, v84
	ds_load_u8 v90, v87
	ds_load_u8 v81, v81
	ds_load_u8 v80, v80
	ds_load_u8 v83, v83
	ds_load_u8 v82, v82
	ds_load_u8 v91, v86
	ds_load_u8 v77, v77
	ds_load_u8 v76, v76
	ds_load_u8 v79, v79
	ds_load_u8 v73, v73
	ds_load_u8 v72, v72
	ds_load_u8 v75, v75
	ds_load_u8 v74, v74
	ds_load_u8 v78, v78
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v86, v229, v230, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v87, v231, v232, 0xc0c0004
	v_perm_b32 v93, v221, v222, 0xc0c0004
	v_perm_b32 v191, v223, v224, 0xc0c0004
	v_perm_b32 v192, v217, v218, 0xc0c0004
	v_perm_b32 v193, v219, v220, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v98, s50, v98
	v_add_nc_u32_e32 v101, s50, v101
	v_add_nc_u32_e32 v95, s50, v95
	v_add_nc_u32_e32 v100, s50, v100
	v_add_nc_u32_e32 v97, s50, v97
	v_add_nc_u32_e32 v96, s50, v96
	v_add_nc_u32_e32 v94, s50, v94
	v_add_nc_u32_e32 v186, s50, v92
	v_add_nc_u32_e32 v189, s50, v89
	v_add_nc_u32_e32 v190, s50, v88
	v_add_nc_u32_e32 v71, s50, v71
	v_add_nc_u32_e32 v70, s50, v70
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v89, v87, 16, v86
	v_lshl_or_b32 v87, v191, 16, v93
	v_lshl_or_b32 v86, v193, 16, v192
	ds_load_u8 v99, v99
	ds_load_u8 v98, v98
	ds_load_u8 v101, v101
	ds_load_u8 v95, v95
	ds_load_u8 v94, v94
	ds_load_u8 v97, v97
	ds_load_u8 v96, v96
	ds_load_u8 v100, v100
	ds_load_u8 v187, v187
	ds_load_u8 v188, v188
	ds_load_u8 v167, v167
	ds_load_u8 v191, v71
	ds_load_u8 v192, v70
	ds_load_u8 v189, v189
	ds_load_u8 v190, v190
	ds_load_u8 v186, v186
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v76, v76, v77, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v77, v78, v79, 0xc0c0004
	v_perm_b32 v72, v72, v73, 0xc0c0004
	v_perm_b32 v73, v74, v75, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v114, s50, v114
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v98, v98, v99, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v113, s50, v113
	v_add_nc_u32_e32 v116, s50, v116
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v94, v94, v95, 0xc0c0004
	s_mov_b32 s11, s4
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v95, v96, v97, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v99, v100, v101, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v110, s50, v110
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v100, v188, v187, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v186, v167, 0xc0c0004
	s_mov_b32 s10, s4
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v132, s50, v132
	v_add_nc_u32_e32 v128, s50, v128
	v_add_nc_u32_e32 v127, s50, v127
	v_add_nc_u32_e32 v126, s50, v126
	v_add_nc_u32_e32 v125, s50, v125
	v_add_nc_u32_e32 v124, s50, v124
	v_add_nc_u32_e32 v123, s50, v123
	v_add_nc_u32_e32 v122, s50, v122
	v_add_nc_u32_e32 v121, s50, v121
	v_add_nc_u32_e32 v120, s50, v120
	v_add_nc_u32_e32 v119, s50, v119
	v_add_nc_u32_e32 v118, s50, v118
	v_add_nc_u32_e32 v117, s50, v117
	v_add_nc_u32_e32 v115, s50, v115
	v_add_nc_u32_e32 v112, s50, v112
	v_add_nc_u32_e32 v111, s50, v111
	v_add_nc_u32_e32 v109, s50, v109
	v_add_nc_u32_e32 v108, s50, v108
	v_add_nc_u32_e32 v107, s50, v107
	v_add_nc_u32_e32 v106, s50, v106
	v_add_nc_u32_e32 v105, s50, v105
	v_add_nc_u32_e32 v104, s50, v104
	v_add_nc_u32_e32 v103, s50, v103
	v_add_nc_u32_e32 v102, s50, v102
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v84, v84, v85, 0xc0c0004
	v_perm_b32 v85, v91, v90, 0xc0c0004
	v_lshl_or_b32 v91, v77, 16, v76
	v_lshl_or_b32 v90, v73, 16, v72
	v_mov_b32_e32 v77, s11
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v69, s50, v69
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_dual_mov_b32 v76, s10 :: v_dual_add_nc_u32 v131, s50, v131
	v_dual_mov_b32 v75, s9 :: v_dual_add_nc_u32 v130, s50, v130
	v_dual_mov_b32 v74, s8 :: v_dual_add_nc_u32 v129, s50, v129
	v_dual_mov_b32 v73, s7 :: v_dual_mov_b32 v72, s6
	v_dual_mov_b32 v71, s5 :: v_dual_mov_b32 v70, s4
	v_lshl_or_b32 v97, v99, 16, v98
	v_lshl_or_b32 v96, v95, 16, v94
	v_lshl_or_b32 v95, v101, 16, v100
	ds_load_u8 v98, v114
	ds_load_u8 v99, v113
	ds_load_u8 v100, v116
	ds_load_u8 v101, v110
	ds_load_u8 v109, v109
	ds_load_u8 v110, v112
	ds_load_u8 v111, v111
	ds_load_u8 v112, v115
	ds_load_u8 v106, v106
	ds_load_u8 v105, v105
	ds_load_u8 v108, v108
	ds_load_u8 v102, v102
	ds_load_u8 v69, v69
	ds_load_u8 v104, v104
	ds_load_u8 v103, v103
	ds_load_u8 v107, v107
	ds_load_u8 v113, v130
	ds_load_u8 v114, v129
	ds_load_u8 v115, v132
	ds_load_u8 v116, v126
	ds_load_u8 v125, v125
	ds_load_u8 v126, v128
	ds_load_u8 v127, v127
	ds_load_u8 v128, v131
	ds_load_u8 v122, v122
	ds_load_u8 v121, v121
	ds_load_u8 v124, v124
	ds_load_u8 v118, v118
	ds_load_u8 v117, v117
	ds_load_u8 v120, v120
	ds_load_u8 v119, v119
	ds_load_u8 v123, v123
	v_perm_b32 v88, v225, v226, 0xc0c0004
	v_perm_b32 v92, v227, v228, 0xc0c0004
	v_perm_b32 v80, v80, v81, 0xc0c0004
	v_perm_b32 v81, v82, v83, 0xc0c0004
	v_lshl_or_b32 v93, v85, 16, v84
	v_perm_b32 v193, v213, v214, 0xc0c0004
	v_lshl_or_b32 v88, v92, 16, v88
	v_perm_b32 v194, v215, v216, 0xc0c0004
	v_lshl_or_b32 v92, v81, 16, v80
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v99, v112, v100, 0xc0c0004
	v_perm_b32 v100, v109, v101, 0xc0c0004
	v_perm_b32 v109, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v105, v105, v106, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v106, v107, v108, 0xc0c0004
	v_perm_b32 v69, v69, v102, 0xc0c0004
	v_perm_b32 v102, v103, v104, 0xc0c0004
	v_perm_b32 v195, v209, v210, 0xc0c0004
	v_perm_b32 v196, v211, v212, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[78:85], v[90:93], v[86:89], v[70:77] neg_lo:[1,1,0]
	v_lshl_or_b32 v93, v194, 16, v193
	v_perm_b32 v90, v205, v206, 0xc0c0004
	v_perm_b32 v91, v207, v208, 0xc0c0004
	v_perm_b32 v193, v201, v202, 0xc0c0004
	v_perm_b32 v194, v203, v204, 0xc0c0004
	v_perm_b32 v94, v192, v191, 0xc0c0004
	v_perm_b32 v129, v190, v189, 0xc0c0004
	v_lshl_or_b32 v101, v99, 16, v98
	v_lshl_or_b32 v100, v109, 16, v100
	v_lshl_or_b32 v99, v106, 16, v105
	v_lshl_or_b32 v98, v102, 16, v69
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v69, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v102, v128, v115, 0xc0c0004
	v_perm_b32 v103, v125, v116, 0xc0c0004
	v_perm_b32 v104, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v105, v121, v122, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v123, v124, 0xc0c0004
	v_perm_b32 v107, v117, v118, 0xc0c0004
	v_perm_b32 v108, v119, v120, 0xc0c0004
	v_lshl_or_b32 v92, v196, 16, v195
	v_lshl_or_b32 v91, v91, 16, v90
	v_lshl_or_b32 v90, v194, 16, v193
	v_lshl_or_b32 v94, v129, 16, v94
	v_wmma_i32_16x16x16_iu8 v[70:77], v[98:101], v[86:89], v[70:77] neg_lo:[1,1,0]
	v_lshl_or_b32 v89, v102, 16, v69
	v_lshl_or_b32 v88, v104, 16, v103
	v_lshl_or_b32 v87, v106, 16, v105
	v_lshl_or_b32 v86, v108, 16, v107
	v_wmma_i32_16x16x16_iu8 v[78:85], v[94:97], v[90:93], v[78:85] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[86:89], v[90:93], v[70:77] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v167, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v197, v79
	v_cvt_f32_i32_e32 v195, v80
	v_cvt_f32_i32_e32 v200, v81
	v_cvt_f32_i32_e32 v188, v82
	v_cvt_f32_i32_e32 v194, v83
	v_cvt_f32_i32_e32 v192, v84
	v_cvt_f32_i32_e32 v198, v85
	v_cvt_f32_i32_e32 v190, v70
	v_cvt_f32_i32_e32 v196, v71
	v_cvt_f32_i32_e32 v193, v72
	v_cvt_f32_i32_e32 v199, v73
	v_cvt_f32_i32_e32 v186, v74
	v_cvt_f32_i32_e32 v189, v75
	v_cvt_f32_i32_e32 v187, v76
	v_cvt_f32_i32_e32 v191, v77
.LBB0_15:
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s48, 31
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s30, s14
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_lshr_b32 s0, s0, 27
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s31, s15
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_add_i32 s0, s48, s0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v65, s27, v65
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s0, 5
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s34, s34, s27
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s35
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s49
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v68, v68, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v67, v67, s1, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v69, v185, s1, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v70, 16, v0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v68, 0x80000000, v68 :: v_dual_cndmask_b32 v67, 0x80000000, v67
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v66, 1, v66
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v67, v67, s[28:31], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v68, v68, s[12:15], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v65, s34, s33, v65
	s_mov_b32 s15, 0x76543210
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v0, 0x5410 :: v_dual_lshlrev_b32 v67, 16, v67
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	ds_store_b32 v150, v67 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v67, v69, s[28:31], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, 0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_mov_b16_e64 v69.h, v184.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v71, 0x7632
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v84.h, v69.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v106, v137, v69
	v_mul_f32_e32 v113, v135, v69
	v_mul_f32_e32 v117, v136, v69
	v_mul_f32_e32 v118, v134, v69
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v111, v156, v69
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v5, v106, v5, v42
	v_fma_f32 v2, v113, v2, v37
	v_fma_f32 v4, v117, v4, v33
	v_fma_f32 v3, v118, v3, v34
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v90, v147, v69
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v5, s3
	v_cndmask_b32_e64 v37, v37, v2, s3
	v_cndmask_b32_e64 v33, v33, v4, s3
	v_cndmask_b32_e64 v34, v34, v3, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[2:5], v151 offset:33792
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v115, v154, v69
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v18, v111, v18, v45
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v88, v148, v69
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v89, v149, v69
	v_mul_f32_e32 v93, v146, v69
	v_mul_f32_e32 v94, v145, v69
	v_mul_f32_e32 v98, v139, v69
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v103, v160, v69
	v_mul_f32_e32 v104, v157, v69
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v105, v141, v69
	v_mul_f32_e32 v109, v142, v69
	v_mul_f32_e32 v110, v138, v69
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v116, v152, v69
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v20, v115, v20, v41
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v45, v18, s3
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v45, 16, v68
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v13, v90, v13, v58
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v97, v143, v69
	v_mul_f32_e32 v101, v144, v69
	v_mul_f32_e32 v102, v140, v69
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v112, v153, v69
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v29, v88, v29, v35
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v14, v89, v14, v59
	v_fma_f32 v15, v94, v15, v54
	v_fma_f32 v16, v93, v16, v55
	v_fma_f32 v9, v98, v9, v50
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v22, v103, v22, v53
	v_fma_f32 v21, v104, v21, v52
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v6, v105, v6, v43
	v_fma_f32 v7, v110, v7, v38
	v_fma_f32 v8, v109, v8, v40
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v19, v116, v19, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v58, v13, s3
	v_cndmask_b32_e64 v20, v41, v20, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v41, v182, v45
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v10, v97, v10, v51
	v_fma_f32 v11, v102, v11, v46
	v_fma_f32 v12, v101, v12, v47
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v17, v112, v17, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v35, v29, s3
	v_cndmask_b32_e64 v35, v59, v14, s3
	v_cndmask_b32_e64 v55, v55, v16, s3
	v_cndmask_b32_e64 v54, v54, v15, s3
	v_cndmask_b32_e64 v50, v50, v9, s3
	v_cndmask_b32_e64 v22, v53, v22, s3
	v_cndmask_b32_e64 v21, v52, v21, s3
	v_cndmask_b32_e64 v43, v43, v6, s3
	v_cndmask_b32_e64 v40, v40, v8, s3
	v_cndmask_b32_e64 v38, v38, v7, s3
	v_cndmask_b32_e64 v19, v39, v19, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v39, v183, v45
	v_mul_f32_e32 v52, v181, v45
	v_mul_f32_e32 v53, v179, v45
	ds_load_b128 v[6:9], v151 offset:33808
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v87, v166, v69
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v41, v41, v2, v58
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v51, v10, s3
	v_cndmask_b32_e64 v47, v47, v12, s3
	v_cndmask_b32_e64 v46, v46, v11, s3
	v_cndmask_b32_e64 v44, v44, v17, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[10:13], v151 offset:34304
	ds_load_b128 v[14:17], v151 offset:34320
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v39, v39, v3, v35
	v_fma_f32 v53, v53, v4, v54
	v_fma_f32 v52, v52, v5, v55
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v91, v165, v69
	v_mul_f32_e32 v96, v161, v69
	v_mul_f32_e32 v108, v155, v69
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v59, v178, v45
	v_mul_f32_e32 v114, v133, v69
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v32, v91, v32, v63
	v_fma_f32 v25, v96, v25, v60
	v_fma_f32 v23, v108, v23, v48
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v59, v59, v7, v51
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v174, v45
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v63, v32, s3
	v_cndmask_b32_e64 v25, v60, v25, s3
	v_cndmask_b32_e64 v23, v48, v23, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v48, v197, v45
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v60, v176, v45
	v_mul_f32_e32 v63, v180, v45
	v_mul_f32_e32 v90, v175, v45
	v_mul_f32_e32 v91, v173, v45
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v68, v68, v11, v43
	v_fma_f32 v60, v60, v6, v50
	v_fma_f32 v63, v63, v9, v47
	v_fma_f32 v90, v90, v13, v40
	v_fma_f32 v91, v91, v12, v38
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v99, v162, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v74.h, v69.l
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v93, v193, v45
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v94, v170, v45
	v_mul_f32_e32 v98, v171, v45
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v28, v99, v28, v57
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v99, v169, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v40, v90, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v94, v94, v15, v37
	v_fma_f32 v98, v98, v17, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v57, v28, s3
	v_cndmask_b32_e64 v38, v38, v91, s2
	v_cndmask_b32_e64 v35, v35, v39, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v96, v189, v45
	v_mul_f32_e32 v57, v195, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v58, v41, s2
	v_cndmask_b32_e64 v37, v37, v94, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v72.h, v69.l
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v89, v190, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v51, v59, s2
	v_cndmask_b32_e64 v43, v43, v68, s2
	v_cndmask_b32_e64 v41, v55, v52, s2
	v_cndmask_b32_e64 v52, v54, v53, s2
	v_cndmask_b32_e64 v50, v50, v60, s2
	v_cndmask_b32_e64 v47, v47, v63, s2
	v_cndmask_b32_e64 v33, v33, v98, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v86.h, v69.l
	v_mov_b16_e32 v85.h, v69.l
	v_mov_b16_e32 v83.h, v69.l
	v_mov_b16_e32 v82.h, v69.l
	v_mov_b16_e32 v81.h, v69.l
	v_mov_b16_e32 v80.h, v69.l
	v_mov_b16_e32 v79.h, v69.l
	v_mov_b16_e32 v77.h, v69.l
	v_mov_b16_e32 v78.h, v69.l
	v_mov_b16_e32 v76.h, v69.l
	v_mov_b16_e32 v73.h, v69.l
	v_mov_b16_e32 v75.h, v69.l
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v67
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v30, v87, v30, v64
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v87, v114, v1, v36
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v1, v65, v66, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v66, v192, v45
	ds_store_b32 v150, v2 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v151 offset:33792
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v64, v30, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v177, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v36, v87, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v87, v172, v45
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v65, v198, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v64, v64, v8, v46
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[6:9], v151 offset:33808
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v87, v87, v10, v42
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[10:13], v151 offset:34304
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v46, v64, s2
	v_cndmask_b32_e64 v42, v42, v87, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v3, v48, v3, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v30, v3, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v100, v159, v69
	v_mul_f32_e32 v92, v163, v69
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v9, v65, v9, v28
	v_fma_f32 v27, v100, v27, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v31, v92, v31, v62
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v28, v9, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v92, v199, v45
	v_mul_f32_e32 v100, v191, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v56, v27, s3
	v_cndmask_b32_e64 v31, v62, v31, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v56, v200, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v8, v66, v8, v27
	v_fma_f32 v4, v57, v4, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v5, v56, v5, v32
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v27, v8, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v95, v164, v69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v31, v4, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v107, v158, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v32, v5, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.h, v69.l
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v26, v95, v26, v61
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v95, v168, v45
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v24, v107, v24, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v61, v26, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v67, v95, v14, v36
	v_fma_f32 v95, v99, v16, v34
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[14:17], v151 offset:34320
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v12, v93, v12, v23
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v61, v194, v45
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v49, v24, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v49, v167, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v36, v67, s2
	v_cndmask_b32_e64 v12, v23, v12, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v7, v61, v7, v26
	v_fma_f32 v13, v92, v13, v24
	v_fma_f32 v2, v49, v2, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v34, v95, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v26, v7, s2
	v_cndmask_b32_e64 v13, v24, v13, s2
	v_cndmask_b32_e64 v2, v29, v2, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v8
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v28
	v_mul_f32_e32 v23, 0xbfb8aa3b, v7
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v15, v96, v15, v18
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0x42800000, s10
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s10
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v17, v100, v17, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v18, v15, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v12
	v_mul_f32_e32 v18, 0xbfb8aa3b, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v20, v17, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v23, 0, 0x42800000, s3
	v_mul_f32_e32 v31, 0xbfb8aa3b, v15
	v_exp_f32_e32 v28, v28
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v7
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v31
	v_mul_f32_e32 v20, 0xbfb8aa3b, v4
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v24
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v31, 0, 0x42800000, s11
	v_ldexp_f32 v28, v28, v61
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v2
	v_cndmask_b32_e64 v24, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v31, 0xbfb8aa3b, v15 :: v_dual_add_f32 v28, 1.0, v28
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s6
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v23, v23, v54
	v_exp_f32_e32 v31, v31
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v90, null, v28, v28, v12
	v_div_scale_f32 v91, s10, v12, v28, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v111, v90
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v8
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ldexp_f32 v18, v18, v48
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v127, -v90, v111, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v111, v127, v111 :: v_dual_mul_f32 v62, v188, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v24, v24, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v127, v91, v111
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v6, v62, v6, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v143, -v90, v127, v91
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v88, v196, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v31, v62
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v25, v6, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v127, v143, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v11, v88, v11, v22
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v22, v11, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v92, null, v31, v31, v15
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v93, s11, v15, v31, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v27, 0xbfb8aa3b, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v112, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v22
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v22, 0, 0x42800000, s4
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v27, 0, 0x42800000, s7
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v128, -v92, v112, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v6 :: v_dual_fmac_f32 v27, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v112, v128, v112
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v27, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v128, v93, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v144, -v92, v128, v93
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v22, v22, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v27, v27, v58
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v58, null, v23, v23, v7
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v128, v144, v112 :: v_dual_add_f32 v27, 1.0, v27
	v_rcp_f32_e32 v104, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v61, s4, v6, v22, v6
	v_div_scale_f32 v66, null, v27, v27, v11
	v_div_scale_f32 v67, s7, v11, v27, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v108, v66
	v_fma_f32 v120, -v58, v104, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v104, v120, v104
	v_fma_f32 v124, -v66, v108, 1.0
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v97, v186, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v45, v187, v45 :: v_dual_fmac_f32 v108, v124, v108
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v14, v97, v14, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v16, v45, v16, v19
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v124, v67, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v44, v14, s2
	v_cndmask_b32_e64 v16, v19, v16, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v19, 0xbfb8aa3b, v3 :: v_dual_mul_f32 v44, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v140, -v66, v124, v67
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v30, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v32, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v124, v140, v108
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v30
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v32
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0x42800000, s13
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s13
	v_cndmask_b32_e64 v30, 0, 0x42800000, s12
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v3
	v_cndmask_b32_e64 v32, 0, 0x42800000, s14
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v17
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s12
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v14
	v_exp_f32_e32 v19, v19
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v16
	v_exp_f32_e32 v44, v44
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s14
	v_exp_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v32, v32
	v_ldexp_f32 v19, v19, v45
	v_ldexp_f32 v44, v44, v64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v24, v24, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v30, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v107, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v32, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v19, v19, v3
	v_div_scale_f32 v96, null, v44, v44, v17
	v_div_scale_f32 v48, vcc_lo, v3, v19, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v100, v45
	v_rcp_f32_e32 v114, v96
	v_div_scale_f32 v97, s13, v17, v44, v17
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v123, -v64, v107, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v65, s6, v8, v24, v8
	v_div_scale_f32 v94, null, v30, v30, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v116, -v45, v100, 1.0
	v_fma_f32 v130, -v96, v114, 1.0
	v_fmac_f32_e32 v107, v123, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v113, v94
	v_div_scale_f32 v98, null, v32, v32, v16
	v_fmac_f32_e32 v100, v116, v100
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v10, v89, v10, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v114, v130, v114 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v9
	v_dual_mul_f32 v123, v65, v107 :: v_dual_mul_f32 v116, v48, v100
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v21, v10, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v20
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v25
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v132, -v45, v116, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v10
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v21
	v_cndmask_b32_e64 v20, 0, 0x42800000, s2
	v_cndmask_b32_e64 v25, 0, 0x42800000, s5
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v26
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s1
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v4 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v26, 0, 0x42800000, s8
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s5
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v25, v25
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v116, v132, v100
	v_fma_f32 v129, -v94, v113, 1.0
	v_rcp_f32_e32 v115, v98
	v_fma_f32 v139, -v64, v123, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v45, v116, v48
	v_div_scale_f32 v95, s12, v14, v30, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v20, v20, v53
	v_ldexp_f32 v25, v25, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v53, s0, v2, v18, v2
	v_div_fmas_f32 v45, v45, v100, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v26, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v59, s3, v7, v23, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v56, null, v20, v20, v4
	v_dual_mul_f32 v120, v59, v104 :: v_dual_add_f32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v21, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v103, v56
	v_div_scale_f32 v57, s2, v4, v20, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v62, null, v25, v25, v9
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v63, s5, v9, v25, v9
	v_rcp_f32_e32 v106, v62
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v21, v21, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v49, null, v18, v18, v2
	v_fma_f32 v119, -v56, v103, 1.0
	v_div_scale_f32 v68, null, v26, v26, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v101, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v103, v119, v103
	v_fma_f32 v122, -v62, v106, 1.0
	v_rcp_f32_e32 v109, v68
	v_div_scale_f32 v54, null, v21, v21, v5
	v_div_scale_f32 v55, s1, v5, v21, v5
	v_mul_f32_e32 v119, v57, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v102, v54
	v_fma_f32 v117, -v49, v101, 1.0
	v_fmac_f32_e32 v106, v122, v106
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v135, -v56, v119, v57
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v125, -v68, v109, 1.0
	v_dual_fmac_f32 v101, v117, v101 :: v_dual_mul_f32 v122, v63, v106
	v_fma_f32 v136, -v58, v120, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v119, v135, v103
	v_fma_f32 v118, -v54, v102, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v117, v53, v101
	v_div_fixup_f32 v3, v45, v19, v3
	v_fma_f32 v138, -v62, v122, v63
	v_dual_fmac_f32 v109, v125, v109 :: v_dual_fmac_f32 v120, v136, v104
	v_dual_fmac_f32 v102, v118, v102 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v13
	v_fma_f32 v133, -v49, v117, v53
	v_div_scale_f32 v87, s8, v10, v26, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v118, v55, v102
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v130, v97, v114
	v_fmac_f32_e32 v117, v133, v101
	v_dual_fmac_f32 v113, v129, v113 :: v_dual_fmac_f32 v122, v138, v106
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, s9
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v134, -v54, v118, v55
	v_fma_f32 v48, -v49, v117, v53
	v_fma_f32 v53, -v56, v119, v57
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v125, v87, v109
	v_fmac_f32_e32 v123, v139, v107
	v_div_fmas_f32 v48, v48, v101, v117
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v29, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v118, v134, v102
	v_fma_f32 v56, -v62, v122, v63
	v_div_fixup_f32 v2, v48, v18, v2
	v_fma_f32 v131, -v98, v115, 1.0
	v_fma_f32 v141, -v68, v125, v87
	v_fma_f32 v49, -v54, v118, v55
	v_fma_f32 v54, -v58, v120, v59
	v_fma_f32 v57, -v64, v123, v65
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v35, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v29, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v60, null, v22, v22, v6
	v_div_fmas_f32 v49, v49, v102, v118
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v105, v60
	v_div_fmas_f32 v19, v53, v103, v119
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v146, -v96, v130, v97
	v_div_scale_f32 v88, null, v29, v29, v13
	v_div_scale_f32 v89, s9, v13, v29, v13
	v_div_fixup_f32 v4, v19, v20, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v110, v88
	v_fma_f32 v121, -v60, v105, 1.0
	v_div_fmas_f32 v18, v54, v104, v120
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v129, v95, v113 :: v_dual_fmac_f32 v130, v146, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v105, v121, v105 :: v_dual_mul_f32 v4, v52, v4
	v_div_scale_f32 v99, s14, v16, v32, v16
	v_fma_f32 v126, -v88, v110, 1.0
	v_fmac_f32_e32 v115, v131, v115
	v_div_fixup_f32 v7, v18, v23, v7
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v86.l, v3.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v125, v141, v109 :: v_dual_fmac_f32 v110, v126, v110
	v_fma_f32 v145, -v94, v129, v95
	v_fma_f32 v58, -v66, v124, v67
	v_mul_f32_e32 v131, v99, v115
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v39, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v126, v89, v110
	v_div_fixup_f32 v5, v49, v21, v5
	v_fma_f32 v62, -v92, v128, v93
	v_fma_f32 v147, -v98, v131, v99
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v85.l, v2.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v142, -v88, v126, v89
	v_mul_f32_e32 v121, v61, v105
	v_fma_f32 v64, -v96, v130, v97
	v_fmac_f32_e32 v131, v147, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v7, v51, v7 :: v_dual_fmac_f32 v126, v142, v110
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v137, -v60, v121, v61
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v83.l, v4.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v65, -v98, v131, v99
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v3, v3
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v121, v137, v105
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v82.l, v7.h
	v_cmp_o_f32_e64 s3, v4, v4
	v_cmp_o_f32_e64 s4, v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v60, v121, v61
	v_fma_f32 v60, -v88, v126, v89
	v_fma_f32 v61, -v90, v127, v91
	v_div_fmas_f32 v21, v55, v105, v121
	s_mov_b32 vcc_lo, s5
	v_div_fmas_f32 v19, v56, v106, v122
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v6, v21, v22, v6
	v_div_fmas_f32 v18, v57, v107, v123
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v129, v145, v113
	v_div_fmas_f32 v20, v58, v108, v124
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v8, v18, v24, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v86
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v59, -v68, v125, v87
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v41, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v19, v25, v9
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v50, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v63, -v94, v129, v95
	v_div_fmas_f32 v19, v59, v109, v125
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v11, v20, v27, v11
	v_div_fmas_f32 v21, v60, v110, v126
	s_mov_b32 vcc_lo, s10
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v20, 1, v85
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v22, v61, v111, v127
	s_mov_b32 vcc_lo, s11
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v47, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v19, v26, v10
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v46, v8
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v84.l, v5.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v23, v62, v112, v128
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v13, v21, v29, v13
	v_div_fmas_f32 v21, v63, v113, v129
	s_mov_b32 vcc_lo, s13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v19, 1, v84
	v_add3_u32 v3, v3, v18, 0x7fff
	v_mov_b16_e32 v81.l, v6.h
	v_and_b32_e32 v18, 1, v83
	v_add3_u32 v2, v2, v20, 0x7fff
	v_mov_b16_e32 v80.l, v9.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v22, v28, v12
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v42, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v22, v64, v114, v130
	s_mov_b32 vcc_lo, s14
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v43, v11
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v5, v5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v13, v40, v13 :: v_dual_and_b32 v20, 1, v82
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v5, v5, v19, 0x7fff
	v_mov_b16_e32 v79.l, v8.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v15, v23, v31, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v19, 1, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v23, v65, v115, v131
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s1
	v_mov_b16_e32 v77.l, v10.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v22, v44, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v2, 1, v80
	v_add3_u32 v4, v4, v18, 0x7fff
	v_mov_b16_e32 v78.l, v11.h
	v_cmp_o_f32_e64 s5, v6, v6
	v_cmp_o_f32_e64 s6, v9, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v14, v21, v30, v14
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v38, v12
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v79
	v_add3_u32 v6, v6, v19, 0x7fff
	v_mov_b16_e32 v76.l, v13.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v23, v32, v16
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v17, v33, v17
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v2, v9, v2, 0x7fff
	v_and_b32_e32 v9, 1, v77
	v_add3_u32 v7, v7, v20, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v4.h, s3
	v_and_b32_e32 v4, 1, v78
	v_cmp_o_f32_e64 s7, v8, v8
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s0
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v15, v37, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v74.l, v12.h
	v_add3_u32 v8, v8, v18, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v6.h, s5
	v_and_b32_e32 v6, 1, v76
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v16, v34, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v9, v10, v9, 0x7fff
	v_mov_b16_e32 v73.l, v17.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v14, v36, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s4
	v_cmp_eq_u32_e64 s4, 0, v70
	v_add3_u32 v4, v11, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s2
	v_cmp_o_f32_e64 s1, v13, v13
	v_mov_b16_e32 v75.l, v15.h
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s6
	v_and_b32_e32 v11, 1, v74
	v_cndmask_b16 v2.l, 0x7fff, v8.h, s7
	v_add3_u32 v6, v13, v6, 0x7fff
	v_mov_b16_e32 v69.l, v16.h
	v_cndmask_b16 v4.l, 0x7fff, v9.h, s0
	v_and_b32_e32 v9, 1, v73
	v_mov_b16_e32 v72.l, v14.h
	v_cndmask_b32_e64 v10, v7, v3, s4
	v_cndmask_b32_e64 v3, v3, v7, s4
	v_cndmask_b32_e64 v0, 0x1054, v0, s4
	v_cndmask_b32_e64 v7, 0x3276, v71, s4
	v_cmp_o_f32_e64 s2, v12, v12
	v_and_b32_e32 v8, 1, v75
	v_and_b32_e32 v13, 1, v72
	v_add3_u32 v11, v12, v11, 0x7fff
	v_cndmask_b32_e64 v12, v2, v5, s4
	v_cndmask_b32_e64 v2, v5, v2, s4
	v_cndmask_b16 v5.h, 0x7fff, v6.h, s1
	v_and_b32_e32 v6, 1, v69
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v7, v7, 8, v7
	v_cmp_o_f32_e64 s3, v15, v15
	v_cmp_o_f32_e64 s5, v14, v14
	v_cmp_o_f32_e64 s6, v17, v17
	v_cmp_o_f32_e64 s7, v16, v16
	v_add3_u32 v8, v15, v8, 0x7fff
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v11.h, s2
	v_add3_u32 v9, v17, v9, 0x7fff
	v_permlanex16_b32 v11, v2, s15, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v2, v16, v6, 0x7fff
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v6, 0x760076, v7
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s3
	v_cndmask_b16 v8.l, 0x7fff, v13.h, s5
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s6
	v_cndmask_b16 v7.l, 0x7fff, v2.h, s7
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v2, v6, 4, v6
	v_cndmask_b32_e64 v9, v8, v4, s4
	v_cndmask_b32_e64 v4, v4, v8, s4
	v_cndmask_b32_e64 v6, v5, v7, s4
	v_permlanex16_b32 v3, v3, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v0, 0x5040504, v0
	v_and_b32_e32 v13, 0x7060706, v2
	v_cndmask_b32_e64 v14, v7, v5, s4
	v_permlanex16_b32 v7, v4, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v6, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v3, v10, v0
	v_perm_b32 v3, v3, v10, v13
	v_perm_b32 v4, v11, v12, v0
	v_perm_b32 v5, v11, v12, v13
	v_perm_b32 v6, v7, v9, v0
	v_perm_b32 v7, v7, v9, v13
	v_perm_b32 v8, v15, v14, v0
	v_perm_b32 v9, v15, v14, v13
	s_clause 0x1
	buffer_store_b128 v[2:5], v1, s[24:27], 0 offen
	buffer_store_b128 v[6:9], v1, s[24:27], 0 offen offset:256
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 54
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 233
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 54
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20176
; TotalNumSgprs: 56
; NumVgprs: 233
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 56
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     56
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     233
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
