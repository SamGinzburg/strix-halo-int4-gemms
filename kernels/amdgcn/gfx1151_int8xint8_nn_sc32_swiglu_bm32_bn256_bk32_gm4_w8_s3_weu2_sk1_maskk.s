	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v37, 4, v0
	v_lshlrev_b32_e32 v2, 2, v0
	v_and_b32_e32 v195, 15, v0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_lshlrev_b32_e32 v46, 4, v0
	v_lshlrev_b32_e32 v44, 5, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v39, 16, v37
	v_and_b32_e32 v38, 28, v2
	v_and_b32_e32 v43, 4, v0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v48, 0, v46
	s_mov_b32 s50, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s26, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
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
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 295 20 is_stmt 0              ; generate_amdgcn.py:295:20
	s_min_i32 s6, s6, 4
	.loc	1 296 29 is_stmt 1              ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s16, s6
	s_abs_i32 s5, s2
	s_cvt_f32_u32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 3, v0
	s_mov_b32 s11, 0x31027000
	s_mov_b64 s[28:29], s[14:15]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_mov_b32 s39, s11
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_mul_lo_u32 v1, s31, v1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s16
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s10, s17
	s_xor_b32 s17, s2, s6
	s_add_i32 s4, s10, s4
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s4, s5, s4
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s4, s16
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_mov_b32 s38, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s5, s5, s18
	s_add_i32 s18, s4, 1
	s_sub_i32 s19, s5, s16
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s18, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s18, s4
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s34, s27, 1
	.loc	1 312 26                        ; generate_amdgcn.py:312:26
	s_lshl_b32 s30, s3, 5
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_mul_lo_u32 v6, s34, v37
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s31, 31
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s17
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v3, s30, v38
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s17, s3, s6
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v4, s30, v37
	v_or_b32_e32 v5, s30, v39
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s4, s16, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s17
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_lshl_add_u32 v40, v195, 4, v6
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s4, s4, 27
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s26, s3, 8
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s16, s4
.Ltmp19:
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s3, s31, v4
	v_cmp_gt_i32_e64 s4, s31, v5
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s16, 31
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_lshl_add_u32 v41, s27, 5, v40
	s_mul_i32 s5, s34, s30
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_mul_i32 s7, s33, s31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s17, s26, s5
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add3_u32 v42, v1, v38, s7
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_and_b32 s37, s37, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s4, s4, s2
	s_and_b32 vcc_lo, vcc_lo, s2
	s_and_b32 s5, s3, s2
	s_cmp_gt_i32 s16, 63
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v1, s17, v40
	v_add_nc_u32_e32 v3, s17, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s35, s30, 32
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v4, s30, v42
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v13, s35, v38
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v5, 0x80000000, v1, s5
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v1, s27, v1
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_lshl_b32 s7, s27, 6
	.loc	1 322 26 is_stmt 0              ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v8, 0x80000000, v3, s4
	.loc	1 328 43 is_stmt 1              ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v3, s27, v3
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v14, s35, v37
	v_or_b32_e32 v15, s35, v39
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s17, s17, s7
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e32 v12, 0x80000000, v4, vcc_lo
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v13
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v21, s17, v40
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v20, s35, v42
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v1, 0x80000000, v1, s5
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s4, s31, v14
	v_cmp_gt_i32_e64 s5, s31, v15
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v22, s17, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v24, s27, v21
	v_add3_u32 v23, s17, s27, v41
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b32 v36, v12, s[8:11], 0 offen
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x1
	buffer_load_b128 v[12:15], v1, s[36:39], 0 offen
	buffer_load_b128 v[16:19], v3, s[36:39], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e32 v1, 0x80000000, v20, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s3
	s_and_b32 s4, s5, s3
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e32 v3, 0x80000000, v21, vcc_lo
	v_cndmask_b32_e64 v25, 0x80000000, v22, s4
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e32 v28, 0x80000000, v24, vcc_lo
	v_cndmask_b32_e64 v32, 0x80000000, v23, s4
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[4:7], v5, s[36:39], 0 offen
	buffer_load_b128 v[8:11], v8, s[36:39], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b32 v1, v1, s[8:11], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[20:23], v3, s[36:39], 0 offen
	buffer_load_b128 v[24:27], v25, s[36:39], 0 offen
	buffer_load_b128 v[28:31], v28, s[36:39], 0 offen
	buffer_load_b128 v[32:35], v32, s[36:39], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_bfe_i32 v3, v0, 5, 1
	v_and_b32_e32 v2, 0x37c, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0x5f
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v3, 0x90, v3
	v_xor_b32_e32 v45, v3, v2
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v3, 16, v195
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v47, 0, v45
	s_waitcnt vmcnt(9)
	ds_store_b32 v47, v36 offset:32768
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(6)
	ds_store_b128 v48, v[4:7]
	s_waitcnt vmcnt(5)
	ds_store_b128 v48, v[8:11] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	ds_store_b128 v48, v[12:15] offset:16384
	ds_store_b128 v48, v[16:19] offset:20480
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v47, v1 offset:33792
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v48, v[20:23] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v48, v[24:27] offset:12288
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(1)
	ds_store_b128 v48, v[28:31] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v48, v[32:35] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_and_or_b32 v118, 0x70, v2, v195
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_lshlrev_b32_e32 v17, 5, v0
	v_and_b32_e32 v1, 4, v0
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_or_b32_e32 v4, 0x100, v118
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v36, 0x160, v17
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_or_b32_e32 v206, 0x200, v118
	v_or_b32_e32 v208, 0x300, v118
	v_or_b32_e32 v197, 0x400, v118
	scratch_store_b32 off, v4, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v199, 0x500, v118
	v_or_b32_e32 v201, 0x600, v118
	v_or_b32_e32 v203, 0x700, v118
	v_or_b32_e32 v204, 0x800, v118
	v_or_b32_e32 v211, 0x900, v118
	v_or_b32_e32 v214, 0xa00, v118
	v_or_b32_e32 v216, 0xb00, v118
	v_or_b32_e32 v218, 0xc00, v118
	v_or_b32_e32 v220, 0xd00, v118
	v_or_b32_e32 v222, 0xe00, v118
	v_or_b32_e32 v223, 0xf00, v118
	v_or_b32_e32 v212, 0x1000, v118
	v_or_b32_e32 v205, 0x1100, v118
	v_or_b32_e32 v209, 0x1200, v118
	v_or_b32_e32 v198, 0x1300, v118
	v_or_b32_e32 v200, 0x1400, v118
	v_or_b32_e32 v202, 0x1500, v118
	v_or_b32_e32 v210, 0x1600, v118
	v_or_b32_e32 v234, 0x1700, v118
	v_or_b32_e32 v213, 0x1800, v118
	v_or_b32_e32 v215, 0x1900, v118
	v_or_b32_e32 v217, 0x1a00, v118
	v_or_b32_e32 v219, 0x1b00, v118
	v_or_b32_e32 v221, 0x1c00, v118
	v_or_b32_e32 v224, 0x1d00, v118
	v_or_b32_e32 v225, 0x1e00, v118
	v_or_b32_e32 v226, 0x1f00, v118
	v_or_b32_e32 v227, 0x80, v118
	v_or_b32_e32 v228, 0x180, v118
	v_or_b32_e32 v229, 0x280, v118
	v_or_b32_e32 v230, 0x380, v118
	v_or_b32_e32 v231, 0x480, v118
	v_or_b32_e32 v232, 0x580, v118
	v_or_b32_e32 v233, 0x680, v118
	v_or_b32_e32 v235, 0x780, v118
	v_or_b32_e32 v236, 0x880, v118
	v_or_b32_e32 v237, 0x980, v118
	v_or_b32_e32 v240, 0xa80, v118
	v_or_b32_e32 v241, 0xb80, v118
	v_or_b32_e32 v243, 0xc80, v118
	v_or_b32_e32 v238, 0xd80, v118
	v_or_b32_e32 v239, 0xe80, v118
	v_or_b32_e32 v244, 0xf80, v118
	v_or_b32_e32 v242, 0x1080, v118
	v_or_b32_e32 v245, 0x1180, v118
	v_or_b32_e32 v246, 0x1280, v118
	v_or_b32_e32 v4, 0x1380, v118
	v_or_b32_e32 v114, 0x1480, v118
	v_or_b32_e32 v152, 0x1580, v118
	v_or_b32_e32 v172, 0x1680, v118
	v_or_b32_e32 v173, 0x1780, v118
	v_or_b32_e32 v174, 0x1880, v118
	v_or_b32_e32 v175, 0x1980, v118
	v_or_b32_e32 v176, 0x1a80, v118
	v_or_b32_e32 v177, 0x1b80, v118
	v_or_b32_e32 v178, 0x1c80, v118
	v_or_b32_e32 v179, 0x1d80, v118
	v_or_b32_e32 v193, 0x1e80, v118
	v_or_b32_e32 v194, 0x1f80, v118
	scratch_store_b32 off, v4, off          ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr4
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr17
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr118
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr206
                                        ; implicit-def: $vgpr208
                                        ; implicit-def: $vgpr197
                                        ; implicit-def: $vgpr199
                                        ; implicit-def: $vgpr201
                                        ; implicit-def: $vgpr203
                                        ; implicit-def: $vgpr204
                                        ; implicit-def: $vgpr211
                                        ; implicit-def: $vgpr214
                                        ; implicit-def: $vgpr216
                                        ; implicit-def: $vgpr218
                                        ; implicit-def: $vgpr220
                                        ; implicit-def: $vgpr222
                                        ; implicit-def: $vgpr223
                                        ; implicit-def: $vgpr212
                                        ; implicit-def: $vgpr205
                                        ; implicit-def: $vgpr209
                                        ; implicit-def: $vgpr198
                                        ; implicit-def: $vgpr200
                                        ; implicit-def: $vgpr202
                                        ; implicit-def: $vgpr210
                                        ; implicit-def: $vgpr234
                                        ; implicit-def: $vgpr213
                                        ; implicit-def: $vgpr215
                                        ; implicit-def: $vgpr217
                                        ; implicit-def: $vgpr219
                                        ; implicit-def: $vgpr221
                                        ; implicit-def: $vgpr224
                                        ; implicit-def: $vgpr225
                                        ; implicit-def: $vgpr226
                                        ; implicit-def: $vgpr227
                                        ; implicit-def: $vgpr228
                                        ; implicit-def: $vgpr229
                                        ; implicit-def: $vgpr230
                                        ; implicit-def: $vgpr231
                                        ; implicit-def: $vgpr232
                                        ; implicit-def: $vgpr233
                                        ; implicit-def: $vgpr235
                                        ; implicit-def: $vgpr236
                                        ; implicit-def: $vgpr237
                                        ; implicit-def: $vgpr240
                                        ; implicit-def: $vgpr241
                                        ; implicit-def: $vgpr243
                                        ; implicit-def: $vgpr238
                                        ; implicit-def: $vgpr239
                                        ; implicit-def: $vgpr244
                                        ; implicit-def: $vgpr242
                                        ; implicit-def: $vgpr245
                                        ; implicit-def: $vgpr246
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr114
                                        ; implicit-def: $vgpr152
                                        ; implicit-def: $vgpr172
                                        ; implicit-def: $vgpr173
                                        ; implicit-def: $vgpr174
                                        ; implicit-def: $vgpr175
                                        ; implicit-def: $vgpr176
                                        ; implicit-def: $vgpr177
                                        ; implicit-def: $vgpr178
                                        ; implicit-def: $vgpr179
                                        ; implicit-def: $vgpr193
                                        ; implicit-def: $vgpr194
