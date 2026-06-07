	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
	v_lshrrev_b32_e32 v169, 3, v0
	v_lshrrev_b32_e32 v168, 4, v0
	v_and_b32_e32 v101, 15, v0
	v_or_b32_e32 v173, 0x3f0, v0
	s_mov_b32 s51, 0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_lshlrev_b32_e32 v174, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v170, 16, v168
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v39, 0, v174
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
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_mul_lo_u32 v2, s26, v169
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
	s_mov_b32 s11, 0x31027000
	s_mov_b64 s[28:29], s[14:15]
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_mov_b32 s39, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
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
	.loc	1 312 26                        ; generate_amdgcn.py:312:26
	s_lshl_b32 s30, s3, 5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s31, 31
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s17
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v3, s30, v169
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s17, s3, s6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s4, s16, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s4, s4, 27
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s7
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s35, s27, 1
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s3, 8
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s16, s4
.Ltmp19:
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s2, 5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s16, 31
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_mul_lo_u32 v6, s35, v168
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v4, s30, v168
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v167, 2, v0
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v5, s30, v170
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s5, s35, s30
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s3, s31, v4
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_lshl_add_u32 v171, v101, 4, v6
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 28, v167
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s4, s31, v5
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	s_mul_i32 s18, s26, s30
	.loc	1 316 26 is_stmt 0              ; generate_amdgcn.py:316:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 322 34 is_stmt 1              ; generate_amdgcn.py:322:34
	v_lshl_add_u32 v172, s27, 5, v171
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_add3_u32 v33, v2, v1, s34
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s7, s33, s5
	.loc	1 322 26 is_stmt 0              ; generate_amdgcn.py:322:26
	s_and_b32 s37, s37, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s5, s3, s2
	s_and_b32 s4, s4, s2
	s_cmp_gt_i32 s16, 63
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v1, s7, v171
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_add_nc_u32_e32 v2, s18, v33
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v3, s7, v172
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s44, s30, 32
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v4, 0x80000000, v1, s5
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v12, s44, v169
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v1, s27, v1
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_lshl_b32 s19, s27, 6
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v8, 0x80000000, v3, s4
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v3, s27, v3
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v13, s44, v168
	v_or_b32_e32 v14, s44, v170
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s7, s7, s19
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	s_lshl_b32 s17, s26, 5
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v12
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v21, s7, v171
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_add3_u32 v20, s18, s17, v33
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v1, 0x80000000, v1, s5
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_b32 v32, v2, s[8:11], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[4:7], v4, s[36:39], 0 offen
	buffer_load_b128 v[8:11], v8, s[36:39], 0 offen
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v2, 0x80000000, v3, s4
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s4, s31, v13
	v_cmp_gt_i32_e64 s5, s31, v14
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v22, s7, v172
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v3, s27, v21
	v_add3_u32 v23, s7, s27, v172
	.loc	1 328 35 is_stmt 0              ; generate_amdgcn.py:328:35
	s_clause 0x1
	buffer_load_b128 v[12:15], v1, s[36:39], 0 offen
	buffer_load_b128 v[16:19], v2, s[36:39], 0 offen
	.loc	1 316 26 is_stmt 1              ; generate_amdgcn.py:316:26
	v_dual_cndmask_b32 v1, 0x80000000, v20 :: v_dual_add_nc_u32 v38, 0, v167
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s3
	s_and_b32 s4, s5, s3
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e32 v2, 0x80000000, v21, vcc_lo
	v_cndmask_b32_e64 v24, 0x80000000, v22, s4
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_cndmask_b32_e64 v34, 0x80000000, v23, s4
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_b32 v1, v1, s[8:11], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[20:23], v2, s[36:39], 0 offen
	buffer_load_b128 v[24:27], v24, s[36:39], 0 offen
	buffer_load_b128 v[28:31], v3, s[36:39], 0 offen
	buffer_load_b128 v[34:37], v34, s[36:39], 0 offen
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v3, 16, v101
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0x5f
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(9)
	ds_store_b32 v38, v32 offset:32768
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(8)
	ds_store_b128 v39, v[4:7]
	s_waitcnt vmcnt(7)
	ds_store_b128 v39, v[8:11] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(6)
	ds_store_b128 v39, v[12:15] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v39, v[16:19] offset:20480
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v38, v1 offset:33792
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v39, v[20:23] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v39, v[24:27] offset:12288
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(1)
	ds_store_b128 v39, v[28:31] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v39, v[34:37] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_and_or_b32 v34, 0x70, v2, v101
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_or_b32_e32 v1, 0x3f0, v0
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_or_b32_e32 v4, 0x100, v34
	v_or_b32_e32 v243, 0x400, v34
	v_or_b32_e32 v242, 0x500, v34
	v_or_b32_e32 v241, 0x600, v34
	v_or_b32_e32 v220, 0x700, v34
	scratch_store_b32 off, v4, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x200, v34
	v_or_b32_e32 v219, 0x800, v34
	v_or_b32_e32 v218, 0x900, v34
	v_or_b32_e32 v217, 0xa00, v34
	v_or_b32_e32 v216, 0xb00, v34
	scratch_store_b32 off, v4, off          ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x300, v34
	v_or_b32_e32 v240, 0x1000, v34
	v_or_b32_e32 v239, 0x1100, v34
	v_or_b32_e32 v238, 0x1200, v34
	v_or_b32_e32 v237, 0x1300, v34
	scratch_store_b32 off, v4, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xc00, v34
	v_or_b32_e32 v236, 0x1400, v34
	v_or_b32_e32 v233, 0x1500, v34
	v_or_b32_e32 v232, 0x1600, v34
	v_or_b32_e32 v214, 0x1700, v34
	scratch_store_b32 off, v4, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xd00, v34
	v_or_b32_e32 v229, 0x1900, v34
	v_or_b32_e32 v228, 0x1a00, v34
	v_or_b32_e32 v227, 0x1b00, v34
	v_or_b32_e32 v226, 0x1d00, v34
	scratch_store_b32 off, v4, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xe00, v34
	v_or_b32_e32 v207, 0x1e00, v34
	v_or_b32_e32 v208, 0x1f00, v34
	v_or_b32_e32 v209, 0x80, v34
	v_or_b32_e32 v210, 0x180, v34
	scratch_store_b32 off, v4, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xf00, v34
	v_or_b32_e32 v211, 0x280, v34
	v_or_b32_e32 v212, 0x380, v34
	v_or_b32_e32 v213, 0x480, v34
	v_or_b32_e32 v215, 0x580, v34
	scratch_store_b32 off, v4, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1800, v34
	v_or_b32_e32 v244, 0x680, v34
	v_or_b32_e32 v245, 0x780, v34
	v_or_b32_e32 v247, 0x880, v34
	v_or_b32_e32 v230, 0x980, v34
	scratch_store_b32 off, v4, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1c00, v34
	v_or_b32_e32 v246, 0xa80, v34
	v_or_b32_e32 v225, 0xb80, v34
	v_or_b32_e32 v231, 0xc80, v34
	v_or_b32_e32 v248, 0xd80, v34
	v_or_b32_e32 v221, 0xe80, v34
	v_or_b32_e32 v223, 0xf80, v34
	v_or_b32_e32 v222, 0x1080, v34
	v_or_b32_e32 v224, 0x1180, v34
	v_or_b32_e32 v249, 0x1280, v34
	v_or_b32_e32 v250, 0x1380, v34
	v_or_b32_e32 v251, 0x1480, v34
	v_or_b32_e32 v252, 0x1580, v34
	v_or_b32_e32 v253, 0x1680, v34
	v_or_b32_e32 v254, 0x1780, v34
	v_or_b32_e32 v255, 0x1880, v34
	v_or_b32_e32 v185, 0x1980, v34
	v_or_b32_e32 v186, 0x1a80, v34
	v_or_b32_e32 v187, 0x1b80, v34
	v_or_b32_e32 v188, 0x1c80, v34
	v_or_b32_e32 v189, 0x1d80, v34
	v_or_b32_e32 v190, 0x1e80, v34
	v_or_b32_e32 v191, 0x1f80, v34
	scratch_store_b32 off, v4, off offset:32 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr243
                                        ; implicit-def: $vgpr242
                                        ; implicit-def: $vgpr241
                                        ; implicit-def: $vgpr220
                                        ; implicit-def: $vgpr219
                                        ; implicit-def: $vgpr218
                                        ; implicit-def: $vgpr217
                                        ; implicit-def: $vgpr216
                                        ; implicit-def: $vgpr240
                                        ; implicit-def: $vgpr239
                                        ; implicit-def: $vgpr238
                                        ; implicit-def: $vgpr237
                                        ; implicit-def: $vgpr236
                                        ; implicit-def: $vgpr233
                                        ; implicit-def: $vgpr232
                                        ; implicit-def: $vgpr214
                                        ; implicit-def: $vgpr229
                                        ; implicit-def: $vgpr228
                                        ; implicit-def: $vgpr227
                                        ; implicit-def: $vgpr226
                                        ; implicit-def: $vgpr207
                                        ; implicit-def: $vgpr208
                                        ; implicit-def: $vgpr209
                                        ; implicit-def: $vgpr210
                                        ; implicit-def: $vgpr211
                                        ; implicit-def: $vgpr212
                                        ; implicit-def: $vgpr213
                                        ; implicit-def: $vgpr215
                                        ; implicit-def: $vgpr244
                                        ; implicit-def: $vgpr245
                                        ; implicit-def: $vgpr247
                                        ; implicit-def: $vgpr230
                                        ; implicit-def: $vgpr246
                                        ; implicit-def: $vgpr225
                                        ; implicit-def: $vgpr231
                                        ; implicit-def: $vgpr248
                                        ; implicit-def: $vgpr221
                                        ; implicit-def: $vgpr223
                                        ; implicit-def: $vgpr222
                                        ; implicit-def: $vgpr224
                                        ; implicit-def: $vgpr249
                                        ; implicit-def: $vgpr250
                                        ; implicit-def: $vgpr251
                                        ; implicit-def: $vgpr252
                                        ; implicit-def: $vgpr253
                                        ; implicit-def: $vgpr254
                                        ; implicit-def: $vgpr255
                                        ; implicit-def: $vgpr185
                                        ; implicit-def: $vgpr186
                                        ; implicit-def: $vgpr187
                                        ; implicit-def: $vgpr188
                                        ; implicit-def: $vgpr189
                                        ; implicit-def: $vgpr190
                                        ; implicit-def: $vgpr191
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
.LBB0_3:                                ; %Flow406
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v4, s34, v101
	v_or_b32_e32 v3, s34, v3
	v_and_b32_e32 v5, 0xf0, v0
	s_ashr_i32 s45, s6, 5
	v_or_b32_e32 v104, s33, v0
	v_mul_lo_u32 v105, v4, s45
	v_mul_lo_u32 v103, v3, s45
	v_lshlrev_b32_e32 v176, 2, v5
	v_lshlrev_b32_e32 v177, 1, v0
	v_lshlrev_b32_e32 v178, 5, v0
	v_lshlrev_b32_e32 v175, 1, v5
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_and_or_b32 v34, 0x70, v2, v101
	v_dual_mov_b32 v39, 0 :: v_dual_and_b32 v2, 28, v177
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v179, s27, v104
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v1, 0x100, v34
	v_or_b32_e32 v243, 0x400, v34
	v_or_b32_e32 v242, 0x500, v34
	v_or_b32_e32 v241, 0x600, v34
	v_or_b32_e32 v220, 0x700, v34
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x200, v34
	v_or_b32_e32 v219, 0x800, v34
	v_or_b32_e32 v218, 0x900, v34
	v_or_b32_e32 v217, 0xa00, v34
	v_or_b32_e32 v216, 0xb00, v34
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x300, v34
	v_or_b32_e32 v240, 0x1000, v34
	v_or_b32_e32 v239, 0x1100, v34
	v_or_b32_e32 v238, 0x1200, v34
	v_or_b32_e32 v237, 0x1300, v34
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xc00, v34
	v_or_b32_e32 v236, 0x1400, v34
	v_or_b32_e32 v233, 0x1500, v34
	v_or_b32_e32 v232, 0x1600, v34
	v_or_b32_e32 v214, 0x1700, v34
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xd00, v34
	v_or_b32_e32 v229, 0x1900, v34
	v_or_b32_e32 v228, 0x1a00, v34
	v_or_b32_e32 v227, 0x1b00, v34
	v_or_b32_e32 v226, 0x1d00, v34
	scratch_store_b32 off, v1, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xe00, v34
	v_or_b32_e32 v207, 0x1e00, v34
	v_or_b32_e32 v208, 0x1f00, v34
	v_or_b32_e32 v209, 0x80, v34
	v_or_b32_e32 v210, 0x180, v34
	scratch_store_b32 off, v1, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xf00, v34
	v_or_b32_e32 v211, 0x280, v34
	v_or_b32_e32 v212, 0x380, v34
	v_or_b32_e32 v213, 0x480, v34
	v_or_b32_e32 v215, 0x580, v34
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1800, v34
	v_or_b32_e32 v244, 0x680, v34
	v_or_b32_e32 v245, 0x780, v34
	v_mov_b32_e32 v96, 0
	v_or_b32_e32 v247, 0x880, v34
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1c00, v34
	v_or_b32_e32 v230, 0x980, v34
	v_or_b32_e32 v246, 0xa80, v34
	v_or_b32_e32 v225, 0xb80, v34
	v_or_b32_e32 v231, 0xc80, v34
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_and_b32_e32 v1, 32, v178
	v_or_b32_e32 v248, 0xd80, v34
	v_or_b32_e32 v221, 0xe80, v34
	v_or_b32_e32 v223, 0xf80, v34
	v_or_b32_e32 v222, 0x1080, v34
	v_add3_u32 v1, 0, v176, v1
	v_or_b32_e32 v224, 0x1180, v34
	v_or_b32_e32 v249, 0x1280, v34
	v_or_b32_e32 v250, 0x1380, v34
	v_or_b32_e32 v251, 0x1480, v34
	v_or_b32_e32 v252, 0x1580, v34
	v_or_b32_e32 v253, 0x1680, v34
	v_or_b32_e32 v254, 0x1780, v34
	v_or_b32_e32 v255, 0x1880, v34
	v_or_b32_e32 v185, 0x1980, v34
	v_or_b32_e32 v186, 0x1a80, v34
	v_or_b32_e32 v187, 0x1b80, v34
	v_or_b32_e32 v188, 0x1c80, v34
	v_or_b32_e32 v189, 0x1d80, v34
	v_or_b32_e32 v190, 0x1e80, v34
	v_or_b32_e32 v191, 0x1f80, v34
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v180, v1, v2
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v181, 0, v175
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v52, 0
	v_mov_b32_e32 v51, 0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s16, 0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s49, s45, 3
	s_add_i32 s14, s44, 32
	s_mov_b32 s15, 1
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s48, 0, 0x8400
	s_add_i32 s47, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s46, 0, 0x6000
	s_add_i32 s49, s49, -3
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
	s_mov_b32 s51, s16
	s_mov_b32 s50, s16
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s53, s50, 5
	s_mov_b32 s52, s51
	s_mov_b32 s51, s1
	s_mov_b32 s1, s30
	s_mov_b32 s30, s44
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s44, s14, s53
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v113, s23 :: v_dual_add_nc_u32 v36, s0, v101
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v3, s44, v169
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_mad_u64_u32 v[1:2], null, s44, s26, v[33:34]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v112, s22 :: v_dual_add_nc_u32 v35, s52, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v110, s20 :: v_dual_add_nc_u32 v163, s51, v34
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s51, s1, 31
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s52, s44, s35
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_lshr_b32 s51, s51, 27
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v111, s21 :: v_dual_mov_b32 v108, s18
	v_dual_mov_b32 v109, s19 :: v_dual_mov_b32 v106, s16
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_b32 v102, v1, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v1, v36 offset:416
	ds_load_u8 v2, v36 offset:384
	ds_load_u8 v3, v36 offset:480
	ds_load_u8 v4, v36 offset:448
	ds_load_u8 v5, v36 offset:288
	ds_load_u8 v6, v36 offset:256
	ds_load_u8 v7, v36 offset:352
	ds_load_u8 v8, v36 offset:320
	ds_load_u8 v9, v36 offset:160
	ds_load_u8 v10, v36 offset:128
	ds_load_u8 v11, v36 offset:224
	ds_load_u8 v12, v36 offset:192
	ds_load_u8 v13, v36 offset:96
	ds_load_u8 v14, v36 offset:64
	ds_load_u8 v15, v36
	ds_load_u8 v16, v36 offset:32
	ds_load_u8 v17, v35 offset:3328
	ds_load_u8 v18, v35 offset:3072
	ds_load_u8 v19, v35 offset:3840
	ds_load_u8 v20, v35 offset:3584
	ds_load_u8 v21, v35 offset:2304
	ds_load_u8 v22, v35 offset:2048
	ds_load_u8 v23, v35 offset:2816
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v35 offset:2560
	ds_load_u8 v24, v35 offset:1280
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v4, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v5, v8, v7, 0xc0c0004
	ds_load_u8 v6, v35 offset:1536
	ds_load_u8 v7, v35 offset:256
	v_lshl_or_b32 v117, v3, 16, v1
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v3, v10, v9, 0xc0c0004
	v_lshl_or_b32 v116, v5, 16, v4
	ds_load_u8 v1, v35 offset:1024
	ds_load_u8 v5, v35 offset:1792
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v4, v12, v11, 0xc0c0004
	ds_load_u8 v8, v35
	ds_load_u8 v9, v35 offset:768
	ds_load_u8 v11, v35 offset:3456
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v12, v18, v17, 0xc0c0004
	ds_load_u8 v17, v35 offset:3712
	v_lshl_or_b32 v115, v4, 16, v3
	v_perm_b32 v3, v14, v13, 0xc0c0004
	v_perm_b32 v4, v15, v16, 0xc0c0004
	ds_load_u8 v13, v35 offset:3200
	ds_load_u8 v18, v35 offset:2432
	ds_load_u8 v10, v35 offset:512
	ds_load_u8 v15, v35 offset:3968
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v16, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v2, v2, v23, 0xc0c0004
	v_perm_b32 v14, v20, v19, 0xc0c0004
	v_lshl_or_b32 v114, v3, 16, v4
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_add_i32 s1, s1, s51
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s51, s52, s33
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v3, v2, 16, v16
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v1, v1, v24, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v2, v6, v5, 0xc0c0004
	v_lshl_or_b32 v4, v14, 16, v12
	ds_load_u8 v12, v35 offset:2176
	ds_load_u8 v14, v35 offset:2944
	ds_load_u8 v16, v35 offset:2688
	ds_load_u8 v5, v35 offset:1408
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v6, v35 offset:1152
	ds_load_u8 v19, v35 offset:1920
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v1, v8, v7, 0xc0c0004
	ds_load_u8 v7, v35 offset:1664
	v_mov_b32_e32 v107, s17
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v10, v9, 0xc0c0004
	ds_load_u8 v9, v35 offset:384
	v_perm_b32 v10, v13, v11, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v13, v17, v15, 0xc0c0004
	ds_load_u8 v15, v35 offset:896
	ds_load_u8 v17, v35 offset:640
	ds_load_u8 v11, v35 offset:128
	v_lshl_or_b32 v1, v8, 16, v1
	v_lshl_or_b32 v121, v13, 16, v10
	ds_load_u8 v8, v36 offset:400
	ds_load_u8 v10, v36 offset:496
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	s_add_i32 s53, s51, s27
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v12, v12, v18, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[1:4], v[114:117], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v14, v16, v14, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v16, v36 offset:432
	ds_load_u8 v6, v36 offset:464
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v7, v7, v19, 0xc0c0004
	v_lshl_or_b32 v120, v14, 16, v12
	ds_load_u8 v12, v36 offset:304
	ds_load_u8 v14, v36 offset:176
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s52, s1, 5
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v119, v7, 16, v5
	ds_load_u8 v5, v36 offset:272
	ds_load_u8 v7, v36 offset:368
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v13, v17, v15, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v36 offset:336
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s54, s52, s35
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s52, s45
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v118, v13, 16, v9
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s1, -1, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v8, v8, v16, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v6, v6, v10, 0xc0c0004
	ds_load_u8 v10, v36 offset:240
	v_wmma_i32_16x16x16_iu8 v[17:24], v[118:121], v[114:117], v[106:113] neg_lo:[1,1,0]
	v_lshl_or_b32 v130, v6, 16, v8
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v5, v5, v12, 0xc0c0004
	ds_load_u8 v12, v36 offset:208
	ds_load_u8 v15, v36 offset:144
	ds_load_u8 v8, v36 offset:80
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v11, v7, 0xc0c0004
	ds_load_u8 v11, v36 offset:16
	v_lshl_or_b32 v129, v7, 16, v5
	ds_load_u8 v5, v36 offset:48
	ds_load_u8 v6, v36 offset:112
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v12, v10, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v15, v14, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v10, v163 offset:3328
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v128, v9, 16, v7
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v7, v163 offset:3072
	ds_load_u8 v9, v163 offset:3840
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v5, v11, v5, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v6, v8, v6, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v8, v163 offset:3584
	ds_load_u8 v11, v163 offset:2304
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v127, v6, 16, v5
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v5, v163 offset:1024
	ds_load_u8 v6, v163 offset:1792
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v8, v8, v9, 0xc0c0004
	ds_load_u8 v9, v163 offset:2816
	v_perm_b32 v7, v7, v10, 0xc0c0004
	ds_load_u8 v10, v163 offset:2048
	v_lshl_or_b32 v134, v8, 16, v7
	ds_load_u8 v7, v163 offset:1536
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	ds_load_u8 v11, v163 offset:2560
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v163 offset:256
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v163 offset:1280
	v_lshl_or_b32 v133, v9, 16, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v132, v6, 16, v5
	ds_load_u8 v5, v163
	ds_load_u8 v6, v163 offset:768
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v5, v5, v7, 0xc0c0004
	ds_load_u8 v7, v163 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v163 offset:3456
	v_lshl_or_b32 v131, v6, 16, v5
	ds_load_u8 v5, v163 offset:3200
	ds_load_u8 v6, v163 offset:3968
	v_wmma_i32_16x16x16_iu8 v[143:150], v[131:134], v[127:130], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v5, v5, v7, 0xc0c0004
	ds_load_u8 v7, v163 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v163 offset:2432
	ds_load_u8 v8, v163 offset:2176
	v_lshl_or_b32 v162, v6, 16, v5
	ds_load_u8 v5, v163 offset:1408
	ds_load_u8 v6, v163 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v163 offset:2944
	ds_load_u8 v9, v163 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[9:16], v[1:4], v[127:130], v[106:113] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v161, v8, 16, v7
	ds_load_u8 v6, v163 offset:1920
	ds_load_u8 v7, v163 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v160, v6, 16, v5
	ds_load_u8 v5, v163 offset:384
	ds_load_u8 v6, v163 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v163 offset:896
	ds_load_u8 v7, v163 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v159, v6, 16, v5
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[1:8], v[118:121], v[127:130], v[106:113] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[119:126], v[131:134], v[114:117], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[159:162], v[114:117], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[159:162], v[127:130], v[106:113] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v106, v36 offset:928
	ds_load_u8 v107, v36 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v36 offset:992
	ds_load_u8 v108, v36 offset:960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v36 offset:800
	ds_load_u8 v109, v36 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v36 offset:864
	ds_load_u8 v110, v36 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v110, v109, 0xc0c0004
	v_lshl_or_b32 v109, v107, 16, v106
	ds_load_u8 v106, v36 offset:672
	ds_load_u8 v107, v36 offset:640
	v_lshl_or_b32 v108, v110, 16, v108
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v36 offset:736
	ds_load_u8 v110, v36 offset:704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v110, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v107, 16, v106
	ds_load_u8 v106, v36 offset:544
	ds_load_u8 v110, v36 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v110, v106, 0xc0c0004
	ds_load_u8 v110, v36 offset:608
	ds_load_u8 v111, v36 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v106, v110, 16, v106
	ds_load_u8 v110, v35 offset:7424
	ds_load_u8 v111, v35 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v35 offset:7936
	ds_load_u8 v112, v35 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v35 offset:6400
	ds_load_u8 v113, v35 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v35 offset:6912
	ds_load_u8 v114, v35 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v114, v113, 0xc0c0004
	v_lshl_or_b32 v113, v111, 16, v110
	ds_load_u8 v110, v35 offset:5376
	ds_load_u8 v111, v35 offset:5120
	v_lshl_or_b32 v112, v114, 16, v112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v35 offset:5888
	ds_load_u8 v114, v35 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v114, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v111, 16, v110
	ds_load_u8 v110, v35 offset:4352
	ds_load_u8 v114, v35 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v114, v110, 0xc0c0004
	ds_load_u8 v114, v35 offset:4864
	ds_load_u8 v115, v35 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v110, v114, 16, v110
	ds_load_u8 v114, v36 offset:944
	ds_load_u8 v115, v36 offset:912
	v_wmma_i32_16x16x16_iu8 v[25:32], v[110:113], v[106:109], v[25:32] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_add_nc_u32_e32 v115, s0, v173
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v115, v115
	ds_load_u8 v116, v36 offset:976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v36 offset:816
	ds_load_u8 v117, v36 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v36 offset:880
	ds_load_u8 v118, v36 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v118, v117, 0xc0c0004
	v_lshl_or_b32 v117, v115, 16, v114
	ds_load_u8 v114, v36 offset:688
	ds_load_u8 v115, v36 offset:656
	v_lshl_or_b32 v116, v118, 16, v116
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v36 offset:752
	ds_load_u8 v118, v36 offset:720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v118, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v115, v115, 16, v114
	ds_load_u8 v114, v36 offset:560
	ds_load_u8 v118, v36 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v118, v114, 0xc0c0004
	ds_load_u8 v118, v36 offset:624
	ds_load_u8 v36, v36 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v36, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v114, v36, 16, v114
	v_wmma_i32_16x16x16_iu8 v[9:16], v[110:113], v[114:117], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v36, v35 offset:7552
	ds_load_u8 v110, v35 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v110, v36, 0xc0c0004
	ds_load_u8 v110, v35 offset:8064
	ds_load_u8 v111, v35 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v35 offset:6528
	ds_load_u8 v112, v35 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v35 offset:7040
	ds_load_u8 v113, v35 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_lshl_or_b32 v113, v110, 16, v36
	ds_load_u8 v36, v35 offset:5504
	ds_load_u8 v110, v35 offset:5248
	v_lshl_or_b32 v112, v112, 16, v111
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v110, v36, 0xc0c0004
	ds_load_u8 v110, v35 offset:6016
	ds_load_u8 v111, v35 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v110, 16, v36
	ds_load_u8 v36, v35 offset:4480
	ds_load_u8 v110, v35 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v110, v36, 0xc0c0004
	ds_load_u8 v110, v35 offset:4992
	ds_load_u8 v35, v35 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v35, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v110, v35, 16, v36
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v35, v163 offset:7424
	ds_load_u8 v36, v163 offset:7168
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[17:24], v[110:113], v[106:109], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[110:113], v[114:117], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v163 offset:7936
	ds_load_u8 v110, v163 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v110, v36, 0xc0c0004
	ds_load_u8 v110, v163 offset:6400
	ds_load_u8 v111, v163 offset:6144
	v_lshl_or_b32 v113, v36, 16, v35
	ds_load_u8 v35, v163 offset:5376
	ds_load_u8 v36, v163 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v163 offset:6912
	ds_load_u8 v112, v163 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v112, v111, 16, v110
	ds_load_u8 v36, v163 offset:5888
	ds_load_u8 v110, v163 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v110, v36, 0xc0c0004
	v_lshl_or_b32 v111, v36, 16, v35
	ds_load_u8 v35, v163 offset:4352
	ds_load_u8 v36, v163 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v163 offset:4864
	ds_load_u8 v110, v163 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v110, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v110, v36, 16, v35
	ds_load_u8 v35, v163 offset:7552
	ds_load_u8 v36, v163 offset:7296
	v_wmma_i32_16x16x16_iu8 v[119:126], v[110:113], v[106:109], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[110:113], v[114:117], v[143:150] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v133, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v120, v126
	v_cvt_f32_i32_e32 v126, v148
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v148, v1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v1, s44, v168
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v132, v121
	v_cvt_f32_i32_e32 v121, v125
	v_cvt_f32_i32_e32 v125, v149
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v149, v2
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v1, s44, v170
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v163 offset:8064
	ds_load_u8 v118, v163 offset:7808
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v2, s51, v172
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v131, v122
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s0, s31, v1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v1, v104, s54, 1
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v122, v124
	v_cvt_f32_i32_e32 v124, v150
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v150, v3
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v3, v103, s52, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v134, v119
	v_cvt_f32_i32_e32 v123, v123
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v1, v1, s[40:43], 0 offen
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v118, v36, 0xc0c0004
	ds_load_u8 v118, v163 offset:6528
	ds_load_u8 v127, v163 offset:6272
	v_lshl_or_b32 v130, v36, 16, v35
	ds_load_u8 v35, v163 offset:5504
	ds_load_u8 v36, v163 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v118, v127, v118, 0xc0c0004
	ds_load_u8 v127, v163 offset:7040
	ds_load_u8 v128, v163 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v129, v127, 16, v118
	ds_load_u8 v36, v163 offset:6016
	ds_load_u8 v118, v163 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v118, v36, 0xc0c0004
	v_lshl_or_b32 v128, v36, 16, v35
	ds_load_u8 v35, v163 offset:4480
	ds_load_u8 v36, v163 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v163 offset:4992
	ds_load_u8 v118, v163 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v118, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v127, v36, 16, v35
	v_wmma_i32_16x16x16_iu8 v[151:158], v[127:130], v[114:117], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[127:130], v[106:109], v[135:142] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v130, v144
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v144, v13
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v129, v145
	v_cvt_f32_i32_e32 v118, v152
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v152, v5
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v5, 0x80000000, v2, s0
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v2, s53, v171
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v106, v140
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v140, v9
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v110, v156
	v_cvt_f32_i32_e32 v109, v157
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e32 v9, 0x80000000, v2, vcc_lo
	.loc	1 328 43 is_stmt 0              ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v2, s53, v172
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v115, v135
	v_cvt_f32_i32_e32 v114, v136
	v_cvt_f32_i32_e32 v113, v137
	v_cvt_f32_i32_e32 v112, v138
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v13, 0x80000000, v2, s0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v2, v105, s52, 1
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v35, v139
	v_cvt_f32_i32_e32 v36, v141
	v_cvt_f32_i32_e32 v107, v142
	v_cvt_f32_i32_e32 v135, v143
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	s_clause 0x1
	buffer_load_u16 v2, v2, s[4:7], 0 offen
	buffer_load_u16 v156, v3, s[4:7], 0 offen
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v128, v146
	v_cvt_f32_i32_e32 v127, v147
	v_cvt_f32_i32_e32 v119, v151
	v_cvt_f32_i32_e32 v117, v153
	v_cvt_f32_i32_e32 v116, v154
	v_cvt_f32_i32_e32 v108, v155
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v136, v17
	v_cvt_f32_i32_e32 v137, v18
	v_cvt_f32_i32_e32 v138, v19
	v_cvt_f32_i32_e32 v139, v20
	v_cvt_f32_i32_e32 v141, v10
	v_cvt_f32_i32_e32 v142, v11
	v_cvt_f32_i32_e32 v143, v12
	v_cvt_f32_i32_e32 v145, v14
	v_cvt_f32_i32_e32 v146, v15
	v_cvt_f32_i32_e32 v147, v16
	v_cvt_f32_i32_e32 v151, v4
	v_cvt_f32_i32_e32 v153, v6
	v_cvt_f32_i32_e32 v154, v7
	v_cvt_f32_i32_e32 v155, v8
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v111, v158
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s0, s15, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_cmp_lt_i32 s0, 2
	s_cselect_b32 s15, s0, 0
	s_add_i32 s52, s50, 1
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_lshl_b32 s0, s15, 10
	s_add_i32 s53, s0, 0
	s_mov_b32 s0, s48
	s_add_i32 s48, s53, 0x8000
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v180, v1 offset:34816
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v157, 16, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v157, v25
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v1, s51, v171
	s_mov_b32 s51, s47
	.loc	1 322 26 is_stmt 0              ; generate_amdgcn.py:322:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[36:39], 0 offen
	buffer_load_b128 v[5:8], v5, s[36:39], 0 offen
	buffer_load_b128 v[9:12], v9, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v13, s[36:39], 0 offen
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v181 offset:34816
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v86, v25, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v157, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v87, v25, v18
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v157, v27
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v82, v25, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v157, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v83, v25, v20
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v25, 16, v156
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v26, v25, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v94, v26, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v26, v157, v29
	v_mul_f32_e32 v17, v25, v141
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v28, v111, v25
	v_mul_f32_e32 v27, v108, v25
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v95, v17, v18
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v17, v25, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v90, v17, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v17, v25, v143
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v91, v17, v20
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[17:20], v181 offset:34832
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v78, v26, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v26, v157, v30
	v_mul_f32_e32 v21, v157, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v79, v26, v18 :: v_dual_mul_f32 v26, v157, v31
	v_fmac_f32_e32 v50, v26, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v26, v157, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v75, v26, v20
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v26, v25, v144
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v71, v26, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v17, v25, v145
	v_mul_f32_e32 v26, v157, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v72, v17, v18
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v17, v25, v146
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v67, v17, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v17, v25, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v68, v17, v20
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[17:20], v181 offset:35328
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v46, v26, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v26, v157, v137
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v47, v26, v18
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v26, v157, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v42, v26, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v26, v157, v139
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v44, v26, v20
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v26, v25, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v62, v26, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v17, v25, v149
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v26, v110, v25 :: v_dual_fmac_f32 v63, v17, v18
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v17, v25, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v59, v17, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v17, v25, v151
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v60, v17, v20
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[17:20], v181 offset:35344
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v40, v21, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v21, v157, v22 :: v_dual_mul_f32 v22, v35, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v41, v21, v18
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v157, v23
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v23, v107, v157
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v37, v21, v19
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v21, v157, v24 :: v_dual_mul_f32 v24, v36, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v38, v21, v20
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v25, v152
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v53, v21, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v17, v25, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v21, v134, v157 :: v_dual_fmac_f32 v54, v17, v18
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v17, v25, v154
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v52, v17, v19
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v17, v25, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v51, v17, v20
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v17, v179, s54, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	s_mov_b32 s1, s46
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_lshl_b32 s46, s15, 13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s47, s46, 0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v17, v17, s[40:43], 0 offen
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_add_i32 s46, s47, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s50, s49
	s_mov_b32 s50, s52
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_store_b32 v180, v17 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v181 offset:34816
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v39, v21, v17
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v21, v133, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v96, v21, v18 :: v_dual_mul_f32 v21, v132, v157
	v_dual_fmac_f32 v92, v21, v19 :: v_dual_mul_f32 v21, v131, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v21, v20
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v21, v135, v25
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v99, v21, v17
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v17, v130, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v21, v123, v157 :: v_dual_fmac_f32 v100, v17, v18
	v_mul_f32_e32 v17, v129, v25
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v97, v17, v19
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v17, v128, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v98, v17, v20
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[17:20], v181 offset:34832
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v88, v21, v17
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v21, v122, v157
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v89, v21, v18
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v21, v121, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v84, v21, v19 :: v_dual_mul_f32 v21, v120, v157
	v_fmac_f32_e32 v85, v21, v20
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v21, v127, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v73, v21, v17
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v17, v126, v25
	v_dual_mul_f32 v21, v115, v157 :: v_dual_fmac_f32 v74, v17, v18
	v_mul_f32_e32 v17, v125, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v69, v17, v19
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v17, v124, v25
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v70, v17, v20
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[17:20], v181 offset:35328
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v80, v21, v17
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v21, v114, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v81, v21, v18
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v21, v113, v157
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v76, v21, v19 :: v_dual_mul_f32 v21, v112, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v21, v20
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v21, v119, v25
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v65, v21, v17
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v17, v118, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v66, v17, v18 :: v_dual_add_nc_u32 v21, s53, v167
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v17, v117, v25
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v61, v17, v19
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v17, v116, v25
	v_mul_f32_e32 v25, v109, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v64, v17, v20
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[17:20], v181 offset:35344
	.loc	1 316 26 is_stmt 1              ; generate_amdgcn.py:316:26
	ds_store_b32 v21, v102 offset:32768
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v21, v106, v157
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v48, v22, v17 :: v_dual_fmac_f32 v49, v21, v18
	.loc	1 322 26 is_stmt 1              ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v21, s47, v174
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v43, v24, v19
	v_fmac_f32_e32 v45, v23, v20
	v_dual_fmac_f32 v57, v27, v17 :: v_dual_fmac_f32 v58, v26, v18
	v_dual_fmac_f32 v55, v25, v19 :: v_dual_fmac_f32 v56, v28, v20
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	ds_store_b128 v21, v[1:4]
	ds_store_b128 v21, v[5:8] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	ds_store_b128 v21, v[9:12] offset:16384
	ds_store_b128 v21, v[13:16] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v173
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s48, 0, 0x8400
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v39, 0
	s_add_i32 s47, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s46, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v17, s0, v101
	.loc	1 316 26 is_stmt 1              ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v14, s0, v1
	ds_load_u8_d16 v35, v17
	ds_load_u8_d16 v18, v17 offset:16
	ds_load_u8_d16 v36, v17 offset:32
	ds_load_u8_d16 v22, v17 offset:48
	ds_load_u8_d16 v121, v17 offset:64
	ds_load_u8_d16 v122, v17 offset:96
	ds_load_u8_d16 v32, v17 offset:112
	ds_load_u8_d16 v33, v17 offset:80
	ds_load_u8_d16 v123, v17 offset:128
	ds_load_u8_d16 v124, v17 offset:160
	ds_load_u8_d16 v125, v17 offset:192
	ds_load_u8_d16 v126, v17 offset:224
	ds_load_u8_d16 v102, v17 offset:240
	ds_load_u8_d16 v106, v17 offset:208
	ds_load_u8_d16 v107, v17 offset:176
	ds_load_u8_d16 v108, v17 offset:144
	ds_load_u8_d16 v127, v17 offset:256
	ds_load_u8_d16 v128, v17 offset:288
	ds_load_u8_d16 v129, v17 offset:320
	ds_load_u8_d16 v130, v17 offset:352
	ds_load_u8_d16 v113, v17 offset:368
	ds_load_u8_d16 v114, v17 offset:336
	ds_load_u8_d16 v115, v17 offset:304
	ds_load_u8_d16 v116, v17 offset:272
	ds_load_u8_d16 v131, v17 offset:384
	ds_load_u8_d16 v132, v17 offset:416
	ds_load_u8_d16 v133, v17 offset:448
	ds_load_u8_d16 v134, v17 offset:480
	ds_load_u8_d16 v117, v17 offset:496
	ds_load_u8_d16 v118, v17 offset:464
	ds_load_u8_d16 v119, v17 offset:432
	ds_load_u8_d16 v120, v17 offset:400
	ds_load_u8_d16 v19, v17 offset:512
	ds_load_u8_d16 v20, v17 offset:544
	ds_load_u8_d16 v21, v17 offset:576
	ds_load_u8_d16 v23, v17 offset:608
	ds_load_u8_d16 v2, v17 offset:624
	ds_load_u8_d16 v3, v17 offset:592
	ds_load_u8_d16 v4, v17 offset:560
	ds_load_u8_d16 v5, v17 offset:528
	ds_load_u8_d16 v24, v17 offset:640
	ds_load_u8_d16 v25, v17 offset:672
	ds_load_u8_d16 v26, v17 offset:704
	ds_load_u8_d16 v27, v17 offset:736
	ds_load_u8_d16 v6, v17 offset:752
	ds_load_u8_d16 v7, v17 offset:720
	ds_load_u8_d16 v8, v17 offset:688
	ds_load_u8_d16 v9, v17 offset:656
	ds_load_u8_d16 v28, v17 offset:768
	ds_load_u8_d16 v29, v17 offset:800
	ds_load_u8_d16 v30, v17 offset:832
	ds_load_u8_d16 v31, v17 offset:864
	ds_load_u8_d16 v10, v17 offset:880
	ds_load_u8_d16 v11, v17 offset:848
	ds_load_u8_d16 v12, v17 offset:816
	ds_load_u8_d16 v13, v17 offset:784
	ds_load_u8_d16 v109, v17 offset:896
	ds_load_u8_d16 v110, v17 offset:928
	ds_load_u8_d16 v111, v17 offset:960
	ds_load_u8_d16 v112, v17 offset:992
	ds_load_u8_d16 v14, v14
	ds_load_u8_d16 v15, v17 offset:976
	ds_load_u8_d16 v16, v17 offset:944
	ds_load_u8_d16 v17, v17 offset:912
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cndmask_b32_e64 v135, 0, 1, s2
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v135
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v135, 0
	v_mov_b32_e32 v136, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v135, v131, v132, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v136, v133, v134, 0xc0c0004
	v_perm_b32 v137, v127, v128, 0xc0c0004
	v_perm_b32 v138, v129, v130, 0xc0c0004
	s_mov_b32 s4, 0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v139, s51, v217
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v162, v136, 16, v135
	v_perm_b32 v135, v123, v124, 0xc0c0004
	v_perm_b32 v136, v125, v126, 0xc0c0004
	v_lshl_or_b32 v161, v138, 16, v137
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_lshl_or_b32 v160, v136, 16, v135
	v_perm_b32 v135, v35, v36, 0xc0c0004
	v_perm_b32 v136, v121, v122, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v137, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v159, v136, 16, v135
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v135, off, off offset:20
	scratch_load_b32 v136, off, off offset:12
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_mov_b32 s11, s4
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v138, s51, v219
	v_add_nc_u32_e32 v184, s51, v249
	v_add_nc_u32_e32 v183, s51, v186
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v139, v139
	ds_load_u8 v138, v138
	ds_load_u8 v184, v184
	ds_load_u8 v183, v183
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v137, s51, v137
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v135, s51, v135
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v136, s51, v136
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v137, v137
	ds_load_u8 v135, v135
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v136, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v136, s51, v136
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v137, s51, v218
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v170, v136, 16, v135
	ds_load_u8 v137, v137
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v135, s51, v242
	v_add_nc_u32_e32 v136, s51, v243
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v135, v135
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v138, s51, v216
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v138, v138
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v136, s51, v220
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v139, s51, v246
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v169, v138, 16, v137
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v137, s51, v241
	v_add_nc_u32_e32 v138, s51, v247
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v139, v139
	ds_load_u8 v137, v137
	ds_load_u8 v138, v138
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v137, off, off         ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v168, v136, 16, v135
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v135, off, off offset:4 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v136, s51, v34
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v136, v136
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v137, s51, v137
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v135, s51, v135
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v137, v137
	ds_load_u8 v135, v135
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v136, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v136, s51, v136
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v137, s51, v221
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v167, v136, 16, v135
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v135, s51, v248
	v_add_nc_u32_e32 v136, s51, v231
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v137, v137
	ds_load_u8 v135, v135
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v136, s51, v223
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v137, s51, v230
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v174, v136, 16, v135
	ds_load_u8 v137, v137
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v135, s51, v215
	v_add_nc_u32_e32 v136, s51, v213
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v135, v135
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v138, s51, v225
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v138, v138
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v136, s51, v245
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v138, 16, v137
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v137, s51, v244
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v138, v114, v113, 0xc0c0004
	ds_load_u8 v137, v137
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v137, s51, v211
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v172, v136, 16, v135
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v135, s51, v210
	v_add_nc_u32_e32 v136, s51, v209
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v137, v137
	ds_load_u8 v135, v135
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v136, s51, v212
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	v_perm_b32 v137, v116, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v171, v136, 16, v135
	v_perm_b32 v135, v120, v119, 0xc0c0004
	v_perm_b32 v136, v118, v117, 0xc0c0004
	v_lshl_or_b32 v181, v138, 16, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v182, v136, 16, v135
	v_perm_b32 v135, v108, v107, 0xc0c0004
	v_perm_b32 v136, v106, v102, 0xc0c0004
	v_lshl_or_b32 v180, v136, 16, v135
	v_perm_b32 v135, v18, v22, 0xc0c0004
	v_perm_b32 v136, v33, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v179, v136, 16, v135
	v_dual_mov_b32 v142, s11 :: v_dual_mov_b32 v141, s10
	v_dual_mov_b32 v140, s9 :: v_dual_mov_b32 v139, s8
	v_dual_mov_b32 v138, s7 :: v_dual_mov_b32 v137, s6
	v_dual_mov_b32 v136, s5 :: v_dual_mov_b32 v135, s4
	v_wmma_i32_16x16x16_iu8 v[143:150], v[167:170], v[159:162], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[151:158], v[171:174], v[159:162], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[159:166], v[167:170], v[179:182], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[171:174], v[179:182], v[135:142] neg_lo:[1,1,0]
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v172, off, off offset:32
	scratch_load_b32 v174, off, off offset:28
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v167, v109, v110, 0xc0c0004
	v_perm_b32 v168, v111, v112, 0xc0c0004
	v_perm_b32 v169, v28, v29, 0xc0c0004
	v_perm_b32 v171, v30, v31, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v173, s51, v207
	v_add_nc_u32_e32 v179, s51, v228
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v170, v168, 16, v167
	v_perm_b32 v167, v24, v25, 0xc0c0004
	v_perm_b32 v168, v26, v27, 0xc0c0004
	v_lshl_or_b32 v169, v171, 16, v169
	v_perm_b32 v171, v21, v23, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v182, s51, v255
	v_add_nc_u32_e32 v181, s51, v190
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v168, v168, 16, v167
	v_perm_b32 v167, v19, v20, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v180, s51, v238
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v173, v173
	ds_load_u8 v179, v179
	ds_load_u8 v182, v182
	v_lshl_or_b32 v167, v171, 16, v167
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v171, s51, v226
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v181, v181
	ds_load_u8 v180, v180
	ds_load_u8 v171, v171
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v172, s51, v172
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v174, s51, v174
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v172, v172
	ds_load_u8 v174, v174
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v172, s51, v208
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v172, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v173, s51, v229
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v174, s51, v227
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v174, v174
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v179, v174, 0xc0c0004
	v_lshl_or_b32 v174, v172, 16, v171
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v171, s51, v233
	v_add_nc_u32_e32 v172, s51, v236
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v173, v179, 16, v173
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v179, s51, v232
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v171, v171
	ds_load_u8 v172, v172
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v172, s51, v214
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v172, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v179, v172, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v179, s51, v240
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v172, v172, 16, v171
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v171, s51, v239
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v179, v179
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v179, v171, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v179, s51, v237
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v180, s51, v188
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v171, v179, 16, v171
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v179, s51, v189
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v180, v180
	v_wmma_i32_16x16x16_iu8 v[143:150], v[171:174], v[167:170], v[143:150] neg_lo:[1,1,0]
	ds_load_u8 v179, v179
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v180, s51, v191
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v180, v180
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v181, s51, v185
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v181, v181
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v182, s51, v187
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v182, v182
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v183, v182, 0xc0c0004
	v_lshl_or_b32 v182, v180, 16, v179
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v179, s51, v252
	v_add_nc_u32_e32 v180, s51, v251
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v181, v183, 16, v181
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v183, s51, v253
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v179, v179
	ds_load_u8 v180, v180
	ds_load_u8 v183, v183
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v180, s51, v254
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v180, v180
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v183, v180, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v183, s51, v222
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v180, v180, 16, v179
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v179, s51, v224
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v183, v183
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v183, v179, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v183, s51, v250
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v183, v183
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v179, v183, 16, v179
	v_perm_b32 v183, v11, v10, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[151:158], v[179:182], v[167:170], v[151:158] neg_lo:[1,1,0]
	v_perm_b32 v167, v17, v16, 0xc0c0004
	v_perm_b32 v168, v15, v14, 0xc0c0004
	v_perm_b32 v169, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v170, v168, 16, v167
	v_perm_b32 v167, v9, v8, 0xc0c0004
	v_perm_b32 v168, v7, v6, 0xc0c0004
	v_lshl_or_b32 v169, v183, 16, v169
	v_perm_b32 v183, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v168, v168, 16, v167
	v_perm_b32 v167, v5, v4, 0xc0c0004
	v_lshl_or_b32 v167, v183, 16, v167
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[159:166], v[171:174], v[167:170], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[179:182], v[167:170], v[135:142] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v168, v151
	v_cvt_f32_i32_e32 v172, v152
	v_cvt_f32_i32_e32 v171, v153
	v_cvt_f32_i32_e32 v174, v154
	v_cvt_f32_i32_e32 v167, v155
	v_cvt_f32_i32_e32 v170, v156
	v_cvt_f32_i32_e32 v169, v157
	v_cvt_f32_i32_e32 v173, v158
	v_cvt_f32_i32_e32 v179, v159
	v_cvt_f32_i32_e32 v180, v160
	v_cvt_f32_i32_e32 v159, v161
	v_cvt_f32_i32_e32 v160, v162
	v_cvt_f32_i32_e32 v157, v163
	v_cvt_f32_i32_e32 v158, v164
	v_cvt_f32_i32_e32 v155, v165
	v_cvt_f32_i32_e32 v156, v166
	v_cvt_f32_i32_e32 v153, v135
	v_cvt_f32_i32_e32 v154, v136
	v_cvt_f32_i32_e32 v151, v137
	v_cvt_f32_i32_e32 v152, v138
	v_cvt_f32_i32_e32 v137, v139
	v_cvt_f32_i32_e32 v138, v140
	v_cvt_f32_i32_e32 v136, v141
	v_cvt_f32_i32_e32 v135, v142
	v_cvt_f32_i32_e32 v142, v145
	v_cvt_f32_i32_e32 v139, v147
	v_cvt_f32_i32_e32 v141, v148
	v_cvt_f32_i32_e32 v140, v149
	v_cvt_f32_i32_e32 v145, v150
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x1e                           ; 124-byte Folded Spill
	scratch_store_b32 off, v180, off offset:216
	scratch_store_b32 off, v179, off offset:212
	scratch_store_b32 off, v160, off offset:208
	scratch_store_b32 off, v159, off offset:204
	scratch_store_b32 off, v144, off offset:200
	scratch_store_b32 off, v143, off offset:196
	scratch_store_b32 off, v146, off offset:192
	scratch_store_b32 off, v145, off offset:188
	scratch_store_b32 off, v142, off offset:184
	scratch_store_b32 off, v141, off offset:180
	scratch_store_b32 off, v140, off offset:176
	scratch_store_b32 off, v139, off offset:172
	scratch_store_b32 off, v174, off offset:168
	scratch_store_b32 off, v173, off offset:164
	scratch_store_b32 off, v172, off offset:160
	scratch_store_b32 off, v171, off offset:156
	scratch_store_b32 off, v170, off offset:152
	scratch_store_b32 off, v169, off offset:148
	scratch_store_b32 off, v168, off offset:144
	scratch_store_b32 off, v158, off offset:92
	scratch_store_b32 off, v157, off offset:88
	scratch_store_b32 off, v156, off offset:84
	scratch_store_b32 off, v155, off offset:80
	scratch_store_b32 off, v154, off offset:76
	scratch_store_b32 off, v153, off offset:72
	scratch_store_b32 off, v152, off offset:68
	scratch_store_b32 off, v151, off offset:64
	scratch_store_b32 off, v138, off offset:60
	scratch_store_b32 off, v137, off offset:56
	scratch_store_b32 off, v136, off offset:52
	scratch_store_b32 off, v135, off offset:48
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_mov_b32_e32 v135, 0
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_waitcnt lgkmcnt(61)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v36, v121, v122, 0xc0c0004
	s_mov_b32 s4, 0
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v123, v123, v124, 0xc0c0004
	s_mov_b32 s5, s4
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v121, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v137, v36, 16, v35
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:20
	scratch_load_b32 v36, off, off offset:12
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v124, v125, v126, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v122, s1, v219
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v18, v18, v22, 0xc0c0004
	v_perm_b32 v22, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v28, v28, v29, 0xc0c0004
	v_lshl_or_b32 v138, v124, 16, v123
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v123, s1, v217
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v30, v30, v31, 0xc0c0004
	v_lshl_or_b32 v153, v22, 16, v18
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v18, v109, v110, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v22, v111, v112, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v31, s1, v249
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v28, v30, 16, v28
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v30, s1, v186
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v115, v116, v115, 0xc0c0004
	v_lshl_or_b32 v29, v22, 16, v18
	v_perm_b32 v18, v24, v25, 0xc0c0004
	v_perm_b32 v22, v26, v27, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v25, s1, v255
	v_add_nc_u32_e32 v24, s1, v190
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v113, v114, v113, 0xc0c0004
	v_perm_b32 v131, v131, v132, 0xc0c0004
	v_lshl_or_b32 v27, v22, 16, v18
	v_perm_b32 v18, v19, v20, 0xc0c0004
	v_perm_b32 v19, v21, v23, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v20, s1, v207
	v_add_nc_u32_e32 v22, s1, v228
	v_add_nc_u32_e32 v23, s1, v238
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v132, v133, v134, 0xc0c0004
	v_lshl_or_b32 v26, v19, 16, v18
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v18, s1, v226
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v127, v127, v128, 0xc0c0004
	v_perm_b32 v128, v129, v130, 0xc0c0004
	v_lshl_or_b32 v155, v113, 16, v115
	v_lshl_or_b32 v140, v132, 16, v131
	ds_load_u8 v18, v18
	ds_load_u8 v20, v20
	ds_load_u8 v22, v22
	ds_load_u8 v31, v31
	ds_load_u8 v123, v123
	ds_load_u8 v122, v122
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:28
	scratch_load_b32 v19, off, off offset:32
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v139, v128, 16, v127
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v12, v13, v12, 0xc0c0004
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_perm_b32 v8, v9, v8, 0xc0c0004
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_perm_b32 v4, v5, v4, 0xc0c0004
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_lshl_or_b32 v11, v14, 16, v16
	v_lshl_or_b32 v10, v10, 16, v12
	v_lshl_or_b32 v9, v6, 16, v8
	ds_load_u8 v25, v25
	v_lshl_or_b32 v8, v2, 16, v4
	ds_load_u8 v24, v24
	ds_load_u8 v30, v30
	ds_load_u8 v23, v23
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v121, s1, v121
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v35, s1, v35
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v36, s1, v36
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v121, v121
	ds_load_u8 v35, v35
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v36, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v21, s1, v21
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v19, s1, v19
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v21, v21
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v19, s1, v208
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v20, s1, v229
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v21, s1, v227
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v22, v21, 0xc0c0004
	v_lshl_or_b32 v21, v19, 16, v18
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v18, s1, v233
	v_add_nc_u32_e32 v19, s1, v236
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v20, v22, 16, v20
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v22, s1, v232
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v18, v18
	ds_load_u8 v19, v19
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v36, s1, v36
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v121, v36, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v121, s1, v218
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v148, v36, 16, v35
	ds_load_u8 v121, v121
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v35, s1, v242
	v_add_nc_u32_e32 v36, s1, v243
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v35, v35
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v122, s1, v216
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v122, v122
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v36, s1, v220
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v123, s1, v246
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v147, v122, 16, v121
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v121, s1, v241
	v_add_nc_u32_e32 v122, s1, v247
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v123, v123
	ds_load_u8 v22, v22
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v121, v121
	ds_load_u8 v122, v122
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v19, s1, v214
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v121, v36, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v121, off, off         ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v146, v36, 16, v35
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v35, off, off offset:4 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v36, s1, v34
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v22, v19, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v22, s1, v240
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v36, v36
	v_lshl_or_b32 v19, v19, 16, v18
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v18, s1, v239
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v18, v18
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v121, s1, v121
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, s1, v35
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v121, v121
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v36, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v36, s1, v36
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v121, v36, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v121, s1, v221
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v145, v36, 16, v35
	ds_load_u8 v121, v121
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v35, s1, v248
	v_add_nc_u32_e32 v36, s1, v231
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v35, v35
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v36, s1, v223
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v121, v36, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v121, s1, v230
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v152, v36, 16, v35
	ds_load_u8 v121, v121
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v35, s1, v215
	v_add_nc_u32_e32 v36, s1, v213
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v35, v35
	ds_load_u8 v36, v36
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v122, s1, v225
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v122, v122
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v36, s1, v245
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v18, v22, v18, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v22, s1, v237
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v36, v36
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v122, 16, v121
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v121, s1, v244
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v23, s1, v188
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v121, v121
	v_lshl_or_b32 v18, v22, 16, v18
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v22, s1, v189
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v23, v23
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v121, v36, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v121, s1, v211
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v150, v36, 16, v35
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v35, s1, v210
	v_add_nc_u32_e32 v36, s1, v209
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v121, v121
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v23, s1, v191
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v35, v35
	ds_load_u8 v36, v36
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v36, s1, v212
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v24, s1, v185
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v36, v36
	ds_load_u8 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v25, s1, v187
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v30, v25, 0xc0c0004
	v_lshl_or_b32 v25, v23, 16, v22
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v22, s1, v252
	v_add_nc_u32_e32 v23, s1, v251
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v24, v30, 16, v24
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v30, s1, v253
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v22, v22
	ds_load_u8 v23, v23
	ds_load_u8 v30, v30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v23, s1, v254
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v23, v23
	v_perm_b32 v36, v121, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v36, 16, v35
	v_perm_b32 v35, v120, v119, 0xc0c0004
	v_perm_b32 v36, v118, v117, 0xc0c0004
	v_dual_mov_b32 v120, s11 :: v_dual_mov_b32 v119, s10
	v_dual_mov_b32 v118, s9 :: v_dual_mov_b32 v117, s8
	v_dual_mov_b32 v116, s7 :: v_dual_mov_b32 v115, s6
	v_dual_mov_b32 v114, s5 :: v_dual_mov_b32 v113, s4
	v_lshl_or_b32 v156, v36, 16, v35
	v_perm_b32 v35, v108, v107, 0xc0c0004
	v_perm_b32 v36, v106, v102, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v30, v23, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v30, s1, v222
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[121:128], v[145:148], v[137:140], v[113:120] neg_lo:[1,1,0]
	v_lshl_or_b32 v154, v36, 16, v35
	v_wmma_i32_16x16x16_iu8 v[129:136], v[149:152], v[137:140], v[113:120] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[18:21], v[26:29], v[121:128] neg_lo:[1,1,0]
	v_lshl_or_b32 v23, v23, 16, v22
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v22, s1, v224
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[137:144], v[145:148], v[153:156], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[149:152], v[153:156], v[113:120] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v154, v122
	v_cvt_f32_i32_e32 v147, v123
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[18:21], v[8:11], v[137:144] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v155, v124
	v_cvt_f32_i32_e32 v148, v125
	v_cvt_f32_i32_e32 v156, v126
	v_cvt_f32_i32_e32 v149, v127
	v_cvt_f32_i32_e32 v161, v128
	v_cvt_f32_i32_e32 v192, v121
	ds_load_u8 v22, v22
	ds_load_u8 v30, v30
	v_cvt_f32_i32_e32 v164, v137
	v_cvt_f32_i32_e32 v165, v138
	v_cvt_f32_i32_e32 v162, v139
	v_cvt_f32_i32_e32 v163, v140
	v_cvt_f32_i32_e32 v145, v141
	v_cvt_f32_i32_e32 v146, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v30, v22, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v30, s1, v250
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v30, v30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v22, v30, 16, v22
	v_wmma_i32_16x16x16_iu8 v[129:136], v[22:25], v[26:29], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[22:25], v[8:11], v[113:120] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v150, v129
	v_cvt_f32_i32_e32 v157, v130
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v151, v131
	v_cvt_f32_i32_e32 v158, v132
	v_cvt_f32_i32_e32 v152, v133
	v_cvt_f32_i32_e32 v159, v134
	v_cvt_f32_i32_e32 v153, v135
	v_cvt_f32_i32_e32 v160, v136
	v_cvt_f32_i32_e32 v141, v113
	v_cvt_f32_i32_e32 v142, v114
	v_cvt_f32_i32_e32 v139, v115
	v_cvt_f32_i32_e32 v140, v116
	v_cvt_f32_i32_e32 v137, v117
	v_cvt_f32_i32_e32 v138, v118
	v_cvt_f32_i32_e32 v135, v119
	v_cvt_f32_i32_e32 v136, v120
