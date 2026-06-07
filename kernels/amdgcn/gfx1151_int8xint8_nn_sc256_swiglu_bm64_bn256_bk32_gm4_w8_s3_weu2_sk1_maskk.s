	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s6, s[0:1], 0x38
	v_mov_b32_e32 v109, v0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s2
	s_mov_b32 s52, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v134, 4, v109
	v_lshlrev_b32_e32 v1, 3, v109
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v217, 15, v109
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v136, 16, v134
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v45, 24, v1
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
	s_lshl_b32 s17, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s9, s17
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 295 20 is_stmt 0              ; generate_amdgcn.py:295:20
	s_min_i32 s16, s7, 4
	.loc	1 296 29 is_stmt 1              ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s7, s16
	s_abs_i32 s5, s2
	s_cvt_f32_u32 s18, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s18
	v_readfirstlane_b32 s18, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v0, 2, v109
	s_mov_b32 s11, 0x31027000
	s_mov_b64 s[28:29], s[14:15]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s39, s11
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v0, s6, v0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s10, s18
	s_sub_i32 s18, 0, s7
	s_mul_i32 s18, s18, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s10, s18
	s_xor_b32 s18, s2, s16
	s_add_i32 s4, s10, s4
	s_ashr_i32 s18, s18, 31
	s_mul_hi_u32 s4, s5, s4
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s4, s7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s38, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s5, s5, s19
	s_add_i32 s19, s4, 1
	s_sub_i32 s20, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s19, s4
	s_cselect_b32 s5, s20, s5
	s_add_i32 s19, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s19, s4
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s34, s27, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s18
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v5, s34, v134
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s4, s18
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s30, s3, 5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s3, s6, 0xff
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s18, s4, s16
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v2, s30, v45
	v_or_b32_e32 v3, s30, v134
	v_or_b32_e32 v4, s30, v136
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s5, s3, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s18
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v137, v217, 4, v5
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s5, s5, 24
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s17
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s7, s6, 31
.Ltmp19:
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s26, s4, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s16, s3, s5
.Ltmp21:
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v2
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s6, v3
	v_cmp_gt_i32_e64 s4, s6, v4
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s7, 31
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v138, s27, 5, v137
	s_mul_i32 s19, s34, s30
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s5, s33, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s17, s26, s19
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v46, v0, v45, s5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s4, s4, s2
	s_and_b32 vcc_lo, vcc_lo, s2
	s_and_b32 s5, s3, s2
	s_cmp_gt_i32 s7, 63
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v0, s17, v137
	v_add_nc_u32_e32 v2, s17, v138
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s30, 32
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v3, s30, v46
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v14, s35, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v4, 0x80000000, v0, s5
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v0, s27, v0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s18, s27, 6
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s4
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s27, v2
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v15, s35, v134
	v_or_b32_e32 v16, s35, v136
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s17, s17, s18
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v14
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v23, s17, v137
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v22, s35, v46
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s6, v15
	v_cmp_gt_i32_e64 s5, s6, v16
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v24, s17, v138
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[38:39], v3, s[8:11], 0 offen
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v3, s27, v23
	v_add3_u32 v25, s17, s27, v138
	.loc	1 358 31 is_stmt 0              ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[14:17], v0, s[36:39], 0 offen
	buffer_load_b128 v[18:21], v2, s[36:39], 0 offen
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v0, 0x80000000, v22, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s3
	s_and_b32 s4, s5, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v2, 0x80000000, v23, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[6:9], v4, s[36:39], 0 offen
	buffer_load_b128 v[10:13], v5, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v24, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v216, 4, v109
	v_cndmask_b32_e64 v5, 0x80000000, v25, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[40:41], v0, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[22:25], v2, s[36:39], 0 offen
	buffer_load_b128 v[26:29], v4, s[36:39], 0 offen
	buffer_load_b128 v[30:33], v3, s[36:39], 0 offen
	buffer_load_b128 v[34:37], v5, s[36:39], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_bfe_i32 v0, v109, 4, 1
	v_and_b32_e32 v1, 0x778, v1
	v_and_b32_e32 v2, 16, v109
	v_lshlrev_b32_e32 v43, 5, v109
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v3, 16, v217
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v0, 0x90, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v4, 32, v217
	v_or_b32_e32 v5, 48, v217
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v42, 0, v216
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s7, 0x5f
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v178, v0, v1
	v_lshrrev_b32_e32 v0, 1, v109
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v178
	s_waitcnt vmcnt(9)
	ds_store_b64 v1, v[38:39] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(6)
	ds_store_b128 v42, v[6:9]
	s_waitcnt vmcnt(5)
	ds_store_b128 v42, v[10:13] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v42, v[14:17] offset:16384
	ds_store_b128 v42, v[18:21] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v1, v[40:41] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v42, v[22:25] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v42, v[26:29] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v42, v[30:33] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v42, v[34:37] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_or_b32 v151, 0x70, v0, v217
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v33, 5, v109
	v_and_b32_e32 v1, 4, v109
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v6, 0x100, v151
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v18, 0x160, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v7, 0x800, v151
	v_or_b32_e32 v8, 0x900, v151
	v_or_b32_e32 v9, 0xa00, v151
	scratch_store_b32 off, v6, off offset:592 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x200, v151
	v_or_b32_e32 v10, 0xb00, v151
	v_or_b32_e32 v11, 0xc00, v151
	v_or_b32_e32 v12, 0x180, v151
	v_or_b32_e32 v13, 0x280, v151
	scratch_store_b32 off, v6, off offset:600 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x300, v151
	v_or_b32_e32 v14, 0x380, v151
	v_or_b32_e32 v15, 0x480, v151
	v_or_b32_e32 v16, 0x580, v151
	scratch_store_b32 off, v6, off offset:608 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x400, v151
	scratch_store_b32 off, v6, off offset:616 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x500, v151
	scratch_store_b32 off, v6, off offset:624 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x600, v151
	scratch_store_b32 off, v6, off offset:632 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x700, v151
	scratch_store_b32 off, v6, off offset:640 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xd00, v151
	scratch_store_b32 off, v6, off offset:668 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xe00, v151
	scratch_store_b32 off, v6, off offset:676 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xf00, v151
	scratch_store_b32 off, v6, off offset:680 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1000, v151
	scratch_store_b32 off, v6, off offset:596 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1100, v151
	scratch_store_b32 off, v6, off offset:604 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1200, v151
	scratch_store_b32 off, v6, off offset:612 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1300, v151
	scratch_store_b32 off, v6, off offset:620 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1400, v151
	scratch_store_b32 off, v6, off offset:628 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1500, v151
	scratch_store_b32 off, v6, off offset:636 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1600, v151
	scratch_store_b32 off, v6, off offset:644 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1700, v151
	scratch_store_b32 off, v6, off offset:648 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1800, v151
	scratch_store_b32 off, v6, off offset:652 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1900, v151
	scratch_store_b32 off, v6, off offset:656 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1a00, v151
	scratch_store_b32 off, v6, off offset:660 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1b00, v151
	scratch_store_b32 off, v6, off offset:664 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1c00, v151
	scratch_store_b32 off, v6, off offset:672 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1d00, v151
	scratch_store_b32 off, v6, off offset:684 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1e00, v151
	scratch_store_b32 off, v6, off offset:688 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1f00, v151
	scratch_store_b32 off, v6, off offset:692 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x80, v151
	scratch_store_b32 off, v6, off offset:696 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x680, v151
	scratch_store_b32 off, v6, off offset:700 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x780, v151
	scratch_store_b32 off, v6, off offset:704 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x880, v151
	scratch_store_b32 off, v6, off offset:708 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x980, v151
	scratch_store_b32 off, v6, off offset:712 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xa80, v151
	scratch_store_b32 off, v6, off offset:716 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xb80, v151
	scratch_store_b32 off, v6, off offset:720 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xc80, v151
	scratch_store_b32 off, v6, off offset:724 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xd80, v151
	scratch_store_b32 off, v6, off offset:728 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xe80, v151
	scratch_store_b32 off, v6, off offset:732 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xf80, v151
	scratch_store_b32 off, v6, off offset:736 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1080, v151
	scratch_store_b32 off, v6, off offset:740 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1180, v151
	scratch_store_b32 off, v6, off offset:744 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1280, v151
	scratch_store_b32 off, v6, off offset:748 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1380, v151
	scratch_store_b32 off, v6, off offset:752 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1480, v151
	scratch_store_b32 off, v6, off offset:756 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1580, v151
	scratch_store_b32 off, v6, off offset:760 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1680, v151
	scratch_store_b32 off, v6, off offset:764 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1780, v151
	scratch_store_b32 off, v6, off offset:768 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1880, v151
	scratch_store_b32 off, v6, off offset:772 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1980, v151
	scratch_store_b32 off, v6, off offset:776 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1a80, v151
	scratch_store_b32 off, v6, off offset:780 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1b80, v151
	scratch_store_b32 off, v6, off offset:784 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1c80, v151
	scratch_store_b32 off, v6, off offset:788 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1d80, v151
	scratch_store_b32 off, v6, off offset:792 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1e80, v151
	scratch_store_b32 off, v6, off offset:796 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1f80, v151
	scratch_store_b32 off, v6, off offset:800 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr18
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr151
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr11
                                        ; implicit-def: $vgpr12
                                        ; implicit-def: $vgpr13
                                        ; implicit-def: $vgpr14
                                        ; implicit-def: $vgpr15
                                        ; implicit-def: $vgpr16
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
.LBB0_3:                                ; %Flow1205
	s_load_b64 s[24:25], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v2
	v_or_b32_e32 v2, s33, v217
	v_or_b32_e32 v3, s33, v3
	v_or_b32_e32 v4, s33, v4
	v_or_b32_e32 v5, s33, v5
	v_and_b32_e32 v6, 0xf0, v109
	s_ashr_i32 s48, s16, 8
	v_or_b32_e32 v163, s26, v109
	v_mul_lo_u32 v170, v2, s48
	v_mul_lo_u32 v131, v3, s48
	v_mul_lo_u32 v132, v4, s48
	v_mul_lo_u32 v133, v5, s48
	v_lshlrev_b32_e32 v139, 2, v6
	v_lshlrev_b32_e32 v135, 1, v109
	v_lshlrev_b32_e32 v128, 1, v6
	s_and_not1_b32 vcc_lo, exec_lo, s4
	scratch_store_b32 off, v6, off offset:804 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v53, 0 :: v_dual_and_b32 v2, 0x160, v43
	v_bfe_i32 v1, v109, 2, 1
	v_and_or_b32 v151, 0x70, v0, v217
	v_mov_b32_e32 v202, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v121, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v0, 0x90, v1, v2
	v_dual_mov_b32 v44, 0 :: v_dual_and_b32 v1, 28, v135
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v255, 0
	scratch_store_b32 off, v0, off offset:580 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x100, v151
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v23, 0
	scratch_store_b32 off, v0, off offset:592 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x200, v151
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v7, 0
	scratch_store_b32 off, v0, off offset:600 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v151
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v231, 0
	v_mov_b32_e32 v146, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v169, 0
	scratch_store_b32 off, v0, off offset:608 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v151
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v223, 0
	scratch_store_b32 off, v0, off offset:616 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x500, v151
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v59, 0
	scratch_store_b32 off, v0, off offset:624 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x600, v151
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v13, 0
	scratch_store_b32 off, v0, off offset:632 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x700, v151
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v125, 0
	scratch_store_b32 off, v0, off offset:640 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x800, v151
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v37, 0
	scratch_store_b32 off, v0, off offset:808 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x900, v151
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v141, 0
	scratch_store_b32 off, v0, off offset:812 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v151
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v191, 0
	scratch_store_b32 off, v0, off offset:816 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb00, v151
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v253, 0
	scratch_store_b32 off, v0, off offset:820 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v151
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v57, 0
	scratch_store_b32 off, v0, off offset:824 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd00, v151
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v213, 0
	scratch_store_b32 off, v0, off offset:668 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v151
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v205, 0
	scratch_store_b32 off, v0, off offset:676 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf00, v151
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v203, 0
	scratch_store_b32 off, v0, off offset:680 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1000, v151
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v185, 0
	scratch_store_b32 off, v0, off offset:596 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1100, v151
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v181, 0
	scratch_store_b32 off, v0, off offset:604 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1200, v151
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v183, 0
	scratch_store_b32 off, v0, off offset:612 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1300, v151
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v179, 0
	scratch_store_b32 off, v0, off offset:620 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1400, v151
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v193, 0
	v_mov_b32_e32 v186, 0
	v_mov_b32_e32 v198, 0
	scratch_store_b32 off, v0, off offset:628 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1500, v151
	v_mov_b32_e32 v182, 0
	v_mov_b32_e32 v194, 0
	v_mov_b32_e32 v184, 0
	v_mov_b32_e32 v196, 0
	scratch_store_b32 off, v0, off offset:636 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1600, v151
	v_mov_b32_e32 v180, 0
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s14, s7, 5
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	scratch_store_b32 off, v0, off offset:644 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1700, v151
	s_mov_b32 s16, 0
	s_add_i32 s5, s35, 32
	s_mov_b32 s7, 1
	s_and_b32 s41, s13, 0xffff
	scratch_store_b32 off, v0, off offset:648 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1800, v151
	s_mov_b32 s40, s12
	s_and_b32 s45, s29, 0xffff
	s_mov_b32 s44, s28
	s_add_i32 s1, 0, 0x8000
	scratch_store_b32 off, v0, off offset:652 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1900, v151
	s_add_i32 s51, 0, 0x8800
	s_add_i32 s50, 0, 0x2000
	s_add_i32 s15, 0, 0x4000
	s_add_i32 s49, 0, 0x6000
	scratch_store_b32 off, v0, off offset:656 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a00, v151
	s_add_i32 s14, s14, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s17, s16
	scratch_store_b32 off, v0, off offset:660 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b00, v151
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	scratch_store_b32 off, v0, off offset:664 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c00, v151
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	scratch_store_b32 off, v0, off offset:672 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d00, v151
	s_mov_b32 s52, s16
	s_mov_b32 s31, s16
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v151, off offset:568
	scratch_store_b32 off, v45, off offset:572
	scratch_store_b32 off, v46, off offset:576
	v_mov_b32_e32 v51, 0
	scratch_store_b32 off, v0, off offset:684 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e00, v151
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v15, 0
	scratch_store_b32 off, v0, off offset:688 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f00, v151
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v145, 0
	v_mov_b32_e32 v117, 0
	v_mov_b32_e32 v25, 0
	scratch_store_b32 off, v0, off offset:692 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x80, v151
	v_mov_b32_e32 v237, 0
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v235, 0
	v_mov_b32_e32 v11, 0
	scratch_store_b32 off, v0, off offset:696 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x180, v151
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v233, 0
	v_mov_b32_e32 v143, 0
	v_mov_b32_e32 v209, 0
	scratch_store_b32 off, v0, off offset:828 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x280, v151
	scratch_store_b32 off, v0, off offset:832 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x380, v151
	scratch_store_b32 off, v0, off offset:836 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x480, v151
	scratch_store_b32 off, v0, off offset:840 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x580, v151
	scratch_store_b32 off, v0, off offset:844 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x680, v151
	scratch_store_b32 off, v0, off offset:700 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x780, v151
	scratch_store_b32 off, v0, off offset:704 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x880, v151
	scratch_store_b32 off, v0, off offset:708 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x980, v151
	scratch_store_b32 off, v0, off offset:712 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa80, v151
	scratch_store_b32 off, v0, off offset:716 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb80, v151
	scratch_store_b32 off, v0, off offset:720 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc80, v151
	scratch_store_b32 off, v0, off offset:724 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd80, v151
	scratch_store_b32 off, v0, off offset:728 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe80, v151
	scratch_store_b32 off, v0, off offset:732 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf80, v151
	scratch_store_b32 off, v0, off offset:736 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1080, v151
	scratch_store_b32 off, v0, off offset:740 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1180, v151
	scratch_store_b32 off, v0, off offset:744 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1280, v151
	scratch_store_b32 off, v0, off offset:748 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1380, v151
	scratch_store_b32 off, v0, off offset:752 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1480, v151
	scratch_store_b32 off, v0, off offset:756 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1580, v151
	scratch_store_b32 off, v0, off offset:760 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1680, v151
	scratch_store_b32 off, v0, off offset:764 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1780, v151
	scratch_store_b32 off, v0, off offset:768 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1880, v151
	scratch_store_b32 off, v0, off offset:772 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1980, v151
	scratch_store_b32 off, v0, off offset:776 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a80, v151
	scratch_store_b32 off, v0, off offset:780 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b80, v151
	scratch_store_b32 off, v0, off offset:784 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c80, v151
	scratch_store_b32 off, v0, off offset:788 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d80, v151
	scratch_store_b32 off, v0, off offset:792 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e80, v151
	scratch_store_b32 off, v0, off offset:796 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f80, v151
	scratch_store_b32 off, v0, off offset:800 ; 4-byte Folded Spill
	v_and_b32_e32 v0, 32, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v0, 0, v139, v0
	v_add_nc_u32_e32 v0, v0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:584
	scratch_store_b32 off, v128, off offset:852
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v0, 0, v128
	scratch_store_b32 off, v0, off offset:588 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:204
	scratch_store_b32 off, v0, off offset:4
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v109, off offset:848
	scratch_store_b32 off, v0, off offset:8
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v43, off offset:868 ; 4-byte Folded Spill
	v_mov_b32_e32 v43, 0
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:864
	scratch_store_b32 off, v0, off offset:20
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v135, off offset:860
	scratch_store_b32 off, v0, off offset:16
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v139, off offset:856
	scratch_store_b32 off, v0, off offset:12
	v_mov_b32_e32 v0, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s53, s31, 5
	s_mov_b32 s4, s30
	s_mov_b32 s30, s35
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s5, s53
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v57, off offset:196
	scratch_store_b32 off, v3, off
	scratch_store_b32 off, v25, off offset:304
	scratch_store_b32 off, v15, off offset:300
	scratch_store_b32 off, v51, off offset:264
	scratch_store_b32 off, v48, off offset:260
	scratch_store_b32 off, v53, off offset:256
	scratch_store_b32 off, v44, off offset:252
	scratch_store_b32 off, v42, off offset:248
	scratch_store_b32 off, v41, off offset:244
	scratch_store_b32 off, v36, off offset:240
	scratch_store_b32 off, v28, off offset:236
	scratch_store_b32 off, v27, off offset:232
	scratch_store_b32 off, v21, off offset:228
	scratch_store_b32 off, v4, off offset:224
	scratch_store_b32 off, v121, off offset:296
	scratch_store_b32 off, v120, off offset:292
	scratch_store_b32 off, v119, off offset:288
	scratch_store_b32 off, v40, off offset:220
	scratch_store_b32 off, v23, off offset:216
	scratch_store_b32 off, v22, off offset:212
	scratch_store_b32 off, v16, off offset:208
	scratch_store_b32 off, v31, off offset:200
	scratch_store_b32 off, v123, off offset:284
	scratch_store_b32 off, v146, off offset:192
	scratch_store_b32 off, v145, off offset:188
	scratch_store_b32 off, v144, off offset:184
	scratch_store_b32 off, v122, off offset:180
	scratch_store_b32 off, v6, off offset:176
	scratch_store_b32 off, v9, off offset:172
	scratch_store_b32 off, v11, off offset:168
	scratch_store_b32 off, v12, off offset:164
	s_clause 0x1d                           ; 120-byte Folded Spill
	scratch_store_b32 off, v143, off offset:160
	scratch_store_b32 off, v10, off offset:156
	scratch_store_b32 off, v7, off offset:152
	scratch_store_b32 off, v8, off offset:148
	scratch_store_b32 off, v169, off offset:144
	scratch_store_b32 off, v43, off offset:140
	scratch_store_b32 off, v52, off offset:136
	scratch_store_b32 off, v35, off offset:132
	scratch_store_b32 off, v127, off offset:128
	scratch_store_b32 off, v13, off offset:124
	scratch_store_b32 off, v60, off offset:120
	scratch_store_b32 off, v140, off offset:116
	scratch_store_b32 off, v59, off offset:112
	scratch_store_b32 off, v125, off offset:108
	scratch_store_b32 off, v173, off offset:104
	scratch_store_b32 off, v130, off offset:100
	scratch_store_b32 off, v83, off offset:96
	scratch_store_b32 off, v37, off offset:92
	scratch_store_b32 off, v142, off offset:88
	scratch_store_b32 off, v141, off offset:84
	scratch_store_b32 off, v54, off offset:80
	scratch_store_b32 off, v34, off offset:76
	scratch_store_b32 off, v129, off offset:72
	scratch_store_b32 off, v191, off offset:68
	scratch_store_b32 off, v26, off offset:64
	scratch_store_b32 off, v254, off offset:280
	scratch_store_b32 off, v5, off offset:60
	scratch_store_b32 off, v246, off offset:276
	scratch_store_b32 off, v253, off offset:272
	scratch_store_b32 off, v115, off offset:268
	v_or_b32_e32 v1, s35, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s52, v151
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v140, s15, v151
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s15, s4, 31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v148, s23
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v146, s21 :: v_dual_add_nc_u32 v1, s35, v46
	v_mov_b32_e32 v147, s22
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s15, s15, 24
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s52, s35, s34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s4, s4, s15
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s15, s52, s26
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v145, s20 :: v_dual_mov_b32 v142, s17
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[129:130], v1, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v139 offset:3328
	ds_load_u8 v2, v139 offset:3072
	scratch_load_b32 v135, off, off offset:580 ; 4-byte Folded Reload
	v_mov_b32_e32 v143, s18
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s53, s15, s27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v141, s16
	v_mov_b32_e32 v169, v117
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s52, s4, 8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v144, s19
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s54, s52, s34
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s52, s48
	s_cselect_b32 s4, -1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v139 offset:3840
	ds_load_u8 v3, v139 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v139 offset:2304
	ds_load_u8 v4, v139 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v139 offset:2816
	ds_load_u8 v5, v139 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v4, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v1
	ds_load_u8 v1, v139 offset:1280
	ds_load_u8 v2, v139 offset:1024
	v_lshl_or_b32 v3, v5, 16, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v139 offset:1792
	ds_load_u8 v5, v139 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v5, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v139 offset:256
	ds_load_u8 v5, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v5, v1, 0xc0c0004
	ds_load_u8 v5, v139 offset:768
	ds_load_u8 v6, v139 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v139 offset:3456
	ds_load_u8 v6, v139 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v139 offset:3968
	ds_load_u8 v7, v139 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v139 offset:2432
	ds_load_u8 v8, v139 offset:2176
	v_lshl_or_b32 v20, v6, 16, v5
	ds_load_u8 v5, v139 offset:1408
	ds_load_u8 v6, v139 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v139 offset:2944
	ds_load_u8 v9, v139 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v8, 16, v7
	ds_load_u8 v6, v139 offset:1920
	ds_load_u8 v7, v139 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v18, v6, 16, v5
	ds_load_u8 v5, v139 offset:384
	ds_load_u8 v6, v139 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v139 offset:896
	ds_load_u8 v7, v139 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v6, 16, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v5, v140 offset:3328
	ds_load_u8 v6, v140 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v140 offset:3840
	ds_load_u8 v7, v140 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v140 offset:2304
	ds_load_u8 v8, v140 offset:2048
	v_lshl_or_b32 v24, v6, 16, v5
	ds_load_u8 v5, v140 offset:1280
	ds_load_u8 v6, v140 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v140 offset:2816
	ds_load_u8 v9, v140 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v23, v8, 16, v7
	ds_load_u8 v6, v140 offset:1792
	ds_load_u8 v7, v140 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v22, v6, 16, v5
	ds_load_u8 v5, v140 offset:256
	ds_load_u8 v6, v140
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v140 offset:768
	ds_load_u8 v7, v140 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v6, 16, v5
	ds_load_u8 v5, v140 offset:3456
	ds_load_u8 v6, v140 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v140 offset:3968
	ds_load_u8 v7, v140 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v140 offset:2432
	ds_load_u8 v8, v140 offset:2176
	v_lshl_or_b32 v152, v6, 16, v5
	ds_load_u8 v5, v140 offset:1408
	ds_load_u8 v6, v140 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v140 offset:2944
	ds_load_u8 v9, v140 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v8, 16, v7
	ds_load_u8 v6, v140 offset:1920
	ds_load_u8 v7, v140 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v150, v6, 16, v5
	ds_load_u8 v5, v140 offset:384
	ds_load_u8 v6, v140 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v140 offset:896
	ds_load_u8 v7, v140 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v6, 16, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s1, v135
	ds_load_b128 v[33:36], v5
	ds_load_b128 v[37:40], v5 offset:512
	ds_load_b128 v[153:156], v5 offset:1024
	ds_load_b128 v[157:160], v5 offset:1536
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[113:120], v[1:4], v[33:36], v[141:148] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[1:4], v[37:40], v[141:148] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[1:4], v[153:156], v[141:148] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[1:4], v[157:160], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[17:20], v[33:36], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[17:20], v[37:40], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[17:20], v[153:156], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[17:20], v[157:160], v[141:148] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[121:128], v[21:24], v[33:36], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[149:152], v[33:36], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[21:24], v[37:40], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[149:152], v[37:40], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[21:24], v[153:156], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[149:152], v[153:156], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[21:24], v[157:160], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[149:152], v[157:160], v[141:148] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v141, v139 offset:7424
	ds_load_u8 v142, v139 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v139 offset:7936
	ds_load_u8 v143, v139 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v139 offset:6400
	ds_load_u8 v144, v139 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v139 offset:6912
	ds_load_u8 v145, v139 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v145, v144, 0xc0c0004
	v_lshl_or_b32 v144, v142, 16, v141
	ds_load_u8 v141, v139 offset:5376
	ds_load_u8 v142, v139 offset:5120
	v_lshl_or_b32 v143, v145, 16, v143
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v139 offset:5888
	ds_load_u8 v145, v139 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v145, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v142, 16, v141
	ds_load_u8 v141, v139 offset:4352
	ds_load_u8 v145, v139 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v145, v141, 0xc0c0004
	ds_load_u8 v145, v139 offset:4864
	ds_load_u8 v146, v139 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v141, v145, 16, v141
	v_xor_b32_e32 v145, 16, v135
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v157, s1, v145
	ds_load_b128 v[145:148], v157
	ds_load_b128 v[149:152], v157 offset:512
	ds_load_b128 v[153:156], v157 offset:1024
	ds_load_b128 v[157:160], v157 offset:1536
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[113:120], v[141:144], v[145:148], v[113:120] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[141:144], v[149:152], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[141:144], v[153:156], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[141:144], v[157:160], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v141, v139 offset:7552
	ds_load_u8 v142, v139 offset:7296
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v74, v74
	scratch_store_b32 off, v74, off offset:492 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v139 offset:8064
	ds_load_u8 v143, v139 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v139 offset:6528
	ds_load_u8 v144, v139 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v139 offset:7040
	ds_load_u8 v161, v139 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v161, v144, 0xc0c0004
	v_lshl_or_b32 v144, v142, 16, v141
	ds_load_u8 v141, v139 offset:5504
	ds_load_u8 v142, v139 offset:5248
	v_lshl_or_b32 v143, v161, 16, v143
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v139 offset:6016
	ds_load_u8 v161, v139 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v161, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v142, 16, v141
	ds_load_u8 v141, v139 offset:4480
	ds_load_u8 v161, v139 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v161, v141, 0xc0c0004
	ds_load_u8 v161, v139 offset:4992
	ds_load_u8 v139, v139 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v139, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v141, v139, 16, v141
	v_wmma_i32_16x16x16_iu8 v[97:104], v[141:144], v[145:148], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[141:144], v[149:152], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[141:144], v[153:156], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[141:144], v[157:160], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v139, v140 offset:7424
	ds_load_u8 v141, v140 offset:7168
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v58, v58
	scratch_store_b32 off, v97, off offset:444 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v100
	v_cvt_f32_i32_e32 v100, v28
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v58, off offset:540
	scratch_store_b32 off, v97, off offset:448
	v_cvt_f32_i32_e32 v97, v99
	v_cvt_f32_i32_e32 v99, v27
	scratch_store_b32 off, v97, off offset:452 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v102
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v141, v139, 0xc0c0004
	ds_load_u8 v141, v140 offset:7936
	ds_load_u8 v142, v140 offset:7680
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v102, v26
	scratch_store_b32 off, v97, off offset:456 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v101
	scratch_store_b32 off, v113, off offset:376 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v116
	v_cvt_f32_i32_e32 v101, v25
	v_cvt_f32_i32_e32 v116, v44
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v140 offset:6400
	ds_load_u8 v143, v140 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v140 offset:6912
	ds_load_u8 v144, v140 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	v_lshl_or_b32 v144, v141, 16, v139
	ds_load_u8 v139, v140 offset:5376
	ds_load_u8 v141, v140 offset:5120
	v_lshl_or_b32 v143, v143, 16, v142
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v141, v139, 0xc0c0004
	ds_load_u8 v141, v140 offset:5888
	ds_load_u8 v142, v140 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v141, 16, v139
	ds_load_u8 v139, v140 offset:4352
	ds_load_u8 v141, v140 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v141, v139, 0xc0c0004
	ds_load_u8 v141, v140 offset:4864
	ds_load_u8 v161, v140 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v161, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v141, v141, 16, v139
	ds_load_u8 v139, v140 offset:7552
	ds_load_u8 v161, v140 offset:7296
	v_wmma_i32_16x16x16_iu8 v[121:128], v[141:144], v[145:148], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[141:144], v[149:152], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[141:144], v[153:156], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[141:144], v[157:160], v[33:40] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v143, v73
	v_cvt_f32_i32_e32 v73, v76
	scratch_store_b32 off, v113, off offset:380 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v115
	v_cvt_f32_i32_e32 v144, v103
	v_cvt_f32_i32_e32 v115, v43
	scratch_store_b32 off, v73, off offset:496 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v73, v78
	scratch_store_b32 off, v113, off offset:384 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v118
	v_cvt_f32_i32_e32 v118, v41
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v41, v66
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v161, v139, 0xc0c0004
	ds_load_u8 v161, v140 offset:8064
	ds_load_u8 v162, v140 offset:7808
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v73, off offset:500 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v73, v80
	scratch_store_b32 off, v113, off offset:388 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v117
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v41, off offset:508 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v65
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v97, off offset:440 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v117, v77
	scratch_store_b32 off, v113, off offset:392 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v120
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v41, off offset:524 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v68
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v120, v61
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v103, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v113, off offset:396 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v119
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v41, off offset:512 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v67
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v73, off offset:504 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v140 offset:6528
	ds_load_u8 v164, v140 offset:6272
	v_cvt_f32_i32_e32 v73, v90
	scratch_store_b32 off, v41, off offset:528 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v70
	v_lshl_or_b32 v167, v161, 16, v139
	ds_load_u8 v139, v140 offset:5504
	ds_load_u8 v161, v140 offset:5248
	scratch_store_b32 off, v113, off offset:400 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v122
	scratch_store_b32 off, v41, off offset:516 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v69
	v_mov_b32_e32 v90, v184
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v122, v75
	v_cvt_f32_i32_e32 v119, v63
	v_mov_b32_e32 v80, v185
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v41, off offset:532 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v72
	scratch_store_b32 off, v73, off offset:404 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v73, v89
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v162, v164, v162, 0xc0c0004
	ds_load_u8 v164, v140 offset:7040
	ds_load_u8 v165, v140 offset:6784
	scratch_store_b32 off, v73, off offset:420 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v73, v92
	scratch_store_b32 off, v41, off offset:520 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v161, v139, 0xc0c0004
	v_cvt_f32_i32_e32 v41, v71
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v92, v8
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v73, off offset:408 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v73, v91
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v91, v7
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v7, v133, s52, 1
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v8, s53, v138
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v41, off offset:536 ; 4-byte Folded Spill
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v164, 16, v162
	ds_load_u8 v161, v140 offset:6016
	ds_load_u8 v162, v140 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v162, v15
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v165, v161, 16, v139
	ds_load_u8 v139, v140 offset:4480
	ds_load_u8 v161, v140 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v161, v139, 0xc0c0004
	ds_load_u8 v161, v140 offset:4992
	ds_load_u8 v140, v140 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v140, v161, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v161, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v164, v140, 16, v139
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v140, v60
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[105:112], v[164:167], v[145:148], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[164:167], v[149:152], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[164:167], v[153:156], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[164:167], v[157:160], v[17:24] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v165, v1
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s35, v134
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v97, v106
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v113, off offset:308
	scratch_store_b32 off, v114, off offset:372
	v_cvt_f32_i32_e32 v113, v121
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v1
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s35, v136
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v97, off offset:340 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v105
	v_cvt_f32_i32_e32 v105, v33
	scratch_load_b32 v33, off, off offset:584 ; 4-byte Folded Reload
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s1, s6, v1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v1, v163, s54, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v113, off offset:324
	scratch_store_b32 off, v98, off offset:436
	scratch_store_b32 off, v97, off offset:356
	v_cvt_f32_i32_e32 v113, v124
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v97, v108
	v_cvt_f32_i32_e32 v25, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v156, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v113, off offset:312 ; 4-byte Folded Spill
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v1, v1, s[44:47], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v113, v123
	scratch_store_b32 off, v97, off offset:344 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v107
	scratch_store_b32 off, v25, off offset:548 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v25, v52
	scratch_store_b32 off, v113, off offset:328 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v126
	scratch_store_b32 off, v97, off offset:360 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v110
	scratch_store_b32 off, v25, off offset:552 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v25, v54
	scratch_store_b32 off, v113, off offset:316 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v125
	scratch_store_b32 off, v97, off offset:348 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v109
	v_add_nc_u32_e32 v9, s27, v163
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v25, off offset:556
	scratch_store_b32 off, v113, off offset:332
	v_cvt_f32_i32_e32 v113, v128
	scratch_store_b32 off, v97, off offset:364 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v112
	v_cvt_f32_i32_e32 v25, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v167, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v113, off offset:320 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v127
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v127, v57
	v_cvt_f32_i32_e32 v57, v64
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v73, off offset:424 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v73, v94
	scratch_store_b32 off, v97, off offset:352 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v111
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v57, off offset:544 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v57, v82
	scratch_store_b32 off, v73, off offset:412 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v73, v93
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v113, off offset:336 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v93, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v57, off offset:460 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v57, v81
	scratch_store_b32 off, v73, off offset:428 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v73, v96
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v97, off offset:368 ; 4-byte Folded Spill
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v3, v170, s52, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v57, off offset:476 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v57, v84
	scratch_store_b32 off, v73, off offset:416 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v73, v95
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v5, v131, s52, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v9, v9, s54, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v57, off offset:464 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v57, v83
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v94, v6
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v6, v132, s52, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v164, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s15, v138
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v57, off offset:480 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v57, v86
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v73, off offset:432
	scratch_store_b32 off, v25, off offset:560
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v25, v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v166, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v57, off offset:468 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v57, v85
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v4, s53, v137
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v57, off offset:484 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v57, v88
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v98, v30
	v_cvt_f32_i32_e32 v97, v29
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v57, off offset:472 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v57, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v147, v32
	v_cvt_f32_i32_e32 v148, v31
	scratch_store_b32 off, v25, off offset:564 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v110, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v57, off offset:488 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v95, v18
	v_cvt_f32_i32_e32 v151, v17
	v_cvt_f32_i32_e32 v96, v20
	v_cvt_f32_i32_e32 v152, v19
	v_cvt_f32_i32_e32 v149, v22
	v_cvt_f32_i32_e32 v153, v21
	v_cvt_f32_i32_e32 v150, v24
	v_cvt_f32_i32_e32 v154, v23
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_cndmask_b32_e64 v8, 0x80000000, v8, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v173, v3, s[40:43], 0 offen
	v_mov_b32_e32 v83, v174
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s7, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v155, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s1, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v157, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s7, s1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v158, v11
	v_cvt_f32_i32_e32 v159, v14
	v_cvt_f32_i32_e32 v160, v13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s7, 11
	v_mov_b32_e32 v82, v193
	s_add_i32 s4, s1, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s1, s7, 13
	s_mov_b32 s52, s50
	s_add_i32 s50, s1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v145, v104
	v_cvt_f32_i32_e32 v123, v79
	v_cvt_f32_i32_e32 v125, v59
	v_cvt_f32_i32_e32 v121, v62
	v_cvt_f32_i32_e32 v124, v42
	v_cvt_f32_i32_e32 v114, v46
	v_cvt_f32_i32_e32 v113, v45
	v_cvt_f32_i32_e32 v112, v48
	v_cvt_f32_i32_e32 v111, v47
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v126, v49
	v_cvt_f32_i32_e32 v128, v51
	v_cvt_f32_i32_e32 v139, v53
	v_cvt_f32_i32_e32 v109, v36
	v_cvt_f32_i32_e32 v106, v35
	v_cvt_f32_i32_e32 v107, v38
	v_cvt_f32_i32_e32 v108, v40
	v_cvt_f32_i32_e32 v104, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s53, s31, 1
	s_mov_b32 s1, s51
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s51, s4, 0x8000
	v_mov_b32_e32 v86, v180
	v_mov_b32_e32 v84, v178
	v_mov_b32_e32 v88, v182
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v50, v136 :: v_dual_lshlrev_b32 v1, 16, v1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v33, v1 offset:36864
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s15, v137
	s_mov_b32 s15, s49
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s49, s50, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s31, s14
	s_mov_b32 s31, s53
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x2
	buffer_load_u16 v174, v5, s[40:43], 0 offen
	buffer_load_u16 v175, v6, s[40:43], 0 offen
	buffer_load_u16 v176, v7, s[40:43], 0 offen
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
	buffer_load_u16 v177, v9, s[44:47], 0 offen
	scratch_load_b32 v34, off, off offset:588 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(0)
	ds_load_b128 v[13:16], v34 offset:36864
	ds_load_b128 v[9:12], v34 offset:36880
	ds_load_b128 v[5:8], v34 offset:37376
	ds_load_b128 v[1:4], v34 offset:37392
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v177, 16, v177
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v193, s4, v178
	v_mov_b32_e32 v85, v179
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_store_b32 v33, v177 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[177:180], v34 offset:36864
	v_mov_b32_e32 v87, v181
	v_mov_b32_e32 v89, v183
	ds_load_b128 v[181:184], v34 offset:36880
	v_mov_b32_e32 v81, v186
	ds_load_b128 v[185:188], v34 offset:37376
	ds_load_b128 v[189:192], v34 offset:37392
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b64 v193, v[129:130] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v129, s50, v216
	ds_store_b128 v129, v[17:20]
	ds_store_b128 v129, v[21:24] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v129, v[25:28] offset:16384
	ds_store_b128 v129, v[29:32] offset:20480
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v20, 16, v176
	v_lshlrev_b32_e32 v18, 16, v174
	v_dual_mov_b32 v32, v134 :: v_dual_lshlrev_b32 v19, 16, v175
	v_mov_b32_e32 v39, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v76, v13, v20 :: v_dual_lshlrev_b32 v17, 16, v173
	v_dual_mul_f32 v72, v16, v19 :: v_dual_mul_f32 v59, v14, v18
	v_mul_f32_e32 v52, v13, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v60, v16, v18 :: v_dual_mul_f32 v43, v14, v17
	v_dual_mul_f32 v78, v16, v20 :: v_dual_mul_f32 v141, v13, v17
	v_mul_f32_e32 v62, v10, v19
	v_mul_f32_e32 v40, v16, v17
	v_mul_f32_e32 v142, v15, v17
	v_dual_mul_f32 v54, v15, v18 :: v_dual_mul_f32 v75, v14, v19
	v_dual_mul_f32 v174, v11, v17 :: v_dual_mul_f32 v71, v13, v19
	v_dual_mul_f32 v74, v10, v20 :: v_dual_mul_f32 v69, v15, v19
	v_dual_mul_f32 v176, v9, v18 :: v_dual_mul_f32 v79, v14, v20
	v_mul_f32_e32 v77, v15, v20
	v_dual_mul_f32 v129, v10, v17 :: v_dual_mul_f32 v68, v9, v20
	v_mul_f32_e32 v130, v9, v17
	v_dual_mul_f32 v173, v12, v17 :: v_dual_mul_f32 v70, v11, v20
	v_dual_mul_f32 v175, v10, v18 :: v_dual_mul_f32 v42, v8, v19
	v_dual_mul_f32 v193, v12, v18 :: v_dual_mul_f32 v48, v6, v19
	v_dual_mul_f32 v35, v11, v18 :: v_dual_mul_f32 v66, v6, v20
	v_dual_mul_f32 v53, v9, v19 :: v_dual_mul_f32 v26, v8, v18
	v_dual_mul_f32 v67, v12, v19 :: v_dual_mul_f32 v22, v7, v18
	v_dual_mul_f32 v57, v11, v19 :: v_dual_mul_f32 v58, v5, v20
	v_dual_mul_f32 v73, v12, v20 :: v_dual_mul_f32 v12, v6, v17
	v_dual_mul_f32 v9, v5, v17 :: v_dual_mul_f32 v64, v8, v20
	v_mul_f32_e32 v11, v8, v17
	v_dual_mul_f32 v10, v7, v17 :: v_dual_mul_f32 v31, v6, v18
	v_dual_mul_f32 v8, v4, v17 :: v_dual_mul_f32 v23, v5, v18
	v_dual_mov_b32 v16, v216 :: v_dual_mul_f32 v37, v5, v19
	v_mul_f32_e32 v218, v3, v18
	v_mul_f32_e32 v33, v7, v19
	v_dual_mul_f32 v51, v7, v20 :: v_dual_mul_f32 v220, v1, v19
	v_dual_mul_f32 v7, v2, v17 :: v_dual_mul_f32 v134, v4, v19
	v_mul_f32_e32 v6, v1, v17
	v_dual_mul_f32 v5, v3, v17 :: v_dual_mul_f32 v44, v2, v20
	v_dual_mul_f32 v13, v2, v18 :: v_dual_mul_f32 v34, v1, v20
	v_mul_f32_e32 v216, v1, v18
	v_dual_mul_f32 v217, v4, v18 :: v_dual_mul_f32 v36, v3, v20
	v_mul_f32_e32 v219, v2, v19
	s_waitcnt lgkmcnt(8)
	v_dual_mul_f32 v135, v3, v19 :: v_dual_mul_f32 v136, v178, v17
	v_dual_mul_f32 v41, v4, v20 :: v_dual_mul_f32 v222, v179, v17
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v137, v177, v17 :: v_dual_mul_f32 v230, v179, v19
	v_dual_mul_f32 v221, v180, v17 :: v_dual_mul_f32 v228, v177, v19
	v_mul_f32_e32 v61, v178, v18
	v_mul_f32_e32 v55, v177, v18
	s_waitcnt lgkmcnt(7)
	v_dual_mul_f32 v63, v180, v18 :: v_dual_mul_f32 v28, v182, v17
	v_dual_mul_f32 v56, v179, v18 :: v_dual_mul_f32 v227, v178, v19
	v_dual_mul_f32 v38, v181, v18 :: v_dual_mul_f32 v229, v180, v19
	v_mul_f32_e32 v238, v183, v18
	v_mul_f32_e32 v178, v178, v20
	v_dual_mul_f32 v177, v177, v20 :: v_dual_mul_f32 v242, v183, v19
	v_mul_f32_e32 v180, v180, v20
	v_dual_mul_f32 v179, v179, v20 :: v_dual_mul_f32 v240, v181, v19
	v_mul_f32_e32 v21, v181, v17
	s_waitcnt lgkmcnt(6)
	v_dual_mul_f32 v27, v184, v17 :: v_dual_mul_f32 v248, v185, v18
	v_mul_f32_e32 v25, v183, v17
	v_dual_mul_f32 v47, v182, v18 :: v_dual_mov_b32 v4, v244
	v_dual_mul_f32 v49, v184, v18 :: v_dual_mul_f32 v244, v185, v17
	v_dual_mul_f32 v239, v182, v19 :: v_dual_mul_f32 v246, v187, v17
	v_dual_mul_f32 v241, v184, v19 :: v_dual_mul_f32 v250, v187, v18
	v_mul_f32_e32 v182, v182, v20
	v_dual_mul_f32 v181, v181, v20 :: v_dual_mul_f32 v46, v186, v19
	v_mul_f32_e32 v184, v184, v20
	v_dual_mul_f32 v183, v183, v20 :: v_dual_mul_f32 v252, v185, v19
	v_mov_b32_e32 v15, v243
	v_mul_f32_e32 v243, v186, v17
	s_waitcnt lgkmcnt(5)
	v_dual_mul_f32 v245, v188, v17 :: v_dual_mul_f32 v254, v190, v18
	v_dual_mul_f32 v247, v186, v18 :: v_dual_mul_f32 v2, v192, v17
	v_dual_mul_f32 v249, v188, v18 :: v_dual_mul_f32 v24, v189, v19
	v_mul_f32_e32 v45, v188, v19
	v_dual_mul_f32 v251, v187, v19 :: v_dual_mul_f32 v14, v192, v18
	v_mul_f32_e32 v186, v186, v20
	v_dual_mul_f32 v185, v185, v20 :: v_dual_mul_f32 v30, v192, v19
	v_mul_f32_e32 v188, v188, v20
	v_mul_f32_e32 v187, v187, v20
	v_dual_mul_f32 v1, v190, v17 :: v_dual_mul_f32 v192, v192, v20
	v_mul_f32_e32 v253, v189, v17
	v_mul_f32_e32 v17, v191, v17
	v_mul_f32_e32 v3, v189, v18
	v_dual_mul_f32 v18, v191, v18 :: v_dual_mul_f32 v29, v190, v19
	v_dual_mul_f32 v19, v191, v19 :: v_dual_mul_f32 v190, v190, v20
	v_mul_f32_e32 v189, v189, v20
	v_mul_f32_e32 v20, v191, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v65, off, off offset:204
	scratch_load_b32 v191, off, off offset:4
	scratch_load_b32 v146, off, off offset:376
	v_fmac_f32_e32 v169, v176, v117
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v215, v178, v110 :: v_dual_fmac_f32 v80, v185, v151
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v195, v44, v94
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v81, v186, v95
	v_fmac_f32_e32 v203, v184, v108
	v_fmac_f32_e32 v207, v182, v107
	v_fmac_f32_e32 v211, v180, v109
	v_dual_mov_b32 v185, v80 :: v_dual_fmac_f32 v168, v54, v122
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v196, v51, v167
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v51, off, off offset:264
	scratch_load_b32 v151, off, off offset:568
	v_fmac_f32_e32 v0, v220, v97
	v_fmac_f32_e32 v212, v76, v156
	v_fmac_f32_e32 v208, v77, v158
	v_fmac_f32_e32 v198, v58, v165
	v_fmac_f32_e32 v204, v68, v160
	v_fmac_f32_e32 v200, v70, v162
	v_fmac_f32_e32 v194, v34, v93
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v214, v177, v105
	v_mov_b32_e32 v178, v84
	v_dual_fmac_f32 v210, v179, v106 :: v_dual_mov_b32 v179, v85
	v_mov_b32_e32 v180, v86
	v_dual_fmac_f32 v206, v181, v103 :: v_dual_mov_b32 v181, v87
	v_mov_b32_e32 v182, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v179, v20, v154 :: v_dual_fmac_f32 v202, v183, v104
	v_mov_b32_e32 v183, v89
	v_mov_b32_e32 v186, v81
	v_mov_b32_e32 v184, v90
	v_fmac_f32_e32 v182, v190, v149
	v_fmac_f32_e32 v180, v192, v150
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v184, v188, v96
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v65, v36, v91
	scratch_load_b32 v36, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v191, v141, v146
	scratch_store_b32 off, v191, off offset:4 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v141, off, off offset:8
	scratch_load_b32 v191, off, off offset:372
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v141, v43, v191
	scratch_store_b32 off, v141, off offset:8 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:52
	scratch_load_b32 v141, off, off offset:384
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v43, v142, v141
	scratch_store_b32 off, v43, off offset:52 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:56
	scratch_load_b32 v141, off, off offset:380
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v43, v40, v141
	scratch_store_b32 off, v43, off offset:56 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:48
	scratch_load_b32 v43, off, off offset:392
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v40, v130, v43 :: v_dual_fmac_f32 v183, v187, v152
	scratch_store_b32 off, v40, off offset:48 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:44
	scratch_load_b32 v43, off, off offset:388
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v40, v129, v43
	scratch_store_b32 off, v40, off offset:44 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v40, off, off offset:268
	scratch_load_b32 v43, off, off offset:40
	scratch_load_b32 v129, off, off offset:400
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v40, v135, v148 :: v_dual_fmac_f32 v43, v174, v129
	v_mov_b32_e32 v174, v83
	scratch_load_b32 v129, off, off offset:72 ; 4-byte Folded Reload
	scratch_store_b32 off, v43, off offset:40 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:36
	scratch_load_b32 v83, off, off offset:396
	v_fmac_f32_e32 v174, v8, v145
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v8, off, off offset:148
	scratch_load_b32 v145, off, off offset:188
	scratch_load_b32 v141, off, off offset:84
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v43, v173, v83
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v141, v37, v101
	scratch_store_b32 off, v43, off offset:36 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:32
	scratch_load_b32 v83, off, off offset:444
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v43, v9, v83
	scratch_store_b32 off, v43, off offset:32 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v142, off, off offset:88
	scratch_load_b32 v9, off, off offset:28
	scratch_load_b32 v43, off, off offset:436
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v117, v169 :: v_dual_fmac_f32 v142, v48, v102
	scratch_load_b32 v48, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v9, v12, v43
	scratch_store_b32 off, v9, off offset:28 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v173, off, off offset:104
	scratch_load_b32 v9, off, off offset:16
	scratch_load_b32 v12, off, off offset:452
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v173, v67, v112
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v9, v10, v12
	scratch_store_b32 off, v9, off offset:16 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v83, off, off offset:96
	scratch_load_b32 v9, off, off offset:12
	scratch_load_b32 v10, off, off offset:448
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v9, v11, v10
	scratch_load_b32 v11, off, off offset:168 ; 4-byte Folded Reload
	scratch_store_b32 off, v9, off offset:12 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v130, off, off offset:100
	scratch_load_b32 v9, off, off offset:24
	scratch_load_b32 v10, off, off offset:440
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v130, v57, v111 :: v_dual_fmac_f32 v9, v6, v10
	scratch_store_b32 off, v9, off offset:24 ; 4-byte Folded Spill
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v146, off, off offset:192
	scratch_load_b32 v191, off, off offset:68
	scratch_load_b32 v6, off, off offset:20
	scratch_load_b32 v9, off, off offset:456
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v146, v5, v144
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v144, off, off offset:184
	scratch_load_b32 v5, off, off offset:60
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v6, v7, v9
	scratch_load_b32 v9, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v181, v189, v153
	scratch_store_b32 off, v6, off offset:20 ; 4-byte Folded Spill
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v144, v52, v143
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v143, off, off offset:160
	scratch_load_b32 v6, off, off offset:492
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v143, v26, v140
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v145, v59, v6
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v122, off, off offset:180
	scratch_load_b32 v12, off, off offset:164
	scratch_load_b32 v6, off, off offset:496
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v12, v23, v127
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v122, v60, v6
	scratch_load_b32 v6, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v171, v175, v6
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v6, off, off offset:176
	scratch_load_b32 v10, off, off offset:156
	scratch_load_b32 v7, off, off offset:504
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v10, v22, v125
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v6, v193, v7
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v169, off, off offset:144
	scratch_load_b32 v7, off, off offset:540
	v_mov_b32_e32 v193, v82
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v193, v41, v92
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v11, v31, v7
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:152
	scratch_load_b32 v26, off, off offset:64
	v_fmac_f32_e32 v8, v216, v120
	v_mov_b32_e32 v216, v16
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:544
	scratch_load_b32 v120, off, off offset:292
	v_fmac_f32_e32 v9, v35, v123
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v43, off, off offset:140
	scratch_load_b32 v52, off, off offset:136
	scratch_load_b32 v35, off, off offset:132
	scratch_load_b32 v127, off, off offset:128
	scratch_load_b32 v123, off, off offset:284
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v7, v13, v121
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v121, off, off offset:296
	scratch_load_b32 v13, off, off offset:124
	scratch_load_b32 v60, off, off offset:120
	scratch_load_b32 v140, off, off offset:116
	scratch_load_b32 v59, off, off offset:112
	scratch_load_b32 v125, off, off offset:108
	s_waitcnt vmcnt(12)
	v_fmac_f32_e32 v169, v217, v16
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v41, off, off offset:244
	scratch_load_b32 v37, off, off offset:92
	scratch_load_b32 v54, off, off offset:80
	scratch_load_b32 v34, off, off offset:76
	scratch_load_b32 v16, off, off offset:324
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(13)
	v_fmac_f32_e32 v35, v71, v118
	v_fmac_f32_e32 v52, v75, v124
	s_waitcnt vmcnt(12)
	v_fmac_f32_e32 v127, v72, v116
	v_fmac_f32_e32 v209, v78, v157
	s_waitcnt vmcnt(9)
	v_fmac_f32_e32 v13, v69, v115
	v_mov_b32_e32 v115, v40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v44, off, off offset:252
	scratch_load_b32 v40, off, off offset:220
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v59, v53, v113
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:196
	scratch_load_b32 v53, off, off offset:256
	v_fmac_f32_e32 v129, v42, v100
	v_fmac_f32_e32 v140, v62, v114
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v37, v252, v126 :: v_dual_fmac_f32 v34, v251, v128
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v57, v134, v147
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v53, v137, v16
	scratch_load_b32 v16, off, off offset:308 ; 4-byte Folded Reload
	v_mov_b32_e32 v134, v32
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v51, v136, v16
	scratch_load_b32 v16, off, off offset:328 ; 4-byte Folded Reload
	v_mov_b32_e32 v136, v50
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v44, v222, v16
	scratch_load_b32 v16, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v43, v218, v119
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v119, off, off offset:288
	scratch_load_b32 v42, off, off offset:248
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v48, v221, v16
	scratch_load_b32 v16, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v41, v21, v16
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:228
	scratch_load_b32 v16, off, off offset:316
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v42, v28, v16
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v28, off, off offset:236
	scratch_load_b32 v23, off, off offset:216
	scratch_load_b32 v31, off, off offset:200
	scratch_load_b32 v16, off, off offset:336
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v5, v219, v98 :: v_dual_fmac_f32 v28, v25, v16
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v25, off, off offset:304
	scratch_load_b32 v16, off, off offset:208
	scratch_load_b32 v22, off, off offset:320
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v191, v33, v99 :: v_dual_fmac_f32 v36, v27, v22
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v27, off, off offset:232
	scratch_load_b32 v22, off, off offset:212
	scratch_load_b32 v32, off, off offset:356
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v21, v244, v32
	v_mov_b32_e32 v244, v4
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:224
	scratch_load_b32 v32, off, off offset:340
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v27, v243, v32
	v_mov_b32_e32 v243, v15
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:300
	scratch_load_b32 v32, off, off offset:360
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v244, v246, v32
	scratch_load_b32 v32, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v4, v245, v32
	scratch_load_b32 v32, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v121, v253, v32
	scratch_load_b32 v32, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v15, v1, v32
	scratch_load_b32 v1, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v119, v17, v1
	scratch_load_b32 v1, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v213, v79, v155 :: v_dual_fmac_f32 v120, v2, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v1, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v243, v55, v1
	scratch_load_b32 v1, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v255, v61, v1
	scratch_load_b32 v1, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v23, v56, v1
	scratch_load_b32 v1, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v40, v63, v1
	scratch_load_b32 v1, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v197, v64, v166 :: v_dual_fmac_f32 v16, v38, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v1, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v205, v74, v159 :: v_dual_fmac_f32 v22, v47, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v1, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v25, v238, v1
	scratch_load_b32 v1, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v237, v49, v1
	scratch_load_b32 v1, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v235, v248, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v246, off, off offset:276
	scratch_load_b32 v1, off, off offset:460
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v199, v66, v164 :: v_dual_fmac_f32 v236, v247, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v1, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v233, v250, v1
	scratch_load_b32 v1, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v234, v249, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off
	scratch_load_b32 v2, off, off offset:484
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v1, v3, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:204
	scratch_store_b32 off, v1, off
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off
	scratch_load_b32 v1, off, off offset:468
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v31, v254, v1
	scratch_load_b32 v1, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v231, v18, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v253, off, off offset:272
	scratch_load_b32 v1, off, off offset:472
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v232, v14, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v254, off, off offset:280
	scratch_load_b32 v1, off, off offset:524
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v201, v73, v161 :: v_dual_fmac_f32 v254, v24, v139
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v226, v228, v1
	scratch_load_b32 v1, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v172, v227, v1
	scratch_load_b32 v1, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v137, v39 :: v_dual_fmac_f32 v224, v230, v1
	scratch_load_b32 v1, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v225, v229, v1
	scratch_load_b32 v1, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v223, v240, v1
	scratch_load_b32 v1, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v123, v239, v1
	scratch_load_b32 v1, off, off offset:536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v125, v242, v1
	scratch_load_b32 v1, off, off offset:520 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v60, v241, v1
	scratch_load_b32 v1, off, off offset:548 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v83, v46, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v46, off, off offset:576
	scratch_load_b32 v1, off, off offset:552
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v54, v45, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:572
	scratch_load_b32 v1, off, off offset:556
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v26, v29, v1
	scratch_load_b32 v1, off, off offset:564 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v253, v19, v1
	scratch_load_b32 v1, off, off offset:560 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v246, v30, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x13                           ; 80-byte Folded Reload
	scratch_load_b32 v152, off, off offset:24
	scratch_load_b32 v150, off, off offset:20
	scratch_load_b32 v149, off, off offset:16
	scratch_load_b32 v106, off, off offset:12
	scratch_load_b32 v154, off, off offset:32
	scratch_load_b32 v153, off, off offset:28
	scratch_load_b32 v175, off, off offset:40
	scratch_load_b32 v155, off, off offset:36
	scratch_load_b32 v188, off, off offset:48
	scratch_load_b32 v176, off, off offset:44
	scratch_load_b32 v108, off, off offset:52
	scratch_load_b32 v77, off, off offset:56
	scratch_load_b32 v2, off, off offset:4
	scratch_load_b32 v17, off, off offset:8
	scratch_load_b32 v128, off, off offset:852
	scratch_load_b32 v139, off, off offset:856
	scratch_load_b32 v135, off, off offset:860
	scratch_load_b32 v18, off, off offset:864
	scratch_load_b32 v109, off, off offset:848
	scratch_load_b32 v33, off, off offset:868
	scratch_store_b32 off, v57, off offset:196 ; 4-byte Folded Spill
	v_mov_b32_e32 v189, v3
	v_dual_mov_b32 v137, v15 :: v_dual_mov_b32 v240, v25
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v1, 4, v109
	v_and_b32_e32 v217, 15, v109
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v0, 0
	s_clause 0x9                            ; 40-byte Folded Spill
	scratch_store_b32 off, v16, off offset:844
	scratch_store_b32 off, v15, off offset:840
	scratch_store_b32 off, v14, off offset:836
	scratch_store_b32 off, v13, off offset:832
	scratch_store_b32 off, v12, off offset:828
	scratch_store_b32 off, v11, off offset:824
	scratch_store_b32 off, v10, off offset:820
	scratch_store_b32 off, v9, off offset:816
	scratch_store_b32 off, v8, off offset:812
	scratch_store_b32 off, v7, off offset:808
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v196, 0
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v214, 0
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v2, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v53, 0
	s_add_i32 s1, 0, 0x8000
	s_add_i32 s51, 0, 0x8800
	s_add_i32 s50, 0, 0x2000
	s_add_i32 s15, 0, 0x4000
	s_add_i32 s49, 0, 0x6000