.LBB0_3:                                ; %Flow421
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v4, s33, v195
	v_or_b32_e32 v3, s33, v3
	v_and_b32_e32 v196, 0xf0, v0
	s_ashr_i32 s44, s6, 5
	v_or_b32_e32 v116, s26, v0
	v_mul_lo_u32 v117, v4, s44
	v_mul_lo_u32 v115, v3, s44
	v_lshlrev_b32_e32 v34, 2, v196
	v_lshlrev_b32_e32 v35, 1, v0
	v_lshlrev_b32_e32 v33, 1, v196
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v36, 0x160, v44
	v_bfe_i32 v1, v0, 2, 1
	v_and_or_b32 v118, 0x70, v2, v195
	v_dual_mov_b32 v105, 0 :: v_dual_and_b32 v2, 28, v35
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v182, s27, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_or_b32 v47, 0x90, v1, v36
	v_or_b32_e32 v1, 0x100, v118
	v_or_b32_e32 v206, 0x200, v118
	v_or_b32_e32 v208, 0x300, v118
	v_or_b32_e32 v197, 0x400, v118
	v_xor_b32_e32 v48, 16, v47
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1380, v118
	v_mov_b32_e32 v108, 0
	v_or_b32_e32 v199, 0x500, v118
	v_or_b32_e32 v201, 0x600, v118
	v_or_b32_e32 v203, 0x700, v118
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_and_b32_e32 v1, 32, v44
	v_or_b32_e32 v204, 0x800, v118
	v_or_b32_e32 v211, 0x900, v118
	v_or_b32_e32 v214, 0xa00, v118
	v_or_b32_e32 v216, 0xb00, v118
	v_add3_u32 v1, 0, v34, v1
	v_or_b32_e32 v218, 0xc00, v118
	v_or_b32_e32 v220, 0xd00, v118
	v_or_b32_e32 v222, 0xe00, v118
	v_or_b32_e32 v223, 0xf00, v118
	v_or_b32_e32 v212, 0x1000, v118
	v_or_b32_e32 v205, 0x1100, v118
	v_or_b32_e32 v209, 0x1200, v118
	v_or_b32_e32 v198, 0x1300, v118
	v_or_b32_e32 v200, 0x1400, v118
	v_or_b32_e32 v202, 0x1500, v118
	v_or_b32_e32 v210, 0x1600, v118
	v_or_b32_e32 v234, 0x1700, v118
	v_or_b32_e32 v213, 0x1800, v118
	v_or_b32_e32 v215, 0x1900, v118
	v_or_b32_e32 v217, 0x1a00, v118
	v_or_b32_e32 v219, 0x1b00, v118
	v_or_b32_e32 v221, 0x1c00, v118
	v_or_b32_e32 v224, 0x1d00, v118
	v_or_b32_e32 v225, 0x1e00, v118
	v_or_b32_e32 v226, 0x1f00, v118
	v_or_b32_e32 v227, 0x80, v118
	v_or_b32_e32 v228, 0x180, v118
	v_or_b32_e32 v229, 0x280, v118
	v_or_b32_e32 v230, 0x380, v118
	v_or_b32_e32 v231, 0x480, v118
	v_or_b32_e32 v232, 0x580, v118
	v_or_b32_e32 v233, 0x680, v118
	v_or_b32_e32 v235, 0x780, v118
	v_or_b32_e32 v236, 0x880, v118
	v_or_b32_e32 v237, 0x980, v118
	v_or_b32_e32 v240, 0xa80, v118
	v_or_b32_e32 v241, 0xb80, v118
	v_or_b32_e32 v243, 0xc80, v118
	v_or_b32_e32 v238, 0xd80, v118
	v_or_b32_e32 v239, 0xe80, v118
	v_or_b32_e32 v244, 0xf80, v118
	v_or_b32_e32 v242, 0x1080, v118
	v_or_b32_e32 v245, 0x1180, v118
	v_or_b32_e32 v246, 0x1280, v118
	v_or_b32_e32 v114, 0x1480, v118
	v_or_b32_e32 v152, 0x1580, v118
	v_or_b32_e32 v172, 0x1680, v118
	v_or_b32_e32 v173, 0x1780, v118
	v_or_b32_e32 v174, 0x1880, v118
	v_or_b32_e32 v175, 0x1980, v118
	v_or_b32_e32 v176, 0x1a80, v118
	v_or_b32_e32 v177, 0x1b80, v118
	v_or_b32_e32 v178, 0x1c80, v118
	v_or_b32_e32 v179, 0x1d80, v118
	v_or_b32_e32 v193, 0x1e80, v118
	v_or_b32_e32 v194, 0x1f80, v118
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v183, v1, v2
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v184, 0, v33
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v52, 0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s16, 0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s15, s44, 3
	s_add_i32 s14, s35, 32
	s_mov_b32 s48, 1
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s47, 0, 0x8400
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s15, s15, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
	s_mov_b32 s50, s16
	s_mov_b32 s49, s16
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s52, s49, 5
	s_mov_b32 s51, s50
	s_mov_b32 s50, s1
	s_mov_b32 s1, s30
	s_mov_b32 s30, s35
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s35, s14, s52
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v113, s51, v118
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v1, s35, v38
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v127, s23 :: v_dual_add_nc_u32 v2, s35, v42
	v_dual_mov_b32 v126, s22 :: v_dual_add_nc_u32 v169, s50, v118
	v_mov_b32_e32 v124, s20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s50, s1, 31
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s51, s35, s34
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_lshr_b32 s50, s50, 27
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v125, s21 :: v_dual_mov_b32 v120, s16
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_mov_b32_e32 v123, s19
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_add_i32 s1, s1, s50
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s50, s51, s26
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_mov_b32_e32 v121, s17
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b32 v119, v1, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v1, v113 offset:3328
	ds_load_u8 v2, v113 offset:3072
	ds_load_u8 v3, v113 offset:3840
	ds_load_u8 v4, v113 offset:3584
	ds_load_u8 v5, v113 offset:2304
	ds_load_u8 v6, v113 offset:2048
	ds_load_u8 v7, v113 offset:2816
	ds_load_u8 v8, v113 offset:2560
	ds_load_u8 v9, v113 offset:1280
	ds_load_u8 v10, v113 offset:1024
	ds_load_u8 v11, v113 offset:1792
	ds_load_u8 v12, v113 offset:1536
	ds_load_u8 v13, v113 offset:256
	ds_load_u8 v14, v113
	ds_load_u8 v15, v113 offset:768
	ds_load_u8 v16, v113 offset:512
	ds_load_u8 v17, v113 offset:3456
	ds_load_u8 v18, v113 offset:3200
	ds_load_u8 v19, v113 offset:3968
	ds_load_u8 v20, v113 offset:3712
	ds_load_u8 v21, v113 offset:2432
	ds_load_u8 v22, v113 offset:2176
	ds_load_u8 v23, v113 offset:2944
	ds_load_u8 v24, v113 offset:2688
	ds_load_u8 v25, v113 offset:1408
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v5, v8, v7, 0xc0c0004
	ds_load_u8 v26, v113 offset:1152
	ds_load_u8 v27, v113 offset:1920
	ds_load_u8 v7, v113 offset:128
	ds_load_u8 v8, v113 offset:896
	v_lshl_or_b32 v4, v2, 16, v1
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v1, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v2, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v12, v16, v15, 0xc0c0004
	v_lshl_or_b32 v3, v5, 16, v3
	ds_load_u8 v5, v113 offset:1664
	ds_load_u8 v6, v113 offset:384
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v16, v20, v19, 0xc0c0004
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v14, v13, 0xc0c0004
	v_perm_b32 v14, v18, v17, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v15, v169 offset:3584
	ds_load_u8 v17, v169 offset:2304
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v18, v22, v21, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v21, v169 offset:2816
	ds_load_u8 v19, v169 offset:2048
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v9, v113 offset:640
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v10, v169 offset:3328
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v1, v12, 16, v1
	v_lshl_or_b32 v131, v16, 16, v14
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v12, v169 offset:2560
	ds_load_u8 v14, v169 offset:1280
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v20, v24, v23, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v11, v169 offset:3072
	ds_load_u8 v13, v169 offset:3840
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v16, v26, v25, 0xc0c0004
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s51, s1, 5
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v130, v20, 16, v18
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v20, v169 offset:1792
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v18, v169 offset:1024
	ds_load_u8 v7, v169
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v5, v5, v27, 0xc0c0004
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s53, s51, s34
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	s_add_i32 s52, s50, s27
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s51, s44
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_mov_b32_e32 v122, s18
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v17, v19, v17, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v129, v5, 16, v16
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v12, v21, 0xc0c0004
	ds_load_u8 v5, v169 offset:1536
	ds_load_u8 v16, v169 offset:256
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v128, v8, 16, v6
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v6, v169 offset:3712
	ds_load_u8 v8, v169 offset:2432
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	v_lshl_or_b32 v138, v12, 16, v17
	ds_load_u8 v12, v169 offset:2176
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v169 offset:512
	ds_load_u8 v21, v169 offset:3968
	ds_load_u8 v15, v169 offset:3456
	ds_load_u8 v17, v169 offset:1920
	v_lshl_or_b32 v139, v13, 16, v10
	ds_load_u8 v13, v169 offset:2944
	ds_load_u8 v19, v169 offset:3200
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s1, -1, 0
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v8, v12, v8, 0xc0c0004
	ds_load_u8 v12, v169 offset:1664
	ds_load_u8 v9, v169 offset:768
	v_perm_b32 v10, v18, v14, 0xc0c0004
	ds_load_u8 v14, v169 offset:2688
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v6, v6, v21, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v12, v17, 0xc0c0004
	ds_load_u8 v17, v169 offset:896
	v_perm_b32 v15, v19, v15, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v169 offset:384
	v_perm_b32 v7, v7, v16, 0xc0c0004
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v169 offset:1408
	ds_load_u8 v16, v169 offset:1152
	v_lshl_or_b32 v143, v6, 16, v15
	v_lshl_or_b32 v142, v13, 16, v8
	v_lshl_or_b32 v136, v9, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v16, v11, 0xc0c0004
	ds_load_u8 v16, v169 offset:128
	v_lshl_or_b32 v141, v12, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v16, v14, 0xc0c0004
	ds_load_u8 v16, v169 offset:640
	v_perm_b32 v5, v5, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v137, v5, 16, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v16, v17, 0xc0c0004
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v17, s0, v47
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v140, v16, 16, v14
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[144:147], v17
	ds_load_b128 v[148:151], v17 offset:512
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[1:4], v[144:147], v[120:127] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[1:4], v[148:151], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[128:131], v[144:147], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[128:131], v[148:151], v[120:127] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[128:135], v[136:139], v[144:147], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[161:168], v[136:139], v[148:151], v[120:127] neg_lo:[1,1,0]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v136, s0, v48
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[153:160], v[140:143], v[144:147], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[185:192], v[140:143], v[148:151], v[120:127] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v120, v113 offset:7424
	ds_load_u8 v121, v113 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v113 offset:7936
	ds_load_u8 v122, v113 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v113 offset:6400
	ds_load_u8 v123, v113 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v113 offset:6912
	ds_load_u8 v124, v113 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v124, v123, 0xc0c0004
	v_lshl_or_b32 v123, v121, 16, v120
	ds_load_u8 v120, v113 offset:5376
	ds_load_u8 v121, v113 offset:5120
	v_lshl_or_b32 v122, v124, 16, v122
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v113 offset:5888
	ds_load_u8 v124, v113 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v124, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v121, v121, 16, v120
	ds_load_u8 v120, v113 offset:4352
	ds_load_u8 v124, v113 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v124, v120, 0xc0c0004
	ds_load_u8 v124, v113 offset:4864
	ds_load_u8 v125, v113 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v120, v124, 16, v120
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[124:127], v136
	ds_load_b128 v[136:139], v136 offset:512
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[120:123], v[124:127], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[120:123], v[136:139], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v120, v113 offset:7552
	ds_load_u8 v121, v113 offset:7296
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v113 offset:8064
	ds_load_u8 v122, v113 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v113 offset:6528
	ds_load_u8 v123, v113 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v113 offset:7040
	ds_load_u8 v140, v113 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v140, v123, 0xc0c0004
	v_lshl_or_b32 v123, v121, 16, v120
	ds_load_u8 v120, v113 offset:5504
	ds_load_u8 v121, v113 offset:5248
	v_lshl_or_b32 v122, v140, 16, v122
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v113 offset:6016
	ds_load_u8 v140, v113 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v140, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v121, v121, 16, v120
	ds_load_u8 v120, v113 offset:4480
	ds_load_u8 v140, v113 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v140, v120, 0xc0c0004
	ds_load_u8 v140, v113 offset:4992
	ds_load_u8 v113, v113 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v113, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v120, v113, 16, v120
	v_wmma_i32_16x16x16_iu8 v[17:24], v[120:123], v[124:127], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[120:123], v[136:139], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v113, v169 offset:7424
	ds_load_u8 v120, v169 offset:7168
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v151, v17
	v_cvt_f32_i32_e32 v170, v5
	v_cvt_f32_i32_e32 v171, v6
	v_cvt_f32_i32_e32 v180, v7
	v_cvt_f32_i32_e32 v181, v8
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v120, v113, 0xc0c0004
	ds_load_u8 v120, v169 offset:7936
	ds_load_u8 v121, v169 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v169 offset:6400
	ds_load_u8 v122, v169 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v169 offset:6912
	ds_load_u8 v123, v169 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	v_lshl_or_b32 v123, v120, 16, v113
	ds_load_u8 v113, v169 offset:5376
	ds_load_u8 v120, v169 offset:5120
	v_lshl_or_b32 v122, v122, 16, v121
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v120, v113, 0xc0c0004
	ds_load_u8 v120, v169 offset:5888
	ds_load_u8 v121, v169 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v121, v120, 16, v113
	ds_load_u8 v113, v169 offset:4352
	ds_load_u8 v120, v169 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v120, v113, 0xc0c0004
	ds_load_u8 v120, v169 offset:4864
	ds_load_u8 v140, v169 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v140, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v120, v120, 16, v113
	ds_load_u8 v113, v169 offset:7552
	ds_load_u8 v140, v169 offset:7296
	v_wmma_i32_16x16x16_iu8 v[161:168], v[120:123], v[136:139], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[120:123], v[124:127], v[128:135] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v145, v162
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v162, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v147, v130
	v_cvt_f32_i32_e32 v149, v128
	v_cvt_f32_i32_e32 v148, v129
	v_cvt_f32_i32_e32 v150, v161
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v161, v12
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v146, v131
	v_cvt_f32_i32_e32 v135, v135
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v140, v113, 0xc0c0004
	ds_load_u8 v140, v169 offset:8064
	ds_load_u8 v141, v169 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	ds_load_u8 v141, v169 offset:6528
	ds_load_u8 v142, v169 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v169 offset:7040
	ds_load_u8 v143, v169 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	v_lshl_or_b32 v143, v140, 16, v113
	ds_load_u8 v113, v169 offset:5504
	ds_load_u8 v140, v169 offset:5248
	v_lshl_or_b32 v142, v142, 16, v141
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v140, v113, 0xc0c0004
	ds_load_u8 v140, v169 offset:6016
	ds_load_u8 v141, v169 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v141, v140, 16, v113
	ds_load_u8 v113, v169 offset:4480
	ds_load_u8 v140, v169 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v140, v113, 0xc0c0004
	ds_load_u8 v140, v169 offset:4992
	ds_load_u8 v144, v169 offset:4736
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v169, v4
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v144, v140, 0xc0c0004
	v_cvt_f32_i32_e32 v144, v163
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v163, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v140, v140, 16, v113
	v_wmma_i32_16x16x16_iu8 v[153:160], v[140:143], v[124:127], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[185:192], v[140:143], v[136:139], v[185:192] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v141, v166
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v166, v1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v1, s35, v37
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v140, v167
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v167, v2
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v2, s50, v41
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v122, v158
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v1, s35, v39
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v158, v9
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v139, v168
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v168, v3
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v3, v115, s51, 1
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s0, s31, v1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v1, v116, s53, 1
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v130, v153
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v153, v18
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v5, 0x80000000, v2, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v2, s52, v40
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v129, v154
	v_cvt_f32_i32_e32 v128, v155
	v_cvt_f32_i32_e32 v113, v156
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v1, v1, s[40:43], 0 offen
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e32 v9, 0x80000000, v2, vcc_lo
	.loc	1 328 43 is_stmt 0              ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v2, s52, v41
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v120, v157
	v_cvt_f32_i32_e32 v121, v159
	v_cvt_f32_i32_e32 v123, v160
	v_cvt_f32_i32_e32 v143, v164
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v13, 0x80000000, v2, s0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v2, v117, s51, 1
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v142, v165
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v154, v19
	v_cvt_f32_i32_e32 v155, v20
	v_cvt_f32_i32_e32 v156, v21
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	s_clause 0x1
	buffer_load_u16 v2, v2, s[4:7], 0 offen
	buffer_load_u16 v18, v3, s[4:7], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v157, v22
	v_cvt_f32_i32_e32 v159, v10
	v_cvt_f32_i32_e32 v160, v11
	v_cvt_f32_i32_e32 v164, v15
	v_cvt_f32_i32_e32 v165, v16
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v127, v192
	v_cvt_f32_i32_e32 v126, v190
	v_cvt_f32_i32_e32 v125, v191
	v_cvt_f32_i32_e32 v138, v132
	v_cvt_f32_i32_e32 v137, v133
	v_cvt_f32_i32_e32 v136, v134
	v_cvt_f32_i32_e32 v134, v185
	v_cvt_f32_i32_e32 v133, v186
	v_cvt_f32_i32_e32 v132, v187
	v_cvt_f32_i32_e32 v131, v188
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s0, s48, 1
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v124, v189
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s0, 2
	s_cselect_b32 s48, s0, 0
	s_add_i32 s52, s49, 1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_lshl_b32 s0, s48, 10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s51, s0, 0
	s_mov_b32 s0, s47
	s_add_i32 s47, s51, 0x8000
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v183, v1 offset:34816
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v1, s50, v40
	s_mov_b32 s50, s46
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 322 26 is_stmt 0              ; generate_amdgcn.py:322:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 16, v2
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[36:39], 0 offen
	buffer_load_b128 v[5:8], v5, s[36:39], 0 offen
	buffer_load_b128 v[9:12], v9, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v13, s[36:39], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[19:22], v184 offset:34816
	v_mul_f32_e32 v25, v17, v25
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v98, v25, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v17, v26
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v26, v126, v18 :: v_dual_fmac_f32 v99, v25, v20
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v17, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v27, v124, v18 :: v_dual_fmac_f32 v94, v25, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v25, v17, v28 :: v_dual_mul_f32 v28, v127, v18
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v95, v25, v22
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v18, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v106, v25, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v19, v18, v159
	v_mul_f32_e32 v25, v17, v29
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v107, v19, v20
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v19, v18, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v102, v19, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v19, v18, v161
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v103, v19, v22
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[19:22], v184 offset:34832
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v90, v25, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v17, v30
	v_mul_f32_e32 v23, v17, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v91, v25, v20
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v17, v31
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v86, v25, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v17, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v87, v25, v22
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v18, v162
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v71, v25, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v19, v18, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v25, v17, v151 :: v_dual_fmac_f32 v72, v19, v20
	v_mul_f32_e32 v19, v18, v164
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v67, v19, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v19, v18, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v68, v19, v22
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[19:22], v184 offset:35328
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v82, v25, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v17, v153
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v83, v25, v20
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v17, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v78, v25, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v17, v155
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v80, v25, v22
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v18, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v62, v25, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v19, v18, v167
	v_mul_f32_e32 v25, v17, v156
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v63, v19, v20
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v19, v18, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v59, v19, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v19, v18, v169
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v60, v19, v22
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[19:22], v184 offset:35344
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v49, v23, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v23, v17, v24
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v76, v25, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v17, v157
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v24, v120, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v50, v23, v22
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v23, v18, v170
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v77, v25, v20
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v25, v123, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v53, v23, v19
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v19, v18, v171
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v23, v149, v17 :: v_dual_fmac_f32 v54, v19, v20
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v19, v18, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v52, v19, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v19, v18, v181
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v51, v19, v22
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v19, v182, s53, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	s_mov_b32 s1, s45
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_lshl_b32 s45, s48, 13
	s_add_i32 s46, s45, 0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v19, v19, s[40:43], 0 offen
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_add_i32 s45, s46, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s49, s15
	s_mov_b32 s49, s52
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_store_b32 v183, v19 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[19:22], v184 offset:34816
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v75, v23, v19
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v23, v148, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v108, v23, v20
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v23, v147, v17
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v104, v23, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v23, v146, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v105, v23, v22
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v23, v150, v18
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v111, v23, v19
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v19, v145, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v23, v138, v17 :: v_dual_fmac_f32 v112, v19, v20
	v_mul_f32_e32 v19, v144, v18
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v109, v19, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v19, v143, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v110, v19, v22
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[19:22], v184 offset:34832
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v100, v23, v19 :: v_dual_mul_f32 v23, v137, v17
	v_fmac_f32_e32 v101, v23, v20
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v23, v136, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v96, v23, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v23, v135, v17
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v97, v23, v22
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v23, v142, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v73, v23, v19
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v19, v141, v18
	v_dual_mul_f32 v23, v130, v17 :: v_dual_fmac_f32 v74, v19, v20
	v_mul_f32_e32 v19, v140, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v69, v19, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v19, v139, v18
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v70, v19, v22
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[19:22], v184 offset:35328
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v92, v23, v19 :: v_dual_mul_f32 v23, v129, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v23, v20
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v23, v128, v17
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v88, v23, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v23, v113, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v89, v23, v22
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v23, v134, v18
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v65, v23, v19
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v19, v133, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v66, v19, v20 :: v_dual_add_nc_u32 v23, s51, v45
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v19, v132, v18
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v61, v19, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v19, v131, v18
	v_mul_f32_e32 v18, v125, v18
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v64, v19, v22
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[19:22], v184 offset:35344
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	ds_store_b32 v23, v119 offset:32768
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v23, v122, v17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v17, v121, v17 :: v_dual_fmac_f32 v84, v24, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v85, v23, v20 :: v_dual_add_nc_u32 v24, s46, v46
	v_fmac_f32_e32 v79, v17, v21
	v_fmac_f32_e32 v81, v25, v22
	v_dual_fmac_f32 v57, v27, v19 :: v_dual_fmac_f32 v58, v26, v20
	v_dual_fmac_f32 v55, v18, v21 :: v_dual_fmac_f32 v56, v28, v22
	.loc	1 322 26 is_stmt 1              ; generate_amdgcn.py:322:26
	ds_store_b128 v24, v[1:4]
	ds_store_b128 v24, v[5:8] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	ds_store_b128 v24, v[9:12] offset:16384
	ds_store_b128 v24, v[13:16] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v17, v44
	v_mov_b32_e32 v1, v43
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s47, 0, 0x8400
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v75, 0
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v24, 0
	v_cndmask_b32_e64 v1, 0x90, 0, vcc_lo
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v18, v1, v36
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cndmask_b32_e64 v1, 0, 1, s2
	v_mov_b32_e32 v41, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v42, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_xor_b32_e32 v19, 16, v18
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v2, s0, v18
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v43, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v3, s0, v19
	v_mov_b32_e32 v120, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cmp_ne_u32_e64 s0, 1, v1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[13:16], v2
	ds_load_b128 v[9:12], v2 offset:512
	ds_load_b128 v[5:8], v3
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_b128 v[1:4], v3 offset:512
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v190, v242
	v_dual_mov_b32 v189, v245 :: v_dual_mov_b32 v188, v246
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off
	scratch_load_b32 v40, off, off offset:4
	v_add_nc_u32_e32 v24, s50, v220
	v_add_nc_u32_e32 v25, s50, v218
	v_add_nc_u32_e32 v22, s50, v223
	v_add_nc_u32_e32 v28, s50, v211
	v_add_nc_u32_e32 v23, s50, v222
	v_add_nc_u32_e32 v26, s50, v216
	v_add_nc_u32_e32 v27, s50, v214
	v_add_nc_u32_e32 v29, s50, v204
	v_add_nc_u32_e32 v30, s50, v203
	v_add_nc_u32_e32 v31, s50, v201
	v_add_nc_u32_e32 v36, s50, v199
	v_add_nc_u32_e32 v37, s50, v197
	v_add_nc_u32_e32 v38, s50, v208
	v_add_nc_u32_e32 v39, s50, v206
	v_add_nc_u32_e32 v41, s50, v118
	v_add_nc_u32_e32 v42, s50, v224
	v_add_nc_u32_e32 v43, s50, v221
	v_add_nc_u32_e32 v47, s50, v215
	v_add_nc_u32_e32 v45, s50, v219
	v_add_nc_u32_e32 v46, s50, v217
	v_add_nc_u32_e32 v147, s50, v213
	v_add_nc_u32_e32 v148, s50, v234
	v_add_nc_u32_e32 v149, s50, v210
	v_add_nc_u32_e32 v150, s50, v202
	v_add_nc_u32_e32 v151, s50, v200
	v_add_nc_u32_e32 v153, s50, v198
	v_add_nc_u32_e32 v154, s50, v209
	v_add_nc_u32_e32 v155, s50, v205
	v_add_nc_u32_e32 v156, s50, v212
	v_add_nc_u32_e32 v21, s50, v225
	v_add_nc_u32_e32 v133, s50, v238
	v_add_nc_u32_e32 v134, s50, v243
	v_add_nc_u32_e32 v131, s50, v244
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_mov_b32 s11, s4
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v137, s50, v237
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v32, s50, v194
	v_add_nc_u32_e32 v48, s50, v179
	v_add_nc_u32_e32 v113, s50, v178
	v_add_nc_u32_e32 v119, s50, v177
	v_add_nc_u32_e32 v120, s50, v176
	v_add_nc_u32_e32 v121, s50, v175
	v_add_nc_u32_e32 v122, s50, v174
	v_add_nc_u32_e32 v123, s50, v173
	v_add_nc_u32_e32 v124, s50, v172
	v_add_nc_u32_e32 v125, s50, v152
	v_add_nc_u32_e32 v126, s50, v114
	v_add_nc_u32_e32 v128, s50, v188
	v_add_nc_u32_e32 v129, s50, v189
	v_add_nc_u32_e32 v130, s50, v190
	v_add_nc_u32_e32 v132, s50, v239
	v_add_nc_u32_e32 v135, s50, v241
	v_add_nc_u32_e32 v136, s50, v240
	v_add_nc_u32_e32 v138, s50, v236
	v_add_nc_u32_e32 v139, s50, v235
	v_add_nc_u32_e32 v140, s50, v233
	v_add_nc_u32_e32 v141, s50, v232
	v_add_nc_u32_e32 v142, s50, v231
	v_add_nc_u32_e32 v143, s50, v230
	v_add_nc_u32_e32 v144, s50, v229
	v_add_nc_u32_e32 v145, s50, v228
	v_add_nc_u32_e32 v146, s50, v227
	v_add_nc_u32_e32 v44, s50, v193
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v127, s50, v20
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s50, v40
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v24, v24
	ds_load_u8 v25, v25
	ds_load_u8 v22, v22
	ds_load_u8 v28, v28
	ds_load_u8 v29, v29
	ds_load_u8 v26, v26
	ds_load_u8 v27, v27
	ds_load_u8 v23, v23
	ds_load_u8 v36, v36
	ds_load_u8 v37, v37
	ds_load_u8 v30, v30
	ds_load_u8 v40, v40
	ds_load_u8 v41, v41
	ds_load_u8 v38, v38
	ds_load_u8 v39, v39
	ds_load_u8 v31, v31
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v20, s50, v226
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v25, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	v_perm_b32 v23, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v26, v37, v36, 0xc0c0004
	ds_load_u8 v36, v42
	ds_load_u8 v37, v43
	ds_load_u8 v42, v20
	ds_load_u8 v43, v47
	ds_load_u8 v47, v147
	ds_load_u8 v45, v45
	ds_load_u8 v46, v46
	ds_load_u8 v147, v21
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	ds_load_u8 v148, v148
	ds_load_u8 v155, v155
	ds_load_u8 v156, v156
	ds_load_u8 v153, v153
	ds_load_u8 v154, v154
	ds_load_u8 v149, v149
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v20, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v21, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v27, v31, v30, 0xc0c0004
	v_lshl_or_b32 v31, v22, 16, v24
	v_lshl_or_b32 v30, v25, 16, v23
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v157, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v158, v47, v43, 0xc0c0004
	v_lshl_or_b32 v29, v27, 16, v26
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	v_lshl_or_b32 v28, v21, 16, v20
	v_mov_b32_e32 v27, s11
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	v_dual_mov_b32 v26, s10 :: v_dual_mov_b32 v25, s9
	v_dual_mov_b32 v24, s8 :: v_dual_mov_b32 v23, s7
	v_mov_b32_e32 v22, s6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	v_dual_mov_b32 v21, s5 :: v_dual_mov_b32 v20, s4
	v_lshl_or_b32 v46, v45, 16, v158
	v_perm_b32 v147, v147, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v45, v148, 16, v150
	ds_load_u8 v133, v133
	ds_load_u8 v134, v134
	ds_load_u8 v131, v131
	ds_load_u8 v137, v137
	ds_load_u8 v138, v138
	ds_load_u8 v135, v135
	ds_load_u8 v136, v136
	ds_load_u8 v132, v132
	ds_load_u8 v141, v141
	ds_load_u8 v142, v142
	ds_load_u8 v139, v139
	ds_load_u8 v145, v145
	ds_load_u8 v146, v146
	ds_load_u8 v143, v143
	ds_load_u8 v144, v144
	ds_load_u8 v140, v140
	ds_load_u8 v48, v48
	ds_load_u8 v113, v113
	ds_load_u8 v32, v32
	ds_load_u8 v121, v121
	ds_load_u8 v122, v122
	ds_load_u8 v119, v119
	ds_load_u8 v120, v120
	ds_load_u8 v148, v44
	ds_load_u8 v125, v125
	ds_load_u8 v126, v126
	ds_load_u8 v123, v123
	ds_load_u8 v129, v129
	ds_load_u8 v130, v130
	ds_load_u8 v127, v127
	ds_load_u8 v128, v128
	ds_load_u8 v124, v124
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	v_perm_b32 v132, v138, v137, 0xc0c0004
	v_perm_b32 v134, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v135, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v136, v140, v139, 0xc0c0004
	v_perm_b32 v139, v146, v145, 0xc0c0004
	v_perm_b32 v140, v144, v143, 0xc0c0004
	v_lshl_or_b32 v47, v147, 16, v157
	v_perm_b32 v147, v156, v155, 0xc0c0004
	v_perm_b32 v44, v154, v153, 0xc0c0004
	v_lshl_or_b32 v138, v131, 16, v133
	v_lshl_or_b32 v137, v134, 16, v132
	v_lshl_or_b32 v136, v136, 16, v135
	v_lshl_or_b32 v135, v140, 16, v139
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v48, v113, v48, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v32, v148, v32, 0xc0c0004
	v_perm_b32 v113, v122, v121, 0xc0c0004
	v_perm_b32 v131, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v132, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v124, v123, 0xc0c0004
	v_perm_b32 v129, v130, v129, 0xc0c0004
	v_perm_b32 v127, v128, v127, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[36:43], v[28:31], v[13:16], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v44, v44, 16, v147
	v_wmma_i32_16x16x16_iu8 v[119:126], v[135:138], v[13:16], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v142, v32, 16, v48
	v_lshl_or_b32 v141, v131, 16, v113
	v_lshl_or_b32 v140, v133, 16, v132
	v_lshl_or_b32 v139, v127, 16, v129
	v_wmma_i32_16x16x16_iu8 v[127:134], v[28:31], v[9:12], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[20:27], v[135:138], v[9:12], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[44:47], v[5:8], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[139:142], v[5:8], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[44:47], v[1:4], v[127:134] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[20:27], v[139:142], v[1:4], v[20:27] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v45, v38
	v_cvt_f32_i32_e32 v46, v39
	v_cvt_f32_i32_e32 v44, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v47, v42
	v_cvt_f32_i32_e32 v135, v43
	v_cvt_f32_i32_e32 v43, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v119, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v42, v123
	v_cvt_f32_i32_e32 v113, v124
	v_cvt_f32_i32_e32 v48, v125
	v_cvt_f32_i32_e32 v121, v126
	v_cvt_f32_i32_e32 v125, v127
	v_cvt_f32_i32_e32 v126, v128
	v_cvt_f32_i32_e32 v123, v129
	v_cvt_f32_i32_e32 v124, v130
	v_cvt_f32_i32_e32 v39, v131
	v_cvt_f32_i32_e32 v40, v132
	v_cvt_f32_i32_e32 v32, v133
	v_cvt_f32_i32_e32 v38, v134
	v_cvt_f32_i32_e32 v30, v20
	v_cvt_f32_i32_e32 v31, v21
	v_cvt_f32_i32_e32 v28, v22
	v_cvt_f32_i32_e32 v29, v23
	v_cvt_f32_i32_e32 v22, v24
	v_cvt_f32_i32_e32 v23, v25
	v_cvt_f32_i32_e32 v21, v26
	v_cvt_f32_i32_e32 v20, v27
	v_cvt_f32_i32_e32 v24, v36
	v_cvt_f32_i32_e32 v25, v37
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v126, off offset:228
	scratch_store_b32 off, v125, off offset:224
	scratch_store_b32 off, v124, off offset:212
	scratch_store_b32 off, v123, off offset:208
	scratch_store_b32 off, v25, off offset:204
	scratch_store_b32 off, v24, off offset:196
	scratch_store_b32 off, v122, off offset:192
	scratch_store_b32 off, v121, off offset:188
	scratch_store_b32 off, v120, off offset:184
	scratch_store_b32 off, v135, off offset:180
	scratch_store_b32 off, v119, off offset:176
	scratch_store_b32 off, v113, off offset:172
	scratch_store_b32 off, v48, off offset:168
	scratch_store_b32 off, v43, off offset:164
	scratch_store_b32 off, v47, off offset:160
	scratch_store_b32 off, v46, off offset:156
	scratch_store_b32 off, v42, off offset:152
	scratch_store_b32 off, v45, off offset:148
	scratch_store_b32 off, v41, off offset:144
	scratch_store_b32 off, v44, off offset:140
	scratch_store_b32 off, v40, off offset:72
	scratch_store_b32 off, v39, off offset:68
	scratch_store_b32 off, v38, off offset:56
	scratch_store_b32 off, v32, off offset:52
	scratch_store_b32 off, v31, off offset:40
	scratch_store_b32 off, v30, off offset:36
	scratch_store_b32 off, v29, off offset:32
	scratch_store_b32 off, v28, off offset:28
	scratch_store_b32 off, v23, off offset:24
	scratch_store_b32 off, v22, off offset:20
	scratch_store_b32 off, v21, off offset:16
	scratch_store_b32 off, v20, off offset:12
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v20, 0
	v_mov_b32_e32 v21, 0
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off
	scratch_load_b32 v41, off, off offset:4
	v_add_nc_u32_e32 v25, s1, v220
	v_add_nc_u32_e32 v26, s1, v218
	v_add_nc_u32_e32 v23, s1, v223
	v_add_nc_u32_e32 v29, s1, v211
	v_add_nc_u32_e32 v24, s1, v222
	v_add_nc_u32_e32 v27, s1, v216
	v_add_nc_u32_e32 v28, s1, v214
	v_add_nc_u32_e32 v30, s1, v204
	v_add_nc_u32_e32 v37, s1, v199
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v25, v25
	ds_load_u8 v26, v26
	ds_load_u8 v23, v23
	ds_load_u8 v29, v29
	ds_load_u8 v30, v30
	ds_load_u8 v27, v27
	ds_load_u8 v28, v28
	ds_load_u8 v24, v24
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v38, s1, v197
	v_add_nc_u32_e32 v31, s1, v203
	v_add_nc_u32_e32 v36, s1, v201
	v_add_nc_u32_e32 v39, s1, v208
	v_add_nc_u32_e32 v40, s1, v206
	v_add_nc_u32_e32 v42, s1, v118
	v_add_nc_u32_e32 v22, s1, v224
	v_add_nc_u32_e32 v45, s1, v221
	v_add_nc_u32_e32 v147, s1, v215
	v_add_nc_u32_e32 v46, s1, v219
	v_add_nc_u32_e32 v47, s1, v217
	v_add_nc_u32_e32 v148, s1, v213
	v_add_nc_u32_e32 v149, s1, v234
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v150, s1, v210
	v_add_nc_u32_e32 v151, s1, v202
	v_add_nc_u32_e32 v153, s1, v200
	v_add_nc_u32_e32 v154, s1, v205
	v_add_nc_u32_e32 v155, s1, v212
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v21, s1, v225
	v_add_nc_u32_e32 v24, s1, v198
	v_add_nc_u32_e32 v26, s1, v209
	v_add_nc_u32_e32 v133, s1, v238
	v_add_nc_u32_e32 v134, s1, v243
	v_add_nc_u32_e32 v131, s1, v244
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_mov_b32 s11, s4
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v137, s1, v237
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v32, s1, v194
	v_add_nc_u32_e32 v48, s1, v179
	v_add_nc_u32_e32 v113, s1, v178
	v_add_nc_u32_e32 v119, s1, v177
	v_add_nc_u32_e32 v120, s1, v176
	v_add_nc_u32_e32 v121, s1, v175
	v_add_nc_u32_e32 v122, s1, v174
	v_add_nc_u32_e32 v123, s1, v173
	v_add_nc_u32_e32 v124, s1, v172
	v_add_nc_u32_e32 v125, s1, v152
	v_add_nc_u32_e32 v126, s1, v114
	v_add_nc_u32_e32 v128, s1, v188
	v_add_nc_u32_e32 v129, s1, v189
	v_add_nc_u32_e32 v130, s1, v190
	v_add_nc_u32_e32 v132, s1, v239
	v_add_nc_u32_e32 v135, s1, v241
	v_add_nc_u32_e32 v136, s1, v240
	v_add_nc_u32_e32 v138, s1, v236
	v_add_nc_u32_e32 v139, s1, v235
	v_add_nc_u32_e32 v140, s1, v233
	v_add_nc_u32_e32 v141, s1, v232
	v_add_nc_u32_e32 v142, s1, v231
	v_add_nc_u32_e32 v143, s1, v230
	v_add_nc_u32_e32 v144, s1, v229
	v_add_nc_u32_e32 v145, s1, v228
	v_add_nc_u32_e32 v146, s1, v227
	v_add_nc_u32_e32 v44, s1, v193
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v127, s1, v20
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s1, v41
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	ds_load_u8 v43, v31
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	ds_load_u8 v39, v39
	ds_load_u8 v40, v40
	ds_load_u8 v36, v36
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v20, s1, v226
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v31, v23, 16, v25
	v_perm_b32 v25, v28, v27, 0xc0c0004
	v_perm_b32 v23, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v25, 16, v23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v27, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v36, v43, 0xc0c0004
	ds_load_u8 v36, v22
	ds_load_u8 v37, v45
	ds_load_u8 v38, v20
	ds_load_u8 v43, v147
	ds_load_u8 v45, v148
	ds_load_u8 v46, v46
	ds_load_u8 v47, v47
	ds_load_u8 v147, v21
	ds_load_u8 v148, v151
	ds_load_u8 v151, v153
	ds_load_u8 v149, v149
	ds_load_u8 v153, v154
	ds_load_u8 v154, v155
	ds_load_u8 v155, v24
	ds_load_u8 v156, v26
	ds_load_u8 v150, v150
	v_perm_b32 v20, v42, v41, 0xc0c0004
	v_perm_b32 v21, v40, v39, 0xc0c0004
	v_lshl_or_b32 v29, v28, 16, v27
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v157, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v28, v21, 16, v20
	v_mov_b32_e32 v27, s11
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_mov_b32_e32 v26, s10
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	v_dual_mov_b32 v25, s9 :: v_dual_mov_b32 v24, s8
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v148, v151, v148, 0xc0c0004
	v_dual_mov_b32 v23, s7 :: v_dual_mov_b32 v22, s6
	v_dual_mov_b32 v21, s5 :: v_dual_mov_b32 v20, s4
	v_lshl_or_b32 v46, v46, 16, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	v_perm_b32 v147, v147, v38, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[36:43], v[28:31], v[13:16], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v45, v149, 16, v148
	ds_load_u8 v133, v133
	ds_load_u8 v134, v134
	ds_load_u8 v131, v131
	ds_load_u8 v137, v137
	ds_load_u8 v138, v138
	ds_load_u8 v135, v135
	ds_load_u8 v136, v136
	ds_load_u8 v132, v132
	ds_load_u8 v141, v141
	ds_load_u8 v142, v142
	ds_load_u8 v139, v139
	ds_load_u8 v145, v145
	ds_load_u8 v146, v146
	ds_load_u8 v143, v143
	ds_load_u8 v144, v144
	ds_load_u8 v140, v140
	ds_load_u8 v48, v48
	ds_load_u8 v113, v113
	ds_load_u8 v32, v32
	ds_load_u8 v121, v121
	ds_load_u8 v122, v122
	ds_load_u8 v119, v119
	ds_load_u8 v120, v120
	ds_load_u8 v148, v44
	ds_load_u8 v125, v125
	ds_load_u8 v126, v126
	ds_load_u8 v123, v123
	ds_load_u8 v129, v129
	ds_load_u8 v130, v130
	ds_load_u8 v127, v127
	ds_load_u8 v128, v128
	ds_load_u8 v124, v124
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	v_perm_b32 v132, v138, v137, 0xc0c0004
	v_perm_b32 v134, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v135, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v136, v140, v139, 0xc0c0004
	v_perm_b32 v139, v146, v145, 0xc0c0004
	v_perm_b32 v140, v144, v143, 0xc0c0004
	v_lshl_or_b32 v47, v147, 16, v157
	v_perm_b32 v147, v154, v153, 0xc0c0004
	v_perm_b32 v44, v156, v155, 0xc0c0004
	v_lshl_or_b32 v138, v131, 16, v133
	v_lshl_or_b32 v137, v134, 16, v132
	v_lshl_or_b32 v136, v136, 16, v135
	v_lshl_or_b32 v135, v140, 16, v139
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v48, v113, v48, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v32, v148, v32, 0xc0c0004
	v_perm_b32 v113, v122, v121, 0xc0c0004
	v_perm_b32 v131, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v132, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v124, v123, 0xc0c0004
	v_perm_b32 v129, v130, v129, 0xc0c0004
	v_perm_b32 v127, v128, v127, 0xc0c0004
	v_lshl_or_b32 v44, v44, 16, v147
	v_wmma_i32_16x16x16_iu8 v[119:126], v[135:138], v[13:16], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v16, v32, 16, v48
	v_lshl_or_b32 v15, v131, 16, v113
	v_lshl_or_b32 v14, v133, 16, v132
	v_lshl_or_b32 v13, v127, 16, v129
	v_wmma_i32_16x16x16_iu8 v[127:134], v[28:31], v[9:12], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[20:27], v[135:138], v[9:12], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[44:47], v[5:8], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[13:16], v[5:8], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[44:47], v[1:4], v[127:134] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[20:27], v[13:16], v[1:4], v[20:27] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v252, v37
	v_cvt_f32_i32_e32 v245, v38
	v_cvt_f32_i32_e32 v253, v39
	v_cvt_f32_i32_e32 v246, v40
	v_cvt_f32_i32_e32 v254, v41
	v_cvt_f32_i32_e32 v247, v42
	v_cvt_f32_i32_e32 v255, v43
	v_cvt_f32_i32_e32 v248, v119
	v_cvt_f32_i32_e32 v182, v120
	v_cvt_f32_i32_e32 v249, v121
	v_cvt_f32_i32_e32 v183, v122
	v_cvt_f32_i32_e32 v250, v123
	v_cvt_f32_i32_e32 v184, v124
	v_cvt_f32_i32_e32 v251, v125
	v_cvt_f32_i32_e32 v185, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v121, v129
	v_cvt_f32_i32_e32 v122, v130
	v_cvt_f32_i32_e32 v38, v131
	v_cvt_f32_i32_e32 v39, v132
	v_cvt_f32_i32_e32 v32, v133
	v_cvt_f32_i32_e32 v37, v134
	v_cvt_f32_i32_e32 v30, v20
	v_cvt_f32_i32_e32 v31, v21
	v_cvt_f32_i32_e32 v28, v22
	v_cvt_f32_i32_e32 v29, v23
	v_cvt_f32_i32_e32 v22, v24
	v_cvt_f32_i32_e32 v23, v25
	v_cvt_f32_i32_e32 v20, v26
	v_cvt_f32_i32_e32 v21, v27
	v_cvt_f32_i32_e32 v159, v36