.LBB0_12:
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 27
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s30, s0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v165, off offset:340
	scratch_store_b32 off, v164, off offset:336
	scratch_store_b32 off, v163, off offset:324
	scratch_store_b32 off, v162, off offset:320
	scratch_store_b32 off, v161, off offset:316
	scratch_store_b32 off, v160, off offset:312
	scratch_store_b32 off, v159, off offset:308
	scratch_store_b32 off, v158, off offset:304
	scratch_store_b32 off, v157, off offset:300
	scratch_store_b32 off, v156, off offset:296
	scratch_store_b32 off, v155, off offset:292
	scratch_store_b32 off, v154, off offset:288
	scratch_store_b32 off, v153, off offset:284
	scratch_store_b32 off, v152, off offset:280
	scratch_store_b32 off, v151, off offset:276
	scratch_store_b32 off, v150, off offset:272
	scratch_store_b32 off, v149, off offset:268
	scratch_store_b32 off, v148, off offset:264
	scratch_store_b32 off, v147, off offset:260
	scratch_store_b32 off, v146, off offset:224
	scratch_store_b32 off, v145, off offset:220
	scratch_store_b32 off, v167, off offset:140
	scratch_store_b32 off, v192, off offset:136
	scratch_store_b32 off, v144, off offset:132
	scratch_store_b32 off, v143, off offset:128
	scratch_store_b32 off, v142, off offset:124
	scratch_store_b32 off, v141, off offset:120
	scratch_store_b32 off, v140, off offset:116
	scratch_store_b32 off, v139, off offset:112
	scratch_store_b32 off, v138, off offset:108
	scratch_store_b32 off, v137, off offset:104
	scratch_store_b32 off, v136, off offset:100
	scratch_store_b32 off, v135, off offset:96 ; 4-byte Folded Spill
	s_ashr_i32 s0, s0, 5
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s30, s14
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s45
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt lgkmcnt(27)
	v_add_lshl_u32 v2, v105, s0, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s4, -1, 0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v125, v185 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s35
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(25)
	v_and_b32_e32 v4, 32, v178
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v3, v104, s1, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt lgkmcnt(19)
	v_add_lshl_u32 v6, v103, s0, 1
	buffer_load_u16 v2, v2, s[12:15], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_and_b32_e32 v5, 28, v177
	v_add3_u32 v4, 0, v176, v4
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_mov_b32 s31, s15
	s_and_b32 s29, s29, 0xffff
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	v_add3_u32 v119, s33, s27, v0
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v235, v4, v5
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v3, v3, s[28:31], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt lgkmcnt(18)
	v_add_lshl_u32 v7, v119, s1, 1
	s_waitcnt lgkmcnt(4)
	v_mov_b32_e32 v112, 0
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v234, 0, v175
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v13, s48, v101
	v_cndmask_b32_e32 v5, 0x80000000, v7, vcc_lo
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v14, s48, v1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cndmask_b32_e64 v1, 0, 1, s3
	v_dual_mov_b32 v131, v191 :: v_dual_mov_b32 v130, v190
	v_dual_mov_b32 v129, v189 :: v_dual_mov_b32 v128, v188
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v1
	v_dual_mov_b32 v127, v187 :: v_dual_mov_b32 v126, v186
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v115, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	v_mov_b32_e32 v110, 0
	v_mov_b32_e32 v124, 0
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v16, 0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v2, off offset:388 ; 4-byte Folded Spill
	buffer_load_u16 v2, v4, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v235, v3 offset:34816
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v2, off offset:392 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v2, v5, s[28:31], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[21:24], v234 offset:34816
	ds_load_b128 v[9:12], v234 offset:34832
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[5:8], v234 offset:35328
	ds_load_b128 v[1:4], v234 offset:35344
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v235, v15 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	ds_load_u8_d16 v36, v13
	ds_load_u8_d16 v15, v13 offset:16
	ds_load_u8_d16 v134, v13 offset:688
	ds_load_u8_d16 v135, v13 offset:656
	ds_load_u8_d16 v165, v13 offset:768
	ds_load_u8_d16 v166, v13 offset:800
	ds_load_u8_d16 v171, v13 offset:832
	ds_load_u8_d16 v172, v13 offset:864
	ds_load_u8_d16 v138, v13 offset:880
	ds_load_u8_d16 v140, v13 offset:848
	ds_load_u8_d16 v142, v13 offset:816
	ds_load_u8_d16 v144, v13 offset:784
	ds_load_u8_d16 v173, v13 offset:896
	ds_load_u8_d16 v174, v13 offset:928
	ds_load_u8_d16 v179, v13 offset:960
	ds_load_u8_d16 v180, v13 offset:992
	ds_load_u8_d16 v146, v14
	ds_load_u8_d16 v148, v13 offset:976
	ds_load_u8_d16 v150, v13 offset:944
	ds_load_u8_d16 v152, v13 offset:912
	v_mov_b32_e32 v14, 0
	s_waitcnt lgkmcnt(18)
	scratch_store_b32 off, v15, off offset:412 ; 4-byte Folded Spill
	ds_load_u8_d16 v35, v13 offset:32
	ds_load_u8_d16 v132, v13 offset:48
	ds_load_u8_d16 v181, v13 offset:64
	ds_load_u8_d16 v182, v13 offset:96
	ds_load_u8_d16 v169, v13 offset:112
	ds_load_u8_d16 v133, v13 offset:80
	ds_load_u8_d16 v183, v13 offset:128
	ds_load_u8_d16 v184, v13 offset:160
	ds_load_u8_d16 v185, v13 offset:192
	ds_load_u8_d16 v186, v13 offset:224
	ds_load_u8_d16 v137, v13 offset:240
	ds_load_u8_d16 v139, v13 offset:208
	ds_load_u8_d16 v141, v13 offset:176
	ds_load_u8_d16 v143, v13 offset:144
	ds_load_u8_d16 v187, v13 offset:256
	ds_load_u8_d16 v188, v13 offset:288
	ds_load_u8_d16 v189, v13 offset:320
	ds_load_u8_d16 v190, v13 offset:352
	ds_load_u8_d16 v145, v13 offset:368
	ds_load_u8_d16 v147, v13 offset:336
	ds_load_u8_d16 v149, v13 offset:304
	ds_load_u8_d16 v151, v13 offset:272
	ds_load_u8_d16 v191, v13 offset:384
	ds_load_u8_d16 v192, v13 offset:416
	ds_load_u8_d16 v193, v13 offset:448
	ds_load_u8_d16 v194, v13 offset:480
	ds_load_u8_d16 v153, v13 offset:496
	ds_load_u8_d16 v154, v13 offset:464
	ds_load_u8_d16 v155, v13 offset:432
	ds_load_u8_d16 v156, v13 offset:400
	ds_load_u8_d16 v157, v13 offset:512
	ds_load_u8_d16 v158, v13 offset:544
	ds_load_u8_d16 v159, v13 offset:576
	ds_load_u8_d16 v160, v13 offset:608
	ds_load_u8_d16 v15, v13 offset:624
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v15, off offset:396 ; 4-byte Folded Spill
	ds_load_u8_d16 v15, v13 offset:592
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v15, off offset:400 ; 4-byte Folded Spill
	ds_load_u8_d16 v15, v13 offset:560
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v15, off offset:404 ; 4-byte Folded Spill
	ds_load_u8_d16 v15, v13 offset:528
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v15, off offset:408 ; 4-byte Folded Spill
	ds_load_u8_d16 v161, v13 offset:640
	ds_load_u8_d16 v162, v13 offset:672
	ds_load_u8_d16 v163, v13 offset:704
	ds_load_u8_d16 v164, v13 offset:736
	ds_load_u8_d16 v15, v13 offset:752
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v15, off offset:416 ; 4-byte Folded Spill
	ds_load_u8_d16 v15, v13 offset:720
	v_mov_b32_e32 v13, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v15, off offset:420 ; 4-byte Folded Spill
	v_mov_b32_e32 v15, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	v_perm_b32 v13, v191, v192, 0xc0c0004
	v_perm_b32 v14, v193, v194, 0xc0c0004
	v_perm_b32 v15, v187, v188, 0xc0c0004
	v_perm_b32 v16, v189, v190, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v117, v14, 16, v13
	v_perm_b32 v13, v183, v184, 0xc0c0004
	v_perm_b32 v14, v185, v186, 0xc0c0004
	v_lshl_or_b32 v116, v16, 16, v15
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	v_lshl_or_b32 v115, v14, 16, v13
	v_perm_b32 v13, v36, v35, 0xc0c0004
	v_perm_b32 v14, v181, v182, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v15, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v17, s47, v217
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v114, v14, 16, v13
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:20
	scratch_load_b32 v14, off, off offset:12
	v_add_nc_u32_e32 v16, s47, v219
	v_add_nc_u32_e32 v167, s47, v130
	v_add_nc_u32_e32 v168, s47, v255
	v_add_nc_u32_e32 v170, s47, v126
	v_add_nc_u32_e32 v136, s47, v238
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v118, v171, v172, 0xc0c0004
	ds_load_u8 v17, v17
	ds_load_u8 v16, v16
	ds_load_u8 v167, v167
	ds_load_u8 v168, v168
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v102, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v170, v170
	ds_load_u8 v136, v136
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v15, s47, v15
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v13, s47, v13
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v14, s47, v14
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v15, v15
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v14, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s47, v14
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v15, s47, v218
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v124, v14, 16, v13
	ds_load_u8 v15, v15
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v13, s47, v242
	v_add_nc_u32_e32 v14, s47, v243
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v16, s47, v216
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v14, s47, v220
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v17, s47, v246
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v123, v16, 16, v15
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v15, s47, v241
	v_add_nc_u32_e32 v16, s47, v247
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v17, v17
	ds_load_u8 v15, v15
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v15, off, off          ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v122, v14, 16, v13
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v13, off, off offset:4 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v14, s47, v34
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v14, v14
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v15, s47, v15
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s47, v13
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v15, v15
	ds_load_u8 v13, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v14, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s47, v14
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v15, s47, v221
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v121, v14, 16, v13
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v13, s47, v248
	v_add_nc_u32_e32 v14, s47, v231
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v15, v15
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v14, s47, v223
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v15, s47, v230
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v178, v14, 16, v13
	ds_load_u8 v15, v15
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v13, s47, v215
	v_add_nc_u32_e32 v14, s47, v213
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v16, s47, v225
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v14, s47, v245
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v16, 16, v15
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v15, s47, v244
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v16, v147, v145, 0xc0c0004
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v15, s47, v211
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v176, v14, 16, v13
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v13, s47, v210
	v_add_nc_u32_e32 v14, s47, v209
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v15, v15
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v14, s47, v212
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v15, v151, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v175, v14, 16, v13
	v_perm_b32 v13, v156, v155, 0xc0c0004
	v_perm_b32 v14, v154, v153, 0xc0c0004
	v_lshl_or_b32 v205, v16, 16, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v206, v14, 16, v13
	v_perm_b32 v13, v143, v141, 0xc0c0004
	v_perm_b32 v14, v139, v137, 0xc0c0004
	v_lshl_or_b32 v204, v14, 16, v13
	scratch_load_b32 v13, off, off offset:412 ; 4-byte Folded Reload
	v_perm_b32 v14, v133, v169, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v13, v13, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v203, v14, 16, v13
	v_dual_mov_b32 v20, s11 :: v_dual_mov_b32 v19, s10
	v_dual_mov_b32 v18, s9 :: v_dual_mov_b32 v17, s8
	v_dual_mov_b32 v16, s7 :: v_dual_mov_b32 v15, s6
	v_dual_mov_b32 v14, s5 :: v_dual_mov_b32 v13, s4
	v_wmma_i32_16x16x16_iu8 v[25:32], v[121:124], v[114:117], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[195:202], v[121:124], v[203:206], v[13:20] neg_lo:[1,1,0]
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v121, s47, v102
	scratch_load_b32 v102, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[106:113], v[175:178], v[114:117], v[13:20] neg_lo:[1,1,0]
	v_perm_b32 v114, v173, v174, 0xc0c0004
	v_perm_b32 v115, v179, v180, 0xc0c0004
	v_perm_b32 v116, v165, v166, 0xc0c0004
	ds_load_u8 v121, v121
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v122, s47, v207
	v_add_nc_u32_e32 v124, s47, v228
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v117, v115, 16, v114
	v_perm_b32 v114, v161, v162, 0xc0c0004
	v_perm_b32 v115, v163, v164, 0xc0c0004
	v_lshl_or_b32 v116, v118, 16, v116
	v_perm_b32 v118, v159, v160, 0xc0c0004
	ds_load_u8 v122, v122
	ds_load_u8 v124, v124
	v_lshl_or_b32 v115, v115, 16, v114
	v_perm_b32 v114, v157, v158, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[13:20], v[175:178], v[203:206], v[13:20] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v114, v118, 16, v114
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v118, s47, v226
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v118, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v121, v118, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v121, s47, v208
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v121, v121
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, s47, v102
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v123, v123
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v122, s47, v229
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v122, v122
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v123, s47, v227
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v123, v123
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	v_lshl_or_b32 v124, v121, 16, v118
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v118, s47, v233
	v_add_nc_u32_e32 v121, s47, v236
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v123, v123, 16, v122
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v122, s47, v232
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v118, v118
	ds_load_u8 v121, v121
	ds_load_u8 v122, v122
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v118, v121, v118, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v121, s47, v214
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v121, v121
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v122, v121, 16, v118
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v118, s47, v239
	v_add_nc_u32_e32 v121, s47, v240
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v118, v118
	ds_load_u8 v121, v121
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v121, v118, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v121, s47, v237
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v121, v121
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v136, v121, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v136, s47, v128
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v121, v121, 16, v118
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v118, s47, v129
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v136, v136
	v_wmma_i32_16x16x16_iu8 v[25:32], v[121:124], v[114:117], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v118, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v136, v118, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v136, s47, v131
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v167, v136, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v167, s47, v125
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v178, v136, 16, v118
	ds_load_u8 v167, v167
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v118, s47, v252
	v_add_nc_u32_e32 v136, s47, v251
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v118, v118
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v168, s47, v127
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v168, v168
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v118, v136, v118, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v136, s47, v254
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v168, v170, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v168, 16, v167
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v167, s47, v253
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v167, v167
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v167, v136, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v167, s47, v249
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v176, v136, 16, v118
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v118, s47, v224
	v_add_nc_u32_e32 v136, s47, v222
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v167, v167
	ds_load_u8 v118, v118
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v136, v118, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v136, s47, v250
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v167, v136, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v175, v136, 16, v118
	v_perm_b32 v118, v140, v138, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[106:113], v[175:178], v[114:117], v[106:113] neg_lo:[1,1,0]
	v_perm_b32 v114, v152, v150, 0xc0c0004
	v_perm_b32 v115, v148, v146, 0xc0c0004
	v_perm_b32 v116, v144, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v203, v107
	v_cvt_f32_i32_e32 v168, v110
	v_lshl_or_b32 v117, v115, 16, v114
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v102, off, off offset:416
	scratch_load_b32 v115, off, off offset:420
	v_perm_b32 v114, v135, v134, 0xc0c0004
	v_lshl_or_b32 v116, v118, 16, v116
	v_cvt_f32_i32_e32 v170, v112
	v_cvt_f32_i32_e32 v110, v27
	v_cvt_f32_i32_e32 v112, v28
	v_cvt_f32_i32_e32 v107, v29
	s_waitcnt vmcnt(0)
	v_perm_b32 v115, v115, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v115, v115, 16, v114
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v102, off, off offset:404
	scratch_load_b32 v114, off, off offset:408
	s_waitcnt vmcnt(0)
	v_perm_b32 v114, v114, v102, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v102, off, off offset:396
	scratch_load_b32 v118, off, off offset:400
	s_waitcnt vmcnt(0)
	v_perm_b32 v118, v118, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v114, v118, 16, v114
	v_wmma_i32_16x16x16_iu8 v[195:202], v[121:124], v[114:117], v[195:202] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[175:178], v[114:117], v[13:20] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v175, v106
	v_cvt_f32_i32_e32 v178, v108
	v_cvt_f32_i32_e32 v106, v109
	v_cvt_f32_i32_e32 v176, v111
	v_cvt_f32_i32_e32 v177, v113
	v_cvt_f32_i32_e32 v117, v195
	v_cvt_f32_i32_e32 v118, v196
	v_cvt_f32_i32_e32 v136, v197
	v_cvt_f32_i32_e32 v167, v198
	v_cvt_f32_i32_e32 v123, v199
	v_cvt_f32_i32_e32 v124, v200
	v_cvt_f32_i32_e32 v122, v201
	v_cvt_f32_i32_e32 v121, v202
	v_cvt_f32_i32_e32 v116, v13
	v_cvt_f32_i32_e32 v120, v14
	v_cvt_f32_i32_e32 v102, v15
	v_cvt_f32_i32_e32 v115, v16
	v_cvt_f32_i32_e32 v15, v17
	v_cvt_f32_i32_e32 v16, v18
	v_cvt_f32_i32_e32 v14, v19
	v_cvt_f32_i32_e32 v13, v20
	v_cvt_f32_i32_e32 v109, v30
	v_cvt_f32_i32_e32 v108, v31
	v_cvt_f32_i32_e32 v111, v32
	v_cvt_f32_i32_e32 v113, v25
	v_cvt_f32_i32_e32 v114, v26