.LBB0_8:                                ; %Flow1206
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v51, off offset:264
	scratch_store_b32 off, v48, off offset:260
	scratch_store_b32 off, v53, off offset:256
	scratch_store_b32 off, v44, off offset:252
	scratch_store_b32 off, v42, off offset:248
	scratch_store_b32 off, v41, off offset:244
	scratch_store_b32 off, v36, off offset:240
	scratch_store_b32 off, v28, off offset:236
	scratch_store_b32 off, v27, off offset:232
	scratch_store_b32 off, v21, off offset:228
	scratch_store_b32 off, v4, off offset:224
	scratch_store_b32 off, v40, off offset:220
	scratch_store_b32 off, v23, off offset:216
	scratch_store_b32 off, v22, off offset:212
	scratch_store_b32 off, v16, off offset:208
	scratch_store_b32 off, v31, off offset:200
	scratch_store_b32 off, v54, off offset:80
	scratch_store_b32 off, v34, off offset:76
	scratch_store_b32 off, v9, off offset:172
	scratch_store_b32 off, v12, off offset:164
	scratch_store_b32 off, v11, off offset:168
	scratch_store_b32 off, v10, off offset:156
	scratch_store_b32 off, v143, off offset:160
	scratch_store_b32 off, v8, off offset:148
	scratch_store_b32 off, v7, off offset:152
	scratch_store_b32 off, v43, off offset:140
	scratch_store_b32 off, v169, off offset:144
	scratch_store_b32 off, v35, off offset:132
	scratch_store_b32 off, v52, off offset:136
	scratch_store_b32 off, v13, off offset:124
	scratch_store_b32 off, v127, off offset:128
	scratch_store_b32 off, v59, off offset:112
	s_clause 0x11                           ; 72-byte Folded Spill
	scratch_store_b32 off, v140, off offset:116
	scratch_store_b32 off, v60, off offset:120
	scratch_store_b32 off, v125, off offset:108
	scratch_store_b32 off, v173, off offset:104
	scratch_store_b32 off, v130, off offset:100
	scratch_store_b32 off, v83, off offset:96
	scratch_store_b32 off, v37, off offset:92
	scratch_store_b32 off, v142, off offset:88
	scratch_store_b32 off, v141, off offset:84
	scratch_store_b32 off, v129, off offset:72
	scratch_store_b32 off, v191, off offset:68
	scratch_store_b32 off, v26, off offset:64
	scratch_store_b32 off, v5, off offset:60
	scratch_store_b32 off, v0, off offset:308
	scratch_store_b32 off, v17, off offset:8
	scratch_store_b32 off, v2, off offset:4
	scratch_store_b32 off, v117, off offset:328
	scratch_store_b32 off, v6, off offset:176
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v191, off, off offset:808
	scratch_load_b32 v238, off, off offset:812
	scratch_load_b32 v230, off, off offset:816
	scratch_load_b32 v229, off, off offset:820
	scratch_load_b32 v251, off, off offset:824
	scratch_load_b32 v227, off, off offset:828
	scratch_load_b32 v239, off, off offset:832
	scratch_load_b32 v228, off, off offset:836
	scratch_load_b32 v241, off, off offset:840
	scratch_load_b32 v242, off, off offset:844
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v117, 0
	v_cndmask_b32_e64 v0, 0x90, 0, vcc_lo
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v107, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v34, v0, v18
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v0, s1, v34
	v_xor_b32_e32 v35, 16, v34
	ds_load_b128 v[29:32], v0
	ds_load_b128 v[25:28], v0 offset:512
	ds_load_b128 v[21:24], v0 offset:1024
	ds_load_b128 v[17:20], v0 offset:1536
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v0, s1, v35
	ds_load_b128 v[13:16], v0
	ds_load_b128 v[9:12], v0 offset:512
	ds_load_b128 v[5:8], v0 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v0 offset:1536
	v_cndmask_b32_e64 v0, 0, 1, s2
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s1, 1, v0
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v127, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v52, 0
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_mov_b32_e32 v178, 0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v126, 0
	s_mov_b32 s4, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v37, off, off offset:736
	scratch_load_b32 v0, off, off offset:728
	scratch_load_b32 v38, off, off offset:732
	scratch_load_b32 v39, off, off offset:712
	scratch_load_b32 v36, off, off offset:724
	scratch_load_b32 v41, off, off offset:720
	scratch_load_b32 v42, off, off offset:716
	scratch_load_b32 v40, off, off offset:708
	scratch_load_b32 v45, off, off offset:704
	scratch_load_b32 v46, off, off offset:700
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v43, s52, v242
	v_add_nc_u32_e32 v44, s52, v241
	v_add_nc_u32_e32 v47, s52, v227
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v37, s52, v37
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v0, s52, v0
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v38, s52, v38
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v39, s52, v39
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v36, s52, v36
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v41, s52, v41
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v42, s52, v42
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v40, s52, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	ds_load_u8 v39, v39
	ds_load_u8 v40, v40
	ds_load_u8 v38, v38
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	ds_load_u8 v0, v0
	ds_load_u8 v36, v36
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s52, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	v_perm_b32 v38, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v39, v42, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:792 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v36, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v36, off, off offset:696 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v46, s52, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v54, v39, 16, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:788 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	ds_load_u8 v44, v44
	ds_load_u8 v45, v45
	ds_load_u8 v46, v46
	v_lshl_or_b32 v55, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s52, v228
	v_add_nc_u32_e32 v37, s52, v239
	scratch_load_b32 v42, off, off offset:800 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v41, 16, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:796
	scratch_load_b32 v41, off, off offset:776
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v40, s52, v40
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v36, s52, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v36, v36
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v39, s52, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	ds_load_u8 v40, v40
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v36, v47, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:784
	scratch_load_b32 v43, off, off offset:772
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v40, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:780 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v42, s52, v42
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v38, s52, v38
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v41, s52, v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v52, v0, 16, v36
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:764
	scratch_load_b32 v36, off, off offset:744
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v37, s52, v37
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v43, s52, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	ds_load_u8 v38, v38
	ds_load_u8 v41, v41
	ds_load_u8 v43, v43
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v40, s52, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	ds_load_u8 v40, v40
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s52, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v38, v38, v42, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:760 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v43, off, off offset:756 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v59, v38, 16, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v40, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:768 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v36, s52, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v58, v37, 16, v41
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v43, s52, v43
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s52, v38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s52, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v40
	ds_load_u8 v0, v0
	ds_load_u8 v36, v36
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v0, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:752 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v42, s52, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v38, v36, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:748 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v0, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v39, s52, v39
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s52, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
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
	v_cvt_f32_i32_e32 v118, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:676 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v117, v44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s52, v0
	v_add_nc_u32_e32 v44, s52, v251
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v113, v47
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v47, s52, v230
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v112, v46
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v46, s52, v191
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v105, v48
	v_cvt_f32_i32_e32 v107, v49
	v_cvt_f32_i32_e32 v101, v50
	v_cvt_f32_i32_e32 v102, v51
	ds_load_u8 v47, v47
	ds_load_u8 v46, v46
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s52, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:680 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s52, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v45, s52, v238
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v63, v44, 16, v0
	ds_load_u8 v45, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:624 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v46, s52, v229
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v47, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v62, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v45, off, off offset:632
	scratch_load_b32 v44, off, off offset:616
	scratch_load_b32 v46, off, off offset:652
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v0, s52, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v47, s52, v47
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v45, s52, v45
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v44, s52, v44
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s52, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v45, v45
	ds_load_u8 v44, v44
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:640 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s52, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:600 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v61, v44, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:592 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v44, s52, v151
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s52, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s52, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:608 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s52, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:688 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v60, v44, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:684
	scratch_load_b32 v44, off, off offset:672
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v45, s52, v45
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s52, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s52, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:692 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s52, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:656 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v67, v44, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:636 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s52, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:664 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s52, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:644
	scratch_load_b32 v44, off, off offset:628
	v_add_nc_u32_e32 v0, s52, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s52, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s52, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:648 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s52, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:612 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v65, v44, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:604
	scratch_load_b32 v44, off, off offset:596
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v45, s52, v45
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s52, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s52, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:620 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s52, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v64, v44, 16, v0
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[25:28], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[9:12], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v124, v44
	v_cvt_f32_i32_e32 v125, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v114, v46
	v_cvt_f32_i32_e32 v116, v47
	v_cvt_f32_i32_e32 v110, v48
	v_cvt_f32_i32_e32 v111, v49
	v_cvt_f32_i32_e32 v103, v50
	v_cvt_f32_i32_e32 v104, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[25:28], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[56:59], v[9:12], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v99, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v100, v45
	v_cvt_f32_i32_e32 v97, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v98, v47
	v_cvt_f32_i32_e32 v96, v48
	v_cvt_f32_i32_e32 v95, v49
	v_cvt_f32_i32_e32 v93, v50
	v_cvt_f32_i32_e32 v94, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[21:24], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[5:8], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v91, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v92, v45
	v_cvt_f32_i32_e32 v89, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v90, v47
	v_cvt_f32_i32_e32 v87, v48
	v_cvt_f32_i32_e32 v88, v49
	v_cvt_f32_i32_e32 v85, v50
	v_cvt_f32_i32_e32 v86, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[21:24], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[56:59], v[5:8], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v83, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v84, v45
	v_cvt_f32_i32_e32 v81, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v82, v47
	v_cvt_f32_i32_e32 v75, v48
	v_cvt_f32_i32_e32 v80, v49
	v_cvt_f32_i32_e32 v76, v50
	v_cvt_f32_i32_e32 v74, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[17:20], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[1:4], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v72, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v73, v45
	v_cvt_f32_i32_e32 v70, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v71, v47
	v_cvt_f32_i32_e32 v79, v48
	v_cvt_f32_i32_e32 v69, v49
	v_cvt_f32_i32_e32 v68, v50
	v_cvt_f32_i32_e32 v78, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[29:32], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[52:55], v[17:20], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[13:16], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[56:59], v[1:4], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v130, v46
	v_cvt_f32_i32_e32 v0, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v38, v40
	v_cvt_f32_i32_e32 v52, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v36, v39
	v_cvt_f32_i32_e32 v178, v41
	scratch_store_b32 off, v38, off         ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v126, v42
	v_cvt_f32_i32_e32 v127, v43
	v_cvt_f32_i32_e32 v43, v47
	v_cvt_f32_i32_e32 v40, v48
	v_cvt_f32_i32_e32 v41, v49
	v_cvt_f32_i32_e32 v38, v50
	v_cvt_f32_i32_e32 v39, v51
	v_cvt_f32_i32_e32 v42, v44
	v_cvt_f32_i32_e32 v44, v45
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v44, off offset:1084
	scratch_store_b32 off, v43, off offset:1080
	scratch_store_b32 off, v42, off offset:1076
	scratch_store_b32 off, v41, off offset:912
	scratch_store_b32 off, v40, off offset:908
	scratch_store_b32 off, v39, off offset:904
	scratch_store_b32 off, v38, off offset:900
	scratch_store_b32 off, v125, off offset:896
	scratch_store_b32 off, v124, off offset:892
	scratch_store_b32 off, v117, off offset:884
	scratch_store_b32 off, v116, off offset:880
	scratch_store_b32 off, v114, off offset:876
	scratch_store_b32 off, v113, off offset:872
	scratch_store_b32 off, v112, off offset:868
	scratch_store_b32 off, v111, off offset:864
	scratch_store_b32 off, v107, off offset:856
	scratch_store_b32 off, v105, off offset:852
	scratch_store_b32 off, v104, off offset:848
	scratch_store_b32 off, v103, off offset:588
	scratch_store_b32 off, v102, off offset:584
	scratch_store_b32 off, v101, off offset:580
	scratch_store_b32 off, v100, off offset:576
	scratch_store_b32 off, v99, off offset:572
	scratch_store_b32 off, v98, off offset:568
	scratch_store_b32 off, v97, off offset:564
	scratch_store_b32 off, v95, off offset:560
	scratch_store_b32 off, v94, off offset:556
	scratch_store_b32 off, v93, off offset:552
	scratch_store_b32 off, v92, off offset:548
	scratch_store_b32 off, v91, off offset:544
	scratch_store_b32 off, v90, off offset:540
	scratch_store_b32 off, v89, off offset:536
	s_clause 0x19                           ; 104-byte Folded Spill
	scratch_store_b32 off, v88, off offset:524
	scratch_store_b32 off, v87, off offset:520
	scratch_store_b32 off, v86, off offset:516
	scratch_store_b32 off, v85, off offset:512
	scratch_store_b32 off, v84, off offset:508
	scratch_store_b32 off, v83, off offset:504
	scratch_store_b32 off, v82, off offset:492
	scratch_store_b32 off, v81, off offset:488
	scratch_store_b32 off, v80, off offset:484
	scratch_store_b32 off, v75, off offset:480
	scratch_store_b32 off, v74, off offset:476
	scratch_store_b32 off, v73, off offset:428
	scratch_store_b32 off, v72, off offset:424
	scratch_store_b32 off, v71, off offset:408
	scratch_store_b32 off, v70, off offset:404
	scratch_store_b32 off, v69, off offset:400
	scratch_store_b32 off, v68, off offset:388
	scratch_store_b32 off, v37, off offset:380
	scratch_store_b32 off, v52, off offset:376
	scratch_store_b32 off, v146, off offset:192
	scratch_store_b32 off, v145, off offset:188
	scratch_store_b32 off, v144, off offset:184
	scratch_store_b32 off, v168, off offset:336
	scratch_store_b32 off, v171, off offset:332
	scratch_store_b32 off, v36, off offset:288
	scratch_store_b32 off, v0, off offset:280
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v37, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v0, off, off offset:680
	scratch_load_b32 v37, off, off offset:668
	scratch_load_b32 v47, off, off offset:592
	scratch_load_b32 v36, off, off offset:676
	scratch_load_b32 v43, off, off offset:640
	scratch_load_b32 v44, off, off offset:632
	scratch_load_b32 v45, off, off offset:624
	scratch_load_b32 v46, off, off offset:616
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v41, s15, v238
	v_dual_mov_b32 v107, v96 :: v_dual_add_nc_u32 v42, s15, v191
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v39, s15, v229
	v_add_nc_u32_e32 v40, s15, v230
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v38, s15, v251
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v0, s15, v0
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v36, s15, v36
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v43, s15, v43
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v44, s15, v44
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s15, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s15, v46
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
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
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v0, v36, v0, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v42, off, off offset:608 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v37, s15, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:600
	scratch_load_b32 v36, off, off offset:736
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	v_lshl_or_b32 v70, v39, 16, v41
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v47, s15, v47
	scratch_load_b32 v41, off, off offset:732 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v69, v43, 16, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v38, s15, v151
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v47, v47
	ds_load_u8 v38, v38
	v_lshl_or_b32 v71, v0, 16, v37
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:728
	scratch_load_b32 v37, off, off offset:724
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v47, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v42, s15, v42
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v40, s15, v40
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v42
	ds_load_u8 v40, v40
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v42, off, off offset:712 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v36, s15, v36
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v41, s15, v41
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s15, v0
	scratch_load_b32 v40, off, off offset:720 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v37, s15, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	v_lshl_or_b32 v68, v39, 16, v38
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v38, off, off offset:696 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:716
	scratch_load_b32 v43, off, off offset:708
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v42, s15, v42
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v40, s15, v40
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, s15, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s15, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v40, v40
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v40, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v40, off, off offset:704 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v43, s15, v43
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v36, v36
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v41, v36, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v41, s15, v242
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v43, s15, v241
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v41, v41
	ds_load_u8 v43, v43
	v_lshl_or_b32 v75, v36, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:700 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v36, s15, v227
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v74, v37, 16, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v43, v41, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v40, s15, v40
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s15, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v40
	ds_load_u8 v0, v0
	ds_load_u8 v36, v36
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v0, v39, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v39, s15, v228
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v38, v36, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v38, s15, v239
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	ds_load_u8 v38, v38
	v_lshl_or_b32 v73, v0, 16, v37
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:684 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v72, v38, 16, v36
	v_dual_mov_b32 v43, s11 :: v_dual_mov_b32 v42, s10
	v_dual_mov_b32 v41, s9 :: v_dual_mov_b32 v40, s8
	v_dual_mov_b32 v39, s7 :: v_dual_mov_b32 v38, s6
	v_dual_mov_b32 v37, s5 :: v_dual_mov_b32 v36, s4
	v_wmma_i32_16x16x16_iu8 v[44:51], v[68:71], v[29:32], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[72:75], v[29:32], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[68:71], v[25:28], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[72:75], v[25:28], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[68:71], v[21:24], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[72:75], v[21:24], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[68:71], v[17:20], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[72:75], v[17:20], v[36:43] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v18, off, off offset:688
	scratch_load_b32 v17, off, off offset:672
	scratch_load_b32 v20, off, off offset:660
	scratch_load_b32 v19, off, off offset:652
	scratch_load_b32 v24, off, off offset:780
	scratch_load_b32 v22, off, off offset:796
	scratch_load_b32 v21, off, off offset:612
	scratch_load_b32 v68, off, off offset:748
	scratch_load_b32 v23, off, off offset:772
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v0, s15, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v18, s15, v18
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v17, s15, v17
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v20, s15, v20
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v19, s15, v19
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v24, s15, v24
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	ds_load_u8 v20, v20
	ds_load_u8 v19, v19
	ds_load_u8 v24, v24
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v22, s15, v22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v21, s15, v21
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v68, s15, v68
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s15, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	ds_load_u8 v68, v68
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v17, off, off offset:692 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s15, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v18, off, off offset:656 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s15, v18
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v19, off, off offset:664 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v19, s15, v19
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_lshl_or_b32 v20, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:636 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v19, v19, 16, v18
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:644
	scratch_load_b32 v17, off, off offset:628
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s15, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v18, s15, v18
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s15, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v17, off, off offset:648 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s15, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:604
	scratch_load_b32 v17, off, off offset:596
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s15, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s15, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v17, off, off offset:620 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s15, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v21, v17, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:788 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v17, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:792 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[44:51], v[17:20], v[13:16], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[17:20], v[9:12], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[17:20], v[5:8], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[17:20], v[1:4], v[98:105] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v250, v50
	v_cvt_f32_i32_e32 v142, v60
	v_cvt_f32_i32_e32 v143, v61
	v_cvt_f32_i32_e32 v140, v62
	v_cvt_f32_i32_e32 v141, v63
	v_cvt_f32_i32_e32 v75, v64
	v_cvt_f32_i32_e32 v129, v65
	v_cvt_f32_i32_e32 v73, v66
	v_cvt_f32_i32_e32 v74, v67
	v_cvt_f32_i32_e32 v116, v25
	v_cvt_f32_i32_e32 v136, v26
	v_cvt_f32_i32_e32 v113, v27
	v_cvt_f32_i32_e32 v114, v28
	v_cvt_f32_i32_e32 v112, v29
	v_cvt_f32_i32_e32 v111, v30
	v_cvt_f32_i32_e32 v69, v31
	v_cvt_f32_i32_e32 v70, v32
	v_cvt_f32_i32_e32 v60, v99
	v_cvt_f32_i32_e32 v124, v100
	v_cvt_f32_i32_e32 v125, v101
	v_cvt_f32_i32_e32 v138, v44
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, s15, v21
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s15, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:800 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s15, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v22, off, off offset:776 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s15, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v23, off, off offset:784 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s15, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	v_lshl_or_b32 v24, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:760 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v23, v23, 16, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:764
	scratch_load_b32 v21, off, off offset:756
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s15, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v22, s15, v22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s15, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:768 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s15, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:744
	scratch_load_b32 v21, off, off offset:740
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s15, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s15, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s15, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v68, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v21, v21, 16, v0
	v_wmma_i32_16x16x16_iu8 v[52:59], v[21:24], v[13:16], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[21:24], v[9:12], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[21:24], v[5:8], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[21:24], v[1:4], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v54
	v_cvt_f32_i32_e32 v1, v56
	v_cvt_f32_i32_e32 v2, v57
	v_cvt_f32_i32_e32 v0, v59
	v_cvt_f32_i32_e32 v248, v52
	v_cvt_f32_i32_e32 v249, v53
	v_cvt_f32_i32_e32 v247, v55
	v_cvt_f32_i32_e32 v245, v58
	v_cvt_f32_i32_e32 v71, v82
	v_cvt_f32_i32_e32 v72, v83
	v_cvt_f32_i32_e32 v187, v84
	v_cvt_f32_i32_e32 v252, v85
	v_mov_b32_e32 v85, v0
	v_cvt_f32_i32_e32 v81, v86
	v_cvt_f32_i32_e32 v82, v87
	v_cvt_f32_i32_e32 v117, v88
	v_cvt_f32_i32_e32 v80, v89
	v_mov_b32_e32 v89, v3
	v_cvt_f32_i32_e32 v67, v90
	v_mov_b32_e32 v90, v1
	v_cvt_f32_i32_e32 v68, v91
	v_mov_b32_e32 v91, v2
	v_cvt_f32_i32_e32 v65, v92
	v_cvt_f32_i32_e32 v66, v93
	v_cvt_f32_i32_e32 v63, v94
	v_cvt_f32_i32_e32 v64, v95
	v_cvt_f32_i32_e32 v61, v96
	v_mov_b32_e32 v96, v107
	v_cvt_f32_i32_e32 v62, v97
	v_cvt_f32_i32_e32 v59, v98
	v_cvt_f32_i32_e32 v57, v102
	v_cvt_f32_i32_e32 v58, v103
	v_cvt_f32_i32_e32 v55, v104
	v_cvt_f32_i32_e32 v56, v105
	v_cvt_f32_i32_e32 v53, v36
	v_cvt_f32_i32_e32 v54, v37
	v_cvt_f32_i32_e32 v0, v38
	v_cvt_f32_i32_e32 v52, v39
	v_cvt_f32_i32_e32 v38, v40
	v_cvt_f32_i32_e32 v39, v41
	v_cvt_f32_i32_e32 v36, v42
	v_cvt_f32_i32_e32 v37, v43
	v_cvt_f32_i32_e32 v41, v46
	v_cvt_f32_i32_e32 v42, v47
	v_cvt_f32_i32_e32 v87, v48
	v_cvt_f32_i32_e32 v40, v49
	v_cvt_f32_i32_e32 v83, v51
	v_cvt_f32_i32_e32 v43, v45
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s30, 31
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v43, off offset:1184
	scratch_store_b32 off, v42, off offset:1180
	scratch_store_b32 off, v41, off offset:1176
	scratch_store_b32 off, v40, off offset:1172
	scratch_store_b32 off, v143, off offset:1128
	scratch_store_b32 off, v142, off offset:1124
	scratch_store_b32 off, v141, off offset:1120
	scratch_store_b32 off, v140, off offset:1116
	scratch_store_b32 off, v129, off offset:1112
	scratch_store_b32 off, v75, off offset:1104
	scratch_store_b32 off, v74, off offset:1100
	scratch_store_b32 off, v73, off offset:1096
	scratch_store_b32 off, v72, off offset:1092
	scratch_store_b32 off, v71, off offset:1088
	scratch_store_b32 off, v70, off offset:952
	scratch_store_b32 off, v69, off offset:948
	scratch_store_b32 off, v68, off offset:944
	scratch_store_b32 off, v67, off offset:940
	scratch_store_b32 off, v66, off offset:936
	scratch_store_b32 off, v65, off offset:932
	scratch_store_b32 off, v64, off offset:928
	scratch_store_b32 off, v63, off offset:924
	scratch_store_b32 off, v62, off offset:920
	scratch_store_b32 off, v61, off offset:916
	scratch_store_b32 off, v118, off offset:888
	scratch_store_b32 off, v110, off offset:860
	scratch_store_b32 off, v60, off offset:456
	scratch_store_b32 off, v59, off offset:452
	scratch_store_b32 off, v58, off offset:444
	scratch_store_b32 off, v57, off offset:440
	scratch_store_b32 off, v56, off offset:436
	scratch_store_b32 off, v55, off offset:432
	s_clause 0x8                            ; 36-byte Folded Spill
	scratch_store_b32 off, v54, off offset:420
	scratch_store_b32 off, v53, off offset:416
	scratch_store_b32 off, v52, off offset:412
	scratch_store_b32 off, v174, off offset:340
	scratch_store_b32 off, v39, off offset:304
	scratch_store_b32 off, v38, off offset:300
	scratch_store_b32 off, v37, off offset:296
	scratch_store_b32 off, v36, off offset:292
	scratch_store_b32 off, v0, off offset:284
	s_lshr_b32 s1, s1, 24
	s_mov_b32 s15, 0x31027000
	s_add_i32 s1, s30, s1
	s_mov_b32 s14, 0x7ffffffe
	s_ashr_i32 s1, s1, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s48
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v0, v170, s1, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s1, s34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v163, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_and_b32 s13, s13, 0xffff
	v_add_lshl_u32 v4, v131, s1, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_and_b32_e32 v3, 28, v135
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	v_add3_u32 v135, s26, s27, v109
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v5, v132, s1, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	s_and_b32 s29, s29, 0xffff
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v6, v133, s1, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v7, v135, s4, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(11)
	v_and_b32_e32 v2, 32, v33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add_nc_u32_e32 v88, 0, v128
	v_dual_mov_b32 v221, 0 :: v_dual_add_nc_u32 v8, s51, v34
	v_add3_u32 v2, 0, v139, v2
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v9, s51, v35
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v219, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v86, v2, v3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v3, 0x80000000, v5 :: v_dual_cndmask_b32 v2, 0x80000000, v4
	v_dual_cndmask_b32 v4, 0x80000000, v6 :: v_dual_cndmask_b32 v5, 0x80000000, v7
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v128, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v32, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v0, off offset:1188 ; 4-byte Folded Spill
	buffer_load_u16 v0, v2, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v2, 0 :: v_dual_lshlrev_b32 v1, 16, v1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v86, v1 offset:36864
	v_mov_b32_e32 v1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:1168 ; 4-byte Folded Spill
	buffer_load_u16 v0, v3, s[12:15], 0 offen
	v_mov_b32_e32 v3, 0
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:1108 ; 4-byte Folded Spill
	buffer_load_u16 v0, v4, s[12:15], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v4, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s1, 1, v4
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:980 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v0, v5, s[28:31], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[4:7], v88 offset:37376
	ds_load_b128 v[10:13], v88 offset:37392
	ds_load_b128 v[36:39], v88 offset:36864
	ds_load_b128 v[28:31], v88 offset:36880
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[4:7], off offset:1152 ; 16-byte Folded Spill
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[10:13], off offset:1132 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_store_b32 v86, v0 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[60:63], v8
	ds_load_b128 v[52:55], v8 offset:512
	ds_load_b128 v[44:47], v8 offset:1024
	ds_load_b128 v[16:19], v8 offset:1536
	ds_load_b128 v[56:59], v9
	ds_load_b128 v[24:27], v9 offset:512
	ds_load_b128 v[20:23], v9 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[12:15], v9 offset:1536
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v0, 0
	v_mov_b32_e32 v8, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v2, off, off offset:736
	scratch_load_b32 v0, off, off offset:728
	scratch_load_b32 v8, off, off offset:732
	scratch_load_b32 v9, off, off offset:712
	scratch_load_b32 v1, off, off offset:724
	scratch_load_b32 v11, off, off offset:720
	scratch_load_b32 v32, off, off offset:716
	scratch_load_b32 v10, off, off offset:708
	scratch_load_b32 v35, off, off offset:704
	scratch_load_b32 v40, off, off offset:700
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, s50, v242
	v_add_nc_u32_e32 v34, s50, v241
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v104, s11 :: v_dual_add_nc_u32 v41, s50, v227
	v_dual_mov_b32 v102, s9 :: v_dual_mov_b32 v101, s8
	v_dual_mov_b32 v100, s7 :: v_dual_mov_b32 v99, s6
	v_mov_b32_e32 v97, s4
	v_dual_mov_b32 v103, s10 :: v_dual_mov_b32 v98, s5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:652
	scratch_load_b32 v49, off, off offset:660
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v2, s50, v2
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v0, s50, v0
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v8, s50, v8
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v9, s50, v9
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v1, s50, v1
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v11, s50, v11
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v32, s50, v32
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v10, s50, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	ds_load_u8 v8, v8
	ds_load_u8 v11, v11
	ds_load_u8 v32, v32
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v35, s50, v35
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v8, v2, 0xc0c0004
	v_perm_b32 v8, v10, v9, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v10, off, off offset:792 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v32, v11, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:696 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v40, s50, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	ds_load_u8 v35, v35
	ds_load_u8 v40, v40
	v_lshl_or_b32 v11, v2, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s50, v228
	v_add_nc_u32_e32 v2, s50, v239
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v48, s50, v48
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v49, s50, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	ds_load_u8 v49, v49
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v32, s50, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v10, v9, 16, v8
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v9, off, off offset:788 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v40, v35, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:800
	scratch_load_b32 v40, off, off offset:772
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v1, s50, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v41, v41
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v9, s50, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v2, v2
	ds_load_u8 v32, v32
	ds_load_u8 v35, v9
	v_lshl_or_b32 v9, v33, 16, v8
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:796
	scratch_load_b32 v33, off, off offset:776
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v40, s50, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v2, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:784 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v35, v32, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v35, off, off offset:780 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v34, s50, v34
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v8, s50, v8
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v33, s50, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	ds_load_u8 v8, v8
	ds_load_u8 v33, v33
	ds_load_u8 v40, v40
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v8, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v8, off, off offset:760 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v40, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:756 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v35, s50, v35
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v8, s50, v8
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s50, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v41, v8
	ds_load_u8 v40, v40
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v8, off, off offset:768 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s50, v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v8, v0, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:764
	scratch_load_b32 v1, off, off offset:744
	v_add_nc_u32_e32 v2, s50, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v35, v35
	v_wmma_i32_16x16x16_iu8 v[141:148], v[8:11], v[60:63], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v35, v2, 0xc0c0004
	v_lshl_or_b32 v35, v34, 16, v32
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v32, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v34, v2, 16, v33
	v_perm_b32 v2, v40, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v41, s50, v230
	v_add_nc_u32_e32 v40, s50, v191
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v41, v41
	ds_load_u8 v40, v40
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s50, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, s50, v1
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, s50, v32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v42
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	ds_load_u8 v32, v32
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v0, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:752 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v32, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v32, off, off offset:748 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v33, s50, v33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, s50, v32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	ds_load_u8 v32, v32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v32, v33, 0xc0c0004
	v_lshl_or_b32 v33, v0, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:668
	scratch_load_b32 v2, off, off offset:676
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v32, v32, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s50, v251
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[141:148], v[32:35], v[56:59], v[141:148] neg_lo:[1,1,0]
	ds_load_u8 v1, v1
	v_cvt_f32_i32_e32 v192, v141
	v_cvt_f32_i32_e32 v219, v142
	v_cvt_f32_i32_e32 v216, v143
	v_cvt_f32_i32_e32 v218, v144
	v_cvt_f32_i32_e32 v166, v145
	v_cvt_f32_i32_e32 v167, v146
	v_cvt_f32_i32_e32 v164, v147
	v_cvt_f32_i32_e32 v165, v148
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s50, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s50, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:680 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s50, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s50, v238
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v43, v1, 16, v0
	ds_load_u8 v2, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:624 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v40, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v40, s50, v229
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v40, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:632
	scratch_load_b32 v1, off, off offset:616
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s50, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s50, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s50, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:640 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s50, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:600 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v41, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:592 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v1, s50, v151
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s50, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s50, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:608 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s50, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:688 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v40, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:684
	scratch_load_b32 v1, off, off offset:672
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[141:148], v[40:43], v[52:55], v[97:104] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, s50, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s50, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s50, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:692 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s50, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:656 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v51, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:636 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s50, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v48, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v48, off, off offset:664 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s50, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v48, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:644
	scratch_load_b32 v1, off, off offset:628
	v_add_nc_u32_e32 v0, s50, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s50, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s50, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:648 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s50, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:612 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v49, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:604
	scratch_load_b32 v1, off, off offset:596
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, s50, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s50, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s50, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:620 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s50, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v1, 16, v0
	v_wmma_i32_16x16x16_iu8 v[141:148], v[48:51], v[24:27], v[141:148] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v174, v141
	v_cvt_f32_i32_e32 v177, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v171, v143
	v_cvt_f32_i32_e32 v173, v144
	v_cvt_f32_i32_e32 v168, v145
	v_cvt_f32_i32_e32 v169, v146
	v_cvt_f32_i32_e32 v161, v147
	v_cvt_f32_i32_e32 v162, v148
	v_wmma_i32_16x16x16_iu8 v[141:148], v[8:11], v[52:55], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[32:35], v[24:27], v[141:148] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v159, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v160, v142
	v_cvt_f32_i32_e32 v157, v143
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v158, v144
	v_cvt_f32_i32_e32 v139, v145
	v_cvt_f32_i32_e32 v156, v146
	v_cvt_f32_i32_e32 v110, v147
	v_cvt_f32_i32_e32 v118, v148
	v_wmma_i32_16x16x16_iu8 v[141:148], v[40:43], v[44:47], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[48:51], v[20:23], v[141:148] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v107, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v109, v142
	v_cvt_f32_i32_e32 v2, v143
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v105, v144
	v_cvt_f32_i32_e32 v0, v145
	v_cvt_f32_i32_e32 v1, v146
	v_cvt_f32_i32_e32 v94, v147
	v_cvt_f32_i32_e32 v95, v148
	v_wmma_i32_16x16x16_iu8 v[141:148], v[8:11], v[44:47], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[32:35], v[20:23], v[141:148] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v93, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v92, v142
	v_cvt_f32_i32_e32 v75, v143
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v74, v144
	v_cvt_f32_i32_e32 v73, v145
	v_cvt_f32_i32_e32 v72, v146
	v_cvt_f32_i32_e32 v71, v147
	v_cvt_f32_i32_e32 v70, v148
	v_wmma_i32_16x16x16_iu8 v[141:148], v[40:43], v[16:19], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[48:51], v[12:15], v[141:148] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v69, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v68, v142
	v_cvt_f32_i32_e32 v67, v143
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v66, v144
	v_cvt_f32_i32_e32 v65, v145
	v_cvt_f32_i32_e32 v129, v146
	v_cvt_f32_i32_e32 v128, v147
	v_cvt_f32_i32_e32 v64, v148
	v_wmma_i32_16x16x16_iu8 v[141:148], v[40:43], v[60:63], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[8:11], v[16:19], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[141:148], v[48:51], v[56:59], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[32:35], v[12:15], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v190, v143
	v_cvt_f32_i32_e32 v222, v144
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v34, v97
	v_mov_b32_e32 v97, v0
	v_cvt_f32_i32_e32 v33, v98
	v_mov_b32_e32 v98, v1
	v_cvt_f32_i32_e32 v11, v99
	v_mov_b32_e32 v99, v2
	v_cvt_f32_i32_e32 v32, v100
	v_mov_b32_e32 v100, v105
	v_cvt_f32_i32_e32 v10, v101
	v_mov_b32_e32 v101, v107
	v_cvt_f32_i32_e32 v9, v102
	v_mov_b32_e32 v102, v109
	v_cvt_f32_i32_e32 v0, v103
	v_cvt_f32_i32_e32 v8, v104
	v_cvt_f32_i32_e32 v220, v145
	v_cvt_f32_i32_e32 v84, v146
	v_cvt_f32_i32_e32 v221, v147
	v_cvt_f32_i32_e32 v3, v148
	v_cvt_f32_i32_e32 v1, v141
	v_cvt_f32_i32_e32 v2, v142
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v1, off offset:1148
	scratch_store_b32 off, v3, off offset:1072
	scratch_store_b32 off, v177, off offset:1068
	scratch_store_b32 off, v174, off offset:1064
	scratch_store_b32 off, v173, off offset:1060
	scratch_store_b32 off, v171, off offset:1056
	scratch_store_b32 off, v169, off offset:1052
	scratch_store_b32 off, v168, off offset:1048
	scratch_store_b32 off, v167, off offset:1044
	scratch_store_b32 off, v166, off offset:1040
	scratch_store_b32 off, v165, off offset:1036
	scratch_store_b32 off, v164, off offset:1032
	scratch_store_b32 off, v162, off offset:1028
	scratch_store_b32 off, v161, off offset:1024
	scratch_store_b32 off, v160, off offset:1020
	scratch_store_b32 off, v159, off offset:1016
	scratch_store_b32 off, v158, off offset:1012
	scratch_store_b32 off, v157, off offset:1008
	scratch_store_b32 off, v156, off offset:1004
	scratch_store_b32 off, v139, off offset:1000
	scratch_store_b32 off, v118, off offset:996
	scratch_store_b32 off, v110, off offset:992
	scratch_store_b32 off, v95, off offset:988
	scratch_store_b32 off, v94, off offset:984
	scratch_store_b32 off, v93, off offset:976
	scratch_store_b32 off, v92, off offset:972
	scratch_store_b32 off, v75, off offset:968
	scratch_store_b32 off, v74, off offset:964
	scratch_store_b32 off, v73, off offset:960
	scratch_store_b32 off, v72, off offset:956
	scratch_store_b32 off, v71, off offset:532
	scratch_store_b32 off, v70, off offset:528
	s_clause 0x1d                           ; 120-byte Folded Spill
	scratch_store_b32 off, v69, off offset:500
	scratch_store_b32 off, v68, off offset:496
	scratch_store_b32 off, v76, off offset:472
	scratch_store_b32 off, v67, off offset:468
	scratch_store_b32 off, v66, off offset:464
	scratch_store_b32 off, v65, off offset:460
	scratch_store_b32 off, v64, off offset:448
	scratch_store_b32 off, v79, off offset:396
	scratch_store_b32 off, v78, off offset:392
	scratch_store_b32 off, v34, off offset:356
	scratch_store_b32 off, v33, off offset:352
	scratch_store_b32 off, v32, off offset:348
	scratch_store_b32 off, v11, off offset:344
	scratch_store_b32 off, v77, off offset:56
	scratch_store_b32 off, v108, off offset:52
	scratch_store_b32 off, v176, off offset:44
	scratch_store_b32 off, v188, off offset:48
	scratch_store_b32 off, v155, off offset:36
	scratch_store_b32 off, v175, off offset:40
	scratch_store_b32 off, v153, off offset:28
	scratch_store_b32 off, v154, off offset:32
	scratch_store_b32 off, v106, off offset:12
	scratch_store_b32 off, v149, off offset:16
	scratch_store_b32 off, v150, off offset:20
	scratch_store_b32 off, v152, off offset:24
	scratch_store_b32 off, v122, off offset:180
	scratch_store_b32 off, v10, off offset:324
	scratch_store_b32 off, v9, off offset:320
	scratch_store_b32 off, v8, off offset:316
	scratch_store_b32 off, v0, off offset:312
	ds_load_b128 v[48:51], v88 offset:36864
	ds_load_b128 v[40:43], v88 offset:36880
	ds_load_b128 v[32:35], v88 offset:37376
	ds_load_b128 v[8:11], v88 offset:37392
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v175, 0
	v_mov_b32_e32 v75, 0
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v177, 0
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v67, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v64, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x14                           ; 84-byte Folded Reload
	scratch_load_b32 v67, off, off offset:784
	scratch_load_b32 v75, off, off offset:752
	scratch_load_b32 v95, off, off offset:720
	scratch_load_b32 v68, off, off offset:780
	scratch_load_b32 v76, off, off offset:748
	scratch_load_b32 v69, off, off offset:776
	scratch_load_b32 v77, off, off offset:744
	scratch_load_b32 v70, off, off offset:772
	scratch_load_b32 v78, off, off offset:740
	scratch_load_b32 v0, off, off offset:800
	scratch_load_b32 v71, off, off offset:768
	scratch_load_b32 v79, off, off offset:736
	scratch_load_b32 v64, off, off offset:796
	scratch_load_b32 v72, off, off offset:764
	scratch_load_b32 v92, off, off offset:732
	scratch_load_b32 v65, off, off offset:792
	scratch_load_b32 v73, off, off offset:760
	scratch_load_b32 v93, off, off offset:728
	scratch_load_b32 v66, off, off offset:788
	scratch_load_b32 v74, off, off offset:756
	scratch_load_b32 v94, off, off offset:724
	v_add_nc_u32_e32 v109, s49, v242
	v_add_nc_u32_e32 v122, s49, v228
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v108, off, off offset:640
	scratch_load_b32 v143, off, off offset:672
	scratch_load_b32 v144, off, off offset:664
	scratch_load_b32 v146, off, off offset:656
	scratch_load_b32 v148, off, off offset:648
	v_dual_mov_b32 v228, v123 :: v_dual_add_nc_u32 v123, s49, v239
	v_dual_mov_b32 v239, v236 :: v_dual_mov_b32 v236, v125
	v_mov_b32_e32 v134, v136
	v_mov_b32_e32 v136, v116
	v_mov_b32_e32 v116, v222
	v_dual_mov_b32 v222, v219 :: v_dual_mov_b32 v219, v97
	scratch_load_b32 v97, off, off offset:684 ; 4-byte Folded Reload
	v_dual_mov_b32 v1, v82 :: v_dual_mov_b32 v82, v80
	v_dual_mov_b32 v80, v117 :: v_dual_mov_b32 v117, v240
	v_mov_b32_e32 v240, v96
	scratch_load_b32 v96, off, off offset:688 ; 4-byte Folded Reload
	v_mov_b32_e32 v5, v83
	v_mov_b32_e32 v83, v81
	v_mov_b32_e32 v81, v138
	v_mov_b32_e32 v138, v190
	v_mov_b32_e32 v190, v192
	v_mov_b32_e32 v192, v98
	scratch_load_b32 v98, off, off offset:680 ; 4-byte Folded Reload
	v_mov_b32_e32 v188, v218
	v_mov_b32_e32 v218, v99
	scratch_load_b32 v99, off, off offset:676 ; 4-byte Folded Reload
	v_mov_b32_e32 v4, v114
	v_dual_mov_b32 v114, v111 :: v_dual_mov_b32 v111, v130
	v_dual_mov_b32 v130, v137 :: v_dual_mov_b32 v137, v84
	v_mov_b32_e32 v84, v220
	v_mov_b32_e32 v220, v216
	v_mov_b32_e32 v118, v129
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v145, off, off offset:660
	scratch_load_b32 v147, off, off offset:652
	scratch_load_b32 v149, off, off offset:644
	scratch_load_b32 v150, off, off offset:636
	v_add_nc_u32_e32 v110, s49, v241
	v_dual_mov_b32 v6, v87 :: v_dual_mov_b32 v155, v132
	v_mov_b32_e32 v87, v113
	v_mov_b32_e32 v113, v217
	v_mov_b32_e32 v217, v112
	scratch_load_b32 v132, off, off offset:624 ; 4-byte Folded Reload
	v_dual_mov_b32 v241, v170 :: v_dual_mov_b32 v170, v253
	v_dual_mov_b32 v253, v124 :: v_dual_add_nc_u32 v124, s49, v227
	v_mov_b32_e32 v3, v102
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v139, off, off offset:608
	scratch_load_b32 v141, off, off offset:592
	scratch_load_b32 v140, off, off offset:600
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v102, s49, v229
	v_dual_mov_b32 v229, v224 :: v_dual_mov_b32 v224, v126
	v_add_nc_u32_e32 v126, s49, v230
	v_mov_b32_e32 v230, v225
	v_dual_mov_b32 v242, v237 :: v_dual_mov_b32 v237, v234
	v_mov_b32_e32 v234, v232
	v_dual_mov_b32 v232, v172 :: v_dual_mov_b32 v225, v127
	v_add_nc_u32_e32 v127, s49, v238
	v_dual_mov_b32 v238, v235 :: v_dual_mov_b32 v235, v233
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v233, v235
	s_waitcnt vmcnt(37)
	v_add_nc_u32_e32 v67, s49, v67
	s_waitcnt vmcnt(36)
	v_add_nc_u32_e32 v75, s49, v75
	s_waitcnt vmcnt(35)
	v_add_nc_u32_e32 v103, s49, v95
	scratch_load_b32 v95, off, off offset:716 ; 4-byte Folded Reload
	s_waitcnt vmcnt(35)
	v_add_nc_u32_e32 v68, s49, v68
	s_waitcnt vmcnt(34)
	v_add_nc_u32_e32 v76, s49, v76
	s_waitcnt vmcnt(33)
	v_add_nc_u32_e32 v69, s49, v69
	s_waitcnt vmcnt(31)
	v_add_nc_u32_e32 v70, s49, v70
	s_waitcnt vmcnt(29)
	v_add_nc_u32_e32 v0, s49, v0
	s_waitcnt vmcnt(28)
	v_add_nc_u32_e32 v71, s49, v71
	s_waitcnt vmcnt(26)
	v_add_nc_u32_e32 v64, s49, v64
	s_waitcnt vmcnt(25)
	v_add_nc_u32_e32 v72, s49, v72
	s_waitcnt vmcnt(23)
	v_add_nc_u32_e32 v65, s49, v65
	s_waitcnt vmcnt(22)
	v_add_nc_u32_e32 v73, s49, v73
	s_waitcnt vmcnt(20)
	v_add_nc_u32_e32 v66, s49, v66
	s_waitcnt vmcnt(19)
	v_add_nc_u32_e32 v74, s49, v74
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v129, s49, v108
	v_mov_b32_e32 v108, v131
	scratch_load_b32 v131, off, off offset:632 ; 4-byte Folded Reload
	v_mov_b32_e32 v216, v100
	scratch_load_b32 v100, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v143, s49, v143
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v146, s49, v146
	v_add_nc_u32_e32 v144, s49, v144
	s_waitcnt vmcnt(15)
	v_dual_mov_b32 v235, v238 :: v_dual_add_nc_u32 v148, s49, v148
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v97, s49, v97
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v96, s49, v96
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v98, s49, v98
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v99, s49, v99
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v145, s49, v145
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v147, s49, v147
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v149, s49, v149
	v_add_nc_u32_e32 v142, s49, v151
	scratch_load_b32 v151, off, off offset:628 ; 4-byte Folded Reload
	v_mov_b32_e32 v160, v133
	scratch_load_b32 v133, off, off offset:616 ; 4-byte Folded Reload
	v_mov_b32_e32 v112, v189
	v_mov_b32_e32 v189, v101
	v_add_nc_u32_e32 v101, s49, v251
	v_dual_mov_b32 v251, v244 :: v_dual_mov_b32 v244, v243
	v_dual_mov_b32 v243, v128 :: v_dual_add_nc_u32 v128, s49, v191
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v132, s49, v132
	v_add_nc_u32_e32 v150, s49, v150
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v104, s49, v95
	scratch_load_b32 v95, off, off offset:712 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v77, s49, v77
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v131, s49, v131
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v100, s49, v100
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v100, v100
	ds_load_u8 v101, v101
	ds_load_u8 v98, v98
	ds_load_u8 v127, v127
	ds_load_u8 v128, v128
	ds_load_u8 v102, v102
	ds_load_u8 v126, v126
	ds_load_u8 v99, v99
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v99, off, off offset:620
	scratch_load_b32 v101, off, off offset:612
	scratch_load_b32 v152, off, off offset:604
	scratch_load_b32 v153, off, off offset:596
	v_add_nc_u32_e32 v141, s49, v141
	v_add_nc_u32_e32 v139, s49, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v159, v98, 16, v100
	v_perm_b32 v98, v128, v127, 0xc0c0004
	v_perm_b32 v100, v126, v102, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v151, s49, v151
	v_add_nc_u32_e32 v140, s49, v140
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v133, s49, v133
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v132, v132
	ds_load_u8 v133, v133
	ds_load_u8 v129, v129
	ds_load_u8 v141, v141
	ds_load_u8 v142, v142
	ds_load_u8 v139, v139
	ds_load_u8 v140, v140
	ds_load_u8 v131, v131
	v_lshl_or_b32 v158, v100, 16, v98
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v102, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v131, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v157, v126, 16, v102
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v105, s49, v95
	scratch_load_b32 v95, off, off offset:708 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v78, s49, v78
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v99, s49, v99
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v101, s49, v101
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v152, s49, v152
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v153, s49, v153
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v106, s49, v95
	scratch_load_b32 v95, off, off offset:704 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v79, s49, v79
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v107, s49, v95
	scratch_load_b32 v95, off, off offset:700 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v92, s49, v92
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v154, s49, v95
	scratch_load_b32 v95, off, off offset:696 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v93, s49, v93
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v125, s49, v95
	scratch_load_b32 v95, off, off offset:692 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v94, s49, v94
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v95, s49, v95
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v127, v97
	ds_load_u8 v128, v143
	ds_load_u8 v129, v95
	ds_load_u8 v131, v146
	ds_load_u8 v132, v147
	ds_load_u8 v133, v144
	ds_load_u8 v143, v145
	ds_load_u8 v144, v96
	ds_load_u8 v145, v150
	ds_load_u8 v146, v151
	ds_load_u8 v147, v148
	ds_load_u8 v148, v152
	ds_load_u8 v150, v153
	ds_load_u8 v151, v99
	ds_load_u8 v152, v101
	ds_load_u8 v149, v149
	v_perm_b32 v95, v142, v141, 0xc0c0004
	v_perm_b32 v96, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v126, v128, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v156, v96, 16, v95
	v_mov_b32_e32 v102, s11
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v128, v132, v131, 0xc0c0004
	v_dual_mov_b32 v101, s10 :: v_dual_mov_b32 v100, s9
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v127, v144, v129, 0xc0c0004
	v_mov_b32_e32 v99, s8
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v131, v146, v145, 0xc0c0004
	v_dual_mov_b32 v98, s7 :: v_dual_mov_b32 v97, s6
	v_dual_mov_b32 v96, s5 :: v_dual_mov_b32 v95, s4
	v_perm_b32 v129, v143, v133, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v149, v147, 0xc0c0004
	v_lshl_or_b32 v167, v127, 16, v126
	v_perm_b32 v126, v150, v148, 0xc0c0004
	v_perm_b32 v127, v152, v151, 0xc0c0004
	v_lshl_or_b32 v166, v129, 16, v128
	v_lshl_or_b32 v165, v132, 16, v131
	v_mov_b32_e32 v131, v108
	ds_load_u8 v93, v93
	ds_load_u8 v94, v94
	ds_load_u8 v79, v79
	ds_load_u8 v105, v105
	ds_load_u8 v106, v106
	ds_load_u8 v103, v103
	ds_load_u8 v104, v104
	ds_load_u8 v92, v92
	ds_load_u8 v109, v109
	ds_load_u8 v110, v110
	ds_load_u8 v107, v107
	ds_load_u8 v124, v124
	ds_load_u8 v125, v125
	ds_load_u8 v122, v122
	ds_load_u8 v123, v123
	ds_load_u8 v108, v154
	ds_load_u8 v65, v65
	ds_load_u8 v66, v66
	ds_load_u8 v0, v0
	ds_load_u8 v69, v69
	ds_load_u8 v70, v70
	ds_load_u8 v67, v67
	ds_load_u8 v68, v68
	ds_load_u8 v64, v64
	ds_load_u8 v73, v73
	ds_load_u8 v74, v74
	ds_load_u8 v71, v71
	ds_load_u8 v77, v77
	ds_load_u8 v78, v78
	ds_load_u8 v75, v75
	ds_load_u8 v76, v76
	ds_load_u8 v72, v72
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v79, v92, v79, 0xc0c0004
	v_perm_b32 v92, v106, v105, 0xc0c0004
	v_perm_b32 v94, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v103, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v104, v108, v107, 0xc0c0004
	v_perm_b32 v105, v125, v124, 0xc0c0004
	v_perm_b32 v106, v123, v122, 0xc0c0004
	v_lshl_or_b32 v164, v127, 16, v126
	v_wmma_i32_16x16x16_iu8 v[122:129], v[156:159], v[44:47], v[95:102] neg_lo:[1,1,0]
	v_lshl_or_b32 v174, v79, 16, v93
	v_lshl_or_b32 v173, v94, 16, v92
	v_lshl_or_b32 v172, v104, 16, v103
	v_lshl_or_b32 v171, v106, 16, v105
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v0, v64, v0, 0xc0c0004
	v_perm_b32 v64, v70, v69, 0xc0c0004
	v_perm_b32 v66, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v67, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v72, v71, 0xc0c0004
	v_perm_b32 v69, v78, v77, 0xc0c0004
	v_perm_b32 v70, v76, v75, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[122:129], v[164:167], v[20:23], v[122:129] neg_lo:[1,1,0]
	v_mov_b32_e32 v92, v178
	v_lshl_or_b32 v178, v0, 16, v65
	v_lshl_or_b32 v177, v66, 16, v64
	v_lshl_or_b32 v176, v68, 16, v67
	v_lshl_or_b32 v175, v70, 16, v69
	v_cvt_f32_i32_e32 v139, v127
	v_mov_b32_e32 v127, v225
	v_mov_b32_e32 v225, v230
	v_wmma_i32_16x16x16_iu8 v[64:71], v[171:174], v[44:47], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[72:79], v[156:159], v[16:19], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[156:159], v[60:63], v[95:102] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[175:178], v[20:23], v[64:71] neg_lo:[1,1,0]
	v_mov_b32_e32 v132, v155
	v_wmma_i32_16x16x16_iu8 v[148:155], v[171:174], v[60:63], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[72:79], v[164:167], v[12:15], v[72:79] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v71
	v_wmma_i32_16x16x16_iu8 v[103:110], v[156:159], v[52:55], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[164:167], v[56:59], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[175:178], v[56:59], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[171:174], v[52:55], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[171:174], v[16:19], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[164:167], v[24:27], v[103:110] neg_lo:[1,1,0]
	v_mov_b32_e32 v133, v160
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[56:63], v[175:178], v[24:27], v[56:63] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v140, v140
	v_wmma_i32_16x16x16_iu8 v[95:102], v[175:178], v[12:15], v[95:102] neg_lo:[1,1,0]
	v_mov_b32_e32 v178, v92
	v_cvt_f32_i32_e32 v94, v141
	v_cvt_f32_i32_e32 v176, v142
	v_cvt_f32_i32_e32 v93, v143
	v_cvt_f32_i32_e32 v174, v144
	v_cvt_f32_i32_e32 v175, v145
	v_cvt_f32_i32_e32 v177, v146
	v_cvt_f32_i32_e32 v173, v147
	v_cvt_f32_i32_e32 v169, v148
	v_cvt_f32_i32_e32 v171, v149
	v_cvt_f32_i32_e32 v167, v150
	v_cvt_f32_i32_e32 v168, v151
	v_cvt_f32_i32_e32 v165, v152
	v_cvt_f32_i32_e32 v166, v153
	v_cvt_f32_i32_e32 v162, v154
	v_cvt_f32_i32_e32 v164, v155
	v_cvt_f32_i32_e32 v160, v103
	v_cvt_f32_i32_e32 v161, v104
	v_cvt_f32_i32_e32 v158, v105
	v_cvt_f32_i32_e32 v159, v106
	v_cvt_f32_i32_e32 v156, v107
	v_cvt_f32_i32_e32 v157, v108
	v_cvt_f32_i32_e32 v154, v109
	v_cvt_f32_i32_e32 v155, v110
	v_cvt_f32_i32_e32 v143, v122
	v_cvt_f32_i32_e32 v144, v123
	v_mov_b32_e32 v123, v228
	v_cvt_f32_i32_e32 v141, v124
	v_mov_b32_e32 v124, v253
	v_mov_b32_e32 v172, v232
	v_mov_b32_e32 v232, v234
	v_dual_mov_b32 v234, v237 :: v_dual_mov_b32 v237, v242
	v_dual_mov_b32 v253, v170 :: v_dual_mov_b32 v170, v241
	v_cvt_f32_i32_e32 v142, v125
	v_dual_mov_b32 v125, v236 :: v_dual_mov_b32 v236, v239
	v_cvt_f32_i32_e32 v92, v126
	v_mov_b32_e32 v126, v224
	v_mov_b32_e32 v224, v229
	v_cvt_f32_i32_e32 v110, v128
	v_dual_mov_b32 v128, v243 :: v_dual_mov_b32 v243, v244
	v_mov_b32_e32 v244, v251
	v_cvt_f32_i32_e32 v105, v129
	v_mov_b32_e32 v129, v118
	v_cvt_f32_i32_e32 v118, v64
	v_cvt_f32_i32_e32 v109, v65
	v_cvt_f32_i32_e32 v106, v66
	v_cvt_f32_i32_e32 v107, v67
	v_cvt_f32_i32_e32 v103, v68
	v_cvt_f32_i32_e32 v104, v69
	v_cvt_f32_i32_e32 v108, v70
	v_cvt_f32_i32_e32 v122, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v74, v77
	v_cvt_f32_i32_e32 v71, v78
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v72
	v_cvt_f32_i32_e32 v152, v56
	v_cvt_f32_i32_e32 v153, v57
	v_cvt_f32_i32_e32 v149, v58
	v_cvt_f32_i32_e32 v150, v59
	v_cvt_f32_i32_e32 v147, v60
	v_cvt_f32_i32_e32 v148, v61
	v_cvt_f32_i32_e32 v145, v62
	v_cvt_f32_i32_e32 v146, v63
	v_cvt_f32_i32_e32 v72, v79
	v_cvt_f32_i32_e32 v69, v95
	v_cvt_f32_i32_e32 v70, v96
	v_mov_b32_e32 v96, v240
	v_dual_mov_b32 v240, v117 :: v_dual_mov_b32 v117, v80
	v_mov_b32_e32 v80, v82
	v_mov_b32_e32 v82, v1
	v_cvt_f32_i32_e32 v67, v97
	v_mov_b32_e32 v97, v219
	v_dual_mov_b32 v219, v222 :: v_dual_mov_b32 v222, v116
	v_mov_b32_e32 v116, v136
	v_mov_b32_e32 v136, v134
	v_cvt_f32_i32_e32 v68, v98
	v_mov_b32_e32 v98, v192
	v_mov_b32_e32 v192, v190
	v_mov_b32_e32 v190, v138
	v_dual_mov_b32 v138, v81 :: v_dual_mov_b32 v81, v83
	v_mov_b32_e32 v83, v5
	v_cvt_f32_i32_e32 v65, v99
	v_dual_mov_b32 v99, v218 :: v_dual_mov_b32 v218, v188
	v_cvt_f32_i32_e32 v66, v100
	v_mov_b32_e32 v100, v216
	v_mov_b32_e32 v216, v220
	v_mov_b32_e32 v220, v84
	v_dual_mov_b32 v84, v137 :: v_dual_mov_b32 v137, v130
	v_dual_mov_b32 v130, v111 :: v_dual_mov_b32 v111, v114
	v_mov_b32_e32 v114, v4
	v_cvt_f32_i32_e32 v64, v102
	v_mov_b32_e32 v102, v3
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v73
	v_cvt_f32_i32_e32 v73, v76
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v101
	v_mov_b32_e32 v101, v189
	v_dual_mov_b32 v189, v112 :: v_dual_mov_b32 v112, v217
	v_mov_b32_e32 v217, v113
	v_mov_b32_e32 v113, v87
	v_mov_b32_e32 v87, v6