.LBB0_12:
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
	s_mul_i32 s1, s0, s34
	.loc	1 331 34 is_stmt 1              ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s44
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v117, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v2, v116, s1, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s4, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	v_add3_u32 v153, s26, s27, v0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_add_lshl_u32 v5, v115, s0, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_and_b32_e32 v4, 28, v35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v6, v153, s1, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_and_b32_e32 v3, 32, v17
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_and_b32 s13, s13, 0xffff
	s_clause 0xc                            ; 52-byte Folded Spill
	scratch_store_b32 off, v159, off offset:200
	scratch_store_b32 off, v39, off offset:124
	scratch_store_b32 off, v38, off offset:116
	scratch_store_b32 off, v37, off offset:96
	scratch_store_b32 off, v32, off offset:92
	scratch_store_b32 off, v31, off offset:88
	scratch_store_b32 off, v30, off offset:84
	scratch_store_b32 off, v29, off offset:80
	scratch_store_b32 off, v28, off offset:76
	scratch_store_b32 off, v23, off offset:64
	scratch_store_b32 off, v22, off offset:60
	scratch_store_b32 off, v21, off offset:48
	scratch_store_b32 off, v20, off offset:44
	v_mov_b32_e32 v133, 0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_add3_u32 v3, 0, v34, v3
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v119, 0, v33
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v13, s47, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v120, v3, v4
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_dual_cndmask_b32 v4, 0x80000000, v6 :: v_dual_cndmask_b32 v3, 0x80000000, v5
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v113, v1, s[12:15], 0 offen
	buffer_load_u16 v154, v3, s[12:15], 0 offen
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v14, s47, v19
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v21, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v142, 0
	v_mov_b32_e32 v22, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v120, v2 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v1, v4, s[28:31], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cndmask_b32_e64 v2, 0, 1, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[25:28], v119 offset:34816
	ds_load_b128 v[9:12], v119 offset:34832
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[5:8], v119 offset:35328
	ds_load_b128 v[1:4], v119 offset:35344
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v120, v15 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[45:48], v13
	ds_load_b128 v[41:44], v13 offset:512
	ds_load_b128 v[37:40], v14
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_b128 v[33:36], v14 offset:512
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v13, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v125, off, off         ; 4-byte Folded Reload
	v_add_nc_u32_e32 v22, s46, v238
	v_add_nc_u32_e32 v23, s46, v243
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v21, s46, v244
	v_add_nc_u32_e32 v24, s46, v239
	v_add_nc_u32_e32 v29, s46, v237
	v_add_nc_u32_e32 v30, s46, v236
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v22, v22
	ds_load_u8 v23, v23
	ds_load_u8 v21, v21
	ds_load_u8 v24, v24
	ds_load_u8 v29, v29
	ds_load_u8 v30, v30
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v131, s46, v241
	v_add_nc_u32_e32 v132, s46, v240
	v_add_nc_u32_e32 v136, s46, v232
	v_add_nc_u32_e32 v137, s46, v231
	v_add_nc_u32_e32 v31, s46, v173
	v_add_nc_u32_e32 v32, s46, v172
	v_add_nc_u32_e32 v123, s46, v152
	v_add_nc_u32_e32 v124, s46, v114
	v_add_nc_u32_e32 v126, s46, v188
	v_add_nc_u32_e32 v129, s46, v189
	v_add_nc_u32_e32 v130, s46, v190
	v_add_nc_u32_e32 v134, s46, v235
	v_add_nc_u32_e32 v135, s46, v233
	v_add_nc_u32_e32 v138, s46, v230
	v_add_nc_u32_e32 v13, s46, v194
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v23, s46, v229
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v21, v24, v21, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v24, s46, v228
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v30, s46, v227
	v_add_nc_u32_e32 v14, s46, v193
	v_add_nc_u32_e32 v15, s46, v179
	v_add_nc_u32_e32 v16, s46, v178
	v_add_nc_u32_e32 v17, s46, v177
	v_add_nc_u32_e32 v18, s46, v176
	v_add_nc_u32_e32 v19, s46, v175
	v_add_nc_u32_e32 v20, s46, v174
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v125, s46, v125
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v131, v131
	ds_load_u8 v132, v132
	ds_load_u8 v136, v136
	ds_load_u8 v137, v137
	ds_load_u8 v134, v134
	ds_load_u8 v24, v24
	ds_load_u8 v30, v30
	ds_load_u8 v138, v138
	ds_load_u8 v23, v23
	ds_load_u8 v135, v135
	ds_load_u8 v139, v15
	ds_load_u8 v140, v16
	ds_load_u8 v141, v13
	ds_load_u8 v142, v19
	ds_load_u8 v143, v20
	ds_load_u8 v144, v17
	ds_load_u8 v145, v18
	ds_load_u8 v146, v14
	ds_load_u8 v123, v123
	ds_load_u8 v124, v124
	ds_load_u8 v31, v31
	ds_load_u8 v129, v129
	ds_load_u8 v130, v130
	ds_load_u8 v32, v32
	ds_load_u8 v125, v125
	ds_load_u8 v126, v126
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v13, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v16, v30, v24, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v17, v23, v138, 0xc0c0004
	v_perm_b32 v14, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v15, v135, v134, 0xc0c0004
	v_lshl_or_b32 v23, v13, 16, v29
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v29, v140, v139, 0xc0c0004
	v_lshl_or_b32 v24, v21, 16, v22
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v131, v143, v142, 0xc0c0004
	v_lshl_or_b32 v22, v15, 16, v14
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v132, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v30, v146, v141, 0xc0c0004
	v_lshl_or_b32 v21, v17, 16, v16
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	v_dual_mov_b32 v20, s11 :: v_dual_mov_b32 v19, s10
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v124, v32, v31, 0xc0c0004
	v_lshl_or_b32 v32, v30, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v126, s46, v222
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v31, v132, 16, v131
	v_lshl_or_b32 v30, v124, 16, v123
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v123, s46, v220
	v_add_nc_u32_e32 v124, s46, v218
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v29, v125, 16, v129
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v125, s46, v223
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v123, v123
	ds_load_u8 v124, v124
	v_dual_mov_b32 v18, s9 :: v_dual_add_nc_u32 v129, s46, v211
	v_dual_mov_b32 v17, s8 :: v_dual_mov_b32 v16, s7
	v_dual_mov_b32 v15, s6 :: v_dual_mov_b32 v14, s5
	v_mov_b32_e32 v13, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[21:24], v[45:48], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[29:32], v[37:40], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v124, s46, v204
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v125, v125
	ds_load_u8 v126, v126
	ds_load_u8 v129, v129
	ds_load_u8 v124, v124
	v_cvt_f32_i32_e32 v136, v139
	v_cvt_f32_i32_e32 v139, v141
	v_cvt_f32_i32_e32 v141, v142
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v142, s46, v217
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v134, v143
	v_cvt_f32_i32_e32 v137, v144
	v_cvt_f32_i32_e32 v135, v145
	v_cvt_f32_i32_e32 v138, v146
	v_cvt_f32_i32_e32 v140, v140
	ds_load_u8 v142, v142
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v126, s46, v216
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v124, v124, v129, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v129, s46, v214
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v126, v126
	ds_load_u8 v129, v129
	v_lshl_or_b32 v132, v125, 16, v123
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v123, s46, v199
	v_add_nc_u32_e32 v125, s46, v201
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v123, v123
	ds_load_u8 v125, v125
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v126, v129, v126, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v126, 16, v124
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v124, s46, v197
	v_add_nc_u32_e32 v126, s46, v213
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v124, v124
	ds_load_u8 v126, v126
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v124, s46, v203
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v124, v124
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v125, s46, v206
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v130, v124, 16, v123
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v123, off, off offset:4 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v124, s46, v118
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v125, v125
	ds_load_u8 v124, v124
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, s46, v123
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v123, v123
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v124, s46, v208
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v124, v124
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v125, s46, v225
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v129, v124, 16, v123
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v123, s46, v224
	v_add_nc_u32_e32 v124, s46, v221
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v125, v125
	v_wmma_i32_16x16x16_iu8 v[155:162], v[129:132], v[45:48], v[13:20] neg_lo:[1,1,0]
	ds_load_u8 v123, v123
	ds_load_u8 v124, v124
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v124, s46, v226
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v124, v124
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v125, s46, v215
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v166, v124, 16, v123
	ds_load_u8 v125, v125
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v123, s46, v202
	v_add_nc_u32_e32 v124, s46, v200
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v123, v123
	ds_load_u8 v124, v124
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v126, s46, v219
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v126, v126
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v124, s46, v234
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v124, v124
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v126, v142, v126, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[142:149], v[129:132], v[41:44], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[21:24], v[41:44], v[13:20] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v165, v126, 16, v125
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v125, s46, v210
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[13:20], v[29:32], v[33:36], v[13:20] neg_lo:[1,1,0]
	ds_load_u8 v125, v125
	v_cvt_f32_i32_e32 v23, v13
	v_cvt_f32_i32_e32 v24, v14
	v_cvt_f32_i32_e32 v21, v15
	v_cvt_f32_i32_e32 v22, v16
	v_cvt_f32_i32_e32 v15, v17
	v_cvt_f32_i32_e32 v16, v18
	v_cvt_f32_i32_e32 v14, v19
	v_cvt_f32_i32_e32 v13, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v125, s46, v209
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v164, v124, 16, v123
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v123, s46, v205
	v_add_nc_u32_e32 v124, s46, v212
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v125, v125
	ds_load_u8 v123, v123
	ds_load_u8 v124, v124
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v124, s46, v198
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v124, v124
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v163, v124, 16, v123
	v_wmma_i32_16x16x16_iu8 v[142:149], v[163:166], v[33:36], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[155:162], v[163:166], v[37:40], v[155:162] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v123, v144
	v_cvt_f32_i32_e32 v125, v145
	v_cvt_f32_i32_e32 v167, v146
	v_cvt_f32_i32_e32 v242, v147
	v_cvt_f32_i32_e32 v126, v148
	v_cvt_f32_i32_e32 v124, v149
	v_cvt_f32_i32_e32 v147, v157
	v_cvt_f32_i32_e32 v149, v158
	v_cvt_f32_i32_e32 v144, v159
	v_cvt_f32_i32_e32 v146, v160
	v_cvt_f32_i32_e32 v145, v161
	v_cvt_f32_i32_e32 v148, v162
	v_cvt_f32_i32_e32 v150, v155
	v_cvt_f32_i32_e32 v151, v156
