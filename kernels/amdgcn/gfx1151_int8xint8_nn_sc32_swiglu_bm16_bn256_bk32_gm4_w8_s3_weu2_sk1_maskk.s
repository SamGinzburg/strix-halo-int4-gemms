	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v13, 4, v0
	v_and_b32_e32 v73, 15, v0
	s_mov_b32 s31, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_or_b32_e32 v15, 16, v13
	v_lshlrev_b32_e32 v14, 1, v73
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s10, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
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
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_mul_lo_u32 v1, s6, v13
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
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s34, s27, 1
	.loc	1 312 26                        ; generate_amdgcn.py:312:26
	s_lshl_b32 s30, s3, 5
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s3, s17, 31
.Ltmp15:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s2, s2, s18
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_mul_lo_u32 v5, s34, v13
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
	v_or_b32_e32 v2, s30, v14
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s16
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v3, s30, v13
	v_or_b32_e32 v4, s30, v15
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s3, 4
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_lshl_add_u32 v16, v73, 4, v5
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_mul_i32 s16, s33, s6
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s26, s2, 8
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s6, v2
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s2, s6, v3
	v_cmp_gt_i32_e64 s4, s6, v4
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add3_u32 v18, v1, v14, s16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s17, 31
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_lshl_add_u32 v17, s27, 5, v16
	s_mul_i32 s5, s34, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s18, s26, s5
	.loc	1 322 26 is_stmt 0              ; generate_amdgcn.py:322:26
	s_and_b32 s37, s37, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s4, s4, s3
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v3, s30, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s5, s2, s3
	s_cmp_gt_i32 s17, 63
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v1, s18, v16
	v_add_nc_u32_e32 v2, s18, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s35, s30, 32
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v12, s35, v14
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v4, 0x80000000, v1, s5
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v1, s27, v1
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_lshl_b32 s16, s27, 6
	.loc	1 322 26 is_stmt 0              ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v8, 0x80000000, v2, s4
	.loc	1 328 43 is_stmt 1              ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v2, s27, v2
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v19, s35, v13
	v_or_b32_e32 v20, s35, v15
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s18, s18, s16
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s6, v12
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v22, s18, v16
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v21, s35, v18
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v1, 0x80000000, v1, s5
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s4, s6, v19
	v_cmp_gt_i32_e64 s5, s6, v20
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v31, s18, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_u16 v47, v3, s[8:11], 0 offen
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v3, s27, v22
	v_add3_u32 v32, s18, s27, v17
	.loc	1 328 35 is_stmt 0              ; generate_amdgcn.py:328:35
	s_clause 0x1
	buffer_load_b128 v[23:26], v1, s[36:39], 0 offen
	buffer_load_b128 v[27:30], v2, s[36:39], 0 offen
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	v_cndmask_b32_e32 v1, 0x80000000, v21, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	s_and_b32 s4, s5, s2
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e32 v2, 0x80000000, v22, vcc_lo
	v_cndmask_b32_e64 v12, 0x80000000, v31, s4
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v22, 4, v0
	v_cndmask_b32_e64 v19, 0x80000000, v32, s4
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[4:7], v4, s[36:39], 0 offen
	buffer_load_b128 v[8:11], v8, s[36:39], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[31:34], v2, s[36:39], 0 offen
	buffer_load_b128 v[35:38], v12, s[36:39], 0 offen
	buffer_load_b128 v[39:42], v3, s[36:39], 0 offen
	buffer_load_b128 v[43:46], v19, s[36:39], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_lshlrev_b32_e32 v2, 1, v0
	v_bfe_i32 v3, v0, 6, 1
	v_lshlrev_b32_e32 v20, 5, v0
	v_and_b32_e32 v19, 4, v0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v48, 0, v22
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v12, 0x17e, v2
	v_and_b32_e32 v3, 0x90, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s17, 0x5f
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_xor_b32_e32 v21, v3, v12
	v_lshrrev_b32_e32 v3, 1, v0
	v_add_nc_u32_e32 v12, 0, v21
	s_waitcnt vmcnt(9)
	ds_store_b16 v12, v47 offset:32768
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(6)
	ds_store_b128 v48, v[4:7]
	s_waitcnt vmcnt(5)
	ds_store_b128 v48, v[8:11] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	ds_store_b128 v48, v[23:26] offset:16384
	ds_store_b128 v48, v[27:30] offset:20480
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b16 v12, v1 offset:33280
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v48, v[31:34] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v48, v[35:38] offset:12288
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(1)
	ds_store_b128 v48, v[39:42] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v48, v[43:46] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_lshlrev_b32_e32 v23, 5, v0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_and_or_b32 v77, 0x70, v3, v73
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v1, 4, v0
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v12, 0x160, v23
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_or_b32_e32 v78, 0x100, v77
	v_or_b32_e32 v80, 0x200, v77
	v_or_b32_e32 v82, 0x300, v77
	v_or_b32_e32 v84, 0x400, v77
	v_or_b32_e32 v86, 0x500, v77
	v_or_b32_e32 v88, 0x600, v77
	v_or_b32_e32 v90, 0x700, v77
	v_or_b32_e32 v92, 0x800, v77
	v_or_b32_e32 v94, 0x900, v77
	v_or_b32_e32 v96, 0xa00, v77
	v_or_b32_e32 v98, 0xb00, v77
	v_or_b32_e32 v100, 0xc00, v77
	v_or_b32_e32 v102, 0xd00, v77
	v_or_b32_e32 v104, 0xe00, v77
	v_or_b32_e32 v105, 0xf00, v77
	v_or_b32_e32 v79, 0x1000, v77
	v_or_b32_e32 v81, 0x1100, v77
	v_or_b32_e32 v83, 0x1200, v77
	v_or_b32_e32 v85, 0x1300, v77
	v_or_b32_e32 v87, 0x1400, v77
	v_or_b32_e32 v89, 0x1500, v77
	v_or_b32_e32 v91, 0x1600, v77
	v_or_b32_e32 v93, 0x1700, v77
	v_or_b32_e32 v95, 0x1800, v77
	v_or_b32_e32 v97, 0x1900, v77
	v_or_b32_e32 v99, 0x1a00, v77
	v_or_b32_e32 v101, 0x1b00, v77
	v_or_b32_e32 v103, 0x1c00, v77
	v_or_b32_e32 v106, 0x1d00, v77
	v_or_b32_e32 v107, 0x1e00, v77
	v_or_b32_e32 v108, 0x1f00, v77
	v_or_b32_e32 v109, 0x80, v77
	v_or_b32_e32 v110, 0x180, v77
	v_or_b32_e32 v111, 0x280, v77
	v_or_b32_e32 v112, 0x380, v77
	v_or_b32_e32 v113, 0x480, v77
	v_or_b32_e32 v114, 0x580, v77
	v_or_b32_e32 v115, 0x680, v77
	v_or_b32_e32 v116, 0x780, v77
	v_or_b32_e32 v117, 0x880, v77
	v_or_b32_e32 v118, 0x980, v77
	v_or_b32_e32 v119, 0xa80, v77
	v_or_b32_e32 v120, 0xb80, v77
	v_or_b32_e32 v121, 0xc80, v77
	v_or_b32_e32 v122, 0xd80, v77
	v_or_b32_e32 v123, 0xe80, v77
	v_or_b32_e32 v124, 0xf80, v77
	v_or_b32_e32 v125, 0x1080, v77
	v_or_b32_e32 v126, 0x1180, v77
	v_or_b32_e32 v127, 0x1280, v77
	v_or_b32_e32 v128, 0x1380, v77
	v_or_b32_e32 v129, 0x1480, v77
	v_or_b32_e32 v130, 0x1580, v77
	v_or_b32_e32 v131, 0x1680, v77
	v_or_b32_e32 v132, 0x1780, v77
	v_or_b32_e32 v133, 0x1880, v77
	v_or_b32_e32 v134, 0x1980, v77
	v_or_b32_e32 v135, 0x1a80, v77
	v_or_b32_e32 v136, 0x1b80, v77
	v_or_b32_e32 v137, 0x1c80, v77
	v_or_b32_e32 v138, 0x1d80, v77
	v_or_b32_e32 v139, 0x1e80, v77
	v_or_b32_e32 v140, 0x1f80, v77
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr23
                                        ; implicit-def: $vgpr12
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr77
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr86
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr100
                                        ; implicit-def: $vgpr102
                                        ; implicit-def: $vgpr104
                                        ; implicit-def: $vgpr105
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr87
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr99
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr103
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
                                        ; implicit-def: $vgpr133
                                        ; implicit-def: $vgpr134
                                        ; implicit-def: $vgpr135
                                        ; implicit-def: $vgpr136
                                        ; implicit-def: $vgpr137
                                        ; implicit-def: $vgpr138
                                        ; implicit-def: $vgpr139
                                        ; implicit-def: $vgpr140
