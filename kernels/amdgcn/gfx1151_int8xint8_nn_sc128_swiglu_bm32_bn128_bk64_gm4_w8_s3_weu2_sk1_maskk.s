	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	v_lshrrev_b32_e32 v154, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v2, 7, v0
	v_lshrrev_b32_e32 v74, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v73, 15, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v161, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v156, 32, v154
	v_lshlrev_b32_e32 v155, 3, v2
	s_mov_b32 s50, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v48, 0, v161
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0x7f
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
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v1, s31, v154
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
	s_lshl_b32 s30, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s3, s31, 0x7f
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s4, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s5, s3, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s17, s4, s7
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s5, s5, 25
.Ltmp17:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s17
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s30, v155
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s16
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s7, s3, s5
.Ltmp19:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 5
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s34, s27, 1
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s5, s33, s31
.Ltmp20:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s31, 63
.Ltmp21:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v159, v1, v155, s5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v6, s34, v154
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s26, s4, 7
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s6, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v3, s30, v159
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s30, v154
	v_or_b32_e32 v5, s30, v156
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s18, s34, s30
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v157, v2, 4, v6
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s31, v4
	v_cmp_gt_i32_e64 s4, s31, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s26, s18
	v_lshl_add_u32 v158, s27, 6, v157
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s4, s4, s2
	s_and_b32 s5, s3, s2
	s_cmpk_gt_i32 s6, 0x7f
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s16, v157
	v_add_nc_u32_e32 v2, s16, v158
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s30, 64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s17, s27, 7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v6, s35, v155
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v4, 0x80000000, v1, s5
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v1, s27, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s4
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s27, v2
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v7, s35, v154
	v_or_b32_e32 v8, s35, v156
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s16, s17
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v10, s16, v157
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v9, s35, v159
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s5
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v7
	v_cmp_gt_i32_e64 s5, s31, v8
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v11, s16, v158
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[44:45], v3, s[8:11], 0 offen
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v3, s27, v10
	v_add3_u32 v28, s16, s27, v158
	.loc	1 358 31 is_stmt 0              ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[20:23], v1, s[36:39], 0 offen
	buffer_load_b128 v[24:27], v2, s[36:39], 0 offen
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v1, 0x80000000, v9, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s3
	s_and_b32 s4, s5, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v2, 0x80000000, v10, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[12:15], v4, s[36:39], 0 offen
	buffer_load_b128 v[16:19], v5, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v11, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_cndmask_b32_e64 v5, 0x80000000, v28, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[46:47], v1, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[28:31], v2, s[36:39], 0 offen
	buffer_load_b128 v[32:35], v4, s[36:39], 0 offen
	buffer_load_b128 v[36:39], v3, s[36:39], 0 offen
	buffer_load_b128 v[40:43], v5, s[36:39], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v1, 3, v0
	v_and_b32_e32 v2, 48, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 4, v0
	v_and_b32_e32 v11, 0x70, v74
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v6, 16, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s6, 0xbf
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v162, v1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v2, v3, 1, v11
	v_or_b32_e32 v160, v11, v73
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v49, 0, v162
	s_waitcnt vmcnt(9)
	ds_store_b64 v49, v[44:45] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(6)
	ds_store_b128 v48, v[12:15]
	s_waitcnt vmcnt(5)
	ds_store_b128 v48, v[16:19] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v48, v[20:23] offset:16384
	ds_store_b128 v48, v[24:27] offset:20480
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v7, 2, v2
	v_or_b32_e32 v8, 4, v2
	v_or_b32_e32 v9, 6, v2
	v_or_b32_e32 v10, 8, v2
	v_or_b32_e32 v3, 10, v2
	v_or_b32_e32 v4, 12, v2
	v_or_b32_e32 v5, 14, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v49, v[46:47] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v48, v[28:31] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v48, v[32:35] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v48, v[36:39] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v48, v[40:43] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v12, 48, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v164, v11, v73
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v150, v73, 6, v12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v87, 0x80, v164
	v_or_b32_e32 v89, 0x100, v164
	v_or_b32_e32 v91, 0x180, v164
	v_or_b32_e32 v92, 0x200, v164
	v_or_b32_e32 v95, 0x280, v164
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v153, 16, v150
	v_xor_b32_e32 v151, 32, v150
	v_xor_b32_e32 v152, 48, v150
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v97, 0x300, v164
	v_or_b32_e32 v99, 0x380, v164
	v_or_b32_e32 v101, 0x400, v164
	v_or_b32_e32 v103, 0x480, v164
	v_or_b32_e32 v105, 0x500, v164
	v_or_b32_e32 v107, 0x580, v164
	v_or_b32_e32 v109, 0x600, v164
	v_or_b32_e32 v111, 0x680, v164
	v_or_b32_e32 v113, 0x700, v164
	v_or_b32_e32 v115, 0x780, v164
	v_or_b32_e32 v88, 0x800, v164
	v_or_b32_e32 v90, 0x880, v164
	v_or_b32_e32 v93, 0x900, v164
	v_or_b32_e32 v94, 0x980, v164
	v_or_b32_e32 v96, 0xa00, v164
	v_or_b32_e32 v98, 0xa80, v164
	v_or_b32_e32 v100, 0xb00, v164
	v_or_b32_e32 v102, 0xb80, v164
	v_or_b32_e32 v104, 0xc00, v164
	v_or_b32_e32 v106, 0xc80, v164
	v_or_b32_e32 v108, 0xd00, v164
	v_or_b32_e32 v110, 0xd80, v164
	v_or_b32_e32 v112, 0xe00, v164
	v_or_b32_e32 v114, 0xe80, v164
	v_or_b32_e32 v116, 0xf00, v164
	v_or_b32_e32 v117, 0xf80, v164
	v_or_b32_e32 v118, 0x1000, v164
	v_or_b32_e32 v119, 0x1080, v164
	v_or_b32_e32 v120, 0x1100, v164
	v_or_b32_e32 v121, 0x1180, v164
	v_or_b32_e32 v122, 0x1200, v164
	v_or_b32_e32 v123, 0x1280, v164
	v_or_b32_e32 v124, 0x1300, v164
	v_or_b32_e32 v125, 0x1380, v164
	v_or_b32_e32 v126, 0x1400, v164
	v_or_b32_e32 v127, 0x1480, v164
	v_or_b32_e32 v128, 0x1500, v164
	v_or_b32_e32 v129, 0x1580, v164
	v_or_b32_e32 v130, 0x1600, v164
	v_or_b32_e32 v131, 0x1680, v164
	v_or_b32_e32 v132, 0x1700, v164
	v_or_b32_e32 v133, 0x1780, v164
	v_or_b32_e32 v134, 0x1800, v164
	v_or_b32_e32 v135, 0x1880, v164
	v_or_b32_e32 v136, 0x1900, v164
	v_or_b32_e32 v137, 0x1980, v164
	v_or_b32_e32 v138, 0x1a00, v164
	v_or_b32_e32 v139, 0x1a80, v164
	v_or_b32_e32 v140, 0x1b00, v164
	v_or_b32_e32 v141, 0x1b80, v164
	v_or_b32_e32 v142, 0x1c00, v164
	v_or_b32_e32 v143, 0x1c80, v164
	v_or_b32_e32 v144, 0x1d00, v164
	v_or_b32_e32 v145, 0x1d80, v164
	v_or_b32_e32 v146, 0x1e00, v164
	v_or_b32_e32 v147, 0x1e80, v164
	v_or_b32_e32 v148, 0x1f00, v164
	v_or_b32_e32 v149, 0x1f80, v164
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr150
                                        ; implicit-def: $vgpr153
                                        ; implicit-def: $vgpr151
                                        ; implicit-def: $vgpr152
                                        ; implicit-def: $vgpr164
                                        ; implicit-def: $vgpr87
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr99
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr103
                                        ; implicit-def: $vgpr105
                                        ; implicit-def: $vgpr107
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr111
                                        ; implicit-def: $vgpr113
                                        ; implicit-def: $vgpr115
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr100
                                        ; implicit-def: $vgpr102
                                        ; implicit-def: $vgpr104
                                        ; implicit-def: $vgpr106
                                        ; implicit-def: $vgpr108
                                        ; implicit-def: $vgpr110
                                        ; implicit-def: $vgpr112
                                        ; implicit-def: $vgpr114
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
                                        ; implicit-def: $vgpr141
                                        ; implicit-def: $vgpr142
                                        ; implicit-def: $vgpr143
                                        ; implicit-def: $vgpr144
                                        ; implicit-def: $vgpr145
                                        ; implicit-def: $vgpr146
                                        ; implicit-def: $vgpr147
                                        ; implicit-def: $vgpr148
                                        ; implicit-def: $vgpr149
