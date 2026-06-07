	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s6, s[0:1], 0x38
	v_mov_b32_e32 v225, v0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s2
	s_mov_b32 s52, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v44, 4, v225
	v_lshlrev_b32_e32 v1, 3, v225
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v43, 15, v225
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_or_b32_e32 v45, 16, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v65, 24, v1
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s26, 63
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
	s_lshr_b32 s11, s11, 26
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
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s10, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s7, s10
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_sub_i32 s2, s2, s5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s17, s7
	s_abs_i32 s5, s2
	s_cvt_f32_u32 s18, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s18
	v_readfirstlane_b32 s18, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v0, 2, v225
	s_mov_b32 s11, 0x31027000
	s_mov_b64 s[28:29], s[14:15]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_mov_b32 s39, s11
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_mul_lo_u32 v0, s6, v0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s10, s18
	s_sub_i32 s18, 0, s17
	s_mul_i32 s18, s18, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s10, s18
	s_xor_b32 s18, s2, s7
	s_add_i32 s4, s10, s4
	s_ashr_i32 s18, s18, 31
	s_mul_hi_u32 s4, s5, s4
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s4, s17
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_mov_b32 s38, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s5, s5, s19
	s_add_i32 s19, s4, 1
	s_sub_i32 s20, s5, s17
	s_cmp_ge_u32 s5, s17
	s_cselect_b32 s4, s19, s4
	s_cselect_b32 s5, s20, s5
	s_add_i32 s19, s4, 1
	s_cmp_ge_u32 s5, s17
	s_cselect_b32 s4, s19, s4
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s34, s27, 1
	.loc	1 312 26                        ; generate_amdgcn.py:312:26
	s_lshl_b32 s30, s3, 5
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_mul_lo_u32 v5, s34, v44
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s17, s6, 31
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s18
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v2, s30, v65
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s18, s3, s7
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v3, s30, v44
	v_or_b32_e32 v4, s30, v45
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s4, s17, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s18
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_lshl_add_u32 v47, v43, 4, v5
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s4, s4, 27
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s16
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s26, s3, 8
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s7, s17, s4
.Ltmp19:
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s6, v2
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s3, s6, v3
	v_cmp_gt_i32_e64 s4, s6, v4
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s17, 31
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_lshl_add_u32 v48, s27, 5, v47
	s_mul_i32 s5, s34, s30
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_mul_i32 s16, s33, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s18, s26, s5
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add3_u32 v66, v0, v65, s16
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_and_b32 s37, s37, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s4, s4, s2
	s_and_b32 vcc_lo, vcc_lo, s2
	s_and_b32 s5, s3, s2
	s_cmp_gt_i32 s17, 63
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v0, s18, v47
	v_add_nc_u32_e32 v2, s18, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s35, s30, 32
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v3, s30, v66
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v14, s35, v65
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v4, 0x80000000, v0, s5
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v0, s27, v0
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_lshl_b32 s16, s27, 6
	.loc	1 322 26 is_stmt 0              ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v5, 0x80000000, v2, s4
	.loc	1 328 43 is_stmt 1              ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v2, s27, v2
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v15, s35, v44
	v_or_b32_e32 v16, s35, v45
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s18, s18, s16
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s6, v14
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v23, s18, v47
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v22, s35, v66
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s4, s6, v15
	v_cmp_gt_i32_e64 s5, s6, v16
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v24, s18, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[38:39], v3, s[8:11], 0 offen
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v3, s27, v23
	v_add3_u32 v25, s18, s27, v48
	.loc	1 328 35 is_stmt 0              ; generate_amdgcn.py:328:35
	s_clause 0x1
	buffer_load_b128 v[14:17], v0, s[36:39], 0 offen
	buffer_load_b128 v[18:21], v2, s[36:39], 0 offen
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	v_cndmask_b32_e32 v0, 0x80000000, v22, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s3
	s_and_b32 s4, s5, s3
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e32 v2, 0x80000000, v23, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[6:9], v4, s[36:39], 0 offen
	buffer_load_b128 v[10:13], v5, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v24, s4
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v82, 4, v225
	v_cndmask_b32_e64 v5, 0x80000000, v25, s4
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[40:41], v0, s[8:11], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[22:25], v2, s[36:39], 0 offen
	buffer_load_b128 v[26:29], v4, s[36:39], 0 offen
	buffer_load_b128 v[30:33], v3, s[36:39], 0 offen
	buffer_load_b128 v[34:37], v5, s[36:39], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_bfe_i32 v0, v225, 4, 1
	v_and_b32_e32 v1, 0x778, v1
	v_and_b32_e32 v2, 16, v225
	v_lshlrev_b32_e32 v46, 5, v225
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v3, 16, v43
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v0, 0x90, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v4, 32, v43
	v_or_b32_e32 v5, 48, v43
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v42, 0, v82
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s17, 0x5f
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_xor_b32_e32 v83, v0, v1
	v_lshrrev_b32_e32 v1, 1, v225
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v0, 0, v83
	s_waitcnt vmcnt(9)
	ds_store_b64 v0, v[38:39] offset:32768
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(6)
	ds_store_b128 v42, v[6:9]
	s_waitcnt vmcnt(5)
	ds_store_b128 v42, v[10:13] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	ds_store_b128 v42, v[14:17] offset:16384
	ds_store_b128 v42, v[18:21] offset:20480
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v0, v[40:41] offset:34816
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v42, v[22:25] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v42, v[26:29] offset:12288
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(1)
	ds_store_b128 v42, v[30:33] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v42, v[34:37] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_and_or_b32 v230, 0x70, v1, v43
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_lshlrev_b32_e32 v33, 5, v225
	v_and_b32_e32 v0, 4, v225
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_or_b32_e32 v6, 0x780, v230
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v8, 0x160, v33
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_or_b32_e32 v231, 0x100, v230
	v_or_b32_e32 v244, 0x200, v230
	v_or_b32_e32 v229, 0x300, v230
	scratch_store_b32 off, v6, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x880, v230
	v_or_b32_e32 v217, 0x400, v230
	v_or_b32_e32 v142, 0x500, v230
	v_or_b32_e32 v201, 0x600, v230
	v_or_b32_e32 v203, 0x700, v230
	scratch_store_b32 off, v6, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x980, v230
	v_or_b32_e32 v205, 0x800, v230
	v_or_b32_e32 v208, 0x900, v230
	v_or_b32_e32 v210, 0xa00, v230
	v_or_b32_e32 v136, 0xb00, v230
	scratch_store_b32 off, v6, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xa80, v230
	v_or_b32_e32 v214, 0xc00, v230
	v_or_b32_e32 v218, 0xd00, v230
	v_or_b32_e32 v233, 0xe00, v230
	v_or_b32_e32 v240, 0xf00, v230
	scratch_store_b32 off, v6, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xb80, v230
	v_or_b32_e32 v242, 0x1000, v230
	v_or_b32_e32 v219, 0x1100, v230
	v_or_b32_e32 v216, 0x1200, v230
	v_or_b32_e32 v141, 0x1300, v230
	scratch_store_b32 off, v6, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xc80, v230
	v_or_b32_e32 v197, 0x1400, v230
	v_or_b32_e32 v202, 0x1500, v230
	v_or_b32_e32 v204, 0x1600, v230
	v_or_b32_e32 v207, 0x1700, v230
	scratch_store_b32 off, v6, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xd80, v230
	v_or_b32_e32 v209, 0x1800, v230
	v_or_b32_e32 v211, 0x1900, v230
	v_or_b32_e32 v213, 0x1a00, v230
	v_or_b32_e32 v228, 0x1b00, v230
	scratch_store_b32 off, v6, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xe80, v230
	v_or_b32_e32 v232, 0x1c00, v230
	v_or_b32_e32 v245, 0x1d00, v230
	v_or_b32_e32 v246, 0x1e00, v230
	v_or_b32_e32 v247, 0x1f00, v230
	scratch_store_b32 off, v6, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xf80, v230
	v_or_b32_e32 v248, 0x80, v230
	v_or_b32_e32 v235, 0x180, v230
	v_or_b32_e32 v7, 0x280, v230
	v_or_b32_e32 v249, 0x380, v230
	scratch_store_b32 off, v6, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1080, v230
	v_or_b32_e32 v250, 0x480, v230
	v_or_b32_e32 v251, 0x580, v230
	v_or_b32_e32 v252, 0x680, v230
	scratch_store_b32 off, v6, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1180, v230
	scratch_store_b32 off, v6, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1280, v230
	scratch_store_b32 off, v6, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1380, v230
	scratch_store_b32 off, v6, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1480, v230
	scratch_store_b32 off, v6, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1580, v230
	scratch_store_b32 off, v6, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1680, v230
	scratch_store_b32 off, v6, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1780, v230
	scratch_store_b32 off, v6, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1880, v230
	scratch_store_b32 off, v6, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1980, v230
	scratch_store_b32 off, v6, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1a80, v230
	scratch_store_b32 off, v6, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1b80, v230
	scratch_store_b32 off, v6, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1c80, v230
	scratch_store_b32 off, v6, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1d80, v230
	scratch_store_b32 off, v6, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1e80, v230
	scratch_store_b32 off, v6, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1f80, v230
	scratch_store_b32 off, v6, off offset:312 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr0
                                        ; implicit-def: $vgpr230
                                        ; implicit-def: $vgpr231
                                        ; implicit-def: $vgpr244
                                        ; implicit-def: $vgpr229
                                        ; implicit-def: $vgpr217
                                        ; implicit-def: $vgpr142
                                        ; implicit-def: $vgpr201
                                        ; implicit-def: $vgpr203
                                        ; implicit-def: $vgpr205
                                        ; implicit-def: $vgpr208
                                        ; implicit-def: $vgpr210
                                        ; implicit-def: $vgpr136
                                        ; implicit-def: $vgpr214
                                        ; implicit-def: $vgpr218
                                        ; implicit-def: $vgpr233
                                        ; implicit-def: $vgpr240
                                        ; implicit-def: $vgpr242
                                        ; implicit-def: $vgpr219
                                        ; implicit-def: $vgpr216
                                        ; implicit-def: $vgpr141
                                        ; implicit-def: $vgpr197
                                        ; implicit-def: $vgpr202
                                        ; implicit-def: $vgpr204
                                        ; implicit-def: $vgpr207
                                        ; implicit-def: $vgpr209
                                        ; implicit-def: $vgpr211
                                        ; implicit-def: $vgpr213
                                        ; implicit-def: $vgpr228
                                        ; implicit-def: $vgpr232
                                        ; implicit-def: $vgpr245
                                        ; implicit-def: $vgpr246
                                        ; implicit-def: $vgpr247
                                        ; implicit-def: $vgpr248
                                        ; implicit-def: $vgpr235
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr249
                                        ; implicit-def: $vgpr250
                                        ; implicit-def: $vgpr251
                                        ; implicit-def: $vgpr252
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
.LBB0_3:                                ; %Flow821
	s_load_b64 s[24:25], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v2
	v_or_b32_e32 v2, s33, v43
	v_or_b32_e32 v4, s33, v4
	s_ashr_i32 s48, s7, 5
	v_or_b32_e32 v3, s33, v3
	v_or_b32_e32 v5, s33, v5
	v_mul_lo_u32 v171, v2, s48
	v_mul_lo_u32 v2, v4, s48
	v_and_b32_e32 v6, 0xf0, v225
	v_mul_lo_u32 v104, v3, s48
	v_mul_lo_u32 v170, v5, s48
	v_or_b32_e32 v172, s26, v225
	v_lshlrev_b32_e32 v4, 1, v225
	v_lshlrev_b32_e32 v3, 2, v6
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:180
	scratch_store_b32 off, v6, off offset:340
	v_lshlrev_b32_e32 v2, 1, v6
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v43, off offset:324
	scratch_store_b32 off, v2, off offset:320
	scratch_store_b32 off, v3, off offset:484
	scratch_store_b32 off, v4, off offset:488
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v154, 0 :: v_dual_and_b32 v5, 0x160, v46
	v_bfe_i32 v0, v225, 2, 1
	v_and_or_b32 v230, 0x70, v1, v43
	v_dual_mov_b32 v106, 0 :: v_dual_and_b32 v1, 28, v4
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v148, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v0, 0x90, v0, v5
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v48, off offset:200
	scratch_store_b32 off, v230, off offset:184
	scratch_store_b32 off, v0, off offset:188
	scratch_store_b32 off, v46, off offset:492
	scratch_store_b32 off, v45, off offset:212
	v_or_b32_e32 v0, 0x100, v230
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v116, 0
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x200, v230
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v162, 0
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v230
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v198, 0
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v230
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v137, 0
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x500, v230
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v25, 0
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x600, v230
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v113, 0
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x700, v230
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v187, 0
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x800, v230
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v123, 0
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x900, v230
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v19, 0
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v230
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v157, 0
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb00, v230
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v107, 0
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v230
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v17, 0
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd00, v230
	v_mov_b32_e32 v108, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v253, 0
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v230
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v163, 0
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf00, v230
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v81, 0
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1000, v230
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v79, 0
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1100, v230
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v141, 0
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1200, v230
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v57, 0
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1300, v230
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v51, 0
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1400, v230
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v185, 0
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1500, v230
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v169, 0
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1600, v230
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v193, 0
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1700, v230
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v167, 0
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1800, v230
	v_mov_b32_e32 v50, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v145, 0
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1900, v230
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v177, 0
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a00, v230
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v189, 0
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b00, v230
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v39, 0
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c00, v230
	v_mov_b32_e32 v126, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v38, 0
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d00, v230
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_mov_b32 s16, 0
	s_max_i32 s14, s48, 3
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e00, v230
	s_add_i32 s5, s35, 32
	s_mov_b32 s7, 1
	s_and_b32 s41, s13, 0xffff
	s_mov_b32 s40, s12
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f00, v230
	s_and_b32 s45, s29, 0xffff
	s_mov_b32 s44, s28
	s_add_i32 s1, 0, 0x8000
	s_add_i32 s51, 0, 0x8800
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x80, v230
	s_add_i32 s50, 0, 0x2000
	s_add_i32 s15, 0, 0x4000
	s_add_i32 s49, 0, 0x6000
	s_add_i32 s14, s14, -3
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x180, v230
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x280, v230
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	scratch_store_b32 off, v0, off offset:752 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x380, v230
	s_mov_b32 s23, s16
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	s_mov_b32 s52, s16
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x480, v230
	s_mov_b32 s31, s16
	v_mov_b32_e32 v165, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v155, 0
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x580, v230
	v_mov_b32_e32 v143, 0
	scratch_store_b32 off, v47, off offset:204 ; 4-byte Folded Spill
	v_mov_b32_e32 v47, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v44, off offset:208
	scratch_store_b32 off, v0, off offset:468
	v_or_b32_e32 v0, 0x680, v230
	v_mov_b32_e32 v44, 0
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x780, v230
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x880, v230
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x980, v230
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa80, v230
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb80, v230
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc80, v230
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd80, v230
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe80, v230
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf80, v230
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1080, v230
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1180, v230
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1280, v230
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1380, v230
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1480, v230
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1580, v230
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1680, v230
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1780, v230
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1880, v230
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1980, v230
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a80, v230
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b80, v230
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c80, v230
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d80, v230
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e80, v230
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f80, v230
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_and_b32_e32 v0, 32, v46
	v_mov_b32_e32 v46, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v0, 0, v3, v0
	v_add_nc_u32_e32 v0, v0, v1
	v_mov_b32_e32 v1, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:192
	scratch_store_b32 off, v225, off offset:476
	v_add_nc_u32_e32 v0, 0, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:196
	scratch_store_b32 off, v5, off offset:480
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s4, s31, 5
	s_mov_b32 s53, s30
	s_mov_b32 s30, s35
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s35, s5, s4
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v60, off offset:60
	scratch_store_b32 off, v223, off offset:152
	scratch_store_b32 off, v57, off offset:48
	scratch_store_b32 off, v130, off offset:148
	scratch_store_b32 off, v59, off offset:56
	scratch_store_b32 off, v131, off offset:144
	scratch_store_b32 off, v200, off offset:140
	scratch_store_b32 off, v58, off offset:52
	scratch_store_b32 off, v129, off offset:136
	scratch_store_b32 off, v42, off offset:20
	scratch_store_b32 off, v124, off offset:132
	scratch_store_b32 off, v191, off offset:128
	scratch_store_b32 off, v41, off
	scratch_store_b32 off, v44, off offset:28
	scratch_store_b32 off, v182, off offset:124
	scratch_store_b32 off, v43, off offset:24
	scratch_store_b32 off, v192, off offset:120
	scratch_store_b32 off, v52, off offset:44
	scratch_store_b32 off, v162, off offset:116
	scratch_store_b32 off, v161, off offset:112
	scratch_store_b32 off, v160, off offset:108
	scratch_store_b32 off, v187, off offset:104
	scratch_store_b32 off, v188, off offset:100
	scratch_store_b32 off, v186, off offset:96
	scratch_store_b32 off, v51, off offset:40
	scratch_store_b32 off, v49, off offset:32
	scratch_store_b32 off, v50, off offset:36
	scratch_store_b32 off, v26, off offset:92
	scratch_store_b32 off, v25, off offset:88
	scratch_store_b32 off, v24, off offset:84
	scratch_store_b32 off, v23, off offset:80
	scratch_store_b32 off, v22, off offset:76
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v21, off offset:72
	scratch_store_b32 off, v20, off offset:68
	scratch_store_b32 off, v19, off offset:64
	scratch_store_b32 off, v18, off offset:16
	scratch_store_b32 off, v17, off offset:12
	scratch_store_b32 off, v16, off offset:8
	scratch_store_b32 off, v1, off offset:4
	v_or_b32_e32 v0, s35, v65
	v_mov_b32_e32 v162, v158
	v_mov_b32_e32 v158, v154
	v_dual_mov_b32 v154, v79 :: v_dual_mov_b32 v197, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s6, v0
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v0, s35, v66
	v_dual_mov_b32 v182, v166 :: v_dual_mov_b32 v161, v212
	v_mov_b32_e32 v195, v175
	v_mov_b32_e32 v166, v147
	.loc	1 318 26 is_stmt 0              ; generate_amdgcn.py:318:26
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_dual_mov_b32 v144, v199 :: v_dual_mov_b32 v211, v109
	v_dual_mov_b32 v199, v152 :: v_dual_mov_b32 v152, v77
	v_mov_b32_e32 v207, v108
	buffer_load_b64 v[0:1], v0, s[8:11], 0 offen
	v_dual_mov_b32 v146, v157 :: v_dual_add_nc_u32 v67, s15, v230
	v_dual_mov_b32 v127, v163 :: v_dual_mov_b32 v160, v156
	v_dual_mov_b32 v163, v159 :: v_dual_mov_b32 v156, v81
	v_mov_b32_e32 v159, v155
	v_dual_mov_b32 v155, v80 :: v_dual_mov_b32 v136, v83
	v_mov_b32_e32 v131, v82
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v75, s23 :: v_dual_mov_b32 v70, s18
	v_dual_mov_b32 v74, s22 :: v_dual_mov_b32 v73, s21
	v_mov_b32_e32 v68, s16
	v_dual_mov_b32 v72, s20 :: v_dual_mov_b32 v71, s19
	v_dual_mov_b32 v228, v198 :: v_dual_mov_b32 v69, s17
	v_mov_b32_e32 v198, v61
	v_dual_mov_b32 v176, v169 :: v_dual_mov_b32 v147, v206
	v_mov_b32_e32 v157, v143
	v_dual_mov_b32 v183, v149 :: v_dual_mov_b32 v130, v47
	v_dual_mov_b32 v149, v62 :: v_dual_mov_b32 v188, v39
	v_dual_mov_b32 v129, v46 :: v_dual_mov_b32 v124, v40
	v_mov_b32_e32 v191, v56
	v_dual_mov_b32 v223, v38 :: v_dual_mov_b32 v200, v105
	v_dual_mov_b32 v143, v128 :: v_dual_mov_b32 v206, v107
	v_dual_mov_b32 v128, v173 :: v_dual_mov_b32 v173, v172
	v_dual_mov_b32 v186, v114 :: v_dual_mov_b32 v169, v104
	v_dual_mov_b32 v192, v113 :: v_dual_mov_b32 v201, v106
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v187, v115 :: v_dual_mov_b32 v172, v173
	v_mov_b32_e32 v213, v112
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s15, s53, 31
	v_mov_b32_e32 v173, v128
	s_lshr_b32 s15, s15, 27
	v_mov_b32_e32 v128, v143
	s_add_i32 s53, s53, s15
	v_mov_b32_e32 v143, v157
	s_ashr_i32 s53, s53, 5
	v_mov_b32_e32 v157, v146
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s15, s53, s34
	v_mov_b32_e32 v175, v145
	v_mov_b32_e32 v145, v153
	v_mov_b32_e32 v153, v78
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[0:1], off offset:156 ; 8-byte Folded Spill
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v0, s52, v230
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v1, v0 offset:3328
	ds_load_u8 v2, v0 offset:3072
	scratch_load_b32 v121, off, off offset:188 ; 4-byte Folded Reload
	v_mov_b32_e32 v212, v110
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s52, s35, s34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s52, s52, s26
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	s_add_i32 s54, s52, s27
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s53, s48
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v0 offset:3840
	ds_load_u8 v3, v0 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v0 offset:2304
	ds_load_u8 v4, v0 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v0 offset:2816
	ds_load_u8 v5, v0 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v4, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v1
	ds_load_u8 v1, v0 offset:1280
	ds_load_u8 v2, v0 offset:1024
	v_lshl_or_b32 v3, v5, 16, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v0 offset:1792
	ds_load_u8 v5, v0 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v5, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v0 offset:256
	ds_load_u8 v5, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v5, v1, 0xc0c0004
	ds_load_u8 v5, v0 offset:768
	ds_load_u8 v6, v0 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v0 offset:3456
	ds_load_u8 v6, v0 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v0 offset:3968
	ds_load_u8 v7, v0 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v0 offset:2432
	ds_load_u8 v8, v0 offset:2176
	v_lshl_or_b32 v79, v6, 16, v5
	ds_load_u8 v5, v0 offset:1408
	ds_load_u8 v6, v0 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v0 offset:2944
	ds_load_u8 v9, v0 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v78, v8, 16, v7
	ds_load_u8 v6, v0 offset:1920
	ds_load_u8 v7, v0 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v77, v6, 16, v5
	ds_load_u8 v5, v0 offset:384
	ds_load_u8 v6, v0 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v0 offset:896
	ds_load_u8 v7, v0 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v6, 16, v5
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v5, v67 offset:3328
	ds_load_u8 v6, v67 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v67 offset:3840
	ds_load_u8 v7, v67 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v67 offset:2304
	ds_load_u8 v8, v67 offset:2048
	v_lshl_or_b32 v111, v6, 16, v5
	ds_load_u8 v5, v67 offset:1280
	ds_load_u8 v6, v67 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v67 offset:2816
	ds_load_u8 v9, v67 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v110, v8, 16, v7
	ds_load_u8 v6, v67 offset:1792
	ds_load_u8 v7, v67 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v109, v6, 16, v5
	ds_load_u8 v5, v67 offset:256
	ds_load_u8 v6, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v67 offset:768
	ds_load_u8 v7, v67 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v6, 16, v5
	ds_load_u8 v5, v67 offset:3456
	ds_load_u8 v6, v67 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v67 offset:3968
	ds_load_u8 v7, v67 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v67 offset:2432
	ds_load_u8 v8, v67 offset:2176
	v_lshl_or_b32 v120, v6, 16, v5
	ds_load_u8 v5, v67 offset:1408
	ds_load_u8 v6, v67 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v67 offset:2944
	ds_load_u8 v9, v67 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v119, v8, 16, v7
	ds_load_u8 v6, v67 offset:1920
	ds_load_u8 v7, v67 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v118, v6, 16, v5
	ds_load_u8 v5, v67 offset:384
	ds_load_u8 v6, v67 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v67 offset:896
	ds_load_u8 v7, v67 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v6, 16, v5
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s1, v121
	ds_load_b128 v[80:83], v5
	ds_load_b128 v[84:87], v5 offset:512
	ds_load_b128 v[100:103], v5 offset:1024
	ds_load_b128 v[202:205], v5 offset:1536
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[1:4], v[80:83], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[1:4], v[84:87], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[1:4], v[100:103], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[1:4], v[202:205], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[76:79], v[80:83], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[76:79], v[84:87], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[76:79], v[100:103], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[76:79], v[202:205], v[68:75] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[214:221], v[108:111], v[80:83], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[230:237], v[117:120], v[80:83], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[238:245], v[108:111], v[84:87], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[117:120], v[84:87], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[108:111], v[100:103], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[117:120], v[100:103], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[108:111], v[202:205], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[117:120], v[202:205], v[68:75] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v68, v0 offset:7424
	ds_load_u8 v69, v0 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v0 offset:7936
	ds_load_u8 v70, v0 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v0 offset:6400
	ds_load_u8 v71, v0 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v0 offset:6912
	ds_load_u8 v72, v0 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v72, v71, 0xc0c0004
	v_lshl_or_b32 v71, v69, 16, v68
	ds_load_u8 v68, v0 offset:5376
	ds_load_u8 v69, v0 offset:5120
	v_lshl_or_b32 v70, v72, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v0 offset:5888
	ds_load_u8 v72, v0 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v72, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v68
	ds_load_u8 v68, v0 offset:4352
	ds_load_u8 v72, v0 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v72, v68, 0xc0c0004
	ds_load_u8 v72, v0 offset:4864
	ds_load_u8 v73, v0 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v68, v72, 16, v68
	v_xor_b32_e32 v72, 16, v121
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v121, s1, v72
	ds_load_b128 v[72:75], v121
	ds_load_b128 v[117:120], v121 offset:512
	ds_load_b128 v[202:205], v121 offset:1024
	ds_load_b128 v[224:227], v121 offset:1536
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[68:71], v[72:75], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[68:71], v[117:120], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[68:71], v[202:205], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[68:71], v[224:227], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v68, v0 offset:7552
	ds_load_u8 v69, v0 offset:7296
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v0 offset:8064
	ds_load_u8 v70, v0 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v0 offset:6528
	ds_load_u8 v71, v0 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v0 offset:7040
	ds_load_u8 v121, v0 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v121, v71, 0xc0c0004
	v_lshl_or_b32 v71, v69, 16, v68
	ds_load_u8 v68, v0 offset:5504
	ds_load_u8 v69, v0 offset:5248
	v_lshl_or_b32 v70, v121, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v0 offset:6016
	ds_load_u8 v121, v0 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v121, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v68
	ds_load_u8 v68, v0 offset:4480
	ds_load_u8 v121, v0 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v121, v68, 0xc0c0004
	ds_load_u8 v121, v0 offset:4992
	ds_load_u8 v0, v0 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v68, v0, 16, v68
	v_wmma_i32_16x16x16_iu8 v[49:56], v[68:71], v[72:75], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[68:71], v[117:120], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[68:71], v[202:205], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[68:71], v[224:227], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v0, v67 offset:7424
	ds_load_u8 v68, v67 offset:7168
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v68, v0, 0xc0c0004
	ds_load_u8 v68, v67 offset:7936
	ds_load_u8 v69, v67 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v67 offset:6400
	ds_load_u8 v70, v67 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v67 offset:6912
	ds_load_u8 v71, v67 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	v_lshl_or_b32 v71, v68, 16, v0
	ds_load_u8 v0, v67 offset:5376
	ds_load_u8 v68, v67 offset:5120
	v_lshl_or_b32 v70, v70, 16, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v68, v0, 0xc0c0004
	ds_load_u8 v68, v67 offset:5888
	ds_load_u8 v69, v67 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v68, 16, v0
	ds_load_u8 v0, v67 offset:4352
	ds_load_u8 v68, v67 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v68, v0, 0xc0c0004
	ds_load_u8 v68, v67 offset:4864
	ds_load_u8 v121, v67 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v121, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v68, 16, v0
	ds_load_u8 v0, v67 offset:7552
	ds_load_u8 v121, v67 offset:7296
	v_wmma_i32_16x16x16_iu8 v[100:107], v[68:71], v[224:227], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[238:245], v[68:71], v[117:120], v[238:245] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[68:71], v[202:205], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[214:221], v[68:71], v[72:75], v[214:221] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v69, v86
	v_cvt_f32_i32_e32 v68, v87
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v86, v18
	v_cvt_f32_i32_e32 v87, v19
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v70, v85
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v85, v17
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v71, v84
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v84, v32
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v121, v0, 0xc0c0004
	ds_load_u8 v121, v67 offset:8064
	ds_load_u8 v208, v67 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v208, v121, 0xc0c0004
	ds_load_u8 v208, v67 offset:6528
	ds_load_u8 v209, v67 offset:6272
	v_lshl_or_b32 v249, v121, 16, v0
	ds_load_u8 v0, v67 offset:5504
	ds_load_u8 v121, v67 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v208, v209, v208, 0xc0c0004
	ds_load_u8 v209, v67 offset:7040
	ds_load_u8 v210, v67 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v121, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v209, v210, v209, 0xc0c0004
	v_cvt_f32_i32_e32 v210, v240
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v248, v209, 16, v208
	ds_load_u8 v121, v67 offset:6016
	ds_load_u8 v208, v67 offset:5760
	v_cvt_f32_i32_e32 v209, v216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v208, v121, 0xc0c0004
	v_cvt_f32_i32_e32 v208, v239
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v247, v121, 16, v0
	ds_load_u8 v0, v67 offset:4480
	ds_load_u8 v121, v67 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v121, v0, 0xc0c0004
	ds_load_u8 v121, v67 offset:4992
	ds_load_u8 v67, v67 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v67, v121, 0xc0c0004
	v_cvt_f32_i32_e32 v121, v241
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v246, v67, 16, v0
	v_cvt_f32_i32_e32 v0, v214
	v_cvt_f32_i32_e32 v214, v221
	v_wmma_i32_16x16x16_iu8 v[92:99], v[246:249], v[202:205], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[246:249], v[224:227], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[246:249], v[117:120], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[230:237], v[246:249], v[72:75], v[230:237] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v120, v104
	v_cvt_f32_i32_e32 v226, v97
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v97, v1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	scratch_load_b32 v1, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v227, v99
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v99, v3
	scratch_load_b32 v3, off, off offset:204 ; 4-byte Folded Reload
	v_mov_b32_e32 v104, v169
	scratch_load_b32 v169, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v249, v108
	v_mov_b32_e32 v108, v207
	scratch_load_b32 v207, off, off offset:192 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v203, v238
	v_cvt_f32_i32_e32 v238, v76
	v_cvt_f32_i32_e32 v76, v100
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v100, v4
	scratch_load_b32 v4, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v67, v234
	v_cvt_f32_i32_e32 v216, v232
	v_cvt_f32_i32_e32 v232, v78
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v78, v58
	v_cvt_f32_i32_e32 v58, v52
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	scratch_store_b32 off, v67, off offset:164 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v235
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v52, v53
	v_cvt_f32_i32_e32 v53, v41
	v_cvt_f32_i32_e32 v41, v34
	v_cvt_f32_i32_e32 v34, v37
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	scratch_store_b32 off, v67, off offset:172 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v236
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v37, v25
	v_cvt_f32_i32_e32 v25, v21
	v_cvt_f32_i32_e32 v21, v22
	v_cvt_f32_i32_e32 v22, v24
	v_cvt_f32_i32_e32 v24, v6
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v6, v170, s53, 1
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	scratch_store_b32 off, v67, off offset:168 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v237
	v_cvt_f32_i32_e32 v224, v98
	v_cvt_f32_i32_e32 v239, v113
	v_mov_b32_e32 v113, v192
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v98, v2
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	scratch_store_b32 off, v67, off offset:176 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v89
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v89, v9
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v248, v218
	v_cvt_f32_i32_e32 v218, v80
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v80, v60
	v_cvt_f32_i32_e32 v60, v49
	v_cvt_f32_i32_e32 v49, v54
	v_cvt_f32_i32_e32 v54, v42
	v_cvt_f32_i32_e32 v42, v33
	v_cvt_f32_i32_e32 v33, v38
	v_cvt_f32_i32_e32 v38, v26
	v_cvt_f32_i32_e32 v26, v5
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v237, v244
	v_cvt_f32_i32_e32 v244, v93
	v_cvt_f32_i32_e32 v73, v102
	v_cvt_f32_i32_e32 v117, v107
	v_mov_b32_e32 v107, v206
	v_cvt_f32_i32_e32 v102, v110
	v_mov_b32_e32 v110, v212
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v93, v13
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v240, v115
	v_cvt_f32_i32_e32 v74, v88
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v88, v20
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v202, v215
	v_cvt_f32_i32_e32 v204, v217
	v_cvt_f32_i32_e32 v215, v231
	v_cvt_f32_i32_e32 v225, v233
	v_cvt_f32_i32_e32 v236, v242
	v_cvt_f32_i32_e32 v234, v243
	v_cvt_f32_i32_e32 v235, v245
	v_cvt_f32_i32_e32 v233, v77
	v_cvt_f32_i32_e32 v231, v79
	v_cvt_f32_i32_e32 v205, v90
	v_cvt_f32_i32_e32 v242, v91
	v_cvt_f32_i32_e32 v245, v92
	v_cvt_f32_i32_e32 v243, v94
	v_cvt_f32_i32_e32 v241, v95
	v_cvt_f32_i32_e32 v217, v96
	v_cvt_f32_i32_e32 v72, v103
	v_cvt_f32_i32_e32 v103, v109
	v_mov_b32_e32 v109, v211
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v77, v57
	v_cvt_f32_i32_e32 v79, v59
	v_cvt_f32_i32_e32 v57, v50
	v_cvt_f32_i32_e32 v59, v51
	v_cvt_f32_i32_e32 v51, v55
	v_cvt_f32_i32_e32 v50, v56
	v_cvt_f32_i32_e32 v55, v43
	v_cvt_f32_i32_e32 v56, v44
	v_cvt_f32_i32_e32 v44, v35
	v_cvt_f32_i32_e32 v43, v36
	v_cvt_f32_i32_e32 v36, v39
	v_cvt_f32_i32_e32 v35, v40
	v_cvt_f32_i32_e32 v39, v27
	v_cvt_f32_i32_e32 v40, v28
	v_cvt_f32_i32_e32 v90, v10
	v_cvt_f32_i32_e32 v91, v11
	v_cvt_f32_i32_e32 v92, v12
	v_cvt_f32_i32_e32 v94, v14
	v_cvt_f32_i32_e32 v95, v15
	v_cvt_f32_i32_e32 v96, v16
	v_cvt_f32_i32_e32 v28, v7
	v_cvt_f32_i32_e32 v27, v8
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v247, v219
	v_cvt_f32_i32_e32 v246, v220
	v_cvt_f32_i32_e32 v220, v81
	v_cvt_f32_i32_e32 v219, v82
	v_cvt_f32_i32_e32 v221, v83
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v81, v29
	v_cvt_f32_i32_e32 v82, v30
	v_cvt_f32_i32_e32 v83, v31
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v75, v101
	v_cvt_f32_i32_e32 v119, v105
	v_mov_b32_e32 v105, v200
	v_cvt_f32_i32_e32 v101, v111
	v_cvt_f32_i32_e32 v111, v112
	v_mov_b32_e32 v112, v213
	v_cvt_f32_i32_e32 v118, v106
	v_mov_b32_e32 v106, v201
	v_cvt_f32_i32_e32 v230, v230
	v_cvt_f32_i32_e32 v201, v114
	v_mov_b32_e32 v114, v186
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_mov_b32_e32 v212, v161
	v_mov_b32_e32 v206, v147
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v1, s35, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s1, s6, v1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	scratch_load_b32 v1, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s52, v4
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s35, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s4, s6, v1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v1, v172, s15, 1
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v5, 0x80000000, v2, s4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v2, v171, s53, 1
	v_mov_b32_e32 v115, v187
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v1, v1, s[44:47], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v1, 16, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v207, v1 offset:36864
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v1, s52, v3
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v3, s54, v3
	s_mov_b32 s52, s50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v9, 0x80000000, v3, s1
	.loc	1 328 43 is_stmt 0              ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v3, s54, v4
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v4, v169, s53, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s7, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_cmp_lt_i32 s1, 2
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v13, 0x80000000, v3, s4
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v3, v104, s53, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s7, s1, 0
	s_add_i32 s53, s31, 1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_lshl_b32 s1, s7, 11
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x3
	buffer_load_u16 v2, v2, s[40:43], 0 offen
	buffer_load_u16 v18, v3, s[40:43], 0 offen
	buffer_load_u16 v19, v4, s[40:43], 0 offen
	buffer_load_u16 v20, v6, s[40:43], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_add_i32 s4, s1, 0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_lshl_b32 s1, s7, 13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s50, s1, 0
	s_mov_b32 s1, s51
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_add_i32 s51, s4, 0x8000
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v17, 16, v2
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[36:39], 0 offen
	buffer_load_b128 v[5:8], v5, s[36:39], 0 offen
	buffer_load_b128 v[9:12], v9, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v13, s[36:39], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v211, off, off offset:196 ; 4-byte Folded Reload
	v_mul_f32_e32 v77, v17, v77
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v19, 16, v19
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v37, v19, v37 :: v_dual_lshlrev_b32 v20, 16, v20
	v_mul_f32_e32 v53, v18, v53
	v_mul_f32_e32 v34, v18, v34
	v_mul_f32_e32 v33, v18, v33
	s_waitcnt vmcnt(0)
	ds_load_b128 v[29:32], v211 offset:36864
	v_mov_b32_e32 v147, v166
	v_dual_mov_b32 v166, v182 :: v_dual_mov_b32 v169, v176
	v_mov_b32_e32 v176, v197
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v250, v77, v29
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v77, v17, v78
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v254, v53, v29 :: v_dual_mul_f32 v53, v18, v54
	v_mov_b32_e32 v78, v153
	v_mov_b32_e32 v153, v145
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v229, v77, v30
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v77, v17, v79
	v_mov_b32_e32 v79, v154
	v_mov_b32_e32 v154, v158
	v_mov_b32_e32 v158, v162
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v252, v53, v30
	v_fmac_f32_e32 v253, v77, v31
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v77, v17, v80
	v_mul_f32_e32 v53, v18, v55
	v_mov_b32_e32 v145, v175
	v_dual_mov_b32 v175, v195 :: v_dual_fmac_f32 v166, v37, v29
	v_mul_f32_e32 v37, v19, v38
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v251, v77, v32
	v_dual_mov_b32 v77, v152 :: v_dual_mov_b32 v152, v199
	v_mov_b32_e32 v199, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v175, v37, v30
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v19, v39
	v_mov_b32_e32 v80, v155
	v_dual_mov_b32 v155, v159 :: v_dual_fmac_f32 v176, v53, v31
	v_mul_f32_e32 v53, v18, v56
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v199, v37, v31 :: v_dual_mul_f32 v0, v0, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v19, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v56, v191 :: v_dual_fmac_f32 v255, v53, v32
	v_mov_b32_e32 v38, v223
	v_dual_mov_b32 v40, v124 :: v_dual_fmac_f32 v169, v37, v32
	v_mul_f32_e32 v37, v20, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v147, v37, v29
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v29, v20, v90
	v_mul_f32_e32 v37, v17, v61
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v145, v29, v30
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v29, v20, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v181, v29, v31
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v29, v20, v92
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v189, v29, v32
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[29:32], v211 offset:36880
	v_mov_b32_e32 v159, v163
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v163, v127 :: v_dual_fmac_f32 v128, v37, v29
	v_mul_f32_e32 v37, v17, v62
	v_mov_b32_e32 v62, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v174, v37, v30
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v17, v63
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v163, v37, v31
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v17, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v173, v37, v32
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v18, v45
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v142, v37, v29 :: v_dual_mul_f32 v37, v18, v46
	v_mov_b32_e32 v46, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v206, v37, v30 :: v_dual_mul_f32 v37, v18, v47
	v_dual_fmac_f32 v212, v37, v31 :: v_dual_mul_f32 v37, v18, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v141, v37, v32
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v19, v81
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v180, v37, v29 :: v_dual_mul_f32 v37, v19, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v82, v131 :: v_dual_fmac_f32 v185, v37, v30
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v19, v83
	v_dual_mov_b32 v39, v188 :: v_dual_fmac_f32 v178, v37, v31
	v_mul_f32_e32 v37, v19, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v179, v37, v32
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v20, v93
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v125, v37, v29
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v29, v20, v94
	v_mul_f32_e32 v37, v17, v60
	scratch_load_b32 v60, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v177, v29, v30
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v29, v20, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v164, v29, v31 :: v_dual_mul_f32 v29, v20, v96
	v_fmac_f32_e32 v168, v29, v32
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[29:32], v211 offset:37376
	v_mov_b32_e32 v61, v198
	v_mov_b32_e32 v81, v156
	v_dual_mov_b32 v198, v228 :: v_dual_mul_f32 v21, v19, v21
	v_dual_mov_b32 v156, v160 :: v_dual_mul_f32 v25, v19, v25
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v80, v37, v29
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v17, v57
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v81, v37, v30
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v17, v59
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v59, off, off offset:56
	scratch_load_b32 v131, off, off offset:144
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v78, v37, v31
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v17, v58
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v58, off, off offset:52
	scratch_load_b32 v129, off, off offset:136
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v79, v37, v32
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v18, v42
	v_mov_b32_e32 v149, v183
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v42, off, off offset:20
	scratch_load_b32 v223, off, off offset:152
	scratch_load_b32 v200, off, off offset:140
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v60, v37, v29
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v18, v41
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off
	scratch_load_b32 v124, off, off offset:132
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v61, v37, v30
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v18, v44
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v44, off, off offset:28
	scratch_load_b32 v191, off, off offset:128
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v58, v37, v31
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v18, v43
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:24
	scratch_load_b32 v182, off, off offset:124
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v59, v37, v32
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v19, v85
	v_mov_b32_e32 v47, v130
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:48
	scratch_load_b32 v130, off, off offset:148
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v190, v37, v29 :: v_dual_mul_f32 v37, v19, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v56, v37, v30 :: v_dual_mul_f32 v37, v19, v87
	v_dual_fmac_f32 v222, v37, v31 :: v_dual_mul_f32 v37, v19, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v167, v37, v32
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v20, v97
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v83, v136 :: v_dual_fmac_f32 v44, v37, v29
	v_mul_f32_e32 v29, v20, v98
	v_mul_f32_e32 v37, v17, v52
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v52, off, off offset:44
	scratch_load_b32 v192, off, off offset:120
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v126, v29, v30 :: v_dual_mul_f32 v29, v20, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v42, v29, v31 :: v_dual_mul_f32 v29, v20, v100
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v43, v29, v32
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[29:32], v211 offset:37392
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v194, v37, v29
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v17, v49
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:32
	scratch_load_b32 v186, off, off offset:96
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v57, v33, v30
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v33, v18, v36
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v193, v25, v29
	v_fmac_f32_e32 v77, v37, v30
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v17, v51
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v51, off, off offset:40
	scratch_load_b32 v187, off, off offset:104
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v62, v37, v31
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v17, v50
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v50, off, off offset:36
	scratch_load_b32 v162, off, off offset:116
	scratch_load_b32 v161, off, off offset:112
	scratch_load_b32 v160, off, off offset:108
	scratch_load_b32 v188, off, off offset:100
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v184, v37, v32
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v49, v21, v30
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v19, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v46, v21, v31 :: v_dual_mul_f32 v21, v19, v22
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v50, v33, v31
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v33, v18, v35
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v47, v21, v32
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v20, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v51, v33, v32 :: v_dual_fmac_f32 v52, v34, v29
	v_dual_fmac_f32 v40, v21, v29 :: v_dual_mul_f32 v21, v20, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v21, v30
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v20, v28
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v38, v21, v31
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v20, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v39, v21, v32
	v_add_nc_u32_e32 v21, s27, v172
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v21, v21, s15, 1
	s_mov_b32 s15, s49
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_add_i32 s49, s50, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s31, s14
	s_mov_b32 s31, s53
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	buffer_load_u16 v21, v21, s[44:47], 0 offen
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_store_b32 v207, v21 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v211 offset:36864
	ds_load_b128 v[25:28], v211 offset:36880
	ds_load_b128 v[29:32], v211 offset:37376
	ds_load_b128 v[33:36], v211 offset:37392
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	scratch_load_b64 v[84:85], off, off offset:156 ; 8-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(3)
	v_fmac_f32_e32 v165, v0, v21
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v202, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v155, v0, v22 :: v_dual_mul_f32 v0, v209, v17
	v_fmac_f32_e32 v143, v0, v23
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v204, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v154, v0, v24
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v203, v18
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v162, v0, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v208, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v153, v0, v22
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v210, v18
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v160, v0, v23
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v121, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v161, v0, v24 :: v_dual_mul_f32 v0, v71, v19
	v_fmac_f32_e32 v112, v0, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v70, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v113, v0, v22 :: v_dual_mul_f32 v0, v69, v19
	v_fmac_f32_e32 v223, v0, v23
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v68, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v196, v0, v24
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v76, v20
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v158, v0, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v75, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v159, v0, v22 :: v_dual_mul_f32 v0, v73, v20
	v_fmac_f32_e32 v156, v0, v23
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v72, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v157, v0, v24
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v248, v17
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(2)
	v_fmac_f32_e32 v105, v0, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v247, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v106, v0, v26
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v246, v17
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v148, v0, v27
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v214, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v152, v0, v28
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v236, v18
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v129, v0, v25 :: v_dual_mul_f32 v0, v234, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v198, v0, v26
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v237, v18
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v192, v0, v27
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v235, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v130, v0, v28
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v74, v19
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v188, v0, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v67, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v187, v0, v26 :: v_dual_mul_f32 v0, v205, v19
	v_fmac_f32_e32 v139, v0, v27
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v242, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v140, v0, v28
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v120, v20
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v109, v0, v25 :: v_dual_mul_f32 v0, v119, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v110, v0, v26
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v118, v20
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v107, v0, v27 :: v_dual_mul_f32 v0, v117, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v108, v0, v28
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v230, v17
	scratch_load_b32 v230, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v150, v0, v29
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v215, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v151, v0, v30
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v216, v17
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v131, v0, v31 :: v_dual_mul_f32 v0, v225, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v149, v0, v32 :: v_dual_mul_f32 v0, v238, v18
	v_fmac_f32_e32 v186, v0, v29
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v233, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v137, v0, v30
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v232, v18
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v134, v0, v31
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v231, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v135, v0, v32 :: v_dual_mul_f32 v0, v245, v19
	v_fmac_f32_e32 v182, v0, v29
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v244, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v132, v0, v30
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v243, v19
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v123, v0, v31
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v241, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v124, v0, v32
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v249, v20
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v122, v0, v29
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v0, v103, v20 :: v_dual_add_nc_u32 v37, s4, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v138, v0, v30
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v102, v20
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v114, v0, v31
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v101, v20
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v115, v0, v32
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v0, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v37, v[84:85] offset:32768
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v0, v17 :: v_dual_add_nc_u32 v37, s50, v82
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	ds_store_b128 v37, v[1:4]
	ds_store_b128 v37, v[5:8] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	ds_store_b128 v37, v[9:12] offset:16384
	ds_store_b128 v37, v[13:16] offset:20480
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:164
	scratch_load_b32 v2, off, off offset:176
	scratch_load_b32 v3, off, off offset:168
	v_dual_mul_f32 v5, v218, v18 :: v_dual_mul_f32 v14, v240, v20
	v_mul_f32_e32 v6, v221, v18
	v_dual_mul_f32 v7, v219, v18 :: v_dual_mul_f32 v8, v226, v19
	v_mul_f32_e32 v10, v227, v19
	v_dual_mul_f32 v11, v224, v19 :: v_dual_mul_f32 v12, v239, v20
	v_mul_f32_e32 v13, v111, v20
	v_mul_f32_e32 v15, v201, v20
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(5)
	v_fmac_f32_e32 v133, v0, v34
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v4, v220, v18 :: v_dual_mul_f32 v9, v217, v19
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v1, v1, v17
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v2, v2, v17
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v3, v3, v17
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v191, v1, v33
	s_clause 0xb                            ; 48-byte Folded Reload
	scratch_load_b32 v26, off, off offset:92
	scratch_load_b32 v25, off, off offset:88
	scratch_load_b32 v24, off, off offset:84
	scratch_load_b32 v23, off, off offset:80
	scratch_load_b32 v22, off, off offset:76
	scratch_load_b32 v21, off, off offset:72
	scratch_load_b32 v20, off, off offset:68
	scratch_load_b32 v19, off, off offset:64
	scratch_load_b32 v18, off, off offset:16
	scratch_load_b32 v17, off, off offset:12
	scratch_load_b32 v16, off, off offset:8
	scratch_load_b32 v1, off, off offset:4
	v_fmac_f32_e32 v116, v3, v35
	v_fmac_f32_e32 v200, v2, v36
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v26, v4, v34 :: v_dual_fmac_f32 v25, v5, v33
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v24, v6, v36 :: v_dual_fmac_f32 v23, v7, v35
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v22, v8, v34 :: v_dual_fmac_f32 v21, v9, v33
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v20, v10, v36 :: v_dual_fmac_f32 v19, v11, v35
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v18, v12, v34 :: v_dual_fmac_f32 v17, v13, v33
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v16, v14, v36 :: v_dual_fmac_f32 v1, v15, v35
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v225, off, off offset:476
	scratch_load_b32 v33, off, off offset:492
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v141, off offset:732
	scratch_store_b32 off, v142, off offset:728
	scratch_store_b32 off, v255, off offset:736
	scratch_store_b32 off, v254, off offset:744
	v_dual_mov_b32 v234, v252 :: v_dual_mov_b32 v239, v229
	v_mov_b32_e32 v238, v250
	v_dual_mov_b32 v236, v253 :: v_dual_mov_b32 v237, v251
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v231, off, off offset:316
	scratch_load_b32 v242, off, off offset:328
	scratch_load_b32 v244, off, off offset:332
	scratch_load_b32 v219, off, off offset:336
	scratch_load_b32 v229, off, off offset:344
	scratch_load_b32 v216, off, off offset:348
	scratch_load_b32 v217, off, off offset:352
	scratch_load_b32 v141, off, off offset:356
	scratch_load_b32 v142, off, off offset:360
	scratch_load_b32 v197, off, off offset:364
	scratch_load_b32 v201, off, off offset:368
	scratch_load_b32 v202, off, off offset:372
	scratch_load_b32 v203, off, off offset:376
	scratch_load_b32 v204, off, off offset:380
	scratch_load_b32 v205, off, off offset:384
	scratch_load_b32 v207, off, off offset:388
	scratch_load_b32 v208, off, off offset:392
	scratch_load_b32 v209, off, off offset:396
	scratch_load_b32 v210, off, off offset:400
	scratch_load_b32 v211, off, off offset:404
	scratch_load_b32 v136, off, off offset:408
	scratch_load_b32 v213, off, off offset:412
	scratch_load_b32 v214, off, off offset:416
	scratch_load_b32 v228, off, off offset:420
	scratch_load_b32 v218, off, off offset:424
	scratch_load_b32 v232, off, off offset:428
	scratch_load_b32 v233, off, off offset:432
	scratch_load_b32 v240, off, off offset:436
	scratch_load_b32 v245, off, off offset:440
	scratch_load_b32 v246, off, off offset:444
	scratch_load_b32 v247, off, off offset:448
	scratch_load_b32 v248, off, off offset:452
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v235, off, off offset:456
	scratch_load_b32 v249, off, off offset:460
	scratch_load_b32 v250, off, off offset:464
	scratch_load_b32 v251, off, off offset:468
	scratch_load_b32 v252, off, off offset:472
	scratch_load_b32 v8, off, off offset:480
	s_waitcnt vmcnt(39)
	v_and_b32_e32 v0, 4, v225
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	scratch_store_b32 off, v1, off offset:732 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_mov_b32_e32 v78, 0
	scratch_store_b32 off, v1, off offset:736 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	scratch_store_b32 off, v7, off offset:752 ; 4-byte Folded Spill
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v181, 0
	scratch_store_b32 off, v1, off offset:728 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v234, 0
	scratch_store_b32 off, v1, off offset:744 ; 4-byte Folded Spill
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v165, 0
	v_mov_b32_e32 v106, 0
	v_mov_b32_e32 v154, 0
	s_add_i32 s1, 0, 0x8000
	s_add_i32 s51, 0, 0x8800
	s_add_i32 s50, 0, 0x2000
	s_add_i32 s15, 0, 0x4000
	s_add_i32 s49, 0, 0x6000
