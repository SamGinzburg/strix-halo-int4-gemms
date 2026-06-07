	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
	v_lshlrev_b32_e32 v8, 2, v0
	v_lshrrev_b32_e32 v3, 3, v0
	v_and_b32_e32 v5, 1, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v4, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v85, 15, v0
	v_and_b32_e32 v2, 28, v8
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
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v9, s31, v3
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
	s_lshl_b32 s16, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s8, s16
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s17, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s6, s17
	s_sub_i32 s18, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s39, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s38, s10
	s_mov_b64 s[28:29], s[14:15]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s18, s18, s6
	s_mul_hi_u32 s4, s6, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s4
	s_mul_hi_u32 s4, s5, s6
	s_xor_b32 s6, s2, s7
	s_mul_i32 s18, s4, s17
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s5, s5, s18
	s_add_i32 s18, s4, 1
	s_sub_i32 s19, s5, s17
	s_cmp_ge_u32 s5, s17
	s_cselect_b32 s4, s18, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s17
	s_cselect_b32 s4, s18, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s30, s3, 5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s18, s4, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s3, s31, 0x7f
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s17, s18, s6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v10, s30, v2
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s19, s17, s7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s4, s3, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s19
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s4, s4, 25
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s16
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s26, s17, 8
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 5
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s31, 31
.Ltmp19:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s17, s33, s31
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s7, s3, s4
.Ltmp21:
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v10
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s35, s26, s27
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v9, v9, v2, s17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 31
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s4, s26, s31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_mul_i32 s16, s35, s31
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v12, s30, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v1, 4, v5
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s4, s4, s30
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	s_add_i32 s16, s16, s30
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v28, 0x80000000, v12, vcc_lo
	s_and_b32 s9, s9, 0xffff
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[6:7], null, s31, v4, v[1:2]
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v11, s30, v1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_and_b32 s37, s37, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s31, v11
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v7, s31, 7, v6
	v_add_nc_u32_e32 v10, s4, v6
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v6, s16, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s3, s3, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v11, s4, v7
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v7, s16, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v13, 0x80000000, v10, s3
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v18, 0x80000000, v6, s3
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v14, 0x80000000, v11, s3
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v22, 0x80000000, v7, s3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s17, s30, 32
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v7, 32, v7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v19, s17, v2
	v_or_b32_e32 v20, s17, v1
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v9, s17, v9
	.loc	1 356 39                        ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v6, 32, v6
	s_mov_b32 s16, 0
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v19
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v20
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_clause 0x1
	buffer_load_b128 v[18:21], v18, s[36:39], 0 offen
	buffer_load_b128 v[22:25], v22, s[36:39], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v30, v28, s[8:11], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s3
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_add_nc_u32 v26, 32, v10
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_add_nc_u32 v27, 32, v11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[10:13], v13, s[36:39], 0 offen
	buffer_load_b128 v[14:17], v14, s[36:39], 0 offen
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v8, 0x37c, v8
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v31, 0x80000000, v27, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v46, v9, s[8:11], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[26:29], v26, s[36:39], 0 offen
	buffer_load_b128 v[34:37], v31, s[36:39], 0 offen
	buffer_load_b128 v[38:41], v6, s[36:39], 0 offen
	buffer_load_b128 v[42:45], v7, s[36:39], 0 offen
	v_lshlrev_b32_e32 v7, 4, v0
	v_bfe_i32 v6, v0, 3, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_bfe_i32 v9, v0, 5, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x5f
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v31, 0xf70, v7
	v_and_b32_e32 v6, 0x90, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v9, 0x90, v9
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v32, v6, v31
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v33, v9, v8
	v_lshlrev_b32_e32 v8, 5, v0
	v_and_b32_e32 v31, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v9, 16, v85
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v6, 0, v32
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v47, 0, v33
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v6, v[14:17] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_store_b128 v6, v[18:21] offset:16384
	ds_store_b128 v6, v[22:25] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b32 v47, v30 offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v6, v[10:13]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v47, v46 offset:33792
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v6, v[26:29] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v6, v[34:37] offset:12288
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v6, v[38:41] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v6, v[42:45] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v30, 0x160, v8
	v_and_b32_e32 v6, 4, v0
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_or_b32 v29, 0xe00, v7, v30
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr29
.LBB0_3:                                ; %Flow615
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v10, s33, v85
	v_or_b32_e32 v9, s33, v9
	v_and_b32_e32 v11, 0xf0, v0
	s_ashr_i32 s34, s7, 7
	v_or_b32_e32 v156, s26, v0
	v_mul_lo_u32 v157, v10, s34
	v_mul_lo_u32 v142, v9, s34
	v_lshlrev_b32_e32 v26, 2, v11
	v_lshlrev_b32_e32 v28, 1, v0
	v_lshlrev_b32_e32 v27, 5, v5
	v_lshlrev_b32_e32 v25, 1, v11
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_lshl_b32 s1, s27, 1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v5, v0, 2, 1
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v30, 0x160, v8
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s14, s18, 8
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_delay_alu instid0(VALU_DEP_1)
	v_and_or_b32 v29, 0xe00, v7, v30
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v5, 0x90, v5
	s_lshl_b32 s15, s6, 8
	v_add_nc_u32_e32 v3, s33, v3
	v_and_b32_e32 v9, 28, v28
	v_add3_u32 v10, 0, v26, v27
	v_or_b32_e32 v34, v5, v30
	v_or_b32_e32 v35, v29, v5
	v_add3_u32 v5, s27, s14, v4
	v_or_b32_e32 v4, s14, v4
	v_mul_lo_u32 v3, s31, v3
	v_add_nc_u32_e32 v38, s27, v156
	v_or_b32_e32 v44, 64, v1
	v_subrev_nc_u32_e32 v5, s15, v5
	v_subrev_nc_u32_e32 v4, s15, v4
	v_or_b32_e32 v45, 64, v2
	v_xor_b32_e32 v36, 16, v34
	v_xor_b32_e32 v37, 16, v35
	v_add_nc_u32_e32 v6, 0x80, v5
	v_or_b32_e32 v7, 0x80, v4
	v_mul_lo_u32 v5, s31, v5
	v_mul_lo_u32 v4, s31, v4
	v_add3_u32 v43, v3, v2, 64
	v_mul_lo_u32 v6, s31, v6
	v_mul_lo_u32 v7, s31, v7
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v47, 0, v25
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_add3_u32 v40, v5, v1, 64
	v_add3_u32 v42, v4, v1, 64
	v_add3_u32 v39, v6, v1, 64
	v_add3_u32 v41, v7, v1, 64
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_add_nc_u32_e32 v46, v10, v9
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v50, 0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s5, 5
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s15, 1
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s47, s0, -2
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s45, 0, 0x8400
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s17, s30
	.loc	1 362 29 is_stmt 1              ; generate_amdgcn.py:362:29
	s_ashr_i32 s18, s30, 31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_add_nc_u32_e32 v9, s17, v45
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s18, s18, 25
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v10, s17, v43
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s18, s30, s18
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s18, s18, 7
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v9
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s19, s18, s1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s18, s34
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v100, v38, s19, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v20, v142, s18, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v10, v157, s18, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s15, s15, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v121, 0x80000000, v20, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_dual_cndmask_b32 v100, 0x80000000, v100 :: v_dual_cndmask_b32 v91, 0x80000000, v10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v48, v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v91, v91, s[4:7], 0 offen
	buffer_load_u16 v133, v121, s[4:7], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v9, v156, s19, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s15, 2
	s_cselect_b32 s15, s15, 0
	s_add_i32 s47, s47, -1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s18, s15, 10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s19, s15, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s18, s18, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s30, s30, 32
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v133, 16, v133
	v_lshlrev_b32_e32 v91, 16, v91
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v10, s0, v34
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v14, s16, v35
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v11, s0, v36
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v15, s16, v37
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v93, v9, s[40:43], 0 offen
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v18, s14, v35
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[71:74], v10
	ds_load_b128 v[129:132], v10 offset:512
	ds_load_b128 v[135:138], v11
	ds_load_b128 v[151:154], v11 offset:512
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[166:169], v14
	ds_load_b128 v[174:177], v14 offset:4096
	ds_load_b128 v[206:209], v15
	ds_load_b128 v[210:213], v15 offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v19, s14, v37
	ds_load_b128 v[198:201], v18
	ds_load_b128 v[214:217], v18 offset:4096
	ds_load_b128 v[218:221], v19
	ds_load_b128 v[222:225], v19 offset:4096
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_add_nc_u32_e32 v9, s17, v44
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v12, s17, v42
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v13, s17, v41
	.loc	1 356 39 is_stmt 1              ; generate_amdgcn.py:356:39
	v_add_nc_u32_e32 v16, s17, v40
	.loc	1 356 31 is_stmt 0              ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v17, s17, v39
	.loc	1 344 23 is_stmt 1              ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s31, v9
	s_mov_b32 s16, s46
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s46, s19, 0
	s_mov_b32 s14, s44
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	s_add_i32 s44, s46, 0x4000
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v9, 0x80000000, v12, s0
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[166:169], v[71:74], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[174:177], v[71:74], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[166:169], v[129:132], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[166:173], v[174:177], v[129:132], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[174:181], v[198:201], v[71:74], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[182:189], v[214:217], v[71:74], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[121:128], v[206:209], v[135:138], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[210:213], v[135:138], v[143:150] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[174:181], v[218:221], v[135:138], v[174:181] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[182:189], v[222:225], v[135:138], v[182:189] neg_lo:[1,1,0]
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v21, 0x80000000, v16, s0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v136, v121
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_cndmask_b32_e64 v22, 0x80000000, v17, s0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[9:12], v9, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v13, s[36:39], 0 offen
	buffer_load_b128 v[17:20], v21, s[36:39], 0 offen
	buffer_load_b128 v[21:24], v22, s[36:39], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[190:197], v[198:201], v[129:132], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[214:217], v[129:132], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[158:165], v[206:209], v[151:154], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[166:173], v[210:213], v[151:154], v[166:173] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[190:197], v[218:221], v[151:154], v[190:197] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[198:205], v[222:225], v[151:154], v[198:205] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v135, v122
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v137, v175
	v_cvt_f32_i32_e32 v138, v174
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v139, v124
	v_cvt_f32_i32_e32 v140, v123
	v_cvt_f32_i32_e32 v152, v126
	v_cvt_f32_i32_e32 v153, v125
	v_cvt_f32_i32_e32 v174, v128
	v_cvt_f32_i32_e32 v175, v127
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v151, v176
	v_cvt_f32_i32_e32 v176, v181
	v_cvt_f32_i32_e32 v181, v184
	v_cvt_f32_i32_e32 v184, v189
	v_cvt_f32_i32_e32 v189, v192
	v_cvt_f32_i32_e32 v192, v197
	v_cvt_f32_i32_e32 v197, v200
	v_cvt_f32_i32_e32 v200, v205
	v_cvt_f32_i32_e32 v154, v179
	v_cvt_f32_i32_e32 v179, v182
	v_cvt_f32_i32_e32 v182, v187
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v158, v158
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v187, v190
	v_cvt_f32_i32_e32 v190, v195
	v_cvt_f32_i32_e32 v195, v198
	v_cvt_f32_i32_e32 v198, v203
	v_cvt_f32_i32_e32 v141, v177
	v_cvt_f32_i32_e32 v155, v178
	v_cvt_f32_i32_e32 v177, v180
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v144, v144
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v178, v183
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v146, v146
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v180, v185
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v147, v147
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v183, v186
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v150, v150
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v185, v188
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v159, v159
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v186, v191
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v160, v160
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v188, v193
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v162, v162
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v191, v194
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v164, v164
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v193, v196
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v166, v166
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v194, v199
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v168, v168
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v196, v201
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v170, v170
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v199, v202
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v172, v172
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v201, v204
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v149, v149
	s_mov_b32 s0, s45
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s45, s18, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s47, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v93, 16, v93
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v46, v93 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v93, v100, s[40:43], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[71:74], v47 offset:34816
	ds_load_b128 v[121:124], v47 offset:34832
	ds_load_b128 v[125:128], v47 offset:35328
	ds_load_b128 v[129:132], v47 offset:35344
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v206, v122, v91
	v_dual_mul_f32 v122, v122, v133 :: v_dual_mul_f32 v205, v73, v91
	v_dual_mul_f32 v203, v71, v91 :: v_dual_add_nc_u32 v100, s18, v33
	v_dual_mul_f32 v209, v123, v91 :: v_dual_add_nc_u32 v134, s46, v32
	v_mul_f32_e32 v211, v125, v91
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v104, v205, v140 :: v_dual_mul_f32 v71, v71, v133
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v202, v72, v91
	v_mul_f32_e32 v204, v74, v91
	v_mul_f32_e32 v207, v121, v91
	v_mul_f32_e32 v208, v124, v91
	v_mul_f32_e32 v210, v126, v91
	v_mul_f32_e32 v212, v128, v91
	v_dual_mul_f32 v213, v127, v91 :: v_dual_mul_f32 v124, v124, v133
	v_mul_f32_e32 v214, v130, v91
	v_dual_mul_f32 v215, v129, v91 :: v_dual_mul_f32 v126, v126, v133
	v_mul_f32_e32 v216, v132, v91
	v_dual_mul_f32 v217, v131, v91 :: v_dual_mul_f32 v128, v128, v133
	v_mul_f32_e32 v72, v72, v133
	v_mul_f32_e32 v74, v74, v133
	v_mul_f32_e32 v73, v73, v133
	v_mul_f32_e32 v121, v121, v133
	v_dual_mul_f32 v123, v123, v133 :: v_dual_fmac_f32 v96, v208, v174
	v_dual_mul_f32 v125, v125, v133 :: v_dual_fmac_f32 v90, v210, v144
	v_dual_mul_f32 v127, v127, v133 :: v_dual_fmac_f32 v86, v212, v146
	v_dual_mul_f32 v130, v130, v133 :: v_dual_fmac_f32 v105, v204, v139
	v_dual_mul_f32 v129, v129, v133 :: v_dual_fmac_f32 v80, v215, v147
	v_dual_mul_f32 v132, v132, v133 :: v_dual_fmac_f32 v109, v202, v135
	v_dual_mul_f32 v131, v131, v133 :: v_dual_fmac_f32 v118, v72, v159
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v117, v71, v158 :: v_dual_fmac_f32 v58, v128, v169
	v_dual_fmac_f32 v99, v207, v153 :: v_dual_fmac_f32 v70, v122, v163
	v_dual_fmac_f32 v95, v209, v175 :: v_dual_fmac_f32 v114, v74, v161
	v_dual_fmac_f32 v81, v214, v148 :: v_dual_fmac_f32 v66, v124, v165
	v_dual_fmac_f32 v77, v216, v150 :: v_dual_fmac_f32 v62, v126, v167
	v_dual_fmac_f32 v113, v73, v160 :: v_dual_fmac_f32 v52, v130, v171
	v_dual_fmac_f32 v69, v121, v162 :: v_dual_fmac_f32 v50, v131, v172
	v_fmac_f32_e32 v65, v123, v164
	v_fmac_f32_e32 v61, v125, v166
	v_fmac_f32_e32 v57, v127, v168
	v_fmac_f32_e32 v51, v129, v170
	v_dual_fmac_f32 v49, v132, v173 :: v_dual_fmac_f32 v108, v203, v136
	v_dual_fmac_f32 v101, v206, v152 :: v_dual_fmac_f32 v84, v213, v145
	v_dual_fmac_f32 v89, v211, v143 :: v_dual_fmac_f32 v76, v217, v149
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v71, 16, v93
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_store_b32 v46, v71 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[71:74], v47 offset:34816
	ds_load_b128 v[121:124], v47 offset:34832
	ds_load_b128 v[125:128], v47 offset:35328
	ds_load_b128 v[129:132], v47 offset:35344
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b32 v100, v48 offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v134, v[9:12]
	ds_store_b128 v134, v[13:16] offset:4096
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_store_b128 v134, v[17:20] offset:16384
	ds_store_b128 v134, v[21:24] offset:20480
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(8)
	v_mul_f32_e32 v48, v72, v91
	v_dual_mul_f32 v93, v71, v91 :: v_dual_mul_f32 v72, v72, v133
	v_mul_f32_e32 v100, v74, v91
	v_dual_mul_f32 v135, v73, v91 :: v_dual_mul_f32 v74, v74, v133
	s_waitcnt lgkmcnt(7)
	v_mul_f32_e32 v136, v122, v91
	v_dual_mul_f32 v139, v121, v91 :: v_dual_mul_f32 v122, v122, v133
	v_mul_f32_e32 v140, v124, v91
	v_dual_mul_f32 v143, v123, v91 :: v_dual_mul_f32 v124, v124, v133
	s_waitcnt lgkmcnt(6)
	v_mul_f32_e32 v144, v126, v91
	v_dual_mul_f32 v145, v125, v91 :: v_dual_mul_f32 v126, v126, v133
	v_mul_f32_e32 v146, v128, v91
	v_dual_mul_f32 v147, v127, v91 :: v_dual_mul_f32 v128, v128, v133
	s_waitcnt lgkmcnt(5)
	v_dual_mul_f32 v148, v130, v91 :: v_dual_mul_f32 v71, v71, v133
	v_dual_mul_f32 v149, v129, v91 :: v_dual_mul_f32 v130, v130, v133
	v_dual_mul_f32 v150, v132, v91 :: v_dual_mul_f32 v73, v73, v133
	v_dual_mul_f32 v91, v131, v91 :: v_dual_mul_f32 v132, v132, v133
	v_dual_mul_f32 v121, v121, v133 :: v_dual_fmac_f32 v106, v135, v151
	v_dual_mul_f32 v123, v123, v133 :: v_dual_fmac_f32 v98, v140, v176
	v_dual_mul_f32 v125, v125, v133 :: v_dual_fmac_f32 v102, v139, v155
	v_dual_mul_f32 v127, v127, v133 :: v_dual_fmac_f32 v92, v145, v179
	v_dual_mul_f32 v129, v129, v133 :: v_dual_fmac_f32 v94, v144, v178
	v_dual_mul_f32 v131, v131, v133 :: v_dual_fmac_f32 v88, v146, v180
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v75, v93, v138 :: v_dual_fmac_f32 v110, v48, v137
	v_dual_fmac_f32 v107, v100, v141 :: v_dual_fmac_f32 v82, v149, v183
	v_dual_fmac_f32 v103, v136, v154 :: v_dual_fmac_f32 v78, v91, v185
	v_dual_fmac_f32 v97, v143, v177 :: v_dual_fmac_f32 v120, v72, v186
	v_dual_fmac_f32 v87, v147, v181 :: v_dual_fmac_f32 v116, v74, v188
	v_fmac_f32_e32 v83, v148, v182
	v_fmac_f32_e32 v79, v150, v184
	v_dual_fmac_f32 v119, v71, v187 :: v_dual_fmac_f32 v112, v122, v190
	v_dual_fmac_f32 v115, v73, v189 :: v_dual_fmac_f32 v68, v124, v192
	v_dual_fmac_f32 v111, v121, v191 :: v_dual_fmac_f32 v64, v126, v194
	v_dual_fmac_f32 v67, v123, v193 :: v_dual_fmac_f32 v60, v128, v196
	v_dual_fmac_f32 v63, v125, v195 :: v_dual_fmac_f32 v56, v130, v198
	v_dual_fmac_f32 v59, v127, v197 :: v_dual_fmac_f32 v54, v132, v200
	v_fmac_f32_e32 v55, v129, v199
	v_fmac_f32_e32 v53, v131, v201
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v6, v31
	s_add_i32 s17, s17, 64
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s45, 0, 0x8400
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v108, 0
	v_mov_b32_e32 v110, 0
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v2, 0, 1, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v181, 0
	v_cndmask_b32_e64 v1, 0x90, 0, vcc_lo
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v170, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v17, v1, v30
	v_mov_b32_e32 v180, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_or_b32_e32 v229, v29, v1
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v174, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v18, 16, v17
	v_add_nc_u32_e32 v1, s0, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v230, 16, v229
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v3, s0, v18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[9:12], v1 offset:512
	ds_load_b128 v[5:8], v3
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[1:4], v3 offset:512
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v20, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v19, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v36, s11 :: v_dual_add_nc_u32 v23, s16, v229
	v_dual_mov_b32 v35, s10 :: v_dual_add_nc_u32 v24, s16, v230
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[19:22], v23
	ds_load_b128 v[45:48], v23 offset:4096
	ds_load_b128 v[71:74], v24 offset:4096
	ds_load_b128 v[129:132], v24
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v34, s9 :: v_dual_mov_b32 v33, s8
	v_dual_mov_b32 v32, s7 :: v_dual_mov_b32 v31, s6
	v_dual_mov_b32 v30, s5 :: v_dual_mov_b32 v29, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[19:22], v[13:16], v[29:36] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[45:48], v[13:16], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[19:22], v[9:12], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[29:36], v[45:48], v[9:12], v[29:36] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[129:132], v[5:8], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[71:74], v[5:8], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[129:132], v[1:4], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[29:36], v[71:74], v[1:4], v[29:36] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v178, v39
	v_cvt_f32_i32_e32 v179, v40
	v_cvt_f32_i32_e32 v166, v41
	v_cvt_f32_i32_e32 v167, v42
	v_cvt_f32_i32_e32 v170, v43
	v_cvt_f32_i32_e32 v173, v44
	v_cvt_f32_i32_e32 v171, v121
	v_cvt_f32_i32_e32 v174, v122
	v_cvt_f32_i32_e32 v176, v123
	v_cvt_f32_i32_e32 v177, v124
	v_cvt_f32_i32_e32 v168, v125
	v_cvt_f32_i32_e32 v169, v126
	v_cvt_f32_i32_e32 v172, v127
	v_cvt_f32_i32_e32 v175, v128
	v_cvt_f32_i32_e32 v185, v143
	v_cvt_f32_i32_e32 v186, v144
	v_cvt_f32_i32_e32 v183, v145
	v_cvt_f32_i32_e32 v184, v146
	v_cvt_f32_i32_e32 v137, v147
	v_cvt_f32_i32_e32 v139, v148
	v_cvt_f32_i32_e32 v91, v149
	v_cvt_f32_i32_e32 v93, v150
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v23, v31
	v_cvt_f32_i32_e32 v24, v32
	v_cvt_f32_i32_e32 v21, v33
	v_cvt_f32_i32_e32 v22, v34
	v_cvt_f32_i32_e32 v20, v35
	v_cvt_f32_i32_e32 v19, v36
	v_cvt_f32_i32_e32 v180, v37
	v_cvt_f32_i32_e32 v181, v38
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v30, off offset:36
	scratch_store_b32 off, v29, off offset:32
	scratch_store_b32 off, v24, off offset:20
	scratch_store_b32 off, v23, off offset:16
	scratch_store_b32 off, v22, off offset:12
	scratch_store_b32 off, v21, off offset:8
	scratch_store_b32 off, v20, off offset:4
	scratch_store_b32 off, v19, off
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v20, 0
	v_mov_b32_e32 v19, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v36, s11 :: v_dual_add_nc_u32 v23, s14, v229
	v_dual_mov_b32 v35, s10 :: v_dual_add_nc_u32 v24, s14, v230
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[19:22], v23
	ds_load_b128 v[45:48], v23 offset:4096
	ds_load_b128 v[71:74], v24 offset:4096
	ds_load_b128 v[151:154], v24
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v34, s9 :: v_dual_mov_b32 v33, s8
	v_dual_mov_b32 v32, s7 :: v_dual_mov_b32 v31, s6
	v_dual_mov_b32 v30, s5 :: v_dual_mov_b32 v29, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[19:22], v[13:16], v[29:36] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[45:48], v[13:16], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[19:22], v[9:12], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[29:36], v[45:48], v[9:12], v[29:36] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[151:154], v[5:8], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[71:74], v[5:8], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[151:154], v[1:4], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[29:36], v[71:74], v[1:4], v[29:36] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v199, v39
	v_cvt_f32_i32_e32 v200, v40
	v_cvt_f32_i32_e32 v196, v41
	v_cvt_f32_i32_e32 v197, v42
	v_cvt_f32_i32_e32 v189, v43
	v_cvt_f32_i32_e32 v192, v44
	v_cvt_f32_i32_e32 v190, v123
	v_cvt_f32_i32_e32 v193, v124
	v_cvt_f32_i32_e32 v195, v125
	v_cvt_f32_i32_e32 v198, v126
	v_cvt_f32_i32_e32 v187, v127
	v_cvt_f32_i32_e32 v188, v128
	v_cvt_f32_i32_e32 v191, v129
	v_cvt_f32_i32_e32 v194, v130
	v_cvt_f32_i32_e32 v207, v143
	v_cvt_f32_i32_e32 v208, v144
	v_cvt_f32_i32_e32 v204, v145
	v_cvt_f32_i32_e32 v205, v146
	v_cvt_f32_i32_e32 v202, v147
	v_cvt_f32_i32_e32 v203, v148
	v_cvt_f32_i32_e32 v146, v149
	v_cvt_f32_i32_e32 v147, v150
	v_cvt_f32_i32_e32 v100, v29
	v_cvt_f32_i32_e32 v253, v30
	v_cvt_f32_i32_e32 v254, v31
	v_cvt_f32_i32_e32 v255, v32
	v_cvt_f32_i32_e32 v21, v33
	v_cvt_f32_i32_e32 v22, v34
	v_cvt_f32_i32_e32 v19, v35
	v_cvt_f32_i32_e32 v20, v36
	v_cvt_f32_i32_e32 v182, v37
	v_cvt_f32_i32_e32 v201, v38
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
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s0, s1
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s34
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v157, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v156, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	v_dual_mov_b32 v227, 0 :: v_dual_add_nc_u32 v232, s35, v0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add3_u32 v4, 0, v26, v27
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v5, v142, s0, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v6, v232, s4, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_and_b32_e32 v3, 28, v28
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v22, off offset:44
	scratch_store_b32 off, v21, off offset:40
	scratch_store_b32 off, v20, off offset:28
	scratch_store_b32 off, v19, off offset:24
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v209, v4, v3
	v_dual_cndmask_b32 v3, 0x80000000, v5 :: v_dual_cndmask_b32 v4, 0x80000000, v6
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v206, 0, v25
	v_dual_mov_b32 v228, 0 :: v_dual_add_nc_u32 v9, s45, v17
	v_dual_mov_b32 v213, 0 :: v_dual_add_nc_u32 v10, s45, v18
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v145, 0
	v_mov_b32_e32 v144, 0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v138, 0
	v_mov_b32_e32 v140, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v231, v1, s[12:15], 0 offen
	buffer_load_u16 v252, v3, s[12:15], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v209, v2 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v1, v4, s[28:31], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v2, 0, 1, s3
	v_mov_b32_e32 v222, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[25:28], v206 offset:34816
	ds_load_b128 v[17:20], v206 offset:34832
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[5:8], v206 offset:35328
	ds_load_b128 v[1:4], v206 offset:35344
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v209, v11 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[41:44], v9
	ds_load_b128 v[37:40], v9 offset:512
	ds_load_b128 v[45:48], v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[33:36], v10 offset:512
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v9, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v9, s46, v229
	v_add_nc_u32_e32 v10, s46, v230
	ds_load_b128 v[21:24], v9
	ds_load_b128 v[29:32], v9 offset:4096
	ds_load_b128 v[121:124], v10 offset:4096
	ds_load_b128 v[125:128], v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v16, s11 :: v_dual_mov_b32 v13, s8
	v_dual_mov_b32 v15, s10 :: v_dual_mov_b32 v14, s9
	v_dual_mov_b32 v12, s7 :: v_dual_mov_b32 v11, s6
	v_dual_mov_b32 v10, s5 :: v_dual_mov_b32 v9, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[148:155], v[21:24], v[41:44], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[158:165], v[29:32], v[41:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[233:240], v[21:24], v[37:40], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[29:32], v[37:40], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[148:155], v[125:128], v[45:48], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[121:124], v[45:48], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[233:240], v[125:128], v[33:36], v[233:240] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[121:124], v[33:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v213, v150
	v_cvt_f32_i32_e32 v214, v151
	v_cvt_f32_i32_e32 v211, v152
	v_cvt_f32_i32_e32 v212, v153
	v_cvt_f32_i32_e32 v215, v154
	v_cvt_f32_i32_e32 v216, v155
	v_cvt_f32_i32_e32 v217, v158
	v_cvt_f32_i32_e32 v218, v159
	v_cvt_f32_i32_e32 v221, v160
	v_cvt_f32_i32_e32 v222, v161
	v_cvt_f32_i32_e32 v219, v162
	v_cvt_f32_i32_e32 v220, v163
	v_cvt_f32_i32_e32 v223, v164
	v_cvt_f32_i32_e32 v224, v165
	v_cvt_f32_i32_e32 v225, v233
	v_cvt_f32_i32_e32 v226, v234
	v_cvt_f32_i32_e32 v161, v235
	v_cvt_f32_i32_e32 v160, v236
	v_cvt_f32_i32_e32 v155, v237
	v_cvt_f32_i32_e32 v154, v238
	v_cvt_f32_i32_e32 v151, v239
	v_cvt_f32_i32_e32 v150, v240
	v_cvt_f32_i32_e32 v145, v9
	v_cvt_f32_i32_e32 v144, v10
	v_cvt_f32_i32_e32 v138, v11
	v_cvt_f32_i32_e32 v140, v12
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v11, v14
	v_cvt_f32_i32_e32 v10, v15
	v_cvt_f32_i32_e32 v9, v16
	v_cvt_f32_i32_e32 v227, v148
	v_cvt_f32_i32_e32 v228, v149
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v12, off offset:60
	scratch_store_b32 off, v11, off offset:56
	scratch_store_b32 off, v10, off offset:52
	scratch_store_b32 off, v9, off offset:48
	ds_load_b128 v[29:32], v206 offset:34816
	ds_load_b128 v[21:24], v206 offset:34832
	ds_load_b128 v[13:16], v206 offset:35328
	ds_load_b128 v[9:12], v206 offset:35344
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v152, 0
	v_mov_b32_e32 v153, 0
	v_mov_b32_e32 v141, 0
	v_mov_b32_e32 v143, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	v_add_nc_u32_e32 v121, s44, v229
	v_add_nc_u32_e32 v71, s44, v230
	ds_load_b128 v[129:132], v121 offset:4096
	ds_load_b128 v[133:136], v121
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_mov_b32_e32 v128, s11
	.loc	1 356 31                        ; generate_amdgcn.py:356:31
	ds_load_b128 v[162:165], v71 offset:4096
	ds_load_b128 v[71:74], v71
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v127, s10 :: v_dual_mov_b32 v124, s7
	v_dual_mov_b32 v126, s9 :: v_dual_mov_b32 v125, s8
	v_dual_mov_b32 v122, s5 :: v_dual_mov_b32 v123, s6
	v_mov_b32_e32 v121, s4
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[242:249], v[129:132], v[41:44], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[234:241], v[133:136], v[41:44], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[242:249], v[162:165], v[45:48], v[242:249] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[234:241], v[71:74], v[45:48], v[234:241] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[133:136], v[37:40], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[129:132], v[37:40], v[121:128] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v244, v244
	v_cvt_f32_i32_e32 v210, v234
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[71:74], v[33:36], v[41:48] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v233, v235
	v_wmma_i32_16x16x16_iu8 v[121:128], v[162:165], v[33:36], v[121:128] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v236, v236
	v_cvt_f32_i32_e32 v237, v237
	v_cvt_f32_i32_e32 v234, v238
	v_cvt_f32_i32_e32 v235, v239
	v_cvt_f32_i32_e32 v238, v240
	v_cvt_f32_i32_e32 v239, v241
	v_cvt_f32_i32_e32 v240, v242
	v_cvt_f32_i32_e32 v241, v243
	v_cvt_f32_i32_e32 v245, v245
	v_cvt_f32_i32_e32 v242, v246
	v_cvt_f32_i32_e32 v243, v247
	v_cvt_f32_i32_e32 v246, v248
	v_cvt_f32_i32_e32 v247, v249
	v_cvt_f32_i32_e32 v248, v41
	v_cvt_f32_i32_e32 v249, v42
	v_cvt_f32_i32_e32 v250, v43
	v_cvt_f32_i32_e32 v251, v44
	v_cvt_f32_i32_e32 v164, v45
	v_cvt_f32_i32_e32 v165, v46
	v_cvt_f32_i32_e32 v162, v47
	v_cvt_f32_i32_e32 v163, v48
	v_cvt_f32_i32_e32 v158, v121
	v_cvt_f32_i32_e32 v159, v122
	v_cvt_f32_i32_e32 v152, v123
	v_cvt_f32_i32_e32 v153, v124
	v_cvt_f32_i32_e32 v148, v125
	v_cvt_f32_i32_e32 v149, v126
	v_cvt_f32_i32_e32 v141, v127
	v_cvt_f32_i32_e32 v143, v128
.LBB0_16:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s17, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s17, s0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s33, s33, s27
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 7
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v134, s27, v85
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s0, s1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s34
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(4)
	v_add_lshl_u32 v33, v157, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v34, v156, s1, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v35, v142, s0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v142.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_mov_b16_e64 v142.h, v252.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e64 v229.h, v142.l
	v_mov_b16_e64 v230.h, v142.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v34, v34, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v231.h, v142.l
	v_mov_b16_e64 v156.h, v142.l
	v_mov_b16_e64 v157.h, v142.l
	v_mov_b16_e64 v252.h, v142.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v36, v26, v142
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v45, v22, v142
	v_mul_f32_e32 v46, v21, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v36, v36, v186, v118
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v45, v45, v203, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, v46, v202, v111
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v118, v118, v36, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v112, v112, v45, s2
	v_cndmask_b32_e64 v111, v111, v46, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v39, v33, s[12:15], 0 offen
	buffer_load_u16 v38, v35, s[12:15], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v33, v232, s1, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v209, v34 offset:34816
	s_waitcnt lgkmcnt(0)
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_barrier
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v232.h, v142.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v37, v33, s[28:31], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v33, 0xf0, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v34, 1, v33
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v33.h, v231.l
	v_mov_b16_e64 v33.l, v142.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v35, v29, v142
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v40, v25, v142
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v133, s33, s26, v34
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v30, v142
	v_dual_mul_f32 v41, v32, v142 :: v_dual_mul_f32 v26, v26, v33
	v_dual_mul_f32 v42, v31, v142 :: v_dual_mul_f32 v29, v29, v33
	v_mul_f32_e32 v30, v30, v33
	v_mul_f32_e32 v32, v32, v33
	v_mul_f32_e32 v31, v31, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v43, v28, v142 :: v_dual_mul_f32 v22, v22, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v29, v29, v182, v75
	v_fma_f32 v30, v30, v201, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v31, v31, v199, v106
	v_fma_f32 v32, v32, v200, v107
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v44, v27, v142 :: v_dual_mul_f32 v25, v25, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v110, v110, v30, s2
	v_cndmask_b32_e64 v75, v75, v29, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v107, v107, v32, s2
	v_cndmask_b32_e64 v106, v106, v31, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[29:32], v206 offset:34816
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v42, v42, v204, v115
	v_fma_f32 v41, v41, v205, v116
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v44, v183, v113
	v_fma_f32 v43, v43, v184, v114
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v27, v27, v33
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v21, v21, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v25, v25, v180, v108
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v116, v116, v41, s2
	v_cndmask_b32_e64 v115, v115, v42, s2
	v_cndmask_b32_e64 v114, v114, v43, s2
	v_cndmask_b32_e64 v113, v113, v44, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[41:44], v206 offset:34832
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v108, v25, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v28, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v35, v35, v207, v119
	v_fma_f32 v34, v34, v208, v120
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v40, v185, v117
	v_fma_f32 v26, v26, v181, v109
	v_fma_f32 v27, v27, v178, v104
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v119, v119, v35, s2
	v_cndmask_b32_e64 v120, v120, v34, s2
	v_cndmask_b32_e64 v117, v117, v40, s2
	v_cndmask_b32_e64 v40, v109, v26, s2
	v_cndmask_b32_e64 v104, v104, v27, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v22, v22, v197, v103
	s_mov_b32 s26, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v103, v22, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v71, v24, v33 :: v_dual_lshlrev_b32 v108, 16, v39
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v21, v21, v196, v102
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v47, v18, v33
	v_mul_f32_e32 v48, v17, v33
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v72, v23, v33 :: v_dual_mul_f32 v39, v29, v108
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v73, v20, v33
	v_mul_f32_e32 v74, v19, v33
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v85, v14, v33
	v_mul_f32_e32 v121, v13, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v122, v6, v33
	v_mul_f32_e32 v123, v5, v33
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v124, v16, v33
	v_mul_f32_e32 v125, v15, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v126, v8, v33
	v_mul_f32_e32 v127, v7, v33
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v128, v10, v33
	v_mul_f32_e32 v129, v9, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v130, v2, v33
	v_mul_f32_e32 v131, v1, v33
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v132, v12, v33
	v_mul_f32_e32 v135, v11, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v136, v4, v33
	v_mul_f32_e32 v33, v3, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v102, v102, v21, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v38
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v38, v30, v108
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v71, v71, v192, v98
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v28, v179, v105
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v72, v72, v189, v97
	v_fma_f32 v135, v135, v191, v78
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v127, v127, v176, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v98, v98, v71, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v71, v31, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v48, v48, v166, v99
	v_fma_f32 v166, v33, v172, v76
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[33:36], v206 offset:35328
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v105, v28, s2
	v_cndmask_b32_e64 v97, v97, v72, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[25:28], v206 offset:35344
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v72, v42, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v73, v73, v173, v96
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v99, v99, v48, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v32, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v47, v47, v167, v101
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v132, v132, v194, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v96, v96, v73, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v73, v41, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v74, v74, v170, v95
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v101, v47, s2
	v_cndmask_b32_e64 v105, v78, v135, s2
	v_cndmask_b32_e64 v78, v76, v166, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v76, v43, v108
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v121, v121, v190, v92
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v95, v95, v74, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v74, v44, v108
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v85, v85, v193, v94
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v136, v136, v175, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v92, v92, v121, s2
	v_cndmask_b32_e64 v103, v79, v132, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v79, v34, v108
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v124, v124, v198, v88
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v85, v94, v85, s2
	v_cndmask_b32_e64 v94, v84, v127, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v121, v36, v108
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v128, v128, v188, v83
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v84, v31, v21
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v39, v227, v45
	v_fma_f32 v39, v48, v214, v46
	v_fma_f32 v48, v72, v212, v47
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v88, v88, v124, s2
	v_cndmask_b32_e64 v101, v83, v128, s2
	v_cndmask_b32_e64 v77, v77, v136, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v109, v33, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v122, v122, v174, v90
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v124, v25, v108
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v125, v125, v195, v87
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v83, v32, v21
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v32, v38, v228, v40
	v_fma_f32 v38, v71, v213, v104
	v_fma_f32 v127, v73, v211, v99
	v_fma_f32 v128, v74, v216, v96
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v132, v45, v31, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_store_b32 v209, v37 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[71:74], v206 offset:34816
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v135, v46, v39, s3
	v_cndmask_b32_e64 v136, v47, v48, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_load_b128 v[45:48], v206 offset:34832
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v90, v90, v122, s2
	v_cndmask_b32_e64 v87, v87, v125, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v122, v35, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v123, v123, v171, v89
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v125, v28, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v130, v130, v169, v81
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v30, v21
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v79, v79, v218, v90
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v89, v123, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v123, v26, v108
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v81, v81, v130, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v126, v126, v177, v86
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v90, v90, v79, s3
	v_cndmask_b32_e64 v104, v104, v38, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v76, v76, v215, v95
	v_fma_f32 v123, v123, v220, v81
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v86, v126, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v126, v27, v108
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v129, v129, v187, v82
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v125, v125, v224, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v81, v81, v123, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v123, v45, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v130, v30, v226, v118
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v82, v82, v129, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v109, v109, v217, v89
	v_fma_f32 v122, v122, v221, v94
	v_fma_f32 v121, v121, v222, v86
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v118, v130, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v118, v74, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v131, v131, v168, v80
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v95, v95, v76, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v126, v126, v223, v78
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v89, v109, s3
	v_cndmask_b32_e64 v109, v86, v121, s3
	v_cndmask_b32_e64 v80, v80, v131, s2
	v_cndmask_b32_e64 v131, v40, v32, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_load_b128 v[37:40], v206 offset:35328
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v29, v29, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v94, v94, v122, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v124, v124, v219, v80
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v86, v72, v108
	v_mul_f32_e32 v122, v46, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v129, v29, v225, v117
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_load_b128 v[29:32], v206 offset:35344
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v80, v124, s3
	v_cndmask_b32_e64 v80, v77, v125, s3
	v_cndmask_b32_e64 v99, v99, v127, s3
	v_cndmask_b32_e64 v77, v117, v129, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v117, v71, v108
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v96, v96, v128, s3
	v_cndmask_b32_e64 v78, v78, v126, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v121, v73, v108
	v_mul_f32_e32 v124, v48, v108
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v117, v117, v210, v75
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v125, v47, v108 :: v_dual_mul_f32 v72, v72, v21
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v126, v38, v108
	v_mul_f32_e32 v127, v37, v108
	v_mul_f32_e32 v128, v40, v108
	v_dual_mul_f32 v129, v39, v108 :: v_dual_mul_f32 v74, v74, v21
	v_mul_f32_e32 v73, v73, v21
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v86, v86, v233, v110
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v130, v30, v108
	v_dual_mul_f32 v166, v29, v108 :: v_dual_mul_f32 v71, v71, v21
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v118, v118, v237, v107
	v_fma_f32 v123, v123, v234, v102
	v_fma_f32 v122, v122, v235, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v75, v117, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v167, v32, v108
	v_mul_f32_e32 v108, v31, v108
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v124, v124, v239, v98
	v_fma_f32 v126, v126, v241, v85
	v_fma_f32 v129, v129, v244, v87
	v_fma_f32 v128, v128, v245, v88
	v_fma_f32 v166, v166, v242, v82
	v_fma_f32 v108, v108, v246, v105
	v_fma_f32 v73, v73, v250, v115
	v_fma_f32 v74, v74, v251, v116
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v110, v110, v86, s3
	v_cndmask_b32_e64 v107, v107, v118, s3
	v_cndmask_b32_e64 v117, v22, v122, s3
	v_cndmask_b32_e64 v102, v102, v123, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v125, v125, v238, v97
	v_fma_f32 v127, v127, v240, v92
	v_fma_f32 v72, v72, v249, v120
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v98, v98, v124, s3
	v_cndmask_b32_e64 v85, v85, v126, s3
	v_cndmask_b32_e64 v88, v88, v128, s3
	v_cndmask_b32_e64 v118, v87, v129, s3
	v_cndmask_b32_e64 v82, v82, v166, s3
	v_cndmask_b32_e64 v105, v105, v108, s3
	v_cndmask_b32_e64 v87, v116, v74, s3
	v_cndmask_b32_e64 v86, v115, v73, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v75
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v167, v167, v247, v103
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v73, 0xbfb8aa3b, v110 :: v_dual_mul_f32 v108, 0xbfb8aa3b, v107
	v_dual_mul_f32 v115, 0xbfb8aa3b, v102 :: v_dual_mul_f32 v116, 0xbfb8aa3b, v117
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v121, v121, v236, v106
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v97, v97, v125, s3
	v_cndmask_b32_e64 v92, v92, v127, s3
	v_cndmask_b32_e64 v103, v103, v167, s3
	v_cndmask_b32_e64 v72, v120, v72, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v120, 0xbfb8aa3b, v98
	v_dual_mul_f32 v122, 0xbfb8aa3b, v85 :: v_dual_mul_f32 v123, 0xbfb8aa3b, v118
	v_dual_mul_f32 v124, 0xbfb8aa3b, v88 :: v_dual_mul_f32 v125, 0xbfb8aa3b, v82
	v_dual_mul_f32 v127, 0xbfb8aa3b, v105 :: v_dual_mul_f32 v128, 0xbfb8aa3b, v103
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v108
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v116
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v130, v130, v243, v101
	v_fma_f32 v71, v71, v248, v119
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v106, v106, v121, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v121, 0xbfb8aa3b, v92
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	v_cndmask_b32_e64 v108, 0, 0x42800000, s1
	v_cndmask_b32_e64 v116, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v115
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v120
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v122
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v123
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v125
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v127
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v101, v101, v130, s3
	v_cndmask_b32_e64 v71, v119, v71, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v74, 0xbfb8aa3b, v106 :: v_dual_mul_f32 v119, 0xbfb8aa3b, v97
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	v_cndmask_b32_e64 v115, 0, 0x42800000, s6
	v_cndmask_b32_e64 v120, 0, 0x42800000, s7
	v_cndmask_b32_e64 v122, 0, 0x42800000, s9
	v_cndmask_b32_e64 v123, 0, 0x42800000, s12
	v_cndmask_b32_e64 v125, 0, 0x42800000, s14
	v_cndmask_b32_e64 v127, 0, 0x42800000, s16
	v_dual_fmac_f32 v108, 0xbfb8aa3b, v107 :: v_dual_fmac_f32 v115, 0xbfb8aa3b, v102
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v116, 0xbfb8aa3b, v117 :: v_dual_fmac_f32 v123, 0xbfb8aa3b, v118
	v_dual_mul_f32 v126, 0xbfb8aa3b, v101 :: v_dual_mul_f32 v129, 0xbfb8aa3b, v71
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v74
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v119
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v121
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v73, 0xbfb8aa3b, v110 :: v_dual_fmac_f32 v22, 0xbfb8aa3b, v75
	v_dual_fmac_f32 v120, 0xbfb8aa3b, v98 :: v_dual_fmac_f32 v127, 0xbfb8aa3b, v105
	v_dual_fmac_f32 v122, 0xbfb8aa3b, v85 :: v_dual_fmac_f32 v125, 0xbfb8aa3b, v82
	v_exp_f32_e32 v108, v108
	v_exp_f32_e32 v116, v116
	v_dual_mul_f32 v130, 0xbfb8aa3b, v72 :: v_dual_mul_f32 v167, 0xbfb8aa3b, v87
	v_cndmask_b32_e64 v74, 0, 0x42800000, s4
	v_cndmask_b32_e64 v119, 0, 0x42800000, s8
	v_cndmask_b32_e64 v121, 0, 0x42800000, s10
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v126
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v128
	v_cndmask_b32_e64 v170, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v172, 0, 0xffffffc0, s5
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v125, v125
	v_exp_f32_e32 v127, v127
	v_dual_mul_f32 v166, 0xbfb8aa3b, v86 :: v_dual_fmac_f32 v119, 0xbfb8aa3b, v97
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v124
	v_cndmask_b32_e64 v126, 0, 0x42800000, s13
	v_cndmask_b32_e64 v128, 0, 0x42800000, s15
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v167
	v_cndmask_b32_e64 v168, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v74, 0xbfb8aa3b, v106 :: v_dual_fmac_f32 v121, 0xbfb8aa3b, v92
	v_cndmask_b32_e64 v181, 0, 0xffffffc0, s14
	v_cndmask_b32_e64 v183, 0, 0xffffffc0, s16
	v_exp_f32_e32 v122, v122
	v_ldexp_f32 v108, v108, v170
	v_ldexp_f32 v116, v116, v172
	v_cndmask_b32_e64 v124, 0, 0x42800000, s11
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v130
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v129
	v_cndmask_b32_e64 v167, 0, 0x42800000, s19
	v_cndmask_b32_e64 v176, 0, 0xffffffc0, s9
	v_fmac_f32_e32 v126, 0xbfb8aa3b, v101
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v115, v115
	v_exp_f32_e32 v119, v119
	v_exp_f32_e32 v121, v121
	v_ldexp_f32 v73, v73, v168
	v_fmac_f32_e32 v128, 0xbfb8aa3b, v103
	v_ldexp_f32 v125, v125, v181
	v_ldexp_f32 v127, v127, v183
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v108, 1.0, v108
	v_add_f32_e32 v116, 1.0, v116
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v130, 0, 0x42800000, s17
	v_cndmask_b32_e64 v129, 0, 0x42800000, s18
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v166
	v_cndmask_b32_e64 v169, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v171, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v173, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v175, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v177, 0, 0xffffffc0, s10
	v_dual_fmac_f32 v124, 0xbfb8aa3b, v88 :: v_dual_fmac_f32 v129, 0xbfb8aa3b, v71
	v_fmac_f32_e32 v167, 0xbfb8aa3b, v87
	v_exp_f32_e32 v123, v123
	v_exp_f32_e32 v126, v126
	v_ldexp_f32 v122, v122, v176
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v73, 1.0, v73
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v128, v128
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v125, 1.0, v125
	v_add_f32_e32 v127, 1.0, v127
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v172, null, v108, v108, v107
	v_div_scale_f32 v176, null, v116, v116, v117
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v166, 0, 0x42800000, s20
	v_cndmask_b32_e64 v179, 0, 0xffffffc0, s12
	v_cndmask_b32_e64 v180, 0, 0xffffffc0, s13
	v_cndmask_b32_e64 v182, 0, 0xffffffc0, s15
	v_exp_f32_e32 v120, v120
	v_exp_f32_e32 v124, v124
	v_exp_f32_e32 v167, v167
	v_ldexp_f32 v22, v22, v169
	v_ldexp_f32 v74, v74, v171
	v_ldexp_f32 v115, v115, v173
	v_fmac_f32_e32 v130, 0xbfb8aa3b, v72
	v_ldexp_f32 v119, v119, v175
	v_ldexp_f32 v121, v121, v177
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v168, null, v73, v73, v110
	v_rcp_f32_e32 v203, v172
	v_rcp_f32_e32 v205, v176
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v174, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v178, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v186, 0, 0xffffffc0, s19
	v_dual_fmac_f32 v166, 0xbfb8aa3b, v86 :: v_dual_add_f32 v119, 1.0, v119
	v_ldexp_f32 v123, v123, v179
	v_ldexp_f32 v126, v126, v180
	v_ldexp_f32 v128, v128, v182
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_add_f32 v121, 1.0, v121
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v74, 1.0, v74 :: v_dual_add_f32 v123, 1.0, v123
	v_add_f32_e32 v115, 1.0, v115
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v130, v130
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v201, v168
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v184, 0, 0xffffffc0, s17
	v_ldexp_f32 v120, v120, v174
	v_ldexp_f32 v124, v124, v178
	v_ldexp_f32 v167, v167, v186
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v122, 1.0, v122
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v174, null, v74, v74, v106
	v_div_scale_f32 v182, null, v119, v119, v97
	v_div_scale_f32 v186, null, v121, v121, v92
	v_fma_f32 v223, -v172, v203, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v126, 1.0, v126
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v225, -v176, v205, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v128, 1.0, v128
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v130, v130, v184
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v167, 1.0, v167
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v178, null, v115, v115, v102
	v_div_scale_f32 v184, null, v122, v122, v85
	v_rcp_f32_e32 v204, v174
	v_rcp_f32_e32 v208, v182
	v_rcp_f32_e32 v210, v186
	v_fma_f32 v221, -v168, v201, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v124, 1.0, v124 :: v_dual_fmac_f32 v203, v223, v203
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v192, null, v126, v126, v101
	v_fmac_f32_e32 v205, v225, v205
	v_div_scale_f32 v195, null, v128, v128, v103
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v129, v129
	v_exp_f32_e32 v166, v166
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v170, null, v22, v22, v75
	v_div_scale_f32 v194, null, v125, v125, v82
	v_rcp_f32_e32 v206, v178
	v_rcp_f32_e32 v209, v184
	v_rcp_f32_e32 v213, v192
	v_rcp_f32_e32 v215, v195
	v_fmac_f32_e32 v201, v221, v201
	v_div_scale_f32 v188, null, v124, v124, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v185, 0, 0xffffffc0, s18
	v_cndmask_b32_e64 v187, 0, 0xffffffc0, s20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v196, null, v127, v127, v105
	v_rcp_f32_e32 v202, v170
	v_rcp_f32_e32 v211, v188
	v_rcp_f32_e32 v214, v194
	v_fma_f32 v224, -v174, v204, 1.0
	v_fma_f32 v223, -v182, v208, 1.0
	v_fma_f32 v225, -v186, v210, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v129, v129, v185
	v_ldexp_f32 v166, v166, v187
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v175, s7, v106, v74, v106
	v_rcp_f32_e32 v216, v196
	v_fma_f32 v221, -v178, v206, 1.0
	v_fmac_f32_e32 v210, v225, v210
	v_fma_f32 v225, -v195, v215, 1.0
	v_fmac_f32_e32 v208, v223, v208
	v_fma_f32 v223, -v192, v213, 1.0
	v_fmac_f32_e32 v204, v224, v204
	v_fma_f32 v224, -v184, v209, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v120, 1.0, v120 :: v_dual_add_f32 v129, 1.0, v129
	v_add_f32_e32 v166, 1.0, v166
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v169, vcc_lo, v110, v73, v110
	v_fma_f32 v222, -v170, v202, 1.0
	v_fmac_f32_e32 v206, v221, v206
	v_fma_f32 v221, -v188, v211, 1.0
	v_fmac_f32_e32 v209, v224, v209
	v_fma_f32 v224, -v194, v214, 1.0
	v_div_scale_f32 v171, s5, v75, v22, v75
	v_div_scale_f32 v173, s6, v107, v108, v107
	v_div_scale_f32 v198, null, v129, v129, v71
	v_dual_fmac_f32 v202, v222, v202 :: v_dual_fmac_f32 v211, v221, v211
	v_fma_f32 v221, -v196, v216, 1.0
	v_fmac_f32_e32 v214, v224, v214
	v_mul_f32_e32 v224, v169, v201
	v_div_scale_f32 v180, null, v120, v120, v98
	v_div_scale_f32 v200, null, v166, v166, v86
	v_rcp_f32_e32 v218, v198
	v_fmac_f32_e32 v216, v221, v216
	v_fma_f32 v221, -v168, v224, v169
	v_div_scale_f32 v183, s11, v97, v119, v97
	v_rcp_f32_e32 v207, v180
	v_rcp_f32_e32 v220, v200
	v_fmac_f32_e32 v215, v225, v215
	v_fmac_f32_e32 v224, v221, v201
	v_fmac_f32_e32 v213, v223, v213
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v223, -v198, v218, 1.0
	v_div_scale_f32 v190, null, v123, v123, v118
	v_fma_f32 v168, -v168, v224, v169
	v_mul_f32_e32 v169, v173, v203
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v222, -v180, v207, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v130, 1.0, v130
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v221, v171, v202
	v_div_fmas_f32 v168, v168, v201, v224
	v_fma_f32 v201, -v172, v169, v173
	v_fmac_f32_e32 v218, v223, v218
	v_fma_f32 v223, -v200, v220, 1.0
	v_div_scale_f32 v177, s8, v117, v116, v117
	v_div_scale_f32 v199, null, v167, v167, v87
	v_rcp_f32_e32 v212, v190
	v_fmac_f32_e32 v207, v222, v207
	v_div_scale_f32 v197, null, v130, v130, v72
	v_fmac_f32_e32 v220, v223, v220
	v_fma_f32 v223, -v170, v221, v171
	v_rcp_f32_e32 v219, v199
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v217, v197
	v_fmac_f32_e32 v169, v201, v203
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v221, v223, v202
	v_fma_f32 v222, -v190, v212, 1.0
	v_div_scale_f32 v179, s9, v102, v115, v102
	v_fma_f32 v172, -v172, v169, v173
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v170, -v170, v221, v171
	v_mul_f32_e32 v171, v175, v204
	v_fma_f32 v225, -v199, v219, 1.0
	v_fmac_f32_e32 v212, v222, v212
	v_fma_f32 v222, -v197, v217, 1.0
	v_div_fmas_f32 v170, v170, v202, v221
	v_fma_f32 v221, -v174, v171, v175
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v187, s13, v92, v121, v92
	v_div_scale_f32 v189, s4, v88, v124, v88
	v_fmac_f32_e32 v217, v222, v217
	v_dual_mul_f32 v173, v177, v205 :: v_dual_mul_f32 v202, v179, v206
	v_fmac_f32_e32 v171, v221, v204
	v_div_fmas_f32 v169, v172, v203, v169
	v_mul_f32_e32 v203, v183, v208
	v_div_scale_f32 v222, s14, v82, v125, v82
	v_div_scale_f32 v223, s17, v72, v130, v72
	v_fma_f32 v221, -v176, v173, v177
	v_div_fixup_f32 v73, v168, v73, v110
	v_mul_f32_e32 v168, v187, v210
	v_fma_f32 v174, -v174, v171, v175
	v_mul_f32_e32 v175, v189, v211
	v_div_fixup_f32 v107, v169, v108, v107
	v_fma_f32 v169, -v182, v203, v183
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v173, v221, v205
	v_div_fmas_f32 v171, v174, v204, v171
	v_mul_f32_e32 v204, v222, v214
	v_div_fixup_f32 v75, v170, v22, v75
	v_dual_mul_f32 v226, v223, v217 :: v_dual_fmac_f32 v203, v169, v208
	v_fma_f32 v22, -v178, v202, v179
	v_fma_f32 v169, -v188, v175, v189
	v_div_scale_f32 v181, s10, v98, v120, v98
	v_fma_f32 v176, -v176, v173, v177
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v202, v22, v206 :: v_dual_fmac_f32 v175, v169, v211
	v_fma_f32 v169, -v194, v204, v222
	v_div_scale_f32 v185, s12, v85, v122, v85
	v_div_scale_f32 v191, s1, v118, v123, v118
	v_fmac_f32_e32 v219, v225, v219
	v_mul_f32_e32 v172, v181, v207
	v_fmac_f32_e32 v204, v169, v214
	v_fma_f32 v178, -v178, v202, v179
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v221, v191, v212
	v_div_fmas_f32 v173, v176, v205, v173
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v110, v185, v209
	v_fma_f32 v176, -v180, v172, v181
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v179.h, v142.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v182, -v182, v203, v183
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v183.h, v142.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v194, -v194, v204, v222
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v222, v46, v21
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v46, v131, v73
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v73, v178, v206, v202
	v_fma_f32 v22, -v184, v110, v185
	v_div_scale_f32 v225, s15, v103, v128, v103
	v_div_scale_f32 v193, s0, v101, v126, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v73, v73, v115, v102
	v_fmac_f32_e32 v172, v176, v207
	v_fma_f32 v176, -v186, v168, v187
	v_dual_fmac_f32 v110, v22, v209 :: v_dual_mul_f32 v75, v132, v75
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v73, v99, v73
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v180, -v180, v172, v181
	v_div_scale_f32 v224, s16, v105, v127, v105
	v_mul_f32_e32 v177, v225, v215
	v_fma_f32 v22, -v190, v221, v191
	v_dual_fmac_f32 v168, v176, v210 :: v_dual_mul_f32 v107, v135, v107
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v184, -v184, v110, v185
	v_div_fixup_f32 v74, v171, v74, v106
	v_div_fmas_f32 v106, v180, v207, v172
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v170, v224, v216
	v_fmac_f32_e32 v221, v22, v212
	v_fma_f32 v22, -v195, v177, v225
	v_mul_f32_e32 v174, v193, v213
	v_fma_f32 v186, -v186, v168, v187
	v_div_fixup_f32 v116, v173, v116, v117
	v_div_fmas_f32 v117, v182, v208, v203
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v177, v22, v215
	v_div_fmas_f32 v102, v184, v209, v110
	s_mov_b32 vcc_lo, s13
	v_fma_f32 v176, -v192, v174, v193
	v_div_fixup_f32 v98, v106, v120, v98
	v_div_fmas_f32 v106, v186, v210, v168
	v_fma_f32 v188, -v188, v175, v189
	v_div_fixup_f32 v85, v102, v122, v85
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v74, v104, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v92, v106, v121, v92
	v_fmac_f32_e32 v174, v176, v213
	v_fma_f32 v176, -v196, v170, v224
	v_div_scale_f32 v201, s18, v71, v129, v71
	v_div_fmas_f32 v99, v188, v211, v175
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v85, v90, v85
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v229.l, v74.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v170, v176, v216
	v_fma_f32 v190, -v190, v221, v191
	v_div_fixup_f32 v97, v117, v119, v97
	v_div_fixup_f32 v88, v99, v124, v88
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v99, 1, v229
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v196, -v196, v170, v224
	v_div_scale_f32 v224, s5, v87, v167, v87
	v_mul_f32_e32 v108, v201, v218
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v89, v89, v92
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v192, -v192, v174, v193
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v181.h, v142.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v96, v96, v98
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v98, v190, v212, v221
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v22, -v198, v108, v201
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v95, v95, v97
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v97, v192, v213, v174
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v230.l, v107.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v195, -v195, v177, v225
	s_mov_b32 vcc_lo, s14
	v_fma_f32 v169, -v197, v226, v223
	v_div_fixup_f32 v97, v97, v126, v101
	v_fmac_f32_e32 v108, v22, v218
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v231.l, v73.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v90, v194, v214, v204
	s_mov_b32 vcc_lo, s15
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v97, v81, v97
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v198, -v198, v108, v201
	v_dual_mul_f32 v201, v224, v219 :: v_dual_and_b32 v106, 1, v230
	v_div_fmas_f32 v92, v195, v215, v177
	s_mov_b32 vcc_lo, s16
	v_dual_fmac_f32 v226, v169, v217 :: v_dual_and_b32 v101, 1, v231
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s9, v107, v107
	v_add3_u32 v106, v107, v106, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v107, v196, v216, v170
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v156.l, v75.h
	v_cmp_o_f32_e64 s0, v73, v73
	v_add3_u32 v73, v73, v101, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v83, v83, v160, v114
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v101, v107, v127, v105
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v104, v136, v116
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v45, v45, v21 :: v_dual_and_b32 v102, 1, v156
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v176.h, v142.l
	v_cmp_o_f32_e64 s8, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v232.l, v104.h
	v_add3_u32 v75, v75, v102, 0x7fff
	v_mov_b16_e64 v176.l, v95.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v114, v83, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v74, v74
	v_and_b32_e32 v102, 1, v232
	v_add3_u32 v74, v74, v99, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v92, v92, v128, v103
	v_fma_f32 v197, -v197, v226, v223
	v_div_fixup_f32 v98, v98, v123, v118
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v99, v104, v102, 0x7fff
	v_and_b32_e32 v102, 1, v176
	v_cmp_o_f32_e64 s11, v95, v95
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v80, v80, v92
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s17
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v189.h, v142.l
	v_add3_u32 v92, v95, v102, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v95, v78, v101
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v157.l, v46.h
	v_mov_b16_e64 v169.h, v142.l
	v_mov_b16_e64 v169.l, v85.h
	v_cmp_o_f32_e64 s7, v46, v46
	v_mov_b16_e64 v189.l, v95.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v94, v94, v98
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v98, v197, v217, v226
	s_mov_b32 vcc_lo, s18
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v75.l, 0x7fff, v74.h, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v81, v198, v218, v108
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v74, 1, v169
	v_mov_b16_e64 v181.l, v94.h
	v_mov_b16_e64 v205.h, v142.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v82, v90, v125, v82
	v_div_fixup_f32 v71, v81, v129, v71
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v110, 1, v157
	v_add3_u32 v74, v85, v74, 0x7fff
	v_mov_b16_e64 v205.l, v89.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v72, v98, v130, v72
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v71, v77, v71
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v46, v46, v110, 0x7fff
	v_mov_b16_e64 v187.h, v142.l
	v_cndmask_b16 v46.l, 0x7fff, v75.h, s8
	v_cmp_o_f32_e64 s8, v89, v89
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v72, v79, v72 :: v_dual_mul_f32 v41, v41, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s7
	v_cmp_o_f32_e64 s7, v85, v85
	v_and_b32_e32 v85, 1, v181
	v_mov_b16_e64 v252.l, v96.h
	v_cmp_o_f32_e64 s10, v96, v96
	v_mov_b16_e64 v187.l, v80.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v88, v109, v88
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v191.h, v142.l
	v_and_b32_e32 v90, 1, v252
	v_mov_b16_e64 v191.l, v72.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v82, v76, v82
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v76.l, 0x7fff, v73.h, s0
	v_mov_b16_e64 v185.h, v142.l
	v_add3_u32 v90, v96, v90, 0x7fff
	v_and_b32_e32 v96, 1, v205
	v_mov_b16_e64 v193.h, v142.l
	v_mov_b16_e64 v193.l, v71.h
	v_cndmask_b16 v75.h, 0x7fff, v106.h, s9
	v_cndmask_b16 v78.h, 0x7fff, v90.h, s10
	v_add3_u32 v79, v89, v96, 0x7fff
	v_cmp_o_f32_e64 s10, v95, v95
	v_cmp_o_f32_e64 s9, v80, v80
	v_cndmask_b16 v81.h, 0x7fff, v74.h, s7
	v_cmp_o_f32_e64 s7, v72, v72
	v_cndmask_b16 v81.l, 0x7fff, v79.h, s8
	v_and_b32_e32 v79, 1, v187
	v_mov_b16_e64 v179.l, v88.h
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v223, s6, v86, v166, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v79, v80, v79, 0x7fff
	v_and_b32_e32 v73, 1, v179
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v23, v23, v142 :: v_dual_and_b32 v80, 1, v193
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s8, v71, v71
	v_mov_b16_e64 v183.l, v97.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v73, v88, v73, 0x7fff
	v_add3_u32 v71, v71, v80, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v45, v45, v164, v111
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v104, v104
	v_and_b32_e32 v89, 1, v183
	v_cndmask_b16 v77.h, 0x7fff, v73.h, vcc_lo
	v_and_b32_e32 v73, 1, v189
	v_cmp_o_f32_e64 s4, v94, v94
	v_add3_u32 v85, v94, v85, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v111, v45, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v76.h, 0x7fff, v99.h, s1
	v_add3_u32 v73, v95, v73, 0x7fff
	v_cmp_o_f32_e64 s1, v97, v97
	v_cndmask_b16 v77.l, 0x7fff, v85.h, s4
	v_and_b32_e32 v85, 1, v191
	v_mov_b16_e64 v185.l, v82.h
	v_cndmask_b16 v79.l, 0x7fff, v73.h, s10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v73, v84, v161, v113
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v82, v82
	v_add3_u32 v72, v72, v85, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v84, v223, v220
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v88, v97, v89, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v113, v73, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v74, 1, v185
	v_cndmask_b16 v80.h, 0x7fff, v72.h, s7
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v72, v222, v165, v112
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v24, v24, v142 :: v_dual_mul_f32 v47, v47, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v74, v82, v74, 0x7fff
	v_cndmask_b16 v82.h, 0x7fff, v88.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v112, v72, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s5
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v24, v24, v147, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v82.l, 0x7fff, v74.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v74, -v199, v201, v224
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v85, 0xbfb8aa3b, v72
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v80.l, 0x7fff, v71.h, s8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v68, v24, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v48, v48, v21 :: v_dual_mul_f32 v19, v19, v142
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v201, v74, v219
	v_fma_f32 v74, -v200, v84, v223
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v85
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v48, v48, v163, v24
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v18, v18, v142
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v88, -v199, v201, v224
	v_fmac_f32_e32 v84, v74, v220
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v74, 0xbfb8aa3b, v45
	v_cndmask_b32_e64 v85, 0, 0x42800000, s0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v24, v48, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v88, v88, v219, v201
	v_fma_f32 v89, -v200, v84, v223
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v74
	v_fmac_f32_e32 v85, 0xbfb8aa3b, v72
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v87, v88, v167, v87
	v_div_fmas_f32 v84, v89, v220, v84
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v74, 0, 0x42800000, s1
	v_exp_f32_e32 v85, v85
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v18, v18, v139, v70
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v83, v83, v87
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v84, v84, v166, v86
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v45
	v_cndmask_b32_e64 v86, 0, 0xffffffc0, s0
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v87, v17, v142
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v73, v73, v84
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v71, v74
	v_ldexp_f32 v74, v85, v86
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v84.l, v83.h
	v_mov_b16_e64 v84.h, v142.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v70, v18, s2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v74, 1.0, v74
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v23, v23, v146, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v13, v13, v142 :: v_dual_and_b32 v84, 1, v84
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v71, v71, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v74, v74, v72
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v67, v23, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v84, v83, v84, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v71, 1.0, v71
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v83, v85
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v42, v42, v21
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v47, v47, v162, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v17.h, 0x7fff, v84.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v88, null, v71, v71, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v84, v87, v137, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v23, v47, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v42, v42, v154, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v87, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v85, v83, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v84, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v13, v13, v100, v63
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v42, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v37, v37, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v83, v89, v83
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v89, 0xbfb8aa3b, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, vcc_lo, v72, v74, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v88, v87, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v86.l, v73.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v68, v70, v83
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v86.h, v142.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v84, s0, v45, v71, v45
	v_fma_f32 v48, -v85, v68, v70
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v63, v13, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v67, v84, v87 :: v_dual_and_b32 v86, 1, v86
	v_dual_fmac_f32 v68, v48, v83 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v37, v37, v158, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v88, v67, v84
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v41, v41, v155, v69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v85, v68, v70
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v47, v47
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v13, v37, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v67, v48, v87
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v42, v42, v83, v68
	s_mov_b32 vcc_lo, s0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v69, v41, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v88, v67, v84
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v42, v42, v74, v72
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v14, v14, v142
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v20, v20, v142
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v67, v68, v87, v67
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s4
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v18, v18, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s1
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v14, v14, v253, v64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v45, v67, v71, v45
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v23
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v16, v142
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v47, v47, v68
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v20, v93, v66
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v41, v41, v45
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v48
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.l, v18.h
	v_mov_b16_e64 v45.h, v142.l
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v64, v14, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v38, v38, v21 :: v_dual_mul_f32 v15, v15, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v45
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v255, v60
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v42, v42, v48
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v47, v47, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v45, v18, v45, 0x7fff
	v_cmp_o_f32_e64 s0, v18, v18
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v66, v20, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v44, v44, v21 :: v_dual_mul_f32 v5, v5, v142
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v38, v38, v159, v14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v60, v16, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v40, v40, v21 :: v_dual_mul_f32 v9, v9, v142
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v42, v42, v23
	v_rcp_f32_e32 v68, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v44, v150, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v14, v38, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v40, v40, v153, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v70, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v19, v19, v91, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v44, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v86, v73, v86, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v16, v40, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v71, -v48, v68, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v65, v19, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, s1, v23, v42, v23
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v65, -v69, v70, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v17.l, 0x7fff, v86.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v68, v71, v68 :: v_dual_mul_f32 v33, v33, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v13, 0, 0x42800000, s4
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v20, v43, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, vcc_lo, v24, v47, v24
	v_fmac_f32_e32 v70, v65, v70
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v20, v151, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v66, v43, v68
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v39, v39, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v71, v64, v70
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v6, v142
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v19, v20, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v65, -v48, v66, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v41.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v69, v71, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v67.h, v142.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v15, v15, v254, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v66, v65, v68
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v34, v34, v21 :: v_dual_mul_f32 v7, v7, v142
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v71, v38, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v20, -v48, v66, v43
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v37
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v59, v15, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v69, v71, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v67, v41, v67, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v20, v20, v68, v66
	s_mov_b32 vcc_lo, s1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v39, v39, v152, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v38, v38, v70, v71
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v20, v20, v47, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v24, v13
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.h, 0x7fff, v45.h, s0
	v_cmp_o_f32_e64 s0, v41, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v18, v18, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.l, 0x7fff, v67.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v37
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v23, v38, v42, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v20, v24, v20
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v38.h, v142.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v15, v39, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v24, v43
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v43, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_mul_f32 v19, v19, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v23.h, v142.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v8, v142
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v10, v10, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, null, v20, v20, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v19.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v24, v24, v41
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v30, v30, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v41, v42
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v12, v12, v142
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v2, v2, v142 :: v_dual_mul_f32 v25, v25, v21
	v_mul_f32_e32 v26, v26, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v78.l, 0x7fff, v92.h, s11
	v_cndmask_b16 v79.h, 0x7fff, v79.h, s9
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v22, s27, 4, v134
	s_mov_b32 s27, 0x31027000
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v35, v35, v21
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v11, v11, v142
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v1, v1, v142
	v_mul_f32_e32 v3, v3, v142
	v_mul_f32_e32 v4, v4, v142
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v6, v6, v43, v62
	scratch_load_b32 v43, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v62, v6, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v34, v34, v144, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v34, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v5, v5, v43, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v43, -v42, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v61, v5, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v41, v43, v41
	v_div_scale_f32 v43, vcc_lo, v14, v20, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v33, v33, v145, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v47, v43, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v33, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v42, v47, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v40, s1, v37, v24, v37
	v_fmac_f32_e32 v47, v48, v41
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v23.l, v18.h
	v_cmp_o_f32_e64 s0, v18, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v42, v47, v43
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v48
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v34, v41, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v23, v18, v23, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v18, null, v24, v24, v37
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v44, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v15
	v_exp_f32_e32 v41, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v18, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v45, 0xbfb8aa3b, v16 :: v_dual_and_b32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v59, v40, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v19, v38, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v18, v59, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v59, v39, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v18, -v18, v59, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v45
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v18, v18, v44, v59
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v18, v18, v24, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v39, v40
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v39, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.l, 0x7fff, v38.h, vcc_lo
	v_mov_b16_e64 v24.h, v142.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v5, v18
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v19, 1.0, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v14, v34, v20, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.l, v5.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v18, null, v19, v19, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v14, v41, v20
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v20.h, v142.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v33, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v24, 1, v24
	v_mov_b16_e32 v20.l, v6.h
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v24, v5, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v20, 1, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v14, v14, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v18, v33, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v20, v6, v20, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v6, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v37, v34
	v_fmac_f32_e32 v33, v38, v33
	v_div_scale_f32 v38, vcc_lo, v16, v19, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v8, v8, v39, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v34, v37, 1.0
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s1, v15, v14, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v39, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v6, v7, v6, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v58, v8, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v8, v38, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v57, v6, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v18, v8, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v35, v35, v138, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v8, v40, v33
	v_fma_f32 v40, -v34, v41, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v35, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v35, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v18, -v18, v8, v38
	v_fmac_f32_e32 v41, v40, v37
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v8, v18, v33, v8
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v33, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v18, -v34, v41, v39
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v8, v8, v19, v16
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v29, v21
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v36, v36, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v18, v18, v37, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v36, v36, v140, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v14, v18, v14, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.l, 0x7fff, v24.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v24, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v36, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v14.h, v142.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v36, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v7, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.l, v6.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v7, v7
	v_and_b32_e32 v14, 1, v14
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v9, v9, v33, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v55, v9, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v16, v148, v9
	scratch_load_b32 v16, off, off offset:28 ; 4-byte Folded Reload
	v_fma_f32 v10, v10, v35, v56
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v1, v1, v24, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v9, v5, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v10, v56, v10, s2
	v_cndmask_b32_e64 v1, v51, v1, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v15, 0xbfb8aa3b, v5
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v19, v30, v149, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v10, v19, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v7.h
	v_mov_b16_e64 v10.h, v142.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v15, 0, 0x42800000, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v19, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v9, 0xbfb8aa3b, v8 :: v_dual_and_b32 v10, 1, v10
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v7, v10, 0x7fff
	v_add3_u32 v7, v6, v14, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v14, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v9, 0, 0x42800000, s0
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v9, v9
	v_ldexp_f32 v9, v9, v15
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v15, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v18, null, v9, v9, v8
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v12, v12, v16, v54
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v54, v12, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v14, v14, v16
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v31, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, s1, v8, v9, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v2, v2, v19, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v52, v2, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v11, v11, v15, v53
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v15, v32, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v53, v11, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v15, v15, v143, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v16, v16, v141, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v12, v15, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v15, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v16, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v29, 0xbfb8aa3b, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v18, v15, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v15, v30, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, s0
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v33, v31, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v35, -v18, v33, v31
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v35, v15
	v_div_scale_f32 v19, null, v14, v14, v5
	v_div_scale_f32 v32, s4, v5, v14, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v18, v33, v31
	v_rcp_f32_e32 v24, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v29, v34
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v34, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v16, 0xbfb8aa3b, v12 :: v_dual_add_f32 v29, 1.0, v29
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v19, v24, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v12
	v_exp_f32_e32 v16, v16
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v25, v25, v34, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v25, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v24, v30, v24
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v15, v18, v15, v33
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v16, v16, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v30, v32, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v8, v15, v9, v8
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v15, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v19, v30, v32
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v26, v36, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v16, v16, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, v34, v24
	v_div_scale_f32 v34, null, v29, v29, v11
	v_rcp_f32_e32 v36, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v26, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v19, -v19, v30, v32
	v_rcp_f32_e32 v31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v18, v19, v24, v30
	v_fma_f32 v19, -v35, v36, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v5, v18, v14, v5
	v_div_scale_f32 v14, vcc_lo, v12, v16, v12
	v_fmac_f32_e32 v36, v19, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v19, off, off          ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v34, v31, 1.0
	v_div_scale_f32 v18, s0, v11, v29, v11
	v_mul_f32_e32 v9, v14, v36
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v31, v24, v31
	v_mul_f32_e32 v5, v18, v31
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v3, v15, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v15, -v35, v9, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v50, v3, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v9, v15, v36
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v15, v27, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v14, -v35, v9, v14
	v_div_fmas_f32 v9, v14, v36, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v14, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v4, v4, v19, v49
	scratch_load_b32 v19, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v49, v4, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v15, v15, v19, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v15, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v8
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v8, -v34, v5, v18
	v_fmac_f32_e32 v5, v8, v31
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v28, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v18, -v34, v5, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v8, v14, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v14.h, v142.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v5, v18, v31, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v8, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v9, v16, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v1.h
	v_mov_b16_e64 v9.h, v142.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v5, v29, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v8.h, v142.l
	v_and_b32_e32 v6, 1, v9
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.l, v2.h
	v_cndmask_b16 v10.l, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v6, v1, v6, 0x7fff
	v_mov_b16_e32 v8.l, v3.h
	v_and_b32_e32 v5, 1, v14
	v_cmp_o_f32_e64 s2, v3, v3
	v_mov_b32_e32 v11, 0x7632
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v7, 1, v8
	v_add3_u32 v5, v2, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v3, v7, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s0
	s_mov_b32 s0, 0x76543210
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_cndmask_b32_e32 v7, v81, v82, vcc_lo
	v_mov_b16_e32 v9.l, v4.h
	v_cmp_o_f32_e64 s1, v4, v4
	v_dual_cndmask_b32 v6, v82, v81 :: v_dual_cndmask_b32 v11, 0x3276, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v5, v75, v78 :: v_dual_and_b32 v8, 1, v9
	v_dual_mov_b32 v9, 0x5410 :: v_dual_cndmask_b32 v12, v77, v79
	v_lshl_or_b32 v11, v11, 8, v11
	v_dual_cndmask_b32 v14, v13, v80 :: v_dual_cndmask_b32 v15, v23, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v2, v4, v8, 0x7fff
	v_cndmask_b32_e32 v9, 0x1054, v9, vcc_lo
	v_cndmask_b32_e32 v8, v79, v77, vcc_lo
	v_dual_cndmask_b32 v13, v80, v13 :: v_dual_cndmask_b32 v16, v17, v23
	v_cndmask_b32_e32 v17, v3, v20, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_lshl_or_b32 v9, v9, 8, v9
	v_dual_cndmask_b32 v2, v46, v76 :: v_dual_and_b32 v11, 0x760076, v11
	v_cndmask_b32_e32 v3, v20, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v18, v0, v10 :: v_dual_and_b32 v9, 0x540054, v9
	v_cndmask_b32_e32 v0, v10, v0, vcc_lo
	v_lshl_or_b32 v10, v11, 4, v11
	v_dual_cndmask_b32 v1, v76, v46 :: v_dual_cndmask_b32 v4, v78, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v9, v9, 4, v9
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v19, 0x5040504, v9
	v_and_b32_e32 v20, 0x7060706, v10
	v_permlanex16_b32 v13, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v19
	v_perm_b32 v1, v2, v1, v20
	v_perm_b32 v2, v5, v4, v19
	v_perm_b32 v3, v5, v4, v20
	v_perm_b32 v4, v7, v6, v19
	v_perm_b32 v5, v7, v6, v20
	v_perm_b32 v6, v11, v8, v19
	v_perm_b32 v7, v11, v8, v20
	v_perm_b32 v8, v12, v14, v19
	v_perm_b32 v9, v12, v14, v20
	v_perm_b32 v10, v13, v15, v19
	v_perm_b32 v11, v13, v15, v20
	v_perm_b32 v12, v16, v17, v19
	v_perm_b32 v13, v16, v17, v20
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v16, v133, v134, 1
	v_add_lshl_u32 v17, v133, v22, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v14, v21, v18, v19
	v_perm_b32 v15, v21, v18, v20
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v16, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v17, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v17, s[24:27], 0 offen offset:256
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 68
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
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 68
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16416
; TotalNumSgprs: 50
; NumVgprs: 256
; ScratchSize: 68
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 50
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 68
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc128_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 16
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