.LBB0_3:                                ; %Flow322
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v11, s33, v73
	v_or_b32_e32 v6, s33, v6
	s_ashr_i32 s44, s7, 7
	v_or_b32_e32 v84, s26, v2
	v_or_b32_e32 v83, s26, v7
	v_mul_lo_u32 v85, v11, s44
	v_mul_lo_u32 v86, v6, s44
	v_or_b32_e32 v82, s26, v8
	v_or_b32_e32 v81, s26, v9
	v_or_b32_e32 v49, s26, v10
	v_or_b32_e32 v50, s26, v3
	v_or_b32_e32 v51, s26, v4
	v_or_b32_e32 v52, s26, v5
	v_add_nc_u32_e32 v80, s27, v2
	v_add_nc_u32_e32 v79, s27, v7
	v_add_nc_u32_e32 v78, s27, v8
	v_add_nc_u32_e32 v76, s27, v9
	v_add_nc_u32_e32 v75, s27, v10
	v_add_nc_u32_e32 v77, s27, v3
	v_add_nc_u32_e32 v47, s27, v4
	v_add_nc_u32_e32 v48, s27, v5
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v68, 0 :: v_dual_and_b32 v1, 48, v1
	v_or_b32_e32 v87, 0x80, v160
	v_or_b32_e32 v89, 0x100, v160
	v_or_b32_e32 v91, 0x180, v160
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v150, v73, 6, v1
	v_or_b32_e32 v92, 0x200, v160
	v_or_b32_e32 v95, 0x280, v160
	v_or_b32_e32 v97, 0x300, v160
	v_or_b32_e32 v99, 0x380, v160
	v_xor_b32_e32 v153, 16, v150
	v_xor_b32_e32 v151, 32, v150
	v_xor_b32_e32 v152, 48, v150
	v_or_b32_e32 v101, 0x400, v160
	v_or_b32_e32 v103, 0x480, v160
	v_or_b32_e32 v105, 0x500, v160
	v_or_b32_e32 v107, 0x580, v160
	v_or_b32_e32 v109, 0x600, v160
	v_or_b32_e32 v111, 0x680, v160
	v_or_b32_e32 v113, 0x700, v160
	v_or_b32_e32 v115, 0x780, v160
	v_or_b32_e32 v88, 0x800, v160
	v_or_b32_e32 v90, 0x880, v160
	v_or_b32_e32 v93, 0x900, v160
	v_or_b32_e32 v94, 0x980, v160
	v_or_b32_e32 v96, 0xa00, v160
	v_or_b32_e32 v98, 0xa80, v160
	v_or_b32_e32 v100, 0xb00, v160
	v_or_b32_e32 v102, 0xb80, v160
	v_or_b32_e32 v104, 0xc00, v160
	v_or_b32_e32 v106, 0xc80, v160
	v_or_b32_e32 v108, 0xd00, v160
	v_or_b32_e32 v110, 0xd80, v160
	v_or_b32_e32 v112, 0xe00, v160
	v_or_b32_e32 v114, 0xe80, v160
	v_or_b32_e32 v116, 0xf00, v160
	v_or_b32_e32 v117, 0xf80, v160
	v_or_b32_e32 v118, 0x1000, v160
	v_or_b32_e32 v119, 0x1080, v160
	v_or_b32_e32 v120, 0x1100, v160
	v_or_b32_e32 v121, 0x1180, v160
	v_or_b32_e32 v122, 0x1200, v160
	v_or_b32_e32 v123, 0x1280, v160
	v_or_b32_e32 v124, 0x1300, v160
	v_or_b32_e32 v125, 0x1380, v160
	v_or_b32_e32 v126, 0x1400, v160
	v_or_b32_e32 v127, 0x1480, v160
	v_or_b32_e32 v128, 0x1500, v160
	v_or_b32_e32 v129, 0x1580, v160
	v_or_b32_e32 v130, 0x1600, v160
	v_or_b32_e32 v131, 0x1680, v160
	v_or_b32_e32 v132, 0x1700, v160
	v_or_b32_e32 v133, 0x1780, v160
	v_or_b32_e32 v134, 0x1800, v160
	v_or_b32_e32 v135, 0x1880, v160
	v_or_b32_e32 v136, 0x1900, v160
	v_or_b32_e32 v137, 0x1980, v160
	v_or_b32_e32 v138, 0x1a00, v160
	v_or_b32_e32 v139, 0x1a80, v160
	v_or_b32_e32 v140, 0x1b00, v160
	v_or_b32_e32 v141, 0x1b80, v160
	v_or_b32_e32 v142, 0x1c00, v160
	v_or_b32_e32 v143, 0x1c80, v160
	v_or_b32_e32 v144, 0x1d00, v160
	v_or_b32_e32 v145, 0x1d80, v160
	v_or_b32_e32 v146, 0x1e00, v160
	v_or_b32_e32 v147, 0x1e80, v160
	v_or_b32_e32 v148, 0x1f00, v160
	v_or_b32_e32 v149, 0x1f80, v160
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_mov_b32_e32 v37, 0
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s15, s6, 6
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s16, 0
	s_add_i32 s14, s35, 64
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s15, s15, -3
	s_mov_b32 s49, 1
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
	s_mov_b32 s48, s16
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s51, s0
	s_mov_b32 s0, s30
	s_mov_b32 s30, s35
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s35, s48, 6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v163, s50, v160
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s14, s35
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v181, s1, v160
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v2, s35, v155
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v3, s35, v159
	.loc	1 348 22 is_stmt 0              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s51, v150
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v171, s23 :: v_dual_mov_b32 v170, s22
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v169, s21 :: v_dual_mov_b32 v168, s20
	v_dual_mov_b32 v167, s19 :: v_dual_mov_b32 v166, s18
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v165, s17 :: v_dual_mov_b32 v164, s16
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v180, s51, v153
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s0, 31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[33:34], v2, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v163 offset:1664
	ds_load_u8 v3, v163 offset:1536
	ds_load_u8 v4, v163 offset:1920
	ds_load_u8 v5, v163 offset:1792
	ds_load_u8 v6, v163 offset:1152
	ds_load_u8 v7, v163 offset:1024
	ds_load_u8 v8, v163 offset:1408
	ds_load_u8 v9, v163 offset:1280
	ds_load_u8 v10, v163 offset:640
	ds_load_u8 v11, v163 offset:512
	ds_load_u8 v12, v163 offset:896
	ds_load_u8 v13, v163 offset:768
	ds_load_u8 v14, v163 offset:128
	ds_load_u8 v15, v163
	ds_load_u8 v16, v163 offset:384
	ds_load_u8 v17, v163 offset:256
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v18, v181 offset:1664
	ds_load_u8 v19, v181 offset:1536
	ds_load_u8 v20, v181 offset:1920
	ds_load_u8 v21, v181 offset:1792
	ds_load_u8 v22, v181 offset:1152
	ds_load_u8 v23, v181 offset:1024
	ds_load_u8 v24, v181 offset:1408
	ds_load_u8 v29, v181 offset:1280
	ds_load_u8 v30, v181 offset:640
	ds_load_u8 v31, v181 offset:512
	ds_load_u8 v32, v181 offset:896
	ds_load_u8 v176, v181 offset:768
	ds_load_u8 v177, v181 offset:128
	ds_load_u8 v178, v181
	ds_load_u8 v179, v181 offset:384
	ds_load_u8 v182, v181 offset:256
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[25:28], v1
	ds_load_b128 v[172:175], v1 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v3, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v5, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v6, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v7, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v8, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v9, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v1, v17, v16, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v10, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v11, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v12, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v13, v29, v24, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v14, v31, v30, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v15, v176, v32, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v183, v163 offset:3712
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v16, v178, v177, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v4, v3, 16, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v17, v182, v179, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v3, v6, 16, v5
	v_lshl_or_b32 v2, v8, 16, v7
	v_lshl_or_b32 v1, v1, 16, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v179, v11, 16, v10
	v_lshl_or_b32 v178, v13, 16, v12
	v_lshl_or_b32 v177, v15, 16, v14
	v_lshl_or_b32 v176, v17, 16, v16
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[1:4], v[25:28], v[164:171] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[1:4], v[172:175], v[164:171] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[176:179], v[25:28], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[176:179], v[172:175], v[164:171] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v164, v163 offset:3584
	ds_load_u8 v165, v163 offset:3968
	ds_load_u8 v166, v163 offset:3840
	ds_load_u8 v167, v163 offset:3200
	ds_load_u8 v168, v163 offset:3072
	ds_load_u8 v169, v163 offset:3456
	ds_load_u8 v170, v163 offset:3328
	ds_load_u8 v171, v163 offset:2688
	ds_load_u8 v172, v163 offset:2560
	ds_load_u8 v173, v163 offset:2944
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 25
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s50, s35, s34
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s0, s1
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s50, s50, s26
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_nc_u32_e32 v179, s50, v157
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v164, v164, v183, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v166, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v168, v170, v169, 0xc0c0004
	v_lshl_or_b32 v167, v165, 16, v164
	ds_load_u8 v164, v163 offset:2816
	ds_load_u8 v165, v163 offset:2176
	ds_load_u8 v169, v163 offset:2048
	ds_load_u8 v170, v163 offset:2432
	v_lshl_or_b32 v166, v168, 16, v166
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v164, v164, v173, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v169, v169, v165, 0xc0c0004
	ds_load_u8 v165, v163 offset:2304
	v_perm_b32 v168, v172, v171, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[172:175], v180 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v170, v165, v170, 0xc0c0004
	v_lshl_or_b32 v165, v164, 16, v168
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v164, v170, 16, v169
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[168:171], v180
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[164:167], v[172:175], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[164:167], v[168:171], v[9:16] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v164, v181 offset:3712
	ds_load_u8 v165, v181 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v181 offset:3968
	ds_load_u8 v166, v181 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v181 offset:3200
	ds_load_u8 v167, v181 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v181 offset:3456
	ds_load_u8 v176, v181 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v176, v167, 0xc0c0004
	v_lshl_or_b32 v167, v165, 16, v164
	ds_load_u8 v164, v181 offset:2688
	ds_load_u8 v165, v181 offset:2560
	v_lshl_or_b32 v166, v176, 16, v166
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v181 offset:2944
	ds_load_u8 v176, v181 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v176, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v165, 16, v164
	ds_load_u8 v164, v181 offset:2176
	ds_load_u8 v176, v181 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v176, v164, 0xc0c0004
	ds_load_u8 v176, v181 offset:2432
	ds_load_u8 v177, v181 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v164, v176, 16, v164
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v176, s51, v151
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[164:167], v[168:171], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v168, v163 offset:5760
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[25:32], v[164:167], v[172:175], v[25:32] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v164, v163 offset:5632
	ds_load_u8 v165, v163 offset:6016
	ds_load_u8 v166, v163 offset:5888
	ds_load_u8 v167, v163 offset:5248
	ds_load_u8 v169, v163 offset:5120
	ds_load_u8 v170, v163 offset:5504
	ds_load_u8 v171, v163 offset:5376
	ds_load_u8 v172, v163 offset:4736
	ds_load_u8 v173, v163 offset:4992
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v166, v169, v167, 0xc0c0004
	v_perm_b32 v164, v164, v168, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v169, v171, v170, 0xc0c0004
	ds_load_u8 v168, v163 offset:4608
	ds_load_u8 v170, v163 offset:4480
	v_lshl_or_b32 v167, v165, 16, v164
	v_lshl_or_b32 v166, v169, 16, v166
	ds_load_u8 v164, v163 offset:4864
	ds_load_u8 v165, v163 offset:4224
	ds_load_u8 v169, v163 offset:4096
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v164, v164, v173, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v169, v165, 0xc0c0004
	ds_load_u8 v165, v163 offset:4352
	v_perm_b32 v168, v168, v172, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[172:175], v176 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v170, v165, v170, 0xc0c0004
	v_lshl_or_b32 v165, v164, 16, v168
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v164, v170, 16, v169
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[168:171], v176
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[164:167], v[172:175], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[164:167], v[168:171], v[9:16] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v164, v181 offset:5760
	ds_load_u8 v165, v181 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v181 offset:6016
	ds_load_u8 v166, v181 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v181 offset:5248
	ds_load_u8 v167, v181 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v181 offset:5504
	ds_load_u8 v176, v181 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v176, v167, 0xc0c0004
	v_lshl_or_b32 v167, v165, 16, v164
	ds_load_u8 v164, v181 offset:4736
	ds_load_u8 v165, v181 offset:4608
	v_lshl_or_b32 v166, v176, 16, v166
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v181 offset:4992
	ds_load_u8 v176, v181 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v176, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v165, 16, v164
	ds_load_u8 v164, v181 offset:4224
	ds_load_u8 v176, v181 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v176, v164, 0xc0c0004
	ds_load_u8 v176, v181 offset:4480
	ds_load_u8 v177, v181 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v164, v176, 16, v164
	v_wmma_i32_16x16x16_iu8 v[1:8], v[164:167], v[168:171], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v168, v163 offset:7808
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[25:32], v[164:167], v[172:175], v[25:32] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v164, v163 offset:7680
	ds_load_u8 v165, v163 offset:8064
	ds_load_u8 v166, v163 offset:7936
	ds_load_u8 v167, v163 offset:7296
	ds_load_u8 v169, v163 offset:7168
	ds_load_u8 v170, v163 offset:7552
	ds_load_u8 v172, v163 offset:7424
	ds_load_u8 v173, v163 offset:6784
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v171, s51, v152
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s51, s0, 7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v163 offset:7040
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v167, v169, v167, 0xc0c0004
	v_perm_b32 v164, v164, v168, 0xc0c0004
	ds_load_u8 v168, v163 offset:6656
	ds_load_u8 v169, v163 offset:6912
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v170, v172, v170, 0xc0c0004
	ds_load_u8 v172, v163 offset:6272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v168, v168, v173, 0xc0c0004
	ds_load_u8 v173, v163 offset:6144
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v169, v169, v166, 0xc0c0004
	ds_load_u8 v166, v163 offset:6528
	ds_load_u8 v163, v163 offset:6400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v163, v166, 0xc0c0004
	v_lshl_or_b32 v166, v165, 16, v164
	v_lshl_or_b32 v165, v170, 16, v167
	v_lshl_or_b32 v164, v169, 16, v168
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[167:170], v171
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v163, v163, 16, v172
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v171 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[163:166], v[167:170], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[163:166], v[171:174], v[17:24] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v163, v181 offset:7808
	ds_load_u8 v164, v181 offset:7680
	ds_load_u8 v165, v181 offset:8064
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v181 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v164, v165, 0xc0c0004
	ds_load_u8 v165, v181 offset:7296
	ds_load_u8 v166, v181 offset:7168
	v_lshl_or_b32 v178, v164, 16, v163
	ds_load_u8 v163, v181 offset:6784
	ds_load_u8 v164, v181 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v181 offset:7552
	ds_load_u8 v175, v181 offset:7424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v175, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v166, 16, v165
	ds_load_u8 v164, v181 offset:7040
	ds_load_u8 v165, v181 offset:6912
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v166, v18
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v164, 16, v163
	ds_load_u8 v163, v181 offset:6272
	ds_load_u8 v164, v181 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v181 offset:6528
	ds_load_u8 v165, v181 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v165, v85, s51, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v175, v164, 16, v163
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v163, s35, v154
	v_or_b32_e32 v164, s35, v156
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[25:32], v[175:178], v[171:174], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[175:178], v[167:170], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v173, v21
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s31, v163
	v_cmp_gt_i32_e32 vcc_lo, s31, v164
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v21, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v25, v12
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v180, s50, v158
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s50, s50, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s51, s44
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v168, v86, s51, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s51, s51, s34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v163, v24
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v24, v31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v31, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v9, v2
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v6, v7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v7, v84, s51, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v171, v19
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v19, v30
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v30, v10
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v10, v1
	v_cvt_f32_i32_e32 v1, v4
	v_cvt_f32_i32_e32 v4, v3
	v_cvt_f32_i32_e32 v3, v8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v8, v83, s51, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s52, s51, s26
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v169, v20
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v20, v32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v32, v11
	v_cvt_f32_i32_e32 v11, v14
	v_cvt_f32_i32_e32 v12, v16
	v_cvt_f32_i32_e32 v14, v15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v15, v82, s51, 1
	v_add_lshl_u32 v16, v81, s51, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v167, v17
	v_cvt_f32_i32_e32 v172, v22
	v_cvt_f32_i32_e32 v170, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v17, v26
	v_cvt_f32_i32_e32 v18, v28
	v_cvt_f32_i32_e32 v22, v27
	v_cvt_f32_i32_e32 v23, v29
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v26, v49, s51, 1
	v_add_lshl_u32 v27, v50, s51, 1
	v_add_lshl_u32 v28, v51, s51, 1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v29, 0x80000000, v179, s0
	v_cndmask_b32_e32 v174, 0x80000000, v180, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v165, 0x80000000, v165, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v175, v52, s51, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v176, v80, s52, 1
	v_add_lshl_u32 v177, v79, s52, 1
	v_add_lshl_u32 v178, v78, s52, 1
	v_add_lshl_u32 v179, v76, s52, 1
	v_add_lshl_u32 v180, v75, s52, 1
	v_add_lshl_u32 v181, v77, s52, 1
	v_add_lshl_u32 v182, v47, s52, 1
	v_add_lshl_u32 v183, v48, s52, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v168, 0x80000000, v168, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s1
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	v_cndmask_b32_e64 v28, 0x80000000, v28, s1
	v_cndmask_b32_e64 v175, 0x80000000, v175, s1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v176, 0x80000000, v176, s1
	v_cndmask_b32_e64 v177, 0x80000000, v177, s1
	v_cndmask_b32_e64 v178, 0x80000000, v178, s1
	v_cndmask_b32_e64 v179, 0x80000000, v179, s1
	v_cndmask_b32_e64 v180, 0x80000000, v180, s1
	v_cndmask_b32_e64 v181, 0x80000000, v181, s1
	v_cndmask_b32_e64 v182, 0x80000000, v182, s1
	v_cndmask_b32_e64 v183, 0x80000000, v183, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v165, v165, s[4:7], 0 offen
	buffer_load_u16 v168, v168, s[4:7], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v7, v7, s[40:43], 0 offen
	buffer_load_u16 v8, v8, s[40:43], 0 offen
	buffer_load_u16 v15, v15, s[40:43], 0 offen
	buffer_load_u16 v16, v16, s[40:43], 0 offen
	buffer_load_u16 v186, v26, s[40:43], 0 offen
	buffer_load_u16 v187, v27, s[40:43], 0 offen
	buffer_load_u16 v188, v28, s[40:43], 0 offen
	buffer_load_u16 v189, v175, s[40:43], 0 offen
	buffer_load_u16 v190, v176, s[40:43], 0 offen
	buffer_load_u16 v191, v177, s[40:43], 0 offen
	buffer_load_u16 v192, v178, s[40:43], 0 offen
	buffer_load_u16 v193, v179, s[40:43], 0 offen
	buffer_load_u16 v194, v180, s[40:43], 0 offen
	buffer_load_u16 v195, v181, s[40:43], 0 offen
	buffer_load_u16 v196, v182, s[40:43], 0 offen
	buffer_load_u16 v197, v183, s[40:43], 0 offen
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v164, s50, v157
	v_add_nc_u32_e32 v26, s50, v158
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s49, s49, 1
	s_mov_b32 s1, s45
	s_cmp_lt_i32 s49, 2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v164, 0x80000000, v164, s0
	v_cndmask_b32_e32 v182, 0x80000000, v26, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s49, s49, 0
	s_mov_b32 s50, s46
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s0, s49, 11
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s45, s49, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s51, s0, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s46, s45, 0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s52, s48, 1
	s_mov_b32 s0, s47
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s47, s51, 0x8000
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s45, s46, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s48, s15
	s_mov_b32 s48, s52
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v7, 16, v7
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v8, 16, v8
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[26:29], v29, s[36:39], 0 offen
	buffer_load_b128 v[174:177], v174, s[36:39], 0 offen
	buffer_load_b128 v[178:181], v164, s[36:39], 0 offen
	buffer_load_b128 v[182:185], v182, s[36:39], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v164, s51, v162
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b64 v164, v[33:34] offset:32768
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v33, 16, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v33, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v66, v34, v31 :: v_dual_mul_f32 v31, v33, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v67, v31, v30 :: v_dual_mul_f32 v30, v33, v15
	v_fmac_f32_e32 v58, v30, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v33, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v59, v30, v25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v25, 16, v186
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v33, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v43, v30, v13
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v13, 16, v187
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v33, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(13)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v44, v30, v11 :: v_dual_lshlrev_b32 v11, 16, v188
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v33, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(12)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v35, v30, v14 :: v_dual_lshlrev_b32 v14, 16, v189
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v33, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v36, v30, v12
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v12, 16, v168
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v7, v12, v7 :: v_dual_lshlrev_b32 v30, 16, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v69, v7, v167
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v12, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v70, v7, v166 :: v_dual_mul_f32 v7, v12, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v62, v7, v171 :: v_dual_mul_f32 v7, v12, v16
	v_fmac_f32_e32 v63, v7, v169
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v12, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v45, v7, v173
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v12, v13
	v_dual_mul_f32 v14, v12, v14 :: v_dual_lshlrev_b32 v13, 16, v192
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v46, v7, v172 :: v_dual_mul_f32 v7, v12, v11
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v11, 16, v191
	v_lshlrev_b32_e32 v8, 16, v190
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v38, v14, v163 :: v_dual_lshlrev_b32 v15, 16, v193
	v_fmac_f32_e32 v37, v7, v170
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v14, v33, v11 :: v_dual_add_nc_u32 v7, s46, v161
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v16, 16, v194
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v34, v33, v15 :: v_dual_lshlrev_b32 v31, 16, v197
	v_mul_f32_e32 v11, v12, v11
	v_dual_mul_f32 v32, v33, v8 :: v_dual_lshlrev_b32 v25, 16, v195
	v_mul_f32_e32 v8, v12, v8
	v_dual_mul_f32 v15, v12, v15 :: v_dual_fmac_f32 v68, v14, v9
	v_mul_f32_e32 v9, v33, v16
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v53, v32, v10 :: v_dual_mul_f32 v10, v33, v13
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v13, v12, v13
	v_mul_f32_e32 v32, v33, v25
	v_dual_mul_f32 v14, v12, v25 :: v_dual_mul_f32 v25, v33, v31
	v_dual_mul_f32 v16, v12, v16 :: v_dual_mul_f32 v33, v33, v30
	v_mul_f32_e32 v31, v12, v31
	v_dual_mul_f32 v12, v12, v30 :: v_dual_fmac_f32 v61, v34, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v60, v10, v4
	v_dual_fmac_f32 v54, v9, v5 :: v_dual_fmac_f32 v55, v32, v2
	v_dual_fmac_f32 v39, v33, v6 :: v_dual_fmac_f32 v72, v11, v17
	v_dual_fmac_f32 v40, v25, v3 :: v_dual_fmac_f32 v71, v8, v21
	v_dual_fmac_f32 v64, v13, v22 :: v_dual_fmac_f32 v57, v14, v19
	v_dual_fmac_f32 v65, v15, v18 :: v_dual_fmac_f32 v56, v16, v23
	v_fmac_f32_e32 v41, v12, v24
	v_fmac_f32_e32 v42, v31, v20
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v7, v[26:29]
	s_waitcnt vmcnt(2)
	ds_store_b128 v7, v[174:177] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v7, v[178:181] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v7, v[182:185] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v164, v160
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v53, 0
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v166, 0 :: v_dual_add_nc_u32 v9, s0, v151
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v1, s0, v150
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v5, s0, v153
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v10, s0, v152
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v9
	ds_load_b128 v[13:16], v9 offset:1024
	ds_load_b128 v[17:20], v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[9:12], v10 offset:1024
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[29:32], v1
	ds_load_b128 v[1:4], v1 offset:1024
	ds_load_b128 v[21:24], v5
	ds_load_b128 v[5:8], v5 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v33, 0, 1, s2
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v176, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v33
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v154, 0
	v_mov_b32_e32 v155, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v157, s50, v111
	v_add_nc_u32_e32 v178, s50, v109
	v_add_nc_u32_e32 v155, s50, v115
	v_add_nc_u32_e32 v181, s50, v103
	v_add_nc_u32_e32 v156, s50, v113
	v_add_nc_u32_e32 v179, s50, v107
	v_add_nc_u32_e32 v180, s50, v105
	v_add_nc_u32_e32 v182, s50, v101
	v_add_nc_u32_e32 v183, s50, v99
	v_add_nc_u32_e32 v184, s50, v97
	v_add_nc_u32_e32 v185, s50, v95
	v_add_nc_u32_e32 v186, s50, v92
	v_add_nc_u32_e32 v187, s50, v91
	v_add_nc_u32_e32 v188, s50, v89
	v_add_nc_u32_e32 v189, s50, v87
	v_add_nc_u32_e32 v190, s50, v164
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v157, v157
	ds_load_u8 v178, v178
	ds_load_u8 v155, v155
	ds_load_u8 v181, v181
	ds_load_u8 v182, v182
	ds_load_u8 v179, v179
	ds_load_u8 v180, v180
	ds_load_u8 v156, v156
	ds_load_u8 v185, v185
	ds_load_u8 v186, v186
	ds_load_u8 v183, v183
	ds_load_u8 v189, v189
	ds_load_u8 v190, v190
	ds_load_u8 v187, v187
	ds_load_u8 v188, v188
	ds_load_u8 v184, v184
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v204, s50, v114
	v_add_nc_u32_e32 v205, s50, v112
	v_add_nc_u32_e32 v202, s50, v117
	v_add_nc_u32_e32 v208, s50, v106
	v_add_nc_u32_e32 v203, s50, v116
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v157, v178, v157, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v206, s50, v110
	v_add_nc_u32_e32 v207, s50, v108
	v_add_nc_u32_e32 v209, s50, v104
	v_add_nc_u32_e32 v210, s50, v102
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v178, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	v_perm_b32 v156, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v179, v186, v185, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v211, s50, v100
	v_add_nc_u32_e32 v212, s50, v98
	v_add_nc_u32_e32 v213, s50, v96
	v_add_nc_u32_e32 v214, s50, v94
	v_add_nc_u32_e32 v215, s50, v93
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v184, v183, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v181, s50, v90
	v_add_nc_u32_e32 v182, s50, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v157, v155, 16, v157
	v_lshl_or_b32 v156, v178, 16, v156
	v_lshl_or_b32 v155, v180, 16, v179
	v_perm_b32 v178, v190, v189, 0xc0c0004
	v_perm_b32 v179, v188, v187, 0xc0c0004
	ds_load_u8 v183, v204
	ds_load_u8 v184, v205
	ds_load_u8 v185, v202
	ds_load_u8 v186, v208
	ds_load_u8 v187, v209
	ds_load_u8 v188, v206
	ds_load_u8 v189, v207
	ds_load_u8 v190, v203
	ds_load_u8 v202, v212
	ds_load_u8 v203, v213
	ds_load_u8 v204, v210
	ds_load_u8 v205, v181
	ds_load_u8 v206, v182
	ds_load_u8 v207, v214
	ds_load_u8 v208, v215
	ds_load_u8 v209, v211
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v159, s50, v131
	v_add_nc_u32_e32 v196, s50, v123
	v_add_nc_u32_e32 v160, s50, v130
	v_add_nc_u32_e32 v197, s50, v122
	v_add_nc_u32_e32 v154, s50, v133
	v_add_nc_u32_e32 v194, s50, v125
	v_add_nc_u32_e32 v176, s50, v127
	v_add_nc_u32_e32 v200, s50, v119
	s_mov_b32 s4, 0
	v_add_nc_u32_e32 v177, s50, v126
	v_add_nc_u32_e32 v195, s50, v124
	v_add_nc_u32_e32 v198, s50, v121
	v_add_nc_u32_e32 v199, s50, v120
	v_add_nc_u32_e32 v201, s50, v118
	v_add_nc_u32_e32 v158, s50, v132
	v_add_nc_u32_e32 v161, s50, v129
	v_add_nc_u32_e32 v175, s50, v128
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	ds_load_u8 v210, v159
	ds_load_u8 v211, v160
	ds_load_u8 v212, v154
	ds_load_u8 v213, v176
	ds_load_u8 v214, v177
	ds_load_u8 v215, v161
	ds_load_u8 v216, v175
	ds_load_u8 v217, v158
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v162, s50, v147
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v196, v196
	ds_load_u8 v197, v197
	ds_load_u8 v194, v194
	ds_load_u8 v200, v200
	ds_load_u8 v201, v201
	ds_load_u8 v198, v198
	ds_load_u8 v199, v199
	ds_load_u8 v195, v195
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v163, s50, v146
	v_add_nc_u32_e32 v33, s50, v149
	v_add_nc_u32_e32 v167, s50, v143
	v_add_nc_u32_e32 v34, s50, v148
	v_add_nc_u32_e32 v168, s50, v142
	v_add_nc_u32_e32 v170, s50, v141
	v_add_nc_u32_e32 v171, s50, v140
	v_add_nc_u32_e32 v172, s50, v139
	v_add_nc_u32_e32 v173, s50, v138
	v_add_nc_u32_e32 v174, s50, v137
	v_add_nc_u32_e32 v191, s50, v136
	v_add_nc_u32_e32 v192, s50, v135
	v_add_nc_u32_e32 v193, s50, v134
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v154, v179, 16, v178
	v_dual_mov_b32 v182, s11 :: v_dual_add_nc_u32 v165, s50, v145
	v_mov_b32_e32 v178, s7
	v_dual_mov_b32 v177, s6 :: v_dual_add_nc_u32 v166, s50, v144
	v_dual_mov_b32 v181, s10 :: v_dual_mov_b32 v180, s9
	v_dual_mov_b32 v179, s8 :: v_dual_mov_b32 v176, s5
	v_mov_b32_e32 v175, s4
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v203, v209, v204, 0xc0c0004
	v_perm_b32 v204, v206, v205, 0xc0c0004
	v_perm_b32 v205, v208, v207, 0xc0c0004
	ds_load_u8 v162, v162
	ds_load_u8 v163, v163
	ds_load_u8 v33, v33
	ds_load_u8 v206, v167
	ds_load_u8 v207, v168
	ds_load_u8 v208, v165
	ds_load_u8 v209, v166
	ds_load_u8 v34, v34
	ds_load_u8 v172, v172
	ds_load_u8 v173, v173
	ds_load_u8 v170, v170
	ds_load_u8 v192, v192
	ds_load_u8 v193, v193
	ds_load_u8 v174, v174
	ds_load_u8 v191, v191
	ds_load_u8 v171, v171
	v_perm_b32 v158, v184, v183, 0xc0c0004
	v_perm_b32 v159, v190, v185, 0xc0c0004
	v_perm_b32 v160, v187, v186, 0xc0c0004
	v_perm_b32 v218, v189, v188, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[183:190], v[154:157], v[29:32], v[175:182] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v161, v159, 16, v158
	v_lshl_or_b32 v159, v203, 16, v202
	v_lshl_or_b32 v160, v218, 16, v160
	v_lshl_or_b32 v158, v205, 16, v204
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v202, v211, v210, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v203, v217, v212, 0xc0c0004
	v_perm_b32 v204, v214, v213, 0xc0c0004
	v_perm_b32 v205, v216, v215, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v165, v197, v196, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v166, v195, v194, 0xc0c0004
	v_perm_b32 v194, v201, v200, 0xc0c0004
	v_perm_b32 v195, v199, v198, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[175:182], v[154:157], v[1:4], v[175:182] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[183:190], v[158:161], v[21:24], v[183:190] neg_lo:[1,1,0]
	v_lshl_or_b32 v168, v203, 16, v202
	v_lshl_or_b32 v167, v205, 16, v204
	v_lshl_or_b32 v166, v166, 16, v165
	v_lshl_or_b32 v165, v195, 16, v194
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_perm_b32 v34, v207, v206, 0xc0c0004
	v_perm_b32 v163, v209, v208, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	v_perm_b32 v171, v193, v192, 0xc0c0004
	v_perm_b32 v154, v191, v174, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[175:182], v[158:161], v[5:8], v[175:182] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[183:190], v[165:168], v[25:28], v[183:190] neg_lo:[1,1,0]
	v_lshl_or_b32 v157, v33, 16, v162
	v_lshl_or_b32 v156, v163, 16, v34
	v_lshl_or_b32 v155, v170, 16, v172
	v_lshl_or_b32 v154, v154, 16, v171
	v_wmma_i32_16x16x16_iu8 v[175:182], v[165:168], v[13:16], v[175:182] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[183:190], v[154:157], v[17:20], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[175:182], v[154:157], v[9:12], v[175:182] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v165, v185
	v_cvt_f32_i32_e32 v166, v186
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v156, v187
	v_cvt_f32_i32_e32 v157, v188
	v_cvt_f32_i32_e32 v33, v189
	v_cvt_f32_i32_e32 v34, v190
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v172, v177
	v_cvt_f32_i32_e32 v174, v178
	v_cvt_f32_i32_e32 v167, v179
	v_cvt_f32_i32_e32 v168, v180
	v_cvt_f32_i32_e32 v154, v181
	v_cvt_f32_i32_e32 v155, v182
	v_cvt_f32_i32_e32 v170, v183
	v_cvt_f32_i32_e32 v171, v184
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v161, 0
	v_mov_b32_e32 v160, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v161, s1, v111
	v_add_nc_u32_e32 v194, s1, v109
	v_add_nc_u32_e32 v159, s1, v115
	v_add_nc_u32_e32 v197, s1, v103
	v_add_nc_u32_e32 v160, s1, v113
	v_add_nc_u32_e32 v195, s1, v107
	v_add_nc_u32_e32 v196, s1, v105
	v_add_nc_u32_e32 v198, s1, v101
	v_add_nc_u32_e32 v199, s1, v99
	v_add_nc_u32_e32 v200, s1, v97
	v_add_nc_u32_e32 v201, s1, v95
	v_add_nc_u32_e32 v202, s1, v92
	v_add_nc_u32_e32 v213, s1, v91
	v_add_nc_u32_e32 v214, s1, v89
	v_add_nc_u32_e32 v215, s1, v87
	v_add_nc_u32_e32 v216, s1, v164
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v161, v161
	ds_load_u8 v194, v194
	ds_load_u8 v159, v159
	ds_load_u8 v197, v197
	ds_load_u8 v198, v198
	ds_load_u8 v195, v195
	ds_load_u8 v196, v196
	ds_load_u8 v160, v160
	ds_load_u8 v201, v201
	ds_load_u8 v202, v202
	ds_load_u8 v199, v199
	ds_load_u8 v215, v215
	ds_load_u8 v216, v216
	ds_load_u8 v213, v213
	ds_load_u8 v214, v214
	ds_load_u8 v200, v200
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v219, s1, v114
	v_add_nc_u32_e32 v220, s1, v112
	v_add_nc_u32_e32 v217, s1, v117
	v_add_nc_u32_e32 v223, s1, v106
	v_add_nc_u32_e32 v218, s1, v116
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v161, v194, v161, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v221, s1, v110
	v_add_nc_u32_e32 v224, s1, v104
	v_add_nc_u32_e32 v188, s1, v131
	v_add_nc_u32_e32 v207, s1, v123
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v194, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	v_perm_b32 v160, v198, v197, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v195, v202, v201, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v197, s1, v90
	v_add_nc_u32_e32 v198, s1, v88
	v_add_nc_u32_e32 v222, s1, v108
	v_add_nc_u32_e32 v225, s1, v102
	v_add_nc_u32_e32 v226, s1, v100
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v196, v200, v199, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v227, s1, v98
	v_add_nc_u32_e32 v228, s1, v96
	v_add_nc_u32_e32 v229, s1, v94
	v_add_nc_u32_e32 v230, s1, v93
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v161, v159, 16, v161
	v_lshl_or_b32 v160, v194, 16, v160
	v_lshl_or_b32 v159, v196, 16, v195
	v_perm_b32 v194, v216, v215, 0xc0c0004
	v_perm_b32 v195, v214, v213, 0xc0c0004
	ds_load_u8 v196, v219
	ds_load_u8 v199, v220
	ds_load_u8 v200, v217
	ds_load_u8 v201, v223
	ds_load_u8 v202, v224
	ds_load_u8 v213, v221
	ds_load_u8 v214, v222
	ds_load_u8 v215, v218
	ds_load_u8 v216, v227
	ds_load_u8 v217, v228
	ds_load_u8 v218, v225
	ds_load_u8 v197, v197
	ds_load_u8 v198, v198
	ds_load_u8 v219, v229
	ds_load_u8 v220, v230
	ds_load_u8 v221, v226
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v189, s1, v130
	v_add_nc_u32_e32 v208, s1, v122
	v_add_nc_u32_e32 v158, s1, v133
	v_add_nc_u32_e32 v205, s1, v125
	v_add_nc_u32_e32 v192, s1, v127
	v_add_nc_u32_e32 v211, s1, v119
	v_add_nc_u32_e32 v193, s1, v126
	v_add_nc_u32_e32 v206, s1, v124
	v_add_nc_u32_e32 v209, s1, v121
	v_add_nc_u32_e32 v210, s1, v120
	v_add_nc_u32_e32 v212, s1, v118
	v_add_nc_u32_e32 v187, s1, v132
	v_add_nc_u32_e32 v190, s1, v129
	v_add_nc_u32_e32 v191, s1, v128
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v222, v188
	ds_load_u8 v223, v189
	ds_load_u8 v224, v158
	ds_load_u8 v225, v192
	ds_load_u8 v226, v193
	ds_load_u8 v227, v190
	ds_load_u8 v228, v191
	ds_load_u8 v229, v187
	ds_load_u8 v207, v207
	ds_load_u8 v208, v208
	ds_load_u8 v205, v205
	ds_load_u8 v211, v211
	ds_load_u8 v212, v212
	ds_load_u8 v209, v209
	ds_load_u8 v210, v210
	ds_load_u8 v206, v206
	s_mov_b32 s4, 0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v179, s1, v143
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v169, s1, v147
	v_add_nc_u32_e32 v173, s1, v146
	v_add_nc_u32_e32 v162, s1, v149
	v_add_nc_u32_e32 v163, s1, v148
	v_add_nc_u32_e32 v177, s1, v145
	v_add_nc_u32_e32 v178, s1, v144
	v_add_nc_u32_e32 v180, s1, v142
	v_add_nc_u32_e32 v181, s1, v141
	v_add_nc_u32_e32 v182, s1, v140
	v_add_nc_u32_e32 v183, s1, v139
	v_add_nc_u32_e32 v184, s1, v138
	v_add_nc_u32_e32 v185, s1, v137
	v_add_nc_u32_e32 v186, s1, v136
	v_add_nc_u32_e32 v203, s1, v135
	v_add_nc_u32_e32 v204, s1, v134
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v158, v195, 16, v194
	v_dual_mov_b32 v194, s11 :: v_dual_mov_b32 v193, s10
	v_dual_mov_b32 v192, s9 :: v_dual_mov_b32 v191, s8
	v_dual_mov_b32 v190, s7 :: v_dual_mov_b32 v189, s6
	v_dual_mov_b32 v188, s5 :: v_dual_mov_b32 v187, s4
	ds_load_u8 v169, v169
	ds_load_u8 v173, v173
	ds_load_u8 v162, v162
	ds_load_u8 v179, v179
	ds_load_u8 v180, v180
	ds_load_u8 v177, v177
	ds_load_u8 v178, v178
	ds_load_u8 v163, v163
	ds_load_u8 v183, v183
	ds_load_u8 v184, v184
	ds_load_u8 v181, v181
	ds_load_u8 v203, v203
	ds_load_u8 v204, v204
	ds_load_u8 v185, v185
	ds_load_u8 v186, v186
	ds_load_u8 v182, v182
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v230, v199, v196, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v215, v215, v200, 0xc0c0004
	v_perm_b32 v231, v202, v201, 0xc0c0004
	v_perm_b32 v213, v214, v213, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v214, v217, v216, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v216, v221, v218, 0xc0c0004
	v_perm_b32 v217, v198, v197, 0xc0c0004
	v_perm_b32 v218, v220, v219, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[195:202], v[158:161], v[29:32], v[187:194] neg_lo:[1,1,0]
	v_lshl_or_b32 v32, v215, 16, v230
	v_lshl_or_b32 v31, v213, 16, v231
	v_lshl_or_b32 v30, v216, 16, v214
	v_lshl_or_b32 v29, v218, 16, v217
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v213, v223, v222, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v214, v229, v224, 0xc0c0004
	v_perm_b32 v215, v226, v225, 0xc0c0004
	v_perm_b32 v216, v228, v227, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v207, v208, v207, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v205, v206, v205, 0xc0c0004
	v_perm_b32 v206, v212, v211, 0xc0c0004
	v_perm_b32 v208, v210, v209, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[195:202], v[29:32], v[21:24], v[195:202] neg_lo:[1,1,0]
	v_lshl_or_b32 v24, v214, 16, v213
	v_lshl_or_b32 v23, v216, 16, v215
	v_lshl_or_b32 v22, v205, 16, v207
	v_lshl_or_b32 v21, v208, 16, v206
	v_wmma_i32_16x16x16_iu8 v[187:194], v[158:161], v[1:4], v[187:194] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v1, v186, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[195:202], v[21:24], v[25:28], v[195:202] neg_lo:[1,1,0]
	v_perm_b32 v25, v173, v169, 0xc0c0004
	v_perm_b32 v26, v163, v162, 0xc0c0004
	v_perm_b32 v27, v180, v179, 0xc0c0004
	v_perm_b32 v28, v178, v177, 0xc0c0004
	v_perm_b32 v162, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v182, v181, 0xc0c0004
	v_perm_b32 v169, v204, v203, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[187:194], v[29:32], v[5:8], v[187:194] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v26, 16, v25
	v_lshl_or_b32 v3, v28, 16, v27
	v_lshl_or_b32 v2, v163, 16, v162
	v_lshl_or_b32 v1, v1, 16, v169
	v_wmma_i32_16x16x16_iu8 v[187:194], v[21:24], v[13:16], v[187:194] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[195:202], v[1:4], v[17:20], v[195:202] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[187:194], v[1:4], v[9:12], v[187:194] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v180, v197
	v_cvt_f32_i32_e32 v181, v198
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v178, v199
	v_cvt_f32_i32_e32 v179, v200
	v_cvt_f32_i32_e32 v158, v201
	v_cvt_f32_i32_e32 v159, v202
	v_cvt_f32_i32_e32 v187, v187
	v_cvt_f32_i32_e32 v188, v188
	v_cvt_f32_i32_e32 v185, v189
	v_cvt_f32_i32_e32 v186, v190
	v_cvt_f32_i32_e32 v182, v191
	v_cvt_f32_i32_e32 v183, v192
	v_cvt_f32_i32_e32 v160, v193
	v_cvt_f32_i32_e32 v161, v194
	v_cvt_f32_i32_e32 v169, v195
	v_cvt_f32_i32_e32 v184, v196
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 25
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s30, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s44
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(2)
	v_add_lshl_u32 v1, v85, s0, 1
	v_add_lshl_u32 v2, v86, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v3, v84, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v83, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	s_clause 0x1
	buffer_load_u16 v214, v1, s[12:15], 0 offen
	buffer_load_u16 v215, v2, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v1, v82, s0, 1
	v_dual_cndmask_b32 v2, 0x80000000, v3 :: v_dual_cndmask_b32 v3, 0x80000000, v4
	v_add_lshl_u32 v4, v81, s0, 1
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v5, v49, s0, 1
	v_add_lshl_u32 v6, v50, s0, 1
	v_add_lshl_u32 v7, v51, s0, 1
	v_add_lshl_u32 v8, v52, s0, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s0, s26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v9, s0, v80, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v10, s0, v79, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v11, s0, v78, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	s_clause 0x7
	buffer_load_u16 v217, v2, s[28:31], 0 offen
	buffer_load_u16 v216, v3, s[28:31], 0 offen
	buffer_load_u16 v201, v1, s[28:31], 0 offen
	buffer_load_u16 v200, v4, s[28:31], 0 offen
	buffer_load_u16 v194, v5, s[28:31], 0 offen
	buffer_load_u16 v193, v6, s[28:31], 0 offen
	buffer_load_u16 v162, v7, s[28:31], 0 offen
	buffer_load_u16 v163, v8, s[28:31], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v4, s0, v76, 1
	v_add_lshl_u32 v5, s0, v75, 1
	v_dual_cndmask_b32 v1, 0x80000000, v9 :: v_dual_cndmask_b32 v2, 0x80000000, v10
	v_add_lshl_u32 v6, s0, v77, 1
	v_add_lshl_u32 v7, s0, v47, 1
	v_add_lshl_u32 v8, s0, v48, 1
	v_dual_cndmask_b32 v3, 0x80000000, v11 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	s_clause 0x7
	buffer_load_u16 v219, v1, s[28:31], 0 offen
	buffer_load_u16 v218, v2, s[28:31], 0 offen
	buffer_load_u16 v203, v3, s[28:31], 0 offen
	buffer_load_u16 v202, v4, s[28:31], 0 offen
	buffer_load_u16 v196, v5, s[28:31], 0 offen
	buffer_load_u16 v195, v6, s[28:31], 0 offen
	buffer_load_u16 v173, v7, s[28:31], 0 offen
	buffer_load_u16 v177, v8, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v9, s47, v151
	v_dual_mov_b32 v212, 0 :: v_dual_add_nc_u32 v1, s47, v150
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v5, s47, v153
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v10, s47, v152
	v_mov_b32_e32 v152, 0
	ds_load_b128 v[25:28], v9
	ds_load_b128 v[13:16], v9 offset:1024
	ds_load_b128 v[17:20], v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[9:12], v10 offset:1024
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[29:32], v1
	ds_load_b128 v[1:4], v1 offset:1024
	ds_load_b128 v[21:24], v5
	ds_load_b128 v[5:8], v5 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v150, 0, 1, s3
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v208, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v150
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v150, 0
	v_mov_b32_e32 v189, 0
	v_mov_b32_e32 v211, 0
	v_mov_b32_e32 v153, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v227, s11 :: v_dual_add_nc_u32 v150, s46, v111
	v_dual_mov_b32 v226, s10 :: v_dual_add_nc_u32 v151, s46, v109
	v_dual_mov_b32 v225, s9 :: v_dual_add_nc_u32 v152, s46, v115
	v_dual_mov_b32 v222, s6 :: v_dual_add_nc_u32 v189, s46, v103
	v_dual_mov_b32 v224, s8 :: v_dual_add_nc_u32 v153, s46, v113
	v_dual_mov_b32 v223, s7 :: v_dual_add_nc_u32 v190, s46, v101
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	ds_load_u8 v152, v152
	ds_load_u8 v153, v153
	ds_load_u8 v189, v189
	ds_load_u8 v190, v190
	v_dual_mov_b32 v220, s4 :: v_dual_add_nc_u32 v191, s46, v107
	v_dual_mov_b32 v221, s5 :: v_dual_add_nc_u32 v192, s46, v105
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v204, s46, v95
	v_add_nc_u32_e32 v205, s46, v92
	v_add_nc_u32_e32 v206, s46, v91
	v_add_nc_u32_e32 v198, s46, v99
	v_add_nc_u32_e32 v199, s46, v97
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v191, v191
	ds_load_u8 v192, v192
	ds_load_u8 v204, v204
	ds_load_u8 v205, v205
	ds_load_u8 v198, v198
	ds_load_u8 v199, v199
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v151, s46, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v153, s46, v164
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v190, s46, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v207, v151
	ds_load_u8 v208, v153
	ds_load_u8 v206, v206
	ds_load_u8 v190, v190
	v_lshl_or_b32 v153, v152, 16, v150
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v151, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v191, v205, v204, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v192, v199, v198, 0xc0c0004
	v_lshl_or_b32 v152, v151, 16, v189
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v192, 16, v191
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v150, v208, v207, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v206, 0xc0c0004
	v_lshl_or_b32 v150, v189, 16, v150
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v189, s46, v108
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[228:235], v[150:153], v[29:32], v[220:227] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[220:227], v[150:153], v[1:4], v[220:227] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v150, s46, v114
	v_add_nc_u32_e32 v151, s46, v112
	v_add_nc_u32_e32 v152, s46, v116
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v189, v189
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v153, s46, v104
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	ds_load_u8 v152, v152
	ds_load_u8 v153, v153
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v151, s46, v117
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v152, s46, v106
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v239, v151, 16, v150
	ds_load_u8 v152, v152
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v150, s46, v98
	v_add_nc_u32_e32 v151, s46, v96
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v153, s46, v110
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v153, v153
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v151, s46, v102
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v153, v189, v153, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v189, s46, v128
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v238, v153, 16, v152
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v152, s46, v100
	v_add_nc_u32_e32 v153, s46, v126
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v189, v189
	ds_load_u8 v152, v152
	ds_load_u8 v153, v153
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v152, s46, v93
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v237, v151, 16, v150
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v150, s46, v90
	v_add_nc_u32_e32 v151, s46, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v151, s46, v94
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v152, s46, v132
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v236, v151, 16, v150
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v150, s46, v131
	v_add_nc_u32_e32 v151, s46, v130
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	v_wmma_i32_16x16x16_iu8 v[220:227], v[236:239], v[5:8], v[220:227] neg_lo:[1,1,0]
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	v_wmma_i32_16x16x16_iu8 v[228:235], v[236:239], v[21:24], v[228:235] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v151, s46, v133
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v152, s46, v127
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v243, v151, 16, v150
	ds_load_u8 v152, v152
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v150, s46, v123
	v_add_nc_u32_e32 v151, s46, v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v153, s46, v129
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v153, v153
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v151, s46, v125
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v153, v189, v153, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v189, s46, v144
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v242, v153, 16, v152
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v152, s46, v124
	v_add_nc_u32_e32 v153, s46, v142
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v189, v189
	ds_load_u8 v152, v152
	ds_load_u8 v153, v153
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v152, s46, v120
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v241, v151, 16, v150
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v150, s46, v119
	v_add_nc_u32_e32 v151, s46, v118
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v151, s46, v121
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v152, s46, v148
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v240, v151, 16, v150
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v150, s46, v147
	v_add_nc_u32_e32 v151, s46, v146
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	v_wmma_i32_16x16x16_iu8 v[220:227], v[240:243], v[13:16], v[220:227] neg_lo:[1,1,0]
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	v_wmma_i32_16x16x16_iu8 v[228:235], v[240:243], v[25:28], v[228:235] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v151, s46, v149
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v152, s46, v143
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v247, v151, 16, v150
	ds_load_u8 v152, v152
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v150, s46, v139
	v_add_nc_u32_e32 v151, s46, v138
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v153, s46, v145
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v153, v153
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v151, s46, v141
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v153, v189, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v246, v153, 16, v152
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v152, s46, v140
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v152, s46, v136
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v245, v151, 16, v150
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v150, s46, v135
	v_add_nc_u32_e32 v151, s46, v134
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v152, v152
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v151, s46, v137
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v244, v151, 16, v150
	v_wmma_i32_16x16x16_iu8 v[220:227], v[244:247], v[9:12], v[220:227] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[228:235], v[244:247], v[17:20], v[228:235] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v206, v220
	v_cvt_f32_i32_e32 v208, v221
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v210, v222
	v_cvt_f32_i32_e32 v211, v223
	v_cvt_f32_i32_e32 v189, v224
	v_cvt_f32_i32_e32 v190, v225
	v_cvt_f32_i32_e32 v153, v226
	v_cvt_f32_i32_e32 v150, v227
	v_cvt_f32_i32_e32 v207, v230
	v_cvt_f32_i32_e32 v209, v231
	v_cvt_f32_i32_e32 v191, v232
	v_cvt_f32_i32_e32 v192, v233
	v_cvt_f32_i32_e32 v151, v234
	v_cvt_f32_i32_e32 v152, v235
	v_cvt_f32_i32_e32 v212, v228
	v_cvt_f32_i32_e32 v213, v229
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v205, 0
	v_mov_b32_e32 v204, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v111, s45, v111
	v_add_nc_u32_e32 v109, s45, v109
	v_add_nc_u32_e32 v115, s45, v115
	v_add_nc_u32_e32 v103, s45, v103
	v_add_nc_u32_e32 v113, s45, v113
	v_add_nc_u32_e32 v107, s45, v107
	v_add_nc_u32_e32 v105, s45, v105
	v_add_nc_u32_e32 v101, s45, v101
	v_add_nc_u32_e32 v99, s45, v99
	v_add_nc_u32_e32 v97, s45, v97
	v_add_nc_u32_e32 v95, s45, v95
	v_add_nc_u32_e32 v92, s45, v92
	v_add_nc_u32_e32 v91, s45, v91
	v_add_nc_u32_e32 v89, s45, v89
	v_add_nc_u32_e32 v87, s45, v87
	v_add_nc_u32_e32 v164, s45, v164
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v111, v111
	ds_load_u8 v109, v109
	ds_load_u8 v115, v115
	ds_load_u8 v103, v103
	ds_load_u8 v101, v101
	ds_load_u8 v107, v107
	ds_load_u8 v105, v105
	ds_load_u8 v113, v113
	ds_load_u8 v95, v95
	ds_load_u8 v92, v92
	ds_load_u8 v99, v99
	ds_load_u8 v87, v87
	ds_load_u8 v164, v164
	ds_load_u8 v91, v91
	ds_load_u8 v89, v89
	ds_load_u8 v97, v97
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v114, s45, v114
	v_add_nc_u32_e32 v197, s45, v106
	v_add_nc_u32_e32 v198, s45, v104
	v_add_nc_u32_e32 v112, s45, v112
	v_add_nc_u32_e32 v117, s45, v117
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v104, v109, v111, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v110, s45, v110
	v_add_nc_u32_e32 v108, s45, v108
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v101, v101, v103, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v102, s45, v102
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v103, v105, v107, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v106, v113, v115, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v100, s45, v100
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v92, v92, v95, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v98, s45, v98
	v_add_nc_u32_e32 v96, s45, v96
	v_add_nc_u32_e32 v116, s45, v116
	v_add_nc_u32_e32 v94, s45, v94
	v_add_nc_u32_e32 v93, s45, v93
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v97, v99, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v90, s45, v90
	v_add_nc_u32_e32 v88, s45, v88
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v106, v106, 16, v104
	v_lshl_or_b32 v105, v103, 16, v101
	v_lshl_or_b32 v104, v95, 16, v92
	ds_load_u8 v95, v114
	ds_load_u8 v97, v112
	ds_load_u8 v99, v117
	ds_load_u8 v101, v197
	ds_load_u8 v107, v198
	ds_load_u8 v109, v110
	ds_load_u8 v108, v108
	ds_load_u8 v110, v116
	ds_load_u8 v98, v98
	ds_load_u8 v96, v96
	ds_load_u8 v102, v102
	ds_load_u8 v111, v90
	ds_load_u8 v112, v88
	ds_load_u8 v113, v94
	ds_load_u8 v114, v93
	ds_load_u8 v100, v100
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v131, s45, v131
	v_add_nc_u32_e32 v130, s45, v130
	v_add_nc_u32_e32 v133, s45, v133
	v_add_nc_u32_e32 v127, s45, v127
	v_add_nc_u32_e32 v129, s45, v129
	v_add_nc_u32_e32 v128, s45, v128
	v_add_nc_u32_e32 v126, s45, v126
	v_add_nc_u32_e32 v132, s45, v132
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v115, v131
	ds_load_u8 v116, v130
	ds_load_u8 v117, v133
	ds_load_u8 v127, v127
	ds_load_u8 v126, v126
	ds_load_u8 v129, v129
	ds_load_u8 v128, v128
	ds_load_u8 v130, v132
	v_perm_b32 v87, v164, v87, 0xc0c0004
	v_perm_b32 v89, v89, v91, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v149, s45, v149
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v103, v89, 16, v87
	v_mov_b32_e32 v94, s11
	v_dual_mov_b32 v93, s10 :: v_dual_add_nc_u32 v148, s45, v148
	v_dual_mov_b32 v92, s9 :: v_dual_add_nc_u32 v147, s45, v147
	v_dual_mov_b32 v91, s8 :: v_dual_add_nc_u32 v146, s45, v146
	v_dual_mov_b32 v90, s7 :: v_dual_add_nc_u32 v145, s45, v145
	v_dual_mov_b32 v89, s6 :: v_dual_add_nc_u32 v144, s45, v144
	v_dual_mov_b32 v88, s5 :: v_dual_add_nc_u32 v143, s45, v143
	v_dual_mov_b32 v87, s4 :: v_dual_add_nc_u32 v142, s45, v142
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v123, s45, v123
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v131, v97, v95, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v110, v110, v99, 0xc0c0004
	v_perm_b32 v107, v107, v101, 0xc0c0004
	v_perm_b32 v108, v108, v109, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v109, v96, v98, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v132, v100, v102, 0xc0c0004
	v_perm_b32 v111, v112, v111, 0xc0c0004
	v_perm_b32 v112, v114, v113, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v122, s45, v122
	v_add_nc_u32_e32 v125, s45, v125
	v_add_nc_u32_e32 v119, s45, v119
	v_add_nc_u32_e32 v118, s45, v118
	v_add_nc_u32_e32 v124, s45, v124
	v_add_nc_u32_e32 v121, s45, v121
	v_add_nc_u32_e32 v120, s45, v120
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[95:102], v[103:106], v[29:32], v[87:94] neg_lo:[1,1,0]
	v_lshl_or_b32 v32, v110, 16, v131
	v_lshl_or_b32 v31, v108, 16, v107
	v_lshl_or_b32 v30, v132, 16, v109
	v_lshl_or_b32 v29, v112, 16, v111
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v107, v116, v115, 0xc0c0004
	ds_load_u8 v109, v123
	ds_load_u8 v110, v122
	ds_load_u8 v111, v125
	ds_load_u8 v112, v119
	ds_load_u8 v113, v118
	ds_load_u8 v114, v121
	ds_load_u8 v115, v120
	ds_load_u8 v116, v124
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v134, s45, v134
	v_add_nc_u32_e32 v141, s45, v141
	v_add_nc_u32_e32 v140, s45, v140
	v_add_nc_u32_e32 v139, s45, v139
	v_add_nc_u32_e32 v138, s45, v138
	v_add_nc_u32_e32 v137, s45, v137
	v_add_nc_u32_e32 v136, s45, v136
	v_add_nc_u32_e32 v135, s45, v135
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v108, v130, v117, 0xc0c0004
	v_perm_b32 v117, v126, v127, 0xc0c0004
	v_perm_b32 v118, v128, v129, 0xc0c0004
	ds_load_u8 v119, v147
	ds_load_u8 v120, v146
	ds_load_u8 v121, v149
	ds_load_u8 v122, v143
	ds_load_u8 v123, v142
	ds_load_u8 v124, v145
	ds_load_u8 v125, v144
	ds_load_u8 v126, v148
	ds_load_u8 v127, v139
	ds_load_u8 v128, v138
	ds_load_u8 v129, v141
	ds_load_u8 v130, v135
	ds_load_u8 v131, v134
	ds_load_u8 v132, v137
	ds_load_u8 v133, v136
	ds_load_u8 v134, v140
	v_wmma_i32_16x16x16_iu8 v[95:102], v[29:32], v[21:24], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	v_lshl_or_b32 v24, v108, 16, v107
	v_lshl_or_b32 v23, v118, 16, v117
	v_wmma_i32_16x16x16_iu8 v[87:94], v[103:106], v[1:4], v[87:94] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v110, v116, v111, 0xc0c0004
	v_perm_b32 v111, v113, v112, 0xc0c0004
	v_perm_b32 v112, v115, v114, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[87:94], v[29:32], v[5:8], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v22, v110, 16, v109
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v107, v128, v127, 0xc0c0004
	v_lshl_or_b32 v21, v112, 16, v111
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v109, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v1, v133, v132, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[95:102], v[21:24], v[25:28], v[95:102] neg_lo:[1,1,0]
	v_perm_b32 v25, v120, v119, 0xc0c0004
	v_perm_b32 v26, v126, v121, 0xc0c0004
	v_perm_b32 v27, v123, v122, 0xc0c0004
	v_perm_b32 v28, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v134, v129, 0xc0c0004
	v_lshl_or_b32 v1, v1, 16, v109
	v_lshl_or_b32 v4, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[87:94], v[21:24], v[13:16], v[87:94] neg_lo:[1,1,0]
	v_lshl_or_b32 v3, v28, 16, v27
	v_lshl_or_b32 v2, v108, 16, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[1:4], v[17:20], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[1:4], v[9:12], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v197, v95
	v_cvt_f32_i32_e32 v222, v96
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v223, v97
	v_cvt_f32_i32_e32 v224, v98
	v_cvt_f32_i32_e32 v220, v99
	v_cvt_f32_i32_e32 v221, v100
	v_cvt_f32_i32_e32 v198, v101
	v_cvt_f32_i32_e32 v199, v102
	v_cvt_f32_i32_e32 v227, v87
	v_cvt_f32_i32_e32 v228, v88
	v_cvt_f32_i32_e32 v229, v89
	v_cvt_f32_i32_e32 v230, v90
	v_cvt_f32_i32_e32 v225, v91
	v_cvt_f32_i32_e32 v226, v92
	v_cvt_f32_i32_e32 v204, v93
	v_cvt_f32_i32_e32 v205, v94