.LBB0_3:                                ; %Flow221
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v4, s33, v73
	v_and_b32_e32 v74, 0xf0, v0
	s_ashr_i32 s48, s7, 5
	v_or_b32_e32 v75, s26, v0
	v_and_b32_e32 v10, 28, v2
	v_mul_lo_u32 v76, v4, s48
	v_lshlrev_b32_e32 v11, 2, v74
	v_lshlrev_b32_e32 v9, 1, v74
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v43, 0 :: v_dual_and_b32 v12, 0x160, v20
	v_bfe_i32 v1, v0, 2, 1
	v_and_or_b32 v77, 0x70, v3, v73
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v25, s27, v75
	v_mov_b32_e32 v72, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v23, 0x90, v1, v12
	v_and_b32_e32 v1, 32, v20
	v_or_b32_e32 v78, 0x100, v77
	v_or_b32_e32 v80, 0x200, v77
	v_or_b32_e32 v82, 0x300, v77
	v_or_b32_e32 v84, 0x400, v77
	v_add3_u32 v1, 0, v11, v1
	v_xor_b32_e32 v24, 16, v23
	v_or_b32_e32 v86, 0x500, v77
	v_or_b32_e32 v88, 0x600, v77
	v_or_b32_e32 v90, 0x700, v77
	v_or_b32_e32 v92, 0x800, v77
	v_or_b32_e32 v94, 0x900, v77
	v_or_b32_e32 v96, 0xa00, v77
	v_or_b32_e32 v98, 0xb00, v77
	v_or_b32_e32 v100, 0xc00, v77
	v_or_b32_e32 v102, 0xd00, v77
	v_or_b32_e32 v104, 0xe00, v77
	v_or_b32_e32 v105, 0xf00, v77
	v_or_b32_e32 v79, 0x1000, v77
	v_or_b32_e32 v81, 0x1100, v77
	v_or_b32_e32 v83, 0x1200, v77
	v_or_b32_e32 v85, 0x1300, v77
	v_or_b32_e32 v87, 0x1400, v77
	v_or_b32_e32 v89, 0x1500, v77
	v_or_b32_e32 v91, 0x1600, v77
	v_or_b32_e32 v93, 0x1700, v77
	v_or_b32_e32 v95, 0x1800, v77
	v_or_b32_e32 v97, 0x1900, v77
	v_or_b32_e32 v99, 0x1a00, v77
	v_or_b32_e32 v101, 0x1b00, v77
	v_or_b32_e32 v103, 0x1c00, v77
	v_or_b32_e32 v106, 0x1d00, v77
	v_or_b32_e32 v107, 0x1e00, v77
	v_or_b32_e32 v108, 0x1f00, v77
	v_or_b32_e32 v109, 0x80, v77
	v_or_b32_e32 v110, 0x180, v77
	v_or_b32_e32 v111, 0x280, v77
	v_or_b32_e32 v112, 0x380, v77
	v_or_b32_e32 v113, 0x480, v77
	v_or_b32_e32 v114, 0x580, v77
	v_or_b32_e32 v115, 0x680, v77
	v_or_b32_e32 v116, 0x780, v77
	v_or_b32_e32 v117, 0x880, v77
	v_or_b32_e32 v118, 0x980, v77
	v_or_b32_e32 v119, 0xa80, v77
	v_or_b32_e32 v120, 0xb80, v77
	v_or_b32_e32 v121, 0xc80, v77
	v_or_b32_e32 v122, 0xd80, v77
	v_or_b32_e32 v123, 0xe80, v77
	v_or_b32_e32 v124, 0xf80, v77
	v_or_b32_e32 v125, 0x1080, v77
	v_or_b32_e32 v126, 0x1180, v77
	v_or_b32_e32 v127, 0x1280, v77
	v_or_b32_e32 v128, 0x1380, v77
	v_or_b32_e32 v129, 0x1480, v77
	v_or_b32_e32 v130, 0x1580, v77
	v_or_b32_e32 v131, 0x1680, v77
	v_or_b32_e32 v132, 0x1780, v77
	v_or_b32_e32 v133, 0x1880, v77
	v_or_b32_e32 v134, 0x1980, v77
	v_or_b32_e32 v135, 0x1a80, v77
	v_or_b32_e32 v136, 0x1b80, v77
	v_or_b32_e32 v137, 0x1c80, v77
	v_or_b32_e32 v138, 0x1d80, v77
	v_or_b32_e32 v139, 0x1e80, v77
	v_or_b32_e32 v140, 0x1f80, v77
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v26, v1, v10
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v27, 0, v9
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v42, 0
	v_mov_b32_e32 v41, 0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_mov_b32 s16, 0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s14, s48, 3
	s_add_i32 s5, s35, 32
	s_mov_b32 s7, 1
	s_and_b32 s41, s13, 0xffff
	s_mov_b32 s40, s12
	s_and_b32 s45, s29, 0xffff
	s_mov_b32 s44, s28
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s51, 0, 0x8200
	s_add_i32 s50, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s49, 0, 0x6000
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
	s_mov_b32 s30, s35
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s35, s15, 5
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v29, s1, v77
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s0, 31
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s35, s5, s35
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_lshr_b32 s1, s1, 27
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v31, s4, v23
	v_add_nc_u32_e32 v30, s4, v24
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v34, s35, v15
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s4, s35, s34
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_add_i32 s0, s0, s1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v32, s35, v14
	v_or_b32_e32 v33, s35, v13
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s4, s4, s26
	.loc	1 322 26 is_stmt 0              ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v28, s31, v77
	.loc	1 330 29 is_stmt 1              ; generate_amdgcn.py:330:29
	s_ashr_i32 s31, s0, 5
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v36, s4, v16
	v_add_nc_u32_e32 v37, s4, v17
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	s_add_i32 s4, s4, s27
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s1, s6, v34
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s31, s48
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v34, v76, s31, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s31, s31, s34
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v35, s35, v18
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s6, v32
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s0, s6, v33
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v33, s4, v17
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v38, v75, s31, 1
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v32, s4, v16
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s4, -1, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v176, 0x80000000, v33, s1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v33, 0x80000000, v38, s4
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v175, 0x80000000, v32, s0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v39, v25, s31, 1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_u16 v32, v35, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v183, v33, s[44:47], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v173, 0x80000000, v36, s0
	v_cndmask_b32_e64 v174, 0x80000000, v37, s1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v177, 0x80000000, v34, s4
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v178, 0x80000000, v39, s4
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v34, v28 offset:3328
	ds_load_u8 v35, v28 offset:3072
	ds_load_u8 v36, v28 offset:3840
	ds_load_u8 v37, v28 offset:3584
	ds_load_u8 v38, v28 offset:2304
	ds_load_u8 v39, v28 offset:2048
	ds_load_u8 v40, v28 offset:2816
	ds_load_u8 v141, v28 offset:2560
	ds_load_u8 v142, v28 offset:1280
	ds_load_u8 v145, v28 offset:1024
	ds_load_u8 v146, v28 offset:1792
	ds_load_u8 v147, v28 offset:1536
	ds_load_u8 v148, v28 offset:256
	ds_load_u8 v149, v28
	ds_load_u8 v150, v28 offset:768
	ds_load_u8 v151, v28 offset:512
	ds_load_u8 v152, v28 offset:3456
	ds_load_u8 v153, v28 offset:3200
	ds_load_u8 v154, v28 offset:3968
	ds_load_u8 v155, v28 offset:3712
	ds_load_u8 v156, v28 offset:2432
	ds_load_u8 v157, v28 offset:2176
	ds_load_u8 v158, v28 offset:2944
	ds_load_u8 v159, v28 offset:2688
	ds_load_u8 v160, v28 offset:1408
	ds_load_u8 v161, v28 offset:1152
	ds_load_u8 v162, v28 offset:1920
	ds_load_u8 v163, v28 offset:1664
	ds_load_u8 v164, v28 offset:384
	ds_load_u8 v165, v28 offset:128
	ds_load_u8 v166, v28 offset:896
	ds_load_u8 v167, v28 offset:640
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v168, v29 offset:3328
	ds_load_u8 v169, v29 offset:3072
	ds_load_u8 v170, v29 offset:3840
	ds_load_u8 v171, v29 offset:3584
	ds_load_u8 v172, v29 offset:2304
	ds_load_u8 v179, v29 offset:2048
	ds_load_u8 v180, v29 offset:2816
	ds_load_u8 v181, v29 offset:2560
	ds_load_u8 v182, v29 offset:1280
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v35, v29 offset:1024
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v33, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v38, v141, v40, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v39, v147, v146, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v37, v29 offset:1792
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v144, v36, 16, v34
	v_perm_b32 v36, v145, v142, 0xc0c0004
	v_lshl_or_b32 v143, v38, 16, v33
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v33, v29 offset:1536
	ds_load_u8 v34, v29 offset:256
	ds_load_u8 v38, v29
	ds_load_u8 v40, v29 offset:768
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v142, v39, 16, v36
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v36, v29 offset:512
	ds_load_u8 v39, v29 offset:3456
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v141, v149, v148, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v145, v29 offset:3200
	ds_load_u8 v147, v29 offset:3968
	ds_load_u8 v149, v29 offset:3712
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v146, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v148, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v150, v155, v154, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v153, v29 offset:2432
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v151, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v155, v159, v158, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v156, v29 offset:2944
	ds_load_u8 v158, v29 offset:2688
	ds_load_u8 v154, v29 offset:2176
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v157, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v159, v163, v162, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v160, v29 offset:1408
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v161, v165, v164, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v162, v29 offset:1152
	ds_load_u8 v164, v29 offset:1920
	ds_load_u8 v184, v29 offset:1664
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v29 offset:384
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v172, v179, v172, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v29 offset:896
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v35, v35, v182, 0xc0c0004
	ds_load_u8 v182, v29 offset:640
	ds_load_u8 v179, v29 offset:128
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v163, v167, v166, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v169, v169, v168, 0xc0c0004
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[165:168], v31
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v33, v33, v37, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v141, v146, 16, v141
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v31, v38, v34, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v34, v36, v40, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v36, v145, v39, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v37, v149, v147, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v38, v154, v153, 0xc0c0004
	v_perm_b32 v39, v158, v156, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v40, v162, v160, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v145, v184, v164, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v146, v179, v171, 0xc0c0004
	v_perm_b32 v147, v182, v181, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_lshl_or_b32 v152, v150, 16, v148
	v_lshl_or_b32 v151, v155, 16, v151
	v_lshl_or_b32 v150, v159, 16, v157
	v_lshl_or_b32 v149, v163, 16, v161
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v160, v170, 16, v169
	v_lshl_or_b32 v159, v180, 16, v172
	v_lshl_or_b32 v158, v33, 16, v35
	v_lshl_or_b32 v157, v34, 16, v31
	v_lshl_or_b32 v172, v37, 16, v36
	v_lshl_or_b32 v171, v39, 16, v38
	v_lshl_or_b32 v170, v145, 16, v40
	v_lshl_or_b32 v169, v147, 16, v146
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v185, v28 offset:7424
	ds_load_u8 v188, v28 offset:7680
	ds_load_u8 v190, v28 offset:6144
	ds_load_u8 v191, v28 offset:6912
	ds_load_u8 v181, v28 offset:5120
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[141:144], v[165:168], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[149:152], v[165:168], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[149:156], v[157:160], v[165:168], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[169:172], v[165:168], v[1:8] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v172, v28 offset:6528
	ds_load_u8 v179, v28 offset:5376
	ds_load_u8 v166, v28 offset:4608
	ds_load_u8 v5, v28 offset:5888
	ds_load_u8 v6, v28 offset:5632
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[1:4], v30
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v30, v28 offset:4352
	ds_load_u8 v31, v28 offset:4096
	ds_load_u8 v165, v28 offset:4864
	ds_load_u8 v186, v28 offset:7168
	ds_load_u8 v187, v28 offset:7936
	ds_load_u8 v189, v28 offset:6400
	ds_load_u8 v184, v28 offset:6656
	ds_load_u8 v167, v28 offset:7552
	ds_load_u8 v171, v28 offset:7808
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v177, v177, s[40:43], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s4, s7, 1
	s_mov_b32 s31, s50
	s_cmp_lt_i32 s4, 2
	s_mov_b32 s1, s49
	s_cselect_b32 s7, s4, 0
	s_add_i32 s4, s15, 1
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_lshl_b32 s50, s7, 13
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_lshl_b32 s49, s7, 9
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_add_i32 s50, s50, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v170, v181, v179, 0xc0c0004
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_add_i32 s49, s49, 0
	s_mov_b32 s0, s51
	s_add_i32 s51, s49, 0x8000
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v188, v187, 0xc0c0004
	v_lshl_or_b32 v6, v5, 16, v170
	v_perm_b32 v5, v31, v30, 0xc0c0004
	ds_load_u8 v30, v28 offset:6784
	v_perm_b32 v7, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v169, v184, v191, 0xc0c0004
	v_perm_b32 v31, v166, v165, 0xc0c0004
	ds_load_u8 v165, v28 offset:5504
	v_perm_b32 v168, v190, v189, 0xc0c0004
	v_lshl_or_b32 v8, v8, 16, v7
	ds_load_u8 v170, v28 offset:6272
	ds_load_u8 v179, v28 offset:7040
	v_lshl_or_b32 v5, v31, 16, v5
	ds_load_u8 v31, v28 offset:5248
	ds_load_u8 v166, v28 offset:6016
	v_lshl_or_b32 v7, v169, 16, v168
	ds_load_u8 v168, v28 offset:7296
	ds_load_u8 v169, v28 offset:8064
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v184, v29 offset:7552
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[33:40], v[5:8], v[1:4], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v5, v28 offset:5760
	ds_load_u8 v180, v28 offset:4480
	ds_load_u8 v181, v28 offset:4224
	ds_load_u8 v182, v28 offset:4992
	ds_load_u8 v28, v28 offset:4736
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v40, v40
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v30, v30, v179, 0xc0c0004
	v_cvt_f32_i32_e32 v38, v38
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v6, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v171, v169, 0xc0c0004
	v_perm_b32 v169, v170, v172, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v167, v29 offset:7424
	ds_load_u8 v171, v29 offset:5376
	ds_load_u8 v168, v29 offset:7168
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v8, v7, 16, v6
	v_lshl_or_b32 v7, v30, 16, v169
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v30, v29 offset:7936
	ds_load_u8 v169, v29 offset:7680
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v6, v31, v165, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v31, v29 offset:6400
	ds_load_u8 v165, v29 offset:6144
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v5, v5, v166, 0xc0c0004
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v166, v29 offset:6912
	ds_load_u8 v170, v29 offset:6656
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v28, v28, v182, 0xc0c0004
	v_lshl_or_b32 v6, v5, 16, v6
	v_perm_b32 v5, v181, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v28, 16, v5
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v28, v29 offset:5888
	ds_load_u8 v179, v29 offset:5632
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[141:148], v[5:8], v[1:4], v[141:148] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v169, v30, 0xc0c0004
	ds_load_u8 v5, v29 offset:4352
	ds_load_u8 v180, v29 offset:4096
	ds_load_u8 v181, v29 offset:4864
	ds_load_u8 v182, v29 offset:4608
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v31, v165, v31, 0xc0c0004
	ds_load_u8 v30, v29 offset:7296
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v165, v170, v166, 0xc0c0004
	ds_load_u8 v170, v29 offset:6528
	v_perm_b32 v6, v168, v167, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v141, v141
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v8, v7, 16, v6
	v_lshl_or_b32 v7, v165, 16, v31
	ds_load_u8 v31, v29 offset:8064
	ds_load_u8 v169, v29 offset:7808
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v142, v142
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v28, v179, v28, 0xc0c0004
	ds_load_u8 v179, v29 offset:5504
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v147, v147
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v5, v180, v5, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v148, v148
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v165, v182, v181, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v165, 16, v5
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v31, v169, v31, 0xc0c0004
	ds_load_u8 v169, v29 offset:5760
	ds_load_u8 v172, v29 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v172, v171, 0xc0c0004
	ds_load_u8 v171, v29 offset:6272
	v_perm_b32 v30, v30, v184, 0xc0c0004
	v_lshl_or_b32 v6, v28, 16, v6
	ds_load_u8 v28, v29 offset:7040
	ds_load_u8 v172, v29 offset:6784
	v_lshl_or_b32 v31, v31, 16, v30
	v_wmma_i32_16x16x16_iu8 v[149:156], v[5:8], v[1:4], v[149:156] neg_lo:[1,1,0]
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[5:8], v173, s[36:39], 0 offen
	buffer_load_b128 v[165:168], v174, s[36:39], 0 offen
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v173, v29 offset:6016
	ds_load_u8 v180, v29 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v29 offset:4480
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v28, v172, v28, 0xc0c0004
	ds_load_u8 v172, v29 offset:4224
	v_lshl_or_b32 v30, v28, 16, v170
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v173, v169, v173, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v174, v180, v179, 0xc0c0004
	ds_load_u8 v179, v29 offset:4992
	ds_load_u8 v29, v29 offset:4736
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v180, v172, v171, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	buffer_load_b128 v[169:172], v175, s[36:39], 0 offen
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v29, v179, 0xc0c0004
	v_lshl_or_b32 v29, v173, 16, v174
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	buffer_load_b128 v[173:176], v176, s[36:39], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v28, 16, v183
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v26, v28 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v178, v178, s[44:47], 0 offen
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v28, v179, 16, v180
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[157:164], v[28:31], v[1:4], v[157:164] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v149
	v_cvt_f32_i32_e32 v2, v150
	v_cvt_f32_i32_e32 v3, v151
	v_cvt_f32_i32_e32 v4, v152
	v_cvt_f32_i32_e32 v28, v153
	v_cvt_f32_i32_e32 v29, v154
	v_cvt_f32_i32_e32 v30, v155
	v_cvt_f32_i32_e32 v31, v156
	v_cvt_f32_i32_e32 v149, v157
	v_cvt_f32_i32_e32 v150, v158
	v_cvt_f32_i32_e32 v151, v159
	v_cvt_f32_i32_e32 v153, v161
	v_cvt_f32_i32_e32 v154, v162
	v_cvt_f32_i32_e32 v155, v163
	v_cvt_f32_i32_e32 v156, v164
	v_cvt_f32_i32_e32 v152, v160
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v157, 16, v177
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v163, v29, v157 :: v_dual_add_nc_u32 v180, s50, v22
	v_mul_f32_e32 v158, v2, v157
	v_mul_f32_e32 v159, v1, v157
	v_mul_f32_e32 v161, v4, v157
	v_mul_f32_e32 v162, v3, v157
	v_mul_f32_e32 v164, v28, v157
	v_mul_f32_e32 v177, v31, v157
	v_mul_f32_e32 v181, v30, v157
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[1:4], v27 offset:33792
	ds_load_b128 v[28:31], v27 offset:33808
	v_mul_f32_e32 v35, v157, v35
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v62, v35, v3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v34, v157, v34
	v_mul_f32_e32 v33, v157, v33
	v_mul_f32_e32 v160, v157, v36
	v_mul_f32_e32 v40, v157, v40
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v154, v154, v157
	v_dual_mul_f32 v156, v156, v157 :: v_dual_fmac_f32 v67, v34, v2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v66, v33, v1 :: v_dual_fmac_f32 v55, v40, v31
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	ds_load_b128 v[33:36], v27 offset:34304
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v63, v160, v4
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[1:4], v27 offset:34320
	v_mul_f32_e32 v144, v157, v144
	v_mul_f32_e32 v145, v157, v145
	v_dual_mul_f32 v142, v157, v142 :: v_dual_add_nc_u32 v179, s49, v21
	v_mul_f32_e32 v38, v157, v38
	v_mul_f32_e32 v37, v157, v37
	v_mul_f32_e32 v39, v157, v39
	v_mul_f32_e32 v141, v157, v141
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v150, v150, v157 :: v_dual_mul_f32 v143, v157, v143
	v_mul_f32_e32 v149, v149, v157
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v146, v157, v146 :: v_dual_mul_f32 v155, v155, v157
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v58, v37, v28
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v59, v38, v29 :: v_dual_fmac_f32 v48, v144, v36
	v_fmac_f32_e32 v54, v39, v30
	v_fmac_f32_e32 v44, v145, v1
	v_dual_fmac_f32 v50, v141, v33 :: v_dual_fmac_f32 v51, v142, v34
	v_fmac_f32_e32 v46, v143, v35
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v152, v152, v157 :: v_dual_mul_f32 v147, v157, v147
	v_dual_mul_f32 v151, v151, v157 :: v_dual_mul_f32 v148, v157, v148
	v_mul_f32_e32 v153, v153, v157
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_add_i32 s49, s50, 0x4000
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v42, v147, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s15, s14
	s_mov_b32 s15, s4
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v178
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_store_b32 v26, v1 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[28:31], v27 offset:33792
	ds_load_b128 v[33:36], v27 offset:33808
	ds_load_b128 v[37:40], v27 offset:34304
	ds_load_b128 v[141:144], v27 offset:34320
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v45, v146, v2
	v_fmac_f32_e32 v41, v148, v4
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_store_b16 v179, v32 offset:32768
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	ds_store_b128 v180, v[5:8]
	ds_store_b128 v180, v[165:168] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	ds_store_b128 v180, v[169:172] offset:16384
	ds_store_b128 v180, v[173:176] offset:20480
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(8)
	v_dual_fmac_f32 v43, v159, v28 :: v_dual_fmac_f32 v70, v162, v30
	v_dual_fmac_f32 v72, v158, v29 :: v_dual_fmac_f32 v71, v161, v31
	s_waitcnt lgkmcnt(7)
	v_dual_fmac_f32 v68, v164, v33 :: v_dual_fmac_f32 v69, v163, v34
	s_waitcnt lgkmcnt(6)
	v_fmac_f32_e32 v60, v149, v37
	v_fmac_f32_e32 v64, v181, v35
	v_dual_fmac_f32 v65, v177, v36 :: v_dual_fmac_f32 v56, v151, v39
	s_waitcnt lgkmcnt(5)
	v_dual_fmac_f32 v61, v150, v38 :: v_dual_fmac_f32 v52, v153, v141
	v_fmac_f32_e32 v57, v152, v40
	v_fmac_f32_e32 v53, v154, v142
	v_fmac_f32_e32 v47, v155, v143
	v_fmac_f32_e32 v49, v156, v144
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v23, v20
	v_mov_b32_e32 v1, v19
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s51, 0, 0x8200
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v43, 0
	s_add_i32 s50, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s49, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v154, 0
	v_cndmask_b32_e64 v1, 0x90, 0, vcc_lo
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v12, v1, v12
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cndmask_b32_e64 v1, 0, 1, s3
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v150, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_xor_b32_e32 v13, 16, v12
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v2, s0, v12
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v142, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v3, s0, v13
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cmp_ne_u32_e64 s0, 1, v1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[5:8], v2
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_b128 v[1:4], v3
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v144, 0
	v_mov_b32_e32 v143, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v18, s31, v102
	v_add_nc_u32_e32 v19, s31, v100
	v_add_nc_u32_e32 v16, s31, v105
	v_add_nc_u32_e32 v24, s31, v94
	v_add_nc_u32_e32 v17, s31, v104
	v_add_nc_u32_e32 v20, s31, v98
	v_add_nc_u32_e32 v21, s31, v96
	v_add_nc_u32_e32 v25, s31, v92
	v_add_nc_u32_e32 v26, s31, v90
	v_add_nc_u32_e32 v27, s31, v88
	v_add_nc_u32_e32 v28, s31, v86
	v_add_nc_u32_e32 v29, s31, v84
	v_add_nc_u32_e32 v30, s31, v82
	v_add_nc_u32_e32 v31, s31, v80
	v_add_nc_u32_e32 v32, s31, v78
	v_add_nc_u32_e32 v33, s31, v77
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v18, v18
	ds_load_u8 v19, v19
	ds_load_u8 v16, v16
	ds_load_u8 v24, v24
	ds_load_u8 v25, v25
	ds_load_u8 v20, v20
	ds_load_u8 v21, v21
	ds_load_u8 v17, v17
	ds_load_u8 v28, v28
	ds_load_u8 v29, v29
	ds_load_u8 v26, v26
	ds_load_u8 v32, v32
	ds_load_u8 v168, v33
	ds_load_u8 v30, v30
	ds_load_u8 v31, v31
	ds_load_u8 v27, v27
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v33, s31, v106
	v_add_nc_u32_e32 v34, s31, v103
	v_add_nc_u32_e32 v14, s31, v108
	v_add_nc_u32_e32 v170, s31, v97
	v_add_nc_u32_e32 v169, s31, v99
	v_add_nc_u32_e32 v171, s31, v95
	v_add_nc_u32_e32 v172, s31, v93
	v_add_nc_u32_e32 v173, s31, v91
	v_add_nc_u32_e32 v174, s31, v89
	v_add_nc_u32_e32 v175, s31, v87
	v_add_nc_u32_e32 v176, s31, v85
	v_add_nc_u32_e32 v177, s31, v83
	v_add_nc_u32_e32 v178, s31, v81
	v_add_nc_u32_e32 v15, s31, v107
	v_add_nc_u32_e32 v35, s31, v101
	v_add_nc_u32_e32 v179, s31, v79
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	v_perm_b32 v17, v25, v24, 0xc0c0004
	v_perm_b32 v19, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v27, v26, 0xc0c0004
	ds_load_u8 v24, v33
	ds_load_u8 v25, v34
	ds_load_u8 v26, v14
	ds_load_u8 v27, v170
	ds_load_u8 v28, v171
	ds_load_u8 v29, v35
	ds_load_u8 v169, v169
	ds_load_u8 v170, v15
	ds_load_u8 v171, v174
	ds_load_u8 v174, v175
	ds_load_u8 v172, v172
	ds_load_u8 v175, v178
	ds_load_u8 v178, v179
	ds_load_u8 v176, v176
	ds_load_u8 v177, v177
	ds_load_u8 v173, v173
	v_perm_b32 v14, v168, v32, 0xc0c0004
	v_perm_b32 v15, v31, v30, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v22, s31, v140
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v35, v16, 16, v18
	v_lshl_or_b32 v34, v19, 16, v17
	v_lshl_or_b32 v33, v21, 16, v20
	v_lshl_or_b32 v32, v15, 16, v14
	v_dual_mov_b32 v21, s11 :: v_dual_add_nc_u32 v36, s31, v139
	v_mov_b32_e32 v19, s9
	v_dual_mov_b32 v20, s10 :: v_dual_add_nc_u32 v37, s31, v138
	v_dual_mov_b32 v17, s7 :: v_dual_add_nc_u32 v38, s31, v137
	v_dual_mov_b32 v18, s8 :: v_dual_add_nc_u32 v39, s31, v136
	v_dual_mov_b32 v15, s5 :: v_dual_add_nc_u32 v40, s31, v135
	v_dual_mov_b32 v16, s6 :: v_dual_add_nc_u32 v141, s31, v134
	v_dual_mov_b32 v14, s4 :: v_dual_add_nc_u32 v143, s31, v132
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v153, s31, v122
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v168, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v170, v170, v26, 0xc0c0004
	v_perm_b32 v179, v28, v27, 0xc0c0004
	v_perm_b32 v169, v169, v29, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v171, v174, v171, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v154, s31, v121
	v_add_nc_u32_e32 v151, s31, v124
	v_add_nc_u32_e32 v158, s31, v118
	v_add_nc_u32_e32 v142, s31, v133
	v_add_nc_u32_e32 v144, s31, v131
	v_add_nc_u32_e32 v145, s31, v130
	v_add_nc_u32_e32 v146, s31, v129
	v_add_nc_u32_e32 v147, s31, v128
	v_add_nc_u32_e32 v148, s31, v127
	v_add_nc_u32_e32 v149, s31, v126
	v_add_nc_u32_e32 v150, s31, v125
	v_add_nc_u32_e32 v152, s31, v123
	v_add_nc_u32_e32 v155, s31, v120
	v_add_nc_u32_e32 v157, s31, v119
	v_add_nc_u32_e32 v159, s31, v117
	v_add_nc_u32_e32 v160, s31, v116
	v_add_nc_u32_e32 v161, s31, v115
	v_add_nc_u32_e32 v162, s31, v114
	v_add_nc_u32_e32 v163, s31, v113
	v_add_nc_u32_e32 v164, s31, v112
	v_add_nc_u32_e32 v165, s31, v111
	v_add_nc_u32_e32 v166, s31, v110
	v_add_nc_u32_e32 v167, s31, v109
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[24:31], v[32:35], v[5:8], v[14:21] neg_lo:[1,1,0]
	v_lshl_or_b32 v35, v170, 16, v168
	v_lshl_or_b32 v34, v169, 16, v179
	v_lshl_or_b32 v33, v172, 16, v171
	ds_load_u8 v153, v153
	ds_load_u8 v154, v154
	ds_load_u8 v151, v151
	ds_load_u8 v158, v158
	ds_load_u8 v159, v159
	ds_load_u8 v155, v155
	ds_load_u8 v157, v157
	ds_load_u8 v152, v152
	ds_load_u8 v162, v162
	ds_load_u8 v163, v163
	ds_load_u8 v160, v160
	ds_load_u8 v166, v166
	ds_load_u8 v167, v167
	ds_load_u8 v164, v164
	ds_load_u8 v165, v165
	ds_load_u8 v161, v161
	ds_load_u8 v168, v37
	ds_load_u8 v169, v38
	ds_load_u8 v22, v22
	ds_load_u8 v141, v141
	ds_load_u8 v142, v142
	ds_load_u8 v170, v39
	ds_load_u8 v40, v40
	ds_load_u8 v171, v36
	ds_load_u8 v145, v145
	ds_load_u8 v146, v146
	ds_load_u8 v143, v143
	ds_load_u8 v149, v149
	ds_load_u8 v150, v150
	ds_load_u8 v147, v147
	ds_load_u8 v148, v148
	ds_load_u8 v144, v144
	v_perm_b32 v32, v178, v175, 0xc0c0004
	v_perm_b32 v36, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v37, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v38, v152, v151, 0xc0c0004
	v_perm_b32 v151, v159, v158, 0xc0c0004
	v_perm_b32 v152, v157, v155, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v153, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v154, v161, v160, 0xc0c0004
	v_perm_b32 v155, v167, v166, 0xc0c0004
	v_perm_b32 v157, v165, v164, 0xc0c0004
	v_lshl_or_b32 v32, v36, 16, v32
	v_lshl_or_b32 v39, v38, 16, v37
	v_lshl_or_b32 v38, v152, 16, v151
	v_lshl_or_b32 v37, v154, 16, v153
	v_lshl_or_b32 v36, v157, 16, v155
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v151, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v22, v171, v22, 0xc0c0004
	v_perm_b32 v141, v142, v141, 0xc0c0004
	v_perm_b32 v40, v40, v170, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v142, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	v_perm_b32 v144, v150, v149, 0xc0c0004
	v_perm_b32 v145, v148, v147, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[14:21], v[36:39], v[5:8], v[14:21] neg_lo:[1,1,0]
	v_lshl_or_b32 v39, v22, 16, v151
	v_lshl_or_b32 v38, v40, 16, v141
	v_lshl_or_b32 v37, v143, 16, v142
	v_lshl_or_b32 v36, v145, 16, v144
	v_wmma_i32_16x16x16_iu8 v[24:31], v[32:35], v[1:4], v[24:31] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[14:21], v[36:39], v[1:4], v[14:21] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v153, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v154, v27
	v_cvt_f32_i32_e32 v147, v28
	v_cvt_f32_i32_e32 v151, v29
	v_cvt_f32_i32_e32 v148, v30
	v_cvt_f32_i32_e32 v152, v31
	v_cvt_f32_i32_e32 v145, v14
	v_cvt_f32_i32_e32 v149, v15
	v_cvt_f32_i32_e32 v146, v16
	v_cvt_f32_i32_e32 v150, v17
	v_cvt_f32_i32_e32 v141, v18
	v_cvt_f32_i32_e32 v143, v19
	v_cvt_f32_i32_e32 v142, v20
	v_cvt_f32_i32_e32 v144, v21
	v_cvt_f32_i32_e32 v155, v24
	v_cvt_f32_i32_e32 v157, v25
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v160, 0
	v_mov_b32_e32 v162, 0
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v19, s1, v102
	v_add_nc_u32_e32 v20, s1, v100
	v_add_nc_u32_e32 v17, s1, v105
	v_add_nc_u32_e32 v25, s1, v94
	v_add_nc_u32_e32 v18, s1, v104
	v_add_nc_u32_e32 v21, s1, v98
	v_add_nc_u32_e32 v24, s1, v96
	v_add_nc_u32_e32 v26, s1, v92
	v_add_nc_u32_e32 v29, s1, v86
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v17, v17
	ds_load_u8 v25, v25
	ds_load_u8 v26, v26
	ds_load_u8 v21, v21
	ds_load_u8 v24, v24
	ds_load_u8 v18, v18
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v30, s1, v84
	v_add_nc_u32_e32 v27, s1, v90
	v_add_nc_u32_e32 v33, s1, v78
	v_add_nc_u32_e32 v28, s1, v88
	v_add_nc_u32_e32 v31, s1, v82
	v_add_nc_u32_e32 v32, s1, v80
	v_add_nc_u32_e32 v34, s1, v77
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v29, v29
	ds_load_u8 v30, v30
	ds_load_u8 v27, v27
	ds_load_u8 v183, v33
	ds_load_u8 v184, v34
	ds_load_u8 v31, v31
	ds_load_u8 v32, v32
	ds_load_u8 v28, v28
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v16, s1, v106
	v_add_nc_u32_e32 v33, s1, v103
	v_add_nc_u32_e32 v14, s1, v108
	v_add_nc_u32_e32 v186, s1, v97
	v_add_nc_u32_e32 v185, s1, v99
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v187, s1, v95
	v_add_nc_u32_e32 v188, s1, v93
	v_add_nc_u32_e32 v189, s1, v91
	v_add_nc_u32_e32 v190, s1, v89
	v_add_nc_u32_e32 v191, s1, v87
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v192, s1, v81
	v_add_nc_u32_e32 v193, s1, v79
	v_add_nc_u32_e32 v15, s1, v107
	v_add_nc_u32_e32 v34, s1, v101
	v_add_nc_u32_e32 v18, s1, v85
	v_add_nc_u32_e32 v20, s1, v83
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v35, v17, 16, v19
	v_perm_b32 v17, v26, v25, 0xc0c0004
	v_perm_b32 v19, v24, v21, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v21, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v28, v27, 0xc0c0004
	ds_load_u8 v25, v16
	ds_load_u8 v26, v33
	ds_load_u8 v27, v14
	ds_load_u8 v28, v186
	ds_load_u8 v29, v187
	ds_load_u8 v30, v34
	ds_load_u8 v185, v185
	ds_load_u8 v186, v15
	ds_load_u8 v187, v190
	ds_load_u8 v190, v191
	ds_load_u8 v188, v188
	ds_load_u8 v191, v192
	ds_load_u8 v192, v193
	ds_load_u8 v193, v18
	ds_load_u8 v194, v20
	ds_load_u8 v189, v189
	v_perm_b32 v14, v184, v183, 0xc0c0004
	v_perm_b32 v15, v32, v31, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v22, s1, v140
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v34, v19, 16, v17
	v_lshl_or_b32 v33, v24, 16, v21
	v_lshl_or_b32 v32, v15, 16, v14
	v_dual_mov_b32 v21, s11 :: v_dual_add_nc_u32 v36, s1, v139
	v_mov_b32_e32 v19, s9
	v_dual_mov_b32 v20, s10 :: v_dual_add_nc_u32 v37, s1, v138
	v_dual_mov_b32 v17, s7 :: v_dual_add_nc_u32 v38, s1, v137
	v_dual_mov_b32 v18, s8 :: v_dual_add_nc_u32 v39, s1, v136
	v_dual_mov_b32 v15, s5 :: v_dual_add_nc_u32 v40, s1, v135
	v_dual_mov_b32 v16, s6 :: v_dual_add_nc_u32 v159, s1, v132
	v_dual_mov_b32 v14, s4 :: v_dual_add_nc_u32 v161, s1, v130
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v169, s1, v122
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v183, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v184, v186, v27, 0xc0c0004
	v_perm_b32 v186, v29, v28, 0xc0c0004
	v_perm_b32 v185, v185, v30, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v170, s1, v121
	v_add_nc_u32_e32 v167, s1, v124
	v_add_nc_u32_e32 v173, s1, v118
	v_add_nc_u32_e32 v156, s1, v134
	v_add_nc_u32_e32 v158, s1, v133
	v_add_nc_u32_e32 v160, s1, v131
	v_add_nc_u32_e32 v162, s1, v129
	v_add_nc_u32_e32 v163, s1, v128
	v_add_nc_u32_e32 v164, s1, v127
	v_add_nc_u32_e32 v165, s1, v126
	v_add_nc_u32_e32 v166, s1, v125
	v_add_nc_u32_e32 v168, s1, v123
	v_add_nc_u32_e32 v171, s1, v120
	v_add_nc_u32_e32 v172, s1, v119
	v_add_nc_u32_e32 v174, s1, v117
	v_add_nc_u32_e32 v175, s1, v116
	v_add_nc_u32_e32 v176, s1, v115
	v_add_nc_u32_e32 v177, s1, v114
	v_add_nc_u32_e32 v178, s1, v113
	v_add_nc_u32_e32 v179, s1, v112
	v_add_nc_u32_e32 v180, s1, v111
	v_add_nc_u32_e32 v181, s1, v110
	v_add_nc_u32_e32 v182, s1, v109
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[24:31], v[32:35], v[5:8], v[14:21] neg_lo:[1,1,0]
	v_lshl_or_b32 v35, v184, 16, v183
	v_lshl_or_b32 v34, v185, 16, v186
	ds_load_u8 v169, v169
	ds_load_u8 v170, v170
	ds_load_u8 v167, v167
	ds_load_u8 v173, v173
	ds_load_u8 v174, v174
	ds_load_u8 v171, v171
	ds_load_u8 v172, v172
	ds_load_u8 v168, v168
	ds_load_u8 v177, v177
	ds_load_u8 v178, v178
	ds_load_u8 v175, v175
	ds_load_u8 v181, v181
	ds_load_u8 v182, v182
	ds_load_u8 v179, v179
	ds_load_u8 v180, v180
	ds_load_u8 v176, v176
	ds_load_u8 v183, v37
	ds_load_u8 v184, v38
	ds_load_u8 v22, v22
	ds_load_u8 v156, v156
	ds_load_u8 v158, v158
	ds_load_u8 v185, v39
	ds_load_u8 v40, v40
	ds_load_u8 v186, v36
	ds_load_u8 v161, v161
	ds_load_u8 v162, v162
	ds_load_u8 v159, v159
	ds_load_u8 v165, v165
	ds_load_u8 v166, v166
	ds_load_u8 v163, v163
	ds_load_u8 v164, v164
	ds_load_u8 v160, v160
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v32, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v36, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v37, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v38, v168, v167, 0xc0c0004
	v_perm_b32 v167, v174, v173, 0xc0c0004
	v_perm_b32 v168, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v169, v178, v177, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v170, v176, v175, 0xc0c0004
	v_perm_b32 v171, v182, v181, 0xc0c0004
	v_perm_b32 v172, v180, v179, 0xc0c0004
	v_perm_b32 v187, v190, v187, 0xc0c0004
	v_perm_b32 v188, v189, v188, 0xc0c0004
	v_lshl_or_b32 v32, v36, 16, v32
	v_lshl_or_b32 v39, v38, 16, v37
	v_lshl_or_b32 v38, v168, 16, v167
	v_lshl_or_b32 v37, v170, 16, v169
	v_lshl_or_b32 v36, v172, 16, v171
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v167, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v22, v186, v22, 0xc0c0004
	v_perm_b32 v156, v158, v156, 0xc0c0004
	v_perm_b32 v40, v40, v185, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v158, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	v_perm_b32 v160, v166, v165, 0xc0c0004
	v_perm_b32 v161, v164, v163, 0xc0c0004
	v_lshl_or_b32 v33, v188, 16, v187
	v_wmma_i32_16x16x16_iu8 v[14:21], v[36:39], v[5:8], v[14:21] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v22, 16, v167
	v_lshl_or_b32 v7, v40, 16, v156
	v_lshl_or_b32 v6, v159, 16, v158
	v_lshl_or_b32 v5, v161, 16, v160
	v_wmma_i32_16x16x16_iu8 v[24:31], v[32:35], v[1:4], v[24:31] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[14:21], v[5:8], v[1:4], v[14:21] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v174, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v171, v26
	v_cvt_f32_i32_e32 v173, v27
	v_cvt_f32_i32_e32 v169, v28
	v_cvt_f32_i32_e32 v172, v29
	v_cvt_f32_i32_e32 v167, v30
	v_cvt_f32_i32_e32 v170, v31
	v_cvt_f32_i32_e32 v165, v14
	v_cvt_f32_i32_e32 v168, v15
	v_cvt_f32_i32_e32 v163, v16
	v_cvt_f32_i32_e32 v166, v17
	v_cvt_f32_i32_e32 v161, v18
	v_cvt_f32_i32_e32 v164, v19
	v_cvt_f32_i32_e32 v160, v20
	v_cvt_f32_i32_e32 v162, v21
	v_cvt_f32_i32_e32 v156, v24
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
	s_cmp_lt_i32 s0, s48
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v76, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v2, v75, s1, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s0
	v_dual_mov_b32 v190, 0 :: v_dual_and_b32 v3, 32, v23
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	v_add3_u32 v208, s26, s27, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_add3_u32 v3, 0, v11, v3
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_and_b32 s13, s13, 0xffff
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v159, 0, v9
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v4, v208, s1, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_add_nc_u32_e32 v158, v3, v10
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v207, v1, s[12:15], 0 offen
	v_dual_mov_b32 v184, 0 :: v_dual_add_nc_u32 v17, s51, v12
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v18, s51, v13
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v180, 0
	v_mov_b32_e32 v179, 0
	v_mov_b32_e32 v183, 0
	v_mov_b32_e32 v177, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_and_not1_b32 vcc_lo, exec_lo, s2
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v186, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v158, v2 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v1, v3, s[28:31], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cndmask_b32_e64 v2, 0, 1, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[13:16], v159 offset:33792
	ds_load_b128 v[9:12], v159 offset:33808
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[5:8], v159 offset:34304
	ds_load_b128 v[1:4], v159 offset:34320
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v158, v19 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[37:40], v17
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_b128 v[33:36], v18
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v21, s50, v102
	v_add_nc_u32_e32 v22, s50, v100
	v_add_nc_u32_e32 v19, s50, v105
	v_add_nc_u32_e32 v25, s50, v94
	v_add_nc_u32_e32 v20, s50, v104
	v_add_nc_u32_e32 v23, s50, v98
	v_add_nc_u32_e32 v24, s50, v96
	v_add_nc_u32_e32 v26, s50, v92
	v_add_nc_u32_e32 v27, s50, v90
	v_add_nc_u32_e32 v28, s50, v88
	v_add_nc_u32_e32 v29, s50, v86
	v_add_nc_u32_e32 v30, s50, v84
	v_add_nc_u32_e32 v31, s50, v82
	v_add_nc_u32_e32 v32, s50, v80
	v_add_nc_u32_e32 v176, s50, v78
	v_add_nc_u32_e32 v177, s50, v77
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v21, v21
	ds_load_u8 v22, v22
	ds_load_u8 v19, v19
	ds_load_u8 v25, v25
	ds_load_u8 v26, v26
	ds_load_u8 v23, v23
	ds_load_u8 v24, v24
	ds_load_u8 v20, v20
	ds_load_u8 v29, v29
	ds_load_u8 v30, v30
	ds_load_u8 v27, v27
	ds_load_u8 v176, v176
	ds_load_u8 v214, v177
	ds_load_u8 v31, v31
	ds_load_u8 v32, v32
	ds_load_u8 v28, v28
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v177, s50, v106
	v_add_nc_u32_e32 v178, s50, v103
	v_add_nc_u32_e32 v17, s50, v108
	v_add_nc_u32_e32 v216, s50, v97
	v_add_nc_u32_e32 v215, s50, v99
	v_add_nc_u32_e32 v217, s50, v95
	v_add_nc_u32_e32 v218, s50, v93
	v_add_nc_u32_e32 v219, s50, v91
	v_add_nc_u32_e32 v220, s50, v89
	v_add_nc_u32_e32 v221, s50, v87
	v_add_nc_u32_e32 v222, s50, v85
	v_add_nc_u32_e32 v223, s50, v83
	v_add_nc_u32_e32 v224, s50, v81
	v_add_nc_u32_e32 v18, s50, v107
	v_add_nc_u32_e32 v179, s50, v101
	v_add_nc_u32_e32 v225, s50, v79
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_perm_b32 v20, v26, v25, 0xc0c0004
	v_perm_b32 v22, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v23, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v28, v27, 0xc0c0004
	ds_load_u8 v25, v177
	ds_load_u8 v26, v178
	ds_load_u8 v27, v17
	ds_load_u8 v28, v216
	ds_load_u8 v29, v217
	ds_load_u8 v30, v179
	ds_load_u8 v215, v215
	ds_load_u8 v216, v18
	ds_load_u8 v217, v220
	ds_load_u8 v220, v221
	ds_load_u8 v218, v218
	ds_load_u8 v221, v224
	ds_load_u8 v224, v225
	ds_load_u8 v222, v222
	ds_load_u8 v223, v223
	ds_load_u8 v219, v219
	v_perm_b32 v17, v214, v176, 0xc0c0004
	v_perm_b32 v18, v32, v31, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v181, s50, v139
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v179, v19, 16, v21
	v_lshl_or_b32 v178, v22, 16, v20
	v_lshl_or_b32 v177, v24, 16, v23
	v_lshl_or_b32 v176, v18, 16, v17
	v_mov_b32_e32 v24, s11
	v_dual_mov_b32 v23, s10 :: v_dual_add_nc_u32 v180, s50, v140
	v_dual_mov_b32 v21, s8 :: v_dual_add_nc_u32 v182, s50, v138
	v_dual_mov_b32 v22, s9 :: v_dual_add_nc_u32 v183, s50, v137
	v_dual_mov_b32 v19, s6 :: v_dual_add_nc_u32 v184, s50, v136
	v_dual_mov_b32 v20, s7 :: v_dual_add_nc_u32 v185, s50, v135
	v_dual_mov_b32 v17, s4 :: v_dual_add_nc_u32 v186, s50, v134
	v_dual_mov_b32 v18, s5 :: v_dual_add_nc_u32 v187, s50, v133
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v198, s50, v122
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v214, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v216, v216, v27, 0xc0c0004
	v_perm_b32 v225, v29, v28, 0xc0c0004
	v_perm_b32 v215, v215, v30, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v217, v220, v217, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v218, v219, v218, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v199, s50, v121
	v_add_nc_u32_e32 v196, s50, v124
	v_add_nc_u32_e32 v202, s50, v118
	v_add_nc_u32_e32 v188, s50, v132
	v_add_nc_u32_e32 v189, s50, v131
	v_add_nc_u32_e32 v190, s50, v130
	v_add_nc_u32_e32 v191, s50, v129
	v_add_nc_u32_e32 v192, s50, v128
	v_add_nc_u32_e32 v193, s50, v127
	v_add_nc_u32_e32 v194, s50, v126
	v_add_nc_u32_e32 v195, s50, v125
	v_add_nc_u32_e32 v197, s50, v123
	v_add_nc_u32_e32 v200, s50, v120
	v_add_nc_u32_e32 v201, s50, v119
	v_add_nc_u32_e32 v203, s50, v117
	v_add_nc_u32_e32 v204, s50, v116
	v_add_nc_u32_e32 v205, s50, v115
	v_add_nc_u32_e32 v206, s50, v114
	v_add_nc_u32_e32 v209, s50, v113
	v_add_nc_u32_e32 v210, s50, v112
	v_add_nc_u32_e32 v211, s50, v111
	v_add_nc_u32_e32 v212, s50, v110
	v_add_nc_u32_e32 v213, s50, v109
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[25:32], v[176:179], v[37:40], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v179, v216, 16, v214
	v_lshl_or_b32 v178, v215, 16, v225
	v_lshl_or_b32 v177, v218, 16, v217
	ds_load_u8 v198, v198
	ds_load_u8 v199, v199
	ds_load_u8 v196, v196
	ds_load_u8 v202, v202
	ds_load_u8 v203, v203
	ds_load_u8 v200, v200
	ds_load_u8 v201, v201
	ds_load_u8 v197, v197
	ds_load_u8 v206, v206
	ds_load_u8 v209, v209
	ds_load_u8 v204, v204
	ds_load_u8 v212, v212
	ds_load_u8 v213, v213
	ds_load_u8 v210, v210
	ds_load_u8 v211, v211
	ds_load_u8 v205, v205
	ds_load_u8 v214, v182
	ds_load_u8 v215, v183
	ds_load_u8 v216, v180
	ds_load_u8 v186, v186
	ds_load_u8 v187, v187
	ds_load_u8 v184, v184
	ds_load_u8 v185, v185
	ds_load_u8 v217, v181
	ds_load_u8 v190, v190
	ds_load_u8 v191, v191
	ds_load_u8 v188, v188
	ds_load_u8 v194, v194
	ds_load_u8 v195, v195
	ds_load_u8 v192, v192
	ds_load_u8 v193, v193
	ds_load_u8 v189, v189
	v_perm_b32 v176, v224, v221, 0xc0c0004
	v_perm_b32 v180, v223, v222, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v181, v199, v198, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v182, v197, v196, 0xc0c0004
	v_perm_b32 v196, v203, v202, 0xc0c0004
	v_perm_b32 v197, v201, v200, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v198, v209, v206, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v199, v205, v204, 0xc0c0004
	v_perm_b32 v200, v213, v212, 0xc0c0004
	v_perm_b32 v201, v211, v210, 0xc0c0004
	v_lshl_or_b32 v176, v180, 16, v176
	v_lshl_or_b32 v183, v182, 16, v181
	v_lshl_or_b32 v182, v197, 16, v196
	v_lshl_or_b32 v181, v199, 16, v198
	v_lshl_or_b32 v180, v201, 16, v200
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v196, v215, v214, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v197, v217, v216, 0xc0c0004
	v_perm_b32 v186, v187, v186, 0xc0c0004
	v_perm_b32 v184, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v185, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v189, v188, 0xc0c0004
	v_perm_b32 v188, v195, v194, 0xc0c0004
	v_perm_b32 v189, v193, v192, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[180:183], v[37:40], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v183, v197, 16, v196
	v_lshl_or_b32 v182, v184, 16, v186
	v_lshl_or_b32 v181, v187, 16, v185
	v_lshl_or_b32 v180, v189, 16, v188
	v_wmma_i32_16x16x16_iu8 v[25:32], v[176:179], v[33:36], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[180:183], v[33:36], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v185, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v189, v28
	v_cvt_f32_i32_e32 v178, v29
	v_cvt_f32_i32_e32 v184, v30
	v_cvt_f32_i32_e32 v181, v31
	v_cvt_f32_i32_e32 v186, v32
	v_cvt_f32_i32_e32 v182, v17
	v_cvt_f32_i32_e32 v187, v18
	v_cvt_f32_i32_e32 v183, v19
	v_cvt_f32_i32_e32 v188, v20
	v_cvt_f32_i32_e32 v176, v21
	v_cvt_f32_i32_e32 v179, v22
	v_cvt_f32_i32_e32 v177, v23
	v_cvt_f32_i32_e32 v180, v24
	v_cvt_f32_i32_e32 v190, v25
	v_cvt_f32_i32_e32 v191, v26