.LBB0_14:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x8                            ; 36-byte Folded Spill
	scratch_store_b32 off, v124, off offset:216
	scratch_store_b32 off, v24, off offset:136
	scratch_store_b32 off, v23, off offset:132
	scratch_store_b32 off, v22, off offset:128
	scratch_store_b32 off, v21, off offset:120
	scratch_store_b32 off, v16, off offset:112
	scratch_store_b32 off, v15, off offset:108
	scratch_store_b32 off, v14, off offset:104
	scratch_store_b32 off, v13, off offset:100
	ds_load_b128 v[29:32], v119 offset:34816
	ds_load_b128 v[21:24], v119 offset:34832
	ds_load_b128 v[17:20], v119 offset:35328
	ds_load_b128 v[13:16], v119 offset:35344
	v_dual_mov_b32 v207, v206 :: v_dual_mov_b32 v192, v239
	v_dual_mov_b32 v191, v244 :: v_dual_mov_b32 v180, v235
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v206, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v167, off offset:232
	scratch_store_b32 off, v126, off offset:220
	v_dual_mov_b32 v181, v237 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v244, 0
	v_mov_b32_e32 v239, 0
	scratch_store_b32 off, v206, off offset:8 ; 4-byte Folded Spill
	v_mov_b32_e32 v206, 0
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v129, off, off         ; 4-byte Folded Reload
	v_dual_mov_b32 v165, v199 :: v_dual_add_nc_u32 v170, s45, v174
	scratch_load_b32 v174, off, off offset:4 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v156, s45, v220
	v_dual_mov_b32 v166, v197 :: v_dual_add_nc_u32 v163, s45, v178
	v_add_nc_u32_e32 v157, s45, v218
	v_add_nc_u32_e32 v132, s45, v223
	v_add_nc_u32_e32 v160, s45, v211
	v_dual_mov_b32 v164, v201 :: v_dual_add_nc_u32 v169, s45, v175
	v_add_nc_u32_e32 v155, s45, v222
	v_add_nc_u32_e32 v158, s45, v216
	v_add_nc_u32_e32 v159, s45, v214
	v_add_nc_u32_e32 v161, s45, v204
	v_add_nc_u32_e32 v165, s45, v165
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v156, v156
	ds_load_u8 v157, v157
	ds_load_u8 v132, v132
	ds_load_u8 v160, v160
	ds_load_u8 v161, v161
	ds_load_u8 v158, v158
	ds_load_u8 v159, v159
	ds_load_u8 v155, v155
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v166, s45, v166
	v_dual_mov_b32 v244, v202 :: v_dual_add_nc_u32 v171, s45, v173
	v_add_nc_u32_e32 v164, s45, v164
	v_add_nc_u32_e32 v173, s45, v207
	v_add_nc_u32_e32 v118, s45, v118
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v186, s45, v172
	v_add_nc_u32_e32 v172, s45, v208
	v_dual_mov_b32 v237, v196 :: v_dual_add_nc_u32 v126, s45, v193
	v_add_nc_u32_e32 v167, s45, v177
	v_add_nc_u32_e32 v168, s45, v176
	v_add_nc_u32_e32 v197, s45, v181
	v_mov_b32_e32 v181, v198
	v_add_nc_u32_e32 v199, s45, v180
	v_mov_b32_e32 v180, v200
	v_add_nc_u32_e32 v124, s45, v194
	v_add_nc_u32_e32 v194, s45, v243
	v_mov_b32_e32 v243, v210
	v_add_nc_u32_e32 v131, s45, v224
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v155, v132, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v175, s45, v221
	v_add_nc_u32_e32 v178, s45, v215
	v_dual_mov_b32 v210, v195 :: v_dual_add_nc_u32 v133, s45, v179
	v_add_nc_u32_e32 v195, s45, v241
	v_add_nc_u32_e32 v179, s45, v213
	v_add_nc_u32_e32 v241, s45, v234
	v_add_nc_u32_e32 v244, s45, v244
	v_add_nc_u32_e32 v180, s45, v180
	v_add_nc_u32_e32 v155, s45, v181
	v_add_nc_u32_e32 v181, s45, v205
	v_add_nc_u32_e32 v204, s45, v212
	v_add_nc_u32_e32 v130, s45, v225
	v_add_nc_u32_e32 v176, s45, v219
	v_add_nc_u32_e32 v177, s45, v217
	v_add_nc_u32_e32 v243, s45, v243
	v_add_nc_u32_e32 v157, s45, v209
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v132, v132, 16, v156
	v_perm_b32 v156, v161, v160, 0xc0c0004
	v_perm_b32 v158, v159, v158, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v193, s45, v238
	v_add_nc_u32_e32 v191, s45, v191
	v_add_nc_u32_e32 v152, s45, v152
	v_add_nc_u32_e32 v114, s45, v114
	v_add_nc_u32_e32 v188, s45, v188
	v_add_nc_u32_e32 v189, s45, v189
	v_add_nc_u32_e32 v190, s45, v190
	v_add_nc_u32_e32 v192, s45, v192
	v_add_nc_u32_e32 v196, s45, v240
	v_add_nc_u32_e32 v198, s45, v236
	v_add_nc_u32_e32 v200, s45, v233
	v_add_nc_u32_e32 v201, s45, v232
	v_add_nc_u32_e32 v202, s45, v231
	v_add_nc_u32_e32 v235, s45, v228
	v_add_nc_u32_e32 v229, s45, v229
	v_add_nc_u32_e32 v240, s45, v227
	v_dual_mov_b32 v162, v203 :: v_dual_add_nc_u32 v203, s45, v230
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v162, s45, v162
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v187, s45, v129
	v_add_nc_u32_e32 v129, s45, v226
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v174, s45, v174
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v165, v165
	ds_load_u8 v166, v166
	ds_load_u8 v162, v162
	ds_load_u8 v174, v174
	ds_load_u8 v118, v118
	ds_load_u8 v172, v172
	ds_load_u8 v173, v173
	ds_load_u8 v164, v164
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v159, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v118, v118, v174, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v164, v162, 0xc0c0004
	ds_load_u8 v161, v131
	ds_load_u8 v162, v175
	ds_load_u8 v164, v129
	ds_load_u8 v165, v178
	ds_load_u8 v166, v179
	ds_load_u8 v205, v176
	ds_load_u8 v206, v177
	ds_load_u8 v207, v130
	ds_load_u8 v244, v244
	ds_load_u8 v180, v180
	ds_load_u8 v241, v241
	ds_load_u8 v181, v181
	ds_load_u8 v204, v204
	ds_load_u8 v208, v155
	ds_load_u8 v209, v157
	ds_load_u8 v155, v243
	v_perm_b32 v129, v173, v172, 0xc0c0004
	v_dual_mov_b32 v179, s11 :: v_dual_mov_b32 v178, s10
	v_dual_mov_b32 v177, s9 :: v_dual_mov_b32 v176, s8
	v_mov_b32_e32 v175, s7
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v129, v129, 16, v118
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v118, v162, v161, 0xc0c0004
	v_dual_mov_b32 v174, s6 :: v_dual_mov_b32 v173, s5
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	v_mov_b32_e32 v172, s4
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v205, v206, v205, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v164, v207, v164, 0xc0c0004
	v_lshl_or_b32 v131, v158, 16, v156
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v180, v180, v244, 0xc0c0004
	v_lshl_or_b32 v130, v160, 16, v159
	v_lshl_or_b32 v165, v205, 16, v165
	v_lshl_or_b32 v166, v164, 16, v118
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v118, v204, v181, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v206, v155, v241, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[155:162], v[129:132], v[45:48], v[172:179] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v164, v206, 16, v180
	ds_load_u8 v180, v193
	ds_load_u8 v181, v194
	ds_load_u8 v191, v191
	ds_load_u8 v193, v197
	ds_load_u8 v194, v198
	ds_load_u8 v195, v195
	ds_load_u8 v196, v196
	ds_load_u8 v192, v192
	ds_load_u8 v197, v201
	ds_load_u8 v198, v202
	ds_load_u8 v199, v199
	ds_load_u8 v201, v235
	ds_load_u8 v202, v240
	ds_load_u8 v203, v203
	ds_load_u8 v204, v229
	ds_load_u8 v200, v200
	ds_load_u8 v133, v133
	ds_load_u8 v205, v163
	ds_load_u8 v124, v124
	ds_load_u8 v206, v169
	ds_load_u8 v207, v170
	ds_load_u8 v234, v167
	ds_load_u8 v235, v168
	ds_load_u8 v126, v126
	ds_load_u8 v152, v152
	ds_load_u8 v114, v114
	ds_load_u8 v171, v171
	ds_load_u8 v189, v189
	ds_load_u8 v190, v190
	ds_load_u8 v187, v187
	ds_load_u8 v188, v188
	ds_load_u8 v186, v186
	v_perm_b32 v163, v209, v208, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v167, v181, v180, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v168, v192, v191, 0xc0c0004
	v_perm_b32 v169, v194, v193, 0xc0c0004
	v_perm_b32 v180, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v181, v198, v197, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v191, v200, v199, 0xc0c0004
	v_perm_b32 v192, v202, v201, 0xc0c0004
	v_perm_b32 v193, v204, v203, 0xc0c0004
	v_lshl_or_b32 v163, v163, 16, v118
	v_lshl_or_b32 v170, v168, 16, v167
	v_lshl_or_b32 v169, v180, 16, v169
	v_lshl_or_b32 v168, v191, 16, v181
	v_lshl_or_b32 v167, v193, 16, v192
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v118, v205, v133, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v124, v126, v124, 0xc0c0004
	v_perm_b32 v126, v207, v206, 0xc0c0004
	v_perm_b32 v133, v235, v234, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v114, v114, v152, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v186, v171, 0xc0c0004
	v_perm_b32 v171, v190, v189, 0xc0c0004
	v_perm_b32 v180, v188, v187, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[188:195], v[167:170], v[45:48], v[172:179] neg_lo:[1,1,0]
	v_lshl_or_b32 v48, v124, 16, v118
	v_lshl_or_b32 v47, v133, 16, v126
	v_lshl_or_b32 v46, v152, 16, v114
	v_lshl_or_b32 v45, v180, 16, v171
	v_wmma_i32_16x16x16_iu8 v[196:203], v[129:132], v[41:44], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[172:179], v[167:170], v[41:44], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[155:162], v[163:166], v[37:40], v[155:162] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[188:195], v[45:48], v[37:40], v[188:195] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[196:203], v[163:166], v[33:36], v[196:203] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[172:179], v[45:48], v[33:36], v[172:179] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v133, v155
	v_cvt_f32_i32_e32 v167, v156
	v_cvt_f32_i32_e32 v165, v157
	v_cvt_f32_i32_e32 v170, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v164, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v168, v162
	v_cvt_f32_i32_e32 v162, v188
	v_cvt_f32_i32_e32 v169, v189
	v_cvt_f32_i32_e32 v166, v190
	v_cvt_f32_i32_e32 v171, v191
	v_cvt_f32_i32_e32 v155, v192
	v_cvt_f32_i32_e32 v187, v193
	v_cvt_f32_i32_e32 v158, v194
	v_cvt_f32_i32_e32 v163, v195
	v_mov_b32_e32 v195, v210
	v_cvt_f32_i32_e32 v156, v196
	v_mov_b32_e32 v196, v237
	v_cvt_f32_i32_e32 v160, v197
	v_cvt_f32_i32_e32 v157, v198
	v_cvt_f32_i32_e32 v186, v199
	v_cvt_f32_i32_e32 v131, v200
	v_cvt_f32_i32_e32 v132, v201
	v_cvt_f32_i32_e32 v129, v202
	v_cvt_f32_i32_e32 v130, v203
	v_cvt_f32_i32_e32 v124, v172
	v_cvt_f32_i32_e32 v126, v173
	v_cvt_f32_i32_e32 v239, v174
	v_cvt_f32_i32_e32 v244, v175
	v_cvt_f32_i32_e32 v237, v176
	v_cvt_f32_i32_e32 v235, v177
	v_cvt_f32_i32_e32 v33, v178
	v_cvt_f32_i32_e32 v206, v179
	scratch_store_b32 off, v33, off offset:8 ; 4-byte Folded Spill