.LBB0_16:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s35, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s35, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15) lgkmcnt(1)
	v_mov_b16_e64 v21.h, v217.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s0, 7
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v20.h, v218.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s44
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v85, s1, 1
	v_add_lshl_u32 v2, v86, s1, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s1, s34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v3, v84, s1, 1
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v6, v83, s1, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v7, v82, s1, 1
	v_add_lshl_u32 v8, v81, s1, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v4, v1, s[12:15], 0 offen
	buffer_load_u16 v5, v2, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v1, 0x80000000, v6 :: v_dual_cndmask_b32 v2, 0x80000000, v7
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	s_clause 0x3
	buffer_load_u16 v8, v3, s[28:31], 0 offen
	buffer_load_u16 v9, v1, s[28:31], 0 offen
	buffer_load_u16 v10, v2, s[28:31], 0 offen
	buffer_load_u16 v11, v6, s[28:31], 0 offen
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s1, s26
	.loc	1 370 31 is_stmt 0              ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v28.h, v195.l
	v_add_lshl_u32 v7, s0, v80, 1
	v_add_lshl_u32 v2, s0, v79, 1
	v_add_lshl_u32 v3, s0, v78, 1
	v_add_lshl_u32 v6, s0, v76, 1
	v_add_lshl_u32 v12, s0, v77, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v1, 0x80000000, v7 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_add_lshl_u32 v7, s0, v75, 1
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v17, 0x80000000, v12, vcc_lo
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v49, v49, s1, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x5
	buffer_load_u16 v12, v1, s[28:31], 0 offen
	buffer_load_u16 v13, v2, s[28:31], 0 offen
	buffer_load_u16 v14, v3, s[28:31], 0 offen
	buffer_load_u16 v15, v6, s[28:31], 0 offen
	buffer_load_u16 v16, v7, s[28:31], 0 offen
	buffer_load_u16 v17, v17, s[28:31], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, 0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v6, s27, v73
	.loc	1 364 22 is_stmt 1              ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v1.h, v215.l
	v_mov_b16_e64 v2.h, v214.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v7.h, v219.l
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v2.l, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v7.l, v1.l
	v_mov_b16_e32 v20.l, v1.l
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v3, 0x78, v74
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v21.l, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v28.l, v1.l
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s4, s33, s27
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v50, v50, s1, 1
	v_add_lshl_u32 v51, v51, s1, 1
	v_add_lshl_u32 v52, v52, s1, 1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s4, s4, s26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v22.h, v216.l
	v_mov_b16_e64 v25.h, v201.l
	v_mov_b16_e32 v22.l, v1.l
	v_mov_b16_e32 v25.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v77, v1, v20
	v_mul_f32_e32 v78, v1, v7
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v80, v1, v21
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v20, v2, v20
	v_dual_mul_f32 v7, v2, v7 :: v_dual_mul_f32 v84, v1, v25
	v_mul_f32_e32 v85, v1, v28
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v3, s4, v3, v6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v6, 0x80000000, v49 :: v_dual_cndmask_b32 v49, 0x80000000, v50
	v_dual_cndmask_b32 v50, 0x80000000, v51 :: v_dual_cndmask_b32 v51, 0x80000000, v52
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v52, v78, v187, v71
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v78, v80, v175, v69
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v80, v7, v169, v53
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v27.h, v196.l
	v_mov_b16_e32 v27.l, v1.l
	v_mov_b16_e64 v24.h, v202.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v26.h, v200.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v24.l, v1.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v26.l, v1.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v25, v2, v25 :: v_dual_mul_f32 v86, v1, v27
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v27, v2, v27
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v47, s0, v47, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v19.h, v193.l
	v_mov_b16_e32 v19.l, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v48, s0, v48, 1
	v_mov_b16_e64 v23.h, v203.l
	v_mov_b16_e32 v23.l, v1.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v79, v1, v22
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v81, v1, v24
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v83, v1, v26 :: v_dual_mul_f32 v28, v2, v28
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v24, v2, v24
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v26, v2, v26
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v20, v20, v184, v68
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v87, v1, v19 :: v_dual_cndmask_b32 v48, 0x80000000, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v18.h, v194.l
	v_mov_b16_e32 v18.l, v1.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v22, v2, v22
	v_dual_mul_f32 v21, v2, v21 :: v_dual_mul_f32 v82, v1, v23
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v23, v2, v23 :: v_dual_mul_f32 v88, v1, v18
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v77, v77, v188, v72
	v_fma_f32 v81, v81, v186, v65
	v_fma_f32 v24, v24, v181, v61
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v25, v25, v165, v58
	v_fma_f32 v26, v26, v166, v59
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v28, v28, v179, v55
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v20, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v79, v79, v176, v70
	v_fma_f32 v21, v21, v170, v66
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v23, v23, v180, v60
	v_fma_f32 v86, v86, v182, v56
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v65, v81, s2
	v_cndmask_b32_e64 v24, v61, v24, s2
	v_cndmask_b32_e64 v26, v59, v26, s2
	v_cndmask_b32_e64 v25, v58, v25, s2
	v_cndmask_b32_e64 v28, v55, v28, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v22, v171, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v66, v21, s2
	v_cndmask_b32_e64 v23, v60, v23, s2
	v_cndmask_b32_e64 v56, v56, v86, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v82, v82, v185, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v67, v22, s2
	v_cndmask_b32_e64 v53, v53, v80, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v84, v84, v172, v62
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v85, v85, v183, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v83, v83, v174, v63
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v78, s2
	v_cndmask_b32_e64 v64, v64, v82, s2
	v_cndmask_b32_e64 v62, v62, v84, s2
	v_cndmask_b32_e64 v57, v57, v85, s2
	v_cndmask_b32_e64 v63, v63, v83, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.h, v1.l
	v_mov_b16_e32 v75.h, v1.l
	v_mov_b16_e32 v30.h, v1.l
	v_mov_b16_e32 v76.h, v1.l
	v_mov_b16_e32 v29.h, v1.l
	v_mov_b16_e32 v32.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v88, v88, v167, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v74.h, v1.l
	v_mov_b16_e32 v73.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v87, v87, v168, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_lshl_b32 s12, s27, 4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v19, v2, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v19, v19, v157, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v44, v19, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v27, v27, v178, v54
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v10, 16, v10
	s_clause 0x3
	buffer_load_u16 v89, v6, s[28:31], 0 offen
	buffer_load_u16 v49, v49, s[28:31], 0 offen
	buffer_load_u16 v7, v50, s[28:31], 0 offen
	buffer_load_u16 v6, v51, s[28:31], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v54, v27, s2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_clause 0x1
	buffer_load_u16 v20, v47, s[28:31], 0 offen
	buffer_load_u16 v47, v48, s[28:31], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v54, v5, v8 :: v_dual_lshlrev_b32 v9, 16, v9
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v8, v4, v8 :: v_dual_lshlrev_b32 v11, 16, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v72, v77, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v5, v9
	v_dual_mul_f32 v9, v4, v9 :: v_dual_mul_f32 v58, v5, v10
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v55, v5, v11 :: v_dual_lshlrev_b32 v14, 16, v14
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v10, v4, v10 :: v_dual_lshlrev_b32 v15, 16, v15
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v11, v4, v11 :: v_dual_lshlrev_b32 v16, 16, v16
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v59, v5, v13
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v61, v5, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v71, v52, s2
	v_cndmask_b32_e64 v52, v70, v79, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v60, v5, v12 :: v_dual_lshlrev_b32 v17, 16, v17
	v_dual_mul_f32 v13, v4, v13 :: v_dual_mul_f32 v66, v5, v14
	v_mul_f32_e32 v12, v4, v12
	v_dual_mul_f32 v15, v4, v15 :: v_dual_mul_f32 v70, v5, v16
	v_mul_f32_e32 v14, v4, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v10, v207, v25
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v59, v59, v228, v50
	v_fma_f32 v61, v61, v230, v65
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v67, v5, v17 :: v_dual_mul_f32 v16, v4, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v11, v209, v26
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v60, v60, v227, v51
	v_fma_f32 v15, v15, v224, v24
	v_fma_f32 v70, v70, v225, v56
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v25, v10, s3
	v_cndmask_b32_e64 v25, v50, v59, s3
	v_cndmask_b32_e64 v50, v65, v61, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v17, v4, v17
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v220, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v26, v11, s3
	v_cndmask_b32_e64 v26, v51, v60, s3
	v_cndmask_b32_e64 v15, v24, v15, s3
	v_cndmask_b32_e64 v24, v56, v70, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v56, 0xbfb8aa3b, v50
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v17, v17, v221, v28
	v_fma_f32 v12, v12, v197, v53
	v_fma_f32 v13, v13, v222, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v27, v16, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v27, 0xbfb8aa3b, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v28, v17, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v25
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v14, v14, v223, v23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v54, v54, v206, v69
	v_fma_f32 v48, v48, v208, v52
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v66, v66, v229, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v68, v13, s3
	v_cndmask_b32_e64 v12, v53, v12, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v9, v213, v22
	v_fma_f32 v58, v58, v210, v62
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v67, v67, v226, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v23, v14, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v8, v212, v21
	v_fma_f32 v55, v55, v211, v63
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v52, v48, s3
	v_cndmask_b32_e64 v52, v69, v54, s3
	v_cndmask_b32_e64 v51, v64, v66, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v53, 0xbfb8aa3b, v12 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v13
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v22, v9, s3
	v_cndmask_b32_e64 v22, v62, v58, s3
	v_cndmask_b32_e64 v23, v57, v67, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v57, 0xbfb8aa3b, v14 :: v_dual_mul_f32 v58, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v21, v8, s3
	v_cndmask_b32_e64 v21, v63, v55, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v55, 0xbfb8aa3b, v51 :: v_dual_mul_f32 v62, 0xbfb8aa3b, v17
	v_dual_mul_f32 v61, 0xbfb8aa3b, v16 :: v_dual_fmac_f32 v28, 0xbfb8aa3b, v25
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v54
	v_dual_mul_f32 v59, 0xbfb8aa3b, v24 :: v_dual_mul_f32 v60, 0xbfb8aa3b, v23
	v_cndmask_b32_e64 v27, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v53
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v56
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v58
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v57
	v_cndmask_b32_e64 v54, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v55
	v_exp_f32_e32 v28, v28
	v_cndmask_b32_e64 v53, 0, 0x42800000, s4
	v_cndmask_b32_e64 v56, 0, 0x42800000, s5
	v_cndmask_b32_e64 v58, 0, 0x42800000, s7
	v_cndmask_b32_e64 v57, 0, 0x42800000, s8
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v60
	v_dual_fmac_f32 v27, 0xbfb8aa3b, v26 :: v_dual_fmac_f32 v54, 0xbfb8aa3b, v13
	v_cndmask_b32_e64 v55, 0, 0x42800000, s6
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v60, 0, 0x42800000, s9
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v59
	v_dual_fmac_f32 v53, 0xbfb8aa3b, v12 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v50
	v_dual_fmac_f32 v58, 0xbfb8aa3b, v15 :: v_dual_fmac_f32 v57, 0xbfb8aa3b, v14
	v_exp_f32_e32 v27, v27
	v_exp_f32_e32 v54, v54
	v_ldexp_f32 v28, v28, v63
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v51
	v_cndmask_b32_e64 v59, 0, 0x42800000, s10
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v23
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v57, v57
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s1
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v55, v55
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s8
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v24
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v60, v60
	v_ldexp_f32 v27, v27, v64
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s6
	v_ldexp_f32 v54, v54, v65
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s9
	v_ldexp_f32 v53, v53, v66
	v_ldexp_f32 v56, v56, v67
	v_ldexp_f32 v57, v57, v70
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v27, 1.0, v27 :: v_dual_add_f32 v54, 1.0, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v63, null, v28, v28, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v55, v55, v68
	v_ldexp_f32 v58, v58, v69
	v_ldexp_f32 v60, v60, v71
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v53, 1.0, v53 :: v_dual_add_f32 v56, 1.0, v56
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v65, null, v27, v27, v26
	v_rcp_f32_e32 v84, v63
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v55, 1.0, v55 :: v_dual_add_f32 v58, 1.0, v58
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v54, v54, v13
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v53, v53, v12
	v_div_scale_f32 v71, null, v56, v56, v50
	v_div_scale_f32 v82, null, v57, v57, v14
	v_rcp_f32_e32 v85, v65
	v_div_scale_f32 v78, null, v55, v55, v51
	v_rcp_f32_e32 v86, v67
	v_div_scale_f32 v80, null, v58, v58, v15
	v_rcp_f32_e32 v90, v69
	v_rcp_f32_e32 v91, v71
	v_rcp_f32_e32 v94, v82
	v_fma_f32 v97, -v63, v84, 1.0
	v_rcp_f32_e32 v92, v78
	v_div_scale_f32 v64, vcc_lo, v25, v28, v25
	v_rcp_f32_e32 v93, v80
	v_fma_f32 v98, -v65, v85, 1.0
	v_fmac_f32_e32 v84, v97, v84
	v_fma_f32 v99, -v67, v86, 1.0
	v_div_scale_f32 v66, s0, v26, v27, v26
	v_fma_f32 v100, -v69, v90, 1.0
	v_fma_f32 v101, -v71, v91, 1.0
	v_fma_f32 v104, -v82, v94, 1.0
	v_fmac_f32_e32 v85, v98, v85
	v_mul_f32_e32 v97, v64, v84
	v_div_scale_f32 v68, s1, v13, v54, v13
	v_fma_f32 v102, -v78, v92, 1.0
	v_dual_fmac_f32 v86, v99, v86 :: v_dual_fmac_f32 v91, v101, v91
	v_div_scale_f32 v70, s4, v12, v53, v12
	v_div_scale_f32 v77, s5, v50, v56, v50
	v_div_scale_f32 v95, s8, v14, v57, v14
	v_fma_f32 v103, -v80, v93, 1.0
	v_fmac_f32_e32 v90, v100, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v94, v104, v94 :: v_dual_mul_f32 v101, v77, v91
	v_mul_f32_e32 v98, v66, v85
	v_fma_f32 v105, -v63, v97, v64
	v_dual_fmac_f32 v92, v102, v92 :: v_dual_mul_f32 v99, v68, v86
	v_div_scale_f32 v79, s6, v51, v55, v51
	v_div_scale_f32 v81, s7, v15, v58, v15
	v_dual_fmac_f32 v93, v103, v93 :: v_dual_mul_f32 v100, v70, v90
	v_dual_mul_f32 v104, v95, v94 :: v_dual_fmac_f32 v97, v105, v84
	v_fma_f32 v106, -v65, v98, v66
	v_fma_f32 v107, -v67, v99, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v103, v81, v93
	v_fma_f32 v108, -v69, v100, v70
	v_fma_f32 v109, -v71, v101, v77
	v_mul_f32_e32 v102, v79, v92
	v_dual_fmac_f32 v98, v106, v85 :: v_dual_fmac_f32 v99, v107, v86
	v_fma_f32 v63, -v63, v97, v64
	v_fma_f32 v111, -v80, v103, v81
	v_dual_fmac_f32 v100, v108, v90 :: v_dual_fmac_f32 v101, v109, v91
	v_fma_f32 v110, -v78, v102, v79
	v_fma_f32 v64, -v65, v98, v66
	v_div_fmas_f32 v63, v63, v84, v97
	v_fma_f32 v65, -v67, v99, v68
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v103, v111, v93
	v_fma_f32 v66, -v69, v100, v70
	v_div_fmas_f32 v64, v64, v85, v98
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v25, v63, v28, v25
	v_fmac_f32_e32 v102, v110, v92
	v_fma_f32 v112, -v82, v104, v95
	v_fma_f32 v67, -v71, v101, v77
	v_div_fmas_f32 v65, v65, v86, v99
	s_mov_b32 vcc_lo, s4
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v48, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v78, v102, v79
	v_div_fmas_f32 v28, v66, v90, v100
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v69, -v80, v103, v81
	v_div_fixup_f32 v26, v64, v27, v26
	v_div_fmas_f32 v27, v67, v91, v101
	v_div_fixup_f32 v13, v65, v54, v13
	v_fmac_f32_e32 v104, v112, v94
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v12, v28, v53, v12
	v_div_fmas_f32 v48, v68, v92, v102
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v27, v27, v56, v50
	v_div_fmas_f32 v28, v69, v93, v103
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v9, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v70, -v82, v104, v95
	s_mov_b32 vcc_lo, s8
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v26, v52, v26
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v25.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v48, v48, v55, v51
	v_div_fmas_f32 v13, v70, v94, v104
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v8, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v28, v58, v15
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v15, v21, v27
	v_mul_f32_e32 v21, v22, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v13, v13, v57, v14
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v14, 1, v31
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_mov_b16_e32 v75.l, v15.h
	v_mov_b16_e32 v76.l, v21.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v13, v25, v14, 0x7fff
	v_mov_b16_e32 v29.l, v9.h
	v_and_b32_e32 v25, 1, v75
	v_mov_b16_e32 v30.l, v12.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v11, v11, v8 :: v_dual_and_b32 v8, 1, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s10
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v14, 1, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v83, null, v60, v60, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v26.h
	v_cmp_o_f32_e64 s4, v12, v12
	v_cmp_o_f32_e64 s5, v15, v15
	v_add3_u32 v12, v12, v14, 0x7fff
	v_add3_u32 v15, v15, v25, 0x7fff
	v_cmp_o_f32_e64 s1, v9, v9
	v_add3_u32 v9, v9, v8, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v96, v83
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.l, 0x7fff, v12.h, s4
	v_cndmask_b16 v12.h, 0x7fff, v15.h, s5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v15, v59, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v22, 1, v32
	v_cmp_o_f32_e64 s0, v26, v26
	v_cndmask_b16 v8.h, 0x7fff, v13.h, vcc_lo
	v_and_b32_e32 v13, 1, v76
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v22, v26, v22, 0x7fff
	v_mov_b16_e32 v74.l, v10.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v45, v88, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v73.l, v11.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v8.l, 0x7fff, v22.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v83, v96, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s8, v10, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	v_cndmask_b32_e64 v62, 0, 0x42800000, s11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s7, v11, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v96, v22, v96
	v_div_scale_f32 v22, null, v15, v15, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v17
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s6, v21, v21
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v31, 16, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v28, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v14, 1, v73
	v_add3_u32 v13, v21, v13, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v21, v62
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v49, v5, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s1
	v_add3_u32 v11, v11, v14, 0x7fff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v29, 16, v89
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v46, v87, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v18, v2, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v22, v28, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v31, v4, v31 :: v_dual_mul_f32 v50, v5, v29
	v_mul_f32_e32 v29, v4, v29
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v18, v18, v156, v43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v28, v45, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v26, 1, v74
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s6
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v43, v18, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v10, v26, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v11.l, 0x7fff, v10.h, s8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v21, v21, v26
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, vcc_lo, v23, v60, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v10, 0xbfb8aa3b, v16 :: v_dual_add_f32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v10, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v21, v21, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v46, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v10, v10, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v30, v46, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v48, null, v10, v10, v16
	v_fmac_f32_e32 v46, v52, v46
	v_div_scale_f32 v52, s1, v17, v21, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v45, v48
	v_fma_f32 v53, -v48, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v26, v27, v96 :: v_dual_fmac_f32 v45, v53, v45
	v_fma_f32 v32, -v83, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v26, v32, v96
	v_div_scale_f32 v32, s0, v24, v15, v24
	v_fma_f32 v27, -v83, v26, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v51, v32, v28
	v_div_fmas_f32 v26, v27, v96, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v22, v51, v32
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v51, v27, v28
	v_div_scale_f32 v53, s4, v16, v10, v16
	v_mul_f32_e32 v27, v52, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v22, v51, v32
	v_fma_f32 v32, -v30, v27, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v54, v53, v45
	v_div_fmas_f32 v22, v22, v28, v51
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v29, v191, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v27, v32, v46
	v_fma_f32 v44, -v48, v54, v53
	v_div_fixup_f32 v15, v22, v15, v24
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v24.l, v1.l
	v_mov_b16_e64 v24.h, v173.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v30, v27, v52
	v_fmac_f32_e32 v54, v44, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v30, v31, v192, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v28, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v29, v46, v27
	v_fma_f32 v31, -v48, v54, v53
	s_mov_b32 vcc_lo, s4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v19, v30, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v27, v21, v17
	v_div_fmas_f32 v29, v31, v45, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v49, v190, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v21, v26, v60, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v23.h, v1.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v13, v19, v17
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v29, v10, v16
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v50, v189, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v19.l, v1.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.l, v13.h
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v19.h, v177.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v25, v16, s3
	v_cndmask_b32_e64 v14, v14, v31, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v10, v18, v10 :: v_dual_and_b32 v17, 1, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v15, v16, v15
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v1, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v10.h
	v_add3_u32 v17, v13, v17, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v13, v14, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.h, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v14, v16, v161, v42
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.h, v1.l
	v_mov_b16_e32 v21.l, v13.h
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v19, v2, v19 :: v_dual_and_b32 v18, 1, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v42, v14, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v22, v5, v16 :: v_dual_and_b32 v21, 1, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v23.l, v15.h
	v_add3_u32 v18, v10, v18, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v17.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v22, v22, v205, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_and_b32_e32 v10, 1, v23
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v23, v1, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v21, v13, v21, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v14, v22, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v17.l, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v18, v23, v160, v41
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v23.l, v1.l
	v_mov_b16_e64 v23.h, v162.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v14
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v19, v19, v159, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v41, v18, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v24, v2, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.h, 0x7fff, v21.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v22, v5, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v40, v19, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v24, v24, v158, v39
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v20, v4, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v22, v22, v204, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v39, v24, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v25.l, v1.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v13, v22, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v25.h, v163.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v39, v5, v7
	v_mul_f32_e32 v5, v5, v6
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v18, v18
	v_dual_mul_f32 v27, 0xbfb8aa3b, v13 :: v_dual_mul_f32 v16, v4, v16
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v4, v6
	v_mul_f32_e32 v4, v4, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v199, v19
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v27, v1, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v18, v18, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v19, v16, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v19, v20, v198, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v13
	v_mul_f32_e32 v28, 0xbfb8aa3b, v16
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v24, v19, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v27, v27, v154, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v18, v18, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v28
	v_mul_f32_e32 v29, 0xbfb8aa3b, v19
	v_exp_f32_e32 v24, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v26, v20
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v37, v27, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v39, v39, v153, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v16
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v24, v24, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v20, v26, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v29, 0xbfb8aa3b, v19 :: v_dual_fmac_f32 v26, v30, v26
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v28, v28, v31
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, vcc_lo, v14, v18, v14
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v29, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v31, v32, v26
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v15, v10, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v20, v31, v32
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v22, v1, v25
	v_mul_f32_e32 v25, v2, v25
	v_mul_f32_e32 v2, v2, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, null, v29, v29, v19
	v_fmac_f32_e32 v31, v40, v26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v22, v155, v38
	v_fma_f32 v23, v25, v34, v36
	v_fma_f32 v2, v2, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v20, -v20, v31, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v38, v22, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, null, v28, v28, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v36, v23, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v20, v20, v26, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v35, v2, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v42, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v150, v22
	v_fma_f32 v6, v6, v152, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v4, v4, v151, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v22, v5, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v6, v23, v6, s3
	v_cndmask_b32_e64 v2, v2, v4, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v38, v42, 1.0
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, s1, v16, v28, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v44, v42
	v_fma_f32 v33, -v38, v25, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_fmac_f32 v25, v33, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v24, v24, v13
	v_div_scale_f32 v40, s0, v13, v24, v13
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v37, v30
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v30, v37, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v37, v41, v37
	v_rcp_f32_e32 v41, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 0x540054, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v32, v40, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v30, v32, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v43, v41, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 0x5040504, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v26, v37
	v_fmac_f32_e32 v41, v31, v41
	v_div_scale_f32 v31, s4, v19, v29, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v30, v32, v40
	v_mul_f32_e32 v26, v31, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v7, v30, v37, v32
	v_fma_f32 v30, -v38, v25, v44
	v_fma_f32 v34, -v43, v26, v31
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v7, v7, v24, v13
	v_div_fmas_f32 v25, v30, v42, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v26, v34, v41
	s_mov_b32 vcc_lo, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.h, v1.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v25, v28, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v31, -v43, v26, v31
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v26, v31, v41, v26
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v27, v39, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v4, v26, v29, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v4, v20, v18, v14
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.h, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v14.l, v2.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v4, v5, v4 :: v_dual_mul_f32 v5, v15, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v7, 1, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v10, 1, v14
	v_mov_b16_e32 v13.l, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v14.l, v5.h
	v_add3_u32 v1, v6, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v4, v4
	v_add3_u32 v6, v2, v10, 0x7fff
	v_and_b32_e32 v10, 1, v13
	v_and_b32_e32 v7, 1, v14
	v_cndmask_b16 v1.h, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_cmp_o_f32_e64 s2, v5, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v2, v5, v7, 0x7fff
	v_add3_u32 v7, v4, v10, 0x7fff
	v_mov_b32_e32 v10, 0x7632
	v_cndmask_b16 v1.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b32_e64 v5, v17, v9, s0
	v_cndmask_b16 v6.l, 0x7fff, v2.h, s2
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s1
	v_cndmask_b32_e64 v4, 0x3276, v10, s0
	v_cndmask_b32_e64 v7, v1, v11, s0
	v_cndmask_b32_e64 v1, v11, v1, s0
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v11, v6, v12, s0
	v_lshl_or_b32 v2, v4, 8, v4
	v_cndmask_b32_e64 v4, v9, v17, s0
	v_cndmask_b32_e64 v9, v21, v8, s0
	v_cndmask_b32_e64 v8, v8, v21, s0
	v_cndmask_b32_e64 v6, v12, v6, s0
	v_and_b32_e32 v2, 0x760076, v2
	v_permlanex16_b32 v10, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v2, 4, v2
	v_perm_b32 v4, v10, v5, v0
	v_perm_b32 v6, v1, v7, v0
	v_perm_b32 v8, v12, v9, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v2, 0x7060706, v2
	v_perm_b32 v5, v10, v5, v2
	v_perm_b32 v7, v1, v7, v2
	v_perm_b32 v10, v13, v11, v0
	v_lshlrev_b32_e32 v0, 1, v3
	v_perm_b32 v9, v12, v9, v2
	v_perm_b32 v11, v13, v11, v2
	v_add_lshl_u32 v1, v3, s12, 1
	s_clause 0x1
	buffer_store_b128 v[4:7], v0, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v1, s[24:27], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 248
		.amdhsa_next_free_sgpr 53
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 248
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19852
; TotalNumSgprs: 55
; NumVgprs: 248
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 55
; NumVGPRsForWavesPerEU: 248
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     248
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