.LBB0_8:                                ; %Flow822
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v196, off offset:748
	scratch_store_b32 off, v26, off offset:92
	scratch_store_b32 off, v25, off offset:88
	scratch_store_b32 off, v24, off offset:84
	scratch_store_b32 off, v23, off offset:80
	scratch_store_b32 off, v22, off offset:76
	scratch_store_b32 off, v21, off offset:72
	scratch_store_b32 off, v20, off offset:68
	scratch_store_b32 off, v19, off offset:64
	scratch_store_b32 off, v194, off offset:388
	scratch_store_b32 off, v184, off offset:384
	scratch_store_b32 off, v62, off offset:380
	scratch_store_b32 off, v61, off offset:376
	scratch_store_b32 off, v60, off offset:60
	scratch_store_b32 off, v59, off offset:56
	scratch_store_b32 off, v58, off offset:52
	scratch_store_b32 off, v57, off offset:48
	scratch_store_b32 off, v52, off offset:44
	scratch_store_b32 off, v51, off offset:40
	scratch_store_b32 off, v50, off offset:36
	scratch_store_b32 off, v56, off offset:372
	scratch_store_b32 off, v190, off offset:368
	scratch_store_b32 off, v167, off offset:364
	scratch_store_b32 off, v222, off offset:360
	scratch_store_b32 off, v49, off offset:32
	scratch_store_b32 off, v193, off offset:356
	scratch_store_b32 off, v47, off offset:352
	scratch_store_b32 off, v46, off offset:348
	scratch_store_b32 off, v126, off offset:344
	scratch_store_b32 off, v44, off offset:28
	scratch_store_b32 off, v43, off offset:24
	scratch_store_b32 off, v42, off offset:20
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v18, off offset:16
	scratch_store_b32 off, v17, off offset:12
	scratch_store_b32 off, v16, off offset:8
	scratch_store_b32 off, v1, off offset:4
	scratch_store_b32 off, v41, off
	scratch_store_b32 off, v40, off offset:336
	scratch_store_b32 off, v39, off offset:332
	scratch_store_b32 off, v38, off offset:328
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v167, off, off offset:752 ; 4-byte Folded Reload
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v47, 0
	v_cndmask_b32_e64 v0, 0x90, 0, vcc_lo
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v183, 0
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v34, v0, v8
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v0, s1, v34
	v_xor_b32_e32 v35, 16, v34
	ds_load_b128 v[29:32], v0
	ds_load_b128 v[25:28], v0 offset:512
	ds_load_b128 v[21:24], v0 offset:1024
	ds_load_b128 v[17:20], v0 offset:1536
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v0, s1, v35
	ds_load_b128 v[13:16], v0
	ds_load_b128 v[9:12], v0 offset:512
	ds_load_b128 v[5:8], v0 offset:1024
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_b128 v[1:4], v0 offset:1536
	v_cndmask_b32_e64 v0, 0, 1, s2
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v87, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s1, 1, v0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v36, 0
	s_mov_b32 s4, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v37, off, off offset:248
	scratch_load_b32 v39, off, off offset:224
	scratch_load_b32 v0, off, off offset:240
	scratch_load_b32 v38, off, off offset:244
	scratch_load_b32 v36, off, off offset:236
	scratch_load_b32 v41, off, off offset:232
	scratch_load_b32 v42, off, off offset:228
	scratch_load_b32 v40, off, off offset:220
	scratch_load_b32 v45, off, off offset:216
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v43, s52, v251
	v_add_nc_u32_e32 v44, s52, v250
	v_add_nc_u32_e32 v46, s52, v252
	v_add_nc_u32_e32 v47, s52, v235
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v37, s52, v37
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v39, s52, v39
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v0, s52, v0
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v38, s52, v38
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v36, s52, v36
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v41, s52, v41
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v42, s52, v42
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v40, s52, v40
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v37, v37
	ds_load_u8 v39, v39
	ds_load_u8 v40, v40
	ds_load_u8 v38, v38
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	ds_load_u8 v0, v0
	ds_load_u8 v36, v36
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s52, v45
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v43, v43
	ds_load_u8 v44, v44
	ds_load_u8 v45, v45
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	v_perm_b32 v38, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v39, v42, v41, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v40, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v36, v0, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v42, off, off offset:312 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v36, s52, v248
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v54, v39, 16, v38
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v39, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v55, v37, 16, v0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v0, s52, v249
	v_add_nc_u32_e32 v37, s52, v167
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v46, v45, 0xc0c0004
	ds_load_u8 v47, v47
	ds_load_u8 v36, v36
	v_lshl_or_b32 v53, v41, 16, v38
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:308
	scratch_load_b32 v41, off, off offset:288
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v36, v47, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v40, s52, v40
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v39, s52, v39
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	ds_load_u8 v40, v40
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:296
	scratch_load_b32 v43, off, off offset:284
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v40, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v40, off, off offset:292 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v42, s52, v42
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v38, s52, v38
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v41, s52, v41
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v52, v0, 16, v36
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:276
	scratch_load_b32 v36, off, off offset:256
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v37, s52, v37
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v43, s52, v43
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v42, v42
	ds_load_u8 v38, v38
	ds_load_u8 v41, v41
	ds_load_u8 v43, v43
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v40, s52, v40
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v37, v37
	ds_load_u8 v40, v40
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s52, v0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v38, v38, v42, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v42, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v43, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v59, v38, 16, v39
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v38, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v40, v37, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v40, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v36, s52, v36
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v58, v37, 16, v41
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v43, s52, v43
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s52, v38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s52, v40
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v39, v40
	ds_load_u8 v0, v0
	ds_load_u8 v36, v36
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v0, v39, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v39, off, off offset:264 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v42, s52, v42
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v38, v36, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v38, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v42, v42
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v0, 16, v37
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v0, s52, v218
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v0, v0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s52, v39
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s52, v38
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v39, v39
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v56, v38, 16, v36
	v_dual_mov_b32 v43, s11 :: v_dual_mov_b32 v42, s10
	v_dual_mov_b32 v41, s9 :: v_dual_mov_b32 v40, s8
	v_dual_mov_b32 v39, s7 :: v_dual_mov_b32 v38, s6
	v_dual_mov_b32 v37, s5 :: v_dual_mov_b32 v36, s4
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[29:32], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[56:59], v[13:16], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v146, v44
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v44, s52, v214
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v183, v45
	v_cvt_f32_i32_e32 v127, v47
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v45, s52, v233
	v_add_nc_u32_e32 v47, s52, v210
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v44, v44
	v_cvt_f32_i32_e32 v126, v46
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v46, s52, v205
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v45, v45
	ds_load_u8 v47, v47
	v_cvt_f32_i32_e32 v118, v48
	v_cvt_f32_i32_e32 v120, v49
	v_cvt_f32_i32_e32 v102, v50
	v_cvt_f32_i32_e32 v111, v51
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v44, s52, v240
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v45, s52, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v63, v44, 16, v0
	ds_load_u8 v45, v45
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v0, s52, v142
	v_add_nc_u32_e32 v44, s52, v217
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v46, s52, v136
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v44, s52, v203
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v47, s52, v213
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v62, v46, 16, v45
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v45, s52, v201
	v_add_nc_u32_e32 v46, s52, v209
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v47, v47
	ds_load_u8 v45, v45
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v45, s52, v244
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v61, v44, 16, v0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v0, s52, v231
	v_add_nc_u32_e32 v44, s52, v230
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v45, v45
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v44, s52, v229
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v45, s52, v246
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v60, v44, 16, v0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v0, s52, v245
	v_add_nc_u32_e32 v44, s52, v232
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v45, v45
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v44, s52, v247
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v45, s52, v211
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v67, v44, 16, v0
	ds_load_u8 v45, v45
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v0, s52, v202
	v_add_nc_u32_e32 v44, s52, v197
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v46, s52, v228
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v44, s52, v207
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v46, 16, v45
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v45, s52, v204
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v45, s52, v216
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v65, v44, 16, v0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v0, s52, v219
	v_add_nc_u32_e32 v44, s52, v242
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v45, v45
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v44, s52, v141
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v64, v44, 16, v0
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[25:28], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[9:12], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v98, v44
	v_cvt_f32_i32_e32 v184, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v97, v46
	v_cvt_f32_i32_e32 v99, v47
	v_cvt_f32_i32_e32 v85, v48
	v_cvt_f32_i32_e32 v87, v49
	v_cvt_f32_i32_e32 v86, v50
	v_cvt_f32_i32_e32 v88, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[25:28], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[56:59], v[9:12], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v119, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v121, v45
	v_cvt_f32_i32_e32 v103, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v117, v47
	v_cvt_f32_i32_e32 v100, v48
	v_cvt_f32_i32_e32 v101, v49
	v_cvt_f32_i32_e32 v76, v50
	v_cvt_f32_i32_e32 v82, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[21:24], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[5:8], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v193, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v194, v45
	v_cvt_f32_i32_e32 v190, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v195, v47
	v_cvt_f32_i32_e32 v89, v48
	v_cvt_f32_i32_e32 v91, v49
	v_cvt_f32_i32_e32 v90, v50
	v_cvt_f32_i32_e32 v92, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[21:24], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[56:59], v[5:8], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v74, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v75, v45
	v_cvt_f32_i32_e32 v72, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v73, v47
	v_cvt_f32_i32_e32 v70, v48
	v_cvt_f32_i32_e32 v71, v49
	v_cvt_f32_i32_e32 v68, v50
	v_cvt_f32_i32_e32 v69, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[17:20], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[1:4], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v196, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v215, v45
	v_cvt_f32_i32_e32 v95, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v96, v47
	v_cvt_f32_i32_e32 v93, v48
	v_cvt_f32_i32_e32 v94, v49
	v_cvt_f32_i32_e32 v83, v50
	v_cvt_f32_i32_e32 v84, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[29:32], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[52:55], v[17:20], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[13:16], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[56:59], v[1:4], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v53, v36
	v_cvt_f32_i32_e32 v54, v37
	v_cvt_f32_i32_e32 v52, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v37, v40
	v_cvt_f32_i32_e32 v38, v41
	v_cvt_f32_i32_e32 v0, v42
	v_cvt_f32_i32_e32 v36, v43
	v_cvt_f32_i32_e32 v40, v48
	v_cvt_f32_i32_e32 v41, v49
	v_cvt_f32_i32_e32 v42, v50
	v_cvt_f32_i32_e32 v43, v51
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v215, off offset:880
	scratch_store_b32 off, v196, off offset:876
	scratch_store_b32 off, v47, off offset:872
	scratch_store_b32 off, v46, off offset:868
	scratch_store_b32 off, v45, off offset:864
	scratch_store_b32 off, v195, off offset:860
	scratch_store_b32 off, v44, off offset:856
	scratch_store_b32 off, v194, off offset:852
	scratch_store_b32 off, v193, off offset:848
	scratch_store_b32 off, v190, off offset:844
	scratch_store_b32 off, v184, off offset:840
	scratch_store_b32 off, v99, off offset:836
	scratch_store_b32 off, v98, off offset:832
	scratch_store_b32 off, v97, off offset:828
	scratch_store_b32 off, v96, off offset:824
	scratch_store_b32 off, v95, off offset:820
	scratch_store_b32 off, v94, off offset:816
	scratch_store_b32 off, v93, off offset:812
	scratch_store_b32 off, v43, off offset:808
	scratch_store_b32 off, v42, off offset:804
	scratch_store_b32 off, v41, off offset:800
	scratch_store_b32 off, v40, off offset:796
	scratch_store_b32 off, v92, off offset:792
	scratch_store_b32 off, v91, off offset:788
	scratch_store_b32 off, v90, off offset:784
	scratch_store_b32 off, v89, off offset:780
	scratch_store_b32 off, v88, off offset:776
	scratch_store_b32 off, v87, off offset:772
	scratch_store_b32 off, v86, off offset:768
	scratch_store_b32 off, v85, off offset:764
	scratch_store_b32 off, v84, off offset:760
	scratch_store_b32 off, v83, off offset:756
	s_clause 0x16                           ; 92-byte Folded Spill
	scratch_store_b32 off, v82, off offset:480
	scratch_store_b32 off, v76, off offset:476
	scratch_store_b32 off, v75, off offset:472
	scratch_store_b32 off, v74, off offset:468
	scratch_store_b32 off, v73, off offset:464
	scratch_store_b32 off, v72, off offset:460
	scratch_store_b32 off, v71, off offset:456
	scratch_store_b32 off, v70, off offset:452
	scratch_store_b32 off, v69, off offset:448
	scratch_store_b32 off, v68, off offset:444
	scratch_store_b32 off, v54, off offset:440
	scratch_store_b32 off, v53, off offset:436
	scratch_store_b32 off, v39, off offset:432
	scratch_store_b32 off, v52, off offset:428
	scratch_store_b32 off, v38, off offset:424
	scratch_store_b32 off, v37, off offset:420
	scratch_store_b32 off, v36, off offset:416
	scratch_store_b32 off, v0, off offset:412
	scratch_store_b32 off, v81, off offset:408
	scratch_store_b32 off, v80, off offset:404
	scratch_store_b32 off, v79, off offset:400
	scratch_store_b32 off, v78, off offset:396
	scratch_store_b32 off, v77, off offset:392
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v194, 0
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v37, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v36, 0
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v37, s15, v218
	v_add_nc_u32_e32 v38, s15, v214
	v_add_nc_u32_e32 v0, s15, v240
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v41, s15, v208
	v_add_nc_u32_e32 v36, s15, v233
	v_add_nc_u32_e32 v42, s15, v205
	v_add_nc_u32_e32 v39, s15, v136
	v_add_nc_u32_e32 v40, s15, v210
	v_add_nc_u32_e32 v43, s15, v203
	v_add_nc_u32_e32 v44, s15, v201
	v_add_nc_u32_e32 v45, s15, v142
	v_add_nc_u32_e32 v46, s15, v217
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v0, v0
	ds_load_u8 v41, v41
	ds_load_u8 v36, v36
	ds_load_u8 v42, v42
	ds_load_u8 v39, v39
	ds_load_u8 v40, v40
	ds_load_u8 v45, v45
	ds_load_u8 v46, v46
	ds_load_u8 v43, v43
	ds_load_u8 v44, v44
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v47, s15, v231
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v38, s15, v230
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v47, v47
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v0, v36, v0, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v42, s15, v229
	v_add_nc_u32_e32 v40, s15, v244
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v95, v0, 16, v37
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v94, v39, 16, v41
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:244
	scratch_load_b32 v37, off, off offset:236
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v39, v42
	ds_load_u8 v40, v40
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v42, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v36, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v93, v43, 16, v45
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v38, v47, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v40, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v92, v39, 16, v38
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v38, s15, v248
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v0, s15, v0
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v41, s15, v41
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v37, s15, v37
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v36, s15, v36
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:228
	scratch_load_b32 v43, off, off offset:220
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v40, s15, v40
	v_add_nc_u32_e32 v42, s15, v42
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s15, v37
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v40, v40
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v40, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v40, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v43, s15, v43
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v36, v36
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v41, v36, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v41, s15, v251
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v43, s15, v250
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v41, v41
	ds_load_u8 v43, v43
	v_lshl_or_b32 v99, v36, 16, v0
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v0, s15, v252
	v_add_nc_u32_e32 v36, s15, v235
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v98, v37, 16, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v43, v41, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s15, v40
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v39, v40
	ds_load_u8 v0, v0
	ds_load_u8 v36, v36
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v0, v39, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v39, s15, v249
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v38, v36, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v38, s15, v167
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v39, v39
	ds_load_u8 v38, v38
	v_lshl_or_b32 v97, v0, 16, v37
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v0, s15, v245
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v96, v38, 16, v36
	v_dual_mov_b32 v43, s11 :: v_dual_mov_b32 v42, s10
	v_dual_mov_b32 v41, s9 :: v_dual_mov_b32 v40, s8
	v_dual_mov_b32 v39, s7 :: v_dual_mov_b32 v38, s6
	v_dual_mov_b32 v37, s5 :: v_dual_mov_b32 v36, s4
	v_wmma_i32_16x16x16_iu8 v[44:51], v[92:95], v[29:32], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[96:99], v[29:32], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[92:95], v[25:28], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[96:99], v[25:28], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[92:95], v[21:24], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[96:99], v[21:24], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[92:95], v[17:20], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[96:99], v[17:20], v[36:43] neg_lo:[1,1,0]
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v17, s15, v232
	v_add_nc_u32_e32 v18, s15, v246
	v_add_nc_u32_e32 v20, s15, v213
	v_add_nc_u32_e32 v19, s15, v209
	v_add_nc_u32_e32 v21, s15, v216
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	ds_load_u8 v20, v20
	ds_load_u8 v19, v19
	ds_load_u8 v21, v21
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v22, off, off offset:308
	scratch_load_b32 v24, off, off offset:292
	scratch_load_b32 v23, off, off offset:284
	scratch_load_b32 v92, off, off offset:260
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v17, s15, v247
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v18, s15, v211
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v19, s15, v228
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_lshl_or_b32 v20, v17, 16, v0
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v0, s15, v202
	v_add_nc_u32_e32 v17, s15, v197
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v19, v19, 16, v18
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v18, s15, v204
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v0, v0
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v17, s15, v207
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v17, 16, v0
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v0, s15, v219
	v_add_nc_u32_e32 v17, s15, v242
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v0, v0
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v17, s15, v141
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v21, v17, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v21, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v17, v17, 16, v0
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v0, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[60:67], v[17:20], v[9:12], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[17:20], v[13:16], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[17:20], v[5:8], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[17:20], v[1:4], v[84:91] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v255, v60
	v_cvt_f32_i32_e32 v253, v62
	v_cvt_f32_i32_e32 v254, v63
	v_cvt_f32_i32_e32 v190, v64
	v_cvt_f32_i32_e32 v194, v65
	v_cvt_f32_i32_e32 v184, v66
	v_cvt_f32_i32_e32 v193, v67
	v_cvt_f32_i32_e32 v224, v25
	v_cvt_f32_i32_e32 v65, v26
	v_cvt_f32_i32_e32 v220, v27
	v_cvt_f32_i32_e32 v222, v28
	v_cvt_f32_i32_e32 v196, v29
	v_cvt_f32_i32_e32 v226, v30
	v_cvt_f32_i32_e32 v195, v31
	v_cvt_f32_i32_e32 v227, v32
	v_cvt_f32_i32_e32 v215, v45
	v_cvt_f32_i32_e32 v243, v46
	v_cvt_f32_i32_e32 v221, v47
	v_cvt_f32_i32_e32 v241, v44
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v22, s15, v22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v24, s15, v24
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v23, s15, v23
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v92, s15, v92
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v22, v22
	ds_load_u8 v24, v24
	ds_load_u8 v23, v23
	ds_load_u8 v92, v92
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, s15, v21
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s15, v0
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v21, v21
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v21, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s15, v21
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v22, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s15, v22
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v23, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s15, v23
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	v_lshl_or_b32 v24, v21, 16, v0
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v23, v23, 16, v22
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:276
	scratch_load_b32 v21, off, off offset:268
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s15, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v22, s15, v22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s15, v21
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v0, v0
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v21, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s15, v21
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v21, 16, v0
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:256
	scratch_load_b32 v21, off, off offset:252
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s15, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s15, v21
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v0, v0
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v21, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s15, v21
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v92, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v21, v21, 16, v0
	v_cvt_f32_i32_e32 v0, v61
	v_wmma_i32_16x16x16_iu8 v[52:59], v[21:24], v[13:16], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[21:24], v[9:12], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[21:24], v[5:8], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[21:24], v[1:4], v[36:43] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v96, v52
	v_cvt_f32_i32_e32 v98, v53
	v_cvt_f32_i32_e32 v97, v54
	v_cvt_f32_i32_e32 v99, v55
	v_cvt_f32_i32_e32 v94, v56
	v_cvt_f32_i32_e32 v95, v57
	v_cvt_f32_i32_e32 v92, v58
	v_cvt_f32_i32_e32 v93, v59
	v_cvt_f32_i32_e32 v63, v68
	v_cvt_f32_i32_e32 v66, v69
	v_cvt_f32_i32_e32 v62, v70
	v_cvt_f32_i32_e32 v64, v71
	v_cvt_f32_i32_e32 v58, v72
	v_cvt_f32_i32_e32 v59, v73
	v_cvt_f32_i32_e32 v56, v74
	v_cvt_f32_i32_e32 v57, v75
	v_cvt_f32_i32_e32 v69, v76
	v_cvt_f32_i32_e32 v70, v77
	v_cvt_f32_i32_e32 v68, v78
	v_cvt_f32_i32_e32 v71, v79
	v_cvt_f32_i32_e32 v54, v80
	v_cvt_f32_i32_e32 v55, v81
	v_cvt_f32_i32_e32 v52, v82
	v_cvt_f32_i32_e32 v53, v83
	v_cvt_f32_i32_e32 v78, v84
	v_cvt_f32_i32_e32 v79, v85
	v_cvt_f32_i32_e32 v76, v86
	v_cvt_f32_i32_e32 v77, v87
	v_cvt_f32_i32_e32 v74, v88
	v_cvt_f32_i32_e32 v75, v89
	v_cvt_f32_i32_e32 v72, v90
	v_cvt_f32_i32_e32 v73, v91
	v_cvt_f32_i32_e32 v61, v36
	v_cvt_f32_i32_e32 v67, v37
	v_cvt_f32_i32_e32 v60, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v37, v40
	v_cvt_f32_i32_e32 v38, v41
	v_cvt_f32_i32_e32 v0, v42
	v_cvt_f32_i32_e32 v36, v43
	v_cvt_f32_i32_e32 v40, v48
	v_cvt_f32_i32_e32 v42, v49
	v_cvt_f32_i32_e32 v41, v50
	v_cvt_f32_i32_e32 v43, v51