.LBB0_14:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x14                           ; 84-byte Folded Spill
	scratch_store_b32 off, v203, off offset:384
	scratch_store_b32 off, v178, off offset:380
	scratch_store_b32 off, v177, off offset:376
	scratch_store_b32 off, v176, off offset:372
	scratch_store_b32 off, v175, off offset:368
	scratch_store_b32 off, v170, off offset:364
	scratch_store_b32 off, v168, off offset:360
	scratch_store_b32 off, v167, off offset:356
	scratch_store_b32 off, v136, off offset:352
	scratch_store_b32 off, v124, off offset:348
	scratch_store_b32 off, v123, off offset:344
	scratch_store_b32 off, v122, off offset:332
	scratch_store_b32 off, v121, off offset:328
	scratch_store_b32 off, v120, off offset:256
	scratch_store_b32 off, v116, off offset:252
	scratch_store_b32 off, v115, off offset:248
	scratch_store_b32 off, v102, off offset:244
	scratch_store_b32 off, v16, off offset:240
	scratch_store_b32 off, v15, off offset:236
	scratch_store_b32 off, v14, off offset:232
	scratch_store_b32 off, v13, off offset:228
	ds_load_b128 v[29:32], v234 offset:34816
	ds_load_b128 v[25:28], v234 offset:34832
	ds_load_b128 v[17:20], v234 offset:35328
	ds_load_b128 v[13:16], v234 offset:35344
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v115, 0
	v_mov_b32_e32 v124, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v167, v232
	v_mov_b32_e32 v232, v245
	scratch_store_b32 off, v115, off offset:40 ; 4-byte Folded Spill
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v120, v244
	v_dual_mov_b32 v175, v209 :: v_dual_mov_b32 v102, v215
	v_dual_mov_b32 v177, v208 :: v_dual_mov_b32 v178, v210
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v176, v207
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	scratch_store_b32 off, v115, off offset:44 ; 4-byte Folded Spill
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	scratch_store_b32 off, v168, off offset:36 ; 4-byte Folded Spill
	v_mov_b32_e32 v168, 0
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v115, s46, v250
	v_add_nc_u32_e32 v208, s46, v221
	v_add_nc_u32_e32 v250, s46, v120
	v_add_nc_u32_e32 v221, s46, v102
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v33, off, off offset:32
	scratch_load_b32 v120, off, off offset:16
	scratch_load_b32 v102, off, off offset:20
	v_add_nc_u32_e32 v123, s46, v254
	v_add_nc_u32_e32 v210, s46, v231
	v_add_nc_u32_e32 v254, s46, v225
	v_add_nc_u32_e32 v225, s46, v226
	v_add_nc_u32_e32 v231, s46, v214
	v_add_nc_u32_e32 v124, s46, v253
	v_add_nc_u32_e32 v253, s46, v230
	v_add_nc_u32_e32 v122, s46, v222
	v_add_nc_u32_e32 v222, s46, v213
	v_add_nc_u32_e32 v206, s46, v175
	v_add_nc_u32_e32 v245, s46, v34
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v34, v191, v192, 0xc0c0004
	v_perm_b32 v175, v193, v194, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v205, s46, v178
	v_add_nc_u32_e32 v207, s46, v223
	v_add_nc_u32_e32 v223, s46, v177
	v_add_nc_u32_e32 v121, s46, v224
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v178, v175, 16, v34
	v_perm_b32 v34, v187, v188, 0xc0c0004
	v_perm_b32 v175, v189, v190, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v224, s46, v176
	v_add_nc_u32_e32 v218, s46, v218
	v_add_nc_u32_e32 v219, s46, v219
	v_add_nc_u32_e32 v216, s46, v216
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v177, v175, 16, v34
	v_perm_b32 v34, v183, v184, 0xc0c0004
	v_perm_b32 v175, v185, v186, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v217, s46, v217
	v_add_nc_u32_e32 v242, s46, v242
	v_add_nc_u32_e32 v243, s46, v243
	v_add_nc_u32_e32 v220, s46, v220
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v176, v175, 16, v34
	v_perm_b32 v34, v36, v35, 0xc0c0004
	v_perm_b32 v35, v181, v182, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v241, s46, v241
	v_add_nc_u32_e32 v229, s46, v229
	v_add_nc_u32_e32 v227, s46, v227
	v_add_nc_u32_e32 v228, s46, v228
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v175, v35, 16, v34
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v233, s46, v233
	v_add_nc_u32_e32 v236, s46, v236
	v_add_nc_u32_e32 v116, s46, v249
	v_add_nc_u32_e32 v249, s46, v232
	v_add_nc_u32_e32 v232, s46, v167
	v_add_nc_u32_e32 v239, s46, v239
	v_add_nc_u32_e32 v240, s46, v240
	v_add_nc_u32_e32 v237, s46, v237
	v_add_nc_u32_e32 v238, s46, v238
	v_add_nc_u32_e32 v209, s46, v248
	v_add_nc_u32_e32 v248, s46, v247
	v_add_nc_u32_e32 v170, s46, v251
	v_add_nc_u32_e32 v251, s46, v246
	v_add_nc_u32_e32 v203, s46, v212
	v_add_nc_u32_e32 v204, s46, v211
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v201, s46, v129
	v_add_nc_u32_e32 v202, s46, v128
	v_add_nc_u32_e32 v199, s46, v131
	v_add_nc_u32_e32 v200, s46, v130
	v_add_nc_u32_e32 v197, s46, v125
	v_add_nc_u32_e32 v198, s46, v255
	v_add_nc_u32_e32 v195, s46, v127
	v_add_nc_u32_e32 v196, s46, v126
	v_add_nc_u32_e32 v136, s46, v252
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v115, v115
	ds_load_u8 v116, v116
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v226, s46, v33
	scratch_load_b32 v33, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v214, s46, v102
	scratch_load_b32 v102, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v230, s46, v33
	scratch_load_b32 v33, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v215, s46, v102
	scratch_load_b32 v102, off, off offset:8 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v213, s46, v120
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v34, v214
	ds_load_u8 v35, v215
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v120, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v33, s46, v33
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v33, v33
	ds_load_u8 v35, v213
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v244, s46, v102
	scratch_load_b32 v102, off, off         ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v120, s46, v120
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v33, 16, v34
	ds_load_u8 v33, v218
	ds_load_u8 v34, v219
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v216
	ds_load_u8 v35, v217
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v34, 16, v33
	ds_load_u8 v33, v242
	ds_load_u8 v34, v243
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v220
	ds_load_u8 v181, v241
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v181, v34, 0xc0c0004
	v_mov_b32_e32 v188, s11
	v_dual_mov_b32 v186, s9 :: v_dual_mov_b32 v185, s8
	v_mov_b32_e32 v187, s10
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v34, v34, 16, v33
	v_dual_mov_b32 v182, s5 :: v_dual_mov_b32 v181, s4
	v_dual_mov_b32 v184, s7 :: v_dual_mov_b32 v183, s6
	ds_load_u8 v33, v120
	ds_load_u8 v120, v245
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v120, v33, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v102, s46, v102
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v120, v244
	ds_load_u8 v102, v102
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v102, v120, 0xc0c0004
	v_perm_b32 v120, v179, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v33, v102, 16, v33
	v_perm_b32 v102, v173, v174, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[213:220], v[33:36], v[175:178], v[181:188] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v174, v120, 16, v102
	v_perm_b32 v102, v165, v166, 0xc0c0004
	v_perm_b32 v120, v171, v172, 0xc0c0004
	v_lshl_or_b32 v173, v120, 16, v102
	v_perm_b32 v102, v161, v162, 0xc0c0004
	v_perm_b32 v120, v163, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v172, v120, 16, v102
	v_perm_b32 v102, v157, v158, 0xc0c0004
	v_perm_b32 v120, v159, v160, 0xc0c0004
	v_lshl_or_b32 v171, v120, 16, v102
	ds_load_u8 v102, v225
	ds_load_u8 v120, v226
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v120, v102, 0xc0c0004
	ds_load_u8 v120, v223
	ds_load_u8 v157, v224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v157, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v192, v120, 16, v102
	ds_load_u8 v102, v229
	ds_load_u8 v120, v230
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v120, v102, 0xc0c0004
	ds_load_u8 v120, v227
	ds_load_u8 v157, v228
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v157, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v191, v120, 16, v102
	ds_load_u8 v102, v233
	ds_load_u8 v120, v236
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v120, v102, 0xc0c0004
	ds_load_u8 v120, v231
	ds_load_u8 v157, v232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v157, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v190, v120, 16, v102
	ds_load_u8 v102, v239
	ds_load_u8 v120, v240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v120, v102, 0xc0c0004
	ds_load_u8 v120, v237
	ds_load_u8 v157, v238
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v157, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v189, v120, 16, v102
	ds_load_u8 v102, v209
	ds_load_u8 v120, v210
	v_wmma_i32_16x16x16_iu8 v[213:220], v[189:192], v[171:174], v[213:220] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v244, v216
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v210, v220
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v120, v102, 0xc0c0004
	ds_load_u8 v120, v207
	ds_load_u8 v157, v208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v157, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v209, v120, 16, v102
	ds_load_u8 v102, v253
	ds_load_u8 v120, v248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v120, v102, 0xc0c0004
	ds_load_u8 v120, v254
	ds_load_u8 v157, v251
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v157, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v208, v120, 16, v102
	ds_load_u8 v102, v221
	ds_load_u8 v120, v222
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v120, v102, 0xc0c0004
	ds_load_u8 v120, v249
	ds_load_u8 v157, v250
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v157, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v207, v120, 16, v102
	ds_load_u8 v102, v205
	ds_load_u8 v120, v206
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v120, v102, 0xc0c0004
	ds_load_u8 v120, v203
	ds_load_u8 v157, v204
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v157, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v120, 16, v102
	ds_load_u8 v102, v201
	ds_load_u8 v120, v202
	v_cvt_f32_i32_e32 v202, v219
	v_wmma_i32_16x16x16_iu8 v[157:164], v[206:209], v[175:178], v[181:188] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v120, v102, 0xc0c0004
	ds_load_u8 v120, v199
	ds_load_u8 v165, v200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v165, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v199, v120, 16, v102
	ds_load_u8 v102, v197
	ds_load_u8 v120, v198
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v120, v102, 0xc0c0004
	ds_load_u8 v120, v195
	ds_load_u8 v165, v196
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v165, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v198, v120, 16, v102
	ds_load_u8 v102, v136
	ds_load_u8 v120, v170
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v120, v102, 0xc0c0004
	ds_load_u8 v120, v123
	ds_load_u8 v123, v124
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v123, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v197, v120, 16, v102
	ds_load_u8 v102, v121
	ds_load_u8 v120, v122
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v120, v102, 0xc0c0004
	v_lshl_or_b32 v196, v115, 16, v102
	v_perm_b32 v102, v156, v155, 0xc0c0004
	v_perm_b32 v115, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[157:164], v[196:199], v[171:174], v[157:164] neg_lo:[1,1,0]
	v_lshl_or_b32 v124, v115, 16, v102
	v_perm_b32 v102, v151, v149, 0xc0c0004
	v_perm_b32 v115, v147, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v203, v157
	v_cvt_f32_i32_e32 v245, v158
	v_cvt_f32_i32_e32 v195, v161
	v_cvt_f32_i32_e32 v204, v162
	v_lshl_or_b32 v123, v115, 16, v102
	v_perm_b32 v102, v143, v141, 0xc0c0004
	v_perm_b32 v115, v139, v137, 0xc0c0004
	v_cvt_f32_i32_e32 v205, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v115, 16, v102
	scratch_load_b32 v102, off, off offset:412 ; 4-byte Folded Reload
	v_perm_b32 v115, v133, v169, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v102, v102, v132, 0xc0c0004
	v_lshl_or_b32 v121, v115, 16, v102
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[171:178], v[33:36], v[121:124], v[181:188] neg_lo:[1,1,0]
	v_perm_b32 v33, v152, v150, 0xc0c0004
	v_perm_b32 v34, v148, v146, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[181:188], v[206:209], v[121:124], v[181:188] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v209, v214
	v_cvt_f32_i32_e32 v207, v215
	v_cvt_f32_i32_e32 v206, v218
	v_lshl_or_b32 v36, v34, 16, v33
	v_perm_b32 v33, v144, v142, 0xc0c0004
	v_perm_b32 v34, v140, v138, 0xc0c0004
	v_cvt_f32_i32_e32 v208, v159
	v_cvt_f32_i32_e32 v215, v160
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v35, v34, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:416
	scratch_load_b32 v102, off, off offset:420
	v_perm_b32 v33, v135, v134, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v34, v102, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:404
	scratch_load_b32 v102, off, off offset:408
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v102, v33, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v102, off, off offset:396
	scratch_load_b32 v115, off, off offset:400
	s_waitcnt vmcnt(0)
	v_perm_b32 v102, v115, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v102, 16, v33
	v_wmma_i32_16x16x16_iu8 v[181:188], v[196:199], v[33:36], v[181:188] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[171:178], v[189:192], v[33:36], v[171:178] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v33, v213
	v_cvt_f32_i32_e32 v199, v217
	v_cvt_f32_i32_e32 v198, v163
	v_cvt_f32_i32_e32 v34, v185
	v_cvt_f32_i32_e32 v196, v171
	v_cvt_f32_i32_e32 v200, v172
	v_cvt_f32_i32_e32 v197, v173
	v_cvt_f32_i32_e32 v201, v174
	scratch_store_b32 off, v34, off offset:40 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v34, v186
	v_cvt_f32_i32_e32 v170, v175
	v_cvt_f32_i32_e32 v136, v176
	v_cvt_f32_i32_e32 v123, v177
	v_cvt_f32_i32_e32 v124, v178
	v_cvt_f32_i32_e32 v121, v181
	v_cvt_f32_i32_e32 v122, v182
	v_cvt_f32_i32_e32 v115, v183
	v_cvt_f32_i32_e32 v116, v184
	scratch_store_b32 off, v34, off offset:44 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v34, v187
	v_cvt_f32_i32_e32 v168, v188
	scratch_store_b32 off, v34, off offset:36 ; 4-byte Folded Spill