.LBB0_16:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s35, 31
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v67, off offset:384
	scratch_store_b32 off, v66, off offset:372
	scratch_store_b32 off, v65, off offset:368
	scratch_store_b32 off, v64, off offset:364
	scratch_store_b32 off, v0, off offset:360
	s_lshr_b32 s1, s1, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s1, s35, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s1, 8
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s33, s33, s27
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s1, s34
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt lgkmcnt(4)
	v_add_lshl_u32 v12, v163, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v0, v170, s1, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v13, v131, s1, 1
	v_add_lshl_u32 v14, v132, s1, 1
	v_add_lshl_u32 v15, v133, s1, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v13, 0x80000000, v13
	v_dual_cndmask_b32 v14, 0x80000000, v14 :: v_dual_cndmask_b32 v15, 0x80000000, v15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v12, v12, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x3
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	buffer_load_u16 v64, v13, s[12:15], 0 offen
	buffer_load_u16 v151, v14, s[12:15], 0 offen
	buffer_load_u16 v95, v15, s[12:15], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v134, 16, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v228, 16, v151
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v86, v12 offset:36864
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v12, v135, s4, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v12
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[56:59], v88 offset:36864
	ds_load_b128 v[44:47], v88 offset:36880
	ds_load_b128 v[20:23], v88 offset:37376
	ds_load_b128 v[12:15], v88 offset:37392
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	scratch_load_b32 v1, off, off offset:1188 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_store_b32 v86, v16 offset:36864
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v86.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v135.l, v86.l
	v_mov_b16_e64 v229.l, v86.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v135.h, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:264
	scratch_load_b32 v1, off, off offset:1184
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v88 offset:36864
	ds_load_b128 v[52:55], v88 offset:36880
	v_mul_f32_e32 v16, v49, v135
	scratch_load_b128 v[4:7], off, off offset:1152 ; 16-byte Folded Reload
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v0, v61, v134
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v16, v16, v1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v17, v16, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v0, v0, v94, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v16, v0, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, null, v16, v16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v18, v17
	v_fma_f32 v19, -v17, v18, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v0, v16, v0
	v_mul_f32_e32 v24, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v17, v24, v19
	v_fmac_f32_e32 v24, v25, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v24, v19
	scratch_load_b32 v19, off, off offset:256 ; 4-byte Folded Reload
	v_div_fmas_f32 v17, v17, v18, v24
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v18, v48, v135
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v18, v18, v138, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v19, v18, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v19, v60, v134
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v19, v19, v140, v18
	v_mov_b32_e32 v140, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v19, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, null, v19, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v24
	v_fma_f32 v26, -v24, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v18, v19, v18
	v_mul_f32_e32 v27, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v24, v27, v26
	v_fmac_f32_e32 v27, v65, v25
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v24, -v24, v27, v26
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:260
	scratch_load_b32 v1, off, off offset:1180
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v24, v24, v25, v27
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v25, v51, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v132, v24, v19, v18
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v18, v41, v135
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v25, v25, v1, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v26, v25, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v26, v63, v134
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v26, v26, v93, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v26, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v26, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v27
	v_fma_f32 v66, -v27, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v25, v26, v25
	v_mul_f32_e32 v67, v66, v65
	v_div_fixup_f32 v131, v17, v16, v0
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:252
	scratch_load_b32 v1, off, off offset:1176
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v50, v135
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v27, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v65
	v_fma_f32 v27, -v27, v67, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v27, v27, v65, v67
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v1, v16
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:248
	scratch_load_b32 v1, off, off offset:1172
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v16, v0, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v62, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v176, v0
	v_mov_b32_e32 v176, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v16, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v0
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v17
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, null, v16, v16, v0
	v_rcp_f32_e32 v65, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v17, v65, 1.0
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v0, v16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v65
	v_fma_f32 v68, -v17, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v65
	v_fma_f32 v17, -v17, v67, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v17, v17, v65, v67
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v18, v18, v1, v19
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	scratch_load_b32 v1, off, off offset:1168 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v19, v18, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v19, v53, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v19, v19, v175, v18
	v_mov_b32_e32 v175, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v19, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v18
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v24
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v133, v27, v26, v25
	scratch_load_b32 v26, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v25, v40, v135
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, null, v19, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v24
	v_fma_f32 v66, -v24, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v18, v19, v18
	v_mul_f32_e32 v67, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v24, v67, v66
	v_fmac_f32_e32 v67, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v67, v66
	v_div_fmas_f32 v24, v24, v65, v67
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v25, v25, v87, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v26, v25, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v26, v52, v134
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v26, v26, v174, v25
	v_mov_b32_e32 v174, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v26, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v26, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v27
	v_fma_f32 v66, -v27, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v25, v26, v25
	v_mul_f32_e32 v67, v66, v65
	v_div_fixup_f32 v87, v17, v16, v0
	scratch_load_b32 v16, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v43, v135
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v27, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v65
	v_fma_f32 v27, -v27, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v27, v65, v67
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v83, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v83, v24, v19, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v16, v0, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v55, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v173, v0
	v_mov_b32_e32 v173, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v16, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v0
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v17
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v16, null, v65, v65, v0
	v_rcp_f32_e32 v17, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v16, v17, 1.0
	v_fmac_f32_e32 v17, v66, v17
	v_div_scale_f32 v66, vcc_lo, v0, v65, v0
	v_div_fixup_f32 v251, v27, v26, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v17
	v_fma_f32 v68, -v16, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v17
	v_fma_f32 v16, -v16, v67, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v66, v16, v17, v67
	scratch_load_b32 v17, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v42, v135
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v163, v66, v65, v0
	scratch_load_b32 v65, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v32, v135
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v16, v16, v250, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v17, v16, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v17, v54, v134
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v17, v17, v177, v16
	v_mov_b32_e32 v177, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v16, v17, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v68, 1.0, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v16, null, v68, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v16
	v_fma_f32 v18, -v16, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v67, v68, v67
	v_mul_f32_e32 v19, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v16, v19, v18
	v_fmac_f32_e32 v19, v24, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v19, v18
	v_div_fmas_f32 v69, v16, v17, v19
	scratch_load_b32 v17, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v33, v135
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, v16, v249, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v17, v16, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_load_b128 v[24:27], v88 offset:37376
	ds_load_b128 v[16:19], v88 offset:37392
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v71, v25, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v71, v71, v171, v70
	v_mov_b32_e32 v171, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v70, v71, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v71, 0xbfb8aa3b, v70
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v170, v69, v68, v67
	scratch_load_b32 v68, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v67, v35, v135
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v0, v0, v248, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v65, v0, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v24, v134
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v71, v71
	v_ldexp_f32 v71, v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v71, 1.0, v71
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v71, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v73, v72
	v_fma_f32 v74, -v72, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v70, v71, v70
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v67, v67, v247, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v68, v67, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v68, v27, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v68, v68, v168, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v67, v68, s3
	v_mov_b32_e32 v191, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v75, v74, v73 :: v_dual_mul_f32 v68, 0xbfb8aa3b, v67
	v_fma_f32 v76, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v73
	v_fma_f32 v72, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v72, v72, v73, v75
	v_div_fixup_f32 v88, v72, v71, v70
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v70, v34, v135
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v169, v0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v71, v26, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v70, v70, v89, v244
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v65, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v70, v244, v70, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v244, 16, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v71, v71, v167, v70
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v64, v61, v244
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v70, v71, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v71, 0xbfb8aa3b, v70
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v65, v65, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v73, v66
	v_fma_f32 v74, -v66, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v0, v65, v0
	v_mul_f32_e32 v75, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v66, v75, v74
	v_fmac_f32_e32 v75, v76, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v75, v74
	v_div_fmas_f32 v66, v66, v73, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v89, v66, v65, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v9, v135
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v65, v17, v134 :: v_dual_fmac_f32 v68, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v0, v0, v91, v137
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v137, v0, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v166, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v68, v68, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v65, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v68, v68, v67
	v_rcp_f32_e32 v73, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v69, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v67, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v73
	v_fma_f32 v76, -v69, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v73
	v_fma_f32 v69, -v69, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v69, v69, v73, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v71, v71
	v_ldexp_f32 v71, v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v71, 1.0, v71
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v71, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v73, v72
	v_fma_f32 v74, -v72, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v70, v71, v70
	v_mul_f32_e32 v75, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v72, v75, v74
	v_fmac_f32_e32 v75, v76, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v72, v75, v74
	v_div_fmas_f32 v72, v72, v73, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v0
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v65, v65, v0
	v_rcp_f32_e32 v73, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v66, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v0, v65, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v73
	v_fma_f32 v76, -v66, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v73
	v_fma_f32 v66, -v66, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v73, v66, v73, v75
	v_div_fixup_f32 v66, v69, v68, v67
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v67, v8, v135
	v_mul_f32_e32 v68, v16, v134
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v67, v67, v90, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v121, v67, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v68, v68, v165, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v67, v68, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v68, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v68, v68
	v_ldexp_f32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v68, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v74, v69
	v_fma_f32 v75, -v69, v74, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v67, v68, v67
	v_mul_f32_e32 v76, v75, v74
	v_div_fixup_f32 v90, v72, v71, v70
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v70, v11, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v77, -v69, v76, v75
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v70, v70, v85, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v85, v73, v65, v0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v10, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v76, v77, v74
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v120, v70, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v0, v0, v245, v119
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v245.h, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v1, off, off offset:1128 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v69, v76, v75
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v245.l, v86.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v71, v19, v134
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v119, v0, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v18, v134
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v69, v69, v74, v76
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v3, v61, v228
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v71, v71, v164, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v65, v65, v162, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v91, v69, v68, v67
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v67, v49, v245
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v70, v71, s3
	v_cndmask_b32_e64 v0, v0, v65, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v71, 0xbfb8aa3b, v70
	v_mul_f32_e32 v65, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v71, v71
	v_ldexp_f32 v71, v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v71, 1.0, v71
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v71, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v74, v72
	v_fma_f32 v75, -v72, v74, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v70, v71, v70
	v_mul_f32_e32 v76, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v72, v76, v75
	v_fmac_f32_e32 v76, v77, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v72, v76, v75
	v_div_fmas_f32 v72, v72, v74, v76
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v0
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v73
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, null, v65, v65, v0
	v_rcp_f32_e32 v74, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v73, v74, 1.0
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v0, v65, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v75, v74
	v_fma_f32 v77, -v73, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v74
	v_fma_f32 v73, -v73, v76, v75
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v73, v73, v74, v76
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v67, v67, v1, v255
	scratch_load_b32 v1, off, off offset:1124 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v255, v67, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v255, v72, v71, v70
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v70, v60, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v64, v64, v161, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v67, v64, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v67, 0xbfb8aa3b, v64
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v64
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v68
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, null, v67, v67, v64
	v_rcp_f32_e32 v69, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v74, v69
	v_div_scale_f32 v74, vcc_lo, v64, v67, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v69
	v_fma_f32 v76, -v68, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v69
	v_fma_f32 v68, -v68, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v68, v68, v69, v75
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v48, v245
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v242, v68, v67, v64
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v64, v50, v245
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, v69, v1, v243
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v243, v69, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v243, v73, v65, v0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:220
	scratch_load_b32 v1, off, off offset:1120
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v51, v245
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v70, v70, v160, v69
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
	v_fma_f32 v74, -v71, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v74, v72
	v_div_scale_f32 v74, vcc_lo, v69, v70, v69
	v_mul_f32_e32 v75, v74, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v71, v75, v74
	v_fmac_f32_e32 v75, v76, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v75, v74
	v_div_fmas_f32 v71, v71, v72, v75
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v138, v71, v70, v69
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v41, v245
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v1, v65
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:216
	scratch_load_b32 v1, off, off offset:1116
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v65, v0, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v63, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v159, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v65, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v0
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v72
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v65, v65, v0
	v_rcp_f32_e32 v73, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v72, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v0, v65, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v73
	v_fma_f32 v76, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v73
	v_fma_f32 v72, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v72, v72, v73, v75
	v_div_fixup_f32 v137, v72, v65, v0
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v40, v245
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v64, v64, v1, v67
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:212
	scratch_load_b32 v1, off, off offset:1112
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v67, v64, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v67, v62, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v67, v67, v158, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v64, v67, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v67, 0xbfb8aa3b, v64
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v64
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v68
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, null, v67, v67, v64
	v_rcp_f32_e32 v73, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v68, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v64, v67, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v73
	v_fma_f32 v76, -v68, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v73
	v_fma_f32 v68, -v68, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v68, v68, v73, v75
	v_div_fixup_f32 v239, v68, v67, v64
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v64, v43, v245
	v_mul_f32_e32 v67, v55, v244
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v69, v69, v1, v70
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:208
	scratch_load_b32 v1, off, off offset:1104
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v70, v69, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v70, v53, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v70, v70, v157, v69
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
	v_rcp_f32_e32 v73, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v71, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v69, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v73
	v_fma_f32 v76, -v71, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v73
	v_fma_f32 v71, -v71, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v71, v71, v73, v75
	v_div_fixup_f32 v238, v71, v70, v69
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v42, v245
	v_mul_f32_e32 v70, v54, v244
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v1, v65
	scratch_load_b32 v1, off, off offset:1100 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v65, v0, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v52, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v156, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v65, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v0
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v72
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v65, v65, v0
	v_rcp_f32_e32 v73, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v72, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v0, v65, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v73
	v_fma_f32 v76, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v73
	v_fma_f32 v72, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v72, v72, v73, v75
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v64, v64, v1, v237
	scratch_load_b32 v1, off, off offset:1096 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v237, v64, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v237, v72, v65, v0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v33, v245
	v_mul_f32_e32 v65, v25, v244
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v67, v67, v155, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v64, v67, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v67, 0xbfb8aa3b, v64
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v64
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v68
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, null, v67, v67, v64
	v_rcp_f32_e32 v73, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v68, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v64, v67, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v73
	v_fma_f32 v76, -v68, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v73
	v_fma_f32 v68, -v68, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v68, v68, v73, v75
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v69, v69, v1, v240
	scratch_load_b32 v1, off, off offset:1092 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v240, v69, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v70, v70, v154, v69
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
	v_rcp_f32_e32 v73, v71
	v_fma_f32 v74, -v71, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v69, v70, v69
	v_mul_f32_e32 v75, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v71, v75, v74
	v_fmac_f32_e32 v75, v76, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v75, v74
	v_div_fmas_f32 v71, v71, v73, v75
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v1, v236
	scratch_load_b32 v1, off, off offset:1088 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v236, v0, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v236, v68, v67, v64
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v64, v32, v245
	v_mul_f32_e32 v67, v24, v244
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v153, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v65, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v0
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v72
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v65, v65, v0
	v_rcp_f32_e32 v73, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v72, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v0, v65, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v73
	v_fma_f32 v76, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v73
	v_fma_f32 v72, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v72, v72, v73, v75
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v64, v64, v1, v235
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v1, off, off offset:1148 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v235, v64, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v235, v71, v70, v69
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v35, v245
	v_mul_f32_e32 v70, v27, v244
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v67, v67, v152, v64
	v_fma_f32 v69, v69, v252, v234
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v64, v67, s3
	v_cndmask_b32_e64 v69, v234, v69, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v234, v72, v65, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v0, v34, v245 :: v_dual_mul_f32 v67, 0xbfb8aa3b, v64
	v_mul_f32_e32 v65, v26, v244
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v70, v70, v150, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, v0, v187, v233
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v70, s3
	v_cndmask_b32_e64 v0, v233, v0, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v70, 0xbfb8aa3b, v69
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v149, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v65, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v67, v67
	v_mul_f32_e32 v65, 0xbfb8aa3b, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v68
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, null, v67, v67, v64
	v_rcp_f32_e32 v73, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v68, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v64, v67, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v73
	v_fma_f32 v76, -v68, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v73
	v_fma_f32 v68, -v68, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v68, v68, v73, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v240, v68, v67, v64
	scratch_load_b32 v67, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v64, v9, v245
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v69
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v70, v70, v71
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v70, 1.0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v70, v70, v69
	v_rcp_f32_e32 v73, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v71, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v69, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v73
	v_fma_f32 v76, -v71, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v73
	v_fma_f32 v71, -v71, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v71, v71, v73, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v233, v71, v70, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v0
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v72
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v65, v65, v0
	v_rcp_f32_e32 v73, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v72, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v0, v65, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v73
	v_fma_f32 v76, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v73
	v_fma_f32 v72, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v72, v72, v73, v75
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v64, v64, v82, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v67, v64, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v67, v17, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v67, v67, v148, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v64, v67, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v67, 0xbfb8aa3b, v64
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v64
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v68
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, null, v67, v67, v64
	v_rcp_f32_e32 v69, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v64, v67, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v73, -v68, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v73, v69
	v_fma_f32 v68, -v68, v71, v70
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v70, v16, v244
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v68, v68, v69, v71
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v8, v245
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v69, v69, v81, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v189, v69, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v70, v70, v147, v69
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
	v_rcp_f32_e32 v73, v71
	v_fma_f32 v74, -v71, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v69, v70, v69
	v_mul_f32_e32 v75, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v71, v75, v74
	v_fmac_f32_e32 v75, v76, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v71, v75, v74
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v74, v19, v244
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v71, v71, v73, v75
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v73, v11, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v241, v71, v70, v69
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v73, v73, v80, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v232, v73, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v232, v68, v67, v64
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v74, v74, v146, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v73, v74, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v74, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v74
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v74, v74
	v_ldexp_f32 v74, v74, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v74, 1.0, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v75, null, v74, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v75
	v_fma_f32 v77, -v75, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v73, v74, v73
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v75, v78, v77
	v_fmac_f32_e32 v78, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v75, -v75, v78, v77
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v77, v18, v244
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v75, v75, v76, v78
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v76, v10, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v230, v75, v74, v73
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v76, v76, v117, v231
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v117, v72, v65, v0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	scratch_load_b32 v0, off, off offset:1108 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v231, v76, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v77, v77, v145, v76
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v78, v78, v79, v81
	v_div_fixup_f32 v231, v78, v77, v76
	.loc	1 364 22 is_stmt 1              ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v229.h, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v49, v229
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v0, v0, v136, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v172, v0, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v3, v3, v144, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v3, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v3, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v3, v3
	v_ldexp_f32 v3, v3, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v3, v3, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v64
	v_fma_f32 v67, -v64, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v67, v65
	v_div_scale_f32 v67, vcc_lo, v0, v3, v0
	v_mul_f32_e32 v68, v67, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v64, v68, v67
	v_fmac_f32_e32 v68, v69, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v64, -v64, v68, v67
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v67, v60, v228
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v64, v64, v65, v68
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v48, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v227, v64, v3, v0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v116, v226
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v40, v229
	v_mul_f32_e32 v3, v52, v228
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v226, v65, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v0, v0, v112, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v67, v67, v143, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v223, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v65, v65, v67, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v3, v3, v92, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v67, 0xbfb8aa3b, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v223, v0, v3, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_mul_f32_e32 v0, 0xbfb8aa3b, v223
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v65
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v68
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, null, v67, v67, v65
	v_rcp_f32_e32 v69, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v65, v67, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v68, -v68, v71, v70
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v70, v63, v228
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v68, v68, v69, v71
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v51, v229
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v69, v69, v114, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v225, v69, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v70, v70, v142, v69
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
	v_fma_f32 v75, -v71, v74, v73
	v_fmac_f32_e32 v74, v75, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v71, v74, v73
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v73, v62, v228
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v71, v71, v72, v74
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v72, v50, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v72, v72, v113, v224
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v224, v72, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v73, v73, v141, v72
	scratch_load_b128 v[141:144], off, off offset:1132 ; 16-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v72, v73, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
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
	v_rcp_f32_e32 v75, v74
	v_fma_f32 v76, -v74, v75, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v75
	v_div_scale_f32 v76, vcc_lo, v72, v73, v72
	v_mul_f32_e32 v77, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v74, v77, v76
	v_fmac_f32_e32 v77, v78, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v74, -v74, v77, v76
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v76, v53, v228
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v74, v74, v75, v77
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v75, v41, v229
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v75, v75, v111, v123
	v_mov_b32_e32 v111, v122
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v122, v71, v70, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.h, v86.l
	v_mov_b16_e32 v70.h, v86.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v123, v75, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v123, v68, v67, v65
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v45, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v76, v76, v139, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v75, v76, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v76, 0xbfb8aa3b, v75
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v76
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v75
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v76, v76, v77
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v76, 1.0, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v77, null, v76, v76, v75
	v_rcp_f32_e32 v78, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v77, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v75, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v80, v79, v78
	v_fma_f32 v81, -v77, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v78
	v_fma_f32 v77, -v77, v80, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v77, v77, v78, v80
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v224, v77, v76, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v223
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v116, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v0, null, v116, v116, v223
	v_rcp_f32_e32 v3, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v0, v3, 1.0
	v_fmac_f32_e32 v3, v64, v3
	v_div_scale_f32 v64, vcc_lo, v223, v116, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v64, v3
	v_fma_f32 v67, -v0, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v67, v3
	v_fma_f32 v0, -v0, v65, v64
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v64, off, off offset:4
	scratch_load_b32 v67, off, off offset:1076
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v225, v0, v3, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:8
	scratch_load_b32 v3, off, off offset:1084
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v0, v37, v135
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, v0, v3, v65
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v36, v135
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v65, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v3, v67, v64
	scratch_load_b32 v67, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v64, v3, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v57, v134
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v64, v2, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v56, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v2, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v64, v1, v3
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:56
	scratch_load_b32 v64, off, off offset:1080
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v131
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v1, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v1, v39, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v64, v1, v64, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v1, v38, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v64, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v1, v130, v67
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	scratch_load_b32 v1, off, off offset:980 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v58, v134
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v86.h, v1.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v3, v132
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v67, v65, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v59, v134
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v0.h
	v_mov_b16_e32 v67.h, v86.l
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v190, v3
	v_fma_f32 v65, v65, v222, v2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v51, v51, v86
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v67, 1, v67
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v49, v49, v86
	v_mul_f32_e32 v41, v41, v86
	v_mul_f32_e32 v48, v48, v86
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v51, v51, v125, v211
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v67, v0, v67, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v2, v65, s3
	v_cndmask_b32_e64 v2, v3, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v222, off, off offset:48
	scratch_load_b32 v64, off, off offset:908
	scratch_load_b32 v190, off, off offset:44
	scratch_load_b32 v65, off, off offset:912
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e32 v3.h, v86.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v133
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v211, v51, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v50, v50, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v40, v40, v86 :: v_dual_and_b32 v3, 1, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v50, v50, v124, v210
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v2, v87
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v28, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v210, v50, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s5, v1, v1
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v1, v69, 0x7fff
	v_cndmask_b16 v131.l, 0x7fff, v69.h, s5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v23, v134
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v2, v2, v64, v222
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v29, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v222, v2, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v64, v64, v65, v190
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v65.l, v0.h
	v_mov_b16_e32 v65.h, v86.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v65, v0, v65, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v190, v64, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v44, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v131.h, 0x7fff, v65.h, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v68, v84, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v64, v64, v220, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v220, off, off offset:36
	scratch_load_b32 v65, off, off offset:904
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v0, v68, s3
	v_cndmask_b32_e64 v2, v2, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v188, off, off offset:40
	scratch_load_b32 v64, off, off offset:900
	scratch_load_b32 v68, off, off offset:1072
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v30, v135
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v83
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v0.h, 0x7fff, v67.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v2, v2, v251 :: v_dual_mul_f32 v67, v47, v134
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v83, 16, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s1, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v60, v60, v83
	v_mul_f32_e32 v63, v63, v83
	v_mul_f32_e32 v62, v62, v83
	v_mul_f32_e32 v52, v52, v83
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v63, v63, v191, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v51, v63, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v3, v64, v188
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v31, v135
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v188, v3, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v65, v220
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v65.l, v1.h
	v_mov_b16_e32 v65.h, v86.l
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v1, v65, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v220, v64, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v46, v134
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v132.h, 0x7fff, v65.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v67, v67, v68, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v2.h
	v_mov_b16_e32 v68.h, v86.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v221, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v20, v134
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v67, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v189, off, off offset:28
	scratch_load_b32 v67, off, off offset:888
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v1, v1, v163 :: v_dual_and_b32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v68, v2, v68, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v3, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v221, off, off offset:32
	scratch_load_b32 v64, off, off offset:884
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v4, v135
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v1.h
	v_cndmask_b16 v132.l, 0x7fff, v68.h, s1
	v_mov_b16_e32 v68.h, v86.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v68, 1, v68
	v_cmp_o_f32_e64 s1, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v68, v1, v68, 0x7fff
	v_cndmask_b16 v133.h, 0x7fff, v68.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v68, off, off offset:1064 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v3, v64, v221
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v5, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v221, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v67, v189
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v21, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v65, v192, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v189, v64, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v3, v3, v65, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v67, v219, v64
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v192, off, off offset:16
	scratch_load_b32 v65, off, off offset:868
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v64, v67, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v219, off, off offset:12
	scratch_load_b32 v67, off, off offset:872
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v2.h
	v_mov_b16_e32 v64.h, v86.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v64, 1, v64
	v_cmp_o_f32_e64 s4, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v64, v2, v64, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v2, v3, v89 :: v_dual_mul_f32 v3, v6, v135
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v133.l, 0x7fff, v64.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v70.l, v2.h
	v_cmp_o_f32_e64 s5, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v70, v2, v70, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b16 v163.l, 0x7fff, v70.h, s5
	v_mov_b16_e32 v70.h, v86.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v3, v3, v65, v192
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v7, v135
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v192, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v65, v65, v67, v219
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v1.h
	v_mov_b16_e32 v67.h, v86.l
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v67, v1, v67, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v219, v65, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v22, v134
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v163.h, 0x7fff, v67.h, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v69, v69, v218, v1
	v_fma_f32 v65, v65, v216, v3
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v216, off, off offset:24
	scratch_load_b32 v64, off, off offset:852
	scratch_load_b32 v67, off, off offset:1044
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v69, s3
	v_cndmask_b32_e64 v2, v3, v65, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v218, off, off offset:20
	scratch_load_b32 v65, off, off offset:856
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v141, v135
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v69, off, off offset:1068 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v66
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v66, off, off offset:1040 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v90
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(5)
	v_fma_f32 v3, v3, v64, v216
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v142, v135
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v216, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v64, v64, v65, v218
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v65.l, v1.h
	v_mov_b16_e32 v65.h, v86.l
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v1, v65, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v218, v64, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v12, v134
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v170.h, 0x7fff, v65.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v14, v134
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v64, v64, v66, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v13, v134
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v66, v67, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v2.h
	v_mov_b16_e32 v67.h, v86.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v66, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v190, off, off offset:340
	scratch_load_b32 v66, off, off offset:584
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v67, 1, v67
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v85
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v67, v2, v67, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v3, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v220, off, off offset:192
	scratch_load_b32 v64, off, off offset:580
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v143, v135
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cndmask_b16 v170.l, 0x7fff, v67.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v67, off, off offset:1036 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v3, v64, v220
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v144, v135
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v220, v3, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v66, v190
	scratch_load_b32 v66, off, off offset:1032 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v190, v64, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v65, v65, v66, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v15, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v65, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v66, v67, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v1.h
	v_mov_b16_e32 v67.h, v86.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v188, off, off offset:184
	scratch_load_b32 v65, off, off offset:892
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v67, v1, v67, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v64, v66, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v189, off, off offset:188
	scratch_load_b32 v66, off, off offset:896
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v2.h
	v_mov_b16_e32 v64.h, v86.l
	v_cndmask_b16 v87.h, 0x7fff, v67.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v255
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v67, off, off offset:1060 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v64, 1, v64
	v_cmp_o_f32_e64 s4, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v64, v2, v64, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v2, v3, v243 :: v_dual_mul_f32 v3, v36, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v87.l, 0x7fff, v64.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v221, off, off offset:336
	scratch_load_b32 v64, off, off offset:876
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(5)
	v_fma_f32 v3, v3, v65, v188
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v37, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v188, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v65, v65, v66, v189
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v1.h
	v_mov_b16_e32 v66.h, v86.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v66, v1, v66, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v189, v65, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v56, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v88.h, 0x7fff, v66.h, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v66, off, off offset:1056 ; 4-byte Folded Reload
	v_fma_f32 v65, v65, v68, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v57, v244
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v68, v69, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v2.h
	v_mov_b16_e32 v69.h, v86.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v68, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v68, off, off offset:1024 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v69, 1, v69
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v242
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v69, v2, v69, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v3, v65, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v187, off, off offset:180
	scratch_load_b32 v65, off, off offset:880
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v38, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cndmask_b16 v88.l, 0x7fff, v69.h, s5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v138
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v3, v3, v64, v221
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v39, v245
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v221, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v64, v64, v65, v187
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v65.l, v1.h
	v_mov_b16_e32 v65.h, v86.l
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v1, v65, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v187, v64, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v58, v244
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v91.h, 0x7fff, v65.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v44, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v66, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v59, v244
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v66, v67, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v2.h
	v_mov_b16_e32 v67.h, v86.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v66, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v219, off, off offset:332
	scratch_load_b32 v66, off, off offset:864
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v67, 1, v67
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v137
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v67, v2, v67, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v3, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v192, off, off offset:328
	scratch_load_b32 v64, off, off offset:860
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v28, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cndmask_b16 v91.l, 0x7fff, v67.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:1052
	scratch_load_b32 v69, off, off offset:1028
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v3, v3, v64, v192
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v29, v245
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v192, v3, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v66, v219
	scratch_load_b32 v66, off, off offset:1048 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v219, v64, s2
	scratch_load_b32 v219, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v65, v65, v66, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v45, v244
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v65, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v66, v67, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v1.h
	v_mov_b16_e32 v67.h, v86.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v220, off, off offset:172
	scratch_load_b32 v65, off, off offset:588
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v67, v1, v67, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v64, v66, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v190, off, off offset:176
	scratch_load_b32 v66, off, off offset:848
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v2.h
	v_mov_b16_e32 v64.h, v86.l
	v_cndmask_b16 v89.h, 0x7fff, v67.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v238
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v67, off, off offset:1020 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v64, 1, v64
	v_cmp_o_f32_e64 s4, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v64, v2, v64, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v3, v237
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v30, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v89.l, 0x7fff, v64.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v189, off, off offset:164
	scratch_load_b32 v64, off, off offset:572
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(5)
	v_fma_f32 v3, v3, v65, v220
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v31, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v220, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v65, v65, v66, v190
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v1.h
	v_mov_b16_e32 v66.h, v86.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v66, v1, v66, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v190, v65, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v46, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v90.h, 0x7fff, v66.h, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v66, off, off offset:1016 ; 4-byte Folded Reload
	v_fma_f32 v65, v65, v68, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v47, v244
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v68, v69, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v2.h
	v_mov_b16_e32 v69.h, v86.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v68, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v68, off, off offset:1000 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v69, 1, v69
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v236
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v69, v2, v69, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v3, v65, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v188, off, off offset:168
	scratch_load_b32 v65, off, off offset:576
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v4, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cndmask_b16 v90.l, 0x7fff, v69.h, s5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v235
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v3, v3, v64, v189
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v5, v245
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v189, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v64, v64, v65, v188
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v65.l, v1.h
	v_mov_b16_e32 v65.h, v86.l
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v1, v65, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v188, v64, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v20, v244
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v82.h, 0x7fff, v65.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v22, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v66, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v21, v244
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v66, v67, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v2.h
	v_mov_b16_e32 v67.h, v86.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v66, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v221, off, off offset:160
	scratch_load_b32 v66, off, off offset:568
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v67, 1, v67
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v234
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v67, v2, v67, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v3, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v187, off, off offset:156
	scratch_load_b32 v64, off, off offset:564
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v6, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cndmask_b16 v82.l, 0x7fff, v67.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:1012
	scratch_load_b32 v69, off, off offset:1004
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v3, v3, v64, v187
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v7, v245
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v187, v3, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v66, v221
	scratch_load_b32 v66, off, off offset:1008 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v221, v64, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v65, v65, v66, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v23, v244
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v65, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v66, v67, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v1.h
	v_mov_b16_e32 v67.h, v86.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v142, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v67, v1, v67, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v64, v66, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v192, off, off offset:152
	scratch_load_b32 v66, off, off offset:560
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v2.h
	v_mov_b16_e32 v64.h, v86.l
	v_cndmask_b16 v80.h, 0x7fff, v67.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v233
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:996
	scratch_load_b32 v63, off, off offset:500
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v64, 1, v64
	v_cmp_o_f32_e64 s4, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v64, v2, v64, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v3, v117
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v141, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v80.l, 0x7fff, v64.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v190, off, off offset:140
	scratch_load_b32 v64, off, off offset:552
	v_fma_f32 v3, v3, v96, v219
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v219, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v65, v65, v66, v192
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v1.h
	v_mov_b16_e32 v66.h, v86.l
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v66, v1, v66, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v192, v65, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v12, v244
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v81.h, 0x7fff, v66.h, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v66, off, off offset:992 ; 4-byte Folded Reload
	v_fma_f32 v65, v65, v68, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v13, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v68, v69, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v2.h
	v_mov_b16_e32 v69.h, v86.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v68, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v68, v58, v228 :: v_dual_and_b32 v69, 1, v69
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v232
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v69, v2, v69, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v3, v65, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v220, off, off offset:144
	scratch_load_b32 v65, off, off offset:556
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v143, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cndmask_b16 v81.l, 0x7fff, v69.h, s5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v241
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	scratch_load_b32 v69, off, off offset:804 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v3, v3, v64, v190
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v144, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v190, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v64, v64, v65, v220
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v65.l, v1.h
	v_mov_b16_e32 v65.h, v86.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v65, v1, v65, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v220, v64, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v14, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v76.h, 0x7fff, v65.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v56, v228
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v66, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v15, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v66, v67, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v2.h
	v_mov_b16_e32 v67.h, v86.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v66, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v189, off, off offset:136
	scratch_load_b32 v66, off, off offset:548
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v67, 1, v67
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v230
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v67, v2, v67, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v3, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v188, off, off offset:132
	scratch_load_b32 v64, off, off offset:544
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v36, v229
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v1.h
	v_cndmask_b16 v76.l, 0x7fff, v67.h, s1
	v_mov_b16_e32 v67.h, v86.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v231
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v36, v36, v86 :: v_dual_and_b32 v67, 1, v67
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v1, v67, 0x7fff
	v_cndmask_b16 v77.h, 0x7fff, v67.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v190, off, off offset:108
	scratch_load_b32 v67, off, off offset:948
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v3, v3, v64, v188
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v37, v229
	v_mul_f32_e32 v37, v37, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v188, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v66, v189
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v57, v228
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v65, v101, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v189, v64, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v3, v3, v65, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v66, v102, v64
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v221, off, off offset:124
	scratch_load_b32 v65, off, off offset:536
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v64, v66, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v187, off, off offset:128
	scratch_load_b32 v66, off, off offset:540
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v2.h
	v_mov_b16_e32 v64.h, v86.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v1, v1, v227 :: v_dual_and_b32 v64, 1, v64
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v226, v74, v73, v72
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v64, v2, v64, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v2, v3, v123 :: v_dual_mul_f32 v3, v38, v229
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v38, v38, v86
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v77.l, 0x7fff, v64.h, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_o_f32_e64 s5, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v192, off, off offset:112
	scratch_load_b32 v64, off, off offset:520
	s_waitcnt vmcnt(4)
	v_fma_f32 v3, v3, v65, v221
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v39, v229
	v_mul_f32_e32 v39, v39, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v221, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v65, v65, v66, v187
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v1.h
	v_mov_b16_e32 v66.h, v86.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v221, off, off offset:92
	scratch_load_b32 v84, off, off offset:940
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v68, v99, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v66, v1, v66, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v187, v65, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v59, v228
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v187, off, off offset:96
	scratch_load_b32 v75, off, off offset:944
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v78.h, 0x7fff, v66.h, s4
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v220, off, off offset:120
	scratch_load_b32 v66, off, off offset:952
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v65, v100, v1
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v100, v24, v228
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v65, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v65.l, v2.h
	v_mov_b16_e32 v65.h, v86.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v65, 1, v65
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v65, v2, v65, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v3, v68, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e32 v3.h, v86.l
	v_cndmask_b16 v78.l, 0x7fff, v65.h, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v219, off, off offset:116
	scratch_load_b32 v65, off, off offset:524
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v2, v2, v226 :: v_dual_and_b32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.l, v2.h
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v1, v28, v229
	v_mul_f32_e32 v28, v28, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v70, 1, v70
	v_cndmask_b16 v79.h, 0x7fff, v3.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(8)
	v_fma_f32 v1, v1, v64, v192
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v29, v229
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v70, v2, v70, 0x7fff
	v_mov_b16_e32 v2.h, v86.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v192, v1, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v29, v29, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v79.l, 0x7fff, v70.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v64, v64, v65, v219
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v43, v229
	v_mul_f32_e32 v43, v43, v86
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v219, v64, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v66, v220
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v66, v42, v229
	v_dual_mul_f32 v42, v42, v86 :: v_dual_mul_f32 v61, v61, v83
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v56, v56, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v220, v65, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v66, v66, v67, v190
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v67, v55, v228
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v57, v83
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v53, v53, v83
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v59, v59, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v190, v66, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v67, v67, v105, v65
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v66, v54, v228
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v105, off, off offset:976 ; 4-byte Folded Reload
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v69, 1, v69
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v24, v24, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v65, v67, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v45, v228
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v66, v66, v110, v64
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v45, v45, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v71, 0xbfb8aa3b, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v65, v98, v68
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v64, v66, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v44, v228
	v_mul_f32_e32 v44, v44, v83
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v68, v65, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v68, 0xbfb8aa3b, v72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v71, v64, v97, v1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v64, s27, v217
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v66, 0, 0x42800000, s1
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v65, v224
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v68
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s1
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v71, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v67
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v3.h
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0x42800000, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v71, v225, v116, v223
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v66, v66
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v2, 1, v2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v62, v62, v111, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v68, 0xbfb8aa3b, v72 :: v_dual_mul_f32 v1, v1, v71
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v71.h, v86.l
	v_add3_u32 v2, v3, v2, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v189, off, off offset:104
	scratch_load_b32 v3, off, off offset:516
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v50, v62, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v71.l, v1.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v65, v66, v65
	v_exp_f32_e32 v66, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v70, 1, v71
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v68, 1.0, v65
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s4
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v71, off, off offset:984 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v70, v1, v70, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, null, v68, v68, v67
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v65, v66, v65
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v31, v229
	v_mul_f32_e32 v31, v31, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v85, v73
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v92, 1.0, v65
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v30, v229
	v_mul_f32_e32 v30, v30, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v93, null, v92, v92, v72
	v_div_scale_f32 v98, s5, v72, v92, v72
	v_rcp_f32_e32 v94, v93
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v66, v3, v189
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v188, off, off offset:100
	scratch_load_b32 v66, off, off offset:512
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v189, v3, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v3, -v73, v85, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v3, v85
	v_div_scale_f32 v3, s4, v67, v68, v67
	v_mul_f32_e32 v97, v3, v85
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v65, v65, v66, v188
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v47, v228
	v_mul_f32_e32 v47, v47, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v95, v188, v65, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v46, v228
	v_mul_f32_e32 v46, v46, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v96, v65, v71, v95
	scratch_load_b32 v71, off, off offset:988 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v33, v229
	v_mul_f32_e32 v33, v33, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v75, v187
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v75, s27, 4, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v187, v65, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v74, v66, v71, v1
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v71, v32, v229
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v93, v94, 1.0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v32, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v74, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v71, v71, v84, v221
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v84, v25, v228
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v94, v66, v94
	v_fma_f32 v66, -v73, v97, v3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v25, v25, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v99, v221, v71, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v84, v84, v109, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v101, v98, v94
	v_fmac_f32_e32 v97, v66, v85
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v71, s27, 5, v64
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v100, v100, v118, v99
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v102, v65, v84, s3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[65:66], null, s27, 48, v[64:65]
	v_add3_u32 v66, s33, s26, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v93, v101, v98
	v_fma_f32 v3, -v73, v97, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v84.h, 0x7fff, v2.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v99, v100, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v101, v69, v94
	v_div_fmas_f32 v3, v3, v85, v97
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v99, 0xbfb8aa3b, v102 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v73
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v85, -v93, v101, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v3, v3, v68, v67
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v95, v96, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v99
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v2
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v85, v85, v94, v101
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v3
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v218, off, off offset:80
	scratch_load_b32 v98, off, off offset:936
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v69, 0, 0x42800000, s6
	v_cndmask_b32_e64 v2, 0, 0x42800000, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v68, v85, v92, v72
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v69, 0xbfb8aa3b, v102 :: v_dual_fmac_f32 v2, 0xbfb8aa3b, v73
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v67, v68
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v1.h
	v_mov_b16_e32 v68.h, v86.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v2, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v92, v4, v229
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v97, v34, v229 :: v_dual_and_b32 v68, 1, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v84.l, 0x7fff, v70.h, s1
	v_mov_b16_e32 v70.l, v3.h
	v_mov_b16_e32 v70.h, v86.l
	v_cmp_o_f32_e64 s1, v3, v3
	v_add3_u32 v68, v1, v68, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v67, v69, v72
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v72, v5, v229
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v70, 1, v70
	v_cndmask_b16 v85.h, 0x7fff, v68.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v220, off, off offset:88
	scratch_load_b32 v68, off, off offset:508
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v2, v2, v69
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v70, v3, v70, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v101, v26, v228
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v5, v86
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v67, v67, v102
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v95, vcc_lo, v102, v67, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v2, v69
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v85.l, 0x7fff, v70.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v93, null, v1, v1, v73
	v_div_scale_f32 v100, s4, v73, v1, v73
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.h, v86.l
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v74, 0x80, v66
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fma_f32 v94, -v69, v2, 1.0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v26, v26, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v2, v94, v2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v94, v35, v229
	v_mul_f32_e32 v35, v35, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v99, v95, v2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v94, v94, v98, v218
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v98, v20, v228
	v_mul_f32_e32 v20, v20, v83
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v94, v218, v94, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v68, v72, v68, v220
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v219, off, off offset:84
	scratch_load_b32 v72, off, off offset:504
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v220, v68, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v72, v92, v72, v219
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v92, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v219, v72, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v72, v21, v228
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v98, v98, v105, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v96, -v93, v92, 1.0
	v_fma_f32 v105, -v69, v99, v95
	v_fmac_f32_e32 v92, v96, v92
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v216, off, off offset:76
	scratch_load_b32 v96, off, off offset:932
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v99, v105, v2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v105, v16, v228
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v69, v99, v95
	v_div_fmas_f32 v2, v69, v2, v99
	s_mov_b32 vcc_lo, s4
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v99, v8, v229
	v_mul_f32_e32 v8, v8, v86
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v2, v2, v67, v102
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v68, v98, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v96, v97, v96, v216
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v97, v27, v228
	v_mul_f32_e32 v27, v27, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v96, v216, v96, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v97, v97, v107, v94
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v107, v100, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v101, v101, v106, v96
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v94, v94, v97, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v97, off, off offset:972 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v96, v96, v101, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v101, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v101
	v_cndmask_b32_e64 v95, 0, 0x42800000, s5
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v95, 0xbfb8aa3b, v94
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v72, v72, v97, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v97, -v93, v107, v100
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v72, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v107, v97, v92
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v72, 0xbfb8aa3b, v96
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v3, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v93, v107, v100
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v192, off, off offset:72
	scratch_load_b32 v93, off, off offset:492
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v72
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v189, off, off offset:64
	scratch_load_b32 v100, off, off offset:928
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v69, v69, v92, v107
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v92, v95
	v_cndmask_b32_e64 v72, 0, 0x42800000, s6
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v1, v69, v1, v73
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s6
	v_dual_fmac_f32 v72, 0xbfb8aa3b, v96 :: v_dual_mul_f32 v73, v6, v229
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v6, v6, v86 :: v_dual_mul_f32 v1, v67, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v67, v92, v68
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v3, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v2.h
	v_mov_b16_e32 v68.h, v86.l
	v_mov_b16_e32 v70.l, v1.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v72, 1.0, v67
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v67, 1, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, null, v72, v72, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v3, v3, v69
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v69, 1, v70
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v70, v7, v229
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v67, v2, v67, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v7, v7, v86 :: v_dual_add_f32 v2, 1.0, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v3, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v69, v1, v69, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v67.h, 0x7fff, v67.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v97, vcc_lo, v94, v72, v94
	v_div_scale_f32 v92, null, v2, v2, v96
	v_div_scale_f32 v102, s4, v96, v2, v96
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v67.l, 0x7fff, v69.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v95, -v68, v3, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.h, v86.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v3, v95, v3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v95, v9, v229
	v_mul_f32_e32 v9, v9, v86
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v101, v97, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v70, v70, v93, v192
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v190, off, off offset:68
	scratch_load_b32 v93, off, off offset:488
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v95, v95, v100, v189
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v100, v22, v228
	v_mul_f32_e32 v22, v22, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v192, v70, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v95, v189, v95, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v73, v73, v93, v190
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v93, v92
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v190, v73, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v73, v23, v228
	v_mul_f32_e32 v23, v23, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v98, -v92, v93, 1.0
	v_fmac_f32_e32 v93, v98, v93
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v98, off, off offset:924 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v106, v102, v93
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v98, v99, v98, v254
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v99, v17, v228
	v_mul_f32_e32 v17, v17, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v98, v254, v98, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v99, v99, v104, v95
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v104, off, off offset:968 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v103, v105, v103, v98
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v95, v95, v99, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v99, off, off offset:964
	scratch_load_b32 v105, off, off offset:276
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v98, v98, v103, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v103, 0xbfb8aa3b, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v103
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v100, v100, v104, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v104, -v68, v101, v97
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v70, v100, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v101, v104, v3 :: v_dual_mul_f32 v104, v18, v228
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v18, v18, v83
	v_mul_f32_e32 v100, v10, v229
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v68, v101, v97
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v97, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v3, v68, v3, v101
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v101, off, off offset:920 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v73, v73, v99, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v99, -v92, v106, v102
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v97, 0xbfb8aa3b, v95
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v3, v72, v94
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v188, off, off offset:60
	scratch_load_b32 v94, off, off offset:484
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v73, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v106, v99, v93 :: v_dual_mul_f32 v73, 0xbfb8aa3b, v98
	s_mov_b32 vcc_lo, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v72.h, v86.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v92, v106, v102
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v73
	v_exp_f32_e32 v92, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v1.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v68, v68, v93, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v73, 0, 0x42800000, s6
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v2, v68, v2, v96
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v98
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v70, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v68, v92, v68
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v3, v73
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s6
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v92, v141, v229
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v72.l, v2.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v73, 1.0, v68 :: v_dual_and_b32 v68, 1, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v73, v73, v95
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v68, v1, v68, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v1, v142, v229
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v3, v3, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v70, 1, v72
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v72, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v68.h, 0x7fff, v68.h, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v3, 1.0, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v70, v2, v70, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v13, v228
	v_mul_f32_e32 v13, v13, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v93, null, v3, v3, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v96, -v69, v72, 1.0
	v_div_scale_f32 v103, s4, v98, v3, v98
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v68.l, 0x7fff, v70.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v72, v96, v72
	v_div_scale_f32 v96, vcc_lo, v95, v73, v95
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v102, v96, v72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v1, v1, v94, v188
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v187, off, off offset:308
	scratch_load_b32 v94, off, off offset:480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v97, v188, v1, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v11, v229
	v_mul_f32_e32 v11, v11, v86
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v92, v92, v94, v187
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v92, v187, v92, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v99, -v93, v94, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v94, v99, v94
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v99, off, off offset:916 ; 4-byte Folded Reload
	v_fma_f32 v1, v1, v101, v246
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v101, v12, v228
	v_mul_f32_e32 v12, v12, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v106, v103, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v246, v1, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v99, v100, v99, v253
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v100, v19, v228
	v_mul_f32_e32 v19, v19, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v99, v253, v99, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v100, v100, v105, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v105, off, off offset:960 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v104, v104, v108, v99
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v100, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v100, off, off offset:956 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v101, v101, v105, v92
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v105, -v69, v102, v96
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v100, v2, v100, v97
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v99, v104, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v99, 0xbfb8aa3b, v1 :: v_dual_fmac_f32 v102, v105, v72
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v105, -v93, v106, v103
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v97, v97, v100, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v100, off, off offset:456
	scratch_load_b32 v104, off, off offset:268
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v99
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v69, v102, v96
	v_fmac_f32_e32 v106, v105, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v96, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v99, 0, 0x42800000, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v69, v69, v72, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v93, v106, v103
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v96
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v99, 0xbfb8aa3b, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v69, v69, v73, v95
	v_div_fmas_f32 v72, v72, v94, v106
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v93, 0, 0x42800000, s6
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v92, v101, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v94, v99
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v69, v97, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v72, v3, v98
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v2
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v92.h, v86.l
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v95, v73, v3
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v70, v93
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s6
	v_ldexp_f32 v3, v94, v72
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v72.l, v69.h
	v_mov_b16_e32 v72.h, v86.l
	v_mov_b16_e32 v92.l, v95.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v96, v144, v229
	v_mul_f32_e32 v97, v143, v229
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v102, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v72, 1, v72
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v70, v70, v73
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_and_b32 v92, 1, v92
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v95, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v94, v69, v72, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v69, 1.0, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v70, v95, v92, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, null, v3, v3, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v92.h, 0x7fff, v94.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v99, off, off offset:196
	scratch_load_b32 v94, off, off offset:476
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v93, null, v69, v69, v2
	v_rcp_f32_e32 v72, v73
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v92.l, 0x7fff, v70.h, s1
	v_mov_b16_e32 v70.h, v86.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v98, -v73, v72, 1.0
	v_fmac_f32_e32 v72, v98, v72
	v_div_scale_f32 v98, vcc_lo, v1, v3, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v101, v98, v72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v96, v96, v94, v99
	scratch_load_b32 v94, off, off offset:472 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v96, v99, v96, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v97, v97, v94, v115
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v95, v115, v97, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v97, v15, v228
	v_mul_f32_e32 v15, v15, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v99, -v93, v94, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v94, v99, v94
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v99, off, off offset:452 ; 4-byte Folded Reload
	v_fma_f32 v49, v49, v100, v215
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v100, v14, v228
	v_mul_f32_e32 v14, v14, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v215, v49, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v61, v61, v102, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v102, off, off offset:532 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v49, v61, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v61, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v48, v48, v99, v214
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v99, s4, v2, v69, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v214, v48, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v103, v99, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v60, v60, v104, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v100, v100, v102, v95
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v102, -v73, v101, v98
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v48, v60, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v60, 0xbfb8aa3b, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v61, v97, v61, v96
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v101, v102, v72
	v_fma_f32 v97, -v93, v103, v99
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v96, v61, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v73, -v73, v101, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v103, v97, v94 :: v_dual_mul_f32 v96, 0xbfb8aa3b, v48
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v60, 0, 0x42800000, s5
	v_mul_f32_e32 v97, 0xbfb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v72, v73, v72, v101
	v_fma_f32 v73, -v93, v103, v99
	s_mov_b32 vcc_lo, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v49
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v96
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v97
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v73, v73, v94, v103
	v_div_fixup_f32 v1, v72, v3, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v60, v60
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v95, v100, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v93, 0, 0x42800000, s6
	v_cndmask_b32_e64 v62, 0, 0x42800000, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v2, v73, v69, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v61, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v93, 0xbfb8aa3b, v48 :: v_dual_fmac_f32 v62, 0xbfb8aa3b, v51
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v3, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v3, v60, v69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v60.l, v1.h
	v_mov_b16_e32 v60.h, v86.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v61, v93
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s6
	v_exp_f32_e32 v62, v62
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_and_b32 v60, 1, v60
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.l, v2.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v98, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v60, v1, v60, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v61, v61, v69
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v3, v3, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v1.h, 0x7fff, v60.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v60, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v72, v69
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v70, 1, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, null, v61, v61, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v70, v2, v70, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v93, -v69, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v93, v72
	v_div_scale_f32 v93, vcc_lo, v49, v3, v49
	v_mul_f32_e32 v95, v93, v72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v37, v37, v60, v213
	scratch_load_b32 v60, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v213, v37, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v57, v57, v98, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v57, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v36, v36, v60, v212
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v60, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v212, v36, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v56, v56, v63, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v94, -v73, v60, 1.0
	v_fma_f32 v63, -v69, v95, v93
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v36, v56, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v60, v94, v60
	v_div_scale_f32 v94, s1, v48, v61, v48
	v_fmac_f32_e32 v95, v63, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v56.h, v86.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v96, v94, v60
	v_fma_f32 v57, -v69, v95, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v73, v96, v94
	v_div_fmas_f32 v57, v57, v72, v95
	s_mov_b32 vcc_lo, s1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v72, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v96, v63, v60 :: v_dual_mul_f32 v63, 0xbfb8aa3b, v50
	v_div_fixup_f32 v3, v57, v3, v49
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v73, v96, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v37, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v60, v69, v60, v96
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v63, 0, 0x42800000, s5
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v69, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v2, v62, v49
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v48, v60, v61, v48
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v61, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v50
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s5
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v36, v36, v48
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.l, v3.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v37, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v63, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.h, v86.l
	v_cndmask_b16 v1.l, 0x7fff, v70.h, vcc_lo
	v_cmp_o_f32_e64 s1, v3, v3
	v_mov_b16_e32 v56.l, v36.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v48, 1, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v37, v37, v49
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v49, null, v2, v2, v51
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v48, v3, v48, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v37, 1.0, v37 :: v_dual_and_b32 v56, 1, v56
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v57, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v56, v36, v56, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v60, null, v37, v37, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v49, v57, 1.0
	v_fmac_f32_e32 v57, v62, v57
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(3)
	v_fma_f32 v40, v40, v72, v206
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v72, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v206, v40, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v52, v52, v176, v40
	s_waitcnt vmcnt(3)
	v_fma_f32 v41, v41, v69, v207
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v40, v52, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v39, v39, v61, v209
	scratch_load_b32 v61, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v207, v41, s2
	v_cndmask_b32_e64 v3, v209, v39, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v39, v58, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v58, vcc_lo, v51, v2, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v53, v53, v177, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v53, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v53, 0xbfb8aa3b, v41
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v53, 0, 0x42800000, s5
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v38, v38, v61, v208
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v208, v38, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v39, v39, v63, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v63, v58, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v60, v61, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v38, v39, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v49, v63, v58
	v_fmac_f32_e32 v61, v62, v61
	v_div_scale_f32 v62, s4, v50, v37, v50
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v63, v69, v57
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v53, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v70, v62, v61
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v59, v59, v72, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v49, -v49, v63, v58
	v_fma_f32 v69, -v60, v70, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v59, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v49, v49, v57, v63
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v70, v69, v61
	v_div_fixup_f32 v2, v49, v2, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v51, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v60, v70, v62
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v2
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v2.h, 0x7fff, v48.h, s1
	v_cmp_o_f32_e64 s1, v36, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v52, v57, v61, v70
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v57, 0xbfb8aa3b, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.h, v86.l
	v_mov_b16_e32 v48.l, v3.h
	v_cndmask_b16 v2.l, 0x7fff, v56.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v37, v52, v37, v50
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v50.h, v86.l
	v_and_b32_e32 v48, 1, v48
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v56, off, off offset:432
	scratch_load_b32 v57, off, off offset:460
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v37, v38, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v48, v3, v48, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v50.l, v37.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v38, v39, v38
	v_exp_f32_e32 v39, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v49, 1, v50
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v38
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v50, null, v36, v36, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v3.h, 0x7fff, v48.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v38, v39, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v37, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v49, v50
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v38, 1.0, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v38, v38, v40
	v_rcp_f32_e32 v52, v48
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(3)
	v_fma_f32 v43, v43, v53, v203
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v53, vcc_lo, v41, v36, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v203, v43, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v29, v29, v51, v205
	scratch_load_b32 v51, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v205, v29, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v45, v129, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v45, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v42, v42, v56, v202
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v202, v42, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v28, v28, v51, v204
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v50, v49, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v204, v28, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v49, v51, v49
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v51, v55, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v48, v52, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v44, v57, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v56, v53, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v51, v51, v171, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v52, v55, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v44, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v50, v56, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v51, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v51, v54, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v54, s1, v40, v38, v40
	v_dual_fmac_f32 v56, v57, v49 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v51, v51, v175, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v58, v54, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v50, v56, v53
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v51, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v48, v58, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v45, v45, v49, v56
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v55, 0, 0x42800000, s4
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v58, v51, v52
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v57, 0xbfb8aa3b, v42
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v36, v45, v36, v41
	v_fma_f32 v48, -v48, v58, v54
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.h, v86.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v57
	v_exp_f32_e32 v50, v55
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v29, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v48, v48, v52, v58
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v51, 0, 0x42800000, s5
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v52, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v29, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v38, v48, v38, v40
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s5
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v42
	v_ldexp_f32 v44, v50, v49
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v49, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v28, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v3.l, 0x7fff, v39.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v51, v51
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.l, v28.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, null, v37, v37, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v36, v51, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, v29.h
	v_mov_b16_e32 v40.h, v86.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v40
	v_and_b32_e32 v40, 1, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v36, v36, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v29, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add3_u32 v40, v28, v40, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v38, v44, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v41, v45
	v_fmac_f32_e32 v44, v48, v44
	v_div_scale_f32 v48, vcc_lo, v43, v37, v43
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v33, v33, v52, v186
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v52, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v186, v33, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v30, v30, v49, v200
	scratch_load_b32 v49, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v25, v174, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v200, v30, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v46, v128, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v46, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v31, v31, v49, v201
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v49, -v45, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v201, v31, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v31, v48, v44
	v_fmac_f32_e32 v41, v49, v41
	v_div_scale_f32 v49, s4, v42, v36, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v47, v47, v52, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v38, v31, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v51, v49, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v29, v47, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v31, v50, v44
	v_fma_f32 v50, -v45, v51, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v38, v31, v48
	v_fmac_f32_e32 v51, v50, v41
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v31, v29, v44, v31
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v29, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v45, v51, v49
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v31, v31, v37, v43
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v43, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v37, v47, v31
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v32, v32, v29, v185
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v33, v25, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v25, v38, v41, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v185, v32, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v25, v25, v36, v42
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v36, v24, v173, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.h, 0x7fff, v39.h, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v30, v30, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v28, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v32, v36, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.l, v37.h
	v_mov_b16_e32 v25.h, v86.l
	v_cndmask_b16 v24.l, 0x7fff, v40.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v28, 0xbfb8aa3b, v31 :: v_dual_fmac_f32 v33, 0xbfb8aa3b, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v37, v37
	v_and_b32_e32 v38, 1, v25
	v_mov_b16_e32 v32.l, v30.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v28
	v_exp_f32_e32 v33, v33
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.h, v86.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v31
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v33, v33, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v37, v38, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v38, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s4
	v_exp_f32_e32 v36, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v25, v30, v32, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v32, 1.0, v33 :: v_dual_mul_f32 v33, v4, v86
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v4, null, v32, v32, v29
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v39, v36, v37
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v36, off, off offset:412
	scratch_load_b32 v41, off, off offset:356
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v21, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v5, v5, v38, v199
	scratch_load_b32 v38, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v40, v35, v36, v184
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v199, v5, s2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v39
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v39, v34, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v37, v43, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v21, null, v5, v5, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v36, v37, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v38, v33, v38, v198
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v33, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v198, v38, s2
	v_cndmask_b32_e64 v38, v184, v40, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v40, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v20, v41, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v41, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v4, v33, 1.0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v27, v27, v140, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v35, v20, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v34, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v38, v27, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, vcc_lo, v29, v32, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v38, v33
	v_fma_f32 v43, -v4, v42, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v33
	v_fma_f32 v4, -v4, v42, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v4, v4, v33, v42
	v_div_fixup_f32 v4, v4, v32, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v36, v4
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v36, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v39, v39, v40, v183
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v40, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v183, v39, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v39
	v_cndmask_b32_e64 v39, 0, 0x42800000, s4
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v27
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_ldexp_f32 v35, v39, v43
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v39, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v26, v26, v41, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v21, v40, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v34, v26, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v34, s5, v31, v5, v31
	s_mov_b32 vcc_lo, s5
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v41, 0xbfb8aa3b, v26 :: v_dual_mul_f32 v44, v34, v40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v21, v44, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, s6
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v44, v37, v40 :: v_dual_fmac_f32 v41, 0xbfb8aa3b, v26
	v_fma_f32 v21, -v21, v44, v34
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v37, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v21, v21, v40, v44
	s_delay_alu instid0(VALU_DEP_2)
	v_div_scale_f32 v32, null, v34, v34, v27
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_mov_b16_e32 v30.l, v4.h
	v_mov_b16_e32 v30.h, v86.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v21, v5, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.h, v86.l
	v_cndmask_b16 v28.l, 0x7fff, v25.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v37, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v37, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v20, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v25, 1, v30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v7, v7, v36, v197
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v29
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v29, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v5.h
	v_add3_u32 v25, v4, v25, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v197, v7, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v21, v21, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, vcc_lo, v27, v34, v27
	v_rcp_f32_e32 v33, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v32, v29, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v5, v30, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v29, v35, v29
	v_fma_f32 v35, -v20, v33, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v36, v31, v29
	v_fmac_f32_e32 v33, v35, v33
	v_div_scale_f32 v35, s1, v26, v21, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v38, v35, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v6, v6, v37, v196
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v32, v36, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v196, v6, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v36, v37, v29
	v_fma_f32 v37, -v20, v38, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v22, v39, v6
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v32, v36, v31
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off offset:304
	scratch_load_b32 v39, off, off offset:348
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v37, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v22, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v22, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v29, v31, v29, v36
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v20, -v20, v38, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v20, v20, v33, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v20, v20, v21, v26
	v_div_fixup_f32 v21, v29, v34, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v20
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.h, v86.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v9, v9, v32, v182
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v182, v9, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v17, v17, v22, v9
	scratch_load_b32 v22, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v23, v23, v39, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v9, v17, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v9, v16, v83
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v17.h, 0x7fff, v25.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v23, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v17.l, 0x7fff, v30.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v4
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v23, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v7, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.l, v6.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.h, v86.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v20.l, v7.h
	v_cmp_o_f32_e64 s4, v7, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v5, 1, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v5, v6, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v16, v16
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v8, v8, v22, v181
	scratch_load_b32 v22, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v181, v8, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v9, v9, v22, v8
	scratch_load_b32 v22, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v8, v9, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v9, 1, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v20, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v9, v7, v9, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v7, v10, v86
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v10, v16, v21
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v16, off, off offset:296
	scratch_load_b32 v21, off, off offset:292
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s4
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v10, 1.0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, s5, v4, v10, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v8
	v_exp_f32_e32 v20, v20
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v11, v11, v16, v180
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v142, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v180, v11, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v16, v178, v195
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v19, v19, v22, v11
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v22, v141, v86
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v195, v16, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v11, v11, v19, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v19, off, off          ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v7, v7, v21, v179
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v21, null, v10, v10, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v179, v7, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v25, v21
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v18, v18, v23, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v18, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v18, v20, v23
	v_mul_f32_e32 v20, 0xbfb8aa3b, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v23, -v21, v25, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v25, v23, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_scale_f32 v23, null, v18, v18, v8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v29, v26, v25
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v27, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v21, v29, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v29, v32, v25
	v_fma_f32 v33, -v23, v27, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v21, v29, v26
	v_fmac_f32_e32 v27, v33, v27
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v20, v20, v30
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v30, off, off offset:324
	scratch_load_b32 v33, off, off offset:320
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v21, v21, v25, v29
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v4, v21, v10, v4
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v21, v143, v86
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v19, v22, v19, v194
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v194, v19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v7
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v22, v22, v31
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v20, v20, v11
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v22, v22, v7
	v_rcp_f32_e32 v34, v32
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v12, v12, v30, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, s1, v8, v18, v8
	s_mov_b32 vcc_lo, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v19, v12, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v26, v30, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v32, v34, 1.0
	v_fma_f32 v25, -v23, v26, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v19, v34
	v_div_scale_f32 v19, s5, v7, v22, v7
	v_dual_fmac_f32 v26, v25, v27 :: v_dual_mul_f32 v29, v19, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v23, v26, v30
	scratch_load_b32 v30, off, off offset:204 ; 4-byte Folded Reload
	v_div_fmas_f32 v23, v23, v27, v26
	v_fma_f32 v27, -v32, v29, v19
	v_div_fixup_f32 v8, v23, v18, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v18, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fma_f32 v13, v13, v33, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v33, v31
	v_fmac_f32_e32 v29, v27, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v27, v79, v85, s0
	v_cndmask_b32_e64 v23, v84, v78, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v16, v13, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v144, v86
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v12, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v4, v13, v4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v10, -v31, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v16, v127, v193
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.h, v86.l
	v_cmp_o_f32_e64 s1, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v10, v33
	v_div_scale_f32 v10, s4, v11, v20, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v193, v16, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v25, v10, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v31, v25, v10
	v_fmac_f32_e32 v25, v26, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v26, v85, v79, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v10, -v31, v25, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v31, v1, v68, s0
	v_cndmask_b32_e64 v1, v68, v1, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v10, v10, v33, v25
	s_mov_b32 vcc_lo, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v25, v78, v84, s0
	v_cndmask_b32_e64 v33, v28, v3, s0
	v_cndmask_b32_e64 v3, v3, v28, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v10, v20, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v8.h
	v_mov_b16_e32 v11.h, v86.l
	v_cndmask_b32_e64 v20, v80, v76, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v21, v21, v126, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v30, v21, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v8, v8
	v_cndmask_b32_e64 v30, v67, v92, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v14, v14, v18, v21
	scratch_load_b32 v18, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v21, v14, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v21, v77, v81, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v15, v15, v18, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v18, -v32, v29, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v32, v24, v2, s0
	v_cndmask_b32_e64 v2, v2, v24, s0
	v_mov_b32_e32 v24, 0x7632
	v_cndmask_b32_e64 v19, v76, v80, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v18, v18, v34, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v16, v15, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_add3_u32 v6, v8, v11, 0x7fff
	v_cndmask_b32_e64 v15, v91, v90, s0
	v_cndmask_b32_e64 v16, v82, v89, s0
	v_cndmask_b32_e64 v29, v92, v67, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v18, v22, v7
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v12, v10
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v4.h
	v_mov_b16_e32 v12.h, v86.l
	v_cndmask_b16 v9.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s2
	v_cndmask_b32_e64 v18, v89, v82, s0
	v_cndmask_b32_e64 v22, v81, v77, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v14, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e32 v14.h, v86.l
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e64 s3, v10, v10
	v_mov_b16_e32 v14.l, v7.h
	v_and_b32_e32 v13, 1, v13
	v_cmp_o_f32_e64 s4, v7, v7
	v_add3_u32 v12, v4, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v11, 1, v14
	v_add3_u32 v8, v10, v13, 0x7fff
	v_cndmask_b32_e64 v13, v170, v88, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v5.h, 0x7fff, v12.h, s1
	s_mov_b32 s1, 0x76543210
	v_add3_u32 v4, v7, v11, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s3
	v_cndmask_b32_e64 v8, v131, v133, s0
	v_cndmask_b32_e64 v34, v5, v17, s0
	v_cndmask_b32_e64 v5, v17, v5, s0
	v_cndmask_b16 v6.l, 0x7fff, v4.h, s4
	v_cndmask_b32_e64 v4, v132, v0, s0
	v_cndmask_b32_e64 v0, v0, v132, s0
	v_mov_b32_e32 v17, 0x5410
	v_cndmask_b32_e64 v11, v163, v87, s0
	v_cndmask_b32_e64 v35, v6, v9, s0
	v_cndmask_b32_e64 v6, v9, v6, s0
	v_permlanex16_b32 v9, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v0, 0x1054, v17, s0
	v_cndmask_b32_e64 v17, 0x3276, v24, s0
	v_cndmask_b32_e64 v7, v133, v131, s0
	v_cndmask_b32_e64 v10, v87, v163, s0
	v_cndmask_b32_e64 v12, v88, v170, s0
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v17, v17, 8, v17
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v17, 0x760076, v17
	v_permlanex16_b32 v18, v18, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v25, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v17, v17, 4, v17
	v_permlanex16_b32 v25, v27, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v30, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v36, 0x5040504, v0
	v_and_b32_e32 v37, 0x7060706, v17
	v_cndmask_b32_e64 v14, v90, v91, s0
	v_permlanex16_b32 v15, v15, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v22, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v3, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v5, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v9, v4, v36
	v_perm_b32 v1, v9, v4, v37
	v_perm_b32 v2, v8, v7, v36
	v_perm_b32 v3, v8, v7, v37
	v_perm_b32 v4, v11, v10, v36
	v_perm_b32 v5, v11, v10, v37
	v_perm_b32 v6, v13, v12, v36
	v_perm_b32 v7, v13, v12, v37
	v_perm_b32 v10, v18, v16, v36
	v_perm_b32 v11, v18, v16, v37
	v_perm_b32 v12, v20, v19, v36
	v_perm_b32 v13, v20, v19, v37
	v_perm_b32 v16, v24, v23, v36
	v_perm_b32 v17, v24, v23, v37
	v_perm_b32 v18, v25, v26, v36
	v_perm_b32 v19, v25, v26, v37
	v_perm_b32 v24, v30, v32, v36
	v_perm_b32 v25, v30, v32, v37
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v32, v66, v64, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v8, v15, v14, v36
	v_perm_b32 v9, v15, v14, v37
	v_perm_b32 v14, v22, v21, v36
	v_perm_b32 v15, v22, v21, v37
	v_perm_b32 v20, v27, v29, v36
	v_perm_b32 v21, v27, v29, v37
	v_perm_b32 v26, v38, v33, v36
	v_perm_b32 v27, v38, v33, v37
	v_add_lshl_u32 v33, v66, v75, 1
	s_clause 0x2
	buffer_store_b128 v[0:3], v32, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v32, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v33, s[24:27], 0 offen
	v_add_lshl_u32 v0, v74, v75, 1
	v_add_lshl_u32 v1, v66, v71, 1
	v_perm_b32 v22, v28, v31, v36
	v_perm_b32 v23, v28, v31, v37
	v_add_lshl_u32 v2, v74, v71, 1
	v_add_lshl_u32 v3, v66, v65, 1
	v_perm_b32 v28, v39, v34, v36
	v_perm_b32 v29, v39, v34, v37
	v_perm_b32 v30, v40, v35, v36
	v_perm_b32 v31, v40, v35, v37
	v_add_lshl_u32 v4, v74, v65, 1
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1196
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 55
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 1196
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 50960
; TotalNumSgprs: 57
; NumVgprs: 256
; ScratchSize: 1196
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 1196
    .sgpr_count:     57
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 536
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