.LBB0_12:
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s30, 31
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v255, off offset:1124
	scratch_store_b32 off, v254, off offset:1120
	scratch_store_b32 off, v253, off offset:1116
	scratch_store_b32 off, v241, off offset:1112
	scratch_store_b32 off, v79, off offset:1060
	scratch_store_b32 off, v78, off offset:1056
	scratch_store_b32 off, v77, off offset:1020
	scratch_store_b32 off, v76, off offset:1016
	scratch_store_b32 off, v43, off offset:1012
	scratch_store_b32 off, v42, off offset:1008
	scratch_store_b32 off, v41, off offset:1004
	scratch_store_b32 off, v40, off offset:1000
	scratch_store_b32 off, v227, off offset:996
	scratch_store_b32 off, v226, off offset:992
	scratch_store_b32 off, v196, off offset:988
	scratch_store_b32 off, v195, off offset:984
	scratch_store_b32 off, v75, off offset:980
	scratch_store_b32 off, v194, off offset:976
	scratch_store_b32 off, v74, off offset:972
	scratch_store_b32 off, v193, off offset:968
	scratch_store_b32 off, v190, off offset:964
	scratch_store_b32 off, v184, off offset:960
	scratch_store_b32 off, v73, off offset:956
	scratch_store_b32 off, v72, off offset:952
	scratch_store_b32 off, v71, off offset:948
	scratch_store_b32 off, v70, off offset:944
	scratch_store_b32 off, v69, off offset:940
	scratch_store_b32 off, v68, off offset:936
	scratch_store_b32 off, v67, off offset:932
	scratch_store_b32 off, v66, off offset:928
	scratch_store_b32 off, v64, off offset:924
	scratch_store_b32 off, v63, off offset:920
	s_clause 0x19                           ; 104-byte Folded Spill
	scratch_store_b32 off, v62, off offset:916
	scratch_store_b32 off, v61, off offset:912
	scratch_store_b32 off, v99, off offset:908
	scratch_store_b32 off, v98, off offset:904
	scratch_store_b32 off, v97, off offset:900
	scratch_store_b32 off, v96, off offset:896
	scratch_store_b32 off, v39, off offset:888
	scratch_store_b32 off, v60, off offset:884
	scratch_store_b32 off, v95, off offset:740
	scratch_store_b32 off, v94, off offset:724
	scratch_store_b32 off, v93, off offset:720
	scratch_store_b32 off, v92, off offset:716
	scratch_store_b32 off, v59, off offset:696
	scratch_store_b32 off, v58, off offset:676
	scratch_store_b32 off, v57, off offset:656
	scratch_store_b32 off, v56, off offset:644
	scratch_store_b32 off, v55, off offset:600
	scratch_store_b32 off, v54, off offset:588
	scratch_store_b32 off, v53, off offset:584
	scratch_store_b32 off, v52, off offset:580
	scratch_store_b32 off, v38, off offset:552
	scratch_store_b32 off, v37, off offset:548
	scratch_store_b32 off, v36, off offset:544
	scratch_store_b32 off, v0, off offset:540
	scratch_store_b32 off, v146, off offset:532
	scratch_store_b32 off, v127, off offset:528
	s_lshr_b32 s1, s1, 27
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v3, off, off offset:488
	scratch_load_b32 v4, off, off offset:484
	scratch_load_b32 v5, off, off offset:180
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_add_i32 s1, s30, s1
	s_mov_b32 s15, 0x31027000
	s_ashr_i32 s1, s1, 5
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s4, s1, s34
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s1, s48
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v0, v171, s1, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v1, v172, s4, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s5, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s30, s14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s31, s15
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	v_add3_u32 v7, s26, s27, v225
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v6, v170, s1, 1
	s_and_b32 s13, s13, 0xffff
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	v_mov_b32_e32 v99, 0
	scratch_store_b32 off, v7, off offset:892 ; 4-byte Folded Spill
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v7, v7, s4, 1
	v_dual_mov_b32 v193, 0 :: v_dual_and_b32 v2, 32, v33
	v_mov_b32_e32 v95, 0
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v8, s51, v34
	v_mov_b32_e32 v31, 0
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v9, s51, v35
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v11, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v20, 0
	s_mov_b32 s4, 0
	v_mov_b32_e32 v30, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v127, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v21, 0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_add3_u32 v2, 0, v4, v2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v4, v104, s1, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_and_b32_e32 v3, 28, v3
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v5, v5, s1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_add_nc_u32_e32 v227, v2, v3
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v2, 0x80000000, v4 :: v_dual_cndmask_b32 v3, 0x80000000, v5
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	s_clause 0x3
	buffer_load_u16 v226, v0, s[12:15], 0 offen
	buffer_load_u16 v225, v2, s[12:15], 0 offen
	buffer_load_u16 v241, v3, s[12:15], 0 offen
	buffer_load_u16 v254, v4, s[12:15], 0 offen
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_dual_cndmask_b32 v5, 0x80000000, v7 :: v_dual_mov_b32 v2, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v227, v1 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v0, v5, s[28:31], 0 offen
	scratch_store_b32 off, v2, off offset:132 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:136 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:100 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:104 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:140 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:144 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:108 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:112 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:148 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:152 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:116 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:120 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:156 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:164 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:124 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v2, off offset:128 ; 4-byte Folded Spill
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v64, 0, v1
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v10, 16, v0
	ds_load_b128 v[16:19], v64 offset:36864
	ds_load_b128 v[12:15], v64 offset:36880
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	scratch_store_b32 off, v1, off offset:96 ; 4-byte Folded Spill
	v_cndmask_b32_e64 v1, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s1, 1, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[0:3], v64 offset:37376
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[0:3], off offset:1080 ; 16-byte Folded Spill
	ds_load_b128 v[0:3], v64 offset:37392
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[0:3], off offset:1064 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v227, v10 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[60:63], v8
	ds_load_b128 v[52:55], v8 offset:512
	ds_load_b128 v[48:51], v8 offset:1024
	ds_load_b128 v[36:39], v8 offset:1536
	ds_load_b128 v[56:59], v9
	ds_load_b128 v[44:47], v9 offset:512
	ds_load_b128 v[40:43], v9 offset:1024
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_b128 v[32:35], v9 offset:1536
	v_mov_b32_e32 v8, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v9, 0
	scratch_store_b32 off, v8, off offset:188 ; 4-byte Folded Spill
	v_mov_b32_e32 v8, 0
	scratch_store_b32 off, v8, off offset:192 ; 4-byte Folded Spill
	v_mov_b32_e32 v8, 0
	scratch_store_b32 off, v8, off offset:168 ; 4-byte Folded Spill
	v_mov_b32_e32 v8, 0
	scratch_store_b32 off, v8, off offset:172 ; 4-byte Folded Spill
	v_mov_b32_e32 v8, 0
	scratch_store_b32 off, v8, off offset:196 ; 4-byte Folded Spill
	v_mov_b32_e32 v8, 0
	scratch_store_b32 off, v8, off offset:200 ; 4-byte Folded Spill
	v_mov_b32_e32 v8, 0
	scratch_store_b32 off, v8, off offset:176 ; 4-byte Folded Spill
	v_mov_b32_e32 v8, 0
	scratch_store_b32 off, v8, off offset:184 ; 4-byte Folded Spill
	v_mov_b32_e32 v8, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v8, off, off offset:240
	scratch_load_b32 v11, off, off offset:244
	scratch_load_b32 v9, off, off offset:236
	scratch_load_b32 v20, off, off offset:224
	scratch_load_b32 v22, off, off offset:232
	scratch_load_b32 v23, off, off offset:228
	scratch_load_b32 v21, off, off offset:220
	scratch_load_b32 v26, off, off offset:216
	scratch_load_b32 v10, off, off offset:248
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v24, s50, v251
	v_add_nc_u32_e32 v25, s50, v250
	v_add_nc_u32_e32 v27, s50, v252
	v_add_nc_u32_e32 v28, s50, v235
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v8, s50, v8
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v11, s50, v11
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v9, s50, v9
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v20, s50, v20
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v22, s50, v22
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v8, v8
	ds_load_u8 v9, v9
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v21, s50, v21
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s50, v10
	v_add_nc_u32_e32 v23, s50, v23
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v10, v10
	ds_load_u8 v20, v20
	ds_load_u8 v21, v21
	ds_load_u8 v11, v11
	ds_load_u8 v22, v22
	ds_load_u8 v23, v23
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v26, s50, v26
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v24, v24
	ds_load_u8 v25, v25
	ds_load_u8 v26, v26
	ds_load_u8 v27, v27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v9, s50, v248
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v28, v28
	ds_load_u8 v29, v9
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v9, v11, v10, 0xc0c0004
	v_perm_b32 v10, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v23, v22, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v11, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v23, v27, v26, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v27, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v10, v20, 16, v10
	v_perm_b32 v20, v25, v24, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v24, off, off offset:312
	scratch_load_b32 v22, off, off offset:300
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v29, v28, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v21, s50, v11
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v11, v9, 16, v8
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v8, s50, v249
	v_add_nc_u32_e32 v9, s50, v167
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v24, s50, v24
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s50, v22
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v8, v8
	ds_load_u8 v25, v9
	ds_load_u8 v21, v21
	ds_load_u8 v22, v22
	v_lshl_or_b32 v9, v23, 16, v20
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:308
	scratch_load_b32 v23, off, off offset:288
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v25, v8, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v25, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v22, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v8, v8, 16, v26
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v20, s50, v20
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v23, s50, v23
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v25, s50, v25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s50, v22
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v25, v25
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v22, v25, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v25, off, off offset:280 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v27, s50, v27
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v24, v24
	ds_load_u8 v20, v20
	ds_load_u8 v23, v23
	ds_load_u8 v27, v27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v20, v24, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v24, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v27, v23, 0xc0c0004
	v_lshl_or_b32 v31, v20, 16, v21
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v20, off, off offset:276
	scratch_load_b32 v27, off, off offset:268
	scratch_load_b32 v21, off, off offset:256
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v30, v22, 16, v23
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v23, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v25, s50, v25
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v24, s50, v24
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v20, s50, v20
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v27, s50, v27
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v24, v24
	ds_load_u8 v27, v27
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, s50, v21
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s50, v23
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v27, v24, 0xc0c0004
	ds_load_u8 v24, v25
	ds_load_u8 v20, v20
	ds_load_u8 v21, v21
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v20, v24, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v24, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v23, v21, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v23, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v29, v20, 16, v22
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v24, s50, v24
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s50, v23
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v24, v24
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v23, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v23, 16, v21
	v_dual_mov_b32 v27, s11 :: v_dual_mov_b32 v26, s10
	v_dual_mov_b32 v25, s9 :: v_dual_mov_b32 v24, s8
	v_dual_mov_b32 v23, s7 :: v_dual_mov_b32 v22, s6
	v_dual_mov_b32 v21, s5 :: v_dual_mov_b32 v20, s4
	v_wmma_i32_16x16x16_iu8 v[67:74], v[8:11], v[60:63], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[28:31], v[56:59], v[67:74] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v195, v67
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v196, v68
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v67, s50, v218
	v_add_nc_u32_e32 v68, s50, v214
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v193, v69
	v_cvt_f32_i32_e32 v99, v71
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v69, s50, v233
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v67, v67
	ds_load_u8 v68, v68
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v71, s50, v210
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v194, v70
	ds_load_u8 v69, v69
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v70, s50, v205
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v146, v72
	ds_load_u8 v71, v71
	v_cvt_f32_i32_e32 v95, v73
	v_cvt_f32_i32_e32 v97, v74
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v68, s50, v240
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v69, s50, v208
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v78, v68, 16, v67
	ds_load_u8 v69, v69
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v67, s50, v142
	v_add_nc_u32_e32 v68, s50, v217
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v67, v67
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v70, s50, v136
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v68, s50, v203
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v71, s50, v213
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v77, v70, 16, v69
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v69, s50, v201
	v_add_nc_u32_e32 v70, s50, v209
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v71, v71
	ds_load_u8 v69, v69
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v69, s50, v244
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v76, v68, 16, v67
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v67, s50, v231
	v_add_nc_u32_e32 v68, s50, v230
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v69, v69
	ds_load_u8 v67, v67
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v68, s50, v229
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v69, s50, v246
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v75, v68, 16, v67
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v67, s50, v245
	v_add_nc_u32_e32 v68, s50, v232
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v69, v69
	ds_load_u8 v67, v67
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v68, s50, v247
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v69, s50, v211
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v82, v68, 16, v67
	ds_load_u8 v69, v69
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v67, s50, v202
	v_add_nc_u32_e32 v68, s50, v197
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v67, v67
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v70, s50, v228
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v68, s50, v207
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v70, 16, v69
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v69, s50, v204
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v69, s50, v216
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v80, v68, 16, v67
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v67, s50, v219
	v_add_nc_u32_e32 v68, s50, v242
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v69, v69
	ds_load_u8 v67, v67
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v68, s50, v141
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v68, 16, v67
	v_wmma_i32_16x16x16_iu8 v[67:74], v[75:78], v[52:55], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[79:82], v[44:47], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_cvt_f32_i32_e32 v67, v67
	scratch_store_b32 off, v67, off offset:132 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v68
	scratch_store_b32 off, v67, off offset:136 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v69
	scratch_store_b32 off, v67, off offset:140 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v70
	scratch_store_b32 off, v67, off offset:144 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v71
	scratch_store_b32 off, v67, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v72
	scratch_store_b32 off, v67, off offset:104 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v73
	scratch_store_b32 off, v67, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v74
	scratch_store_b32 off, v67, off offset:112 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu8 v[67:74], v[8:11], v[52:55], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[28:31], v[44:47], v[67:74] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v127, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v184, v68
	v_cvt_f32_i32_e32 v96, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v98, v70
	v_cvt_f32_i32_e32 v93, v71
	v_cvt_f32_i32_e32 v94, v72
	v_cvt_f32_i32_e32 v91, v73
	v_cvt_f32_i32_e32 v92, v74
	v_wmma_i32_16x16x16_iu8 v[67:74], v[75:78], v[48:51], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[79:82], v[40:43], v[67:74] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v67, v67
	scratch_store_b32 off, v67, off offset:148 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v68
	scratch_store_b32 off, v67, off offset:152 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v69
	scratch_store_b32 off, v67, off offset:156 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v70
	scratch_store_b32 off, v67, off offset:164 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v71
	scratch_store_b32 off, v67, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v72
	scratch_store_b32 off, v67, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v73
	scratch_store_b32 off, v67, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v74
	scratch_store_b32 off, v67, off offset:128 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu8 v[67:74], v[8:11], v[48:51], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[28:31], v[40:43], v[67:74] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v89, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v90, v68
	v_cvt_f32_i32_e32 v87, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v88, v70
	v_cvt_f32_i32_e32 v85, v71
	v_cvt_f32_i32_e32 v86, v72
	v_cvt_f32_i32_e32 v83, v73
	v_cvt_f32_i32_e32 v84, v74
	v_wmma_i32_16x16x16_iu8 v[67:74], v[75:78], v[36:39], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[79:82], v[32:35], v[67:74] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v67, v67
	scratch_store_b32 off, v67, off offset:188 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v68
	scratch_store_b32 off, v67, off offset:192 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v69
	scratch_store_b32 off, v67, off offset:196 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v70
	scratch_store_b32 off, v67, off offset:200 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v71
	scratch_store_b32 off, v67, off offset:168 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v72
	scratch_store_b32 off, v67, off offset:172 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v73
	scratch_store_b32 off, v67, off offset:176 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v74
	scratch_store_b32 off, v67, off offset:184 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu8 v[67:74], v[75:78], v[60:63], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[20:27], v[8:11], v[36:39], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[79:82], v[56:59], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[20:27], v[28:31], v[32:35], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v30, v67
	v_cvt_f32_i32_e32 v31, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v28, v20
	v_cvt_f32_i32_e32 v29, v21
	v_cvt_f32_i32_e32 v20, v22
	v_cvt_f32_i32_e32 v21, v23
	v_cvt_f32_i32_e32 v10, v24
	v_cvt_f32_i32_e32 v11, v25
	v_cvt_f32_i32_e32 v8, v26
	v_cvt_f32_i32_e32 v9, v27
	v_cvt_f32_i32_e32 v26, v69
	v_cvt_f32_i32_e32 v27, v70
	v_cvt_f32_i32_e32 v22, v71
	v_cvt_f32_i32_e32 v23, v72
	v_cvt_f32_i32_e32 v24, v73
	v_cvt_f32_i32_e32 v25, v74