.LBB0_14:
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_b128 v[29:32], v159 offset:33792
	ds_load_b128 v[25:28], v159 offset:33808
	ds_load_b128 v[21:24], v159 offset:34304
	ds_load_b128 v[17:20], v159 offset:34320
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v197, 0
	v_mov_b32_e32 v192, 0
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v102, s49, v102
	v_add_nc_u32_e32 v100, s49, v100
	v_add_nc_u32_e32 v105, s49, v105
	v_add_nc_u32_e32 v94, s49, v94
	v_add_nc_u32_e32 v98, s49, v98
	v_add_nc_u32_e32 v96, s49, v96
	v_add_nc_u32_e32 v92, s49, v92
	v_add_nc_u32_e32 v104, s49, v104
	v_add_nc_u32_e32 v86, s49, v86
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v102, v102
	ds_load_u8 v100, v100
	ds_load_u8 v105, v105
	ds_load_u8 v94, v94
	ds_load_u8 v92, v92
	ds_load_u8 v98, v98
	ds_load_u8 v175, v96
	ds_load_u8 v96, v104
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v84, s49, v84
	v_add_nc_u32_e32 v90, s49, v90
	v_add_nc_u32_e32 v78, s49, v78
	v_add_nc_u32_e32 v88, s49, v88
	v_add_nc_u32_e32 v82, s49, v82
	v_add_nc_u32_e32 v80, s49, v80
	v_add_nc_u32_e32 v77, s49, v77
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v86, v86
	ds_load_u8 v84, v84
	ds_load_u8 v90, v90
	ds_load_u8 v78, v78
	ds_load_u8 v77, v77
	ds_load_u8 v82, v82
	ds_load_u8 v80, v80
	ds_load_u8 v88, v88
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v106, s49, v106
	v_add_nc_u32_e32 v103, s49, v103
	v_add_nc_u32_e32 v108, s49, v108
	v_add_nc_u32_e32 v97, s49, v97
	v_add_nc_u32_e32 v107, s49, v107
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v100, v100, v102, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v101, s49, v101
	v_add_nc_u32_e32 v99, s49, v99
	v_add_nc_u32_e32 v95, s49, v95
	v_add_nc_u32_e32 v89, s49, v89
	v_add_nc_u32_e32 v87, s49, v87
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v96, v96, v105, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v85, s49, v85
	v_add_nc_u32_e32 v93, s49, v93
	v_add_nc_u32_e32 v91, s49, v91
	v_add_nc_u32_e32 v83, s49, v83
	v_add_nc_u32_e32 v81, s49, v81
	v_add_nc_u32_e32 v79, s49, v79
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v96, v96, 16, v100
	v_perm_b32 v92, v92, v94, 0xc0c0004
	v_perm_b32 v94, v175, v98, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v84, v84, v86, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v88, v90, 0xc0c0004
	ds_load_u8 v88, v106
	ds_load_u8 v90, v103
	ds_load_u8 v98, v108
	ds_load_u8 v97, v97
	ds_load_u8 v100, v95
	ds_load_u8 v101, v101
	ds_load_u8 v99, v99
	ds_load_u8 v102, v107
	ds_load_u8 v89, v89
	ds_load_u8 v87, v87
	ds_load_u8 v103, v93
	ds_load_u8 v104, v81
	ds_load_u8 v105, v79
	ds_load_u8 v106, v85
	ds_load_u8 v107, v83
	ds_load_u8 v85, v91
	v_perm_b32 v77, v77, v78, 0xc0c0004
	v_perm_b32 v78, v80, v82, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v139, s49, v139
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v95, v94, 16, v92
	v_lshl_or_b32 v94, v86, 16, v84
	v_lshl_or_b32 v93, v78, 16, v77
	v_mov_b32_e32 v84, s11
	v_dual_mov_b32 v83, s10 :: v_dual_add_nc_u32 v140, s49, v140
	v_dual_mov_b32 v81, s8 :: v_dual_add_nc_u32 v138, s49, v138
	v_dual_mov_b32 v82, s9 :: v_dual_add_nc_u32 v137, s49, v137
	v_dual_mov_b32 v79, s6 :: v_dual_add_nc_u32 v136, s49, v136
	v_dual_mov_b32 v80, s7 :: v_dual_add_nc_u32 v135, s49, v135
	v_dual_mov_b32 v77, s4 :: v_dual_add_nc_u32 v134, s49, v134
	v_dual_mov_b32 v78, s5 :: v_dual_add_nc_u32 v133, s49, v133
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v122, s49, v122
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v108, v90, v88, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v98, v102, v98, 0xc0c0004
	v_perm_b32 v97, v100, v97, 0xc0c0004
	v_perm_b32 v99, v99, v101, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v100, v87, v89, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v85, v103, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v121, s49, v121
	v_add_nc_u32_e32 v124, s49, v124
	v_add_nc_u32_e32 v118, s49, v118
	v_add_nc_u32_e32 v130, s49, v130
	v_add_nc_u32_e32 v129, s49, v129
	v_add_nc_u32_e32 v128, s49, v128
	v_add_nc_u32_e32 v127, s49, v127
	v_add_nc_u32_e32 v126, s49, v126
	v_add_nc_u32_e32 v125, s49, v125
	v_add_nc_u32_e32 v123, s49, v123
	v_add_nc_u32_e32 v120, s49, v120
	v_add_nc_u32_e32 v119, s49, v119
	v_add_nc_u32_e32 v117, s49, v117
	v_add_nc_u32_e32 v116, s49, v116
	v_add_nc_u32_e32 v115, s49, v115
	v_add_nc_u32_e32 v114, s49, v114
	v_add_nc_u32_e32 v113, s49, v113
	v_add_nc_u32_e32 v112, s49, v112
	v_add_nc_u32_e32 v111, s49, v111
	v_add_nc_u32_e32 v110, s49, v110
	v_add_nc_u32_e32 v109, s49, v109
	v_add_nc_u32_e32 v132, s49, v132
	v_add_nc_u32_e32 v131, s49, v131
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[85:92], v[93:96], v[37:40], v[77:84] neg_lo:[1,1,0]
	v_lshl_or_b32 v96, v98, 16, v108
	v_lshl_or_b32 v95, v99, 16, v97
	v_lshl_or_b32 v94, v101, 16, v100
	v_perm_b32 v93, v105, v104, 0xc0c0004
	ds_load_u8 v97, v122
	ds_load_u8 v98, v121
	ds_load_u8 v99, v124
	ds_load_u8 v100, v118
	ds_load_u8 v101, v117
	ds_load_u8 v102, v120
	ds_load_u8 v103, v119
	ds_load_u8 v104, v123
	ds_load_u8 v105, v114
	ds_load_u8 v108, v113
	ds_load_u8 v113, v116
	ds_load_u8 v110, v110
	ds_load_u8 v109, v109
	ds_load_u8 v112, v112
	ds_load_u8 v111, v111
	ds_load_u8 v114, v115
	ds_load_u8 v115, v138
	ds_load_u8 v116, v137
	ds_load_u8 v117, v140
	ds_load_u8 v118, v134
	ds_load_u8 v119, v133
	ds_load_u8 v120, v136
	ds_load_u8 v121, v135
	ds_load_u8 v122, v139
	ds_load_u8 v123, v130
	ds_load_u8 v124, v129
	ds_load_u8 v129, v132
	ds_load_u8 v126, v126
	ds_load_u8 v125, v125
	ds_load_u8 v128, v128
	ds_load_u8 v127, v127
	ds_load_u8 v130, v131
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v98, v104, v99, 0xc0c0004
	v_perm_b32 v99, v101, v100, 0xc0c0004
	v_perm_b32 v101, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v102, v108, v105, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v103, v114, v113, 0xc0c0004
	v_perm_b32 v104, v109, v110, 0xc0c0004
	v_perm_b32 v105, v111, v112, 0xc0c0004
	v_lshl_or_b32 v93, v106, 16, v93
	v_lshl_or_b32 v100, v98, 16, v97
	v_lshl_or_b32 v99, v101, 16, v99
	v_lshl_or_b32 v98, v103, 16, v102
	v_lshl_or_b32 v97, v105, 16, v104
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v101, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v102, v122, v117, 0xc0c0004
	v_perm_b32 v103, v119, v118, 0xc0c0004
	v_perm_b32 v104, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v105, v124, v123, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v130, v129, 0xc0c0004
	v_perm_b32 v107, v125, v126, 0xc0c0004
	v_perm_b32 v108, v127, v128, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[77:84], v[97:100], v[37:40], v[77:84] neg_lo:[1,1,0]
	v_lshl_or_b32 v40, v102, 16, v101
	v_lshl_or_b32 v39, v104, 16, v103
	v_lshl_or_b32 v38, v106, 16, v105
	v_lshl_or_b32 v37, v108, 16, v107
	v_wmma_i32_16x16x16_iu8 v[85:92], v[93:96], v[33:36], v[85:92] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[77:84], v[37:40], v[33:36], v[77:84] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v175, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v203, v86
	v_cvt_f32_i32_e32 v201, v87
	v_cvt_f32_i32_e32 v206, v88
	v_cvt_f32_i32_e32 v194, v89
	v_cvt_f32_i32_e32 v200, v90
	v_cvt_f32_i32_e32 v198, v91
	v_cvt_f32_i32_e32 v204, v92
	v_cvt_f32_i32_e32 v196, v77
	v_cvt_f32_i32_e32 v202, v78
	v_cvt_f32_i32_e32 v199, v79
	v_cvt_f32_i32_e32 v205, v80
	v_cvt_f32_i32_e32 v192, v81
	v_cvt_f32_i32_e32 v195, v82
	v_cvt_f32_i32_e32 v193, v83
	v_cvt_f32_i32_e32 v197, v84
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
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e32 v36.l, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s0, 5
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_mov_b16_e64 v36.h, v207.l
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s34
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s48
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v33, v76, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v34, v75, s1, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v37, s27, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s33, s33, s27
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v39, 0x7632 :: v_dual_mul_f32 v88, v156, v36
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v35, v34, s[28:31], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v34, v33, s[12:15], 0 offen
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v33, v208, s1, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 16, v0
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v87, v174, v36
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v37, s33, s26, v37
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v29, v88, v29, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v84.h, v36.l
	v_mov_b16_e32 v85.h, v36.l
	v_mov_b16_e32 v86.h, v36.l
	v_mov_b16_e32 v73.h, v36.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v43, v29, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v80.h, v36.l
	v_mov_b16_e32 v40.h, v36.l
	v_mov_b16_e32 v77.h, v36.l
	v_mov_b16_e32 v81.h, v36.l
	v_mov_b16_e32 v83.h, v36.l
	v_mov_b16_e32 v82.h, v36.l
	v_mov_b16_e32 v79.h, v36.l
	v_mov_b16_e32 v78.h, v36.l
	v_mov_b16_e32 v76.h, v36.l
	v_mov_b16_e32 v75.h, v36.l
	s_mov_b32 s15, 0x76543210
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v0, 0x5410 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v111, v164, v36 :: v_dual_lshlrev_b32 v34, 16, v34
	v_mul_f32_e32 v96, v169, v36
	v_mul_f32_e32 v95, v172, v36
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v158, v35 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v18, v111, v18, v53
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v108, v163, v36
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v89, v157, v36
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v35, 1, v74
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v104, v165, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v53, v18, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v53, v203, v34
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v25, v96, v25, v68
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v114, v141, v36
	v_mul_f32_e32 v93, v154, v36
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v107, v166, v36
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v30, v87, v30, v72
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v68, v25, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v186, v34
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v26, v95, v26, v69
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v87, v114, v1, v44
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v1, v37, v35, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v92, v171, v36
	v_mul_f32_e32 v100, v167, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v69, v26, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v69, v181, v34
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v23, v108, v23, v56
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v115, v162, v36
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v24, v107, v24, v57
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v90, v155, v36
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v91, v173, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v56, v23, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v56, v175, v34
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v14, v89, v14, v67
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v99, v170, v36
	v_dual_mul_f32 v103, v168, v36 :: v_dual_mul_f32 v88, v202, v34
	v_mul_f32_e32 v116, v160, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v67, v14, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v67, v194, v34
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v21, v104, v21, v60
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v57, v24, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v57, v189, v34
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v31, v92, v31, v70
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v94, v153, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v60, v21, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v60, v185, v34
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v16, v93, v16, v63
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v97, v151, v36
	v_mul_f32_e32 v98, v147, v36
	v_mul_f32_e32 v106, v145, v36
	v_mul_f32_e32 v113, v143, v36
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v63, v16, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v63, v201, v34
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v27, v100, v27, v64
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v100, v197, v34
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v20, v115, v20, v49
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v117, v144, v36
	v_dual_mul_f32 v118, v142, v36 :: v_dual_mul_f32 v95, v176, v34
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v22, v103, v22, v61
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v70, v31, s3
	v_cndmask_b32_e64 v27, v64, v27, s3
	v_cndmask_b32_e64 v20, v49, v20, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v49, v190, v34
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v13, v90, v13, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v184, v34
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v32, v91, v32, v71
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v70, v204, v34
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v28, v99, v28, v65
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v93, v199, v34
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v19, v116, v19, v47
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v101, v152, v36
	v_mul_f32_e32 v102, v148, v36
	v_dual_mul_f32 v105, v149, v36 :: v_dual_mul_f32 v90, v188, v34
	v_mul_f32_e32 v109, v150, v36
	v_dual_mul_f32 v110, v146, v36 :: v_dual_mul_f32 v89, v196, v34
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v112, v161, v36
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v3, v118, v3, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v72, v30, s3
	v_cndmask_b32_e64 v37, v66, v13, s3
	v_cndmask_b32_e64 v32, v71, v32, s3
	v_cndmask_b32_e64 v28, v65, v28, s3
	v_cndmask_b32_e64 v22, v61, v22, s3
	v_cndmask_b32_e64 v44, v44, v87, s3
	v_cndmask_b32_e64 v19, v47, v19, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v47, v191, v34
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v15, v94, v15, v62
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v61, v206, v34
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v9, v98, v9, v58
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v65, v178, v34
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v66, v200, v34
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v10, v97, v10, v59
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v71, v198, v34
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v5, v106, v5, v50
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v72, v187, v34
	v_mul_f32_e32 v87, v182, v34
	v_mul_f32_e32 v91, v183, v34
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v92, v205, v34
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v94, v179, v34
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v96, v195, v34
	v_mul_f32_e32 v97, v192, v34
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v98, v180, v34
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v2, v113, v2, v45
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v99, v177, v34
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v34, v193, v34
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v4, v117, v4, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v50, v5, s3
	v_cndmask_b32_e64 v45, v45, v2, s3
	v_cndmask_b32_e64 v42, v42, v3, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v11, v102, v11, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v4, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[2:5], v159 offset:33792
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v12, v101, v12, v55
	v_fma_f32 v6, v105, v6, v51
	v_fma_f32 v7, v110, v7, v46
	v_fma_f32 v8, v109, v8, v48
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v17, v112, v17, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v62, v15, s3
	v_cndmask_b32_e64 v59, v59, v10, s3
	v_cndmask_b32_e64 v58, v58, v9, s3
	v_cndmask_b32_e64 v55, v55, v12, s3
	v_cndmask_b32_e64 v54, v54, v11, s3
	v_cndmask_b32_e64 v51, v51, v6, s3
	v_cndmask_b32_e64 v48, v48, v8, s3
	v_cndmask_b32_e64 v46, v46, v7, s3
	v_cndmask_b32_e64 v52, v52, v17, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[6:9], v159 offset:33808
	ds_load_b128 v[10:13], v159 offset:34304
	ds_load_b128 v[14:17], v159 offset:34320
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v49, v49, v2, v37
	v_fma_f32 v47, v47, v3, v35
	v_fma_f32 v60, v60, v4, v62
	v_fma_f32 v57, v57, v5, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v74.h, v36.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v49, s2
	v_cndmask_b32_e64 v35, v35, v47, s2
	v_cndmask_b32_e64 v47, v62, v60, s2
	v_cndmask_b32_e64 v43, v43, v57, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.h, v36.l
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v65, v65, v6, v58
	v_fma_f32 v64, v64, v7, v59
	v_fma_f32 v69, v69, v8, v54
	v_fma_f32 v68, v68, v9, v55
	v_fma_f32 v87, v87, v10, v50
	v_fma_f32 v72, v72, v11, v51
	v_fma_f32 v91, v91, v12, v46
	v_fma_f32 v90, v90, v13, v48
	v_fma_f32 v94, v94, v15, v45
	v_fma_f32 v98, v98, v17, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v59, v64, s2
	v_cndmask_b32_e64 v57, v58, v65, s2
	v_cndmask_b32_e64 v55, v55, v68, s2
	v_cndmask_b32_e64 v54, v54, v69, s2
	v_cndmask_b32_e64 v51, v51, v72, s2
	v_cndmask_b32_e64 v50, v50, v87, s2
	v_cndmask_b32_e64 v48, v48, v90, s2
	v_cndmask_b32_e64 v46, v46, v91, s2
	v_cndmask_b32_e64 v45, v45, v94, s2
	v_cndmask_b32_e64 v41, v41, v98, s2
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v33
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v95, v14, v44
	v_fma_f32 v95, v99, v16, v42
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_store_b32 v158, v2 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v159 offset:33792
	ds_load_b128 v[6:9], v159 offset:33808
	ds_load_b128 v[10:13], v159 offset:34304
	ds_load_b128 v[14:17], v159 offset:34320
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v44, v33, s2
	v_cndmask_b32_e64 v42, v42, v95, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(3)
	v_fma_f32 v2, v56, v2, v29
	v_fma_f32 v3, v53, v3, v30
	v_fma_f32 v5, v61, v5, v32
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v6, v67, v6, v25
	v_fma_f32 v9, v70, v9, v28
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v15, v96, v15, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v29, v2, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v4, v63, v4, v31
	v_fma_f32 v10, v89, v10, v21
	v_fma_f32 v11, v88, v11, v22
	v_fma_f32 v16, v34, v16, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v30, v3, s2
	v_cndmask_b32_e64 v5, v32, v5, s2
	v_cndmask_b32_e64 v6, v25, v6, s2
	v_cndmask_b32_e64 v9, v28, v9, s2
	v_cndmask_b32_e64 v15, v18, v15, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v7, v66, v7, v26
	v_fma_f32 v8, v71, v8, v27
	v_fma_f32 v17, v100, v17, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v31, v4, s2
	v_cndmask_b32_e64 v11, v22, v11, s2
	v_cndmask_b32_e64 v10, v21, v10, s2
	v_cndmask_b32_e64 v16, v19, v16, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v3
	v_dual_mul_f32 v21, 0xbfb8aa3b, v5 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v6
	v_mul_f32_e32 v25, 0xbfb8aa3b, v9
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v12, v93, v12, v23
	v_fma_f32 v13, v92, v13, v24
	v_fma_f32 v14, v97, v14, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v26, v7, s2
	v_cndmask_b32_e64 v8, v27, v8, s2
	v_cndmask_b32_e64 v17, v20, v17, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v20, 0xbfb8aa3b, v4
	v_mul_f32_e32 v26, 0xbfb8aa3b, v10
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v21
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v22
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v24, v13, s2
	v_cndmask_b32_e64 v12, v23, v12, s2
	v_cndmask_b32_e64 v14, v52, v14, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v23, 0xbfb8aa3b, v7 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v27, 0xbfb8aa3b, v11 :: v_dual_mul_f32 v28, 0xbfb8aa3b, v12
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v20
	v_cndmask_b32_e64 v22, 0, 0x42800000, s4
	v_cndmask_b32_e64 v25, 0, 0x42800000, s5
	v_dual_fmac_f32 v18, 0xbfb8aa3b, v2 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v20, 0, 0x42800000, s2
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v23
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v24
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v27
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v6 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v9
	v_exp_f32_e32 v18, v18
	v_dual_mul_f32 v29, 0xbfb8aa3b, v13 :: v_dual_mul_f32 v30, 0xbfb8aa3b, v14
	v_cndmask_b32_e64 v23, 0, 0x42800000, s3
	v_cndmask_b32_e64 v24, 0, 0x42800000, s6
	v_cndmask_b32_e64 v27, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v26
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v4 :: v_dual_fmac_f32 v23, 0xbfb8aa3b, v7
	v_exp_f32_e32 v25, v25
	v_dual_mul_f32 v31, 0xbfb8aa3b, v15 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v29
	v_cndmask_b32_e64 v26, 0, 0x42800000, s8
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s5
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v8 :: v_dual_fmac_f32 v27, 0xbfb8aa3b, v11
	v_exp_f32_e32 v21, v21
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v18, v18, v52
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v34, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v28
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v31
	v_cndmask_b32_e64 v29, 0, 0x42800000, s9
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v10
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v25, v25, v60
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0x42800000, s10
	v_cndmask_b32_e64 v31, 0, 0x42800000, s11
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v34
	v_exp_f32_e32 v23, v23
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v13
	v_exp_f32_e32 v22, v22
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s7
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v21, v21, v53
	v_ldexp_f32 v20, v20, v56
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v53, null, v18, v18, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, s13
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s3
	v_dual_fmac_f32 v28, 0xbfb8aa3b, v12 :: v_dual_fmac_f32 v31, 0xbfb8aa3b, v15
	v_exp_f32_e32 v24, v24
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v30
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s4
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v29, v29
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s8
	v_ldexp_f32 v27, v27, v62
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v101, v53
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v32
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s6
	v_exp_f32_e32 v31, v31
	v_ldexp_f32 v23, v23, v58
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v17
	v_cndmask_b32_e64 v30, 0, 0x42800000, s12
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s9
	v_ldexp_f32 v22, v22, v59
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v26, v26, v63
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v60, null, v20, v20, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0x42800000, s14
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s11
	v_ldexp_f32 v24, v24, v61
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v34
	v_ldexp_f32 v19, v19, v44
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v14
	v_ldexp_f32 v29, v29, v64
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v103, v60
	v_fma_f32 v117, -v53, v101, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s13
	v_dual_fmac_f32 v32, 0xbfb8aa3b, v16 :: v_dual_add_f32 v21, 1.0, v21
	v_ldexp_f32 v31, v31, v66
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_add_f32 v19, 1.0, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v30, v30
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v22, v22, v6
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v28, v28, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v101, v117, v101
	v_div_scale_f32 v72, null, v26, v26, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v32, v32
	v_ldexp_f32 v34, v34, v68
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, null, v24, v24, v8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v105, v64
	v_div_scale_f32 v44, null, v19, v19, v3
	v_rcp_f32_e32 v109, v72
	v_fma_f32 v119, -v60, v103, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v107, v68
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v30, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v100, v44
	v_fmac_f32_e32 v103, v119, v103
	v_div_scale_f32 v90, null, v28, v28, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v32, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v58, null, v21, v21, v5
	v_div_scale_f32 v66, null, v25, v25, v9
	v_fma_f32 v121, -v64, v105, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v92, null, v31, v31, v15
	v_rcp_f32_e32 v111, v90
	v_fma_f32 v125, -v72, v109, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v62, null, v23, v23, v7
	v_div_scale_f32 v88, null, v29, v29, v13
	v_fma_f32 v123, -v68, v107, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v102, v58
	v_rcp_f32_e32 v106, v66
	v_fmac_f32_e32 v105, v121, v105
	v_div_scale_f32 v94, null, v30, v30, v14
	v_div_scale_f32 v70, null, v27, v27, v11
	v_rcp_f32_e32 v112, v92
	v_fma_f32 v116, -v44, v100, 1.0
	v_fmac_f32_e32 v109, v125, v109
	v_div_scale_f32 v96, null, v34, v34, v17
	v_rcp_f32_e32 v104, v62
	v_rcp_f32_e32 v110, v88
	v_fmac_f32_e32 v107, v123, v107
	v_div_scale_f32 v98, null, v32, v32, v16
	v_rcp_f32_e32 v113, v94
	v_rcp_f32_e32 v108, v70
	v_div_scale_f32 v52, vcc_lo, v3, v19, v3
	v_rcp_f32_e32 v114, v96
	v_fma_f32 v127, -v90, v111, 1.0
	v_fmac_f32_e32 v100, v116, v100
	v_rcp_f32_e32 v115, v98
	v_div_scale_f32 v56, s0, v2, v18, v2
	v_fma_f32 v118, -v58, v102, 1.0
	v_fma_f32 v122, -v66, v106, 1.0
	v_div_scale_f32 v69, s6, v8, v24, v8
	v_div_scale_f32 v91, s10, v12, v28, v12
	v_fma_f32 v128, -v92, v112, 1.0
	v_dual_fmac_f32 v111, v127, v111 :: v_dual_mul_f32 v116, v52, v100
	v_div_scale_f32 v65, s4, v6, v22, v6
	v_fma_f32 v120, -v62, v104, 1.0
	v_fma_f32 v126, -v88, v110, 1.0
	v_div_scale_f32 v59, s1, v5, v21, v5
	v_fma_f32 v129, -v94, v113, 1.0
	v_fmac_f32_e32 v102, v118, v102
	v_dual_fmac_f32 v106, v122, v106 :: v_dual_mul_f32 v117, v56, v101
	v_div_scale_f32 v61, s2, v4, v20, v4
	v_fma_f32 v124, -v70, v108, 1.0
	v_div_scale_f32 v87, s8, v10, v26, v10
	v_fma_f32 v130, -v96, v114, 1.0
	v_dual_fmac_f32 v112, v128, v112 :: v_dual_mul_f32 v123, v69, v107
	v_mul_f32_e32 v127, v91, v111
	v_fma_f32 v132, -v44, v116, v52
	v_div_scale_f32 v63, s3, v7, v23, v7
	v_fma_f32 v131, -v98, v115, 1.0
	v_fmac_f32_e32 v104, v120, v104
	v_dual_fmac_f32 v110, v126, v110 :: v_dual_mul_f32 v121, v65, v105
	v_fmac_f32_e32 v113, v129, v113
	v_fma_f32 v133, -v53, v117, v56
	v_mul_f32_e32 v118, v59, v102
	v_dual_fmac_f32 v108, v124, v108 :: v_dual_mul_f32 v119, v61, v103
	v_div_scale_f32 v67, s5, v9, v25, v9
	v_dual_fmac_f32 v114, v130, v114 :: v_dual_mul_f32 v125, v87, v109
	v_fma_f32 v139, -v68, v123, v69
	v_fmac_f32_e32 v116, v132, v100
	v_div_scale_f32 v93, s11, v15, v31, v15
	v_div_scale_f32 v99, s14, v16, v32, v16
	v_fmac_f32_e32 v115, v131, v115
	v_fma_f32 v137, -v64, v121, v65
	v_mul_f32_e32 v120, v63, v104
	v_div_scale_f32 v89, s9, v13, v29, v13
	v_div_scale_f32 v95, s12, v14, v30, v14
	v_fmac_f32_e32 v117, v133, v101
	v_fma_f32 v134, -v58, v118, v59
	v_div_scale_f32 v97, s13, v17, v34, v17
	v_fma_f32 v135, -v60, v119, v61
	v_fma_f32 v141, -v72, v125, v87
	v_mul_f32_e32 v122, v67, v106
	v_fmac_f32_e32 v123, v139, v107
	v_fma_f32 v44, -v44, v116, v52
	v_dual_mul_f32 v128, v93, v112 :: v_dual_mul_f32 v131, v99, v115
	v_fmac_f32_e32 v121, v137, v105
	v_fma_f32 v136, -v62, v120, v63
	v_div_scale_f32 v71, s7, v11, v27, v11
	v_dual_mul_f32 v126, v89, v110 :: v_dual_mul_f32 v129, v95, v113
	v_fma_f32 v143, -v90, v127, v91
	v_fmac_f32_e32 v118, v134, v102
	v_dual_mul_f32 v130, v97, v114 :: v_dual_fmac_f32 v119, v135, v103
	v_fmac_f32_e32 v125, v141, v109
	v_fma_f32 v138, -v66, v122, v67
	v_fma_f32 v52, -v53, v117, v56
	v_div_fmas_f32 v44, v44, v100, v116
	v_fma_f32 v147, -v98, v131, v99
	v_fmac_f32_e32 v120, v136, v104
	v_fma_f32 v145, -v94, v129, v95
	v_mul_f32_e32 v124, v71, v108
	v_fmac_f32_e32 v127, v143, v111
	v_fma_f32 v53, -v58, v118, v59
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v56, -v60, v119, v61
	v_div_fmas_f32 v52, v52, v101, v117
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v3, v44, v19, v3
	v_dual_fmac_f32 v122, v138, v106 :: v_dual_fmac_f32 v131, v147, v115
	v_fma_f32 v58, -v62, v120, v63
	v_fmac_f32_e32 v129, v145, v113
	v_fma_f32 v140, -v70, v124, v71
	v_div_fmas_f32 v53, v53, v102, v118
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v59, -v64, v121, v65
	v_div_fmas_f32 v19, v56, v103, v119
	s_mov_b32 vcc_lo, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v35, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v60, -v66, v122, v67
	v_fma_f32 v142, -v88, v126, v89
	v_div_fixup_f32 v2, v52, v18, v2
	v_div_fmas_f32 v18, v58, v104, v120
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v53, v21, v5
	v_fmac_f32_e32 v124, v140, v108
	v_div_fmas_f32 v21, v59, v105, v121
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v144, -v92, v128, v93
	v_fma_f32 v61, -v68, v123, v69
	v_div_fixup_f32 v4, v19, v20, v4
	v_div_fmas_f32 v19, v60, v106, v122
	v_div_fixup_f32 v7, v18, v23, v7
	v_dual_fmac_f32 v126, v142, v110 :: v_dual_mul_f32 v5, v43, v5
	v_fma_f32 v62, -v70, v124, v71
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v146, -v96, v130, v97
	v_fma_f32 v63, -v72, v125, v87
	v_div_fmas_f32 v18, v61, v107, v123
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v9, v19, v25, v9
	v_dual_fmac_f32 v128, v144, v112 :: v_dual_mul_f32 v7, v49, v7
	v_fma_f32 v64, -v88, v126, v89
	v_div_fmas_f32 v20, v62, v108, v124
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v65, -v90, v127, v91
	v_div_fmas_f32 v19, v63, v109, v125
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v84.l, v5.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v130, v146, v114
	s_mov_b32 vcc_lo, s9
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v55, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v92, v128, v93
	v_div_fixup_f32 v6, v21, v22, v6
	v_div_fmas_f32 v21, v64, v110, v126
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v67, -v94, v129, v95
	v_div_fmas_f32 v22, v65, v111, v127
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v10, v19, v26, v10
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v19, 1, v84
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v96, v130, v97
	v_div_fmas_f32 v23, v66, v112, v128
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v13, v21, v29, v13
	v_div_fmas_f32 v21, v67, v113, v129
	s_mov_b32 vcc_lo, s13
	v_div_fixup_f32 v12, v22, v28, v12
	v_div_fmas_f32 v22, v68, v114, v130
	v_div_fixup_f32 v8, v18, v24, v8
	v_div_fixup_f32 v11, v20, v27, v11
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v37, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v14, v21, v30, v14
	v_div_fixup_f32 v17, v22, v34, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v8, v54, v8 :: v_dual_mul_f32 v11, v51, v11
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v85.l, v2.h
	v_mov_b16_e32 v86.l, v3.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v17, v41, v17
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v15, v23, v31, v15
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	v_and_b32_e32 v20, 1, v85
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v13, v48, v13 :: v_dual_and_b32 v18, 1, v86
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v73.l, v17.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v14, v33, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v80.l, v9.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v15, v45, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v2, v2, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v3, v3
	v_mov_b16_e32 v40.l, v14.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v50, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v3, v18, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s1
	v_and_b32_e32 v2, 1, v80
	v_cmp_o_f32_e64 s6, v9, v9
	v_mov_b16_e32 v77.l, v10.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v57, v6
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v98, v131, v99
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v2, v9, v2, 0x7fff
	v_cmp_o_f32_e64 s2, v5, v5
	v_and_b32_e32 v9, 1, v77
	v_mov_b16_e32 v81.l, v6.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v47, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v5, v5, v19, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v82.l, v7.h
	v_and_b32_e32 v19, 1, v81
	v_mov_b16_e32 v83.l, v4.h
	v_mov_b16_e32 v79.l, v8.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v23, v69, v115, v131
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v20, 1, v82
	v_cmp_o_f32_e64 s3, v4, v4
	v_and_b32_e32 v18, 1, v83
	v_cmp_o_f32_e64 s5, v6, v6
	v_mov_b16_e32 v78.l, v11.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v46, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v6, v6, v19, 0x7fff
	v_add3_u32 v4, v4, v18, 0x7fff
	v_and_b32_e32 v18, 1, v79
	v_mov_b16_e32 v76.l, v13.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v23, v32, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v7, v7
	v_add3_u32 v7, v7, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v8, v8
	v_cndmask_b16 v5.l, 0x7fff, v4.h, s3
	v_and_b32_e32 v4, 1, v78
	v_mov_b16_e32 v74.l, v12.h
	v_add3_u32 v8, v8, v18, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v6.h, s5
	v_and_b32_e32 v6, 1, v76
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v16, v42, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s0
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s4
	v_cmp_eq_u32_e64 s4, 0, v38
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s2
	v_cmp_o_f32_e64 s1, v13, v13
	v_mov_b16_e32 v75.l, v15.h
	v_add3_u32 v4, v11, v4, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s6
	v_and_b32_e32 v11, 1, v74
	v_cndmask_b16 v2.l, 0x7fff, v8.h, s7
	v_add3_u32 v6, v13, v6, 0x7fff
	v_mov_b16_e32 v36.l, v16.h
	v_and_b32_e32 v13, 1, v40
	v_cmp_o_f32_e64 s0, v10, v10
	v_add3_u32 v9, v10, v9, 0x7fff
	v_cndmask_b32_e64 v10, v7, v3, s4
	v_cndmask_b32_e64 v3, v3, v7, s4
	v_cndmask_b32_e64 v0, 0x1054, v0, s4
	v_cndmask_b32_e64 v7, 0x3276, v39, s4
	v_cmp_o_f32_e64 s2, v12, v12
	v_and_b32_e32 v8, 1, v75
	v_add3_u32 v11, v12, v11, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v9.h, s0
	v_and_b32_e32 v9, 1, v73
	v_cndmask_b32_e64 v12, v2, v5, s4
	v_cndmask_b32_e64 v2, v5, v2, s4
	v_cndmask_b16 v5.h, 0x7fff, v6.h, s1
	v_and_b32_e32 v6, 1, v36
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 226
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17800
; TotalNumSgprs: 54
; NumVgprs: 226
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 54
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     226
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
