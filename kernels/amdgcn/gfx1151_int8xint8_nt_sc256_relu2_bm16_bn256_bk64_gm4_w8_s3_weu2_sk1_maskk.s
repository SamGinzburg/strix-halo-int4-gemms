	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s30, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v17, 15, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v8, 4, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v4, 2, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v2, 2, v17
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v5, 0xc0, v4
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
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mul_lo_u32 v10, s30, v5
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v9, s30, v3
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v1, 48, v8
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
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
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s6, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s17, s6
	s_sub_i32 s18, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v6, s17
	v_readfirstlane_b32 s17, v6
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[6:7], null, s30, v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v7, s30, 6, v6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s17, s17
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v11, s30, 7, v6
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	.loc	1 297 13 is_stmt 1              ; generate_amdgcn.py:297:13
	s_mul_i32 s18, s18, s17
	s_mov_b64 s[28:29], s[14:15]
	s_mul_hi_u32 s4, s17, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s17, s17, s4
	s_mul_hi_u32 s4, s5, s17
	s_xor_b32 s17, s2, s7
	s_mul_i32 s19, s4, s6
	s_ashr_i32 s18, s17, 31
	s_sub_i32 s5, s5, s19
	s_add_i32 s17, s4, 1
	s_sub_i32 s19, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s17, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s17, s4, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s17, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s31, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s6, s4, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s3, s30, 0xff
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s17, s6, s18
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s4, s3, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s19, s17, s7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v12, s31, v2
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s19
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v13, s31, v1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s4, s4, 24
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s16
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s30, 63
.Ltmp19:
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s17, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s7, s3, s4
.Ltmp21:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s26, s2, 4
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s4, s33, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v12
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s30, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s4, s4, s31
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s16, s26, s30
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v6, s4, v6
	v_add_nc_u32_e32 v12, s4, v7
	v_add_nc_u32_e32 v13, s4, v11
	v_add3_u32 v10, v10, v1, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v9, v9, v2, s16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_and_b32 s3, s3, s2
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v15, 0x80000000, v6, s3
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_cndmask_b32_e64 v16, 0x80000000, v10, s3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s17, s31, 64
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v14, s31, v9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v26, s17, v2
	v_or_b32_e32 v27, s17, v1
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s4, s4, 64
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v9, s17, v9
	.loc	1 348 22 is_stmt 0              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 343 23 is_stmt 1              ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v26
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v7, s4, v7
	v_add_nc_u32_e32 v11, s4, v11
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s30, v27
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v10, 64, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[18:21], v15, s[36:39], 0 offen
	buffer_load_b128 v[22:25], v12, s[36:39], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s3
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_add_nc_u32 v6, 64, v6
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	s_clause 0x1
	buffer_load_b128 v[26:29], v13, s[36:39], 0 offen
	buffer_load_b128 v[30:33], v16, s[36:39], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v16, v14, s[8:11], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v9, v9, s[8:11], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[34:37], v6, s[36:39], 0 offen
	buffer_load_b128 v[38:41], v7, s[36:39], 0 offen
	buffer_load_b128 v[42:45], v11, s[36:39], 0 offen
	buffer_load_b128 v[46:49], v10, s[36:39], 0 offen
	v_lshlrev_b32_e32 v7, 1, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshrrev_b32_e32 v6, 1, v0
	v_lshlrev_b32_e32 v11, 2, v0
	v_lshlrev_b32_e32 v15, 3, v0
	v_lshlrev_b32_e32 v12, 5, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v10, 48, v7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v6, 48, v6
	s_mov_b32 s16, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0xbf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v13, v8, v10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v14, v11, v6
	v_lshlrev_b32_e32 v8, 6, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v6, 0, v13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v10, 0, v14
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v6, v[22:25] offset:4096
	s_waitcnt vmcnt(7)
	ds_store_b128 v6, v[26:29] offset:8192
	s_waitcnt vmcnt(6)
	ds_store_b128 v6, v[30:33] offset:12288
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(5)
	ds_store_b32 v10, v16 offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v6, v[18:21]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v10, v9 offset:33792
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v6, v[34:37] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v6, v[38:41] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v6, v[42:45] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v6, v[46:49] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v6, 5, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v9, 48, v15
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v10, 0x1c00, v6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_or_b32_e32 v37, v8, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_or3_b32 v41, v9, v10, v8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v40, 16, v37
	v_xor_b32_e32 v39, 32, v37
	v_xor_b32_e32 v38, 48, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v42, 16, v41
	v_xor_b32_e32 v43, 32, v41
	v_xor_b32_e32 v44, 48, v41
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr44
.LBB0_3:                                ; %Flow48
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v9, s26, v17
	v_and_b32_e32 v34, 0xf0, v0
	s_ashr_i32 s0, s7, 8
	v_or_b32_e32 v35, s33, v0
	v_and_b32_e32 v11, 28, v7
	v_mul_lo_u32 v36, v9, s0
	v_lshlrev_b32_e32 v10, 2, v34
	v_lshlrev_b32_e32 v9, 1, v34
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s14, s6, 8
	s_lshl_b32 s15, s18, 8
	v_or_b32_e32 v4, s14, v4
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v7, 0x1c00, v12
	v_or_b32_e32 v5, s14, v5
	s_mov_b32 s17, s16
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v4, s15, v4
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v6, 48, v15
	v_subrev_nc_u32_e32 v5, s15, v5
	v_add_nc_u32_e32 v3, s26, v3
	v_or_b32_e32 v48, 0x80, v1
	v_or_b32_e32 v49, 0x80, v2
	v_or_b32_e32 v37, v8, v6
	v_or3_b32 v41, v6, v7, v8
	v_or_b32_e32 v7, 0x80, v4
	v_or_b32_e32 v8, 64, v4
	v_and_b32_e32 v6, 32, v12
	v_mul_lo_u32 v5, s30, v5
	v_mul_lo_u32 v4, s30, v4
	v_mul_lo_u32 v7, s30, v7
	v_mul_lo_u32 v8, s30, v8
	v_mul_lo_u32 v3, s30, v3
	v_add3_u32 v19, 0, v10, v6
	v_xor_b32_e32 v40, 16, v37
	v_xor_b32_e32 v39, 32, v37
	v_add3_u32 v15, v5, v1, 0x80
	v_add3_u32 v46, v4, v1, 0x80
	v_add3_u32 v16, v7, v1, 0x80
	v_add3_u32 v45, v8, v1, 0x80
	v_add3_u32 v47, v3, v2, 0x80
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v4, s19
	v_xor_b32_e32 v38, 48, v37
	v_xor_b32_e32 v42, 16, v41
	v_xor_b32_e32 v43, 32, v41
	v_xor_b32_e32 v44, 48, v41
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_add_nc_u32_e32 v51, 0, v9
	v_add_nc_u32_e32 v50, v19, v11
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_mov_b32_e32 v31, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s1, s5, 6
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s35, 1
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s15, s1, -2
	s_add_i32 s14, 0, 0x8000
	s_add_i32 s1, 0, 0x8400
	s_add_i32 s34, 0, 0x4000
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s17, s31
	.loc	1 362 29 is_stmt 1              ; generate_amdgcn.py:362:29
	s_ashr_i32 s18, s31, 31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_add_nc_u32_e32 v52, s17, v49
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v54, s17, v47
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s18, s18, 24
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v55, s17, v46
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s18, s31, s18
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v52
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s18, s18, 8
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_add_nc_u32_e32 v53, s17, v48
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s18, s0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v57, s17, v16
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v52, 0x80000000, v54, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v54, v36, s18, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s18, s18, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v56, s17, v45
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v128, v52, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v52, v35, s18, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s18, s14
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v53
	s_mov_b32 s14, s1
	s_mov_b32 s1, s16
	s_mov_b32 s16, s34
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v58, s1, v43
	v_cndmask_b32_e32 v53, 0x80000000, v55, vcc_lo
	v_cndmask_b32_e32 v55, 0x80000000, v57, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v129, v52, s[40:43], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v130, v54, s[4:7], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v52, s17, v15
	v_cndmask_b32_e32 v54, 0x80000000, v56, vcc_lo
	v_add_nc_u32_e32 v56, s1, v41
	v_add_nc_u32_e32 v57, s1, v42
	v_add_nc_u32_e32 v59, s1, v44
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[68:71], v53, s[36:39], 0 offen
	buffer_load_b128 v[72:75], v54, s[36:39], 0 offen
	buffer_load_b128 v[76:79], v55, s[36:39], 0 offen
	buffer_load_b128 v[80:83], v52, s[36:39], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v52, s18, v37
	v_add_nc_u32_e32 v53, s18, v40
	v_add_nc_u32_e32 v54, s18, v39
	v_add_nc_u32_e32 v55, s18, v38
	ds_load_b128 v[84:87], v52
	ds_load_b128 v[88:91], v53
	ds_load_b128 v[92:95], v54
	ds_load_b128 v[96:99], v55
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[60:63], v56
	ds_load_b128 v[100:103], v56 offset:8192
	ds_load_b128 v[104:107], v57
	ds_load_b128 v[108:111], v57 offset:8192
	ds_load_b128 v[112:115], v58
	ds_load_b128 v[116:119], v58 offset:8192
	ds_load_b128 v[120:123], v59
	ds_load_b128 v[124:127], v59 offset:8192
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s35, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s1, 2
	s_cselect_b32 s35, s1, 0
	s_add_i32 s15, s15, -1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s35, 10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s18, s35, 14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s19, s1, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s34, s18, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s31, s31, 64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s1, s19, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s15, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[60:63], v[84:87], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[100:103], v[84:87], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[104:107], v[88:91], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[108:111], v[88:91], v[60:67] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[112:115], v[92:95], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[116:119], v[92:95], v[60:67] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[52:59], v[120:123], v[96:99], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[124:127], v[96:99], v[60:67] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v84, v52
	v_cvt_f32_i32_e32 v85, v53
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v95, v63
	v_cvt_f32_i32_e32 v86, v54
	v_cvt_f32_i32_e32 v87, v55
	v_cvt_f32_i32_e32 v88, v56
	v_cvt_f32_i32_e32 v89, v57
	v_cvt_f32_i32_e32 v90, v58
	v_cvt_f32_i32_e32 v91, v59
	v_cvt_f32_i32_e32 v92, v60
	v_cvt_f32_i32_e32 v93, v61
	v_cvt_f32_i32_e32 v94, v62
	v_cvt_f32_i32_e32 v96, v64
	v_cvt_f32_i32_e32 v97, v65
	v_cvt_f32_i32_e32 v98, v66
	v_cvt_f32_i32_e32 v99, v67
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v52, 16, v129
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v100, 16, v130
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v50, v52 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[52:55], v51 offset:34816
	ds_load_b128 v[56:59], v51 offset:34832
	ds_load_b128 v[60:63], v51 offset:35328
	ds_load_b128 v[64:67], v51 offset:35344
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v61, v61, v100
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v27, v61, v93
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v58, v58, v100 :: v_dual_add_nc_u32 v131, s19, v14
	v_mul_f32_e32 v52, v52, v100
	v_mul_f32_e32 v53, v53, v100
	v_mul_f32_e32 v54, v54, v100
	v_mul_f32_e32 v55, v55, v100
	v_mul_f32_e32 v56, v56, v100
	v_mul_f32_e32 v57, v57, v100
	v_mul_f32_e32 v59, v59, v100
	v_mul_f32_e32 v62, v62, v100
	v_mul_f32_e32 v63, v63, v100
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v65, v65, v100
	v_mul_f32_e32 v60, v60, v100
	v_mul_f32_e32 v66, v66, v100
	v_mul_f32_e32 v64, v64, v100
	v_dual_mul_f32 v67, v67, v100 :: v_dual_add_nc_u32 v132, s34, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v25, v59, v91 :: v_dual_fmac_f32 v18, v52, v84
	v_dual_fmac_f32 v19, v53, v85 :: v_dual_fmac_f32 v20, v54, v86
	v_dual_fmac_f32 v21, v55, v87 :: v_dual_fmac_f32 v22, v56, v88
	v_dual_fmac_f32 v23, v57, v89 :: v_dual_fmac_f32 v24, v58, v90
	v_dual_fmac_f32 v28, v62, v94 :: v_dual_fmac_f32 v29, v63, v95
	v_dual_fmac_f32 v31, v65, v97 :: v_dual_fmac_f32 v26, v60, v92
	v_dual_fmac_f32 v33, v66, v98 :: v_dual_fmac_f32 v30, v64, v96
	v_fmac_f32_e32 v32, v67, v99
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b32 v131, v128 offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v132, v[68:71]
	s_waitcnt vmcnt(2)
	ds_store_b128 v132, v[72:75] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v132, v[76:79] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v132, v[80:83] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v6, v12
	s_addk_i32 s17, 0x80
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	s_add_i32 s14, 0, 0x8000
	s_add_i32 s1, 0, 0x8400
	s_add_i32 s34, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_mov_b32_e32 v61, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
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
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v5, s16, v43
	ds_load_b128 v[1:4], v5 offset:8192
	ds_load_b128 v[12:15], v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v5, s14, v40
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v16, s16, v41
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v54, s14, v37
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v8, s16, v42
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[70:73], v5
	ds_load_b128 v[74:77], v54
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[78:81], v8 offset:8192
	ds_load_b128 v[82:85], v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v61, s11
	v_mov_b32_e32 v59, s9
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[46:49], v16 offset:8192
	ds_load_b128 v[50:53], v16
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v55, s5 :: v_dual_add_nc_u32 v16, s14, v39
	v_dual_mov_b32 v58, s8 :: v_dual_add_nc_u32 v7, s16, v44
	v_dual_mov_b32 v54, s4 :: v_dual_add_nc_u32 v5, s14, v38
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[86:89], v16
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v60, s10 :: v_dual_mov_b32 v57, s7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[90:93], v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v56, s6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[94:97], v7
	ds_load_b128 v[98:101], v7 offset:8192
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[50:53], v[74:77], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[46:49], v[74:77], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[82:85], v[70:73], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[78:81], v[70:73], v[54:61] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[12:15], v[86:89], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[1:4], v[86:89], v[54:61] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[62:69], v[94:97], v[90:93], v[62:69] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[98:101], v[90:93], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v46, v63
	v_cvt_f32_i32_e32 v47, v64
	v_cvt_f32_i32_e32 v48, v65
	v_cvt_f32_i32_e32 v49, v66
	v_cvt_f32_i32_e32 v51, v67
	v_cvt_f32_i32_e32 v52, v68
	v_cvt_f32_i32_e32 v53, v69
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v50, v62
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s31, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s4, s31, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s5, s4, s27
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v36, s4, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v35, s5, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v62, 0, v9
	v_mov_b32_e32 v64, 0
	buffer_load_u16 v79, v1, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_and_b32_e32 v1, 32, v6
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v1, 0, v10, v1
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v63, v1, v11
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_mov_b32_e32 v77, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v63, v1 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v62 offset:34816
	ds_load_b128 v[5:8], v62 offset:34832
	ds_load_b128 v[9:12], v62 offset:35328
	ds_load_b128 v[13:16], v62 offset:35344
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
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v41, s34, v41
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v40, s1, v40
	v_add_nc_u32_e32 v37, s1, v37
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[72:75], v41 offset:8192
	ds_load_b128 v[80:83], v41
	v_add_nc_u32_e32 v43, s34, v43
	v_add_nc_u32_e32 v42, s34, v42
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[84:87], v40
	ds_load_b128 v[88:91], v37
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[92:95], v43 offset:8192
	ds_load_b128 v[96:99], v43
	ds_load_b128 v[100:103], v42 offset:8192
	ds_load_b128 v[104:107], v42
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v39, s1, v39
	v_add_nc_u32_e32 v37, s1, v38
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v45, s34, v44
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[108:111], v39
	ds_load_b128 v[112:115], v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v44, s11 :: v_dual_mov_b32 v43, s10
	v_dual_mov_b32 v42, s9 :: v_dual_mov_b32 v41, s8
	v_dual_mov_b32 v40, s7 :: v_dual_mov_b32 v39, s6
	v_dual_mov_b32 v38, s5 :: v_dual_mov_b32 v37, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[116:119], v45
	ds_load_b128 v[120:123], v45 offset:8192
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[80:83], v[88:91], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[72:75], v[88:91], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[104:107], v[84:87], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[100:103], v[84:87], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[96:99], v[108:111], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[92:95], v[108:111], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[116:119], v[112:115], v[64:71] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[120:123], v[112:115], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v45, v64
	v_cvt_f32_i32_e32 v64, v65
	v_cvt_f32_i32_e32 v65, v66
	v_cvt_f32_i32_e32 v66, v67
	v_cvt_f32_i32_e32 v67, v68
	v_cvt_f32_i32_e32 v68, v69
	v_cvt_f32_i32_e32 v69, v70
	v_cvt_f32_i32_e32 v70, v71
	v_cvt_f32_i32_e32 v71, v37
	v_cvt_f32_i32_e32 v72, v38
	v_cvt_f32_i32_e32 v73, v39
	v_cvt_f32_i32_e32 v74, v40
	v_cvt_f32_i32_e32 v75, v41
	v_cvt_f32_i32_e32 v76, v42
	v_cvt_f32_i32_e32 v77, v43
	v_cvt_f32_i32_e32 v78, v44
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s17, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s1, s17, s1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v17, s27, v17
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s1, 8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, 0
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s1, s27
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v36, v36, s1, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v35, v35, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s1, s26, s27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v37.h, v79.l
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v34, 1, v34
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v17, s1, s33, v17
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v35, v35, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v36, v36, s[12:15], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v39, 0x5410 :: v_dual_and_b32 v38, 16, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v0, v16, v37
	v_mul_f32_e32 v13, v13, v37
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v17, v17, v34, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v40, 0x7632 :: v_dual_mul_f32 v15, v15, v37
	v_mov_b16_e32 v82.h, v37.l
	v_mov_b16_e32 v86.h, v37.l
	v_mov_b16_e32 v81.h, v37.l
	v_mov_b16_e32 v85.h, v37.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v15, v60, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v84.h, v37.l
	v_cmp_eq_u32_e32 vcc_lo, 0, v38
	v_mov_b16_e32 v83.h, v37.l
	v_mov_b16_e32 v80.h, v37.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v15, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v79.h, v37.l
	v_mov_b16_e32 v41.h, v37.l
	v_mov_b16_e32 v42.h, v37.l
	v_mov_b16_e32 v44.h, v37.l
	v_mov_b16_e32 v43.h, v37.l
	v_mov_b16_e32 v16.h, v37.l
	v_mov_b16_e32 v87.h, v37.l
	v_mov_b16_e32 v88.h, v37.l
	s_mov_b32 s0, 0x76543210
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
	s_and_b32 s25, s25, 0xffff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v1, v1, v37 :: v_dual_lshlrev_b32 v34, 16, v36
	v_mul_f32_e32 v7, v7, v37
	v_mul_f32_e32 v6, v6, v37
	v_mul_f32_e32 v5, v5, v37
	v_mul_f32_e32 v4, v4, v37
	v_mul_f32_e32 v3, v3, v37
	v_mul_f32_e32 v2, v2, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v50, v1, v50, v18
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v1, 16, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v0, v0, v61, v32
	v_fma_f32 v52, v7, v52, v24
	v_fma_f32 v51, v6, v51, v23
	v_fma_f32 v49, v5, v49, v22
	v_fma_f32 v48, v4, v48, v21
	v_fma_f32 v47, v3, v47, v20
	v_fma_f32 v46, v2, v46, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v0, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v63, v1 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v62 offset:34816
	ds_load_b128 v[4:7], v62 offset:34832
	v_mul_f32_e32 v14, v14, v37
	v_mul_f32_e32 v12, v12, v37
	v_mul_f32_e32 v11, v11, v37
	v_mul_f32_e32 v10, v10, v37
	v_mul_f32_e32 v9, v9, v37
	v_mul_f32_e32 v8, v8, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v13, v58, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v19, v46, s2
	v_cndmask_b32_e64 v18, v18, v50, s2
	v_cndmask_b32_e64 v24, v24, v52, s2
	v_cndmask_b32_e64 v22, v22, v49, s2
	v_cndmask_b32_e64 v30, v30, v13, s2
	v_cndmask_b32_e64 v21, v21, v48, s2
	v_cndmask_b32_e64 v20, v20, v47, s2
	v_cndmask_b32_e64 v23, v23, v51, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.h, v37.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v0, v0, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v11, v56, v28
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v1, v1, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v14, v59, v31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v3, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v12, v57, v29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v5, v5, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v10, v55, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v14, s2
	v_cndmask_b32_e64 v28, v28, v11, s2
	v_cndmask_b32_e64 v29, v29, v12, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[12:15], v62 offset:35344
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v10, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v2, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v54, v9, v54, v26
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v7, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v8, v53, v25
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[8:11], v62 offset:35328
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v1, v64, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v54, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v0, v0, v45, v18
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v6, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v53, s2
	v_cndmask_b32_e64 v1, v19, v1, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v4, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v18, v0, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v6, v69, v24
	v_fma_f32 v7, v7, v70, v25
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v1, v1, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v4, v67, v22
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	s_waitcnt lgkmcnt(1)
	v_dual_max_f32 v0, v0, v0 :: v_dual_mul_f32 v15, v15, v34
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v12, v34
	v_mul_f32_e32 v13, v13, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v24, v6, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v3, v66, v21
	v_fma_f32 v15, v15, v78, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v8, v8, v34
	v_mul_f32_e32 v9, v9, v34
	v_mul_f32_e32 v10, v10, v34
	v_mul_f32_e32 v11, v11, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v12, v75, v30
	v_fma_f32 v8, v8, v71, v26
	v_fma_f32 v9, v9, v72, v27
	v_fma_f32 v10, v10, v73, v28
	v_fma_f32 v13, v13, v76, v31
	v_fma_f32 v11, v11, v74, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v26, v8, s3
	v_cndmask_b32_e64 v12, v30, v12, s3
	v_cndmask_b32_e64 v9, v27, v9, s3
	v_cndmask_b32_e64 v10, v28, v10, s3
	v_cndmask_b32_e64 v13, v31, v13, s3
	v_cndmask_b32_e64 v11, v29, v11, s3
	v_cndmask_b32_e64 v15, v32, v15, s3
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v8, v8, v8
	v_max_f32_e32 v12, v12, v12
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v9, v9, v9
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v13, v13, v13
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v15, v15, v15 :: v_dual_max_f32 v8, 0, v8
	v_max_f32_e32 v12, 0, v12
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v13, 0, v13
	v_max_f32_e32 v11, 0, v11
	v_dual_max_f32 v15, 0, v15 :: v_dual_mul_f32 v8, v8, v8
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v12, v12, v12
	v_dual_mul_f32 v6, v6, v6 :: v_dual_mul_f32 v9, v9, v9
	v_dual_mul_f32 v10, v10, v10 :: v_dual_mul_f32 v13, v13, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v22, v4, s3
	v_cndmask_b32_e64 v7, v25, v7, s3
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v11, v11, v11
	v_mul_f32_e32 v15, v15, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v82.l, v8.h
	v_mov_b16_e32 v86.l, v12.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v2, v65, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v21, v3, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v14, v14, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v81.l, v9.h
	v_mov_b16_e32 v85.l, v13.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v68, v23
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v7, v7, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v26, 1, v82
	v_and_b32_e32 v30, 1, v86
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v20, v2, s3
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v3, v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v14, v77, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v84.l, v10.h
	v_and_b32_e32 v25, 1, v81
	v_and_b32_e32 v29, 1, v85
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v23, v5, s3
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v7, 0, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v83.l, v11.h
	v_add3_u32 v8, v8, v26, 0x7fff
	v_add3_u32 v12, v12, v30, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v33, v14, s3
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v5, v5, v5
	v_dual_max_f32 v0, 0, v0 :: v_dual_max_f32 v3, 0, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v84
	v_add3_u32 v9, v9, v25, 0x7fff
	v_add3_u32 v13, v13, v29, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v4, v4, v4 :: v_dual_mul_f32 v7, v7, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v8.h
	v_mov_b16_e32 v13.l, v12.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v14, v14, v14 :: v_dual_and_b32 v27, 1, v83
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v5, 0, v5 :: v_dual_mul_f32 v0, v0, v0
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v3, v3, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v80.l, v6.h
	v_add3_u32 v10, v10, v28, 0x7fff
	v_mov_b16_e32 v79.l, v7.h
	v_cndmask_b32_e32 v8, v9, v13, vcc_lo
	v_add3_u32 v11, v11, v27, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v14, 0, v14 :: v_dual_mul_f32 v1, v1, v1
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v5, v5, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.l, v3.h
	v_mov_b16_e32 v11.l, v10.h
	v_and_b32_e32 v24, 1, v80
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v14, v14, v14 :: v_dual_and_b32 v23, 1, v79
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v19, 1, v41
	v_mov_b16_e32 v42.l, v2.h
	v_mov_b16_e32 v44.l, v4.h
	v_add3_u32 v6, v6, v24, 0x7fff
	v_mov_b16_e32 v43.l, v5.h
	v_add3_u32 v7, v7, v23, 0x7fff
	v_add3_u32 v3, v3, v19, 0x7fff
	v_and_b32_e32 v22, 1, v44
	v_mov_b16_e32 v7.l, v6.h
	v_and_b32_e32 v20, 1, v42
	v_and_b32_e32 v21, 1, v43
	v_mov_b16_e32 v37.l, v0.h
	v_add3_u32 v4, v4, v22, 0x7fff
	v_mov_b16_e32 v88.l, v14.h
	v_add3_u32 v2, v2, v20, 0x7fff
	v_mov_b16_e32 v16.l, v1.h
	v_add3_u32 v5, v5, v21, 0x7fff
	v_mov_b16_e32 v87.l, v15.h
	v_mov_b16_e32 v5.l, v4.h
	v_mov_b16_e32 v3.l, v2.h
	v_and_b32_e32 v18, 1, v37
	v_cndmask_b32_e32 v4, 0x1054, v39, vcc_lo
	v_cndmask_b32_e32 v6, 0x3276, v40, vcc_lo
	v_and_b32_e32 v32, 1, v88
	v_and_b32_e32 v16, 1, v16
	v_and_b32_e32 v31, 1, v87
	v_add3_u32 v0, v0, v18, 0x7fff
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v6, v6, 8, v6
	v_add3_u32 v14, v14, v32, 0x7fff
	v_add3_u32 v1, v1, v16, 0x7fff
	v_mov_b16_e32 v1.l, v0.h
	v_add3_u32 v0, v15, v31, 0x7fff
	v_and_b32_e32 v4, 0x540054, v4
	v_and_b32_e32 v6, 0x760076, v6
	v_mov_b16_e32 v0.l, v14.h
	v_cndmask_b32_e32 v2, v5, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v5, vcc_lo
	v_cndmask_b32_e32 v5, v7, v3, vcc_lo
	v_cndmask_b32_e32 v3, v3, v7, vcc_lo
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v6, v6, 4, v6
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
	buffer_store_b128 v[0:3], v17, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v17, s[24:27], 0 offen offset:256
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 44
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
		.amdhsa_inst_pref_size 43
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 133
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5408
; TotalNumSgprs: 46
; NumVgprs: 133
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 46
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc256_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     133
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