.LBB0_14:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v31, off offset:1052
	scratch_store_b32 off, v30, off offset:1048
	scratch_store_b32 off, v27, off offset:1044
	scratch_store_b32 off, v26, off offset:1040
	scratch_store_b32 off, v25, off offset:1036
	scratch_store_b32 off, v24, off offset:1032
	scratch_store_b32 off, v23, off offset:1028
	scratch_store_b32 off, v22, off offset:1024
	scratch_store_b32 off, v196, off offset:712
	scratch_store_b32 off, v195, off offset:708
	scratch_store_b32 off, v194, off offset:704
	scratch_store_b32 off, v193, off offset:700
	scratch_store_b32 off, v184, off offset:692
	scratch_store_b32 off, v146, off offset:688
	scratch_store_b32 off, v127, off offset:684
	scratch_store_b32 off, v99, off offset:680
	scratch_store_b32 off, v98, off offset:672
	scratch_store_b32 off, v97, off offset:668
	scratch_store_b32 off, v96, off offset:664
	scratch_store_b32 off, v95, off offset:660
	scratch_store_b32 off, v94, off offset:652
	scratch_store_b32 off, v93, off offset:648
	scratch_store_b32 off, v92, off offset:640
	scratch_store_b32 off, v91, off offset:636
	scratch_store_b32 off, v90, off offset:632
	scratch_store_b32 off, v89, off offset:628
	scratch_store_b32 off, v88, off offset:624
	scratch_store_b32 off, v87, off offset:620
	scratch_store_b32 off, v86, off offset:616
	scratch_store_b32 off, v85, off offset:612
	scratch_store_b32 off, v84, off offset:608
	scratch_store_b32 off, v83, off offset:604
	s_clause 0x13                           ; 80-byte Folded Spill
	scratch_store_b32 off, v29, off offset:596
	scratch_store_b32 off, v28, off offset:592
	scratch_store_b32 off, v21, off offset:576
	scratch_store_b32 off, v20, off offset:572
	scratch_store_b32 off, v11, off offset:568
	scratch_store_b32 off, v10, off offset:564
	scratch_store_b32 off, v9, off offset:560
	scratch_store_b32 off, v8, off offset:556
	scratch_store_b32 off, v183, off offset:536
	scratch_store_b32 off, v126, off offset:524
	scratch_store_b32 off, v121, off offset:520
	scratch_store_b32 off, v120, off offset:516
	scratch_store_b32 off, v119, off offset:512
	scratch_store_b32 off, v118, off offset:508
	scratch_store_b32 off, v117, off offset:504
	scratch_store_b32 off, v111, off offset:500
	scratch_store_b32 off, v103, off offset:496
	scratch_store_b32 off, v102, off offset:492
	scratch_store_b32 off, v101, off offset:488
	scratch_store_b32 off, v100, off offset:484
	ds_load_b128 v[28:31], v64 offset:36864
	ds_load_b128 v[24:27], v64 offset:36880
	ds_load_b128 v[20:23], v64 offset:37376
	ds_load_b128 v[0:3], v64 offset:37392
	v_dual_mov_b32 v82, v240 :: v_dual_mov_b32 v71, v233
	v_dual_mov_b32 v72, v218 :: v_dual_mov_b32 v77, v205
	v_dual_mov_b32 v75, v210 :: v_dual_mov_b32 v76, v208
	v_dual_mov_b32 v233, v204 :: v_dual_mov_b32 v78, v203
	v_dual_mov_b32 v240, v202 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v80, v142 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v91, 0
	v_mov_b32_e32 v255, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[0:3], off offset:1096 ; 16-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v126, 0
	v_mov_b32_e32 v89, 0
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v87, 0
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v203, 0
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v67, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v210, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v146, 0
	v_mov_b32_e32 v102, 0
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v68, 0
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v67, off, off offset:312 ; 4-byte Folded Reload
	v_dual_mov_b32 v193, v164 :: v_dual_add_nc_u32 v72, s49, v72
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v111, s49, v249
	v_add_nc_u32_e32 v71, s49, v71
	v_add_nc_u32_e32 v80, s49, v80
	v_add_nc_u32_e32 v78, s49, v78
	v_add_nc_u32_e32 v118, s49, v230
	v_dual_mov_b32 v184, v128 :: v_dual_add_nc_u32 v69, s49, v245
	v_mov_b32_e32 v128, v105
	v_dual_mov_b32 v127, v122 :: v_dual_add_nc_u32 v202, s49, v213
	v_dual_mov_b32 v122, v104 :: v_dual_add_nc_u32 v75, s49, v75
	v_dual_mov_b32 v146, v163 :: v_dual_add_nc_u32 v77, s49, v77
	v_dual_mov_b32 v195, v181 :: v_dual_add_nc_u32 v208, s49, v197
	v_add_nc_u32_e32 v204, s49, v209
	v_dual_mov_b32 v194, v168 :: v_dual_add_nc_u32 v203, s49, v211
	v_mov_b32_e32 v181, v206
	v_dual_mov_b32 v168, v154 :: v_dual_add_nc_u32 v119, s49, v228
	v_dual_mov_b32 v163, v153 :: v_dual_add_nc_u32 v206, s49, v233
	v_mov_b32_e32 v154, v107
	v_dual_mov_b32 v153, v106 :: v_dual_add_nc_u32 v210, s49, v242
	v_dual_mov_b32 v144, v189 :: v_dual_add_nc_u32 v117, s49, v231
	v_mov_b32_e32 v183, v173
	v_mov_b32_e32 v173, v155
	v_dual_mov_b32 v155, v108 :: v_dual_add_nc_u32 v108, s49, v252
	v_dual_mov_b32 v252, v176 :: v_dual_add_nc_u32 v205, s49, v207
	v_dual_mov_b32 v189, v174 :: v_dual_mov_b32 v174, v156
	v_dual_mov_b32 v156, v109 :: v_dual_add_nc_u32 v109, s49, v251
	v_dual_mov_b32 v176, v158 :: v_dual_add_nc_u32 v207, s49, v240
	v_mov_b32_e32 v158, v112
	v_add_nc_u32_e32 v112, s49, v167
	v_mov_b32_e32 v167, v239
	v_dual_mov_b32 v239, v238 :: v_dual_mov_b32 v238, v237
	v_dual_mov_b32 v237, v236 :: v_dual_mov_b32 v164, v143
	v_mov_b32_e32 v236, v234
	v_mov_b32_e32 v234, v145
	v_mov_b32_e32 v145, v177
	v_dual_mov_b32 v177, v159 :: v_dual_add_nc_u32 v68, s49, v246
	v_dual_mov_b32 v159, v113 :: v_dual_add_nc_u32 v70, s49, v82
	v_add_nc_u32_e32 v76, s49, v76
	v_dual_mov_b32 v126, v115 :: v_dual_add_nc_u32 v113, s49, v235
	v_add_nc_u32_e32 v82, s49, v229
	v_add_nc_u32_e32 v115, s49, v244
	v_add_nc_u32_e32 v209, s49, v219
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v83, s49, v67
	scratch_load_b32 v67, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v73, v214 :: v_dual_add_nc_u32 v84, s49, v67
	scratch_load_b32 v67, off, off offset:304 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v73, s49, v73
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v85, s49, v67
	scratch_load_b32 v67, off, off offset:300 ; 4-byte Folded Reload
	v_mov_b32_e32 v81, v136
	v_mov_b32_e32 v136, v212
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v86, s49, v67
	scratch_load_b32 v67, off, off offset:296 ; 4-byte Folded Reload
	v_dual_mov_b32 v143, v125 :: v_dual_add_nc_u32 v74, s49, v81
	v_mov_b32_e32 v125, v114
	v_add_nc_u32_e32 v81, s49, v217
	v_add_nc_u32_e32 v114, s49, v248
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v72, v72
	ds_load_u8 v73, v73
	ds_load_u8 v70, v70
	ds_load_u8 v76, v76
	ds_load_u8 v77, v77
	ds_load_u8 v74, v74
	ds_load_u8 v75, v75
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v71, s49, v141
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v120, v70, 16, v72
	v_perm_b32 v70, v77, v76, 0xc0c0004
	v_perm_b32 v72, v75, v74, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v87, s49, v67
	scratch_load_b32 v67, off, off offset:292 ; 4-byte Folded Reload
	v_mov_b32_e32 v79, v201
	v_mov_b32_e32 v201, v175
	v_mov_b32_e32 v175, v157
	v_mov_b32_e32 v157, v110
	v_add_nc_u32_e32 v73, s49, v216
	v_add_nc_u32_e32 v110, s49, v250
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v88, s49, v67
	scratch_load_b32 v67, off, off offset:288 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v79, s49, v79
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v80, v80
	ds_load_u8 v81, v81
	ds_load_u8 v78, v78
	ds_load_u8 v117, v117
	ds_load_u8 v121, v118
	ds_load_u8 v82, v82
	ds_load_u8 v115, v115
	ds_load_u8 v79, v79
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v118, s49, v232
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v74, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v79, v78, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v89, s49, v67
	scratch_load_b32 v67, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v90, s49, v67
	scratch_load_b32 v67, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v91, s49, v67
	scratch_load_b32 v67, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v92, s49, v67
	scratch_load_b32 v67, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v93, s49, v67
	scratch_load_b32 v67, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v94, s49, v67
	scratch_load_b32 v67, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v95, s49, v67
	scratch_load_b32 v67, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v96, s49, v67
	scratch_load_b32 v67, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v97, s49, v67
	scratch_load_b32 v67, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v98, s49, v67
	scratch_load_b32 v67, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, s49, v67
	scratch_load_b32 v67, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v100, s49, v67
	scratch_load_b32 v67, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v101, s49, v67
	scratch_load_b32 v67, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v102, s49, v67
	scratch_load_b32 v67, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v103, s49, v67
	scratch_load_b32 v67, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v104, s49, v67
	scratch_load_b32 v67, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v105, s49, v67
	scratch_load_b32 v67, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v106, s49, v67
	scratch_load_b32 v67, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v107, s49, v67
	v_add_nc_u32_e32 v67, s49, v247
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v69, v69
	ds_load_u8 v211, v118
	ds_load_u8 v67, v67
	ds_load_u8 v203, v203
	ds_load_u8 v204, v204
	ds_load_u8 v212, v119
	ds_load_u8 v202, v202
	ds_load_u8 v68, v68
	ds_load_u8 v207, v207
	ds_load_u8 v208, v208
	ds_load_u8 v205, v205
	ds_load_u8 v209, v209
	ds_load_u8 v210, v210
	ds_load_u8 v213, v71
	ds_load_u8 v214, v73
	ds_load_u8 v71, v206
	ds_load_u8 v101, v101
	ds_load_u8 v102, v102
	ds_load_u8 v99, v99
	ds_load_u8 v105, v105
	ds_load_u8 v106, v106
	ds_load_u8 v103, v103
	ds_load_u8 v104, v104
	ds_load_u8 v100, v100
	ds_load_u8 v109, v109
	ds_load_u8 v110, v110
	ds_load_u8 v107, v107
	ds_load_u8 v113, v113
	ds_load_u8 v114, v114
	ds_load_u8 v111, v111
	ds_load_u8 v112, v112
	ds_load_u8 v108, v108
	ds_load_u8 v85, v85
	ds_load_u8 v86, v86
	ds_load_u8 v83, v83
	ds_load_u8 v89, v89
	ds_load_u8 v90, v90
	ds_load_u8 v87, v87
	ds_load_u8 v88, v88
	ds_load_u8 v84, v84
	ds_load_u8 v93, v93
	ds_load_u8 v94, v94
	ds_load_u8 v91, v91
	ds_load_u8 v97, v97
	ds_load_u8 v98, v98
	ds_load_u8 v95, v95
	ds_load_u8 v96, v96
	ds_load_u8 v92, v92
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	v_perm_b32 v100, v106, v105, 0xc0c0004
	v_lshl_or_b32 v119, v72, 16, v70
	v_perm_b32 v70, v121, v117, 0xc0c0004
	v_perm_b32 v72, v115, v82, 0xc0c0004
	v_perm_b32 v115, v211, v69, 0xc0c0004
	v_lshl_or_b32 v118, v75, 16, v74
	v_dual_mov_b32 v82, s11 :: v_dual_mov_b32 v81, s10
	v_perm_b32 v121, v68, v67, 0xc0c0004
	v_lshl_or_b32 v117, v72, 16, v70
	v_dual_mov_b32 v80, s9 :: v_dual_mov_b32 v79, s8
	v_dual_mov_b32 v78, s7 :: v_dual_mov_b32 v77, s6
	v_dual_mov_b32 v76, s5 :: v_dual_mov_b32 v75, s4
	v_perm_b32 v203, v204, v203, 0xc0c0004
	v_perm_b32 v202, v202, v212, 0xc0c0004
	v_perm_b32 v206, v208, v207, 0xc0c0004
	v_perm_b32 v207, v71, v205, 0xc0c0004
	v_lshl_or_b32 v205, v121, 16, v115
	v_perm_b32 v115, v210, v209, 0xc0c0004
	v_perm_b32 v121, v214, v213, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[67:74], v[117:120], v[60:63], v[75:82] neg_lo:[1,1,0]
	v_lshl_or_b32 v204, v202, 16, v203
	v_lshl_or_b32 v203, v207, 16, v206
	v_perm_b32 v102, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v103, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v104, v108, v107, 0xc0c0004
	v_perm_b32 v105, v114, v113, 0xc0c0004
	v_perm_b32 v106, v112, v111, 0xc0c0004
	v_lshl_or_b32 v202, v121, 16, v115
	v_lshl_or_b32 v209, v99, 16, v101
	v_lshl_or_b32 v208, v102, 16, v100
	v_lshl_or_b32 v207, v104, 16, v103
	v_lshl_or_b32 v206, v106, 16, v105
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v99, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v100, v84, v83, 0xc0c0004
	v_perm_b32 v101, v90, v89, 0xc0c0004
	v_perm_b32 v102, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	v_perm_b32 v92, v98, v97, 0xc0c0004
	v_perm_b32 v94, v96, v95, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[67:74], v[202:205], v[56:59], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[206:209], v[60:63], v[75:82] neg_lo:[1,1,0]
	v_lshl_or_b32 v213, v100, 16, v99
	v_lshl_or_b32 v212, v102, 16, v101
	v_lshl_or_b32 v211, v91, 16, v93
	v_lshl_or_b32 v210, v94, 16, v92
	v_wmma_i32_16x16x16_iu8 v[91:98], v[117:120], v[52:55], v[75:82] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v70
	v_wmma_i32_16x16x16_iu8 v[99:106], v[117:120], v[48:51], v[75:82] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[210:213], v[56:59], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[202:205], v[44:47], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[206:209], v[52:55], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[206:209], v[48:51], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[117:120], v[36:39], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[206:209], v[36:39], v[75:82] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v72
	v_wmma_i32_16x16x16_iu8 v[48:55], v[202:205], v[32:35], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[210:213], v[44:47], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[210:213], v[32:35], v[75:82] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v32, v67
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v92
	v_wmma_i32_16x16x16_iu8 v[99:106], v[202:205], v[40:43], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[210:213], v[40:43], v[107:114] neg_lo:[1,1,0]
	scratch_store_b32 off, v32, off offset:96 ; 4-byte Folded Spill
	v_mov_b32_e32 v115, v126
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v94
	v_cvt_f32_i32_e32 v218, v68
	v_cvt_f32_i32_e32 v66, v69
	v_cvt_f32_i32_e32 v2, v71
	v_cvt_f32_i32_e32 v205, v73
	v_cvt_f32_i32_e32 v208, v74
	v_cvt_f32_i32_e32 v121, v83
	v_cvt_f32_i32_e32 v126, v84
	v_cvt_f32_i32_e32 v74, v85
	v_cvt_f32_i32_e32 v202, v86
	v_cvt_f32_i32_e32 v119, v87
	v_cvt_f32_i32_e32 v120, v88
	v_cvt_f32_i32_e32 v117, v89
	v_cvt_f32_i32_e32 v118, v90
	v_cvt_f32_i32_e32 v142, v91
	v_cvt_f32_i32_e32 v255, v93
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v6, v95
	v_cvt_f32_i32_e32 v94, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v5, v98
	v_cvt_f32_i32_e32 v91, v56
	v_cvt_f32_i32_e32 v92, v57
	v_cvt_f32_i32_e32 v0, v58
	v_cvt_f32_i32_e32 v1, v59
	v_cvt_f32_i32_e32 v89, v60
	v_cvt_f32_i32_e32 v90, v61
	v_cvt_f32_i32_e32 v87, v62
	v_cvt_f32_i32_e32 v88, v63
	v_cvt_f32_i32_e32 v204, v99
	v_cvt_f32_i32_e32 v190, v100
	v_cvt_f32_i32_e32 v253, v101
	v_cvt_f32_i32_e32 v203, v102
	v_cvt_f32_i32_e32 v8, v103
	v_cvt_f32_i32_e32 v10, v104
	v_mov_b32_e32 v104, v122
	v_mov_b32_e32 v122, v127
	v_mov_b32_e32 v212, v136
	v_cvt_f32_i32_e32 v11, v105
	v_mov_b32_e32 v105, v128
	v_mov_b32_e32 v128, v184
	v_dual_mov_b32 v206, v181 :: v_dual_mov_b32 v181, v195
	v_cvt_f32_i32_e32 v99, v106
	v_dual_mov_b32 v106, v153 :: v_dual_mov_b32 v153, v163
	v_mov_b32_e32 v163, v146
	v_cvt_f32_i32_e32 v3, v107
	v_dual_mov_b32 v107, v154 :: v_dual_mov_b32 v154, v168
	v_mov_b32_e32 v168, v194
	v_cvt_f32_i32_e32 v93, v108
	v_dual_mov_b32 v108, v155 :: v_dual_mov_b32 v155, v173
	v_mov_b32_e32 v173, v183
	v_cvt_f32_i32_e32 v95, v109
	v_dual_mov_b32 v109, v156 :: v_dual_mov_b32 v156, v174
	v_dual_mov_b32 v174, v189 :: v_dual_mov_b32 v189, v144
	v_cvt_f32_i32_e32 v96, v110
	v_dual_mov_b32 v110, v157 :: v_dual_mov_b32 v157, v175
	v_mov_b32_e32 v175, v201
	v_cvt_f32_i32_e32 v85, v111
	v_cvt_f32_i32_e32 v86, v112
	v_mov_b32_e32 v112, v158
	v_mov_b32_e32 v158, v176
	v_mov_b32_e32 v176, v252
	v_cvt_f32_i32_e32 v83, v113
	v_mov_b32_e32 v113, v159
	v_mov_b32_e32 v159, v177
	v_mov_b32_e32 v177, v145
	v_dual_mov_b32 v145, v234 :: v_dual_mov_b32 v234, v236
	v_dual_mov_b32 v236, v237 :: v_dual_mov_b32 v237, v238
	v_mov_b32_e32 v238, v239
	v_mov_b32_e32 v239, v167
	v_cvt_f32_i32_e32 v84, v114
	v_dual_mov_b32 v114, v125 :: v_dual_mov_b32 v125, v143
	v_dual_mov_b32 v143, v164 :: v_dual_mov_b32 v164, v193
	v_cvt_f32_i32_e32 v210, v48
	v_cvt_f32_i32_e32 v127, v49
	v_cvt_f32_i32_e32 v146, v50
	v_cvt_f32_i32_e32 v183, v51
	v_cvt_f32_i32_e32 v100, v52
	v_cvt_f32_i32_e32 v101, v53
	v_cvt_f32_i32_e32 v102, v54
	v_cvt_f32_i32_e32 v103, v55
	v_cvt_f32_i32_e32 v7, v75
	v_cvt_f32_i32_e32 v4, v76
	v_cvt_f32_i32_e32 v98, v77
	v_cvt_f32_i32_e32 v9, v78
	v_cvt_f32_i32_e32 v69, v79
	v_cvt_f32_i32_e32 v70, v80
	v_cvt_f32_i32_e32 v67, v81
	v_cvt_f32_i32_e32 v68, v82