.LBB0_16:
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s44, 31
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s30, s14
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_lshr_b32 s0, s0, 27
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s31, s15
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_add_i32 s0, s44, s0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s34, s34, s27
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s0, 5
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s35
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s45
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v34, v105, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v35, v104, s1, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s4, -1, 0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s4
	v_dual_mov_b32 v211, v168 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	buffer_load_u16 v36, v35, s[28:31], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v35, v103, s0, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v103.l, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v102, 0x80000000, v35, vcc_lo
	s_clause 0x1
	buffer_load_u16 v35, v34, s[12:15], 0 offen
	buffer_load_u16 v34, v102, s[12:15], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v102, v119, s1, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v120.h, v103.l
	v_mov_b16_e32 v119.h, v103.l
	v_mov_b16_e32 v105.h, v103.l
	v_mov_b16_e32 v125.h, v103.l
	v_mov_b16_e32 v126.h, v103.l
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v235, v36 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v36, off, off offset:392
	scratch_load_b32 v128, off, off offset:340
	scratch_load_b32 v129, off, off offset:336
	scratch_load_b32 v132, off, off offset:324
	scratch_load_b32 v133, off, off offset:320
	scratch_load_b32 v149, off, off offset:316
	scratch_load_b32 v157, off, off offset:304
	scratch_load_b32 v161, off, off offset:308
	scratch_load_b32 v165, off, off offset:312
	scratch_load_b32 v130, off, off offset:216
	scratch_load_b32 v142, off, off offset:260
	scratch_load_b32 v146, off, off offset:264
	scratch_load_b32 v150, off, off offset:268
	scratch_load_b32 v131, off, off offset:212
	scratch_load_b32 v134, off, off offset:208
	scratch_load_b32 v135, off, off offset:204
	scratch_load_b32 v139, off, off offset:200
	scratch_load_b32 v137, off, off offset:288
	scratch_load_b32 v141, off, off offset:292
	scratch_load_b32 v145, off, off offset:296
	scratch_load_b32 v153, off, off offset:300
	scratch_load_b32 v154, off, off offset:272
	scratch_load_b32 v158, off, off offset:276
	scratch_load_b32 v162, off, off offset:280
	scratch_load_b32 v166, off, off offset:284
	scratch_load_b32 v140, off, off offset:196
	scratch_load_b32 v143, off, off offset:192
	scratch_load_b32 v144, off, off offset:184
	scratch_load_b32 v151, off, off offset:188
	scratch_load_b32 v147, off, off offset:180
	scratch_load_b32 v148, off, off offset:172
	scratch_load_b32 v152, off, off offset:176
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v159, off, off offset:168
	scratch_load_b32 v138, off, off offset:136
	scratch_load_b32 v155, off, off offset:160
	scratch_load_b32 v167, off, off offset:164
	scratch_load_b32 v156, off, off offset:144
	scratch_load_b32 v160, off, off offset:156
	scratch_load_b32 v163, off, off offset:152
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(38)
	v_mov_b16_e32 v103.h, v36.l
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v36, 0xf0, v0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(34)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v102, 0x80000000, v102 :: v_dual_mul_f32 v133, v133, v103
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v104, 1, v36
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	scratch_load_b32 v36, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v129, v129, v103
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v133, v133, v31, v97
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(26)
	v_mul_f32_e32 v131, v131, v103
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v129, v129, v29, v99
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v127, v102, s[28:31], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v97, v97, v133, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v102, s27, v101
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v131, v131, v21, v94
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v99, v99, v129, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v101, s34, s33, v104
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v104.h, v103.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v129, v94, v131, s2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v36.h, v36.l
	v_mov_b16_e32 v36.l, v103.l
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v128, v128, v103
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v130, v130, v103
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v132, v132, v103
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v134, v134, v103 :: v_dual_mul_f32 v145, v145, v36
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v137, v137, v36
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v140, v140, v36
	v_mul_f32_e32 v139, v139, v36
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v141, v141, v36
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v128, v128, v30, v100
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v130, v130, v22, v95
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v30, v137, v30, v96
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v21, v140, v21, v86
	v_fma_f32 v22, v139, v22, v87
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v100, v100, v128, s2
	v_cndmask_b32_e64 v128, v95, v130, s2
	v_cndmask_b32_e64 v130, v96, v30, s2
	v_cndmask_b32_e64 v30, v86, v21, s2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v21, 16, v35
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v169, v167, v36
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v167, off, off offset:148
	scratch_load_b32 v164, off, off offset:140
	v_dual_mul_f32 v135, v135, v103 :: v_dual_mul_f32 v138, v138, v36
	v_mul_f32_e32 v143, v143, v36
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v132, v132, v32, v98
	v_fma_f32 v32, v141, v32, v93
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v149, v149, v36
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v29, v138, v29, v39
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v157, v157, v36
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v98, v98, v132, s2
	v_cndmask_b32_e64 v132, v93, v32, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v137, v145, v26, v89
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v131, v39, v29, s2
	v_cndmask_b32_e64 v29, v87, v22, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v22, off, off offset:384 ; 4-byte Folded Reload
	v_mul_f32_e32 v160, v160, v36
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v141, v149, v28, v85
	v_fma_f32 v149, v157, v20, v77
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v142, v142, v36
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v144, v144, v36
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v146, v146, v36
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v147, v147, v36
	v_mul_f32_e32 v148, v148, v36
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v150, v150, v36
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v151, v151, v36
	v_mul_f32_e32 v152, v152, v36
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v153, v153, v36
	v_dual_mul_f32 v154, v154, v36 :: v_dual_mul_f32 v87, v111, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v155, v155, v36
	v_dual_mul_f32 v156, v156, v36 :: v_dual_mul_f32 v111, v202, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v158, v158, v36
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v159, v159, v36
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v161, v161, v36 :: v_dual_mul_f32 v86, v107, v21
	v_mul_f32_e32 v162, v162, v36
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v163, v163, v36
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v166, v166, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v89, v137, s2
	v_cndmask_b32_e64 v137, v77, v149, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v134, v134, v24, v91
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v145, v153, v18, v81
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v135, v135, v23, v90
	v_fma_f32 v140, v147, v10, v79
	v_fma_f32 v147, v156, v5, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v91, v91, v134, s2
	v_cndmask_b32_e64 v134, v81, v145, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v24, v143, v24, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v79, v140, s2
	v_cndmask_b32_e64 v81, v46, v147, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v46, v109, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v109, v199, v21
	v_mul_f32_e32 v147, v203, v21
	v_mul_f32_e32 v107, v206, v21
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v143, v152, v11, v50
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v153, v161, v14, v49
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v95, v106, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v85, v85, v141, s2
	v_cndmask_b32_e64 v90, v90, v135, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v164, v164, v36 :: v_dual_mul_f32 v93, v22, v21
	scratch_load_b32 v22, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v165, v165, v36 :: v_dual_mul_f32 v94, v22, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v22, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v157, v165, v16, v45
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v96, v22, v21
	scratch_load_b32 v22, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v36, v167, v36 :: v_dual_mul_f32 v149, v22, v21
	scratch_load_b32 v22, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v36, v36, v3, v37
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v145, v37, v36, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v37, v114, v21
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v23, v144, v23, v82
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v114, v33, v21
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v144, v151, v12, v75
	v_fma_f32 v151, v160, v7, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v82, v23, s2
	v_cndmask_b32_e64 v82, v50, v143, s2
	v_cndmask_b32_e64 v79, v75, v144, s2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v75, 16, v34
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v31, v142, v31, v92
	v_fma_f32 v142, v150, v27, v84
	v_fma_f32 v150, v158, v19, v76
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[33:36], v234 offset:35328
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v106, v215, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v133, v92, v31, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v92, v108, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v76, v150, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v152, v159, v8, v44
	v_fma_f32 v159, v169, v4, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v84, v84, v142, s2
	v_cndmask_b32_e64 v142, v45, v157, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v45, v110, v21
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v139, v148, v9, v78
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v144, v38, v159, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v38, v113, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v113, v209, v21
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v138, v146, v25, v88
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v148, v155, v6, v47
	v_fma_f32 v155, v164, v1, v40
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v146, v154, v17, v80
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v83, v24, s2
	v_cndmask_b32_e64 v88, v88, v138, s2
	v_cndmask_b32_e64 v138, v49, v153, s2
	v_cndmask_b32_e64 v83, v42, v151, s2
	v_cndmask_b32_e64 v141, v40, v155, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v108, v210, v21
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v156, v163, v2, v41
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v151, v204, v21
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v154, v162, v13, v48
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v155, v205, v21
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v158, v166, v15, v43
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v78, v139, s2
	v_cndmask_b32_e64 v135, v80, v146, s2
	v_cndmask_b32_e64 v80, v47, v148, s2
	v_cndmask_b32_e64 v77, v44, v152, s2
	v_cndmask_b32_e64 v139, v48, v154, s2
	v_cndmask_b32_e64 v140, v41, v156, s2
	v_cndmask_b32_e64 v143, v43, v158, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[47:50], v234 offset:34816
	ds_load_b128 v[41:44], v234 offset:34832
	v_mul_f32_e32 v40, v112, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v110, v244, v21
	v_mul_f32_e32 v112, v207, v21
	v_mul_f32_e32 v146, v245, v21
	v_dual_mul_f32 v148, v208, v21 :: v_dual_mul_f32 v159, v201, v75
	v_mul_f32_e32 v152, v195, v21
	v_mul_f32_e32 v156, v198, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v118, v118, v75
	v_mul_f32_e32 v117, v117, v75
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v157, v200, v75
	v_mul_f32_e32 v158, v196, v75
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v45, v45, v49, v32
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v46, v46, v42, v39
	v_fma_f32 v38, v38, v47, v30
	v_fma_f32 v37, v37, v48, v29
	v_fma_f32 v117, v117, v47, v129
	v_fma_f32 v118, v118, v48, v128
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v167, v32, v45, s3
	v_cndmask_b32_e64 v168, v39, v46, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v40, v40, v50, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v165, v30, v38, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v86, v86, v41, v78
	v_fma_f32 v92, v92, v43, v82
	v_fma_f32 v87, v87, v44, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v166, v31, v40, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v169, v78, v86, s3
	v_cndmask_b32_e64 v172, v82, v92, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v171, v79, v87, s3
	v_cndmask_b32_e64 v78, v129, v117, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v150, v22, v21
	scratch_load_b32 v22, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v153, v22, v21
	scratch_load_b32 v22, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v154, v22, v21
	ds_load_b128 v[21:24], v234 offset:35344
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v162, v93, v34, v80
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_lshlrev_b32_e32 v93, 16, v127
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v161, v94, v33, v81
	v_fma_f32 v163, v96, v35, v83
	v_fma_f32 v164, v95, v36, v77
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_store_b32 v235, v93 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[93:96], v234 offset:34816
	ds_load_b128 v[45:48], v234 offset:34832
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v127, v29, v37, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[37:40], v234 offset:35328
	ds_load_b128 v[29:32], v234 offset:35344
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v92, v80, v162, s3
	v_cndmask_b32_e64 v87, v81, v161, s3
	v_cndmask_b32_e64 v80, v128, v118, s3
	v_cndmask_b32_e64 v86, v77, v164, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v153, v153, v24, v144
	v_fma_f32 v150, v150, v21, v141
	v_fma_f32 v149, v149, v22, v140
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v83, v163, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v81, v144, v153, s3
	v_cndmask_b32_e64 v77, v141, v150, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v82, v140, v149, s3
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(3)
	v_fma_f32 v114, v114, v93, v131
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v108, v108, v48, v85
	v_fma_f32 v113, v113, v94, v130
	v_fma_f32 v110, v110, v96, v132
	v_fma_f32 v109, v109, v45, v88
	v_fma_f32 v93, v158, v93, v99
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v108, v85, v108, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v160, v197, v75
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v112, v112, v95, v133
	v_fma_f32 v107, v107, v46, v89
	v_fma_f32 v111, v111, v47, v84
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v113, v130, v113, s3
	v_cndmask_b32_e64 v110, v132, v110, s3
	v_cndmask_b32_e64 v109, v88, v109, s3
	v_cndmask_b32_e64 v88, v99, v93, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v99, 0xbfb8aa3b, v108
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v95, v160, v95, v97
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v107, v89, v107, s3
	v_cndmask_b32_e64 v111, v84, v111, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v93, 0xbfb8aa3b, v113
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v117, v147, v37, v135
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v84, v97, v95, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v95, 0xbfb8aa3b, v110
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v128, v148, v39, v76
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v144, v155, v32, v142
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v97, 0xbfb8aa3b, v107
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v93
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v95
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v118, v146, v38, v134
	v_fma_f32 v106, v106, v40, v137
	v_fma_f32 v129, v152, v29, v139
	v_fma_f32 v140, v151, v30, v138
	v_fma_f32 v141, v156, v31, v143
	v_fma_f32 v94, v157, v94, v100
	v_fma_f32 v96, v159, v96, v98
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v114, v131, v114, s3
	v_cndmask_b32_e64 v112, v133, v112, s3
	v_cndmask_b32_e64 v117, v135, v117, s3
	v_cndmask_b32_e64 v128, v76, v128, s3
	v_cndmask_b32_e64 v131, v142, v144, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v93, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v95, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v97
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v118, v134, v118, s3
	v_cndmask_b32_e64 v106, v137, v106, s3
	v_cndmask_b32_e64 v130, v138, v140, s3
	v_cndmask_b32_e64 v129, v139, v129, s3
	v_cndmask_b32_e64 v132, v143, v141, s3
	v_cndmask_b32_e64 v89, v100, v94, s3
	v_cndmask_b32_e64 v85, v98, v96, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v76, 0xbfb8aa3b, v114 :: v_dual_mul_f32 v137, 0xbfb8aa3b, v129
	v_dual_mul_f32 v94, 0xbfb8aa3b, v112 :: v_dual_mul_f32 v133, 0xbfb8aa3b, v118
	v_dual_mul_f32 v96, 0xbfb8aa3b, v109 :: v_dual_mul_f32 v135, 0xbfb8aa3b, v106
	v_dual_mul_f32 v98, 0xbfb8aa3b, v111 :: v_dual_mul_f32 v139, 0xbfb8aa3b, v132
	v_dual_mul_f32 v100, 0xbfb8aa3b, v117 :: v_dual_mul_f32 v141, 0xbfb8aa3b, v88
	v_dual_mul_f32 v134, 0xbfb8aa3b, v128 :: v_dual_fmac_f32 v93, 0xbfb8aa3b, v113
	v_dual_mul_f32 v140, 0xbfb8aa3b, v131 :: v_dual_fmac_f32 v95, 0xbfb8aa3b, v110
	v_cndmask_b32_e64 v97, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v99
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v154, v154, v23, v145
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v138, 0xbfb8aa3b, v130 :: v_dual_mul_f32 v143, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v142, 0xbfb8aa3b, v89 :: v_dual_fmac_f32 v97, 0xbfb8aa3b, v107
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v76
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v94
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v96
	v_cndmask_b32_e64 v99, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v98
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v100
	v_exp_f32_e32 v93, v93
	v_exp_f32_e32 v95, v95
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v145, v154, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v144, 0xbfb8aa3b, v85 :: v_dual_fmac_f32 v99, 0xbfb8aa3b, v108
	v_cndmask_b32_e64 v76, 0, 0x42800000, s0
	v_cndmask_b32_e64 v94, 0, 0x42800000, s4
	v_cndmask_b32_e64 v96, 0, 0x42800000, s6
	v_cndmask_b32_e64 v98, 0, 0x42800000, s8
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v133
	v_cndmask_b32_e64 v100, 0, 0x42800000, s10
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v135
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v134
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v138
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v137
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v140
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v139
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v142
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v141
	v_cndmask_b32_e64 v145, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v147, 0, 0xffffffc0, s1
	v_exp_f32_e32 v97, v97
	v_cndmask_b32_e64 v133, 0, 0x42800000, s9
	v_cndmask_b32_e64 v135, 0, 0x42800000, s11
	v_cndmask_b32_e64 v134, 0, 0x42800000, s12
	v_cndmask_b32_e64 v138, 0, 0x42800000, s13
	v_cndmask_b32_e64 v137, 0, 0x42800000, s14
	v_cndmask_b32_e64 v140, 0, 0x42800000, s15
	v_cndmask_b32_e64 v139, 0, 0x42800000, s16
	v_cndmask_b32_e64 v142, 0, 0x42800000, s17
	v_cndmask_b32_e64 v141, 0, 0x42800000, s18
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v144
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v143
	v_dual_fmac_f32 v76, 0xbfb8aa3b, v114 :: v_dual_fmac_f32 v137, 0xbfb8aa3b, v129
	v_dual_fmac_f32 v94, 0xbfb8aa3b, v112 :: v_dual_fmac_f32 v133, 0xbfb8aa3b, v118
	v_cndmask_b32_e64 v149, 0, 0xffffffc0, s5
	v_dual_fmac_f32 v96, 0xbfb8aa3b, v109 :: v_dual_fmac_f32 v135, 0xbfb8aa3b, v106
	v_dual_fmac_f32 v98, 0xbfb8aa3b, v111 :: v_dual_fmac_f32 v139, 0xbfb8aa3b, v132
	v_dual_fmac_f32 v100, 0xbfb8aa3b, v117 :: v_dual_fmac_f32 v141, 0xbfb8aa3b, v88
	v_exp_f32_e32 v99, v99
	v_ldexp_f32 v93, v93, v145
	v_ldexp_f32 v95, v95, v147
	v_cndmask_b32_e64 v144, 0, 0x42800000, s19
	v_cndmask_b32_e64 v143, 0, 0x42800000, s20
	v_cndmask_b32_e64 v151, 0, 0xffffffc0, s7
	v_dual_fmac_f32 v134, 0xbfb8aa3b, v128 :: v_dual_add_f32 v93, 1.0, v93
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v138, 0xbfb8aa3b, v130 :: v_dual_fmac_f32 v143, 0xbfb8aa3b, v84
	v_dual_fmac_f32 v142, 0xbfb8aa3b, v89 :: v_dual_add_f32 v95, 1.0, v95
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v94, v94
	v_exp_f32_e32 v96, v96
	v_exp_f32_e32 v98, v98
	v_exp_f32_e32 v100, v100
	v_ldexp_f32 v97, v97, v149
	v_fmac_f32_e32 v140, 0xbfb8aa3b, v131
	v_cndmask_b32_e64 v146, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v148, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v150, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v152, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v154, 0, 0xffffffc0, s10
	v_exp_f32_e32 v133, v133
	v_exp_f32_e32 v135, v135
	v_exp_f32_e32 v138, v138
	v_exp_f32_e32 v137, v137
	v_exp_f32_e32 v139, v139
	v_exp_f32_e32 v141, v141
	v_ldexp_f32 v99, v99, v151
	v_fmac_f32_e32 v144, 0xbfb8aa3b, v85
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v97, 1.0, v97
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v140, v140
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v145, null, v93, v93, v113
	v_div_scale_f32 v149, null, v95, v95, v110
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v153, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v155, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v157, 0, 0xffffffc0, s13
	v_cndmask_b32_e64 v158, 0, 0xffffffc0, s14
	v_cndmask_b32_e64 v159, 0, 0xffffffc0, s15
	v_cndmask_b32_e64 v160, 0, 0xffffffc0, s16
	v_cndmask_b32_e64 v162, 0, 0xffffffc0, s18
	v_ldexp_f32 v76, v76, v146
	v_ldexp_f32 v94, v94, v148
	v_ldexp_f32 v96, v96, v150
	v_ldexp_f32 v98, v98, v152
	v_ldexp_f32 v100, v100, v154
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v99, 1.0, v99
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v144, v144
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v183, v145
	v_rcp_f32_e32 v185, v149
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v163, 0, 0xffffffc0, s19
	v_exp_f32_e32 v142, v142
	v_ldexp_f32 v133, v133, v153
	v_ldexp_f32 v135, v135, v155
	v_ldexp_f32 v138, v138, v157
	v_ldexp_f32 v137, v137, v158
	v_ldexp_f32 v140, v140, v159
	v_ldexp_f32 v139, v139, v160
	v_ldexp_f32 v141, v141, v162
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v76, 1.0, v76 :: v_dual_add_f32 v133, 1.0, v133
	v_dual_add_f32 v94, 1.0, v94 :: v_dual_add_f32 v135, 1.0, v135
	v_dual_add_f32 v96, 1.0, v96 :: v_dual_add_f32 v137, 1.0, v137
	v_dual_add_f32 v98, 1.0, v98 :: v_dual_add_f32 v139, 1.0, v139
	v_dual_add_f32 v100, 1.0, v100 :: v_dual_add_f32 v141, 1.0, v141
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v153, null, v97, v97, v107
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v161, 0, 0xffffffc0, s17
	v_exp_f32_e32 v134, v134
	v_ldexp_f32 v144, v144, v163
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v147, null, v76, v76, v114
	v_div_scale_f32 v151, null, v94, v94, v112
	v_div_scale_f32 v155, null, v96, v96, v109
	v_div_scale_f32 v159, null, v98, v98, v111
	v_div_scale_f32 v163, null, v100, v100, v117
	v_rcp_f32_e32 v187, v153
	v_fma_f32 v203, -v145, v183, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v138, 1.0, v138
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v205, -v149, v185, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v140, 1.0, v140
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v156, 0, 0xffffffc0, s12
	v_exp_f32_e32 v143, v143
	v_ldexp_f32 v142, v142, v161
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v157, null, v99, v99, v108
	v_div_scale_f32 v161, null, v133, v133, v118
	v_div_scale_f32 v173, null, v135, v135, v106
	v_rcp_f32_e32 v184, v147
	v_rcp_f32_e32 v186, v151
	v_rcp_f32_e32 v188, v155
	v_rcp_f32_e32 v190, v159
	v_rcp_f32_e32 v192, v163
	v_fmac_f32_e32 v183, v203, v183
	v_div_scale_f32 v175, null, v138, v138, v130
	v_fmac_f32_e32 v185, v205, v185
	v_div_scale_f32 v177, null, v140, v140, v131
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v164, 0, 0xffffffc0, s20
	v_ldexp_f32 v134, v134, v156
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v189, v157
	v_rcp_f32_e32 v191, v161
	v_rcp_f32_e32 v193, v173
	v_rcp_f32_e32 v195, v175
	v_rcp_f32_e32 v197, v177
	v_fma_f32 v207, -v153, v187, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v143, v143, v164
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v134, 1.0, v134
	v_add_f32_e32 v142, 1.0, v142
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v178, null, v139, v139, v132
	v_fma_f32 v204, -v147, v184, 1.0
	v_fma_f32 v206, -v151, v186, 1.0
	v_fma_f32 v203, -v155, v188, 1.0
	v_fma_f32 v205, -v159, v190, 1.0
	v_fmac_f32_e32 v187, v207, v187
	v_fma_f32 v207, -v163, v192, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v143, 1.0, v143
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v146, vcc_lo, v113, v93, v113
	v_div_scale_f32 v174, null, v134, v134, v128
	v_div_scale_f32 v176, null, v137, v137, v129
	v_div_scale_f32 v180, null, v141, v141, v88
	v_rcp_f32_e32 v198, v178
	v_fmac_f32_e32 v192, v207, v192
	v_fma_f32 v207, -v177, v197, 1.0
	v_fmac_f32_e32 v190, v205, v190
	v_fma_f32 v205, -v175, v195, 1.0
	v_fmac_f32_e32 v188, v203, v188
	v_fma_f32 v203, -v173, v193, 1.0
	v_fmac_f32_e32 v186, v206, v186
	v_fma_f32 v206, -v161, v191, 1.0
	v_fmac_f32_e32 v184, v204, v184
	v_fma_f32 v204, -v157, v189, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v144, 1.0, v144
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v179, null, v142, v142, v89
	v_rcp_f32_e32 v194, v174
	v_rcp_f32_e32 v196, v176
	v_rcp_f32_e32 v200, v180
	v_fmac_f32_e32 v189, v204, v189
	v_div_scale_f32 v181, null, v144, v144, v85
	v_rcp_f32_e32 v199, v179
	v_fmac_f32_e32 v193, v203, v193
	v_fma_f32 v203, -v178, v198, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v201, v181
	v_fma_f32 v204, -v174, v194, 1.0
	v_fmac_f32_e32 v191, v206, v191
	v_fma_f32 v206, -v176, v196, 1.0
	v_fmac_f32_e32 v195, v205, v195
	v_fma_f32 v205, -v180, v200, 1.0
	v_dual_fmac_f32 v198, v203, v198 :: v_dual_mul_f32 v203, v146, v183
	v_div_scale_f32 v148, s6, v114, v76, v114
	v_div_scale_f32 v152, s8, v112, v94, v112
	v_fmac_f32_e32 v196, v206, v196
	v_fma_f32 v206, -v181, v201, 1.0
	v_fmac_f32_e32 v194, v204, v194
	v_fma_f32 v204, -v179, v199, 1.0
	v_fmac_f32_e32 v200, v205, v200
	v_fma_f32 v205, -v145, v203, v146
	v_div_scale_f32 v154, s9, v107, v97, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v199, v204, v199
	v_dual_mul_f32 v204, v148, v184 :: v_dual_fmac_f32 v203, v205, v183
	v_fmac_f32_e32 v201, v206, v201
	v_div_scale_f32 v150, s7, v110, v95, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v206, -v147, v204, v148
	v_fma_f32 v145, -v145, v203, v146
	v_div_scale_f32 v160, s4, v111, v98, v111
	v_fmac_f32_e32 v197, v207, v197
	v_div_scale_f32 v182, null, v143, v143, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v145, v145, v183, v203
	v_dual_mul_f32 v183, v152, v186 :: v_dual_fmac_f32 v204, v206, v184
	v_div_scale_f32 v162, s1, v118, v133, v118
	v_div_fixup_f32 v93, v145, v93, v113
	v_mul_f32_e32 v113, v160, v190
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v147, -v147, v204, v148
	v_mul_f32_e32 v148, v150, v185
	v_rcp_f32_e32 v202, v182
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v156, s10, v109, v96, v109
	v_fma_f32 v203, -v149, v148, v150
	v_div_fmas_f32 v147, v147, v184, v204
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v184, -v151, v183, v152
	v_div_scale_f32 v158, s5, v108, v99, v108
	v_fmac_f32_e32 v148, v203, v185
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v207, -v182, v202, 1.0
	v_fmac_f32_e32 v183, v184, v186
	v_div_scale_f32 v204, s6, v131, v140, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v149, -v149, v148, v150
	v_fmac_f32_e32 v202, v207, v202
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v151, -v151, v183, v152
	v_div_fixup_f32 v114, v147, v76, v114
	v_div_scale_f32 v205, s12, v128, v134, v128
	v_div_fmas_f32 v148, v149, v185, v148
	v_mul_f32_e32 v149, v154, v187
	v_mul_f32_e32 v185, v156, v188
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v206, s13, v130, v138, v130
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v145, -v153, v149, v154
	v_mul_f32_e32 v152, v158, v189
	v_div_fmas_f32 v151, v151, v186, v183
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v183, v162, v191
	v_fmac_f32_e32 v149, v145, v187
	v_fma_f32 v145, -v155, v185, v156
	v_mul_f32_e32 v208, v205, v194
	v_div_scale_f32 v146, s14, v129, v137, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v153, v149, v154
	v_dual_fmac_f32 v185, v145, v188 :: v_dual_mul_f32 v154, v204, v197
	v_div_scale_f32 v150, s17, v88, v141, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v149, v76, v187, v149
	v_fma_f32 v76, -v155, v185, v156
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v153, v206, v195
	v_div_fixup_f32 v95, v148, v95, v110
	v_div_scale_f32 v164, s0, v117, v100, v117
	v_div_fmas_f32 v156, v76, v188, v185
	v_fma_f32 v76, -v161, v183, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v95, v166, v95
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v207, s11, v106, v135, v106
	v_div_scale_f32 v203, s15, v132, v139, v132
	v_fmac_f32_e32 v183, v76, v191
	v_fma_f32 v76, -v174, v208, v205
	v_mul_f32_e32 v145, v146, v196
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v120.l, v95.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v186, v164, v192 :: v_dual_mul_f32 v147, v207, v193
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v208, v76, v194
	v_fma_f32 v76, -v177, v154, v204
	v_mul_f32_e32 v185, v150, v200
	v_fma_f32 v110, -v157, v152, v158
	v_fma_f32 v148, -v159, v113, v160
	v_div_scale_f32 v184, s16, v89, v142, v89
	v_fmac_f32_e32 v154, v76, v197
	v_fma_f32 v76, -v180, v185, v150
	v_dual_mul_f32 v187, v203, v198 :: v_dual_fmac_f32 v152, v110, v189
	v_fma_f32 v110, -v163, v186, v164
	v_fmac_f32_e32 v113, v148, v190
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v185, v76, v200
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v76, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v148, -v173, v147, v207
	v_dual_mul_f32 v155, v184, v199 :: v_dual_fmac_f32 v186, v110, v192
	v_fma_f32 v110, -v175, v153, v206
	v_div_fixup_f32 v96, v156, v96, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v147, v148, v193
	v_fma_f32 v148, -v176, v145, v146
	v_fma_f32 v157, -v157, v152, v158
	v_dual_fmac_f32 v153, v110, v195 :: v_dual_mul_f32 v96, v169, v96
	v_fma_f32 v110, -v178, v187, v203
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v145, v148, v196
	v_fma_f32 v148, -v179, v155, v184
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v150, -v180, v185, v150
	v_fma_f32 v163, -v163, v186, v164
	v_div_fixup_f32 v97, v149, v97, v107
	v_fmac_f32_e32 v155, v148, v199
	v_fma_f32 v174, -v174, v208, v205
	v_fma_f32 v175, -v175, v153, v206
	v_fma_f32 v177, -v177, v154, v204
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v125.l, v96.h
	v_cmp_o_f32_e64 s9, v96, v96
	v_mov_b16_e64 v158.h, v103.l
	v_mov_b16_e64 v188.h, v103.l
	v_mov_b16_e64 v205.h, v103.l
	v_mov_b16_e64 v204.h, v103.l
	v_mov_b16_e64 v148.h, v103.l
	v_mov_b16_e64 v164.h, v103.l
	v_mov_b16_e64 v206.h, v103.l
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v209, v76, v103
	scratch_load_b32 v76, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v187, v110, v198
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v110.h, v103.l
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v210, v76, v103
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v178, -v178, v187, v203
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v203, v209, v26, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v179, v155, v184
	v_div_scale_f32 v179, s7, v85, v144, v85
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v184, v210, v25, v73
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v25, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v74, v203, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v180, v179, v201
	v_fma_f32 v161, -v161, v183, v162
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v162.h, v103.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v73, v184, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v76, s27, 4, v102
	s_mov_b32 s27, 0x31027000
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v209, v25, v75
	scratch_load_b32 v25, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v210, v25, v75
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v159, -v159, v113, v160
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v127, v93
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v93, v151, v94, v112
	v_div_fmas_f32 v112, v157, v189, v152
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v49, v210, v49, v90
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v94, v165, v114
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v107, v159, v190, v113
	s_mov_b32 vcc_lo, s1
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v90, v49, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v90, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v173, -v173, v147, v207
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v105.l, v25.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v93, v167, v93
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v109, v161, v191, v183
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v99, v112, v99, v108
	v_div_fmas_f32 v108, v163, v192, v186
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v98, v107, v98, v111
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v105, 1, v105
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v107, v173, v193, v147
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v119.l, v93.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v25, v25
	v_add3_u32 v25, v25, v105, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v105, v107, v135, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v106, 1, v119
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v146, -v176, v145, v146
	v_div_fmas_f32 v111, v174, v194, v208
	s_mov_b32 vcc_lo, s13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v104.l, v94.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v112, v175, v195, v153
	s_mov_b32 vcc_lo, s14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v93, v93
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v107, v146, v196, v145
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v93, v93, v106, 0x7fff
	v_and_b32_e32 v104, 1, v104
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v100, v108, v100, v117
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v106, v107, v137, v129
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v94, v94
	v_add3_u32 v94, v94, v104, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v104, v111, v134, v128
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v207.h, v103.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v106, v77, v106
	v_mul_f32_e32 v86, v86, v105
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v109, v109, v133, v118
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v108, 1, v120
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v83, v83, v104
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v207.l, v106.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v87, v87, v100
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v100, v177, v197, v154
	s_mov_b32 vcc_lo, s15
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v92, v92, v109
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v105, v178, v198, v187
	s_mov_b32 vcc_lo, s16
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v95, v95
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v104, v26, v199, v155
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v95, v95, v108, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v108, v112, v138, v130
	s_mov_b32 vcc_lo, s17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v160.h, v103.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v89, v104, v142, v89
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v99, v171, v99
	v_mul_f32_e32 v107, v82, v108
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v82, v150, v200, v185
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v160.l, v86.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v97, v168, v97
	v_mul_f32_e32 v80, v80, v89
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v110.l, v99.h
	v_and_b32_e32 v111, 1, v125
	v_cndmask_b16 v25.l, 0x7fff, v94.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v82, v82, v141, v88
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v88, 1, v160
	v_mov_b16_e32 v126.l, v97.h
	v_and_b32_e32 v94, 1, v110
	v_cmp_o_f32_e64 s10, v99, v99
	v_add3_u32 v96, v96, v111, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v105, v105, v139, v132
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v109, 1, v126
	v_add3_u32 v94, v99, v94, 0x7fff
	v_cmp_o_f32_e64 s8, v97, v97
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v98, v172, v98
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v100, v100, v140, v131
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_cndmask_b16 v77.l, 0x7fff, v96.h, s9
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v96, v79, v105
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v97, v97, v109, 0x7fff
	v_cndmask_b16 v79.h, 0x7fff, v94.h, s10
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v94, v78, v82
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v78, v86, v88, 0x7fff
	v_and_b32_e32 v86, 1, v207
	v_mov_b16_e64 v158.l, v87.h
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v50, v209, v50, v91
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v77.h, 0x7fff, v97.h, s8
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v81, v81, v100
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v188.l, v92.h
	v_cmp_o_f32_e64 s1, v87, v87
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v91, v50, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v97, 1, v158
	v_mov_b16_e64 v205.l, v81.h
	v_cndmask_b16 v26.l, 0x7fff, v93.h, s5
	v_and_b32_e32 v93, 1, v188
	v_mov_b16_e64 v162.l, v83.h
	v_add3_u32 v87, v87, v97, 0x7fff
	v_mov_b16_e64 v204.l, v94.h
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s4
	v_cmp_o_f32_e64 s4, v92, v92
	v_add3_u32 v92, v92, v93, 0x7fff
	v_cndmask_b16 v82.l, 0x7fff, v87.h, s1
	v_and_b32_e32 v87, 1, v205
	v_and_b32_e32 v93, 1, v162
	v_mov_b16_e64 v176.h, v103.l
	v_cmp_o_f32_e64 s8, v106, v106
	v_cmp_o_f32_e64 s9, v81, v81
	v_mov_b16_e64 v176.l, v80.h
	v_add3_u32 v86, v106, v86, 0x7fff
	v_cndmask_b16 v26.h, 0x7fff, v95.h, s0
	v_cmp_o_f32_e64 s0, v83, v83
	v_add3_u32 v83, v83, v93, 0x7fff
	v_mov_b16_e64 v148.l, v98.h
	v_mov_b16_e64 v164.l, v107.h
	v_cndmask_b16 v82.h, 0x7fff, v92.h, s4
	v_and_b32_e32 v92, 1, v176
	v_cndmask_b16 v83.l, 0x7fff, v86.h, s8
	v_mov_b16_e64 v206.l, v96.h
	v_and_b32_e32 v89, 1, v164
	v_cmp_o_f32_e64 s6, v98, v98
	v_cmp_o_f32_e64 s5, v107, v107
	v_cmp_o_f32_e64 s4, v80, v80
	v_cndmask_b16 v78.l, 0x7fff, v83.h, s0
	v_add3_u32 v88, v107, v89, 0x7fff
	v_and_b32_e32 v89, 1, v206
	v_cndmask_b16 v78.h, 0x7fff, v78.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v94, v94
	v_cndmask_b16 v83.h, 0x7fff, v88.h, s5
	v_add3_u32 v88, v96, v89, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v91, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v90, v90, v103
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v81, v81, v87, 0x7fff
	v_and_b32_e32 v87, 1, v204
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v28, v90, v28, v70
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v90, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v86, v94, v87, 0x7fff
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v87, v136, v75
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v89, v80, v92, 0x7fff
	v_cndmask_b16 v80.h, 0x7fff, v81.h, s9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v70, v28, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v81.l, 0x7fff, v86.h, s1
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v46, v87, v46, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v87, -v181, v180, v179
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v95, 1, v148
	v_cndmask_b16 v81.h, 0x7fff, v89.h, s4
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v89, v170, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v74, v46, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v180, v87, v201
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v95, v98, v95, 0x7fff
	v_mov_b16_e32 v86.h, v103.l
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v45, v89, v45, v73
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v70, v124, v75
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fma_f32 v87, -v181, v180, v179
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v79.l, 0x7fff, v95.h, s6
	v_cmp_o_f32_e64 s6, v96, v96
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v73, v45, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v46
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v87, v87, v201, v180
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v48, v70, v48, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v80.l, 0x7fff, v88.h, s6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v88, s0, v84, v143, v84
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v85, v87, v144, v85
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v92, v88, v202
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v48, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v50, v50, v85
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v74, -v182, v92, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v92, v74, v202
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v74, 0xbfb8aa3b, v73
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v88, -v182, v92, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v88, v88, v202, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v74, 0, 0x42800000, s5
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, s5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v84, v88, v143, v84
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v73
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v88, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v49, v49, v84
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v74, v74
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v84.l, v50.h
	v_mov_b16_e32 v84.h, v103.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b16_e32 v86.l, v49.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v74, v74, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v85, 1, v86
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v86, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v90, v90, v103
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v27, v90, v27, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v69, v27, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v69, v123, v75
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v47, v69, v47, v27
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v47, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v46
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v45, v45
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v45, v45, v87
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v87, 1.0, v45
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v84, null, v87, v87, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v45, v50, v45, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v50, 1.0, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v74, v84
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v89, null, v50, v50, v73
	v_div_scale_f32 v70, s0, v73, v50, v73
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v88, v88, v103
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v9, v88, v9, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fma_f32 v88, -v84, v74, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v71, v9, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v71, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v74, v88, v74
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v86, v86, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v10, v86, v10, v72
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v86, v89
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v72, v10, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v88, -v89, v86, 1.0
	v_fmac_f32_e32 v86, v88, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v70, v86
	v_div_scale_f32 v72, vcc_lo, v46, v87, v46
	v_mul_f32_e32 v92, v72, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v84, v92, v72
	v_fmac_f32_e32 v92, v48, v74
	v_fma_f32 v48, -v89, v88, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v88, v48, v86
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v89, v88, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v48
	v_cndmask_b32_e64 v48, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v27
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v85, v49, v85, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v71, v71, v75
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v42, v71, v42, v10
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v71, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v10, v42, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v84, v92, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v42, v42, v74, v92
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v69, v69, v86, v88
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v42, v42, v87, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v46, v69, v50, v73
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:84
	scratch_load_b32 v69, off, off offset:80
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v45.l, 0x7fff, v85.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v42
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v48
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.h, v103.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v50, v50, v103
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v69, v69, v103
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v12, v50, v12, v68
	v_fma_f32 v11, v69, v11, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v67, v11, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v67, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v91, v91, v75
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v41, v91, v41, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v9, v41, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v46, v9, v46
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v10.h
	v_mov_b16_e32 v9.h, v103.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v41, v47, v41
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.l, v46.h
	v_and_b32_e32 v9, 1, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v42, v42, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v9, v10, v9, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v68, v12, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v12, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, null, v41, v41, v28
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, vcc_lo, v28, v41, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v49, v47
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v48, v46, v48, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v42, v42, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s0
	v_cmp_o_f32_e64 s0, v46, v46
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v46, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v50, v70
	v_fma_f32 v69, -v47, v49, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.l, 0x7fff, v48.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v49, v69, v49
	v_fma_f32 v69, -v70, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v69, v50
	v_div_scale_f32 v69, s1, v27, v42, v27
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v67, v67, v103
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v18, v67, v18, v66
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v67, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v66, v18, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v66, v122, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v38, v66, v38, v18
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v38, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v12, v12, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v12, v12, v43, v11
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v43, v68, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v12, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v47, v43, v68
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v46, v46, v103
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v43, v66, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v19, v46, v19, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v12, -v47, v43, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v61, v19, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v12, v12, v49, v43
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v12, v12, v41, v28
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v71, v71, v75
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v44, v71, v44, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v10, v44, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v18
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v12
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v44
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v44, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s4
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v67, v67, v103
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
	v_mul_f32_e32 v65, v121, v75
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v67, v38, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v37, v65, v37, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v70, v67, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v17, v37, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v38, v38, v50, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v27, v38, v42, v27
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v42, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v17
	v_exp_f32_e32 v28, v37
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v11, v27
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.l, v10.h
	v_mov_b16_e32 v27.h, v103.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v27, 1, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v12, v28, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v27, v10, v27, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v10, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v12, v12, v18
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v44, v44, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v20, v44, v20, v64
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v44, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v42, v42, v103
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v5, v42, v5, v62
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, vcc_lo, v18, v12, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v62, v5, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v28, v37
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v10, v10, v103
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.h, v103.l
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v6, v10, v6, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v28, v28, v38
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v38, v41
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v63, v6, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, null, v28, v28, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v10, -v41, v38, 1.0
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v10, v38
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v64, v20, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v20, v116, v75
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v46, v47, v38
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v20, v20, v40, v10
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v40, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v43, v42, 1.0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v44, v44, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v10, v20, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v20, v115, v75
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v48, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v11.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, s1, v17, v28, v17
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v49, 0xbfb8aa3b, v10
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v20, v20, v39, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v41, v46, v47
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v19, v20, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v20, v44, v34, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v46, v39, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v49, 0, 0x42800000, s4
	v_mul_f32_e32 v39, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v20, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v39, 0, 0x42800000, s5
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v19
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v20, -v41, v46, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v39, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v20, v20, v38, v46
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v12, v20, v12, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s5
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v10
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.h, v103.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v12, v39, v18
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.h, v103.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v18.l, v6.h
	v_cmp_o_f32_e64 s0, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v40, v75
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v11, v37, 0x7fff
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v40, v33, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v40, v48, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v33, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v43, v40, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v34, v42
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v43, v40, v48
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v42, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:244
	scratch_load_b32 v39, off, off offset:64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v34, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v27.l, 0x7fff, v37.h, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v37, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v38, v28, v17
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v33, null, v12, v12, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v5, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, null, v11, v11, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v34, v33
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.l, v5.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v28, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v17, v28, 1.0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v40, v40, v75
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v39, v39, v103
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v6, v18, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v37, v37, v103
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v6, v39, v7, v59
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v39, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v20, v5, v20, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v8, v37, v8, v60
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v59, v6, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, vcc_lo, v10, v11, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v60, v8, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v35, v40, v35, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v35, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v35, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v28, v38, v28
	v_fma_f32 v38, -v33, v34, 1.0
	v_fmac_f32_e32 v34, v38, v34
	v_div_scale_f32 v38, s1, v19, v12, v19
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v42, v38, v34 :: v_dual_mul_f32 v39, v39, v75
	v_mul_f32_e32 v8, v37, v28
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v36, v39, v36, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v17, v8, v37
	v_fma_f32 v39, -v33, v42, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v36, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v8, v41, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v39, v34
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v36, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v17, -v17, v8, v37
	v_div_fmas_f32 v8, v17, v28, v8
	v_fma_f32 v17, -v33, v42, v38
	s_mov_b32 vcc_lo, s1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v28, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v8, v11, v10
	v_div_fmas_f32 v17, v17, v34, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v7, v8
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v17, v12, v19
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:96
	scratch_load_b32 v11, off, off offset:40
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v35, v35, v103
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v7, v7
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.h, v103.l
	v_cndmask_b16 v18.l, 0x7fff, v20.h, vcc_lo
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v13, v35, v13, v57
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v35, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v57, v13, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v28, v28, v75
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v19, v19, v103
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v6.h
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v15, v19, v15, v55
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v19, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v11, v11, v75 :: v_dual_and_b32 v12, 1, v12
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v35, v35, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v55, v15, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v5, v11, v29, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v7.h
	v_mov_b16_e32 v11.h, v103.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v10, v5, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v11, v7, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s4
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v19, v75
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v6, v12, 0x7fff
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v12, off, off offset:100 ; 4-byte Folded Reload
	v_mul_f32_e32 v36, v36, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v14, v36, v14, v58
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v58, v14, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v13, v28, v30, v14
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v30, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v14, v13, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v14, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v13, 0xbfb8aa3b, v5 :: v_dual_mul_f32 v10, 0xbfb8aa3b, v8
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v10
	v_cndmask_b32_e64 v13, 0, 0x42800000, s1
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v10, 0, 0x42800000, s0
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v13, 0xbfb8aa3b, v5 :: v_dual_fmac_f32 v10, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v13, v13, v20
	v_ldexp_f32 v10, v10, v17
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v17, v211, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_add_f32 v10, 1.0, v10
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v10, v10, v8
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v12, v12, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v12, v12, v16, v56
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v16, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v56, v12, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v17, v17, v32, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, s4, v5, v13, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v12, v17, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v17, v20
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v14, v14, v103
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v2, v14, v2, v54
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v14, v19, v31, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, s1, v8, v10, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v20, v17, 1.0
	v_div_scale_f32 v19, null, v13, v13, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v15, v14, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v15, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v17, v29, v17
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v54, v2, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v33, v31, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v20, v33, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v30, v30, v75 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v36, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v22, v30, v22, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v20, -v20, v33, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v22, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v16, v16, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v1, v16, v1, v53
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v16, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v53, v1, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v21, v35, v21, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v19, v16, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v21, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v16, v29, v16
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v17, v20, v17, v33
	s_mov_b32 vcc_lo, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v15, v15, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v29, v32, v16
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v17, v10, v8
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v10, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0x42800000, s0
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v15, v15, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v30, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v28, v28, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v19, v29, v32
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v29, v34, v16
	v_div_scale_f32 v34, null, v28, v28, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v19, v29, v32
	v_rcp_f32_e32 v31, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v34, v31, 1.0
	v_fmac_f32_e32 v31, v20, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v16, v19, v16, v29
	v_fma_f32 v19, -v35, v30, 1.0
	v_div_fixup_f32 v5, v16, v13, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, v19, v30
	v_div_scale_f32 v13, vcc_lo, v12, v15, v12
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v16, s0, v14, v28, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v17, v13, v30
	v_mul_f32_e32 v5, v16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v34, v5, v16
	v_fmac_f32_e32 v5, v8, v31
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:228
	scratch_load_b32 v19, off, off offset:48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v16, -v34, v5, v16
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v10, v10, v103
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
	scratch_load_b32 v10, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v8, v8, v75
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v35, v17, v13
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v19, v19, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v13, v13, v30, v17
	s_mov_b32 vcc_lo, s0
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v4, v19, v4, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v5, v16, v31, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.l, v2.h
	v_mov_b16_e32 v16.h, v103.l
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v51, v4, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v5, v28, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v1, v1
	v_cndmask_b16 v11.l, 0x7fff, v7.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v8, v8, v24, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v8, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v13, v15, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v8
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.h, v103.l
	v_cmp_o_f32_e64 s1, v4, v4
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v10, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v10, v10, v23, v3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v10, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v1.h
	v_mov_b16_e32 v10.h, v103.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v5, 1, v16
	v_and_b32_e32 v6, 1, v10
	v_mov_b16_e32 v10.l, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v8.l, v3.h
	v_add3_u32 v5, v2, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v6, v1, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v3, v3
	v_and_b32_e32 v7, 1, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v1, v3, v7, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v8, 1, v10
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s0
	v_mov_b32_e32 v10, 0x5410
	v_dual_mov_b32 v12, 0x7632 :: v_dual_cndmask_b32 v15, v27, v45
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v17, v3, v18, vcc_lo
	v_cndmask_b32_e32 v10, 0x1054, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v12, 0x3276, v12 :: v_dual_cndmask_b32 v1, v77, v25
	v_add3_u32 v2, v4, v8, 0x7fff
	v_dual_cndmask_b32 v4, v79, v26 :: v_dual_cndmask_b32 v7, v82, v83
	v_lshl_or_b32 v10, v10, 8, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v12, v12, 8, v12
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_dual_cndmask_b32 v2, v25, v77 :: v_dual_cndmask_b32 v5, v26, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v10, 0x540054, v10
	v_and_b32_e32 v12, 0x760076, v12
	v_dual_cndmask_b32 v6, v83, v82 :: v_dual_cndmask_b32 v13, v78, v80
	v_cndmask_b32_e32 v8, v80, v78, vcc_lo
	v_dual_cndmask_b32 v14, v9, v81 :: v_dual_cndmask_b32 v3, v18, v3
	v_dual_cndmask_b32 v9, v81, v9 :: v_dual_cndmask_b32 v18, v0, v11
	v_cndmask_b32_e32 v0, v11, v0, vcc_lo
	v_lshl_or_b32 v10, v10, 4, v10
	v_cndmask_b32_e32 v16, v45, v27, vcc_lo
	v_lshl_or_b32 v11, v12, 4, v12
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(SALU_CYCLE_1)
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
	v_add_lshl_u32 v16, v101, v102, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v12, v13, v17, v19
	v_perm_b32 v13, v13, v17, v20
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v17, v101, v76, 1
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 428
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 55
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 428
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 31900
; TotalNumSgprs: 57
; NumVgprs: 256
; ScratchSize: 428
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 428
    .sgpr_count:     57
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 118
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