.LBB0_16:
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s35, 31
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s30, s14
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_lshr_b32 s0, s0, 27
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s31, s15
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_add_i32 s0, s35, s0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s33, s33, s27
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s0, 5
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v114, s27, v195
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s34
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s44
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt lgkmcnt(4)
	v_add_lshl_u32 v33, v117, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v34, v116, s1, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s4, -1, 0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_and_b32 v0, 16, v0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	buffer_load_u16 v35, v34, s[28:31], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v34, v115, s0, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v115.l, 0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_mov_b16_e64 v115.h, v154.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v36, 0x80000000, v34, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v154.h, v115.l
	v_mov_b16_e64 v152.h, v115.l
	v_mov_b16_e32 v116.h, v115.l
	v_mov_b16_e32 v117.h, v115.l
	v_mov_b16_e32 v118.h, v115.l
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v34, v33, s[12:15], 0 offen
	buffer_load_u16 v33, v36, s[12:15], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v36, v153, s1, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v120, v35 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v39, off, off offset:228
	scratch_load_b32 v40, off, off offset:224
	scratch_load_b32 v43, off, off offset:212
	scratch_load_b32 v44, off, off offset:208
	scratch_load_b32 v47, off, off offset:204
	scratch_load_b32 v46, off, off offset:200
	scratch_load_b32 v48, off, off offset:196
	scratch_load_b32 v178, off, off offset:180
	scratch_load_b32 v190, off, off offset:192
	scratch_load_b32 v193, off, off offset:172
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_mov_b16_e32 v35.h, v113.l
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v38, v127, v115
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v127, off, off offset:156
	scratch_load_b32 v179, off, off offset:160
	scratch_load_b32 v188, off, off offset:164
	scratch_load_b32 v197, off, off offset:168
	scratch_load_b32 v194, off, off offset:152
	scratch_load_b32 v174, off, off offset:144
	scratch_load_b32 v175, off, off offset:140
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_mov_b16_e32 v35.l, v115.l
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v38, v38, v29, v111
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v153.h, v115.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v45, v252, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v111, v111, v38, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v185, v185, v35
	v_mul_f32_e32 v195, v251, v35
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(16)
	v_mul_f32_e32 v39, v39, v115
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v37, v36, s[28:31], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v36, 1, v196
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(16)
	v_mul_f32_e32 v40, v40, v115
	scratch_load_b32 v196, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v39, v39, v26, v107
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(12)
	v_mul_f32_e32 v48, v48, v35
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	v_add3_u32 v113, s33, s26, v36
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v36, v128, v115
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v128, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v40, v40, v25, v106
	v_fma_f32 v25, v48, v25, v98
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v107, v107, v39, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v36, v36, v30, v112
	v_fma_f32 v30, v45, v30, v108
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v106, v106, v40, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(10)
	v_mul_f32_e32 v193, v193, v35
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v112, v112, v36, s2
	v_cndmask_b32_e64 v108, v108, v30, s2
	v_cndmask_b32_e64 v30, v98, v25, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v180, v182, v35 :: v_dual_lshlrev_b32 v25, 16, v34
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v182, off, off offset:184
	scratch_load_b32 v191, off, off offset:176
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v174, v174, v35
	v_mul_f32_e32 v44, v44, v115
	v_mul_f32_e32 v47, v47, v35
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v175, v175, v35
	v_dual_mul_f32 v178, v178, v35 :: v_dual_mul_f32 v141, v141, v25
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v48, v174, v10, v91
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v41, v122, v115
	v_mul_f32_e32 v42, v121, v115
	v_mul_f32_e32 v46, v46, v35
	v_mul_f32_e32 v121, v253, v35
	v_mul_f32_e32 v122, v245, v35
	v_mul_f32_e32 v173, v246, v35
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v44, v44, v27, v102
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v91, v48, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v91, v144, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v144, v164, v25
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v26, v47, v26, v99
	v_fma_f32 v47, v175, v9, v90
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v43, v43, v115
	v_mul_f32_e32 v127, v127, v35
	v_mul_f32_e32 v179, v179, v35
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v172, v254, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v90, v47, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v90, v146, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v146, v159, v25
	v_dual_mul_f32 v184, v184, v35 :: v_dual_mul_f32 v155, v155, v25
	v_mul_f32_e32 v176, v255, v35
	v_dual_mul_f32 v177, v247, v35 :: v_dual_mul_f32 v136, v136, v25
	v_mul_f32_e32 v181, v248, v35
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v188, v188, v35
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v183, v183, v35 :: v_dual_mul_f32 v134, v134, v25
	v_dual_mul_f32 v189, v249, v35 :: v_dual_mul_f32 v138, v138, v25
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v190, v190, v35 :: v_dual_mul_f32 v159, v187, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v192, v250, v35 :: v_dual_mul_f32 v135, v135, v25
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v194, v194, v35
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v45, v172, v22, v101
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v139, v139, v25
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v172, v180, v18, v93
	v_fma_f32 v180, v184, v14, v85
	v_fma_f32 v184, v185, v16, v81
	v_fma_f32 v185, v195, v15, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v102, v102, v44, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v137, v137, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v158, v158, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v85, v85, v180, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v196, v196, v35 :: v_dual_lshlrev_b32 v37, 16, v37
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v128, v128, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v27, v128, v27, v94
	v_fma_f32 v128, v178, v12, v87
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v87, v128, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v128, v133, v25
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v41, v41, v32, v110
	v_fma_f32 v32, v121, v32, v105
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v87, v147, v25
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v29, v46, v29, v75
	v_fma_f32 v46, v173, v21, v100
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v182, v182, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v98, v105, v32, s2
	v_cndmask_b32_e64 v32, v94, v27, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v94, v140, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v100, v100, v46, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v46, v150, v25
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v43, v43, v28, v103
	v_fma_f32 v28, v127, v28, v95
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v140, v169, v25
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v127, v179, v11, v86
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v191, v191, v35
	v_mul_f32_e32 v35, v197, v35
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v105, v81, v184, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v81, v149, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v86, v127, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v127, v167, v25
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v42, v42, v31, v109
	v_fma_f32 v31, v122, v31, v104
	v_fma_f32 v122, v177, v23, v96
	v_fma_f32 v177, v189, v19, v88
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v35, v35, v3, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v189, v75, v29, s2
	v_cndmask_b32_e64 v29, v99, v26, s2
	v_cndmask_b32_e64 v99, v104, v31, s2
	v_cndmask_b32_e64 v31, v95, v28, s2
	v_cndmask_b32_e64 v95, v101, v45, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v45, v151, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v149, v162, v25
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v121, v176, v24, v97
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v151, v166, v25
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v174, v188, v5, v82
	v_fma_f32 v188, v196, v4, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v110, v110, v41, s2
	v_cndmask_b32_e64 v109, v109, v42, s2
	v_cndmask_b32_e64 v103, v103, v43, s2
	v_cndmask_b32_e64 v97, v97, v121, s2
	v_cndmask_b32_e64 v96, v96, v122, s2
	v_cndmask_b32_e64 v121, v79, v185, s2
	v_cndmask_b32_e64 v79, v50, v188, s2
	v_cndmask_b32_e64 v122, v49, v35, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[47:50], v119 offset:34816
	ds_load_b128 v[41:44], v119 offset:34832
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v150, v171, v25
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v173, v181, v17, v92
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v75, 16, v33
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v147, v165, v25
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[33:36], v119 offset:35328
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v101, v93, v172, s2
	v_cndmask_b32_e64 v104, v92, v173, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v92, v148, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v148, v161, v25
	v_mul_f32_e32 v161, v163, v25
	v_mul_f32_e32 v133, v170, v25
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v93, v145, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v145, v168, v25
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[25:28], v119 offset:35344
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v120, v37 offset:34816
	s_waitcnt lgkmcnt(0)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v46, v46, v47, v30
	v_fma_f32 v45, v45, v48, v29
	v_fma_f32 v87, v87, v49, v32
	v_fma_f32 v81, v81, v50, v31
	v_fma_f32 v163, v91, v41, v39
	v_fma_f32 v90, v90, v42, v38
	v_fma_f32 v165, v92, v44, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v167, v29, v45, s3
	v_cndmask_b32_e64 v168, v30, v46, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v120, v31, v81, s3
	v_cndmask_b32_e64 v169, v32, v87, s3
	v_cndmask_b32_e64 v170, v38, v90, s3
	v_cndmask_b32_e64 v163, v39, v163, s3
	v_cndmask_b32_e64 v165, v40, v165, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[37:40], v119 offset:35328
	ds_load_b128 v[29:32], v119 offset:35344
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v179, v190, v8, v80
	v_fma_f32 v164, v93, v43, v86
	v_fma_f32 v175, v182, v6, v83
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v142, v142, v75
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v176, v183, v20, v89
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v80, v179, s2
	v_cndmask_b32_e64 v164, v86, v164, s3
	v_cndmask_b32_e64 v83, v83, v175, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v142, v142, v47, v106
	v_fma_f32 v182, v194, v1, v76
	v_fma_f32 v141, v141, v36, v80
	v_fma_f32 v183, v193, v2, v77
	v_fma_f32 v166, v94, v34, v83
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[91:94], v119 offset:34816
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v82, v82, v174, s2
	v_cndmask_b32_e64 v86, v80, v141, s3
	v_cndmask_b32_e64 v77, v77, v183, s2
	v_cndmask_b32_e64 v76, v76, v182, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v178, v191, v7, v78
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v141, v161, v32, v105
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v136, v136, v33, v82
	v_fma_f32 v137, v137, v26, v77
	v_fma_f32 v134, v134, v25, v76
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v181, v192, v13, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v105, v105, v141, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v143, v143, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v78, v178, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v135, v135, v27, v122
	v_fma_f32 v138, v138, v28, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v87, v82, v136, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v143, v143, v48, v107
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[45:48], v119 offset:34832
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v82, v77, v137, s3
	v_cndmask_b32_e64 v77, v76, v134, s3
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v76, v128, v91, v189
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v88, v88, v177, s2
	v_cndmask_b32_e64 v84, v84, v181, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v157, v157, v75
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v139, v139, v35, v78
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v81, v79, v138, s3
	v_cndmask_b32_e64 v79, v122, v135, s3
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v134, v149, v37, v104
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v89, v176, s2
	v_cndmask_b32_e64 v90, v83, v166, s3
	v_cndmask_b32_e64 v83, v78, v139, s3
	v_cndmask_b32_e64 v80, v107, v143, s3
	v_cndmask_b32_e64 v78, v106, v142, s3
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v106, v127, v92, v108
	v_fma_f32 v107, v147, v93, v99
	v_fma_f32 v119, v133, v94, v98
	v_fma_f32 v136, v151, v39, v88
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v128, v148, v47, v96
	v_fma_f32 v122, v146, v45, v100
	v_fma_f32 v127, v144, v46, v95
	v_fma_f32 v133, v145, v48, v97
	v_fma_f32 v138, v155, v29, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v96, v96, v128, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v156, v156, v75
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v93, v157, v93, v109
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v189, v76, s3
	v_cndmask_b32_e64 v100, v100, v122, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v160, v160, v75
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v91, v156, v91, v111
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v104, v104, v134, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v162, v186, v75
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v137, v150, v40, v89
	v_fma_f32 v139, v159, v30, v85
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v106, v108, v106, s3
	v_cndmask_b32_e64 v98, v98, v119, s3
	v_cndmask_b32_e64 v99, v99, v107, s3
	v_cndmask_b32_e64 v95, v95, v127, s3
	v_cndmask_b32_e64 v97, v97, v133, s3
	v_cndmask_b32_e64 v108, v88, v136, s3
	v_cndmask_b32_e64 v122, v84, v138, s3
	v_cndmask_b32_e64 v88, v111, v91, s3
	v_cndmask_b32_e64 v84, v109, v93, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v91, 0xbfb8aa3b, v76
	v_mul_f32_e32 v109, 0xbfb8aa3b, v100
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v92, v160, v92, v112
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v127, 0xbfb8aa3b, v104
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v94, v162, v94, v110
	v_fma_f32 v135, v140, v38, v101
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v107, v89, v137, s3
	v_cndmask_b32_e64 v119, v85, v139, s3
	v_cndmask_b32_e64 v89, v112, v92, s3
	v_cndmask_b32_e64 v85, v110, v94, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v92, 0xbfb8aa3b, v106 :: v_dual_mul_f32 v93, 0xbfb8aa3b, v99
	v_mul_f32_e32 v94, 0xbfb8aa3b, v98
	v_dual_mul_f32 v110, 0xbfb8aa3b, v95 :: v_dual_mul_f32 v133, 0xbfb8aa3b, v108
	v_mul_f32_e32 v112, 0xbfb8aa3b, v97
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v91
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v140, v158, v31, v121
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v101, v101, v135, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v111, 0xbfb8aa3b, v96 :: v_dual_mul_f32 v142, 0xbfb8aa3b, v85
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v92
	v_cndmask_b32_e64 v91, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v94
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v93
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v110
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v112
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v121, v121, v140, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v128, 0xbfb8aa3b, v101
	v_dual_mul_f32 v134, 0xbfb8aa3b, v107 :: v_dual_mul_f32 v135, 0xbfb8aa3b, v122
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v136, 0xbfb8aa3b, v119 :: v_dual_mul_f32 v137, 0xbfb8aa3b, v121
	v_mul_f32_e32 v138, 0xbfb8aa3b, v105
	v_cndmask_b32_e64 v92, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0x42800000, s1
	v_cndmask_b32_e64 v93, 0, 0x42800000, s4
	v_cndmask_b32_e64 v110, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v109
	v_cndmask_b32_e64 v112, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v111
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v127
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v133
	v_dual_fmac_f32 v91, 0xbfb8aa3b, v76 :: v_dual_fmac_f32 v110, 0xbfb8aa3b, v95
	v_dual_mul_f32 v139, 0xbfb8aa3b, v88 :: v_dual_fmac_f32 v92, 0xbfb8aa3b, v106
	v_dual_mul_f32 v140, 0xbfb8aa3b, v89 :: v_dual_mul_f32 v141, 0xbfb8aa3b, v84
	v_fmac_f32_e32 v94, 0xbfb8aa3b, v98
	v_cndmask_b32_e64 v109, 0, 0x42800000, s6
	v_cndmask_b32_e64 v111, 0, 0x42800000, s8
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v128
	v_cndmask_b32_e64 v127, 0, 0x42800000, s10
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v134
	v_cndmask_b32_e64 v133, 0, 0x42800000, s12
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v136
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v138
	v_dual_fmac_f32 v93, 0xbfb8aa3b, v99 :: v_dual_fmac_f32 v112, 0xbfb8aa3b, v97
	v_exp_f32_e32 v91, v91
	v_cndmask_b32_e64 v128, 0, 0x42800000, s9
	v_cndmask_b32_e64 v134, 0, 0x42800000, s11
	v_cndmask_b32_e64 v136, 0, 0x42800000, s13
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v135
	v_cndmask_b32_e64 v138, 0, 0x42800000, s15
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v137
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v140
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v139
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v142
	v_cndmask_b32_e64 v144, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v109, 0xbfb8aa3b, v100 :: v_dual_fmac_f32 v128, 0xbfb8aa3b, v101
	v_dual_fmac_f32 v111, 0xbfb8aa3b, v96 :: v_dual_fmac_f32 v134, 0xbfb8aa3b, v107
	v_dual_fmac_f32 v127, 0xbfb8aa3b, v104 :: v_dual_fmac_f32 v136, 0xbfb8aa3b, v119
	v_dual_fmac_f32 v133, 0xbfb8aa3b, v108 :: v_dual_fmac_f32 v138, 0xbfb8aa3b, v105
	v_exp_f32_e32 v92, v92
	v_exp_f32_e32 v94, v94
	v_exp_f32_e32 v93, v93
	v_exp_f32_e32 v110, v110
	v_exp_f32_e32 v112, v112
	v_cndmask_b32_e64 v135, 0, 0x42800000, s14
	v_cndmask_b32_e64 v137, 0, 0x42800000, s16
	v_cndmask_b32_e64 v140, 0, 0x42800000, s17
	v_cndmask_b32_e64 v139, 0, 0x42800000, s18
	v_cndmask_b32_e64 v142, 0, 0x42800000, s19
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v141
	v_cndmask_b32_e64 v143, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v145, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v146, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v147, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v149, 0, 0xffffffc0, s7
	v_exp_f32_e32 v109, v109
	v_exp_f32_e32 v111, v111
	v_exp_f32_e32 v127, v127
	v_exp_f32_e32 v133, v133
	v_ldexp_f32 v91, v91, v144
	v_cndmask_b32_e64 v141, 0, 0x42800000, s20
	v_cndmask_b32_e64 v148, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v150, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v155, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v157, 0, 0xffffffc0, s12
	v_dual_fmac_f32 v135, 0xbfb8aa3b, v122 :: v_dual_fmac_f32 v140, 0xbfb8aa3b, v89
	v_dual_fmac_f32 v139, 0xbfb8aa3b, v88 :: v_dual_fmac_f32 v142, 0xbfb8aa3b, v85
	v_exp_f32_e32 v128, v128
	v_exp_f32_e32 v134, v134
	v_exp_f32_e32 v136, v136
	v_exp_f32_e32 v138, v138
	v_ldexp_f32 v92, v92, v143
	v_fmac_f32_e32 v137, 0xbfb8aa3b, v121
	v_ldexp_f32 v94, v94, v145
	v_ldexp_f32 v93, v93, v146
	v_ldexp_f32 v110, v110, v147
	v_ldexp_f32 v112, v112, v149
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v91, 1.0, v91
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v151, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v156, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v158, 0, 0xffffffc0, s13
	v_cndmask_b32_e64 v160, 0, 0xffffffc0, s15
	v_dual_fmac_f32 v141, 0xbfb8aa3b, v84 :: v_dual_add_f32 v94, 1.0, v94
	v_exp_f32_e32 v135, v135
	v_exp_f32_e32 v140, v140
	v_exp_f32_e32 v142, v142
	v_ldexp_f32 v109, v109, v148
	v_ldexp_f32 v111, v111, v150
	v_ldexp_f32 v127, v127, v155
	v_ldexp_f32 v133, v133, v157
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v92, 1.0, v92
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v137, v137
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v93, 1.0, v93 :: v_dual_add_f32 v112, 1.0, v112
	v_add_f32_e32 v110, 1.0, v110
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v145, null, v91, v91, v76
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v159, 0, 0xffffffc0, s14
	v_cndmask_b32_e64 v161, 0, 0xffffffc0, s16
	v_cndmask_b32_e64 v162, 0, 0xffffffc0, s17
	v_cndmask_b32_e64 v171, 0, 0xffffffc0, s19
	v_exp_f32_e32 v139, v139
	v_ldexp_f32 v128, v128, v151
	v_ldexp_f32 v134, v134, v156
	v_ldexp_f32 v136, v136, v158
	v_ldexp_f32 v138, v138, v160
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v109, 1.0, v109 :: v_dual_add_f32 v128, 1.0, v128
	v_dual_add_f32 v111, 1.0, v111 :: v_dual_add_f32 v134, 1.0, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v127, 1.0, v127 :: v_dual_add_f32 v136, 1.0, v136
	v_dual_add_f32 v133, 1.0, v133 :: v_dual_add_f32 v138, 1.0, v138
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v143, null, v92, v92, v106
	v_div_scale_f32 v147, null, v94, v94, v98
	v_div_scale_f32 v151, null, v110, v110, v95
	v_div_scale_f32 v158, null, v112, v112, v97
	v_rcp_f32_e32 v184, v145
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v166, 0, 0xffffffc0, s18
	v_exp_f32_e32 v141, v141
	v_ldexp_f32 v135, v135, v159
	v_ldexp_f32 v137, v137, v161
	v_ldexp_f32 v140, v140, v162
	v_ldexp_f32 v142, v142, v171
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v149, null, v93, v93, v99
	v_div_scale_f32 v156, null, v109, v109, v100
	v_div_scale_f32 v160, null, v111, v111, v96
	v_div_scale_f32 v171, null, v127, v127, v104
	v_div_scale_f32 v174, null, v133, v133, v108
	v_rcp_f32_e32 v183, v143
	v_rcp_f32_e32 v185, v147
	v_rcp_f32_e32 v187, v151
	v_rcp_f32_e32 v189, v158
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v172, 0, 0xffffffc0, s20
	v_ldexp_f32 v139, v139, v166
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v135, 1.0, v135 :: v_dual_add_f32 v140, 1.0, v140
	v_dual_add_f32 v137, 1.0, v137 :: v_dual_add_f32 v142, 1.0, v142
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v162, null, v128, v128, v101
	v_div_scale_f32 v173, null, v134, v134, v107
	v_rcp_f32_e32 v186, v149
	v_rcp_f32_e32 v188, v156
	v_rcp_f32_e32 v190, v160
	v_rcp_f32_e32 v192, v171
	v_rcp_f32_e32 v194, v174
	v_fma_f32 v204, -v145, v184, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v141, v141, v172
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v139, 1.0, v139
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v176, null, v135, v135, v122
	v_div_scale_f32 v178, null, v137, v137, v121
	v_div_scale_f32 v179, null, v140, v140, v89
	v_rcp_f32_e32 v191, v162
	v_rcp_f32_e32 v193, v173
	v_fma_f32 v203, -v143, v183, 1.0
	v_fma_f32 v205, -v147, v185, 1.0
	v_fma_f32 v207, -v151, v187, 1.0
	v_fmac_f32_e32 v184, v204, v184
	v_fma_f32 v204, -v158, v189, 1.0
	v_div_scale_f32 v175, null, v136, v136, v119
	v_div_scale_f32 v177, null, v138, v138, v105
	v_div_scale_f32 v181, null, v142, v142, v85
	v_rcp_f32_e32 v196, v176
	v_rcp_f32_e32 v198, v178
	v_rcp_f32_e32 v199, v179
	v_fmac_f32_e32 v189, v204, v189
	v_fma_f32 v204, -v174, v194, 1.0
	v_fmac_f32_e32 v187, v207, v187
	v_fma_f32 v207, -v171, v192, 1.0
	v_fmac_f32_e32 v185, v205, v185
	v_fma_f32 v205, -v160, v190, 1.0
	v_fmac_f32_e32 v183, v203, v183
	v_fma_f32 v203, -v156, v188, 1.0
	v_mov_b32_e32 v211, v206
	v_fma_f32 v206, -v149, v186, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v141, 1.0, v141
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v180, null, v139, v139, v88
	v_rcp_f32_e32 v195, v175
	v_rcp_f32_e32 v197, v177
	v_rcp_f32_e32 v201, v181
	v_fmac_f32_e32 v186, v206, v186
	v_div_scale_f32 v182, null, v141, v141, v84
	v_fma_f32 v206, -v162, v191, 1.0
	v_fmac_f32_e32 v188, v203, v188
	v_fma_f32 v203, -v173, v193, 1.0
	v_div_scale_f32 v146, s6, v76, v91, v76
	v_rcp_f32_e32 v200, v180
	v_rcp_f32_e32 v202, v182
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v193, v203, v193
	v_fma_f32 v203, -v178, v198, 1.0
	v_fmac_f32_e32 v191, v206, v191
	v_fma_f32 v206, -v176, v196, 1.0
	v_fmac_f32_e32 v194, v204, v194
	v_fma_f32 v204, -v179, v199, 1.0
	v_div_scale_f32 v144, vcc_lo, v106, v92, v106
	v_fmac_f32_e32 v190, v205, v190
	v_fma_f32 v205, -v175, v195, 1.0
	v_fmac_f32_e32 v192, v207, v192
	v_fma_f32 v207, -v177, v197, 1.0
	v_fmac_f32_e32 v196, v206, v196
	v_fma_f32 v206, -v181, v201, 1.0
	v_dual_fmac_f32 v199, v204, v199 :: v_dual_mul_f32 v204, v146, v184
	v_div_scale_f32 v161, s4, v96, v111, v96
	v_fmac_f32_e32 v197, v207, v197
	v_fma_f32 v207, -v182, v202, 1.0
	v_fmac_f32_e32 v195, v205, v195
	v_fma_f32 v205, -v180, v200, 1.0
	v_dual_fmac_f32 v198, v203, v198 :: v_dual_fmac_f32 v201, v206, v201
	v_fma_f32 v206, -v145, v204, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v203, v144, v183 :: v_dual_fmac_f32 v200, v205, v200
	v_div_scale_f32 v148, s7, v98, v94, v98
	v_fmac_f32_e32 v204, v206, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v205, -v143, v203, v144
	v_div_scale_f32 v150, s8, v99, v93, v99
	v_div_scale_f32 v159, s5, v97, v112, v97
	v_fmac_f32_e32 v203, v205, v183
	v_fma_f32 v145, -v145, v204, v146
	v_mul_f32_e32 v146, v148, v185
	v_div_scale_f32 v155, s9, v95, v110, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v143, -v143, v203, v144
	v_div_scale_f32 v172, s0, v104, v127, v104
	v_div_scale_f32 v157, s10, v100, v109, v100
	v_div_fmas_f32 v143, v143, v183, v203
	v_mul_f32_e32 v183, v150, v186
	v_fma_f32 v203, -v147, v146, v148
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v202, v207, v202
	v_div_fmas_f32 v145, v145, v184, v204
	v_fma_f32 v184, -v149, v183, v150
	v_fmac_f32_e32 v146, v203, v185
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v92, v143, v92, v106
	v_mul_f32_e32 v106, v161, v190
	v_fmac_f32_e32 v183, v184, v186
	v_fma_f32 v147, -v147, v146, v148
	v_div_scale_f32 v207, s11, v107, v134, v107
	v_div_scale_f32 v184, s16, v89, v140, v89
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v146, v147, v185, v146
	v_fma_f32 v149, -v149, v183, v150
	v_mul_f32_e32 v150, v159, v189
	v_mul_f32_e32 v147, v155, v187
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v94, v146, v94, v98
	v_fma_f32 v146, -v160, v106, v161
	v_fma_f32 v98, -v158, v150, v159
	v_mul_f32_e32 v185, v157, v188
	v_div_fixup_f32 v91, v145, v91, v76
	v_div_scale_f32 v144, s14, v122, v135, v122
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v150, v98, v189
	v_div_fmas_f32 v149, v149, v186, v183
	v_mul_f32_e32 v186, v172, v192
	v_fma_f32 v143, -v151, v147, v155
	v_fmac_f32_e32 v106, v146, v190
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v166, s1, v101, v128, v101
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v147, v143, v187
	v_fma_f32 v143, -v156, v185, v157
	v_fma_f32 v98, -v171, v186, v172
	v_mul_f32_e32 v145, v207, v193
	v_div_scale_f32 v205, s12, v108, v133, v108
	v_fma_f32 v76, -v151, v147, v155
	v_fmac_f32_e32 v185, v143, v188
	v_mul_f32_e32 v143, v144, v196
	v_fmac_f32_e32 v186, v98, v192
	v_fma_f32 v146, -v173, v145, v207
	v_div_fmas_f32 v147, v76, v187, v147
	v_fma_f32 v76, -v156, v185, v157
	v_mul_f32_e32 v156, v184, v199
	v_dual_mul_f32 v183, v166, v191 :: v_dual_mul_f32 v208, v205, v194
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v95, v147, v110, v95
	v_dual_fmac_f32 v145, v146, v193 :: v_dual_mul_f32 v94, v120, v94
	v_fma_f32 v146, -v176, v143, v144
	s_mov_b32 vcc_lo, s10
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v95, v170, v95
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v204, s6, v105, v138, v105
	v_div_scale_f32 v206, s13, v119, v136, v119
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v154.l, v95.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v143, v146, v196
	v_fma_f32 v146, -v179, v156, v184
	v_div_scale_f32 v148, s17, v88, v139, v88
	v_mul_f32_e32 v155, v204, v197
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v152.l, v94.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v156, v146, v199
	v_div_fmas_f32 v157, v76, v188, v185
	v_fma_f32 v76, -v162, v183, v166
	v_mul_f32_e32 v185, v148, v200
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v146.h, v115.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v203, s15, v121, v137, v121
	v_div_fixup_f32 v100, v157, v109, v100
	v_fmac_f32_e32 v183, v76, v191
	v_fma_f32 v76, -v174, v208, v205
	v_mul_f32_e32 v151, v206, v195
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v91, v168, v91
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v158, -v158, v150, v159
	v_fma_f32 v160, -v160, v106, v161
	v_fmac_f32_e32 v208, v76, v194
	v_fma_f32 v76, -v177, v155, v204
	v_fma_f32 v98, -v175, v151, v206
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v116.l, v91.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v100, v163, v100 :: v_dual_fmac_f32 v155, v76, v197
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v76, -v180, v185, v148
	v_fmac_f32_e32 v151, v98, v195
	v_fma_f32 v162, -v162, v183, v166
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v161.h, v115.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v171, -v171, v186, v172
	v_fmac_f32_e32 v185, v76, v200
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v76, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v173, -v173, v145, v207
	v_fma_f32 v174, -v174, v208, v205
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v207.h, v115.l
	v_mov_b16_e64 v188.h, v115.l
	v_mov_b16_e64 v166.h, v115.l
	v_mov_b16_e64 v172.h, v115.l
	v_mov_b16_e64 v159.h, v115.l
	v_mov_b16_e64 v153.l, v100.h
	v_mov_b16_e64 v205.h, v115.l
	v_cmp_o_f32_e64 s9, v100, v100
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v209, v76, v115
	scratch_load_b32 v76, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v187, v203, v198 :: v_dual_mul_f32 v210, v76, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v98, -v178, v187, v203
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v76, s27, 4, v114
	s_mov_b32 s27, 0x31027000
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v187, v98, v198
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v98.h, v115.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v178, -v178, v187, v203
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v203, v209, v22, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v179, v156, v184
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v184, v210, v21, v73
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v21, v167, v92
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v92, v149, v93, v99
	v_div_fmas_f32 v93, v158, v189, v150
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v179, s7, v85, v142, v85
	v_div_fmas_f32 v99, v160, v190, v106
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v93, v93, v112, v97
	v_div_fmas_f32 v106, v162, v191, v183
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v91, v91
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v97, v171, v192, v186
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v101, v106, v128, v101
	v_div_fmas_f32 v109, v173, v193, v145
	s_mov_b32 vcc_lo, s12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v106, 1, v116
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v110, v174, v194, v208
	v_fma_f32 v175, -v175, v151, v206
	s_mov_b32 vcc_lo, s13
	v_div_fixup_f32 v96, v99, v111, v96
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v91, v91, v106, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v106, v110, v133, v108
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v108, 1, v154
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v144, -v176, v143, v144
	v_div_fmas_f32 v111, v175, v195, v151
	s_mov_b32 vcc_lo, s14
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v90, v90, v101
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v117.l, v21.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v101, v144, v196, v143
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v92, v169, v92
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v97, v97, v127, v104
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v104, 1, v152
	v_and_b32_e32 v99, 1, v117
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v101, v101, v135, v122
	v_fma_f32 v177, -v177, v155, v204
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v21, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v21, v21, v99, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v101, v77, v101
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v99, v109, v134, v107
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v118.l, v92.h
	v_mov_b16_e64 v176.h, v115.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v87, v87, v97
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v207.l, v101.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v93, v165, v93
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v97, v177, v197, v155
	s_mov_b32 vcc_lo, s15
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v96, v164, v96
	v_mul_f32_e32 v86, v86, v99
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v98.l, v93.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v99, v178, v198, v187
	s_mov_b32 vcc_lo, s16
	v_fma_f32 v148, -v180, v185, v148
	v_mul_f32_e32 v180, v179, v201
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v94, v94
	v_and_b32_e32 v107, 1, v118
	v_add3_u32 v94, v94, v104, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v104, v111, v136, v119
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v91.h, s1
	v_and_b32_e32 v91, 1, v98
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v98, v22, v199, v156
	s_mov_b32 vcc_lo, s17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v125, v125, v75 :: v_dual_mul_f32 v104, v82, v104
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v92, v92
	v_add3_u32 v92, v92, v107, 0x7fff
	v_mov_b16_e64 v188.l, v90.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v82, v148, v200, v185
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v161.l, v86.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v89, v98, v140, v89
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v123, v123, v75
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v83, v83, v106
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v99, v99, v137, v121
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.l, 0x7fff, v92.h, s5
	v_and_b32_e32 v92, 1, v188
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v82, v82, v139, v88
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v88, 1, v161
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v80, v80, v89
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s8, v95, v95
	v_add3_u32 v95, v95, v108, 0x7fff
	v_mov_b16_e64 v146.l, v96.h
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s4
	v_cmp_o_f32_e64 s4, v90, v90
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_mov_b16_e64 v166.l, v83.h
	v_cndmask_b16 v77.h, 0x7fff, v95.h, s8
	v_mov_b16_e64 v172.l, v104.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v95, v79, v99
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v90, v90, v92, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v92, v78, v82
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v78, v86, v88, 0x7fff
	v_and_b32_e32 v86, 1, v207
	v_cmp_o_f32_e64 s10, v93, v93
	v_add3_u32 v91, v93, v91, 0x7fff
	v_mov_b16_e64 v206.h, v115.l
	v_cndmask_b16 v22.h, 0x7fff, v94.h, s0
	v_and_b32_e32 v94, 1, v146
	v_and_b32_e32 v89, 1, v172
	v_cndmask_b16 v79.h, 0x7fff, v91.h, s10
	v_and_b32_e32 v91, 1, v166
	v_mov_b16_e64 v206.l, v95.h
	v_cmp_o_f32_e64 s6, v96, v96
	v_cmp_o_f32_e64 s0, v83, v83
	v_add3_u32 v94, v96, v94, 0x7fff
	v_cmp_o_f32_e64 s5, v104, v104
	v_add3_u32 v83, v83, v91, 0x7fff
	v_mov_b16_e64 v176.l, v80.h
	v_add3_u32 v88, v104, v89, 0x7fff
	v_and_b32_e32 v89, 1, v206
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v97, v97, v138, v105
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v79.l, 0x7fff, v94.h, s6
	v_cmp_o_f32_e64 s6, v95, v95
	v_cndmask_b16 v82.h, 0x7fff, v90.h, s4
	v_cndmask_b16 v78.l, 0x7fff, v83.h, s0
	v_and_b32_e32 v90, 1, v176
	v_mov_b16_e64 v159.l, v87.h
	v_cndmask_b16 v83.h, 0x7fff, v88.h, s5
	v_add3_u32 v88, v95, v89, 0x7fff
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v50, v125, v50, v103
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v81, v81, v97
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v80, v80
	v_add3_u32 v89, v80, v90, 0x7fff
	v_cndmask_b16 v80.l, 0x7fff, v88.h, s6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v88, s0, v84, v141, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v103, v50, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v93, 1, v159
	v_cmp_o_f32_e64 s1, v87, v87
	v_mov_b16_e64 v205.l, v81.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v90, v88, v202 :: v_dual_and_b32 v109, 1, v153
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v87, v87, v93, 0x7fff
	v_mov_b16_e64 v204.h, v115.l
	v_mov_b16_e64 v204.l, v92.h
	v_cmp_o_f32_e64 s8, v101, v101
	v_add3_u32 v100, v100, v109, 0x7fff
	v_cndmask_b16 v82.l, 0x7fff, v87.h, s1
	v_and_b32_e32 v87, 1, v205
	v_add3_u32 v86, v101, v86, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v74, v203, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v77.l, 0x7fff, v100.h, s9
	v_cmp_o_f32_e64 s9, v81, v81
	v_add3_u32 v81, v81, v87, 0x7fff
	v_and_b32_e32 v87, 1, v204
	v_cndmask_b16 v83.l, 0x7fff, v86.h, s8
	v_cndmask_b16 v78.h, 0x7fff, v78.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v80.h, 0x7fff, v81.h, s9
	v_add3_u32 v86, v92, v87, 0x7fff
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v87, v132, v75
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v81.h, 0x7fff, v89.h, s4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v73, v184, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v89, v131, v75
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v49, v123, v49, v102
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v46, v87, v46, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v87, -v181, v180, v179
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v92, v92
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v45, v89, v45, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v102, v49, s3
	v_cndmask_b32_e64 v46, v74, v46, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v74, -v182, v90, v88
	v_fmac_f32_e32 v180, v87, v201
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v73, v45, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v81.l, 0x7fff, v86.h, s1
	v_mov_b16_e32 v86.h, v115.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v90, v74, v202
	v_fma_f32 v87, -v181, v180, v179
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v74, 0xbfb8aa3b, v73
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v91, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v88, -v182, v90, v88
	v_div_fmas_f32 v87, v87, v201, v180
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v88, v88, v202, v90
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v90, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v85, v87, v142, v85
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v74, 0, 0x42800000, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v84, v88, v141, v84
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v50, v50, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v73
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, s5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v49, v49, v84
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v84.h, v115.l
	v_mov_b16_e32 v84.l, v50.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v74, v74
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_mov_b16_e32 v86.l, v49.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v74, v74, v85
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v85, 1, v86
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v86, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v90, v90, v115
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v24, v90, v24, v70
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v90, off, off offset:92
	scratch_load_b32 v88, off, off offset:68
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v70, v24, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v70, v130, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v48, v70, v48, v24
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v24, v48, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v86, v86, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v10, v86, v10, v72
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v72, v10, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v90, v90, v115
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v88, v88, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v23, v90, v23, v69
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v9, v88, v9, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v69, v23, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v69, v129, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v71, v9, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v71, v242, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v47, v69, v47, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v24
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v42, v71, v42, v10
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v71, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v23, v47, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v10, v42, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v46
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v45, v45
	v_ldexp_f32 v45, v45, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v87, 1.0, v45
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v84
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v84, null, v87, v87, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v45, v50, v45, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v50, 1.0, v74
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v74, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v89, null, v50, v50, v73
	v_div_scale_f32 v72, vcc_lo, v46, v87, v46
	v_div_scale_f32 v70, s0, v73, v50, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v86, v89
	v_fma_f32 v88, -v84, v74, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v74, v88, v74
	v_fma_f32 v88, -v89, v86, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v92, v72, v74
	v_fmac_f32_e32 v86, v88, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v48, -v84, v92, v72
	v_mul_f32_e32 v88, v70, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v92, v48, v74
	v_fma_f32 v48, -v89, v88, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v84, v92, v72
	v_fmac_f32_e32 v88, v48, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v42, v42, v74, v92
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v89, v88, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v42, v42, v87, v46
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v69, v69, v86, v88
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v42
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v46, v69, v50, v73
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:56
	scratch_load_b32 v69, off, off offset:52
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v10, v10
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.h, v115.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v71, v71, v75
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v50, v50, v115
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v69, v69, v115
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v85, v49, v85, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v12, v50, v12, v68
	v_fma_f32 v11, v69, v11, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v45.l, 0x7fff, v85.h, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v67, v11, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v67, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v91, v91, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v41, v91, v41, v9
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v9, v41, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v46, v9, v46
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v41, v47, v41
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v10.h
	v_mov_b16_e32 v9.h, v115.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.l, v46.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v41, 1.0, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v42, v42, v47
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v48, v46, v48, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v42, v42, v23
	v_rcp_f32_e32 v50, v70
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v67, v67, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v18, v67, v18, v66
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v67, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v66, v18, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v66, v126, v75
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, null, v41, v41, v24
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v38, v66, v38, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v49, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v38, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v9, 1, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v9, v10, v9, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v68, v12, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v12, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v47, v49, 1.0
	v_div_scale_f32 v68, vcc_lo, v24, v41, v24
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v44, v71, v44, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v49, v69, v49
	v_fma_f32 v69, -v70, v50, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v46, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v10, v44, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v18
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v46, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v50, v69, v50
	v_div_scale_f32 v69, s1, v23, v42, v23
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v44
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v44, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.l, 0x7fff, v48.h, s0
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v67, v67, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v17, v67, v17, v65
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v67, v69, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v65, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v70, v67, v69
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v65, v124, v75
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v67, v38, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v37, v65, v37, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v70, v67, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v17, v37, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v12, v12, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s4
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v12, v12, v43, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v43, v68, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v18
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v12, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v47, v43, v68
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v46, v46, v115
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v43, v66, v49 :: v_dual_mul_f32 v44, v44, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v19, v46, v19, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v12, -v47, v43, v68
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v20, v44, v20, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v44, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v61, v19, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v12, v12, v49, v43
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v38, v38, v50, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v12, v41, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v24, v37
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v23, v38, v42, v23
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v42, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v12
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v11, v23
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v23.h, v115.l
	v_mov_b16_e32 v23.l, v10.h
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v17
	v_ldexp_f32 v12, v24, v12
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v24, v37
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.h, v115.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add3_u32 v23, v10, v23, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v10, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v12, v12, v18
	v_div_scale_f32 v47, vcc_lo, v18, v12, v18
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v24, v24, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v38, v41
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, null, v24, v24, v17
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v42, v42, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v5, v42, v5, v62
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v62, v5, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v43, v42, 1.0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v10, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v48, v42
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v6, v10, v6, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v10, -v41, v38, 1.0
	v_div_scale_f32 v48, s1, v17, v24, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v63, v6, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v10, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v64, v20, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v20, v244, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v46, v47, v38
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v20, v20, v40, v10
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v40, off, off offset:132 ; 4-byte Folded Reload
	v_mul_f32_e32 v44, v44, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v10, v20, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v20, v239, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v20, v20, v39, v19
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v41, v46, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v19, v20, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v20, v44, v34, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v46, v39, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v20, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v20, -v41, v46, v47
	v_div_fmas_f32 v20, v20, v38, v46
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v12, v20, v12, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.h, v115.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v49, 0xbfb8aa3b, v10 :: v_dual_mul_f32 v6, v6, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v49, 0, 0x42800000, s4
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s4
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v40, v75
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v40, v33, v5
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v40, v48, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v11.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v33, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v43, v40, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v39, 0xbfb8aa3b, v19 :: v_dual_fmac_f32 v40, v34, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v11, v37, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v43, v40, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, s5
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v38, v38, v42, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v40, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v38, v24, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.l, 0x7fff, v37.h, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v37, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v5, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.l, v5.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v19 :: v_dual_and_b32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v39, v39
	v_ldexp_f32 v12, v39, v18
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v39, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v6.h
	v_mov_b16_e32 v18.h, v115.l
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v49
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add3_u32 v18, v6, v18, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v34, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v33
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v33, null, v12, v12, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v17, null, v11, v11, v10
	v_rcp_f32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v17
	v_fma_f32 v38, -v17, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v24, v38, v24
	v_fma_f32 v38, -v33, v34, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v20, v5, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v34, v38, v34
	v_div_scale_f32 v38, s1, v19, v12, v19
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v42, v38, v34 :: v_dual_mul_f32 v37, v37, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v8, v37, v8, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, vcc_lo, v10, v11, v10
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v39, v39, v115
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v6, v39, v7, v59
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v39, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v60, v8, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v8, v37, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v59, v6, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v17, v8, v37
	v_fmac_f32_e32 v8, v41, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v8, v37
	v_div_fmas_f32 v8, v17, v24, v8
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v8, v8, v11, v10
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v40, v40, v75
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v11, v237, v75
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v35, v40, v35, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v35, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v35, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v39, v39, v75
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v36, v39, v36, v7
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v33, v42, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v36, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v36, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v39, v34
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v7, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v17, -v33, v42, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v7, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v17, v17, v34, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v17, v12, v19
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v19, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v18.l, 0x7fff, v20.h, vcc_lo
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v35, v35, v115
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v13, v35, v13, v57
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v35, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v57, v13, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v5, v11, v29, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v7.h
	v_mov_b16_e32 v11.h, v115.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.h, v115.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v10, v5, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v24, v235, v75
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 1, v11
	v_mov_b16_e32 v12.l, v6.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v11, v7, v11, 0x7fff
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s4
	v_add3_u32 v7, v6, v12, 0x7fff
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v12, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v36, v36, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v14, v36, v14, v58
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v58, v14, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v13, v24, v30, v14
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v30, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v19, v19, v115
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v14, v13, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v14, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v13, 0xbfb8aa3b, v5
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v15, v19, v15, v55
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v19, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v10, 0xbfb8aa3b, v8
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v55, v15, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v10
	v_cndmask_b32_e64 v13, 0, 0x42800000, s1
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v35, v35, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v10, 0, 0x42800000, s0
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v13, 0xbfb8aa3b, v5 :: v_dual_fmac_f32 v10, 0xbfb8aa3b, v8
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v13, v13, v20
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	s_waitcnt vmcnt(3)
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_mul_f32 v12, v12, v115
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v12, v12, v16, v56
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v16, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v56, v12, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v19, v19, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v10, v10, v17
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v17, v211, v75 :: v_dual_add_f32 v10, 1.0, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v17, v17, v32, v12
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, s4, v5, v13, v5
	v_div_scale_f32 v20, null, v10, v10, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v12, v17, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v14, v14, v115
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v17, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v2, v14, v2, v54
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v14, v19, v31, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v19, null, v13, v13, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v54, v2, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v14, v15, v14, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v20, v17, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v15, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v17, v29, v17
	v_div_scale_f32 v31, s1, v8, v10, v8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v14
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v33, v31, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v24
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v16, v16, v115
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v20, v33, v31
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v1, v16, v1, v53
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v16, v19
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v14
	v_exp_f32_e32 v15, v15
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v53, v1, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v24, v24
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v25, v35, v25, v1
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v19, v16, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v25, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v16, v29, v16
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v24, v24, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v36, v17
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v15, v15, v29
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v20, -v20, v33, v31
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v30, v30, v75 :: v_dual_mul_f32 v29, v32, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v17, v20, v17, v33
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v35, null, v15, v15, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v19, v29, v32
	v_div_fixup_f32 v8, v17, v10, v8
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v10, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v26, v30, v26, v2
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v30, v35
	v_fmac_f32_e32 v29, v34, v16
	v_div_scale_f32 v34, null, v24, v24, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v26, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v19, -v19, v29, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v31, v34
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v16, v19, v16, v29
	v_fma_f32 v19, -v35, v30, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v5, v16, v13, v5
	v_fma_f32 v20, -v34, v31, 1.0
	v_div_scale_f32 v16, s0, v14, v24, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v30, v19, v30 :: v_dual_mul_f32 v1, v1, v5
	v_fmac_f32_e32 v31, v20, v31
	v_div_scale_f32 v13, vcc_lo, v12, v15, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v5, v16, v31
	v_mul_f32_e32 v17, v13, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v34, v5, v16
	v_fmac_f32_e32 v5, v8, v31
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:100
	scratch_load_b32 v19, off, off offset:12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v16, -v34, v5, v16
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v10, v10, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v3, v10, v3, v52
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fma_f32 v10, -v35, v17, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v52, v3, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v17, v10, v30
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v10, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v8, v8, v75
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v19, v19, v115
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v35, v17, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v4, v19, v4, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v13, v13, v30, v17
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v5, v16, v31, v5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v51, v4, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.l, v2.h
	v_mov_b16_e32 v16.h, v115.l
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v5, v24, v14
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v8, v8, v28, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v11.l, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v8, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v13, v15, v12
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v8
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.h, v115.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v4, v4
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v10, v75
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v10, v10, v27, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v10, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v1.h
	v_mov_b16_e32 v10.h, v115.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v5, 1, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v6, 1, v10
	v_mov_b16_e32 v10.l, v4.h
	v_mov_b16_e32 v8.l, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v5, v2, v5, 0x7fff
	v_add3_u32 v6, v1, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v7, 1, v8
	v_and_b32_e32 v8, 1, v10
	v_mov_b32_e32 v10, 0x5410
	v_add3_u32 v1, v3, v7, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b32_e32 v12, 0x7632
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s0
	v_add3_u32 v2, v4, v8, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_cndmask_b32_e32 v7, v82, v83, vcc_lo
	v_dual_cndmask_b32 v13, v78, v80 :: v_dual_cndmask_b32 v14, v9, v81
	v_cndmask_b32_e32 v17, v3, v18, vcc_lo
	v_dual_cndmask_b32 v9, v81, v9 :: v_dual_cndmask_b32 v10, 0x1054, v10
	v_dual_cndmask_b32 v12, 0x3276, v12 :: v_dual_cndmask_b32 v15, v23, v45
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_dual_cndmask_b32 v2, v21, v77 :: v_dual_cndmask_b32 v5, v22, v79
	v_cndmask_b32_e32 v8, v80, v78, vcc_lo
	v_lshl_or_b32 v10, v10, 8, v10
	v_lshl_or_b32 v12, v12, 8, v12
	v_cndmask_b32_e32 v3, v18, v3, vcc_lo
	v_cndmask_b32_e32 v18, v0, v11, vcc_lo
	v_cndmask_b32_e32 v0, v11, v0, vcc_lo
	v_and_b32_e32 v10, 0x540054, v10
	v_and_b32_e32 v12, 0x760076, v12
	s_mov_b32 s0, 0x76543210
	v_dual_cndmask_b32 v1, v77, v21 :: v_dual_cndmask_b32 v6, v83, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v10, v10, 4, v10
	v_cndmask_b32_e32 v16, v45, v23, vcc_lo
	v_lshl_or_b32 v11, v12, 4, v12
	v_cndmask_b32_e32 v4, v79, v22, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v19, 0x5040504, v10
	v_and_b32_e32 v20, 0x7060706, v11
	v_permlanex16_b32 v11, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v19
	v_perm_b32 v1, v2, v1, v20
	v_perm_b32 v2, v5, v4, v19
	v_perm_b32 v3, v5, v4, v20
	v_perm_b32 v4, v7, v6, v19
	v_perm_b32 v5, v7, v6, v20
	v_perm_b32 v6, v12, v8, v19
	v_perm_b32 v7, v12, v8, v20
	v_perm_b32 v8, v9, v14, v19
	v_perm_b32 v9, v9, v14, v20
	v_perm_b32 v10, v11, v15, v19
	v_perm_b32 v11, v11, v15, v20
	v_perm_b32 v14, v16, v18, v19
	v_perm_b32 v15, v16, v18, v20
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v16, v113, v114, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v12, v13, v17, v19
	v_perm_b32 v13, v13, v17, v20
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v17, v113, v76, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v16, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v17, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v17, s[24:27], 0 offen offset:256
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 240
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 54
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 240
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 26068
; TotalNumSgprs: 56
; NumVgprs: 256
; ScratchSize: 240
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 56
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 240
    .sgpr_count:     56
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 62
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