.LBB0_16:
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v36, off, off offset:1112
	scratch_load_b32 v50, off, off offset:1020
	scratch_load_b32 v111, off, off offset:748
	scratch_load_b32 v55, off, off offset:880
	scratch_load_b32 v57, off, off offset:824
	scratch_load_b32 v60, off, off offset:736
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, 0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_mov_b16_e64 v35.h, v226.l
	v_mov_b16_e64 v34.h, v225.l
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v49, off, off offset:1056
	scratch_load_b32 v51, off, off offset:1016
	scratch_load_b32 v58, off, off offset:820
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_mov_b16_e32 v35.l, v32.l
	v_mov_b16_e32 v34.l, v32.l
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v42, off, off offset:1120
	scratch_load_b32 v43, off, off offset:1116
	scratch_load_b32 v48, off, off offset:1060
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_mov_b16_e64 v32.h, v254.l
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v70, off offset:228
	scratch_store_b32 off, v69, off offset:224
	scratch_store_b32 off, v68, off offset:220
	scratch_store_b32 off, v67, off offset:216
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v56, off, off offset:876 ; 4-byte Folded Reload
	v_mov_b32_e32 v167, v74
	v_mov_b32_e32 v249, v87
	v_mov_b32_e32 v245, v83
	v_mov_b32_e32 v247, v85
	v_dual_mov_b32 v207, v2 :: v_dual_mov_b32 v2, v0
	v_mov_b32_e32 v0, v92
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s35, 31
	v_dual_mov_b32 v209, v205 :: v_dual_mov_b32 v70, v7
	s_lshr_b32 s1, s1, 27
	v_mov_b32_e32 v205, v91
	s_add_i32 s1, s35, s1
	v_mov_b32_e32 v250, v88
	s_ashr_i32 s1, s1, 5
	v_mov_b32_e32 v219, v96
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s1, s48
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s4, s1, s34
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s5, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s30, s14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	v_mov_b32_e32 v7, v4
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s31, s15
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s33, s33, s27
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v59, off, off offset:964 ; 4-byte Folded Reload
	v_mov_b32_e32 v74, v126
	v_mov_b32_e32 v246, v84
	v_mov_b32_e32 v252, v90
	v_mov_b32_e32 v216, v93
	v_mov_b32_e32 v248, v86
	s_waitcnt vmcnt(13)
	v_dual_mov_b32 v244, v95 :: v_dual_mul_f32 v37, v36, v35
	scratch_load_b32 v36, off, off offset:316 ; 4-byte Folded Reload
	v_mul_f32_e32 v33, v215, v35
	v_mov_b32_e32 v215, v3
	v_mov_b32_e32 v3, v121
	scratch_load_b32 v121, off, off offset:732 ; 4-byte Folded Reload
	s_waitcnt vmcnt(14)
	v_mul_f32_e32 v50, v50, v32
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(12)
	v_mul_f32_e32 v55, v55, v32
	s_waitcnt vmcnt(11)
	v_mul_f32_e32 v57, v57, v32
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(9)
	v_mul_f32_e32 v49, v49, v32
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v141, v50, v31, v157
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v50, off, off offset:828 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(7)
	v_mul_f32_e32 v42, v42, v34
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v37, v37, v28, v165
	v_fma_f32 v69, v49, v28, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, v42, v31, v161
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v235, v161, v42, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v59, v59, v34
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v40, v36, v34
	scratch_load_b32 v36, off, off offset:1124 ; 4-byte Folded Reload
	v_mul_f32_e32 v38, v221, v35
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v221, v59, v24, v129
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v59, off, off offset:996 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v40, v40, v29, v153
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v41, v36, v34
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v36, v33, v29, v155
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_mov_b16_e64 v33.h, v241.l
	v_mov_b16_e32 v33.l, v32.l
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v43, v43, v34
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v38, v38, v31, v154
	v_fma_f32 v41, v41, v28, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v39, v243, v35 :: v_dual_mul_f32 v44, v65, v33
	v_mul_f32_e32 v45, v224, v33
	v_mul_f32_e32 v46, v222, v33
	v_mul_f32_e32 v47, v220, v33
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v39, v39, v30, v143
	v_fma_f32 v43, v43, v30, v160
	v_fma_f32 v45, v45, v28, v112
	v_fma_f32 v46, v46, v31, v111
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v28, off, off offset:864
	scratch_load_b32 v31, off, off offset:868
	scratch_load_b32 v65, off, off offset:744
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v51, v51, v32
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v67, v47, v30, v223
	v_fma_f32 v44, v44, v29, v113
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v59, v59, v33
	v_mov_b32_e32 v251, v89
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v71, v51, v30, v156
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v30, off, off offset:872 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v48, v48, v32 :: v_dual_mul_f32 v51, v50, v34
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v50, off, off offset:852 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v226, v59, v27, v140
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v59, off, off offset:952 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v68, v48, v29, v159
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v29, off, off offset:856 ; 4-byte Folded Reload
	v_mov_b32_e32 v220, v98
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v232, v162, v41, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v47, v31, v35
	scratch_load_b32 v31, off, off offset:840 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v30, v30, v35
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v52, v50, v33
	scratch_load_b32 v50, off, off offset:848 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v59, v59, v32
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v52, v52, v17, v175
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v231, v59, v26, v107
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v48, v31, v34
	scratch_load_b32 v31, off, off offset:832 ; 4-byte Folded Reload
	v_mul_f32_e32 v28, v28, v35
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v48, v48, v17, v234
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v28, v28, v17, v239
	v_fma_f32 v17, v55, v17, v145
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v55, off, off offset:1008 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v58, v58, v32
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v53, v50, v33
	scratch_load_b32 v50, off, off offset:860 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v201, v239, v28, s2
	v_cndmask_b32_e64 v197, v234, v48, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v49, v31, v34
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v31, v30, v19, v237
	v_fma_f32 v30, v47, v18, v236
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fma_f32 v47, v49, v16, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v49, off, off offset:836 ; 4-byte Folded Reload
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v55, v55, v35
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v72, v55, v25, v106
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v55, off, off offset:1000 ; 4-byte Folded Reload
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v49, v49, v34
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v55, v55, v35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v73, v55, v24, v105
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v55, off, off offset:968 ; 4-byte Folded Reload
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v54, v50, v33
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v50, v49, v19, v60
	v_fma_f32 v49, v51, v18, v176
	v_fma_f32 v51, v53, v16, v166
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v53, v54, v19, v169
	v_fma_f32 v19, v57, v19, v189
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:1004
	scratch_load_b32 v54, off, off offset:844
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v194, v176, v49, s2
	v_cndmask_b32_e64 v28, v169, v53, s2
	v_cndmask_b32_e64 v214, v189, v19, s2
	v_cndmask_b32_e64 v53, v145, v17, s2
	v_cndmask_b32_e64 v195, v60, v50, s2
	v_cndmask_b32_e64 v59, v166, v51, s2
	v_cndmask_b32_e64 v60, v175, v52, s2
	v_cndmask_b32_e64 v169, v159, v68, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v55, v55, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v196, v55, v27, v130
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v55, off, off offset:984 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v57, v57, v35 :: v_dual_mul_f32 v54, v54, v33
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v76, v57, v26, v148
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v57, off, off offset:992 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v54, v54, v18, v199
	v_fma_f32 v18, v58, v18, v181
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v58, off, off offset:976 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v148, v76, s2
	v_cndmask_b32_e64 v193, v181, v18, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v57, v57, v33 :: v_dual_mul_f32 v58, v58, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v224, v57, v25, v187
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v57, off, off offset:972 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v211, v58, v25, v198
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v58, off, off offset:988 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v211, v198, v211, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v57, v57, v32 :: v_dual_mul_f32 v58, v58, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v222, v57, v24, v109
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v57, off, off offset:760 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v225, v58, v24, v188
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v58, off, off offset:956
	scratch_load_b32 v24, off, off offset:800
	v_mul_f32_e32 v55, v55, v33
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v29, v29, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v145, v188, v225, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v29, v29, v16, v238
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v239, v238, v29, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v57, v57, v32
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v58, v58, v32
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v24, v24, v35
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v87, v57, v15, v168
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v230, v58, v27, v108
	v_mov_b32_e32 v58, v118
	v_fma_f32 v228, v55, v26, v139
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v55, v24, v13, v174
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v24, off, off offset:808 ; 4-byte Folded Reload
	v_mul_f32_e32 v56, v56, v32
	scratch_load_b32 v118, off, off offset:728 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v184, v174, v55, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v16, v56, v16, v147
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v56, off, off offset:1012 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v56, v56, v35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v75, v56, v27, v152
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v56, off, off offset:960
	scratch_load_b32 v27, off, off offset:772
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v152, v75, s2
	v_cndmask_b32_e64 v152, v187, v224, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v56, v56, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v126, v56, v26, v192
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v56, off, off offset:980
	scratch_load_b32 v26, off, off offset:804
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v24, v24, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v144, v192, v126, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v61, v24, v15, v173
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v24, off, off offset:776 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v240, v173, v61, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v56, v56, v32
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v243, v56, v25, v110
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v25, off, off offset:796 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v24, v24, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v78, v24, v15, v121
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v24, off, off offset:792 ; 4-byte Folded Reload
	v_mul_f32_e32 v26, v26, v35
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v62, v26, v14, v163
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:788 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v181, v163, v62, s2
	v_cndmask_b32_e64 v163, v113, v44, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v25, v25, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v56, v25, v12, v128
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v25, off, off offset:764 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v27, v27, v34 :: v_dual_mul_f32 v24, v24, v33
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v63, v27, v13, v206
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v27, off, off offset:780 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v82, v24, v15, v179
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:928
	scratch_load_b32 v24, off, off offset:816
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v26, v26, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v179, v82, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v80, v26, v13, v185
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:812 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v25, v25, v34
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v27, v27, v33
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v15, v15, v34 :: v_dual_mul_f32 v24, v24, v32
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v81, v27, v12, v180
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v27, off, off offset:756 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v92, v15, v21, v137
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v15, off, off offset:940 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v84, v24, v13, v177
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:896
	scratch_load_b32 v24, off, off offset:884
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v26, v26, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v85, v26, v12, v125
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v65, v47, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v27, v27, v32
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v15, v15, v33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v13, v13, v35
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v86, v27, v14, v164
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v24, v24, v32
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v4, v15, v20, v182
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v15, off, off offset:888 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v89, v13, v20, v150
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v13, off, off offset:920 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v229, v24, v22, v114
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v156, v71, s2
	v_cndmask_b32_e64 v71, v155, v36, s2
	v_cndmask_b32_e64 v156, v111, v46, s2
	v_cndmask_b32_e64 v155, v223, v67, s2
	v_cndmask_b32_e64 v89, v150, v89, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v15, v15, v32
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v13, v34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v241, v15, v23, v115
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	scratch_load_b32 v15, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v77, v25, v12, v118
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:768
	scratch_load_b32 v12, off, off offset:904
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v93, v13, v20, v186
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v13, off, off offset:916 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v176, v118, v77, s2
	v_cndmask_b32_e64 v118, v185, v80, s2
	v_cndmask_b32_e64 v150, v186, v93, s2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v15, v15, s1, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v25, v25, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v13, v34
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v79, v25, v14, v212
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v25, off, off offset:784 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v95, v13, v22, v134
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v13, off, off offset:936 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v174, v212, v79, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v25, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v83, v25, v14, v178
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v14, off, off offset:900 ; 4-byte Folded Reload
	v_mul_f32_e32 v12, v12, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v236, v30, s2
	v_cndmask_b32_e64 v61, v178, v83, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v88, v12, v21, v151
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v12, off, off offset:908 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v88, v151, v88, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v14, v14, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v91, v14, v22, v131
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v14, off, off offset:944 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v91, v131, v91, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v33
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v96, v14, v21, v132
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v14, off, off offset:912 ; 4-byte Folded Reload
	v_mul_f32_e32 v12, v12, v35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v90, v12, v23, v149
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v12, off, off offset:924 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v90, v149, v90, s2
	v_cndmask_b32_e64 v149, v134, v95, s2
	v_cndmask_b32_e64 v134, v182, v4, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v14, v14, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v242, v14, v20, v122
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v14, v104, s1, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v12, v12, v34 :: v_dual_mul_f32 v13, v13, v33
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v217, v12, v23, v135
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v12, off, off offset:948 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v12, v12, v33
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v98, v12, v23, v124
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v12, off, off offset:932 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v12, v12, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v254, v12, v21, v138
	v_mov_b32_e32 v12, v199
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v199, v237, v31, s2
	v_cndmask_b32_e64 v57, v12, v54, s2
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v12, v172, s4, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v147, v16, s2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v16, v170, s1, 1
	v_mov_b32_e32 v213, v66
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v66, v13, v22, v123
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v13, v171, s1, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v147, v130, v196, s2
	v_cndmask_b32_e64 v130, v124, v98, s2
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v12, v12, s[28:31], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_lshlrev_b32 v12, 16, v12
	s_clause 0x3
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	buffer_load_u16 v16, v16, s[12:15], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v227, v12 offset:36864
	scratch_load_b32 v12, off, off offset:1052 ; 4-byte Folded Reload
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v27, 16, v16
	v_lshlrev_b32_e32 v189, 16, v13
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v16, v12, v189
	scratch_load_b32 v12, off, off offset:1048 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v12, v189
	scratch_load_b32 v12, off, off offset:1044 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v12, v189
	scratch_load_b32 v12, off, off offset:1040 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v12, v189
	scratch_load_b32 v12, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v49, 16, v15
	v_lshlrev_b32_e32 v65, 16, v14
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v20, v12, v65
	scratch_load_b32 v12, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v95, v219, v49
	v_mul_f32_e32 v44, v190, v49
	v_mul_f32_e32 v46, v203, v49
	v_mul_f32_e32 v67, v253, v49
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v12, v65
	scratch_load_b32 v12, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v12, v65
	scratch_load_b32 v12, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v68, v127, v27
	v_mul_f32_e32 v82, v146, v27
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v98, v70, v27 :: v_dual_mul_f32 v23, v12, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v12, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v29, v12, v49
	scratch_load_b32 v12, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v30, v12, v49
	scratch_load_b32 v12, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v41, v142, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v142, v140, v226, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v93, v2, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v12, v49
	scratch_load_b32 v12, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v12, v49
	scratch_load_b32 v12, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v48, v12, v27
	scratch_load_b32 v12, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v36, v218, v189
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v50, v12, v27
	scratch_load_b32 v12, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v51, v12, v27
	scratch_load_b32 v12, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v52, v12, v27
	ds_load_b128 v[12:15], v64 offset:36864
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v171, v16, v13, v201
	v_fma_f32 v16, v29, v13, v60
	v_fma_f32 v237, v21, v12, v26
	v_fma_f32 v172, v18, v15, v199
	v_fma_f32 v238, v20, v13, v197
	v_fma_f32 v234, v22, v15, v195
	scratch_store_b32 off, v16, off offset:164 ; 4-byte Folded Spill
	v_fma_f32 v16, v30, v12, v59
	v_fma_f32 v233, v23, v14, v194
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v164, v86, s2
	v_cndmask_b32_e64 v30, v168, v87, s2
	v_cndmask_b32_e64 v168, v158, v69, s2
	scratch_store_b32 off, v16, off offset:156 ; 4-byte Folded Spill
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v16, v31, v15, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v177, v84, s2
	v_mov_b32_e32 v84, v183
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v170, v17, v12, v239
	v_fma_f32 v12, v50, v12, v54
	scratch_store_b32 off, v16, off offset:152 ; 4-byte Folded Spill
	v_fma_f32 v16, v47, v14, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v183, v128, v56, s2
	v_cndmask_b32_e64 v47, v125, v85, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	scratch_store_b32 off, v12, off offset:140 ; 4-byte Folded Spill
	v_fma_f32 v12, v48, v13, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v177, v206, v63, s2
	v_cndmask_b32_e64 v63, v180, v81, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v69, v210, v27
	v_mul_f32_e32 v81, v84, v27
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	scratch_store_b32 off, v12, off offset:144 ; 4-byte Folded Spill
	v_fma_f32 v12, v51, v14, v193
	scratch_store_b32 off, v16, off offset:148 ; 4-byte Folded Spill
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v125, v157, v141, s2
	v_cndmask_b32_e64 v206, v129, v221, s2
	v_cndmask_b32_e64 v141, v139, v228, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	scratch_store_b32 off, v12, off offset:132 ; 4-byte Folded Spill
	v_fma_f32 v12, v52, v15, v214
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v128, v123, v66, s2
	v_cndmask_b32_e64 v157, v135, v217, s2
	scratch_store_b32 off, v12, off offset:136 ; 4-byte Folded Spill
	v_mov_b32_e32 v12, v121
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v236, v19, v14, v25
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v175, v12, v78, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v12, off, off offset:1028 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v16, v12, v189
	scratch_load_b32 v12, off, off offset:1024 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v12, v189
	scratch_load_b32 v12, off, off offset:1036 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v12, v189
	scratch_load_b32 v12, off, off offset:1032 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v12, v189
	scratch_load_b32 v12, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v12, v65
	scratch_load_b32 v12, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v12, v65
	scratch_load_b32 v12, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v12, v65
	scratch_load_b32 v12, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v23, v12, v65
	scratch_load_b32 v12, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v48, v12, v49
	scratch_load_b32 v12, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v50, v12, v49
	scratch_load_b32 v12, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v55, v12, v49
	scratch_load_b32 v12, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v56, v12, v49
	scratch_load_b32 v12, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v77, v12, v27
	scratch_load_b32 v12, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v78, v12, v27
	scratch_load_b32 v12, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v79, v12, v27
	scratch_load_b32 v12, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v80, v12, v27
	ds_load_b128 v[12:15], v64 offset:36880
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v52, v17, v12, v183
	v_fma_f32 v179, v21, v12, v176
	v_fma_f32 v50, v50, v12, v63
	v_fma_f32 v12, v78, v12, v47
	v_fma_f32 v180, v20, v13, v177
	v_fma_f32 v51, v16, v13, v184
	v_fma_f32 v121, v18, v15, v240
	v_fma_f32 v185, v19, v14, v181
	v_fma_f32 v178, v22, v15, v175
	v_fma_f32 v173, v23, v14, v174
	v_fma_f32 v48, v48, v13, v118
	v_fma_f32 v55, v55, v15, v62
	v_fma_f32 v56, v56, v14, v61
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v154, v38, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	scratch_store_b32 off, v12, off offset:108 ; 4-byte Folded Spill
	v_fma_f32 v12, v77, v13, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v165, v37, s2
	v_cndmask_b32_e64 v63, v63, v50, s3
	v_cndmask_b32_e64 v62, v62, v55, s3
	v_cndmask_b32_e64 v61, v61, v56, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	scratch_store_b32 off, v12, off offset:112 ; 4-byte Folded Spill
	v_fma_f32 v12, v79, v14, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v143, v39, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v39, v213, v189
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	scratch_store_b32 off, v12, off offset:100 ; 4-byte Folded Spill
	v_fma_f32 v12, v80, v15, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v153, v40, s2
	v_cndmask_b32_e64 v153, v110, v243, s2
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	scratch_store_b32 off, v12, off offset:104 ; 4-byte Folded Spill
	scratch_load_b32 v12, off, off offset:892 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v12, v12, s4, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v12
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[16:19], v64 offset:37376
	ds_load_b128 v[12:15], v64 offset:37392
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v227, v20 offset:36864
	scratch_load_b32 v20, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v227, v160, v43, s2
	v_cndmask_b32_e64 v160, v112, v45, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v45, v204, v49
	v_mul_f32_e32 v43, v255, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v204, v137, v92, s2
	v_cndmask_b32_e64 v137, v132, v96, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v96, v244, v49
	v_mul_f32_e32 v92, v1, v65
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v37, v20, v189
	scratch_load_b32 v20, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v38, v20, v189
	scratch_load_b32 v20, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v20, v65
	scratch_load_b32 v20, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v42, v20, v65
	ds_load_b128 v[20:23], v64 offset:36864
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v84, v37, v20, v77
	v_fma_f32 v104, v41, v20, v232
	v_fma_f32 v165, v45, v20, v160
	v_fma_f32 v69, v69, v20, v168
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v20, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v83, v36, v21, v71
	v_fma_f32 v85, v38, v23, v78
	v_fma_f32 v86, v39, v22, v79
	v_fma_f32 v87, v40, v21, v80
	v_fma_f32 v213, v42, v23, v235
	v_fma_f32 v212, v43, v22, v227
	v_fma_f32 v166, v44, v21, v163
	v_fma_f32 v162, v46, v23, v156
	v_fma_f32 v158, v67, v22, v155
	v_fma_f32 v223, v68, v21, v169
	v_fma_f32 v67, v82, v22, v24
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v82, v105, v73, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v40, v94, v65
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v154, v81, v23, v125
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v81, v106, v72, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v68, v10, v49
	v_mul_f32_e32 v72, v8, v49
	v_mul_f32_e32 v73, v99, v49
	v_mul_f32_e32 v105, v11, v49
	v_mul_f32_e32 v99, v9, v27
	scratch_load_b128 v[8:11], off, off offset:1096 ; 16-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v109, v222, s2
	v_cndmask_b32_e64 v44, v107, v231, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v37, v207, v189
	v_mul_f32_e32 v41, v6, v65
	v_dual_mul_f32 v42, v5, v65 :: v_dual_mul_f32 v107, v100, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v108, v230, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v38, v208, v189
	v_mul_f32_e32 v39, v209, v189
	v_mul_f32_e32 v43, v97, v65
	v_mul_f32_e32 v106, v101, v27
	v_mul_f32_e32 v108, v103, v27
	v_mul_f32_e32 v109, v102, v27
	v_mul_f32_e32 v100, v220, v27
	v_mul_f32_e32 v94, v215, v49
	v_mul_f32_e32 v97, v7, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v169, v223, s3
	v_cndmask_b32_e64 v69, v168, v69, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v36, v20, v189
	ds_load_b128 v[20:23], v64 offset:36880
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v111, v37, v20, v82
	v_fma_f32 v209, v41, v20, v206
	v_fma_f32 v159, v72, v20, v145
	v_fma_f32 v140, v107, v20, v46
	v_mov_b32_e32 v20, v138
	v_fma_f32 v110, v36, v21, v81
	v_fma_f32 v112, v38, v23, v75
	v_fma_f32 v113, v39, v22, v76
	v_fma_f32 v210, v40, v21, v211
	v_fma_f32 v207, v42, v23, v147
	v_fma_f32 v203, v43, v22, v144
	v_fma_f32 v164, v68, v21, v152
	v_fma_f32 v148, v73, v23, v142
	v_fma_f32 v143, v105, v22, v141
	v_fma_f32 v68, v106, v21, v153
	v_fma_f32 v139, v108, v23, v45
	v_fma_f32 v138, v109, v22, v44
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v122, v242, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v39, v3, v189
	v_mul_f32_e32 v42, v202, v189
	v_mul_f32_e32 v73, v205, v65
	v_mul_f32_e32 v38, v74, v189
	v_mul_f32_e32 v43, v167, v189
	v_mul_f32_e32 v72, v0, v65
	v_mul_f32_e32 v74, v216, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v114, v229, s2
	v_cndmask_b32_e64 v37, v115, v241, s2
	v_cndmask_b32_e64 v41, v20, v254, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[20:23], v64 offset:37376
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v153, v68, s3
	v_cndmask_b32_e64 v46, v46, v140, s3
	v_cndmask_b32_e64 v45, v45, v139, s3
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v102, v39, v20, v89
	v_fma_f32 v103, v42, v23, v90
	v_fma_f32 v205, v73, v20, v150
	v_fma_f32 v146, v94, v20, v134
	v_fma_f32 v42, v98, v20, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v71, v83, s3
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v101, v38, v21, v88
	v_fma_f32 v105, v43, v22, v91
	v_fma_f32 v208, v72, v21, v204
	v_fma_f32 v151, v74, v21, v137
	v_fma_f32 v43, v97, v21, v41
	v_fma_f32 v161, v93, v22, v149
	v_fma_f32 v132, v96, v22, v128
	v_fma_f32 v38, v100, v22, v36
	v_fma_f32 v202, v92, v23, v157
	v_fma_f32 v135, v95, v23, v130
	v_fma_f32 v39, v99, v23, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v41, v43, s3
	v_cndmask_b32_e64 v40, v40, v42, s3
	v_cndmask_b32_e64 v36, v36, v38, s3
	v_cndmask_b32_e64 v37, v37, v39, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.h, v32.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v22, null, v21, v21, v20
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v71, v23
	v_div_scale_f32 v71, vcc_lo, v20, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v71, v23
	v_fma_f32 v73, -v22, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v23
	v_fma_f32 v22, -v22, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v22, v22, v23, v72
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v77, v84, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v71, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v71, v71
	v_ldexp_f32 v71, v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v72, 1.0, v71
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v72, v72, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v73, v71
	v_fma_f32 v74, -v71, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v23, v72, v23
	v_mul_f32_e32 v77, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v71, v77, v74
	v_fmac_f32_e32 v77, v83, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v71, v77, v74
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v78, v85, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v73, v71, v73, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v71, 0xbfb8aa3b, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v72, v73, v72, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v81, v110, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v73, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v74
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v71, v71, v77
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v77, 1.0, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v77, v77, v74
	v_rcp_f32_e32 v78, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v71, v78, 1.0
	v_fmac_f32_e32 v78, v83, v78
	v_div_scale_f32 v83, vcc_lo, v74, v77, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v84, v83, v78
	v_fma_f32 v85, -v71, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v78
	v_fma_f32 v71, -v71, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v78, v71, v78, v84
	v_div_fixup_f32 v71, v22, v21, v20
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v79, v86, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v22, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v79, v22
	v_fma_f32 v83, -v22, v79, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v83, v79
	v_div_scale_f32 v83, vcc_lo, v20, v21, v20
	v_mul_f32_e32 v84, v83, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v22, v84, v83
	v_fmac_f32_e32 v84, v85, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v84, v83
	v_div_fmas_f32 v22, v22, v79, v84
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v23
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v73, v73, v79
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v79, 1.0, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, null, v79, v79, v23
	v_rcp_f32_e32 v81, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v73, v81, 1.0
	v_fmac_f32_e32 v81, v83, v81
	v_div_scale_f32 v83, vcc_lo, v23, v79, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v84, v83, v81
	v_fma_f32 v85, -v73, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v81
	v_fma_f32 v73, -v73, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v81, v73, v81, v84
	v_div_fixup_f32 v73, v78, v77, v74
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v82, v111, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v74, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v74
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v74, v74
	v_ldexp_f32 v74, v74, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v78, 1.0, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v74, null, v78, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v82, v74
	v_fma_f32 v83, -v74, v82, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, vcc_lo, v77, v78, v77
	v_mul_f32_e32 v84, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v74, v84, v83
	v_fmac_f32_e32 v84, v85, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v74, v84, v83
	v_div_fmas_f32 v82, v74, v82, v84
	v_div_fixup_f32 v74, v22, v21, v20
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v75, v112, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v22, null, v21, v21, v20
	v_rcp_f32_e32 v75, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v22, v75, 1.0
	v_fmac_f32_e32 v75, v83, v75
	v_div_scale_f32 v83, vcc_lo, v20, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v84, v83, v75
	v_fma_f32 v85, -v22, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v75
	v_fma_f32 v22, -v22, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v22, v22, v75, v84
	v_div_fixup_f32 v75, v81, v79, v23
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v76, v113, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v122, v22, v21, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v89, v102, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v76, 0xbfb8aa3b, v23 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v76
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v23
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v76, v76, v79
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v79, 1.0, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v76, null, v79, v79, v23
	v_rcp_f32_e32 v81, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v76, v81, 1.0
	v_fmac_f32_e32 v81, v83, v81
	v_div_scale_f32 v83, vcc_lo, v23, v79, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v84, v83, v81
	v_fma_f32 v85, -v76, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v81
	v_fma_f32 v76, -v76, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v81, v76, v81, v84
	v_div_fixup_f32 v76, v82, v78, v77
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v88, v101, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v123, v81, v79, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v90, v103, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v78, 0xbfb8aa3b, v77 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v79
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v78
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v77
	v_exp_f32_e32 v78, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v78, v78, v82
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v78, 1.0, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v78, v78, v77
	v_rcp_f32_e32 v83, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v82, v83, 1.0
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v77, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v84, v83
	v_fma_f32 v86, -v82, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v86, v83
	v_fma_f32 v82, -v82, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v82, v83, v85
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v124, v82, v78, v77
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v91, v105, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v22, null, v21, v21, v20
	v_rcp_f32_e32 v83, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v22, v83, 1.0
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v20, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v84, v83
	v_fma_f32 v86, -v22, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v86, v83
	v_fma_f32 v22, -v22, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v83, v85
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v22, v21, v20
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v20, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v79
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v81
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v81, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v23, null, v81, v81, v79
	v_rcp_f32_e32 v83, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v23, v83, 1.0
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v79, v81, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v84, v83
	v_fma_f32 v86, -v23, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v86, v83
	v_fma_f32 v23, -v23, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v83, v23, v83, v85
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v77
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v77
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v78
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v78, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v23, null, v78, v78, v77
	v_rcp_f32_e32 v82, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v23, v82, 1.0
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, vcc_lo, v77, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v84, v82
	v_fma_f32 v86, -v23, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v86, v82
	v_fma_f32 v23, -v23, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v23, v82, v85
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v85, v120, v189
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v115, v82, v78, v77
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v78, v58, v189
	scratch_load_b32 v77, off, off offset:720 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v20, v20, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v20, v20, v9, v133
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v84, v133, v20, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[20:23], v64 offset:37392
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v24, v67, s3
	scratch_load_b32 v24, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v67, 0xbfb8aa3b, v64
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v66, v85, v21, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v84, v84, v66, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v66, v66
	v_ldexp_f32 v66, v66, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v85, 1.0, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v85, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v66
	v_fma_f32 v88, -v66, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v88, vcc_lo, v84, v85, v84
	v_mul_f32_e32 v89, v88, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v66, v89, v88
	v_fmac_f32_e32 v89, v90, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v89, v88
	v_div_fmas_f32 v86, v66, v86, v89
	v_div_fixup_f32 v66, v83, v81, v79
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v79, off, off offset:724 ; 4-byte Folded Reload
	v_mul_f32_e32 v81, v119, v189
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v114, v86, v85, v84
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v84, off, off offset:716 ; 4-byte Folded Reload
	v_mul_f32_e32 v85, v117, v189
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v77, v77, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v77, v77, v11, v200
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v200, v77, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v78, v78, v23, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v77, v78, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v78, 0xbfb8aa3b, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v60, v60, v24, s3
	scratch_load_b32 v24, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v79, v79, v35
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v84, v84, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v79, v79, v8, v191
	v_fma_f32 v84, v84, v10, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v191, v79, s2
	v_cndmask_b32_e64 v84, v116, v84, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v81, v81, v20, v79
	v_fma_f32 v85, v85, v22, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v79, v81, s3
	v_cndmask_b32_e64 v84, v84, v85, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v81, 0xbfb8aa3b, v79
	v_mul_f32_e32 v85, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v83, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v81, v81
	v_ldexp_f32 v81, v81, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v81, 1.0, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v83, null, v81, v81, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v88, v83
	v_fma_f32 v89, -v83, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v79, v81, v79
	v_mul_f32_e32 v90, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v83, v90, v89
	v_fmac_f32_e32 v90, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v83, v90, v89
	v_div_fmas_f32 v83, v83, v88, v90
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v116, v83, v81, v79
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v80, v87, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v80, 0xbfb8aa3b, v79
	v_exp_f32_e32 v78, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v78, v78, v82
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v78, 1.0, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v78, v78, v77
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v82, v88, 1.0
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v77, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v89, v88
	v_fma_f32 v91, -v82, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v88
	v_fma_f32 v82, -v82, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v82, v88, v90
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v85
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v113, v82, v78, v77
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v85, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v86, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v232, v104, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v85, 0xbfb8aa3b, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v59, v59, v24, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v78, 0xbfb8aa3b, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v24, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v85, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v85, v85, v86
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v85, 1.0, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v86, null, v85, v85, v84
	v_rcp_f32_e32 v88, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v86, v88, 1.0
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v84, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v89, v88
	v_fma_f32 v91, -v86, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v88
	v_fma_f32 v86, -v86, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v86, v86, v88, v90
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v80
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v126, v86, v85, v84
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v79
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v80, v80, v81
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v80, 1.0, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v81, null, v80, v80, v79
	v_rcp_f32_e32 v83, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v81, v83, 1.0
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, vcc_lo, v79, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v83
	v_fma_f32 v89, -v81, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v83
	v_fma_f32 v81, -v81, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v81, v81, v83, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v127, v81, v80, v79
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v227, v212, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v77
	v_mul_f32_e32 v80, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v78, v78
	v_ldexp_f32 v78, v78, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v78, 1.0, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v78, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v83, v82
	v_fma_f32 v87, -v82, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, vcc_lo, v77, v78, v77
	v_mul_f32_e32 v88, v87, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v82, v88, v87
	v_fmac_f32_e32 v88, v89, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v82, v88, v87
	v_div_fmas_f32 v82, v82, v83, v88
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v235, v213, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v129, v82, v78, v77
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v84, 0xbfb8aa3b, v83
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v211, v210, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v84
	v_mul_f32_e32 v78, 0xbfb8aa3b, v77
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v83
	v_exp_f32_e32 v84, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v84, v84, v85
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v84, 1.0, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v84, v84, v83
	v_rcp_f32_e32 v86, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v85, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v83, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v85, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v85, -v85, v88, v87
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v58, v28, v24, s3
	scratch_load_b32 v24, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v85, v85, v86, v88
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v131, v85, v84, v83
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v206, v209, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v84, 0xbfb8aa3b, v83
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v80, v80, v81
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v80, 1.0, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v81, null, v80, v80, v79
	v_rcp_f32_e32 v86, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v81, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v79, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v81, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v81, -v81, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v81, v81, v86, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v133, v81, v80, v79
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v147, v207, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v77
	v_mul_f32_e32 v80, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v78, v78
	v_ldexp_f32 v78, v78, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v78, 1.0, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v78, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v82
	v_fma_f32 v87, -v82, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v77, v78, v77
	v_mul_f32_e32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v82, v88, v87
	v_fmac_f32_e32 v88, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v82, v88, v87
	v_div_fmas_f32 v82, v82, v86, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v136, v82, v78, v77
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v144, v203, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v78, 0xbfb8aa3b, v77
	v_exp_f32_e32 v84, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v84, v84, v85
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v84, 1.0, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v84, v84, v83
	v_rcp_f32_e32 v86, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v85, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v83, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v85, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v85, -v85, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v85, v85, v86, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v80
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v144, v85, v84, v83
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v204, v208, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v79
	v_mul_f32_e32 v84, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v80, v80
	v_ldexp_f32 v80, v80, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v80, 1.0, v80
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v81, null, v80, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v81
	v_fma_f32 v87, -v81, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v79, v80, v79
	v_mul_f32_e32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v81, v88, v87
	v_fmac_f32_e32 v88, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v81, v88, v87
	v_div_fmas_f32 v81, v81, v86, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v147, v81, v80, v79
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v150, v205, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v80, 0xbfb8aa3b, v79
	v_exp_f32_e32 v78, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v78, v78, v82
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v78, 1.0, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v78, v78, v77
	v_rcp_f32_e32 v86, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v82, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v77, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v82, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v82, -v82, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v82, v86, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v84
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v150, v82, v78, v77
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v157, v202, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v83
	v_mul_f32_e32 v78, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v84, v84
	v_ldexp_f32 v84, v84, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v84, 1.0, v84
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v84, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v85
	v_fma_f32 v87, -v85, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v83, v84, v83
	v_mul_f32_e32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v85, v88, v87
	v_fmac_f32_e32 v88, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v85, v88, v87
	v_div_fmas_f32 v85, v85, v86, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v157, v85, v84, v83
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v149, v161, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v84, 0xbfb8aa3b, v83
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v80, v80, v81
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v80, 1.0, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v81, null, v80, v80, v79
	v_rcp_f32_e32 v86, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v81, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v79, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v81, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v81, -v81, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v81, v81, v86, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v161, v81, v80, v79
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v77
	v_exp_f32_e32 v78, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v78, v78, v82
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v78, 1.0, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v78, v78, v77
	v_rcp_f32_e32 v86, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v82, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v77, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v82, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v82, -v82, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v82, v86, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v84
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v149, v82, v78, v77
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v77, off, off offset:696
	scratch_load_b32 v78, off, off offset:92
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v83
	v_exp_f32_e32 v84, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v84, v84, v85
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v84, 1.0, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v84, v84, v83
	v_rcp_f32_e32 v86, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v85, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v83, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v85, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v85, -v85, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v85, v85, v86, v88
	v_div_fixup_f32 v202, v85, v84, v83
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v77, v77, v34
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, v77, v9, v78
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v78, v77, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v78, v252, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v78, v78, v21, v77
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v77, v78, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v78, 0xbfb8aa3b, v77
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v78
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v77
	v_exp_f32_e32 v78, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v78, v78, v79
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v78, 1.0, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v79, null, v78, v78, v77
	v_rcp_f32_e32 v80, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v79, v80, 1.0
	v_fmac_f32_e32 v80, v81, v80
	v_div_scale_f32 v81, vcc_lo, v77, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v81, v80
	v_fma_f32 v86, -v79, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v86, v80
	v_fma_f32 v79, -v79, v82, v81
	scratch_load_b32 v81, off, off offset:88 ; 4-byte Folded Reload
	v_div_fmas_f32 v79, v79, v80, v82
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v80, off, off offset:676 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v112, v79, v78, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v163, v166, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v78, 0xbfb8aa3b, v77
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v80, v80, v34
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v80, v80, v8, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v81, v80, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v81, v251, v65
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v81, v81, v20, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v80, v81, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v81, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v81, v81
	v_ldexp_f32 v81, v81, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v81, 1.0, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v81, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v82
	v_fma_f32 v87, -v82, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v80, v81, v80
	v_mul_f32_e32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v82, v88, v87
	v_fmac_f32_e32 v88, v89, v86
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v82, -v82, v88, v87
	scratch_load_b32 v87, off, off offset:84 ; 4-byte Folded Reload
	v_div_fmas_f32 v82, v82, v86, v88
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v86, off, off offset:656 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v111, v82, v81, v80
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v86, v86, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v86, v86, v11, v87
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v87, v86, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v87, v250, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v87, v87, v23, v86
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v86, v87, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v87, 0xbfb8aa3b, v86
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v86
	v_exp_f32_e32 v87, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v87, v87, v88
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v87, 1.0, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v88, null, v87, v87, v86
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v88, v89, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v86, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v88, -v88, v91, v90
	scratch_load_b32 v90, off, off offset:80 ; 4-byte Folded Reload
	v_div_fmas_f32 v88, v88, v89, v91
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v89, off, off offset:644 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v110, v88, v87, v86
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v89, v89, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v89, v89, v10, v90
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v90, v89, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v90, v249, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v90, v90, v22, v89
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v89, v90, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v90, 0xbfb8aa3b, v89
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v90
	v_cndmask_b32_e64 v90, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v89
	v_exp_f32_e32 v90, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v90, v90, v91
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v90, 1.0, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v91, null, v90, v90, v89
	v_rcp_f32_e32 v92, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v91, v92, 1.0
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v89, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v94, v93, v92
	v_fma_f32 v95, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v95, v92
	v_fma_f32 v91, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v91, v91, v92, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v109, v91, v90, v89
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v77
	v_exp_f32_e32 v78, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v78, v78, v79
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v78, 1.0, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v79, null, v78, v78, v77
	v_rcp_f32_e32 v80, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v79, v80, 1.0
	v_fmac_f32_e32 v80, v81, v80
	v_div_scale_f32 v81, vcc_lo, v77, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v81, v80
	v_fma_f32 v83, -v79, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v83, v80
	v_fma_f32 v79, -v79, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v79, v79, v80, v82
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v160, v165, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v160, v79, v78, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v81, 0xbfb8aa3b, v80
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v145, v159, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v60, v60, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_mul_f32_e32 v78, 0xbfb8aa3b, v77
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v80
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v81, v81, v82
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v81, 1.0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v81, v81, v80
	v_rcp_f32_e32 v83, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v82, v83, 1.0
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v80, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v84, v83
	v_fma_f32 v86, -v82, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v86, v83
	v_fma_f32 v82, -v82, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v82, v82, v83, v85
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v156, v162, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v84, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v84
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v84, v84
	v_ldexp_f32 v84, v84, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v84, 1.0, v84
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v84, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v85
	v_fma_f32 v87, -v85, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v83, v84, v83
	v_mul_f32_e32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v85, v88, v87
	v_fmac_f32_e32 v88, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v85, v88, v87
	v_div_fmas_f32 v85, v85, v86, v88
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v155, v158, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v158, v82, v81, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v156, v85, v84, v83
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v87, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v59, v59, v158 :: v_dual_mul_f32 v58, v58, v156
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v86
	v_exp_f32_e32 v87, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v87, v87, v88
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v87, 1.0, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v88, null, v87, v87, v86
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v88, v89, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v86, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v88, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v88, v88, v89, v91
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v152, v164, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v155, v88, v87, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v90, 0xbfb8aa3b, v89
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v90
	v_cndmask_b32_e64 v90, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v89
	v_exp_f32_e32 v90, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v90, v90, v91
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v90, 1.0, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v91, null, v90, v90, v89
	v_rcp_f32_e32 v92, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v91, v92, 1.0
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v89, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v94, v93, v92
	v_fma_f32 v95, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v95, v92
	v_fma_f32 v91, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v91, v91, v92, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v152, v91, v90, v89
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v77
	v_exp_f32_e32 v78, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v78, v78, v79
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v78, 1.0, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v79, null, v78, v78, v77
	v_rcp_f32_e32 v80, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v79, v80, 1.0
	v_fmac_f32_e32 v80, v81, v80
	v_div_scale_f32 v81, vcc_lo, v77, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v81, v80
	v_fma_f32 v83, -v79, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v83, v80
	v_fma_f32 v79, -v79, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v79, v79, v80, v82
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v142, v148, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v81, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v81, v81
	v_ldexp_f32 v81, v81, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v81, 1.0, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v81, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v83, v82
	v_fma_f32 v84, -v82, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v80, v81, v80
	v_mul_f32_e32 v85, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v82, v85, v84
	v_fmac_f32_e32 v85, v86, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v82, v85, v84
	v_div_fmas_f32 v82, v82, v83, v85
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v141, v143, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v143, v79, v78, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v130, v135, s3
	v_cndmask_b32_e64 v135, v44, v138, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v142, v82, v81, v80
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v84, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v78, 0xbfb8aa3b, v77
	v_mul_f32_e32 v44, 0xbfb8aa3b, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v62, v62, v142
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v84
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v83
	v_exp_f32_e32 v84, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v84, v84, v85
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v84, 1.0, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v84, v84, v83
	v_rcp_f32_e32 v86, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v85, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v83, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v85, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v85, -v85, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v85, v85, v86, v88
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v137, v151, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v141, v85, v84, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v87, 0xbfb8aa3b, v86
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v86
	v_exp_f32_e32 v87, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v87, v87, v88
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v87, 1.0, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v88, null, v87, v87, v86
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v88, v89, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v86, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v88, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v88, v88, v89, v91
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v134, v146, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v137, v88, v87, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v90, 0xbfb8aa3b, v89
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v90
	v_cndmask_b32_e64 v90, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v89
	v_exp_f32_e32 v90, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v90, v90, v91
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v90, 1.0, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v91, null, v90, v90, v89
	v_rcp_f32_e32 v92, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v91, v92, 1.0
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v89, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v94, v93, v92
	v_fma_f32 v95, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v95, v92
	v_fma_f32 v91, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v91, v91, v92, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v134, v91, v90, v89
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v77
	v_exp_f32_e32 v78, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v78, v78, v79
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v78, 1.0, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v79, null, v78, v78, v77
	v_rcp_f32_e32 v80, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v79, v80, 1.0
	v_fmac_f32_e32 v80, v81, v80
	v_div_scale_f32 v81, vcc_lo, v77, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v81, v80
	v_fma_f32 v83, -v79, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v83, v80
	v_fma_f32 v79, -v79, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v79, v79, v80, v82
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v128, v132, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v128, v79, v78, v77
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v77, off, off offset:600
	scratch_load_b32 v78, off, off offset:76
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v81, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v81, v81
	v_ldexp_f32 v81, v81, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v81, 1.0, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v81, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v83, v82
	v_fma_f32 v84, -v82, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v80, v81, v80
	v_mul_f32_e32 v85, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v82, v85, v84
	v_fmac_f32_e32 v85, v86, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v82, v85, v84
	v_div_fmas_f32 v82, v82, v83, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v132, v82, v81, v80
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v77, v77, v33
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(0)
	v_fma_f32 v77, v77, v9, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v78, v77, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v78, v248, v49
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v78, v78, v21, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v77, v78, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v78, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v78
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v78, v78
	v_ldexp_f32 v78, v78, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v78, 1.0, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v79, null, v78, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v83, v79
	v_fma_f32 v84, -v79, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v77, v78, v77
	v_mul_f32_e32 v85, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v79, v85, v84
	v_fmac_f32_e32 v85, v86, v83
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v79, -v79, v85, v84
	scratch_load_b32 v84, off, off offset:72 ; 4-byte Folded Reload
	v_div_fmas_f32 v79, v79, v83, v85
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v83, off, off offset:588 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v108, v79, v78, v77
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v77, 0xbfb8aa3b, v70
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v83, v83, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v83, v83, v8, v84
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v84, v83, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v84, v247, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v84, v84, v20, v83
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v83, v84, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v84, 0xbfb8aa3b, v83
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v84
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v83
	v_exp_f32_e32 v84, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v84, v84, v85
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v84, 1.0, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v84, v84, v83
	v_rcp_f32_e32 v86, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v85, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v83, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v85, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v85, -v85, v88, v87
	scratch_load_b32 v87, off, off offset:68 ; 4-byte Folded Reload
	v_div_fmas_f32 v85, v85, v86, v88
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v86, off, off offset:584 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v107, v85, v84, v83
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v86, v86, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v86, v86, v11, v87
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v87, v86, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v87, v246, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v87, v87, v23, v86
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v86, v87, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v87, 0xbfb8aa3b, v86
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v86
	v_exp_f32_e32 v87, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v87, v87, v88
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v87, 1.0, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v88, null, v87, v87, v86
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v88, v89, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v86, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v88, -v88, v91, v90
	scratch_load_b32 v90, off, off offset:64 ; 4-byte Folded Reload
	v_div_fmas_f32 v88, v88, v89, v91
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v89, off, off offset:580 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v106, v88, v87, v86
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v89, v89, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v89, v89, v10, v90
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v90, v89, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v90, v245, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v90, v90, v22, v89
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v89, v90, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v90, 0xbfb8aa3b, v89
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v90
	v_cndmask_b32_e64 v90, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v89
	v_exp_f32_e32 v90, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v90, v90, v91
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v90, 1.0, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v91, null, v90, v90, v89
	v_rcp_f32_e32 v92, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v91, v92, 1.0
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v89, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v94, v93, v92
	v_fma_f32 v95, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v95, v92
	v_fma_f32 v91, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v91, v91, v92, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v77
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v105, v91, v90, v89
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v70
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v77, v77, v78
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v77, 1.0, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v78, null, v77, v77, v70
	v_rcp_f32_e32 v79, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v78, v79, 1.0
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v80, vcc_lo, v70, v77, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v80, v79
	v_fma_f32 v82, -v78, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v79
	v_fma_f32 v78, -v78, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v78, v78, v79, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v79, 0xbfb8aa3b, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v130, v78, v77, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v79
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v125, v154, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v77, 0xbfb8aa3b, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v69
	v_exp_f32_e32 v79, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v79, v79, v80
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v79, 1.0, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v80, null, v79, v79, v69
	v_rcp_f32_e32 v81, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v80, v81, 1.0
	v_fmac_f32_e32 v81, v82, v81
	v_div_scale_f32 v82, vcc_lo, v69, v79, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v83, v82, v81
	v_fma_f32 v84, -v80, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v81
	v_fma_f32 v80, -v80, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v80, v81, v83
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v77
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v153, v80, v79, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:476
	scratch_load_b32 v80, off, off offset:636
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v77, v77
	v_ldexp_f32 v77, v77, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v77, 1.0, v77
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v78, null, v77, v77, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v81, v78
	v_fma_f32 v82, -v78, v81, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v81
	v_div_scale_f32 v82, vcc_lo, v70, v77, v70
	v_mul_f32_e32 v83, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v78, v83, v82
	v_fmac_f32_e32 v83, v84, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v78, v83, v82
	v_div_fmas_f32 v78, v78, v81, v83
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v148, v78, v77, v70
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, vcc_lo
	scratch_load_b32 v78, off, off offset:52 ; 4-byte Folded Reload
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v64
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v81
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v81, null, v67, v67, v64
	v_rcp_f32_e32 v82, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v81, v82, 1.0
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, vcc_lo, v64, v67, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v84, v83, v82
	v_fma_f32 v85, -v81, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v82
	v_fma_f32 v81, -v81, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v81, v81, v82, v84
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v82, 0xbfb8aa3b, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v151, v81, v67, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v82
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v83, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v82, v82
	v_ldexp_f32 v82, v82, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v82, 1.0, v82
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v83, null, v82, v82, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v84, v83
	v_fma_f32 v85, -v83, v84, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v84
	v_div_scale_f32 v85, vcc_lo, v68, v82, v68
	v_mul_f32_e32 v86, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v83, v86, v85
	v_fmac_f32_e32 v86, v87, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v83, v86, v85
	v_div_fmas_f32 v83, v83, v84, v86
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v84, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v145, v83, v82, v68
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v84
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v46
	v_exp_f32_e32 v84, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v84, v84, v85
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v84, 1.0, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v84, v84, v46
	v_rcp_f32_e32 v86, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v85, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v46, v84, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v85, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v85, -v85, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v85, v85, v86, v88
	v_div_fixup_f32 v140, v85, v84, v46
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v46, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v46, v46
	v_ldexp_f32 v46, v46, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v46, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v64
	v_fma_f32 v68, -v64, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v45, v46, v45
	v_mul_f32_e32 v69, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v64, v69, v68
	v_fmac_f32_e32 v69, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v64, v69, v68
	v_div_fmas_f32 v64, v64, v67, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v139, v64, v46, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v239, v170, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.h, v32.l
	v_mov_b16_e32 v64.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v44, 0xbfb8aa3b, v135 :: v_dual_mul_f32 v45, v45, v72
	scratch_load_b32 v72, off, off offset:396 ; 4-byte Folded Reload
	v_exp_f32_e32 v44, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v45.h
	v_cmp_o_f32_e64 s1, v45, v45
	v_and_b32_e32 v64, 1, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v44, v44, v67
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v64, v45, v64, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v25, v236, s3
	scratch_load_b32 v25, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v138, 1.0, v44 :: v_dual_mul_f32 v45, v45, v74
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v194, v233, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, null, v138, v138, v135
	v_rcp_f32_e32 v67, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v44, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v135, v138, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v67
	v_fma_f32 v70, -v44, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v69, v70, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v181, v185, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v44, v69, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v45.h
	v_mov_b16_e32 v68.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v146, v44, v67, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v201, v171, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v68, 1, v68
	v_mov_b16_e32 v69.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v44, v44, v71
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v68, v45, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v46.l, v44.h
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v46, 1, v46
	v_add3_u32 v46, v44, v46, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v199, v172, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v44, v73
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v44.l, 0x7fff, v64.h, s1
	v_mov_b16_e32 v64.h, v32.l
	v_cndmask_b16 v44.h, 0x7fff, v46.h, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v184, v51, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v67.h
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_cmp_o_f32_e64 s1, v45, v45
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v73, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v46, v46, v75
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v64, 1, v64
	v_mov_b16_e32 v51.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s4, v46, v46
	v_add3_u32 v64, v67, v64, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v183, v52, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v45, v67, v76
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v46.h
	v_mov_b16_e32 v67.h, v32.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v174, v173, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v45.h
	v_cmp_o_f32_e64 s5, v45, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v67, 1, v67
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v67, v46, v67, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v240, v121, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v69, v45, v69, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v68.h, s1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v68, off, off offset:536 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v71, v46, v122
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v45.h, 0x7fff, v64.h, vcc_lo
	v_cndmask_b16 v46.l, 0x7fff, v69.h, s5
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v69, off, off offset:408
	scratch_load_b128 v[4:7], off, off offset:1080
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v64, v70, v123
	scratch_load_b32 v70, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v46.h, 0x7fff, v67.h, s4
	v_mov_b16_e32 v67.l, v71.h
	v_mov_b16_e32 v67.h, v32.l
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	v_cmp_o_f32_e64 s1, v64, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v67, v71, v67, 0x7fff
	scratch_load_b32 v71, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v25, v193, v25, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v25, v151
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v73, v73, v189 :: v_dual_mul_f32 v68, v68, v35
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v68, v68, v5, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v69, v68, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v69, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v69, v69, v35
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v69, v69, v4, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v70, v69, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v70, off, off offset:712 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v70, v70, v189
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v70, v70, v17, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v70, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v70, off, off offset:708 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v68, v68, v124
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v68, v68
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v70, v70, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v70, v70, v16, v69
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v70, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.l, v64.h
	v_mov_b16_e32 v70.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v70, v64, v70, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v64, v69, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v68.h
	v_mov_b16_e32 v69.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s5, v64, v64
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v68, v69, 0x7fff
	v_mov_b16_e32 v68.l, v64.h
	v_mov_b16_e32 v68.h, v32.l
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v68, v64, v68, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v64, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v64, v64, v35
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v64, v64, v7, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v71, v64, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v71, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v71, v71, v35
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v71, v71, v6, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v72, v71, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v72, off, off offset:704 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v72, v189
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v72, v72, v19, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v64, v72, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v72, off, off offset:700 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v72, v189
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v72, v72, v18, v71
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v71, v72, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v72, v64, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v66.h, 0x7fff, v69.h, s4
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v69, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v64.l, 0x7fff, v70.h, s1
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v70, off, off offset:392
	scratch_load_b128 v[0:3], off, off offset:1064
	v_cndmask_b16 v64.h, 0x7fff, v67.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v71, v115
	scratch_load_b32 v71, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v66.l, 0x7fff, v68.h, s5
	v_mov_b16_e32 v68.l, v72.h
	v_mov_b16_e32 v68.h, v32.l
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_cmp_o_f32_e64 s1, v67, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v68, v72, v68, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v72, off, off offset:492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v69, v69, v35
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, v69, v1, v70
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v70, v69, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v70, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v70, v70, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v70, v70, v0, v71
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v71, v70, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v71, off, off offset:688 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v71, v71, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v71, v71, v13, v69
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v71, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v71, off, off offset:680 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v69, v69, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v69, v69
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v71, v71, v189
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v71, v71, v12, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v70, v71, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v71.l, v67.h
	v_mov_b16_e32 v71.h, v32.l
	v_and_b32_e32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v71, v67, v71, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v70, v116
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.l, v69.h
	v_mov_b16_e32 v70.h, v32.l
	v_cmp_o_f32_e64 s5, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v70, v69, v70, 0x7fff
	v_mov_b16_e32 v69.l, v67.h
	v_mov_b16_e32 v69.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v69, v67, v69, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v67, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v67, v67, v35
	v_mul_f32_e32 v35, v72, v35
	scratch_load_b32 v72, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v67, v67, v3, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v72, v67, s2
	scratch_load_b32 v72, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v35, v35, v2, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v72, v35, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v72, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v72, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v72, v72, v15, v67
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v67, v72, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v72, v73, v14, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v73, v67, v113
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v35, v72, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v35.h, 0x7fff, v68.h, vcc_lo
	v_cndmask_b16 v35.l, 0x7fff, v71.h, s1
	v_cndmask_b16 v67.h, 0x7fff, v70.h, s4
	v_cndmask_b16 v67.l, 0x7fff, v69.h, s5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v68, v72, v126
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v72.h, v32.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v197, v238, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.l, v73.h
	v_mov_b16_e32 v70.h, v32.l
	v_mov_b16_e32 v72.l, v68.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v26, v237, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v69, v69, v127
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v68, v68
	v_and_b32_e32 v70, 1, v70
	v_and_b32_e32 v72, 1, v72
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_cmp_o_f32_e64 s4, v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v70, v73, v70, 0x7fff
	v_add3_u32 v72, v68, v72, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v68, v71, v129
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v71.l, v69.h
	v_mov_b16_e32 v71.h, v32.l
	v_mov_b16_e32 v73.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v73.l, v68.h
	v_cmp_o_f32_e64 s5, v68, v68
	v_and_b32_e32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v71, v69, v71, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v195, v234, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v73, v68, v73, 0x7fff
	v_cndmask_b16 v68.h, 0x7fff, v70.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v70, v74, v133 :: v_dual_mul_f32 v75, v69, v131
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v74.h, v32.l
	v_cndmask_b16 v68.l, 0x7fff, v72.h, s1
	v_cndmask_b16 v69.h, 0x7fff, v71.h, s4
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v74.l, v70.h
	v_cndmask_b16 v69.l, 0x7fff, v73.h, s5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v177, v180, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v72.l, v75.h
	v_mov_b16_e32 v72.h, v32.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v176, v179, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v71, v71, v136 :: v_dual_and_b32 v74, 1, v74
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v70, v70
	v_and_b32_e32 v72, 1, v72
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v74, v70, v74, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v70, v73, v144
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v73.l, v71.h
	v_add3_u32 v72, v75, v72, 0x7fff
	v_mov_b16_e32 v73.h, v32.l
	v_mov_b16_e32 v75.h, v32.l
	v_mov_b16_e32 v75.l, v70.h
	v_cmp_o_f32_e64 s4, v71, v71
	v_cmp_o_f32_e64 s5, v70, v70
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v73, v71, v73, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v175, v178, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v75, v70, v75, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v74.h, s1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v74, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v70.h, 0x7fff, v72.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v77, v71, v147
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v71.l, 0x7fff, v75.h, s5
	scratch_load_b32 v75, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v72, v76, v150
	scratch_load_b32 v76, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v71.h, 0x7fff, v73.h, s4
	v_mov_b16_e32 v73.l, v77.h
	v_mov_b16_e32 v73.h, v32.l
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	v_cmp_o_f32_e64 s1, v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v73, v77, v73, 0x7fff
	scratch_load_b32 v77, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v74, v74, v34
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, v74, v5, v75
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v75, v74, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v75, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v75, v75, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v75, v75, v4, v76
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v76, v75, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v76, off, off offset:692 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v76, v76, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v76, v76, v17, v74
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v74, v76, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v76, off, off offset:684 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v74, v74, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v74, v74
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v76, v76, v65
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v76, v76, v16, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v75, v76, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v76.l, v72.h
	v_mov_b16_e32 v76.h, v32.l
	v_and_b32_e32 v76, 1, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v76, v72, v76, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v72, v75, v161
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v75.l, v74.h
	v_mov_b16_e32 v75.h, v32.l
	v_cmp_o_f32_e64 s5, v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v75, v74, v75, 0x7fff
	v_mov_b16_e32 v74.l, v72.h
	v_mov_b16_e32 v74.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v74, 1, v74
	v_add3_u32 v74, v72, v74, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v72, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v73.l, 0x7fff, v74.h, s5
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v72, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v72, v72, v7, v77
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v77, v72, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v77, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v77, v77, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v77, v77, v6, v78
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v78, v77, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v78, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v78, v78, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v78, v78, v19, v72
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v72, v78, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v78, off, off offset:664 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v78, v78, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v78, v78, v18, v77
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v77, v78, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v78, v72, v149
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v72.l, 0x7fff, v76.h, s1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v76, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v72.h, 0x7fff, v73.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v74, v77, v202
	scratch_load_b32 v77, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v73.h, 0x7fff, v75.h, s4
	v_mov_b16_e32 v75.l, v78.h
	v_mov_b16_e32 v75.h, v32.l
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_cmp_o_f32_e64 s1, v74, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v75, v78, v75, 0x7fff
	scratch_load_b32 v78, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v76, v76, v34
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, v76, v1, v77
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v77, v76, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v77, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v77, v77, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v77, v77, v0, v78
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v78, v77, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v78, off, off offset:652 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v78, v78, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v78, v78, v13, v76
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v76, v78, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v78, off, off offset:648 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v76, v76, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v76, v76
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v78, v78, v65
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v78, v78, v12, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v77, v78, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v78.l, v74.h
	v_mov_b16_e32 v78.h, v32.l
	v_and_b32_e32 v78, 1, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v78, v74, v78, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v74, v77, v111
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v77.l, v76.h
	v_mov_b16_e32 v77.h, v32.l
	v_cmp_o_f32_e64 s5, v74, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v77, 1, v77
	v_add3_u32 v77, v76, v77, 0x7fff
	v_mov_b16_e32 v76.l, v74.h
	v_mov_b16_e32 v76.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v76, 1, v76
	v_add3_u32 v76, v74, v76, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v74, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v74, v74, v34
	v_mul_f32_e32 v34, v79, v34
	scratch_load_b32 v79, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v74, v74, v3, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v79, v74, s2
	scratch_load_b32 v79, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v34, v34, v2, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v79, v34, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v79, off, off offset:640 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v79, v79, v65
	v_mul_f32_e32 v65, v80, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v79, v79, v15, v74
	v_fma_f32 v65, v65, v14, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v74, v79, s3
	v_cndmask_b32_e64 v79, v34, v65, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v65.l, 0x7fff, v76.h, s5
	v_mov_b16_e32 v76.h, v32.l
	v_cndmask_b16 v34.h, 0x7fff, v75.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v74, v74, v110 :: v_dual_mul_f32 v75, v79, v109
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v34.l, 0x7fff, v78.h, s1
	v_cndmask_b16 v65.h, 0x7fff, v77.h, s4
	v_cmp_o_f32_e64 s4, v60, v60
	v_mov_b16_e32 v76.l, v74.h
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_cmp_o_f32_e64 s1, v75, v75
	v_cmp_o_f32_e64 s5, v59, v59
	scratch_load_b32 v78, off, off offset:356 ; 4-byte Folded Reload
	v_and_b32_e32 v76, 1, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v76, v74, v76, 0x7fff
	v_mov_b16_e32 v74.l, v75.h
	v_mov_b16_e32 v74.h, v32.l
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v74, v75, v74, 0x7fff
	v_mov_b16_e32 v75.l, v60.h
	v_mov_b16_e32 v75.h, v32.l
	v_and_b32_e32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v75, v60, v75, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v57, v24, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v57.l, v59.h
	v_mov_b16_e32 v57.h, v32.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v24, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v57, 1, v57
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v77, v59, v57, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v59, v60, v155
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v60.l, v58.h
	v_mov_b16_e32 v60.h, v32.l
	v_cndmask_b16 v57.h, 0x7fff, v76.h, vcc_lo
	v_cndmask_b16 v57.l, 0x7fff, v74.h, s1
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v118, v48, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v60, 1, v60
	v_cmp_o_f32_e64 s1, v59, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v74, v74, v152
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v60, v58, v60, 0x7fff
	v_mov_b16_e32 v58.l, v59.h
	v_mov_b16_e32 v58.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v58, 1, v58
	v_add3_u32 v76, v59, v58, 0x7fff
	v_cndmask_b16 v59.h, 0x7fff, v60.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v60, v63, v143
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v63.l, v74.h
	v_mov_b16_e32 v63.h, v32.l
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_cndmask_b16 v59.l, 0x7fff, v76.h, s1
	v_cmp_o_f32_e64 s1, v60, v60
	v_cndmask_b16 v58.h, 0x7fff, v75.h, s4
	v_and_b32_e32 v63, 1, v63
	v_cmp_o_f32_e64 s4, v62, v62
	v_cndmask_b16 v58.l, 0x7fff, v77.h, s5
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v75, off, off offset:372
	scratch_load_b32 v76, off, off offset:368
	scratch_load_b32 v77, off, off offset:32
	v_add3_u32 v63, v74, v63, 0x7fff
	v_mov_b16_e32 v74.l, v60.h
	v_mov_b16_e32 v74.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v74, 1, v74
	v_add3_u32 v74, v60, v74, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v60, v61, v141
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v61.l, v62.h
	v_mov_b16_e32 v61.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s5, v60, v60
	v_and_b32_e32 v61, 1, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v61, v62, v61, 0x7fff
	v_mov_b16_e32 v62.l, v60.h
	v_mov_b16_e32 v62.h, v32.l
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v62, 1, v62
	v_add3_u32 v62, v60, v62, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v60, off, off offset:472 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v61.l, 0x7fff, v62.h, s5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v26, v53, v24, s3
	scratch_load_b32 v24, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v26, v26, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v51.l, v26.h
	v_and_b32_e32 v51, 1, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v51, v26, v51, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v60, v60, v33
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v60, v60, v5, v75
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v75, v60, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v75, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v28, v54, v24, s3
	scratch_load_b32 v24, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v28, v153
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v75, v75, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v75, v75, v4, v76
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v76, v75, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v76, off, off offset:632 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v24, v214, v24, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v24, v24, v148
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v76, v76, v49
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v76, v76, v17, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v60, v76, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v76, off, off offset:628 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v76, v76, v49
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v76, v76, v16, v75
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v75, v76, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v76, v60, v137
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v60.l, 0x7fff, v74.h, s1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v74, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v60.h, 0x7fff, v63.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v62, v75, v134
	scratch_load_b32 v75, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v63.l, v76.h
	v_mov_b16_e32 v63.h, v32.l
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_cmp_o_f32_e64 s1, v62, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v63, 1, v63
	v_add3_u32 v63, v76, v63, 0x7fff
	scratch_load_b32 v76, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v74, v74, v33
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, v74, v7, v75
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v75, v74, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v75, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v75, v75, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v75, v75, v6, v76
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v76, v75, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v76, off, off offset:624 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v76, v76, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v76, v76, v19, v74
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v74, v76, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v76, off, off offset:620 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v74, v74, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v74, v74
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v76, v76, v49
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v76, v76, v18, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v75, v76, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v76.l, v62.h
	v_mov_b16_e32 v76.h, v32.l
	v_and_b32_e32 v76, 1, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v76, v62, v76, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v62, v75, v132
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v75.l, v74.h
	v_mov_b16_e32 v75.h, v32.l
	v_cmp_o_f32_e64 s5, v62, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v75, v74, v75, 0x7fff
	v_mov_b16_e32 v74.l, v62.h
	v_mov_b16_e32 v74.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v74, 1, v74
	v_add3_u32 v74, v62, v74, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v62, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v63.l, 0x7fff, v74.h, s5
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v62, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v62, v62, v1, v77
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v77, v62, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v77, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v77, v77, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v77, v77, v0, v78
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v78, v77, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v78, off, off offset:616 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v78, v78, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v78, v78, v13, v62
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v62, v78, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v78, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v78, v78, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v78, v78, v12, v77
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v77, v78, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v78, v62, v108
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v62.l, 0x7fff, v76.h, s1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v76, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v62.h, 0x7fff, v63.h, vcc_lo
	v_cndmask_b16 v63.h, 0x7fff, v75.h, s4
	v_mov_b16_e32 v75.h, v32.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v74, v77, v107
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v77, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v75.l, v78.h
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_cmp_o_f32_e64 s1, v74, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v75, v78, v75, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v78, off, off offset:604 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v76, v76, v33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v33, v77, v33
	scratch_load_b32 v77, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v76, v76, v3, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v77, v76, s2
	scratch_load_b32 v77, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v33, v33, v2, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v77, v33, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v77, off, off offset:608 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v77, v77, v49
	v_mul_f32_e32 v49, v78, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v77, v77, v15, v76
	v_fma_f32 v49, v49, v14, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v76, v77, s3
	v_cndmask_b32_e64 v33, v33, v49, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v49, v76, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v76.l, v74.h
	v_mov_b16_e32 v76.h, v32.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v33, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v49, v49
	v_and_b32_e32 v76, 1, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s5, v33, v33
	v_add3_u32 v76, v74, v76, 0x7fff
	v_mov_b16_e32 v74.l, v49.h
	v_mov_b16_e32 v74.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v74, 1, v74
	v_add3_u32 v74, v49, v74, 0x7fff
	v_mov_b16_e32 v49.l, v33.h
	v_mov_b16_e32 v49.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v53, v33, v49, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v75.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_mov_b16_e32 v26.l, v28.h
	v_mov_b16_e32 v26.h, v32.l
	v_cndmask_b16 v33.l, 0x7fff, v76.h, s1
	v_cmp_o_f32_e64 s1, v28, v28
	v_cndmask_b16 v49.h, 0x7fff, v74.h, s4
	v_cmp_o_f32_e64 s4, v24, v24
	v_and_b32_e32 v26, 1, v26
	v_cndmask_b16 v41.h, 0x7fff, v51.h, vcc_lo
	v_cndmask_b16 v49.l, 0x7fff, v53.h, s5
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:592
	scratch_load_b32 v76, off, off offset:576
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v26, v28, v26, 0x7fff
	v_mov_b16_e32 v28.l, v24.h
	v_mov_b16_e32 v28.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b16 v41.l, 0x7fff, v26.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v26, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v28
	v_cmp_o_f32_e64 s1, v25, v25
	v_add3_u32 v28, v24, v28, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v24, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v74, v74, v27
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v76, v76, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v26, v47, v26, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v42, v26, v140
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v40
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v24, v31, v24, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v31, 0xbfb8aa3b, v43
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v24, v24, v145
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v25.h
	v_mov_b16_e32 v31.h, v32.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v47, v25, v31, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.h, 0x7fff, v28.h, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.l, 0x7fff, v47.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v40
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v25, v25, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v26.l, v24.h
	v_mov_b16_e32 v26.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v51, 1.0, v25 :: v_dual_and_b32 v26, 1, v26
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v51, v51, v43
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v47, v24, v26, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v26, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v47.h, 0x7fff, v47.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v24, v28, v24
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v28, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v50, 1.0, v24
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	scratch_load_b32 v24, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v25, v28, 1.0
	v_fmac_f32_e32 v28, v48, v28
	v_div_scale_f32 v48, vcc_lo, v43, v51, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v26, v30, v26, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v50, v50, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v53, v26, v139
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v52, v30
	v_mul_f32_e32 v26, v48, v28
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v24, v29, v24, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v146, v138, v135
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v53.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v54, v24, v29
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v30, v52, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v52, v24, v52
	v_fma_f32 v24, -v25, v26, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v53, v38, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v26, v24, v28
	v_div_scale_f32 v24, s4, v40, v50, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v25, v26, v48
	v_mul_f32_e32 v48, v24, v52
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v55, v25, v28, v26
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:324
	scratch_load_b32 v28, off, off offset:340
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v30, v48, v24
	s_mov_b32 vcc_lo, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v53, v53
	scratch_load_b32 v53, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v43, v55, v51, v43
	v_fmac_f32_e32 v48, v25, v52
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.l, v42.h
	v_mov_b16_e32 v25.h, v32.l
	scratch_load_b32 v55, off, off offset:24 ; 4-byte Folded Reload
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v30, v48, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v39, v24, v52, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_add3_u32 v30, v42, v30, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v47.l, 0x7fff, v30.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v42
	v_mul_f32_e32 v42, 0xbfb8aa3b, v36
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v30, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v52, 0, 0x42800000, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v42, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v37
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_waitcnt vmcnt(5)
	v_mul_lo_u32 v26, s27, v26
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(4)
	v_lshrrev_b32_e32 v56, 1, v28
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[24:25], null, s27, 48, v[26:27]
	v_lshl_add_u32 v29, s27, 4, v26
	v_lshl_add_u32 v28, s27, 5, v26
	s_mov_b32 s27, 0x31027000
	v_add3_u32 v25, s33, s26, v56
	scratch_load_b32 v56, off, off offset:344 ; 4-byte Folded Reload
	s_mov_b32 s26, 0x7ffffffe
	v_add_lshl_u32 v26, v25, v26, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v48, v30, v32
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v30, 0x80, v25
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v42, v42, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v4, v42, v4, v53
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v52
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v52.l, v54.h
	v_mov_b16_e32 v52.h, v32.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v53, v4, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v52, 1, v52
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v16, v74, v16, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v42, v42, v53
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v52, v54, v52, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v74, off, off offset:572 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v16, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v5, v48, v5, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v54, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v56, v5, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v56, off, off offset:596 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v38.l, 0x7fff, v52.h, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v52, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v48, v48
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v74, v74, v27
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v56, v56, v27
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v52, v52, v32
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v17, v56, v17, v5
	scratch_load_b32 v56, off, off offset:20 ; 4-byte Folded Reload
	v_fma_f32 v7, v52, v7, v55
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v17, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v48, v53
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v42, v42, v37
	v_div_scale_f32 v53, vcc_lo, v37, v42, v37
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v55, v7, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v16, 1.0, v17
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v39, v50, v40
	v_rcp_f32_e32 v39, v48
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v5, v43
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v19, v76, v19, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v50.h, v32.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v16, v16, v36
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v19, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.l, v5.h
	v_mov_b16_e32 v17.h, v32.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v48, v39, 1.0
	v_rcp_f32_e32 v43, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v50.l, v4.h
	scratch_load_b32 v19, off, off offset:12 ; 4-byte Folded Reload
	v_and_b32_e32 v17, 1, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v39, v51, v39 :: v_dual_and_b32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v17, v5, v17, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v52, v53, v39
	v_fma_f32 v51, -v40, v43, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v50, v4, v50, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v48, v52, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v51, v43
	v_div_scale_f32 v51, s1, v36, v16, v36
	v_fmac_f32_e32 v52, v55, v39
	scratch_load_b32 v55, off, off offset:16 ; 4-byte Folded Reload
	v_fma_f32 v48, -v48, v52, v53
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v53, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v54, v54, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v39, v48, v39, v52
	s_mov_b32 vcc_lo, s1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v6, v54, v6, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v54, v51, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v56, v6, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v56, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v75, -v40, v54, v51
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v18, v74, v18, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v54, v75, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v18, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v18, v39, v42, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v40, -v40, v54, v51
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off
	scratch_load_b32 v37, off, off offset:336
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v7, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v40, v40, v43, v54
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:548
	scratch_load_b32 v18, off, off offset:224
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v40, v16, v36
	scratch_load_b32 v36, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v16
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.l, v7.h
	v_mov_b16_e32 v16.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v16, v7, v16, 0x7fff
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v53, v53, v27 :: v_dual_mul_f32 v56, v56, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v9, v56, v9, v55
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v55, v9, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v21, v53, v21, v9
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v43, v43, v32 :: v_dual_mul_f32 v18, v18, v27
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v9, v21, s3
	scratch_load_b32 v21, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v8, v43, v8, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v43, off, off offset:564 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v5, 0xbfb8aa3b, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v19, v8, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.h, 0x7fff, v17.h, vcc_lo
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v17, v18, v20, v8
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v20, off, off offset:540 ; 4-byte Folded Reload
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v6.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.h, v32.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v8, v17, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v19, 0xbfb8aa3b, v9 :: v_dual_and_b32 v4, 1, v18
	v_mul_f32_e32 v17, 0xbfb8aa3b, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.l, 0x7fff, v50.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v18, v19
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v19, off, off offset:544 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v7, v7
	v_add3_u32 v4, v6, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v18, v17
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v18, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v7, 1.0, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v43, v43, v27 :: v_dual_mul_f32 v20, v20, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v10, v20, v10, v21
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v20, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v21, v10, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v21, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v19, v19, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v11, v19, v11, v36
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v36, v11, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v18, v18, v27 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v8
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v17, v18, v23, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v19, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v17, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v11
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v20, v20, v27
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v18, v20, v22, v10
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v22, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v7, v7, v9
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v21, v21, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v10, v18, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v17, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v1, v21, v1, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v36, 0xbfb8aa3b, v10
	v_ldexp_f32 v18, v19, v18
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v23, s5, v9, v7, v9
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v36
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v19, -v20, v17, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v11
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v39, v1, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v39, off, off offset:568 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v17, v19, v17
	v_div_scale_f32 v19, null, v18, v18, v8
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v21, v21, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v19, v36, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_fmac_f32 v36, v50, v36
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v22, v22, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v0, v22, v0, v37
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, s4, v8, v18, v8
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v37, v0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v37, v23, v17 :: v_dual_fmac_f32 v22, 0xbfb8aa3b, v10
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v12, v43, v12, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v20, v37, v23
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v12, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v37, v48, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v12, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v20, -v20, v37, v23
	v_mul_f32_e32 v23, v40, v36
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v22, v22, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, null, v21, v21, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v17, v20, v17, v37
	v_fma_f32 v20, -v19, v23, v40
	s_mov_b32 vcc_lo, s4
	scratch_load_b32 v37, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v17, v7, v9
	v_fmac_f32_e32 v23, v20, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v43, null, v22, v22, v10
	v_fma_f32 v19, -v19, v23, v40
	scratch_load_b32 v40, off, off offset:332 ; 4-byte Folded Reload
	v_rcp_f32_e32 v48, v43
	v_div_fmas_f32 v19, v19, v36, v23
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v36, off, off offset:556
	scratch_load_b32 v17, off, off offset:412
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v39, v39, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v19, v18, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v19, v34, v57, s0
	v_cndmask_b32_e64 v18, v57, v34, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v13, v39, v13, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v39, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v34, v63, v49, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v13, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v43, v48, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v9, -v42, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v48, v13, v48
	v_div_scale_f32 v13, s5, v10, v22, v10
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v0.h
	v_mov_b16_e32 v7.h, v32.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v39, v9, v39
	v_div_scale_f32 v9, s1, v11, v21, v11
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v7, 1, v7
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v12, v12, v32
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v3, v12, v3, v40
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v12, v9, v39
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v36, v36, v27 :: v_dual_mul_f32 v17, v17, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v20, -v42, v12, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v40, v3, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v40, 0x7632
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v2, v17, v2, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v17, v13, v48 :: v_dual_fmac_f32 v12, v20, v39
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v20, off, off offset:560 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v37, v2, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v23, -v43, v17, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v0, v0
	v_cndmask_b32_e64 v37, v38, v31, s0
	v_cndmask_b32_e64 v31, v31, v38, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v9, -v42, v12, v9
	v_fmac_f32_e32 v17, v23, v48
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v14, v36, v14, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v36, v41, v47, s0
	v_cndmask_b32_e64 v23, v59, v61, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v9, v9, v39, v12
	v_fma_f32 v13, -v43, v17, v13
	s_mov_b32 vcc_lo, s5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v14, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v14, v70, v72, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v9, v21, v11
	v_div_fmas_f32 v12, v13, v48, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_add3_u32 v6, v0, v7, 0x7fff
	v_cndmask_b32_e64 v17, v73, v65, s0
	v_cndmask_b32_e64 v21, v58, v60, s0
	v_cndmask_b32_e64 v11, v71, v69, s0
	v_cndmask_b32_e64 v13, v72, v70, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v12, v22, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.h, v32.l
	v_cndmask_b16 v16.l, 0x7fff, v4.h, vcc_lo
	v_cndmask_b32_e64 v12, v69, v71, s0
	v_cndmask_b32_e64 v4, v64, v45, s0
	v_cndmask_b32_e64 v22, v61, v59, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.h, v32.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v10.l, v2.h
	v_cmp_o_f32_e64 s4, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v7, 1, v10
	v_cndmask_b32_e64 v10, v35, v68, s0
	v_add3_u32 v0, v2, v7, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v6.h, s2
	v_cndmask_b32_e64 v6, v45, v64, s0
	v_cndmask_b32_e64 v7, v67, v66, s0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v20, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v27, v33, v62, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v15, v20, v15, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v20, v60, v58, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v15, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v15, v65, v73, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.l, v1.h
	v_mov_b16_e32 v8.h, v32.l
	v_cndmask_b32_e64 v32, v62, v33, s0
	v_cndmask_b32_e64 v33, v49, v63, s0
	v_mov_b16_e32 v9.l, v3.h
	v_cmp_o_f32_e64 s3, v3, v3
	v_and_b32_e32 v8, 1, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v8, v1, v8, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v1, v3, v9, 0x7fff
	v_cndmask_b32_e64 v3, v46, v44, s0
	v_cndmask_b16 v2.h, 0x7fff, v8.h, s1
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v8, v66, v67, s0
	v_cndmask_b32_e64 v9, v68, v35, s0
	v_cndmask_b32_e64 v35, v47, v41, s0
	v_cndmask_b16 v1.l, 0x7fff, v0.h, s4
	v_cndmask_b32_e64 v0, v44, v46, s0
	v_permlanex16_b32 v6, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v17, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v21, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v19, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v36, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v31, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s3
	v_cndmask_b32_e64 v38, v2, v5, s0
	v_cndmask_b32_e64 v2, v5, v2, s0
	v_mov_b32_e32 v5, 0x5410
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v39, v1, v16, s0
	v_cndmask_b32_e64 v1, v16, v1, s0
	v_permlanex16_b32 v16, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v0, 0x1054, v5, s0
	v_cndmask_b32_e64 v5, 0x3276, v40, s0
	v_permlanex16_b32 v43, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v1, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v5, v5, 8, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v5, 0x760076, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v5, v5, 4, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v40, 0x5040504, v0
	v_and_b32_e32 v41, 0x7060706, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v0, v16, v3, v40
	v_perm_b32 v1, v16, v3, v41
	v_perm_b32 v2, v6, v4, v40
	v_perm_b32 v3, v6, v4, v41
	v_perm_b32 v4, v8, v7, v40
	v_perm_b32 v5, v8, v7, v41
	v_perm_b32 v6, v10, v9, v40
	v_perm_b32 v7, v10, v9, v41
	v_perm_b32 v8, v12, v11, v40
	v_perm_b32 v9, v12, v11, v41
	v_perm_b32 v10, v14, v13, v40
	v_perm_b32 v11, v14, v13, v41
	v_perm_b32 v12, v17, v15, v40
	v_perm_b32 v13, v17, v15, v41
	v_perm_b32 v16, v21, v20, v40
	v_perm_b32 v17, v21, v20, v41
	v_perm_b32 v20, v32, v27, v40
	v_perm_b32 v21, v32, v27, v41
	v_add_lshl_u32 v27, v25, v29, 1
	v_perm_b32 v14, v19, v18, v40
	v_perm_b32 v15, v19, v18, v41
	v_perm_b32 v18, v23, v22, v40
	v_perm_b32 v19, v23, v22, v41
	v_perm_b32 v22, v34, v33, v40
	v_perm_b32 v23, v34, v33, v41
	v_perm_b32 v31, v36, v35, v40
	v_perm_b32 v32, v36, v35, v41
	v_perm_b32 v33, v42, v37, v40
	v_perm_b32 v34, v42, v37, v41
	v_perm_b32 v35, v43, v38, v40
	v_perm_b32 v36, v43, v38, v41
	v_perm_b32 v37, v44, v39, v40
	v_perm_b32 v38, v44, v39, v41
	s_clause 0x2
	buffer_store_b128 v[0:3], v26, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v26, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v27, s[24:27], 0 offen
	v_add_lshl_u32 v0, v30, v29, 1
	v_add_lshl_u32 v1, v25, v28, 1
	v_add_lshl_u32 v2, v30, v28, 1
	v_add_lshl_u32 v3, v25, v24, 1
	v_add_lshl_u32 v4, v30, v24, 1
	s_clause 0x4
	buffer_store_b128 v[12:15], v0, s[24:27], 0 offen
	buffer_store_b128 v[16:19], v1, s[24:27], 0 offen
	buffer_store_b128 v[20:23], v2, s[24:27], 0 offen
	buffer_store_b128 v[31:34], v3, s[24:27], 0 offen
	buffer_store_b128 v[35:38], v4, s[24:27], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1132
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 55
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 1132
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 48560
; TotalNumSgprs: 57
; NumVgprs: 256
; ScratchSize: 1132
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 1132
    .sgpr_count:     57
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 453
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
