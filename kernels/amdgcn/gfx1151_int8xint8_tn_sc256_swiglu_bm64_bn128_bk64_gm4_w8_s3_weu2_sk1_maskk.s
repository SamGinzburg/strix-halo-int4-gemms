	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s49, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v129, 4, v0
	v_lshrrev_b32_e32 v131, 3, v0
	v_lshrrev_b32_e32 v184, 2, v0
	s_mov_b32 s31, 0
	v_and_b32_e32 v16, 15, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v6, 0x70, v129
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v185, 32, v131
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v58, 0, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v130, v131, 16, v16
	v_or_b32_e32 v59, 32, v130
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0x7f
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
	s_lshr_b32 s5, s5, 25
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
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v2, s26, v184
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
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 48, v129
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
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s35, s27, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s17
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s30, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s3, s49, 0xff
.Ltmp13:
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[81:82], null, s35, v131, v[6:7]
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s17, s4, s7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s30, v184
	v_or_b32_e32 v4, s30, v131
	v_or_b32_e32 v5, s30, v185
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s5, s3, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s5, s5, 24
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s16
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s49, 63
.Ltmp19:
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s4, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s7, s3, s5
.Ltmp21:
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s49, v3
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s49, v4
	v_cmp_gt_i32_e64 s4, s49, v5
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s2, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s6, 63
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v186, s27, 6, v81
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v82, v2, v1, s34
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s18, s35, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s33, s18
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s5, s3, s2
	s_and_b32 s4, s4, s2
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s6, 0x7f
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s16, v81
	v_add_nc_u32_e32 v3, s16, v186
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[12:13], null, s26, s30, v[82:83]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s44, s30, 64
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v2, s5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s44, v184
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v4, 0x80000000, v3, s4
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s27, v2
	v_add_nc_u32_e32 v3, s27, v3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s17, s27, 7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v6, s44, v131
	v_or_b32_e32 v7, s44, v185
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s16, s17
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v11, 0x80000000, v12, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s49, v5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v8, s16, v81
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[18:21], v1, s[36:39], 0 offen
	buffer_load_b128 v[22:25], v4, s[36:39], 0 offen
	.loc	1 358 31 is_stmt 1              ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s5
	v_cndmask_b32_e64 v2, 0x80000000, v3, s4
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_lshl_add_u32 v4, s26, 6, v12
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s49, v6
	v_cmp_gt_i32_e64 s5, s49, v7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v9, s16, v186
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v3, s27, v8
	v_add3_u32 v10, s16, s27, v186
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v5, 0x80000000, v4, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s3
	s_and_b32 s4, s5, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[26:29], v11, s[8:11], 0 offen
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[30:33], v1, s[36:39], 0 offen
	buffer_load_b128 v[34:37], v2, s[36:39], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v1, 0x80000000, v8, vcc_lo
	v_cndmask_b32_e64 v2, 0x80000000, v9, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_cndmask_b32_e64 v4, 0x80000000, v10, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[38:41], v5, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[42:45], v1, s[36:39], 0 offen
	buffer_load_b128 v[46:49], v2, s[36:39], 0 offen
	buffer_load_b128 v[50:53], v3, s[36:39], 0 offen
	buffer_load_b128 v[54:57], v4, s[36:39], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 1, v0
	scratch_store_b32 off, v0, off offset:512 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v0, 4, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s6, 0xbf
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(7)
	ds_store_b128 v58, v[26:29] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v58, v[18:21]
	ds_store_b128 v58, v[22:25] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v58, v[30:33] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v58, v[34:37] offset:20480
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v17, 48, v1
	scratch_store_b32 off, v1, off offset:516 ; 4-byte Folded Spill
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v58, v[38:41] offset:36864
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v58, v[42:45] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v58, v[46:49] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v58, v[50:53] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v58, v[54:57] offset:28672
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v0, v0, 1, v17
	v_or_b32_e32 v187, v17, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v4, 2, v0
	v_or_b32_e32 v5, 4, v0
	v_or_b32_e32 v6, 6, v0
	v_or_b32_e32 v7, 8, v0
	v_or_b32_e32 v8, 10, v0
	v_or_b32_e32 v9, 12, v0
	v_or_b32_e32 v10, 14, v0
	v_or_b32_e32 v11, 64, v0
	v_or_b32_e32 v12, 0x42, v0
	v_or_b32_e32 v13, 0x44, v0
	v_or_b32_e32 v14, 0x46, v0
	v_or_b32_e32 v15, 0x48, v0
	v_or_b32_e32 v1, 0x4a, v0
	v_or_b32_e32 v2, 0x4c, v0
	v_or_b32_e32 v3, 0x4e, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v33, v17, v16
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v16, 0x80, v33
	scratch_store_b32 off, v16, off         ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x100, v33
	scratch_store_b32 off, v16, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x180, v33
	scratch_store_b32 off, v16, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x200, v33
	scratch_store_b32 off, v16, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x280, v33
	scratch_store_b32 off, v16, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x300, v33
	scratch_store_b32 off, v16, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x380, v33
	scratch_store_b32 off, v16, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x400, v33
	scratch_store_b32 off, v16, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x480, v33
	scratch_store_b32 off, v16, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x500, v33
	scratch_store_b32 off, v16, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x580, v33
	scratch_store_b32 off, v16, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x600, v33
	scratch_store_b32 off, v16, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x680, v33
	scratch_store_b32 off, v16, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x700, v33
	scratch_store_b32 off, v16, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x780, v33
	scratch_store_b32 off, v16, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x800, v33
	scratch_store_b32 off, v16, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x880, v33
	scratch_store_b32 off, v16, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x900, v33
	scratch_store_b32 off, v16, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x980, v33
	scratch_store_b32 off, v16, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xa00, v33
	scratch_store_b32 off, v16, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xa80, v33
	scratch_store_b32 off, v16, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xb00, v33
	scratch_store_b32 off, v16, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xb80, v33
	scratch_store_b32 off, v16, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xc00, v33
	scratch_store_b32 off, v16, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xc80, v33
	scratch_store_b32 off, v16, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xd00, v33
	scratch_store_b32 off, v16, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xd80, v33
	scratch_store_b32 off, v16, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xe00, v33
	scratch_store_b32 off, v16, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xe80, v33
	scratch_store_b32 off, v16, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xf00, v33
	scratch_store_b32 off, v16, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xf80, v33
	scratch_store_b32 off, v16, off offset:120 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1000, v33
	scratch_store_b32 off, v16, off offset:124 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1080, v33
	scratch_store_b32 off, v16, off offset:128 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1100, v33
	scratch_store_b32 off, v16, off offset:132 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1180, v33
	scratch_store_b32 off, v16, off offset:136 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1200, v33
	scratch_store_b32 off, v16, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1280, v33
	scratch_store_b32 off, v16, off offset:144 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1300, v33
	scratch_store_b32 off, v16, off offset:148 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1380, v33
	scratch_store_b32 off, v16, off offset:152 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1400, v33
	scratch_store_b32 off, v16, off offset:156 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1480, v33
	scratch_store_b32 off, v16, off offset:160 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1500, v33
	scratch_store_b32 off, v16, off offset:164 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1580, v33
	scratch_store_b32 off, v16, off offset:168 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1600, v33
	scratch_store_b32 off, v16, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1680, v33
	scratch_store_b32 off, v16, off offset:176 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1700, v33
	scratch_store_b32 off, v16, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1780, v33
	scratch_store_b32 off, v16, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1800, v33
	scratch_store_b32 off, v16, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1880, v33
	scratch_store_b32 off, v16, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1900, v33
	scratch_store_b32 off, v16, off offset:196 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1980, v33
	scratch_store_b32 off, v16, off offset:200 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1a00, v33
	scratch_store_b32 off, v16, off offset:204 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1a80, v33
	scratch_store_b32 off, v16, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1b00, v33
	scratch_store_b32 off, v16, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1b80, v33
	scratch_store_b32 off, v16, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1c00, v33
	scratch_store_b32 off, v16, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1c80, v33
	scratch_store_b32 off, v16, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1d00, v33
	scratch_store_b32 off, v16, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1d80, v33
	scratch_store_b32 off, v16, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1e00, v33
	scratch_store_b32 off, v16, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1e80, v33
	scratch_store_b32 off, v16, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1f00, v33
	scratch_store_b32 off, v16, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1f80, v33
	scratch_store_b32 off, v16, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 64, v33
	scratch_store_b32 off, v16, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xc0, v33
	scratch_store_b32 off, v16, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x140, v33
	scratch_store_b32 off, v16, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1c0, v33
	scratch_store_b32 off, v16, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x240, v33
	scratch_store_b32 off, v16, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x2c0, v33
	scratch_store_b32 off, v16, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x340, v33
	scratch_store_b32 off, v16, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x3c0, v33
	scratch_store_b32 off, v16, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x440, v33
	scratch_store_b32 off, v16, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x4c0, v33
	scratch_store_b32 off, v16, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x540, v33
	scratch_store_b32 off, v16, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x5c0, v33
	scratch_store_b32 off, v16, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x640, v33
	scratch_store_b32 off, v16, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x6c0, v33
	scratch_store_b32 off, v16, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x740, v33
	scratch_store_b32 off, v16, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x7c0, v33
	scratch_store_b32 off, v16, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x840, v33
	scratch_store_b32 off, v16, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x8c0, v33
	scratch_store_b32 off, v16, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x940, v33
	scratch_store_b32 off, v16, off offset:324 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x9c0, v33
	scratch_store_b32 off, v16, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xa40, v33
	scratch_store_b32 off, v16, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xac0, v33
	scratch_store_b32 off, v16, off offset:336 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xb40, v33
	scratch_store_b32 off, v16, off offset:340 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xbc0, v33
	scratch_store_b32 off, v16, off offset:344 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xc40, v33
	scratch_store_b32 off, v16, off offset:348 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xcc0, v33
	scratch_store_b32 off, v16, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xd40, v33
	scratch_store_b32 off, v16, off offset:356 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xdc0, v33
	scratch_store_b32 off, v16, off offset:360 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xe40, v33
	scratch_store_b32 off, v16, off offset:364 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xec0, v33
	scratch_store_b32 off, v16, off offset:368 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xf40, v33
	scratch_store_b32 off, v16, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0xfc0, v33
	scratch_store_b32 off, v16, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1040, v33
	scratch_store_b32 off, v16, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x10c0, v33
	scratch_store_b32 off, v16, off offset:384 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1140, v33
	scratch_store_b32 off, v16, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x11c0, v33
	scratch_store_b32 off, v16, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1240, v33
	scratch_store_b32 off, v16, off offset:396 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x12c0, v33
	scratch_store_b32 off, v16, off offset:400 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1340, v33
	scratch_store_b32 off, v16, off offset:404 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x13c0, v33
	scratch_store_b32 off, v16, off offset:408 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1440, v33
	scratch_store_b32 off, v16, off offset:412 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x14c0, v33
	scratch_store_b32 off, v16, off offset:416 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1540, v33
	scratch_store_b32 off, v16, off offset:420 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x15c0, v33
	scratch_store_b32 off, v16, off offset:424 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1640, v33
	scratch_store_b32 off, v16, off offset:428 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x16c0, v33
	scratch_store_b32 off, v16, off offset:432 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1740, v33
	scratch_store_b32 off, v16, off offset:436 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x17c0, v33
	scratch_store_b32 off, v16, off offset:440 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1840, v33
	scratch_store_b32 off, v16, off offset:444 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x18c0, v33
	scratch_store_b32 off, v16, off offset:448 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1940, v33
	scratch_store_b32 off, v16, off offset:452 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x19c0, v33
	scratch_store_b32 off, v16, off offset:456 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1a40, v33
	scratch_store_b32 off, v16, off offset:460 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1ac0, v33
	scratch_store_b32 off, v16, off offset:464 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1b40, v33
	scratch_store_b32 off, v16, off offset:468 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1bc0, v33
	scratch_store_b32 off, v16, off offset:472 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1c40, v33
	scratch_store_b32 off, v16, off offset:476 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1cc0, v33
	scratch_store_b32 off, v16, off offset:480 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1d40, v33
	scratch_store_b32 off, v16, off offset:484 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1dc0, v33
	scratch_store_b32 off, v16, off offset:488 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1e40, v33
	scratch_store_b32 off, v16, off offset:492 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1ec0, v33
	scratch_store_b32 off, v16, off offset:496 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1f40, v33
	scratch_store_b32 off, v16, off offset:500 ; 4-byte Folded Spill
	v_or_b32_e32 v16, 0x1fc0, v33
	scratch_store_b32 off, v16, off offset:504 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
                                        ; implicit-def: $vgpr16
                                        ; kill: killed $vgpr16
.LBB0_3:                                ; %Flow579
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v16, s34, v130
	v_or_b32_e32 v17, s34, v59
	s_ashr_i32 s45, s7, 8
	v_or_b32_e32 v164, s33, v0
	v_or_b32_e32 v161, s33, v4
	v_mul_lo_u32 v166, v16, s45
	v_mul_lo_u32 v165, v17, s45
	v_or_b32_e32 v162, s33, v5
	v_or_b32_e32 v163, s33, v6
	v_or_b32_e32 v149, s33, v7
	v_or_b32_e32 v150, s33, v8
	v_or_b32_e32 v151, s33, v9
	v_or_b32_e32 v152, s33, v10
	v_or_b32_e32 v133, s33, v11
	v_or_b32_e32 v134, s33, v12
	v_or_b32_e32 v135, s33, v13
	v_or_b32_e32 v136, s33, v14
	v_or_b32_e32 v137, s33, v15
	v_or_b32_e32 v138, s33, v1
	v_or_b32_e32 v139, s33, v2
	v_or_b32_e32 v140, s33, v3
	v_add_nc_u32_e32 v160, s27, v0
	v_add_nc_u32_e32 v156, s27, v4
	v_add_nc_u32_e32 v157, s27, v5
	v_add_nc_u32_e32 v158, s27, v6
	v_add_nc_u32_e32 v153, s27, v7
	v_add_nc_u32_e32 v159, s27, v8
	v_add_nc_u32_e32 v154, s27, v9
	v_add_nc_u32_e32 v155, s27, v10
	v_add_nc_u32_e32 v141, s27, v11
	v_add_nc_u32_e32 v142, s27, v12
	v_add_nc_u32_e32 v143, s27, v13
	v_add_nc_u32_e32 v144, s27, v14
	v_add_nc_u32_e32 v145, s27, v15
	v_add_nc_u32_e32 v146, s27, v1
	v_add_nc_u32_e32 v147, s27, v2
	v_add_nc_u32_e32 v148, s27, v3
	s_and_not1_b32 vcc_lo, exec_lo, s4
	scratch_store_b32 off, v59, off offset:520 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_or_b32_e32 v0, 0x80, v187
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v128, 0
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x100, v187
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v172, 0
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x180, v187
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v120, 0
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x200, v187
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v112, 0
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x280, v187
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v96, 0
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v187
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v104, 0
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x380, v187
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v88, 0
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v187
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v182, 0
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x480, v187
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v132, 0
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x500, v187
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x580, v187
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v174, 0
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x600, v187
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x680, v187
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x700, v187
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x780, v187
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x800, v187
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x880, v187
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s15, s6, 6
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s16, 0
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x900, v187
	s_add_i32 s14, s44, 64
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x980, v187
	s_mov_b32 s40, s28
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s48, 0, 0x9000
	s_add_i32 s47, 0, 0x2000
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v187
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s46, 0, 0x6000
	s_add_i32 s15, s15, -3
	s_mov_b32 s50, 1
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa80, v187
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb00, v187
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb80, v187
	s_mov_b32 s23, s16
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
	s_mov_b32 s31, s16
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v187
	s_mov_b32 s51, s16
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc80, v187
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd00, v187
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd80, v187
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v187
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe80, v187
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf00, v187
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf80, v187
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1000, v187
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1080, v187
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1100, v187
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1180, v187
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1200, v187
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1280, v187
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1300, v187
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1380, v187
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1400, v187
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1480, v187
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1500, v187
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1580, v187
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1600, v187
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1680, v187
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1700, v187
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1780, v187
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1800, v187
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1880, v187
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1900, v187
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1980, v187
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a00, v187
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a80, v187
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b00, v187
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b80, v187
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c00, v187
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c80, v187
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d00, v187
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d80, v187
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e00, v187
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e80, v187
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f00, v187
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f80, v187
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 64, v187
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc0, v187
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x140, v187
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c0, v187
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x240, v187
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x2c0, v187
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x340, v187
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x3c0, v187
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x440, v187
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x4c0, v187
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x540, v187
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x5c0, v187
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x640, v187
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x6c0, v187
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x740, v187
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x7c0, v187
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x840, v187
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x8c0, v187
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x940, v187
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x9c0, v187
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa40, v187
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xac0, v187
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb40, v187
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xbc0, v187
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc40, v187
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xcc0, v187
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd40, v187
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xdc0, v187
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe40, v187
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xec0, v187
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf40, v187
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xfc0, v187
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1040, v187
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x10c0, v187
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1140, v187
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x11c0, v187
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1240, v187
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x12c0, v187
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1340, v187
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x13c0, v187
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1440, v187
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x14c0, v187
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1540, v187
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x15c0, v187
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1640, v187
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x16c0, v187
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1740, v187
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x17c0, v187
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1840, v187
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x18c0, v187
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1940, v187
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x19c0, v187
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a40, v187
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1ac0, v187
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b40, v187
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1bc0, v187
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c40, v187
	scratch_store_b32 off, v0, off offset:476 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1cc0, v187
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d40, v187
	scratch_store_b32 off, v0, off offset:484 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1dc0, v187
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e40, v187
	scratch_store_b32 off, v0, off offset:492 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1ec0, v187
	scratch_store_b32 off, v0, off offset:496 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f40, v187
	scratch_store_b32 off, v0, off offset:500 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1fc0, v187
	scratch_store_b32 off, v0, off offset:504 ; 4-byte Folded Spill
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s53, s51, 6
	s_mov_b32 s52, s30
	s_mov_b32 s30, s44
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s44, s14, s53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v196, s23 :: v_dual_add_nc_u32 v73, s0, v130
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v0, s44, v184
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v193, s20 :: v_dual_add_nc_u32 v188, s1, v187
	v_dual_mov_b32 v194, s21 :: v_dual_mov_b32 v191, s18
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s49, v0
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[0:1], null, s44, s26, v[82:83]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v192, s19 :: v_dual_mov_b32 v189, s16
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s52, 31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v195, s22
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s52, s52, s1
	s_ashr_i32 s52, s52, 8
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[65:68], v0, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v73 offset:832
	ds_load_u8 v1, v73 offset:768
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s54, s52, s35
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v73 offset:960
	ds_load_u8 v2, v73 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v73 offset:576
	ds_load_u8 v3, v73 offset:512
	v_lshl_or_b32 v20, v1, 16, v0
	ds_load_u8 v0, v73 offset:320
	ds_load_u8 v1, v73 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v73 offset:704
	ds_load_u8 v4, v73 offset:640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v3, 16, v2
	ds_load_u8 v1, v73 offset:448
	ds_load_u8 v2, v73 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_lshl_or_b32 v18, v1, 16, v0
	ds_load_u8 v0, v73 offset:64
	ds_load_u8 v1, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v73 offset:192
	ds_load_u8 v2, v73 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	v_lshl_or_b32 v17, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s31, v187
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v0 offset:1664
	ds_load_u8 v2, v0 offset:1536
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s31, s44, s35
	s_add_i32 s31, s31, s33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v190, s17
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s53, s31, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s52, s45
	s_cselect_b32 s1, -1, 0
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s55, s54, s33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s50, s50, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v197, v160, s55, 1
	v_add_lshl_u32 v198, v156, s55, 1
	v_add_lshl_u32 v199, v157, s55, 1
	v_add_lshl_u32 v200, v158, s55, 1
	v_add_lshl_u32 v201, v153, s55, 1
	v_add_lshl_u32 v202, v159, s55, 1
	v_add_lshl_u32 v203, v154, s55, 1
	v_add_lshl_u32 v204, v155, s55, 1
	v_add_lshl_u32 v205, v141, s55, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v0 offset:1920
	ds_load_u8 v3, v0 offset:1792
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v206, v142, s55, 1
	v_add_lshl_u32 v207, v143, s55, 1
	v_add_lshl_u32 v208, v144, s55, 1
	v_add_lshl_u32 v209, v145, s55, 1
	v_add_lshl_u32 v210, v146, s55, 1
	v_add_lshl_u32 v211, v147, s55, 1
	v_add_lshl_u32 v212, v148, s55, 1
	v_cndmask_b32_e64 v197, 0x80000000, v197, s1
	v_cndmask_b32_e64 v198, 0x80000000, v198, s1
	v_cndmask_b32_e64 v199, 0x80000000, v199, s1
	v_cndmask_b32_e64 v200, 0x80000000, v200, s1
	v_cndmask_b32_e64 v201, 0x80000000, v201, s1
	v_cndmask_b32_e64 v202, 0x80000000, v202, s1
	v_cndmask_b32_e64 v203, 0x80000000, v203, s1
	v_cndmask_b32_e64 v204, 0x80000000, v204, s1
	v_cndmask_b32_e64 v205, 0x80000000, v205, s1
	v_cndmask_b32_e64 v206, 0x80000000, v206, s1
	v_cndmask_b32_e64 v207, 0x80000000, v207, s1
	v_cndmask_b32_e64 v208, 0x80000000, v208, s1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v0 offset:1152
	ds_load_u8 v4, v0 offset:1024
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v209, 0x80000000, v209, s1
	v_cndmask_b32_e64 v210, 0x80000000, v210, s1
	v_cndmask_b32_e64 v211, 0x80000000, v211, s1
	v_cndmask_b32_e64 v212, 0x80000000, v212, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s50, 2
	s_cselect_b32 s50, s50, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v0 offset:1408
	ds_load_u8 v5, v0 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v4, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v1
	ds_load_u8 v1, v0 offset:640
	ds_load_u8 v2, v0 offset:512
	v_lshl_or_b32 v3, v5, 16, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v0 offset:896
	ds_load_u8 v5, v0 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v5, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v0 offset:128
	ds_load_u8 v5, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v5, v1, 0xc0c0004
	ds_load_u8 v5, v0 offset:384
	ds_load_u8 v6, v0 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v0 offset:1728
	ds_load_u8 v6, v0 offset:1600
	v_wmma_i32_16x16x16_iu8 v[41:48], v[1:4], v[17:20], v[189:196] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v0 offset:1984
	ds_load_u8 v7, v0 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v0 offset:1216
	ds_load_u8 v8, v0 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v0 offset:1472
	ds_load_u8 v9, v0 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v8, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	ds_load_u8 v5, v0 offset:704
	ds_load_u8 v6, v0 offset:576
	v_lshl_or_b32 v7, v9, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v0 offset:960
	ds_load_u8 v9, v0 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v9, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 16, v5
	ds_load_u8 v5, v0 offset:192
	ds_load_u8 v9, v0 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v9, v5, 0xc0c0004
	ds_load_u8 v9, v0 offset:448
	ds_load_u8 v10, v0 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v9, 16, v5
	ds_load_u8 v9, v73 offset:864
	ds_load_u8 v10, v73 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v73 offset:992
	ds_load_u8 v11, v73 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v73 offset:608
	ds_load_u8 v12, v73 offset:544
	v_lshl_or_b32 v72, v10, 16, v9
	ds_load_u8 v9, v73 offset:352
	ds_load_u8 v10, v73 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v73 offset:736
	ds_load_u8 v13, v73 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v12, 16, v11
	ds_load_u8 v10, v73 offset:480
	ds_load_u8 v11, v73 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v70, v10, 16, v9
	ds_load_u8 v9, v73 offset:96
	ds_load_u8 v10, v73 offset:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v73 offset:224
	ds_load_u8 v11, v73 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v10, 16, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v188 offset:1664
	ds_load_u8 v10, v188 offset:1536
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[57:64], v[1:4], v[69:72], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[5:8], v[69:72], v[189:196] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v188 offset:1920
	ds_load_u8 v11, v188 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v188 offset:1152
	ds_load_u8 v12, v188 offset:1024
	v_lshl_or_b32 v24, v10, 16, v9
	ds_load_u8 v9, v188 offset:640
	ds_load_u8 v10, v188 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v188 offset:1408
	ds_load_u8 v13, v188 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v23, v12, 16, v11
	ds_load_u8 v10, v188 offset:896
	ds_load_u8 v11, v188 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v22, v10, 16, v9
	ds_load_u8 v9, v188 offset:128
	ds_load_u8 v10, v188
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v188 offset:384
	ds_load_u8 v11, v188 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v21, v10, 16, v9
	ds_load_u8 v9, v188 offset:1728
	ds_load_u8 v10, v188 offset:1600
	v_wmma_i32_16x16x16_iu8 v[33:40], v[21:24], v[17:20], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[21:24], v[69:72], v[189:196] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v188 offset:1984
	ds_load_u8 v11, v188 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v188 offset:1216
	ds_load_u8 v12, v188 offset:1088
	v_lshl_or_b32 v77, v10, 16, v9
	ds_load_u8 v9, v188 offset:704
	ds_load_u8 v10, v188 offset:576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v188 offset:1472
	ds_load_u8 v13, v188 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v76, v12, 16, v11
	ds_load_u8 v10, v188 offset:960
	ds_load_u8 v11, v188 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v75, v10, 16, v9
	ds_load_u8 v9, v188 offset:192
	ds_load_u8 v10, v188 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v188 offset:448
	ds_load_u8 v11, v188 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v74, v10, 16, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[5:8], v[17:20], v[189:196] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[74:77], v[17:20], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[74:77], v[69:72], v[189:196] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v69, v73 offset:1856
	ds_load_u8 v70, v73 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v73 offset:1984
	ds_load_u8 v71, v73 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v73 offset:1600
	ds_load_u8 v72, v73 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v73 offset:1728
	ds_load_u8 v74, v73 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v74, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v73 offset:1344
	ds_load_u8 v70, v73 offset:1280
	v_lshl_or_b32 v71, v74, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v73 offset:1472
	ds_load_u8 v74, v73 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v74, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v73 offset:1088
	ds_load_u8 v74, v73 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v74, v69, 0xc0c0004
	ds_load_u8 v74, v73 offset:1216
	ds_load_u8 v75, v73 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v74, 16, v69
	ds_load_u8 v74, v0 offset:3712
	ds_load_u8 v75, v0 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v0 offset:3968
	ds_load_u8 v76, v0 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v0 offset:3200
	ds_load_u8 v77, v0 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v0 offset:3456
	ds_load_u8 v78, v0 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v78, v77, 0xc0c0004
	v_lshl_or_b32 v77, v75, 16, v74
	ds_load_u8 v74, v0 offset:2688
	ds_load_u8 v75, v0 offset:2560
	v_lshl_or_b32 v76, v78, 16, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v0 offset:2944
	ds_load_u8 v78, v0 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v78, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v75, 16, v74
	ds_load_u8 v74, v0 offset:2176
	ds_load_u8 v78, v0 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v78, v74, 0xc0c0004
	ds_load_u8 v78, v0 offset:2432
	ds_load_u8 v79, v0 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v78, 16, v74
	ds_load_u8 v78, v73 offset:1888
	ds_load_u8 v79, v73 offset:1824
	v_wmma_i32_16x16x16_iu8 v[41:48], v[74:77], v[69:72], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v73 offset:2016
	ds_load_u8 v80, v73 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v73 offset:1632
	ds_load_u8 v189, v73 offset:1568
	v_lshl_or_b32 v192, v79, 16, v78
	ds_load_u8 v78, v73 offset:1376
	ds_load_u8 v79, v73 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v80, v189, v80, 0xc0c0004
	ds_load_u8 v189, v73 offset:1760
	ds_load_u8 v190, v73 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v191, v189, 16, v80
	ds_load_u8 v79, v73 offset:1504
	ds_load_u8 v80, v73 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_lshl_or_b32 v190, v79, 16, v78
	ds_load_u8 v78, v73 offset:1120
	ds_load_u8 v79, v73 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v73 offset:1248
	ds_load_u8 v80, v73 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v189, v79, 16, v78
	v_wmma_i32_16x16x16_iu8 v[57:64], v[74:77], v[189:192], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v74, v0 offset:3776
	ds_load_u8 v75, v0 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v0 offset:4032
	ds_load_u8 v76, v0 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v0 offset:3264
	ds_load_u8 v77, v0 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v0 offset:3520
	ds_load_u8 v78, v0 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v78, v77, 0xc0c0004
	v_lshl_or_b32 v77, v75, 16, v74
	ds_load_u8 v74, v0 offset:2752
	ds_load_u8 v75, v0 offset:2624
	v_lshl_or_b32 v76, v78, 16, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v0 offset:3008
	ds_load_u8 v78, v0 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v78, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v75, 16, v74
	ds_load_u8 v74, v0 offset:2240
	ds_load_u8 v78, v0 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v78, v74, 0xc0c0004
	ds_load_u8 v78, v0 offset:2496
	ds_load_u8 v79, v0 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v78, 16, v74
	v_wmma_i32_16x16x16_iu8 v[9:16], v[74:77], v[69:72], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[74:77], v[189:192], v[25:32] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v74, v188 offset:3712
	ds_load_u8 v75, v188 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v188 offset:3968
	ds_load_u8 v76, v188 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v188 offset:3200
	ds_load_u8 v77, v188 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v188 offset:3456
	ds_load_u8 v78, v188 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v78, v77, 0xc0c0004
	v_lshl_or_b32 v77, v75, 16, v74
	ds_load_u8 v74, v188 offset:2688
	ds_load_u8 v75, v188 offset:2560
	v_lshl_or_b32 v76, v78, 16, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v188 offset:2944
	ds_load_u8 v78, v188 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v78, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v75, 16, v74
	ds_load_u8 v74, v188 offset:2176
	ds_load_u8 v78, v188 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v78, v74, 0xc0c0004
	ds_load_u8 v78, v188 offset:2432
	ds_load_u8 v79, v188 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v78, 16, v74
	ds_load_u8 v78, v188 offset:3776
	ds_load_u8 v79, v188 offset:3648
	v_wmma_i32_16x16x16_iu8 v[33:40], v[74:77], v[69:72], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[74:77], v[189:192], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v188 offset:4032
	ds_load_u8 v80, v188 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v188 offset:3264
	ds_load_u8 v193, v188 offset:3136
	v_lshl_or_b32 v196, v79, 16, v78
	ds_load_u8 v78, v188 offset:2752
	ds_load_u8 v79, v188 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v80, v193, v80, 0xc0c0004
	ds_load_u8 v193, v188 offset:3520
	ds_load_u8 v194, v188 offset:3392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v193, v194, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v195, v193, 16, v80
	ds_load_u8 v79, v188 offset:3008
	ds_load_u8 v80, v188 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_lshl_or_b32 v194, v79, 16, v78
	ds_load_u8 v78, v188 offset:2240
	ds_load_u8 v79, v188 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v188 offset:2496
	ds_load_u8 v80, v188 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v193, v79, 16, v78
	v_wmma_i32_16x16x16_iu8 v[1:8], v[193:196], v[69:72], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v69, v73 offset:2880
	ds_load_u8 v70, v73 offset:2816
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[17:24], v[193:196], v[189:192], v[17:24] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v73 offset:3008
	ds_load_u8 v71, v73 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v73 offset:2624
	ds_load_u8 v72, v73 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v73 offset:2752
	ds_load_u8 v74, v73 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v74, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v73 offset:2368
	ds_load_u8 v70, v73 offset:2304
	v_lshl_or_b32 v71, v74, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v73 offset:2496
	ds_load_u8 v74, v73 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v74, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v73 offset:2112
	ds_load_u8 v74, v73 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v74, v69, 0xc0c0004
	ds_load_u8 v74, v73 offset:2240
	ds_load_u8 v75, v73 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v74, 16, v69
	ds_load_u8 v74, v0 offset:5760
	ds_load_u8 v75, v0 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v0 offset:6016
	ds_load_u8 v76, v0 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v0 offset:5248
	ds_load_u8 v77, v0 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v0 offset:5504
	ds_load_u8 v78, v0 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v78, v77, 0xc0c0004
	v_lshl_or_b32 v77, v75, 16, v74
	ds_load_u8 v74, v0 offset:4736
	ds_load_u8 v75, v0 offset:4608
	v_lshl_or_b32 v76, v78, 16, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v0 offset:4992
	ds_load_u8 v78, v0 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v78, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v75, 16, v74
	ds_load_u8 v74, v0 offset:4224
	ds_load_u8 v78, v0 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v78, v74, 0xc0c0004
	ds_load_u8 v78, v0 offset:4480
	ds_load_u8 v79, v0 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v78, 16, v74
	ds_load_u8 v78, v73 offset:2912
	ds_load_u8 v79, v73 offset:2848
	v_wmma_i32_16x16x16_iu8 v[41:48], v[74:77], v[69:72], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v73 offset:3040
	ds_load_u8 v80, v73 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v73 offset:2656
	ds_load_u8 v189, v73 offset:2592
	v_lshl_or_b32 v192, v79, 16, v78
	ds_load_u8 v78, v73 offset:2400
	ds_load_u8 v79, v73 offset:2336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v80, v189, v80, 0xc0c0004
	ds_load_u8 v189, v73 offset:2784
	ds_load_u8 v190, v73 offset:2720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v191, v189, 16, v80
	ds_load_u8 v79, v73 offset:2528
	ds_load_u8 v80, v73 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_lshl_or_b32 v190, v79, 16, v78
	ds_load_u8 v78, v73 offset:2144
	ds_load_u8 v79, v73 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v73 offset:2272
	ds_load_u8 v80, v73 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v189, v79, 16, v78
	v_wmma_i32_16x16x16_iu8 v[57:64], v[74:77], v[189:192], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v74, v0 offset:5824
	ds_load_u8 v75, v0 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v0 offset:6080
	ds_load_u8 v76, v0 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v0 offset:5312
	ds_load_u8 v77, v0 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v0 offset:5568
	ds_load_u8 v78, v0 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v78, v77, 0xc0c0004
	v_lshl_or_b32 v77, v75, 16, v74
	ds_load_u8 v74, v0 offset:4800
	ds_load_u8 v75, v0 offset:4672
	v_lshl_or_b32 v76, v78, 16, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v0 offset:5056
	ds_load_u8 v78, v0 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v78, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v75, 16, v74
	ds_load_u8 v74, v0 offset:4288
	ds_load_u8 v78, v0 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v78, v74, 0xc0c0004
	ds_load_u8 v78, v0 offset:4544
	ds_load_u8 v79, v0 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v78, 16, v74
	v_wmma_i32_16x16x16_iu8 v[9:16], v[74:77], v[69:72], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[74:77], v[189:192], v[25:32] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v74, v188 offset:5760
	ds_load_u8 v75, v188 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v188 offset:6016
	ds_load_u8 v76, v188 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v188 offset:5248
	ds_load_u8 v77, v188 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v188 offset:5504
	ds_load_u8 v78, v188 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v78, v77, 0xc0c0004
	v_lshl_or_b32 v77, v75, 16, v74
	ds_load_u8 v74, v188 offset:4736
	ds_load_u8 v75, v188 offset:4608
	v_lshl_or_b32 v76, v78, 16, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v188 offset:4992
	ds_load_u8 v78, v188 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v78, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v75, 16, v74
	ds_load_u8 v74, v188 offset:4224
	ds_load_u8 v78, v188 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v78, v74, 0xc0c0004
	ds_load_u8 v78, v188 offset:4480
	ds_load_u8 v79, v188 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v78, 16, v74
	ds_load_u8 v78, v188 offset:5824
	ds_load_u8 v79, v188 offset:5696
	v_wmma_i32_16x16x16_iu8 v[33:40], v[74:77], v[69:72], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[74:77], v[189:192], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v188 offset:6080
	ds_load_u8 v80, v188 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v188 offset:5312
	ds_load_u8 v193, v188 offset:5184
	v_lshl_or_b32 v196, v79, 16, v78
	ds_load_u8 v78, v188 offset:4800
	ds_load_u8 v79, v188 offset:4672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v80, v193, v80, 0xc0c0004
	ds_load_u8 v193, v188 offset:5568
	ds_load_u8 v194, v188 offset:5440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v193, v194, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v195, v193, 16, v80
	ds_load_u8 v79, v188 offset:5056
	ds_load_u8 v80, v188 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_lshl_or_b32 v194, v79, 16, v78
	ds_load_u8 v78, v188 offset:4288
	ds_load_u8 v79, v188 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v188 offset:4544
	ds_load_u8 v80, v188 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v193, v79, 16, v78
	v_wmma_i32_16x16x16_iu8 v[1:8], v[193:196], v[69:72], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v69, v73 offset:3904
	ds_load_u8 v70, v73 offset:3840
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[17:24], v[193:196], v[189:192], v[17:24] neg_lo:[1,1,0]
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v191, v135, s54, 1
	v_add_lshl_u32 v192, v136, s54, 1
	v_add_lshl_u32 v193, v137, s54, 1
	v_add_lshl_u32 v194, v138, s54, 1
	v_add_lshl_u32 v195, v139, s54, 1
	v_add_lshl_u32 v196, v140, s54, 1
	v_cndmask_b32_e64 v191, 0x80000000, v191, s1
	v_cndmask_b32_e64 v192, 0x80000000, v192, s1
	v_cndmask_b32_e64 v193, 0x80000000, v193, s1
	v_cndmask_b32_e64 v194, 0x80000000, v194, s1
	v_cndmask_b32_e64 v195, 0x80000000, v195, s1
	v_cndmask_b32_e64 v196, 0x80000000, v196, s1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v73 offset:4032
	ds_load_u8 v71, v73 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v73 offset:3648
	ds_load_u8 v72, v73 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v73 offset:3776
	ds_load_u8 v74, v73 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v74, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v73 offset:3392
	ds_load_u8 v70, v73 offset:3328
	v_lshl_or_b32 v71, v74, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v73 offset:3520
	ds_load_u8 v74, v73 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v74, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v73 offset:3136
	ds_load_u8 v74, v73 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v74, v69, 0xc0c0004
	ds_load_u8 v74, v73 offset:3264
	ds_load_u8 v75, v73 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v74, 16, v69
	ds_load_u8 v74, v0 offset:7808
	ds_load_u8 v75, v0 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v0 offset:8064
	ds_load_u8 v76, v0 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v0 offset:7296
	ds_load_u8 v77, v0 offset:7168
	v_lshl_or_b32 v80, v75, 16, v74
	ds_load_u8 v74, v0 offset:6784
	ds_load_u8 v75, v0 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v0 offset:7552
	ds_load_u8 v78, v0 offset:7424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v77, 16, v76
	ds_load_u8 v75, v0 offset:7040
	ds_load_u8 v76, v0 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	v_lshl_or_b32 v78, v75, 16, v74
	ds_load_u8 v74, v0 offset:6272
	ds_load_u8 v75, v0 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v0 offset:6528
	ds_load_u8 v76, v0 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v75, 16, v74
	ds_load_u8 v74, v73 offset:3936
	ds_load_u8 v75, v73 offset:3872
	v_wmma_i32_16x16x16_iu8 v[41:48], v[77:80], v[69:72], v[41:48] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v73 offset:4064
	ds_load_u8 v76, v73 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v73 offset:3680
	ds_load_u8 v189, v73 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v189, v76, 0xc0c0004
	ds_load_u8 v76, v73 offset:3808
	ds_load_u8 v190, v73 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v190, v76, 0xc0c0004
	v_lshl_or_b32 v76, v75, 16, v74
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v75, v190, 16, v189
	ds_load_u8 v74, v73 offset:3424
	ds_load_u8 v189, v73 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v189, v74, 0xc0c0004
	ds_load_u8 v189, v73 offset:3552
	ds_load_u8 v190, v73 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v189, 16, v74
	ds_load_u8 v189, v73 offset:3168
	ds_load_u8 v190, v73 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	ds_load_u8 v190, v73 offset:3296
	ds_load_u8 v73, v73 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v190, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v189
	v_wmma_i32_16x16x16_iu8 v[57:64], v[77:80], v[73:76], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v77, v0 offset:7872
	ds_load_u8 v78, v0 offset:7744
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v0 offset:8128
	ds_load_u8 v79, v0 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v0 offset:7360
	ds_load_u8 v80, v0 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v0 offset:7616
	ds_load_u8 v189, v0 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v189, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v0 offset:6848
	ds_load_u8 v78, v0 offset:6720
	v_lshl_or_b32 v79, v189, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v0 offset:7104
	ds_load_u8 v189, v0 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v189, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v0 offset:6336
	ds_load_u8 v189, v0 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v189, v77, 0xc0c0004
	ds_load_u8 v189, v0 offset:6592
	ds_load_u8 v0, v0 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v0, 16, v77
	v_wmma_i32_16x16x16_iu8 v[9:16], v[77:80], v[69:72], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[77:80], v[73:76], v[25:32] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v188 offset:7808
	ds_load_u8 v77, v188 offset:7680
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v77, v0, 0xc0c0004
	ds_load_u8 v77, v188 offset:8064
	ds_load_u8 v78, v188 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v188 offset:7296
	ds_load_u8 v79, v188 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v188 offset:7552
	ds_load_u8 v80, v188 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_lshl_or_b32 v80, v77, 16, v0
	ds_load_u8 v0, v188 offset:6784
	ds_load_u8 v77, v188 offset:6656
	v_lshl_or_b32 v79, v79, 16, v78
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v77, v0, 0xc0c0004
	ds_load_u8 v77, v188 offset:7040
	ds_load_u8 v78, v188 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v77, 16, v0
	ds_load_u8 v0, v188 offset:6272
	ds_load_u8 v77, v188 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v77, v0, 0xc0c0004
	ds_load_u8 v77, v188 offset:6528
	ds_load_u8 v189, v188 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v189, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v77, 16, v0
	v_wmma_i32_16x16x16_iu8 v[33:40], v[77:80], v[69:72], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[77:80], v[73:76], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v0, v188 offset:7872
	ds_load_u8 v77, v188 offset:7744
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v77, v0, 0xc0c0004
	ds_load_u8 v77, v188 offset:8128
	ds_load_u8 v78, v188 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v188 offset:7360
	ds_load_u8 v79, v188 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v188 offset:7616
	ds_load_u8 v80, v188 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_lshl_or_b32 v80, v77, 16, v0
	ds_load_u8 v0, v188 offset:6848
	ds_load_u8 v77, v188 offset:6720
	v_lshl_or_b32 v79, v79, 16, v78
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v77, v0, 0xc0c0004
	ds_load_u8 v77, v188 offset:7104
	ds_load_u8 v78, v188 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v77, 16, v0
	ds_load_u8 v0, v188 offset:6336
	ds_load_u8 v77, v188 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v77, v0, 0xc0c0004
	ds_load_u8 v77, v188 offset:6592
	ds_load_u8 v188, v188 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v188, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v77, v77, 16, v0
	v_cvt_f32_i32_e32 v0, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v56, v11
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v11, v150, s54, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[77:80], v[69:72], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[73:76], v[17:24] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v71, v59
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v59, v49
	v_cvt_f32_i32_e32 v49, v54
	v_cvt_f32_i32_e32 v77, v1
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s44, v131
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v76, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s31, v186
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v188, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v54, v9
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s49, v1
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s44, v185
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v73, v13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v78, v4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v164, s54, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v79, v3
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s49, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v80, v6
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v3, v165, s52, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v6, v161, s54, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v190, v7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s0
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s53, v81
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v7, v162, s54, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v189, v8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v8, v163, s54, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v69, v58
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e32 v9, 0x80000000, v2, vcc_lo
	.loc	1 358 39 is_stmt 0              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s53, v186
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v70, v57
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v57, v50
	v_cvt_f32_i32_e32 v50, v52
	v_cvt_f32_i32_e32 v58, v51
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v13, 0x80000000, v2, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v2, v166, s52, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v52, v53
	v_cvt_f32_i32_e32 v51, v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v53, v10
	v_cvt_f32_i32_e32 v55, v12
	v_cvt_f32_i32_e32 v72, v14
	v_cvt_f32_i32_e32 v74, v16
	v_cvt_f32_i32_e32 v75, v15
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s31, v81
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v10, v149, s54, 1
	v_add_lshl_u32 v12, v151, s54, 1
	v_add_lshl_u32 v14, v152, s54, 1
	v_add_lshl_u32 v15, v133, s54, 1
	v_add_lshl_u32 v16, v134, s54, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v213, v2, s[4:7], 0 offen
	buffer_load_u16 v214, v3, s[4:7], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x1f
	buffer_load_u16 v215, v4, s[40:43], 0 offen
	buffer_load_u16 v216, v6, s[40:43], 0 offen
	buffer_load_u16 v217, v7, s[40:43], 0 offen
	buffer_load_u16 v218, v8, s[40:43], 0 offen
	buffer_load_u16 v219, v10, s[40:43], 0 offen
	buffer_load_u16 v220, v11, s[40:43], 0 offen
	buffer_load_u16 v221, v12, s[40:43], 0 offen
	buffer_load_u16 v222, v14, s[40:43], 0 offen
	buffer_load_u16 v223, v15, s[40:43], 0 offen
	buffer_load_u16 v224, v16, s[40:43], 0 offen
	buffer_load_u16 v191, v191, s[40:43], 0 offen
	buffer_load_u16 v192, v192, s[40:43], 0 offen
	buffer_load_u16 v193, v193, s[40:43], 0 offen
	buffer_load_u16 v194, v194, s[40:43], 0 offen
	buffer_load_u16 v195, v195, s[40:43], 0 offen
	buffer_load_u16 v196, v196, s[40:43], 0 offen
	buffer_load_u16 v197, v197, s[40:43], 0 offen
	buffer_load_u16 v198, v198, s[40:43], 0 offen
	buffer_load_u16 v199, v199, s[40:43], 0 offen
	buffer_load_u16 v200, v200, s[40:43], 0 offen
	buffer_load_u16 v201, v201, s[40:43], 0 offen
	buffer_load_u16 v202, v202, s[40:43], 0 offen
	buffer_load_u16 v203, v203, s[40:43], 0 offen
	buffer_load_u16 v204, v204, s[40:43], 0 offen
	buffer_load_u16 v205, v205, s[40:43], 0 offen
	buffer_load_u16 v206, v206, s[40:43], 0 offen
	buffer_load_u16 v207, v207, s[40:43], 0 offen
	buffer_load_u16 v208, v208, s[40:43], 0 offen
	buffer_load_u16 v209, v209, s[40:43], 0 offen
	buffer_load_u16 v210, v210, s[40:43], 0 offen
	buffer_load_u16 v211, v211, s[40:43], 0 offen
	buffer_load_u16 v212, v212, s[40:43], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[36:39], 0 offen
	buffer_load_b128 v[5:8], v5, s[36:39], 0 offen
	buffer_load_b128 v[9:12], v9, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v13, s[36:39], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s0, s50, 12
	s_mov_b32 s31, s47
	s_add_i32 s52, s0, 0
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v225, s52, v129
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s47, s52, s0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_barrier
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(38)
	ds_store_b128 v225, v[65:68] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v65, s47, v129
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s53, s51, 1
	s_mov_b32 s0, s48
	s_mov_b32 s1, s46
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s48, s52, 0x8000
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s46, s47, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s51, s15
	s_mov_b32 s51, s53
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v65, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v65, v[5:8] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v65, v[9:12] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v65, v[13:16] offset:20480
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v1, 16, v213
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v2, 16, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v1, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v177, v3, v41
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v3, 16, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v1, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v178, v4, v42
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v4, 16, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v1, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v169, v5, v43
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v5, 16, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v1, v5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v170, v6, v44
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v6, 16, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v1, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v123, v7, v45
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v7, 16, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v1, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v124, v8, v46
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v8, 16, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v9, v1, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v115, v9, v47
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v9, 16, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v1, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v116, v10, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v10, 16, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v11, v1, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v107, v11, v54
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v11, 16, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v1, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v108, v12, v53
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v12, 16, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v13, v1, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v99, v13, v56
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v13, 16, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v14, v1, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v100, v14, v55
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v14, 16, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v15, v1, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v91, v15, v73
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v15, 16, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v1, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v92, v16, v72
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v16, 16, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v41, v1, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v83, v41, v75
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v41, 16, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v42, v1, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v84, v42, v74
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v42, 16, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v180, v2, v70
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v181, v2, v69
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v173, v2, v71
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v174, v2, v60
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v125, v2, v61
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v126, v2, v62
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v117, v2, v63
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v118, v2, v64
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v109, v2, v25
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v110, v2, v26
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v101, v2, v27
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v102, v2, v28
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v93, v2, v29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v94, v2, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v85, v2, v31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v86, v2, v32
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v2, 16, v197
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v3, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v167, v3, v33
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v3, 16, v198
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v179, v4, v34 :: v_dual_lshlrev_b32 v4, 16, v199
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v171, v5, v35
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v5, 16, v200
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v6, v1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v172, v6, v36
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v6, 16, v201
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v7, v1, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v127, v7, v37
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v7, 16, v202
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v8, v1, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v128, v8, v38
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v8, 16, v203
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v9, v1, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v119, v9, v39
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v9, 16, v204
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v10, v1, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v120, v10, v40
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v10, 16, v205
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v11, v1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v111, v11, v77
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v11, 16, v206
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v12, v1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v112, v12, v76
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v12, 16, v207
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v13, v1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v103, v13, v79
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v13, 16, v208
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v14, v1, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v104, v14, v78
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v14, 16, v209
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v15, v1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v95, v15, v188
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v15, 16, v210
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v1, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v96, v16, v80
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v16, 16, v211
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v25, v1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v87, v25, v190
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v25, 16, v212
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v1, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v88, v1, v189 :: v_dual_mul_f32 v1, v42, v2
	v_fmac_f32_e32 v182, v1, v59
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v183, v1, v57
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v4
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v175, v1, v58
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v176, v1, v50
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v6
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v132, v1, v52 :: v_dual_mul_f32 v1, v42, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v168, v1, v49 :: v_dual_mul_f32 v1, v42, v8
	v_fmac_f32_e32 v121, v1, v51
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v122, v1, v0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v42, v10
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v113, v0, v17 :: v_dual_mul_f32 v0, v42, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v114, v0, v18
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v42, v12
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v105, v0, v19 :: v_dual_mul_f32 v0, v42, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v106, v0, v20
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v42, v14
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v97, v0, v21 :: v_dual_mul_f32 v0, v42, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v98, v0, v22
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v42, v16
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v89, v0, v23 :: v_dual_mul_f32 v0, v42, v25
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v90, v0, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v33, v187
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s48, 0, 0x9000
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v167, 0
	s_add_i32 s47, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s46, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, s0, v130
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v2, 0, 1, s2
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v245, v1
	ds_load_u8_d16 v229, v1 offset:32
	ds_load_u8_d16 v247, v1 offset:64
	ds_load_u8_d16 v246, v1 offset:128
	ds_load_u8_d16 v248, v1 offset:192
	ds_load_u8_d16 v233, v1 offset:224
	ds_load_u8_d16 v234, v1 offset:160
	ds_load_u8_d16 v235, v1 offset:96
	ds_load_u8_d16 v251, v1 offset:256
	ds_load_u8_d16 v252, v1 offset:320
	ds_load_u8_d16 v249, v1 offset:384
	ds_load_u8_d16 v250, v1 offset:448
	ds_load_u8_d16 v204, v1 offset:480
	ds_load_u8_d16 v205, v1 offset:416
	ds_load_u8_d16 v206, v1 offset:352
	ds_load_u8_d16 v236, v1 offset:288
	ds_load_u8_d16 v254, v1 offset:512
	ds_load_u8_d16 v209, v1 offset:576
	ds_load_u8_d16 v253, v1 offset:640
	ds_load_u8_d16 v255, v1 offset:704
	ds_load_u8_d16 v237, v1 offset:736
	ds_load_u8_d16 v238, v1 offset:672
	ds_load_u8_d16 v239, v1 offset:608
	ds_load_u8_d16 v240, v1 offset:544
	ds_load_u8_d16 v35, v1 offset:768
	ds_load_u8_d16 v37, v1 offset:832
	ds_load_u8_d16 v34, v1 offset:896
	ds_load_u8_d16 v36, v1 offset:960
	ds_load_u8_d16 v241, v1 offset:992
	ds_load_u8_d16 v242, v1 offset:928
	ds_load_u8_d16 v243, v1 offset:864
	ds_load_u8_d16 v244, v1 offset:800
	ds_load_u8_d16 v221, v1 offset:1024
	ds_load_u8_d16 v222, v1 offset:1088
	ds_load_u8_d16 v223, v1 offset:1152
	ds_load_u8_d16 v224, v1 offset:1216
	ds_load_u8_d16 v77, v1 offset:1248
	ds_load_u8_d16 v78, v1 offset:1184
	ds_load_u8_d16 v79, v1 offset:1120
	ds_load_u8_d16 v80, v1 offset:1056
	ds_load_u8_d16 v198, v1 offset:1280
	ds_load_u8_d16 v199, v1 offset:1344
	ds_load_u8_d16 v200, v1 offset:1408
	ds_load_u8_d16 v225, v1 offset:1472
	ds_load_u8_d16 v184, v1 offset:1504
	ds_load_u8_d16 v185, v1 offset:1440
	ds_load_u8_d16 v186, v1 offset:1376
	ds_load_u8_d16 v187, v1 offset:1312
	ds_load_u8_d16 v201, v1 offset:1536
	ds_load_u8_d16 v203, v1 offset:1600
	ds_load_u8_d16 v226, v1 offset:1664
	ds_load_u8_d16 v227, v1 offset:1728
	ds_load_u8_d16 v192, v1 offset:1760
	ds_load_u8_d16 v193, v1 offset:1696
	ds_load_u8_d16 v194, v1 offset:1632
	ds_load_u8_d16 v196, v1 offset:1568
	ds_load_u8_d16 v228, v1 offset:1792
	ds_load_u8_d16 v230, v1 offset:1856
	ds_load_u8_d16 v231, v1 offset:1920
	ds_load_u8_d16 v232, v1 offset:1984
	ds_load_u8_d16 v208, v1 offset:2016
	ds_load_u8_d16 v210, v1 offset:1952
	ds_load_u8_d16 v211, v1 offset:1888
	ds_load_u8_d16 v212, v1 offset:1824
	ds_load_u8_d16 v188, v1 offset:2048
	ds_load_u8_d16 v189, v1 offset:2112
	ds_load_u8_d16 v190, v1 offset:2176
	ds_load_u8_d16 v191, v1 offset:2240
	ds_load_u8_d16 v0, v1 offset:2272
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v2
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v19, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:672 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v1 offset:2208
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v10, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v29, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:676 ; 4-byte Folded Spill
	ds_load_u8_d16 v51, v1 offset:2144
	ds_load_u8_d16 v52, v1 offset:2080
	ds_load_u8_d16 v195, v1 offset:2304
	ds_load_u8_d16 v197, v1 offset:2368
	ds_load_u8_d16 v202, v1 offset:2432
	ds_load_u8_d16 v207, v1 offset:2496
	ds_load_u8_d16 v53, v1 offset:2528
	ds_load_u8_d16 v54, v1 offset:2464
	ds_load_u8_d16 v55, v1 offset:2400
	ds_load_u8_d16 v56, v1 offset:2336
	ds_load_u8_d16 v213, v1 offset:2560
	ds_load_u8_d16 v214, v1 offset:2624
	ds_load_u8_d16 v215, v1 offset:2688
	ds_load_u8_d16 v216, v1 offset:2752
	ds_load_u8_d16 v61, v1 offset:2784
	ds_load_u8_d16 v62, v1 offset:2720
	ds_load_u8_d16 v63, v1 offset:2656
	ds_load_u8_d16 v65, v1 offset:2592
	ds_load_u8_d16 v217, v1 offset:2816
	ds_load_u8_d16 v218, v1 offset:2880
	ds_load_u8_d16 v219, v1 offset:2944
	ds_load_u8_d16 v220, v1 offset:3008
	ds_load_u8_d16 v69, v1 offset:3040
	ds_load_u8_d16 v70, v1 offset:2976
	ds_load_u8_d16 v72, v1 offset:2912
	ds_load_u8_d16 v75, v1 offset:2848
	ds_load_u8_d16 v57, v1 offset:3072
	ds_load_u8_d16 v58, v1 offset:3136
	ds_load_u8_d16 v59, v1 offset:3200
	ds_load_u8_d16 v60, v1 offset:3264
	ds_load_u8_d16 v0, v1 offset:3296
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:556 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v1 offset:3232
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:572 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v1 offset:3168
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:576 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v1 offset:3104
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:580 ; 4-byte Folded Spill
	ds_load_u8_d16 v64, v1 offset:3328
	ds_load_u8_d16 v66, v1 offset:3392
	ds_load_u8_d16 v67, v1 offset:3456
	ds_load_u8_d16 v68, v1 offset:3520
	ds_load_u8_d16 v0, v1 offset:3552
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:584 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v1 offset:3488
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:588 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v1 offset:3424
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:600 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v1 offset:3360
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:604 ; 4-byte Folded Spill
	ds_load_u8_d16 v71, v1 offset:3584
	ds_load_u8_d16 v73, v1 offset:3648
	ds_load_u8_d16 v74, v1 offset:3712
	ds_load_u8_d16 v76, v1 offset:3776
	ds_load_u8_d16 v0, v1 offset:3808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:608 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v1 offset:3744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:620 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v1 offset:3680
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:624 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v1 offset:3616
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:652 ; 4-byte Folded Spill
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v81, v1 offset:3840
	ds_load_u8_d16 v82, v1 offset:3904
	ds_load_u8_d16 v129, v1 offset:3968
	ds_load_u8_d16 v131, v1 offset:4032
	ds_load_u8_d16 v0, v1 offset:4064
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:656 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v1 offset:4000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:660 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v1 offset:3936
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:664 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v1 offset:3872
	v_mov_b32_e32 v1, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:668 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:508 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v1, v35, v37, 0xc0c0004
	v_perm_b32 v2, v34, v36, 0xc0c0004
	s_mov_b32 s4, 0
	v_perm_b32 v3, v254, v209, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v20, v2, 16, v1
	v_perm_b32 v1, v251, v252, 0xc0c0004
	v_perm_b32 v2, v249, v250, 0xc0c0004
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v18, v2, 16, v1
	v_perm_b32 v1, v245, v247, 0xc0c0004
	v_perm_b32 v2, v246, v248, 0xc0c0004
	s_mov_b32 s11, s4
	v_perm_b32 v4, v253, v255, 0xc0c0004
	v_dual_mov_b32 v16, s11 :: v_dual_mov_b32 v15, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v17, v2, 16, v1
	v_mov_b32_e32 v13, s8
	v_lshl_or_b32 v19, v4, 16, v3
	v_mov_b32_e32 v14, s9
	v_dual_mov_b32 v12, s7 :: v_dual_mov_b32 v11, s6
	v_dual_mov_b32 v9, s4 :: v_dual_mov_b32 v10, s5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, s31, v0
	scratch_load_b32 v0, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v50, s31, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s31, v0
	scratch_load_b32 v0, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s31, v0
	scratch_load_b32 v0, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s31, v0
	scratch_load_b32 v0, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s31, v0
	scratch_load_b32 v0, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v4, s31, v0
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v4, s31, v0
	scratch_load_b32 v0, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s31, v0
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s31, v0
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s31, v0
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v4, 16, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s31, v0
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s31, v0
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s31, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s31, v0
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s31, v0
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s31, v0
	scratch_load_b32 v0, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s31, v0
	scratch_load_b32 v0, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s31, v0
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s31, v0
	scratch_load_b32 v0, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s31, v0
	scratch_load_b32 v0, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s31, v0
	scratch_load_b32 v0, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v4, s31, v0
	scratch_load_b32 v0, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v4, s31, v0
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s31, v0
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s31, v0
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s31, v0
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v4, 16, v3
	v_perm_b32 v4, v238, v237, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s31, v0
	scratch_load_b32 v0, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s31, v0
	scratch_load_b32 v0, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s31, v0
	scratch_load_b32 v0, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s31, v0
	scratch_load_b32 v0, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s31, v0
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s31, v0
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_perm_b32 v3, v240, v239, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v42, v2, 16, v1
	v_perm_b32 v1, v244, v243, 0xc0c0004
	v_perm_b32 v2, v242, v241, 0xc0c0004
	v_lshl_or_b32 v48, v4, 16, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[42:45], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v49, v2, 16, v1
	v_perm_b32 v1, v236, v206, 0xc0c0004
	v_perm_b32 v2, v205, v204, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v2, 16, v1
	v_perm_b32 v1, v229, v235, 0xc0c0004
	v_perm_b32 v2, v234, v233, 0xc0c0004
	v_lshl_or_b32 v46, v2, 16, v1
	v_wmma_i32_16x16x16_iu8 v[1:8], v[38:41], v[17:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[38:41], v[46:49], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v38, v228, v230, 0xc0c0004
	v_perm_b32 v39, v231, v232, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[42:45], v[46:49], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v40, v201, v203, 0xc0c0004
	v_perm_b32 v42, v226, v227, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v41, v39, 16, v38
	v_perm_b32 v38, v198, v199, 0xc0c0004
	v_perm_b32 v39, v200, v225, 0xc0c0004
	v_lshl_or_b32 v40, v42, 16, v40
	v_perm_b32 v42, v223, v224, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v39, v39, 16, v38
	v_perm_b32 v38, v221, v222, 0xc0c0004
	v_lshl_or_b32 v38, v42, 16, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s31, v0
	scratch_load_b32 v0, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v43, s31, v0
	scratch_load_b32 v0, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v43, s31, v0
	scratch_load_b32 v0, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s31, v0
	scratch_load_b32 v0, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v43, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s31, v0
	scratch_load_b32 v0, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s31, v0
	scratch_load_b32 v0, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s31, v0
	scratch_load_b32 v0, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s31, v0
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	v_lshl_or_b32 v45, v43, 16, v42
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v44, v46, 16, v44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s31, v0
	scratch_load_b32 v0, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v43, s31, v0
	scratch_load_b32 v0, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v43, s31, v0
	scratch_load_b32 v0, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s31, v0
	scratch_load_b32 v0, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v43, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v43, 16, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s31, v0
	scratch_load_b32 v0, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s31, v0
	scratch_load_b32 v0, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v42, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s31, v0
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s31, v0
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v46, 16, v42
	v_wmma_i32_16x16x16_iu8 v[1:8], v[42:45], v[38:41], v[1:8] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s31, v0
	scratch_load_b32 v0, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s31, v0
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s31, v0
	scratch_load_b32 v0, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s31, v0
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v48, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s31, v0
	scratch_load_b32 v0, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v49, s31, v0
	scratch_load_b32 v0, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v48, v49, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v49, s31, v0
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v49
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s31, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v49, 0xc0c0004
	v_lshl_or_b32 v49, v47, 16, v46
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:344
	scratch_load_b32 v46, off, off offset:332
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v48, v0, 16, v48
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v47, s31, v47
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v46, s31, v46
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s31, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v46, v46
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v46, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s31, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v46, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:316
	scratch_load_b32 v46, off, off offset:320
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s31, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s31, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s31, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v50, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v46, v46, 16, v0
	v_perm_b32 v0, v212, v211, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[46:49], v[38:41], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v38, v210, v208, 0xc0c0004
	v_perm_b32 v39, v196, v194, 0xc0c0004
	v_perm_b32 v40, v193, v192, 0xc0c0004
	v_lshl_or_b32 v41, v38, 16, v0
	v_perm_b32 v0, v187, v186, 0xc0c0004
	v_perm_b32 v38, v185, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v40, v40, 16, v39
	v_lshl_or_b32 v39, v38, 16, v0
	v_perm_b32 v0, v80, v79, 0xc0c0004
	v_perm_b32 v38, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v38, v38, 16, v0
	v_perm_b32 v0, v217, v218, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[42:45], v[38:41], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[46:49], v[38:41], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v38, v219, v220, 0xc0c0004
	v_perm_b32 v39, v213, v214, 0xc0c0004
	v_perm_b32 v40, v215, v216, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:184
	scratch_load_b32 v42, off, off offset:172
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v41, v38, 16, v0
	v_perm_b32 v0, v195, v197, 0xc0c0004
	v_perm_b32 v38, v202, v207, 0xc0c0004
	v_lshl_or_b32 v40, v40, 16, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v44, off, off offset:160
	scratch_load_b32 v45, off, off offset:164
	scratch_load_b32 v47, off, off offset:440
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v39, v38, 16, v0
	v_perm_b32 v0, v188, v189, 0xc0c0004
	v_perm_b32 v38, v190, v191, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v49, off, off offset:420
	scratch_load_b32 v46, off, off offset:132
	scratch_load_b32 v48, off, off offset:416
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v38, v38, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v50, s31, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v43, s31, v43
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v42, s31, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	ds_load_u8 v42, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v44, s31, v44
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v45, s31, v45
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v47, s31, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	ds_load_u8 v45, v45
	ds_load_u8 v47, v47
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v46, s31, v46
	v_add_nc_u32_e32 v49, s31, v49
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s31, v0
	v_add_nc_u32_e32 v48, s31, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	ds_load_u8 v49, v49
	ds_load_u8 v0, v0
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s31, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v42, v43, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v43, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v43, s31, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v43, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s31, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	v_lshl_or_b32 v45, v42, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v44, v44, 16, v43
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:152
	scratch_load_b32 v42, off, off offset:140
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s31, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v43, s31, v43
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s31, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v43, v43
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s31, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v42, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v42, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:124
	scratch_load_b32 v42, off, off offset:128
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s31, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s31, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v42, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s31, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v46, v42, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v42, v42, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[42:45], v[38:41], v[1:8] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v46, s31, v46
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s31, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v46, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s31, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v47, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v47, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s31, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v48, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v48, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s31, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	v_lshl_or_b32 v49, v46, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v48, v48, 16, v47
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:408
	scratch_load_b32 v46, off, off offset:396
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s31, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v47, s31, v47
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s31, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v47, v47
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v46, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s31, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v46, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:380
	scratch_load_b32 v46, off, off offset:384
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s31, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s31, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s31, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v50, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v46, v46, 16, v0
	v_perm_b32 v0, v75, v72, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[46:49], v[38:41], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v38, v70, v69, 0xc0c0004
	v_perm_b32 v39, v65, v63, 0xc0c0004
	v_perm_b32 v40, v62, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v41, v38, 16, v0
	v_perm_b32 v0, v56, v55, 0xc0c0004
	v_perm_b32 v38, v54, v53, 0xc0c0004
	v_lshl_or_b32 v40, v40, 16, v39
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v39, v38, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:672
	scratch_load_b32 v50, off, off offset:676
	v_perm_b32 v0, v52, v51, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v38, v50, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v38, v38, 16, v0
	v_perm_b32 v0, v81, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[42:45], v[38:41], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[46:49], v[38:41], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v38, v129, v131, 0xc0c0004
	v_perm_b32 v39, v71, v73, 0xc0c0004
	v_perm_b32 v40, v74, v76, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:248
	scratch_load_b32 v42, off, off offset:236
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v41, v38, 16, v0
	v_perm_b32 v0, v64, v66, 0xc0c0004
	v_perm_b32 v38, v67, v68, 0xc0c0004
	v_lshl_or_b32 v40, v40, 16, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v44, off, off offset:224
	scratch_load_b32 v45, off, off offset:228
	scratch_load_b32 v47, off, off offset:504
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v39, v38, 16, v0
	v_perm_b32 v0, v57, v58, 0xc0c0004
	v_perm_b32 v38, v59, v60, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v49, off, off offset:484
	scratch_load_b32 v46, off, off offset:196
	scratch_load_b32 v48, off, off offset:480
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v38, v38, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v50, s31, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v43, s31, v43
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v42, s31, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	ds_load_u8 v42, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v44, s31, v44
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v45, s31, v45
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v47, s31, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	ds_load_u8 v45, v45
	ds_load_u8 v47, v47
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v46, s31, v46
	v_add_nc_u32_e32 v49, s31, v49
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s31, v0
	v_add_nc_u32_e32 v48, s31, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	ds_load_u8 v49, v49
	ds_load_u8 v0, v0
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s31, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v42, v43, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v43, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v43, s31, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v43, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s31, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	v_lshl_or_b32 v45, v42, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v44, v44, 16, v43
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:216
	scratch_load_b32 v42, off, off offset:204
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s31, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v43, s31, v43
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s31, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v43, v43
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s31, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v42, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v42, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:188
	scratch_load_b32 v42, off, off offset:192
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s31, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s31, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v42, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s31, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v46, v42, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v42, v42, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[42:45], v[38:41], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v46, s31, v46
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s31, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v46, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s31, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v47, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v47, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s31, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v48, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v48, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s31, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	v_lshl_or_b32 v49, v46, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v48, v48, 16, v47
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:472
	scratch_load_b32 v46, off, off offset:460
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s31, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v47, s31, v47
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s31, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v47, v47
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v46, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s31, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v46, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:444
	scratch_load_b32 v46, off, off offset:448
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s31, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s31, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s31, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v50, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v0
	v_wmma_i32_16x16x16_iu8 v[25:32], v[46:49], v[38:41], v[25:32] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:664
	scratch_load_b32 v38, off, off offset:668
	v_cvt_f32_i32_e32 v28, v28
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v38, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:656
	scratch_load_b32 v39, off, off offset:660
	s_waitcnt vmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:624
	scratch_load_b32 v40, off, off offset:652
	s_waitcnt vmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:608
	scratch_load_b32 v41, off, off offset:620
	s_waitcnt vmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	v_lshl_or_b32 v41, v38, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:600
	scratch_load_b32 v38, off, off offset:604
	v_lshl_or_b32 v40, v40, 16, v39
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v38, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:584
	scratch_load_b32 v39, off, off offset:588
	s_waitcnt vmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v38, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:576
	scratch_load_b32 v38, off, off offset:580
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v38, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:556
	scratch_load_b32 v50, off, off offset:572
	s_waitcnt vmcnt(0)
	v_perm_b32 v38, v50, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v38, v38, 16, v0
	v_cvt_f32_i32_e32 v0, v31
	v_wmma_i32_16x16x16_iu8 v[17:24], v[42:45], v[38:41], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[46:49], v[38:41], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v39, v25
	v_cvt_f32_i32_e32 v40, v26
	v_cvt_f32_i32_e32 v38, v27
	v_cvt_f32_i32_e32 v26, v29
	v_cvt_f32_i32_e32 v27, v30
	v_cvt_f32_i32_e32 v25, v32
	v_cvt_f32_i32_e32 v31, v17
	v_cvt_f32_i32_e32 v32, v18
	v_cvt_f32_i32_e32 v50, v19
	v_cvt_f32_i32_e32 v49, v20
	v_cvt_f32_i32_e32 v29, v21
	v_cvt_f32_i32_e32 v30, v22
	v_cvt_f32_i32_e32 v21, v23
	v_cvt_f32_i32_e32 v22, v24
	v_cvt_f32_i32_e32 v19, v9
	v_cvt_f32_i32_e32 v20, v10
	v_cvt_f32_i32_e32 v17, v11
	v_cvt_f32_i32_e32 v18, v12
	v_cvt_f32_i32_e32 v11, v13
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v9, v15
	v_cvt_f32_i32_e32 v10, v16
	v_cvt_f32_i32_e32 v13, v3
	v_cvt_f32_i32_e32 v14, v4
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v4, v8
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1a                           ; 108-byte Folded Spill
	scratch_store_b32 off, v32, off offset:720
	scratch_store_b32 off, v31, off offset:716
	scratch_store_b32 off, v2, off offset:712
	scratch_store_b32 off, v1, off offset:708
	scratch_store_b32 off, v14, off offset:704
	scratch_store_b32 off, v13, off offset:700
	scratch_store_b32 off, v30, off offset:648
	scratch_store_b32 off, v29, off offset:644
	scratch_store_b32 off, v6, off offset:640
	scratch_store_b32 off, v5, off offset:636
	scratch_store_b32 off, v22, off offset:632
	scratch_store_b32 off, v21, off offset:628
	scratch_store_b32 off, v4, off offset:616
	scratch_store_b32 off, v3, off offset:612
	scratch_store_b32 off, v20, off offset:596
	scratch_store_b32 off, v19, off offset:592
	scratch_store_b32 off, v18, off offset:568
	scratch_store_b32 off, v17, off offset:564
	scratch_store_b32 off, v28, off offset:560
	scratch_store_b32 off, v12, off offset:552
	scratch_store_b32 off, v11, off offset:548
	scratch_store_b32 off, v27, off offset:544
	scratch_store_b32 off, v26, off offset:540
	scratch_store_b32 off, v10, off offset:536
	scratch_store_b32 off, v9, off offset:532
	scratch_store_b32 off, v25, off offset:528
	scratch_store_b32 off, v0, off offset:524
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v9, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	v_perm_b32 v0, v35, v37, 0xc0c0004
	v_perm_b32 v1, v34, v36, 0xc0c0004
	v_perm_b32 v2, v254, v209, 0xc0c0004
	v_perm_b32 v3, v253, v255, 0xc0c0004
	s_mov_b32 s4, 0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v4, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v20, v1, 16, v0
	v_perm_b32 v0, v251, v252, 0xc0c0004
	v_perm_b32 v1, v249, v250, 0xc0c0004
	v_lshl_or_b32 v19, v3, 16, v2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v2, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v18, v1, 16, v0
	v_perm_b32 v0, v245, v247, 0xc0c0004
	v_perm_b32 v1, v246, v248, 0xc0c0004
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v17, v1, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:48
	scratch_load_b32 v1, off, off offset:44
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s11, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v3, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v16, s11 :: v_dual_mov_b32 v15, s10
	v_dual_mov_b32 v13, s8 :: v_dual_mov_b32 v14, s9
	v_dual_mov_b32 v12, s7 :: v_dual_mov_b32 v11, s6
	v_dual_mov_b32 v9, s4 :: v_dual_mov_b32 v10, s5
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v4, s1, v4
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v2, s1, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v4, v4
	ds_load_u8 v2, v2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, s1, v1
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s1, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v2, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v24, v1, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s1, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v3, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s1, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v4, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v23, v3, 16, v2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:24
	scratch_load_b32 v1, off, off offset:12
	v_add_nc_u32_e32 v0, s1, v0
	scratch_load_b32 v3, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v4, s1, v4
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, s1, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v4, v4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s1, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	ds_load_u8 v1, v1
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v2, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v22, v1, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off           ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s1, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s1, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:8  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v2, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v21, v1, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:304
	scratch_load_b32 v1, off, off offset:300
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, s1, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v2, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v28, v1, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s1, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v3, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s1, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v3, 16, v2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:276
	scratch_load_b32 v1, off, off offset:268
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v3, v238, v237, 0xc0c0004
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s1, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v2, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v26, v1, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:252
	scratch_load_b32 v1, off, off offset:256
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, s1, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_perm_b32 v2, v240, v239, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v25, v1, 16, v0
	v_perm_b32 v0, v244, v243, 0xc0c0004
	v_perm_b32 v1, v242, v241, 0xc0c0004
	v_lshl_or_b32 v31, v3, 16, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v32, v1, 16, v0
	v_perm_b32 v0, v236, v206, 0xc0c0004
	v_perm_b32 v1, v205, v204, 0xc0c0004
	v_lshl_or_b32 v30, v1, 16, v0
	v_perm_b32 v0, v229, v235, 0xc0c0004
	v_perm_b32 v1, v234, v233, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[233:240], v[25:28], v[17:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v29, v1, 16, v0
	v_wmma_i32_16x16x16_iu8 v[1:8], v[21:24], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v0, v228, v230, 0xc0c0004
	v_perm_b32 v17, v231, v232, 0xc0c0004
	v_perm_b32 v18, v201, v203, 0xc0c0004
	v_perm_b32 v19, v226, v227, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[241:248], v[21:24], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v20, v17, 16, v0
	v_perm_b32 v0, v198, v199, 0xc0c0004
	v_perm_b32 v17, v200, v225, 0xc0c0004
	v_lshl_or_b32 v19, v19, 16, v18
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:116
	scratch_load_b32 v21, off, off offset:108
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[29:32], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v18, v17, 16, v0
	v_perm_b32 v0, v221, v222, 0xc0c0004
	v_perm_b32 v17, v223, v224, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v24, off, off offset:100
	scratch_load_b32 v23, off, off offset:92
	scratch_load_b32 v28, off, off offset:356
	scratch_load_b32 v26, off, off offset:376
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v17, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:112
	scratch_load_b32 v25, off, off offset:68
	scratch_load_b32 v29, off, off offset:324
	scratch_load_b32 v27, off, off offset:352
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v22, s1, v22
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v23, s1, v23
	v_add_nc_u32_e32 v24, s1, v24
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v28, s1, v28
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v26, s1, v26
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	ds_load_u8 v24, v24
	ds_load_u8 v28, v28
	ds_load_u8 v26, v26
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v25, s1, v25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v29, s1, v29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s1, v27
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	ds_load_u8 v29, v29
	ds_load_u8 v27, v27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v22, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s1, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v23, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s1, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	v_lshl_or_b32 v24, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v23, v23, 16, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:84
	scratch_load_b32 v21, off, off offset:76
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v22, s1, v22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:60
	scratch_load_b32 v21, off, off offset:64
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v25, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v21, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[21:24], v[17:20], v[1:8] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v25, s1, v25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s1, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v26, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s1, v26
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v26, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v27, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v27, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s1, v27
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v27, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_lshl_or_b32 v28, v25, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v27, v27, 16, v26
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:344
	scratch_load_b32 v25, off, off offset:332
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v26, s1, v26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s1, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v26, v26
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s1, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v25, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:316
	scratch_load_b32 v25, off, off offset:320
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s1, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v25, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s1, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v29, v25, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v29, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v25, v25, 16, v0
	v_perm_b32 v0, v212, v211, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[233:240], v[25:28], v[17:20], v[233:240] neg_lo:[1,1,0]
	v_perm_b32 v17, v210, v208, 0xc0c0004
	v_perm_b32 v18, v196, v194, 0xc0c0004
	v_perm_b32 v19, v193, v192, 0xc0c0004
	v_lshl_or_b32 v20, v17, 16, v0
	v_perm_b32 v0, v187, v186, 0xc0c0004
	v_perm_b32 v17, v185, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v19, v19, 16, v18
	v_lshl_or_b32 v18, v17, 16, v0
	v_perm_b32 v0, v80, v79, 0xc0c0004
	v_perm_b32 v17, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v17, v17, 16, v0
	v_perm_b32 v0, v217, v218, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[241:248], v[21:24], v[17:20], v[241:248] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v17, v219, v220, 0xc0c0004
	v_perm_b32 v18, v213, v214, 0xc0c0004
	v_perm_b32 v19, v215, v216, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:184
	scratch_load_b32 v21, off, off offset:172
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v20, v17, 16, v0
	v_perm_b32 v0, v195, v197, 0xc0c0004
	v_perm_b32 v17, v202, v207, 0xc0c0004
	v_lshl_or_b32 v19, v19, 16, v18
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v23, off, off offset:160
	scratch_load_b32 v24, off, off offset:164
	scratch_load_b32 v26, off, off offset:440
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v18, v17, 16, v0
	v_perm_b32 v0, v188, v189, 0xc0c0004
	v_perm_b32 v17, v190, v191, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v28, off, off offset:420
	scratch_load_b32 v25, off, off offset:132
	scratch_load_b32 v27, off, off offset:416
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v17, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v29, s1, v29
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v29, v29
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v22, s1, v22
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v23, s1, v23
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v24, s1, v24
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v26, s1, v26
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	ds_load_u8 v24, v24
	ds_load_u8 v26, v26
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v25, s1, v25
	v_add_nc_u32_e32 v28, s1, v28
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	v_add_nc_u32_e32 v27, s1, v27
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	ds_load_u8 v28, v28
	ds_load_u8 v0, v0
	ds_load_u8 v27, v27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v21, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v22, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s1, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v22, v23, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v23, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s1, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	v_lshl_or_b32 v24, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v23, v23, 16, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:152
	scratch_load_b32 v21, off, off offset:140
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v22, s1, v22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v21, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:124
	scratch_load_b32 v21, off, off offset:128
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v25, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v21, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[21:24], v[17:20], v[1:8] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v25, s1, v25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s1, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v26, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s1, v26
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v26, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v27, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v27, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s1, v27
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v27, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_lshl_or_b32 v28, v25, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v27, v27, 16, v26
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:408
	scratch_load_b32 v25, off, off offset:396
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v26, s1, v26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s1, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v26, v26
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s1, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v25, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:380
	scratch_load_b32 v25, off, off offset:384
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s1, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v25, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s1, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v29, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v25, v25, 16, v0
	v_perm_b32 v0, v75, v72, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[233:240], v[25:28], v[17:20], v[233:240] neg_lo:[1,1,0]
	v_perm_b32 v17, v70, v69, 0xc0c0004
	v_perm_b32 v18, v65, v63, 0xc0c0004
	v_perm_b32 v19, v62, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v20, v17, 16, v0
	v_perm_b32 v0, v56, v55, 0xc0c0004
	v_perm_b32 v17, v54, v53, 0xc0c0004
	v_lshl_or_b32 v19, v19, 16, v18
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v18, v17, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:672
	scratch_load_b32 v29, off, off offset:676
	v_perm_b32 v0, v52, v51, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v29, v17, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v29, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v17, v17, 16, v0
	v_perm_b32 v0, v81, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[241:248], v[21:24], v[17:20], v[241:248] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v17, v129, v131, 0xc0c0004
	v_perm_b32 v18, v71, v73, 0xc0c0004
	v_perm_b32 v19, v74, v76, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:248
	scratch_load_b32 v21, off, off offset:236
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v20, v17, 16, v0
	v_perm_b32 v0, v64, v66, 0xc0c0004
	v_perm_b32 v17, v67, v68, 0xc0c0004
	v_lshl_or_b32 v19, v19, 16, v18
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v23, off, off offset:224
	scratch_load_b32 v24, off, off offset:228
	scratch_load_b32 v26, off, off offset:504
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v18, v17, 16, v0
	v_perm_b32 v0, v57, v58, 0xc0c0004
	v_perm_b32 v17, v59, v60, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v28, off, off offset:484
	scratch_load_b32 v25, off, off offset:196
	scratch_load_b32 v27, off, off offset:480
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v17, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v29, s1, v29
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v29, v29
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v22, s1, v22
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v23, s1, v23
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v24, s1, v24
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v26, s1, v26
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	ds_load_u8 v24, v24
	ds_load_u8 v26, v26
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v25, s1, v25
	v_add_nc_u32_e32 v28, s1, v28
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	v_add_nc_u32_e32 v27, s1, v27
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	ds_load_u8 v28, v28
	ds_load_u8 v0, v0
	ds_load_u8 v27, v27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v21, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v22, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s1, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v22, v23, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v23, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s1, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	v_lshl_or_b32 v24, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v23, v23, 16, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:216
	scratch_load_b32 v21, off, off offset:204
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v22, s1, v22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v21, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:188
	scratch_load_b32 v21, off, off offset:192
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v25, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v21, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[21:24], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v6, v6
	scratch_store_b32 off, v1, off offset:508 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v25, s1, v25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s1, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v26, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s1, v26
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v26, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v27, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v27, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s1, v27
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v27, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_lshl_or_b32 v28, v25, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v27, v27, 16, v26
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:472
	scratch_load_b32 v25, off, off offset:460
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v26, s1, v26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s1, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v26, v26
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s1, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v25, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:444
	scratch_load_b32 v25, off, off offset:448
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s1, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v25, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s1, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v29, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v25, 16, v0
	v_wmma_i32_16x16x16_iu8 v[233:240], v[25:28], v[17:20], v[233:240] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:664
	scratch_load_b32 v17, off, off offset:668
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:656
	scratch_load_b32 v18, off, off offset:660
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:624
	scratch_load_b32 v19, off, off offset:652
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:608
	scratch_load_b32 v20, off, off offset:620
	s_waitcnt vmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_lshl_or_b32 v20, v17, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:600
	scratch_load_b32 v17, off, off offset:604
	v_lshl_or_b32 v19, v19, 16, v18
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:584
	scratch_load_b32 v18, off, off offset:588
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v17, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:576
	scratch_load_b32 v17, off, off offset:580
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:556
	scratch_load_b32 v29, off, off offset:572
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v29, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v17, v17, 16, v0
	v_cvt_f32_i32_e32 v0, v239
	v_wmma_i32_16x16x16_iu8 v[241:248], v[21:24], v[17:20], v[241:248] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v24, v233
	v_cvt_f32_i32_e32 v25, v234
	v_cvt_f32_i32_e32 v20, v235
	v_cvt_f32_i32_e32 v21, v236
	v_cvt_f32_i32_e32 v18, v237
	v_cvt_f32_i32_e32 v19, v238
	v_cvt_f32_i32_e32 v17, v240
	v_cvt_f32_i32_e32 v43, v241
	v_cvt_f32_i32_e32 v42, v242
	v_cvt_f32_i32_e32 v41, v243
	v_cvt_f32_i32_e32 v32, v244
	v_cvt_f32_i32_e32 v31, v245
	v_cvt_f32_i32_e32 v30, v246
	v_cvt_f32_i32_e32 v28, v247
	v_cvt_f32_i32_e32 v29, v248
	v_cvt_f32_i32_e32 v26, v9
	v_cvt_f32_i32_e32 v27, v10
	v_cvt_f32_i32_e32 v22, v11
	v_cvt_f32_i32_e32 v23, v12
	v_cvt_f32_i32_e32 v11, v13
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v9, v15
	v_cvt_f32_i32_e32 v10, v16
	v_cvt_f32_i32_e32 v13, v3
	v_cvt_f32_i32_e32 v14, v4
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v4, v8
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s30, 31
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v43, off offset:764
	scratch_store_b32 off, v42, off offset:760
	scratch_store_b32 off, v1, off offset:756
	scratch_store_b32 off, v41, off offset:752
	scratch_store_b32 off, v32, off offset:748
	scratch_store_b32 off, v14, off offset:744
	scratch_store_b32 off, v13, off offset:740
	scratch_store_b32 off, v31, off offset:736
	scratch_store_b32 off, v30, off offset:732
	scratch_store_b32 off, v6, off offset:728
	scratch_store_b32 off, v5, off offset:724
	scratch_store_b32 off, v29, off offset:696
	scratch_store_b32 off, v28, off offset:692
	scratch_store_b32 off, v4, off offset:688
	scratch_store_b32 off, v3, off offset:684
	scratch_store_b32 off, v27, off offset:680
	scratch_store_b32 off, v26, off offset:676
	scratch_store_b32 off, v25, off offset:672
	scratch_store_b32 off, v24, off offset:668
	scratch_store_b32 off, v23, off offset:664
	scratch_store_b32 off, v22, off offset:660
	scratch_store_b32 off, v21, off offset:656
	scratch_store_b32 off, v20, off offset:652
	scratch_store_b32 off, v12, off offset:624
	scratch_store_b32 off, v11, off offset:620
	scratch_store_b32 off, v19, off offset:608
	scratch_store_b32 off, v18, off offset:604
	scratch_store_b32 off, v10, off offset:600
	scratch_store_b32 off, v9, off offset:588
	scratch_store_b32 off, v17, off offset:584
	scratch_store_b32 off, v40, off offset:580
	scratch_store_b32 off, v39, off offset:576
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:572
	scratch_store_b32 off, v38, off offset:556
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s15, 0x31027000
	s_add_i32 s0, s30, s0
	s_mov_b32 s14, 0x7ffffffe
	s_ashr_i32 s0, s0, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s45
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v0, v166, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_mov_b32 v215, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v214, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v51, v0, s[12:15], 0 offen
	v_add_lshl_u32 v0, v165, s0, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s35
	v_mov_b32_e32 v236, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v237, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_mov_b32_e32 v228, 0
	v_mov_b32_e32 v226, 0
	v_mov_b32_e32 v204, 0
	v_mov_b32_e32 v224, 0
	buffer_load_u16 v56, v0, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v0, v164, s0, 1
	v_mov_b32_e32 v196, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v3, 0
	v_mov_b32_e32 v210, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_mov_b32_e32 v20, 0
	v_mov_b32_e32 v232, 0
	v_mov_b32_e32 v206, 0
	v_mov_b32_e32 v208, 0
	buffer_load_u16 v54, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, v161, s0, 1
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v233, 0
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v205, 0 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_mov_b32_e32 v223, 0
	v_mov_b32_e32 v197, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v235, 0
	buffer_load_u16 v55, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, v162, s0, 1
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v231, 0
	v_mov_b32_e32 v225, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v227, 0 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_mov_b32_e32 v219, 0
	v_mov_b32_e32 v201, 0
	v_mov_b32_e32 v199, 0
	buffer_load_u16 v52, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, v163, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v53, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, v149, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v222, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, v150, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v221, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, v151, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v217, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, v152, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v216, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, v133, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v200, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, v134, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v198, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, v135, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v193, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, v136, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v192, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, v137, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:776 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v138, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v188, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, v139, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:768 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v140, s0, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s0, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:772 ; 4-byte Folded Spill
	.loc	1 370 31 is_stmt 0              ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v0, s0, v160, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v67, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s0, v156, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v66, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s0, v157, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v62, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s0, v158, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v65, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s0, v153, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v61, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s0, v159, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v64, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s0, v154, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v207, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s0, v155, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v220, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s0, v141, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v202, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s0, v142, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v203, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s0, v143, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v194, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s0, v144, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v195, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s0, v145, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v190, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s0, v146, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v191, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s0, v147, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:780 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v148, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v187, v0, s[28:31], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v0, s48, v130
	ds_load_u8_d16 v239, v0 offset:2080
	ds_load_u8_d16 v242, v0 offset:2144
	ds_load_u8_d16 v129, v0 offset:2208
	ds_load_u8_d16 v240, v0 offset:2272
	ds_load_u8_d16 v244, v0 offset:2336
	ds_load_u8_d16 v246, v0 offset:2400
	ds_load_u8_d16 v243, v0 offset:2464
	ds_load_u8_d16 v245, v0 offset:2528
	ds_load_u8_d16 v250, v0 offset:2592
	ds_load_u8_d16 v252, v0 offset:2656
	ds_load_u8_d16 v248, v0 offset:2720
	ds_load_u8_d16 v251, v0 offset:2784
	ds_load_u8_d16 v209, v0 offset:2848
	ds_load_u8_d16 v230, v0 offset:2912
	ds_load_u8_d16 v184, v0 offset:2976
	ds_load_u8_d16 v229, v0 offset:3040
	ds_load_u8_d16 v68, v0 offset:3104
	ds_load_u8_d16 v71, v0 offset:3168
	ds_load_u8_d16 v72, v0 offset:3232
	ds_load_u8_d16 v73, v0 offset:3296
	ds_load_u8_d16 v74, v0 offset:3360
	ds_load_u8_d16 v75, v0 offset:3424
	ds_load_u8_d16 v76, v0 offset:3488
	ds_load_u8_d16 v77, v0 offset:3552
	ds_load_u8_d16 v79, v0 offset:3616
	ds_load_u8_d16 v81, v0 offset:3680
	ds_load_u8_d16 v78, v0 offset:3744
	ds_load_u8_d16 v80, v0 offset:3808
	ds_load_u8_d16 v131, v0 offset:3872
	ds_load_u8_d16 v241, v0 offset:3936
	ds_load_u8_d16 v82, v0 offset:4000
	ds_load_u8_d16 v238, v0 offset:4064
	ds_load_u8_d16 v1, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1072 ; 4-byte Folded Spill
	ds_load_u8_d16 v69, v0 offset:32
	ds_load_u8_d16 v1, v0 offset:64
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1076 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:128
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1080 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:192
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1084 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:256
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1088 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:320
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1092 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:384
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1096 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:448
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1100 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:512
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1108 ; 4-byte Folded Spill
	ds_load_u8_d16 v58, v0 offset:576
	ds_load_u8_d16 v1, v0 offset:640
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1104 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:704
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1112 ; 4-byte Folded Spill
	ds_load_u8_d16 v57, v0 offset:768
	ds_load_u8_d16 v60, v0 offset:832
	ds_load_u8_d16 v59, v0 offset:896
	ds_load_u8_d16 v43, v0 offset:960
	ds_load_u8_d16 v1, v0 offset:1024
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1008 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1088
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1012 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1152
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1016 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1216
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1020 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1280
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1024 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1344
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1028 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1408
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1032 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1472
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1036 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1536
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1040 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1600
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1044 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1664
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1048 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1728
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1052 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1792
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1056 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1856
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1060 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1920
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1064 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1984
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1068 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2048
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:944 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2112
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:948 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2176
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:952 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2240
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:956 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2304
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:960 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2368
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:964 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2432
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:968 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2496
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:972 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2560
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:976 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2624
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:980 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2688
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:984 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2752
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:988 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2816
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:992 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2880
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:996 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2944
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1000 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3008
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1004 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3072
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:880 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3136
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:884 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3200
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:888 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3264
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:892 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3328
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:896 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3392
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:900 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3456
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:904 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3520
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:908 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3584
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:912 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:916 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:920 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:924 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3840
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:928 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:932 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3968
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:936 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:4032
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:940 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:96
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:788 ; 4-byte Folded Spill
	ds_load_u8_d16 v249, v0 offset:160
	ds_load_u8_d16 v1, v0 offset:224
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:784 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:288
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:812 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:352
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:820 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:416
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:804 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:480
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:816 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:544
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:828 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:608
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:836 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:672
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:824 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:736
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:832 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:800
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:844 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:864
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:852 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:928
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:840 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:992
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:848 ; 4-byte Folded Spill
	ds_load_u8_d16 v254, v0 offset:1056
	ds_load_u8_d16 v70, v0 offset:1120
	ds_load_u8_d16 v253, v0 offset:1184
	ds_load_u8_d16 v255, v0 offset:1248
	ds_load_u8_d16 v185, v0 offset:1312
	ds_load_u8_d16 v189, v0 offset:1376
	ds_load_u8_d16 v247, v0 offset:1440
	ds_load_u8_d16 v186, v0 offset:1504
	ds_load_u8_d16 v63, v0 offset:1568
	ds_load_u8_d16 v213, v0 offset:1632
	ds_load_u8_d16 v211, v0 offset:1696
	ds_load_u8_d16 v212, v0 offset:1760
	ds_load_u8_d16 v1, v0 offset:1824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:796 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1888
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:808 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:792 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2016
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v0, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v0
	v_mov_b32_e32 v0, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:800 ; 4-byte Folded Spill
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	v_perm_b32 v0, v57, v60, 0xc0c0004
	v_perm_b32 v1, v59, v43, 0xc0c0004
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v2, off, off offset:1108
	scratch_load_b32 v3, off, off offset:1104
	scratch_load_b32 v4, off, off offset:1112
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v20, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1088
	scratch_load_b32 v1, off, off offset:1092
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v48, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v16, s11 :: v_dual_mov_b32 v15, s10
	v_dual_mov_b32 v13, s8 :: v_dual_mov_b32 v14, s9
	v_dual_mov_b32 v12, s7 :: v_dual_mov_b32 v11, s6
	v_dual_mov_b32 v9, s4 :: v_dual_mov_b32 v10, s5
	s_waitcnt vmcnt(5)
	v_perm_b32 v2, v2, v58, 0xc0c0004
	s_waitcnt vmcnt(3)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v4, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	v_lshl_or_b32 v19, v3, 16, v2
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1096
	scratch_load_b32 v2, off, off offset:1100
	scratch_load_b32 v3, off, off offset:32
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v48, s47, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v4, s47, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt vmcnt(1)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s47, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v4
	v_lshl_or_b32 v18, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1072
	scratch_load_b32 v1, off, off offset:1076
	ds_load_u8 v3, v3
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1080
	scratch_load_b32 v2, off, off offset:1084
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v17, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:48
	scratch_load_b32 v1, off, off offset:44
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, s47, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s47, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s47, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v38, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s47, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s47, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v4, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v37, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:24
	scratch_load_b32 v1, off, off offset:12
	v_add_nc_u32_e32 v0, s47, v0
	scratch_load_b32 v3, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v4, s47, v4
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, s47, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, s47, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s47, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v1, v1
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s47, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v36, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off           ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s47, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s47, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s47, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:8  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s47, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v35, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:304
	scratch_load_b32 v1, off, off offset:300
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, s47, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s47, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s47, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v42, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s47, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s47, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:280
	scratch_load_b32 v1, off, off offset:268
	v_add_nc_u32_e32 v0, s47, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s47, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s47, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s47, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v40, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:252
	scratch_load_b32 v1, off, off offset:256
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, s47, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s47, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s47, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:844
	scratch_load_b32 v1, off, off offset:852
	v_wmma_i32_16x16x16_iu8 v[25:32], v[39:42], v[17:20], v[9:16] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:840
	scratch_load_b32 v2, off, off offset:848
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:828
	scratch_load_b32 v3, off, off offset:836
	v_lshl_or_b32 v47, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:812
	scratch_load_b32 v1, off, off offset:820
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:824
	scratch_load_b32 v4, off, off offset:832
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:804
	scratch_load_b32 v2, off, off offset:816
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:788
	scratch_load_b32 v1, off, off offset:784
	s_waitcnt vmcnt(1)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v249, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v44, v1, 16, v0
	v_wmma_i32_16x16x16_iu8 v[1:8], v[35:38], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[35:38], v[44:47], v[9:16] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1056
	scratch_load_b32 v35, off, off offset:1060
	v_wmma_i32_16x16x16_iu8 v[9:16], v[39:42], v[44:47], v[9:16] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v40, off, off offset:120
	scratch_load_b32 v41, off, off offset:96
	scratch_load_b32 v42, off, off offset:100
	scratch_load_b32 v45, off, off offset:376
	scratch_load_b32 v44, off, off offset:68
	scratch_load_b32 v46, off, off offset:352
	scratch_load_b32 v47, off, off offset:356
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt vmcnt(7)
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:1064
	scratch_load_b32 v36, off, off offset:1068
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v40, s47, v40
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v41, s47, v41
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v42, s47, v42
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v45, s47, v45
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v44, s47, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	ds_load_u8 v45, v45
	ds_load_u8 v44, v44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v46, s47, v46
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v47, s47, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	ds_load_u8 v47, v47
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v36, off, off offset:1040
	scratch_load_b32 v37, off, off offset:1044
	s_waitcnt vmcnt(0)
	v_perm_b32 v36, v36, v37, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:1048
	scratch_load_b32 v38, off, off offset:1052
	s_waitcnt vmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	v_lshl_or_b32 v38, v35, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1024
	scratch_load_b32 v35, off, off offset:1028
	v_lshl_or_b32 v37, v37, 16, v36
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:1032
	scratch_load_b32 v36, off, off offset:1036
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v35, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1008
	scratch_load_b32 v35, off, off offset:1012
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:1016
	scratch_load_b32 v39, off, off offset:1020
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v35, v35, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s47, v39
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s47, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v39, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s47, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v40, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s47, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v40, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v41, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s47, v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	v_lshl_or_b32 v42, v39, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v41, v41, 16, v40
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:88
	scratch_load_b32 v39, off, off offset:76
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v40, s47, v40
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s47, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v40, v40
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v39, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s47, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v39, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:60
	scratch_load_b32 v39, off, off offset:64
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s47, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s47, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v44, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v39, v39, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[39:42], v[35:38], v[1:8] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v44, s47, v44
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s47, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s47, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s47, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s47, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	v_lshl_or_b32 v47, v44, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v46, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:344
	scratch_load_b32 v44, off, off offset:332
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s47, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s47, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v45, v45
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s47, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v44, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:316
	scratch_load_b32 v44, off, off offset:320
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s47, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s47, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v48, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v48, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v44, v44, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[44:47], v[35:38], v[25:32] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:796
	scratch_load_b32 v35, off, off offset:808
	v_perm_b32 v37, v211, v212, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v48, s47, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:792
	scratch_load_b32 v36, off, off offset:800
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	v_perm_b32 v36, v63, v213, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v38, v35, 16, v0
	v_perm_b32 v0, v185, v189, 0xc0c0004
	v_perm_b32 v35, v247, v186, 0xc0c0004
	v_lshl_or_b32 v37, v37, 16, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v36, v35, 16, v0
	v_perm_b32 v0, v254, v70, 0xc0c0004
	v_perm_b32 v35, v253, v255, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[39:42], v[35:38], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[44:47], v[35:38], v[9:16] neg_lo:[1,1,0]
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v0, off, off offset:992
	scratch_load_b32 v35, off, off offset:996
	scratch_load_b32 v40, off, off offset:184
	scratch_load_b32 v41, off, off offset:160
	scratch_load_b32 v42, off, off offset:164
	scratch_load_b32 v45, off, off offset:440
	scratch_load_b32 v47, off, off offset:420
	scratch_load_b32 v44, off, off offset:132
	scratch_load_b32 v46, off, off offset:416
	s_waitcnt vmcnt(7)
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:1000
	scratch_load_b32 v36, off, off offset:1004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v40, s47, v40
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v41, s47, v41
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v42, s47, v42
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v45, s47, v45
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v44, s47, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	ds_load_u8 v45, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v47, s47, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v46, s47, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v46, v46
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v36, off, off offset:976
	scratch_load_b32 v37, off, off offset:980
	s_waitcnt vmcnt(0)
	v_perm_b32 v36, v36, v37, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:984
	scratch_load_b32 v38, off, off offset:988
	s_waitcnt vmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	v_lshl_or_b32 v38, v35, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:960
	scratch_load_b32 v35, off, off offset:964
	v_lshl_or_b32 v37, v37, 16, v36
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:968
	scratch_load_b32 v36, off, off offset:972
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v35, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:944
	scratch_load_b32 v35, off, off offset:948
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:952
	scratch_load_b32 v39, off, off offset:956
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v35, v35, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s47, v39
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s47, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v39, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s47, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v40, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s47, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v40, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v41, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s47, v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	v_lshl_or_b32 v42, v39, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v41, v41, 16, v40
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:152
	scratch_load_b32 v39, off, off offset:140
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v40, s47, v40
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s47, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v40, v40
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v39, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s47, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v39, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:124
	scratch_load_b32 v39, off, off offset:128
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s47, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s47, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v44, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v39, v39, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[39:42], v[35:38], v[1:8] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v44, s47, v44
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s47, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s47, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s47, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s47, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	v_lshl_or_b32 v47, v44, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v46, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:408
	scratch_load_b32 v44, off, off offset:396
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s47, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s47, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v45, v45
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s47, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v44, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:380
	scratch_load_b32 v44, off, off offset:384
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s47, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s47, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v48, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v48, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v44, v44, 16, v0
	v_perm_b32 v0, v209, v230, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[44:47], v[35:38], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v35, v184, v229, 0xc0c0004
	v_perm_b32 v36, v250, v252, 0xc0c0004
	v_perm_b32 v37, v248, v251, 0xc0c0004
	v_lshl_or_b32 v38, v35, 16, v0
	v_perm_b32 v0, v244, v246, 0xc0c0004
	v_perm_b32 v35, v243, v245, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v37, v37, 16, v36
	v_lshl_or_b32 v36, v35, 16, v0
	v_perm_b32 v0, v239, v242, 0xc0c0004
	v_perm_b32 v35, v129, v240, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v35, v35, 16, v0
	v_wmma_i32_16x16x16_iu8 v[17:24], v[39:42], v[35:38], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[44:47], v[35:38], v[9:16] neg_lo:[1,1,0]
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v0, off, off offset:928
	scratch_load_b32 v35, off, off offset:932
	scratch_load_b32 v40, off, off offset:248
	scratch_load_b32 v41, off, off offset:224
	scratch_load_b32 v42, off, off offset:228
	scratch_load_b32 v45, off, off offset:504
	scratch_load_b32 v47, off, off offset:484
	scratch_load_b32 v44, off, off offset:196
	scratch_load_b32 v46, off, off offset:480
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v48, s47, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	s_waitcnt vmcnt(7)
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:936
	scratch_load_b32 v36, off, off offset:940
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v40, s47, v40
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v41, s47, v41
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v42, s47, v42
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v45, s47, v45
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v44, s47, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	ds_load_u8 v45, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v47, s47, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v46, s47, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v46, v46
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v36, off, off offset:912
	scratch_load_b32 v37, off, off offset:916
	s_waitcnt vmcnt(0)
	v_perm_b32 v36, v36, v37, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:920
	scratch_load_b32 v38, off, off offset:924
	s_waitcnt vmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	v_lshl_or_b32 v38, v35, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:896
	scratch_load_b32 v35, off, off offset:900
	v_lshl_or_b32 v37, v37, 16, v36
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:904
	scratch_load_b32 v36, off, off offset:908
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v35, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:880
	scratch_load_b32 v35, off, off offset:884
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:888
	scratch_load_b32 v39, off, off offset:892
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v35, v35, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s47, v39
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s47, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v39, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s47, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v40, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s47, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v40, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v41, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s47, v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	v_lshl_or_b32 v42, v39, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v41, v41, 16, v40
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:216
	scratch_load_b32 v39, off, off offset:204
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v40, s47, v40
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s47, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v40, v40
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v39, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s47, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v39, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:188
	scratch_load_b32 v39, off, off offset:192
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s47, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s47, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v44, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v39, v39, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[39:42], v[35:38], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v237, v5
	v_cvt_f32_i32_e32 v236, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v234, v7
	v_cvt_f32_i32_e32 v233, v8
	v_cvt_f32_i32_e32 v214, v1
	v_cvt_f32_i32_e32 v215, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v44, s47, v44
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s47, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s47, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s47, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s47, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	v_lshl_or_b32 v47, v44, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v46, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:472
	scratch_load_b32 v44, off, off offset:460
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s47, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s47, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v45, v45
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s47, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v44, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:444
	scratch_load_b32 v44, off, off offset:448
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s47, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s47, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s47, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v48, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v44, v44, 16, v0
	v_perm_b32 v0, v131, v241, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[44:47], v[35:38], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v35, v82, v238, 0xc0c0004
	v_perm_b32 v36, v79, v81, 0xc0c0004
	v_perm_b32 v37, v78, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v228, v25
	v_lshl_or_b32 v38, v35, 16, v0
	v_perm_b32 v0, v74, v75, 0xc0c0004
	v_perm_b32 v35, v76, v77, 0xc0c0004
	v_lshl_or_b32 v37, v37, 16, v36
	v_cvt_f32_i32_e32 v226, v26
	v_cvt_f32_i32_e32 v224, v27
	v_cvt_f32_i32_e32 v223, v28
	v_lshl_or_b32 v36, v35, 16, v0
	v_perm_b32 v0, v68, v71, 0xc0c0004
	v_perm_b32 v35, v72, v73, 0xc0c0004
	v_cvt_f32_i32_e32 v204, v29
	v_cvt_f32_i32_e32 v205, v30
	v_cvt_f32_i32_e32 v196, v31
	v_cvt_f32_i32_e32 v197, v32
	v_lshl_or_b32 v35, v35, 16, v0
	v_cvt_f32_i32_e32 v0, v3
	v_cvt_f32_i32_e32 v3, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[39:42], v[35:38], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[44:47], v[35:38], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v235, v21
	v_cvt_f32_i32_e32 v210, v22
	v_cvt_f32_i32_e32 v231, v23
	v_cvt_f32_i32_e32 v232, v24
	v_cvt_f32_i32_e32 v225, v9
	v_cvt_f32_i32_e32 v227, v10
	v_cvt_f32_i32_e32 v218, v11
	v_cvt_f32_i32_e32 v219, v12
	v_cvt_f32_i32_e32 v206, v13
	v_cvt_f32_i32_e32 v208, v14
	v_cvt_f32_i32_e32 v201, v15
	v_cvt_f32_i32_e32 v199, v16
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v20, off offset:876
	scratch_store_b32 off, v19, off offset:872
	scratch_store_b32 off, v18, off offset:868
	scratch_store_b32 off, v17, off offset:864
	scratch_store_b32 off, v3, off offset:860
	scratch_store_b32 off, v0, off offset:856
	v_mov_b16_e64 v0.l, v249.l
	scratch_store_b32 off, v186, off offset:1132 ; 4-byte Folded Spill
	v_mov_b16_e64 v186.l, v247.l
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v230, off offset:1128
	scratch_store_b32 off, v229, off offset:1124
	scratch_store_b32 off, v209, off offset:1120
	scratch_store_b32 off, v184, off offset:1116
	v_mov_b16_e64 v184.l, v70.l
	v_mov_b16_e64 v247.l, v69.l
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v4, 0
	v_mov_b32_e32 v27, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_perm_b32 v25, v57, v60, 0xc0c0004
	v_perm_b32 v26, v59, v43, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v16, s46, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v33, off, off offset:1056
	scratch_load_b32 v57, off, off offset:1060
	scratch_load_b32 v8, off, off offset:28
	scratch_load_b32 v9, off, off offset:24
	scratch_load_b32 v10, off, off offset:20
	scratch_load_b32 v11, off, off offset:16
	scratch_load_b32 v12, off, off offset:12
	scratch_load_b32 v13, off, off offset:8
	scratch_load_b32 v14, off, off offset:4
	scratch_load_b32 v15, off, off
	v_lshl_or_b32 v44, v26, 16, v25
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v26, off, off offset:1104
	scratch_load_b32 v27, off, off offset:1112
	scratch_load_b32 v25, off, off offset:1108
	scratch_load_b32 v3, off, off offset:48
	scratch_load_b32 v4, off, off offset:44
	scratch_load_b32 v5, off, off offset:40
	scratch_load_b32 v6, off, off offset:36
	scratch_load_b32 v7, off, off offset:32
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:504 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:500 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(17)
	v_perm_b32 v33, v33, v57, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v8, s46, v8
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v9, s46, v9
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v10, s46, v10
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v11, s46, v11
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v12, s46, v12
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v13, s46, v13
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v14, s46, v14
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v15, s46, v15
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(7)
	v_perm_b32 v26, v26, v27, 0xc0c0004
	s_waitcnt vmcnt(6)
	v_perm_b32 v25, v25, v58, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:1064
	scratch_load_b32 v58, off, off offset:1068
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v3, s46, v3
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v4, s46, v4
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v5, s46, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v43, v26, 16, v25
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:1088
	scratch_load_b32 v26, off, off offset:1092
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v7, s46, v7
	v_add_nc_u32_e32 v6, s46, v6
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v3, v3
	ds_load_u8 v4, v4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:500 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(3)
	v_perm_b32 v60, v57, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v60, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:1040
	scratch_load_b32 v57, off, off offset:1044
	s_waitcnt vmcnt(3)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:1096
	scratch_load_b32 v27, off, off offset:1100
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:496 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(3)
	v_perm_b32 v33, v33, v57, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:1048
	scratch_load_b32 v58, off, off offset:1052
	s_waitcnt vmcnt(3)
	v_perm_b32 v26, v26, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v26, 16, v25
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:1072
	scratch_load_b32 v26, off, off offset:1076
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:492 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(3)
	v_perm_b32 v59, v57, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v59, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:1024
	scratch_load_b32 v57, off, off offset:1028
	s_waitcnt vmcnt(3)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:1080
	scratch_load_b32 v27, off, off offset:1084
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:488 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(3)
	v_perm_b32 v33, v33, v57, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:1032
	scratch_load_b32 v58, off, off offset:1036
	s_waitcnt vmcnt(3)
	v_perm_b32 v26, v26, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:484 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(1)
	v_perm_b32 v58, v57, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:1008
	scratch_load_b32 v57, off, off offset:1012
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:480 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(1)
	v_perm_b32 v33, v33, v57, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:1016
	scratch_load_b32 v209, off, off offset:1020
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(0)
	v_perm_b32 v57, v57, v209, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_store_b32 off, v1, off offset:476 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:472 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v57, v57, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:472 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:468 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:464 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:460 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:456 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:452 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:448 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:444 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:440 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:436 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:432 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:1136 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:424 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:420 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:416 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:428 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:408 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:404 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:400 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:412 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:392 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:388 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:384 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:396 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:376 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v254, off offset:380
	scratch_store_b32 off, v131, off offset:376
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v254, s46, v1
	scratch_load_b32 v1, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v131, s46, v1
	scratch_load_b32 v1, off, off offset:368 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v255, off offset:372
	scratch_store_b32 off, v67, off offset:368
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v255, s46, v1
	scratch_load_b32 v1, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s46, v1
	scratch_load_b32 v1, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s46, v1
	scratch_load_b32 v1, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s46, v1
	scratch_load_b32 v1, off, off offset:352 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v250, off offset:356
	scratch_store_b32 off, v243, off offset:352
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v250, s46, v1
	scratch_load_b32 v1, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v243, s46, v1
	scratch_load_b32 v1, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:344 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:340 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v249, s46, v1
	scratch_load_b32 v1, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:336 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:328 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:324 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:320 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	scratch_store_b32 off, v1, off offset:332 ; 4-byte Folded Spill
	scratch_load_b32 v1, off, off offset:312 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v241, off offset:316
	scratch_store_b32 off, v74, off offset:312
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v241, s46, v1
	scratch_load_b32 v1, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v74, s46, v1
	scratch_load_b32 v1, off, off offset:304 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v245, off offset:308
	scratch_store_b32 off, v75, off offset:304
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v245, s46, v1
	scratch_load_b32 v1, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s46, v1
	scratch_load_b32 v1, off, off offset:296 ; 4-byte Folded Reload
	scratch_store_b32 off, v71, off offset:296 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s46, v1
	scratch_load_b32 v1, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s46, v1
	scratch_load_b32 v1, off, off offset:288 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v72, off offset:292
	scratch_store_b32 off, v73, off offset:288
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v72, s46, v1
	scratch_load_b32 v1, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s46, v1
	scratch_load_b32 v1, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s46, v1
	scratch_load_b32 v1, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s46, v1
	scratch_load_b32 v1, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s46, v1
	scratch_load_b32 v1, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v24, s46, v1
	scratch_load_b32 v1, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	ds_load_u8 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s46, v1
	scratch_load_b32 v1, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s46, v1
	scratch_load_b32 v1, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v19, s46, v1
	scratch_load_b32 v1, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s46, v1
	scratch_load_b32 v1, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s46, v1
	scratch_load_b32 v1, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s46, v1
	scratch_load_b32 v1, off, off offset:240 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v248, off offset:244
	scratch_store_b32 off, v251, off offset:240
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v40, v40
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v48, v40, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v248, s46, v1
	scratch_load_b32 v1, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v251, s46, v1
	scratch_load_b32 v1, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s46, v1
	scratch_load_b32 v1, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s46, v1
	scratch_load_b32 v1, off, off offset:224 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v64, off offset:228
	scratch_store_b32 off, v68, off offset:224
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v64, s46, v1
	scratch_load_b32 v1, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s46, v1
	scratch_load_b32 v1, off, off offset:216 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v246, off offset:220
	scratch_store_b32 off, v77, off offset:216
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v246, s46, v1
	scratch_load_b32 v1, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v77, s46, v1
	scratch_load_b32 v1, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s46, v1
	scratch_load_b32 v1, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s46, v1
	scratch_load_b32 v1, off, off offset:200 ; 4-byte Folded Reload
	scratch_store_b32 off, v76, off offset:200 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s46, v1
	scratch_load_b32 v1, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v76, s46, v1
	scratch_load_b32 v1, off, off offset:192 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v79, off offset:196
	scratch_store_b32 off, v82, off offset:192
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v79, s46, v1
	scratch_load_b32 v1, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v82, s46, v1
	scratch_load_b32 v1, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v36, s46, v1
	scratch_load_b32 v1, off, off offset:180 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v129, off offset:184
	scratch_store_b32 off, v253, off offset:180
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v129, s46, v1
	scratch_load_b32 v1, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v253, s46, v1
	scratch_load_b32 v1, off, off offset:172 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v244, off offset:176
	scratch_store_b32 off, v53, off offset:172
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v244, s46, v1
	scratch_load_b32 v1, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, s46, v1
	scratch_load_b32 v1, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, s46, v1
	scratch_load_b32 v1, off, off offset:160 ; 4-byte Folded Reload
	scratch_store_b32 off, v252, off offset:160 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v53, v53
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v35, v53, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v230, s46, v1
	scratch_load_b32 v1, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v252, s46, v1
	scratch_load_b32 v1, off, off offset:152 ; 4-byte Folded Reload
	scratch_store_b32 off, v80, off offset:152 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s46, v1
	scratch_load_b32 v1, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v80, s46, v1
	scratch_load_b32 v1, off, off offset:144 ; 4-byte Folded Reload
	scratch_store_b32 off, v62, off offset:144 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v229, s46, v1
	scratch_load_b32 v1, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v62, s46, v1
	scratch_load_b32 v1, off, off offset:136 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v56, off offset:140
	scratch_store_b32 off, v78, off offset:136
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v56, s46, v1
	scratch_load_b32 v1, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v78, s46, v1
	scratch_load_b32 v1, off, off offset:128 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v54, off offset:132
	scratch_store_b32 off, v55, off offset:128
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v54, s46, v1
	scratch_load_b32 v1, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v55, s46, v1
	scratch_load_b32 v1, off, off offset:120 ; 4-byte Folded Reload
	scratch_store_b32 off, v66, off offset:120 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, s46, v1
	scratch_load_b32 v1, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s46, v1
	scratch_load_b32 v1, off, off offset:112 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v239, off offset:116
	scratch_store_b32 off, v61, off offset:112
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v239, s46, v1
	scratch_load_b32 v1, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v61, s46, v1
	scratch_load_b32 v1, off, off offset:104 ; 4-byte Folded Reload
	scratch_store_b32 off, v240, off offset:104 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v239
	ds_load_u8 v61, v61
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v61, v33, 0xc0c0004
	ds_load_u8 v32, v32
	ds_load_u8 v61, v66
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v61, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v32, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v31, s46, v1
	scratch_load_b32 v1, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v240, s46, v1
	scratch_load_b32 v1, off, off offset:96 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v242, off offset:100
	scratch_store_b32 off, v65, off offset:96
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v242, s46, v1
	scratch_load_b32 v1, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v65, s46, v1
	scratch_load_b32 v1, off, off offset:88 ; 4-byte Folded Reload
	scratch_store_b32 off, v50, off offset:88 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v242
	ds_load_u8 v61, v65
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v61, v33, 0xc0c0004
	ds_load_u8 v31, v31
	ds_load_u8 v61, v240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v61, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v31, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v30, s46, v1
	scratch_load_b32 v1, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s46, v1
	scratch_load_b32 v1, off, off offset:80 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v81, off offset:84
	scratch_store_b32 off, v52, off offset:80
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v30, v30
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v50, v30, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v81, s46, v1
	scratch_load_b32 v1, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v52, s46, v1
	scratch_load_b32 v1, off, off offset:72 ; 4-byte Folded Reload
	scratch_store_b32 off, v51, off offset:72 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v81
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v52, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v29, s46, v1
	scratch_load_b32 v1, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s46, v1
	scratch_load_b32 v1, off, off offset:64 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v238, off offset:68
	scratch_store_b32 off, v49, off offset:64
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v238, s46, v1
	scratch_load_b32 v1, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v49, s46, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v238
	ds_load_u8 v49, v49
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v49, v33, 0xc0c0004
	ds_load_u8 v29, v29
	ds_load_u8 v49, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v49, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v29, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:992
	scratch_load_b32 v49, off, off offset:996
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v49, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:1000
	scratch_load_b32 v50, off, off offset:1004
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v49, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v49, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:976
	scratch_load_b32 v49, off, off offset:980
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v49, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:984
	scratch_load_b32 v50, off, off offset:988
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v49, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v49, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:960
	scratch_load_b32 v49, off, off offset:964
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v49, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:968
	scratch_load_b32 v50, off, off offset:972
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v49, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v49, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:944
	scratch_load_b32 v49, off, off offset:948
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v49, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:952
	scratch_load_b32 v61, off, off offset:956
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v49, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v33
	ds_load_u8 v33, v253
	ds_load_u8 v61, v244
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v61, v33, 0xc0c0004
	ds_load_u8 v36, v36
	ds_load_u8 v61, v129
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v61, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v36, v36, 16, v33
	ds_load_u8 v33, v230
	ds_load_u8 v61, v252
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v61, v33, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v33
	ds_load_u8 v33, v229
	ds_load_u8 v53, v62
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v53, v33, 0xc0c0004
	ds_load_u8 v34, v34
	ds_load_u8 v53, v80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v53, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v54
	ds_load_u8 v53, v55
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v53, v33, 0xc0c0004
	ds_load_u8 v53, v56
	ds_load_u8 v54, v78
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v53, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:928
	scratch_load_b32 v54, off, off offset:932
	s_waitcnt vmcnt(0)
	v_perm_b32 v53, v53, v54, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:936
	scratch_load_b32 v55, off, off offset:940
	s_waitcnt vmcnt(0)
	v_perm_b32 v54, v54, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v54, 16, v53
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:912
	scratch_load_b32 v54, off, off offset:916
	s_waitcnt vmcnt(0)
	v_perm_b32 v53, v53, v54, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:920
	scratch_load_b32 v55, off, off offset:924
	s_waitcnt vmcnt(0)
	v_perm_b32 v54, v54, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v54, 16, v53
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:896
	scratch_load_b32 v54, off, off offset:900
	s_waitcnt vmcnt(0)
	v_perm_b32 v53, v53, v54, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:904
	scratch_load_b32 v61, off, off offset:908
	s_waitcnt vmcnt(0)
	v_perm_b32 v54, v54, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:880
	scratch_load_b32 v61, off, off offset:884
	s_waitcnt vmcnt(0)
	v_perm_b32 v53, v53, v61, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v61, off, off offset:888
	scratch_load_b32 v62, off, off offset:892
	s_waitcnt vmcnt(0)
	v_perm_b32 v61, v61, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v61, 16, v53
	ds_load_u8 v61, v248
	ds_load_u8 v62, v251
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v62, off, off offset:324
	scratch_load_b32 v2, off, off offset:52
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v40, v40, 16, v61
	ds_load_u8 v48, v64
	ds_load_u8 v61, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v61, v48, 0xc0c0004
	scratch_load_b32 v61, off, off offset:340 ; 4-byte Folded Reload
	v_lshl_or_b32 v39, v38, 16, v48
	ds_load_u8 v38, v46
	ds_load_u8 v46, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v46, v38, 0xc0c0004
	ds_load_u8 v46, v246
	ds_load_u8 v47, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v46, 16, v38
	ds_load_u8 v46, v79
	ds_load_u8 v47, v82
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v37, v37
	ds_load_u8 v47, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v47, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v37, 16, v46
	ds_load_u8 v46, v245
	ds_load_u8 v47, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_waitcnt vmcnt(2)
	ds_load_u8 v62, v62
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s46, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v61, v61
	v_lshl_or_b32 v28, v1, 16, v3
	ds_load_u8 v1, v7
	ds_load_u8 v2, v8
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v5
	ds_load_u8 v3, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v2, 16, v1
	ds_load_u8 v1, v11
	ds_load_u8 v2, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v9
	ds_load_u8 v3, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v2, 16, v1
	ds_load_u8 v1, v15
	ds_load_u8 v2, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v13
	ds_load_u8 v3, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v2, 16, v1
	v_mov_b32_e32 v1, s4
	v_mov_b32_e32 v7, s10
	ds_load_u8 v47, v241
	ds_load_u8 v48, v74
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_mov_b32_e32 v6, s9
	v_mov_b32_e32 v8, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[29:32], v[57:60], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[33:36], v[49:52], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v48, v47, 16, v46
	ds_load_u8 v46, v72
	ds_load_u8 v47, v73
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[53:56], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v45, v45
	ds_load_u8 v47, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v47, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v45, 16, v46
	v_lshl_or_b32 v46, v21, 16, v23
	v_lshl_or_b32 v45, v17, 16, v19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[45:48], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v255
	ds_load_u8 v42, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v254
	ds_load_u8 v43, v131
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v42, 16, v41
	ds_load_u8 v41, v250
	ds_load_u8 v42, v243
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v69
	ds_load_u8 v43, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v42, 16, v41
	scratch_load_b32 v42, off, off offset:336 ; 4-byte Folded Reload
	ds_load_u8 v41, v249
	v_cvt_f32_i32_e32 v249, v13
	s_waitcnt vmcnt(0)
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	scratch_load_b32 v42, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v61, v42, 0xc0c0004
	scratch_load_b32 v61, off, off offset:332 ; 4-byte Folded Reload
	v_lshl_or_b32 v42, v42, 16, v41
	scratch_load_b32 v41, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_u8 v61, v61
	s_waitcnt vmcnt(0)
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v61, v41, 0xc0c0004
	scratch_load_b32 v61, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v61, v61
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	scratch_load_b32 v62, off, off offset:388 ; 4-byte Folded Reload
	v_lshl_or_b32 v41, v61, 16, v41
	scratch_load_b32 v61, off, off offset:404 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[57:60], v[17:24] neg_lo:[1,1,0]
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v57, off, off offset:432
	scratch_load_b32 v58, off, off offset:1136
	scratch_load_b32 v59, off, off offset:436
	s_waitcnt vmcnt(4)
	ds_load_u8 v62, v62
	s_waitcnt vmcnt(3)
	ds_load_u8 v61, v61
	s_waitcnt vmcnt(2)
	ds_load_u8 v57, v57
	s_waitcnt vmcnt(1)
	ds_load_u8 v58, v58
	s_waitcnt vmcnt(0)
	ds_load_u8 v59, v59
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	scratch_load_b32 v58, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	scratch_load_b32 v59, off, off offset:420 ; 4-byte Folded Reload
	v_lshl_or_b32 v60, v58, 16, v57
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:416
	scratch_load_b32 v58, off, off offset:428
	s_waitcnt vmcnt(2)
	ds_load_u8 v59, v59
	s_waitcnt vmcnt(1)
	ds_load_u8 v57, v57
	s_waitcnt vmcnt(0)
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	scratch_load_b32 v58, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v58, 16, v57
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:400
	scratch_load_b32 v58, off, off offset:412
	s_waitcnt vmcnt(1)
	ds_load_u8 v57, v57
	s_waitcnt vmcnt(0)
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	scratch_load_b32 v58, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v61, v58, 0xc0c0004
	scratch_load_b32 v61, off, off offset:396 ; 4-byte Folded Reload
	v_lshl_or_b32 v58, v58, 16, v57
	scratch_load_b32 v57, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_u8 v61, v61
	s_waitcnt vmcnt(0)
	ds_load_u8 v57, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v61, v57, 0xc0c0004
	scratch_load_b32 v61, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v61, v61
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	scratch_load_b32 v62, off, off offset:144 ; 4-byte Folded Reload
	v_lshl_or_b32 v57, v61, 16, v57
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[57:60], v[49:52], v[17:24] neg_lo:[1,1,0]
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v49, off, off offset:496
	scratch_load_b32 v51, off, off offset:500
	scratch_load_b32 v50, off, off offset:492
	s_waitcnt vmcnt(2)
	ds_load_u8 v49, v49
	s_waitcnt vmcnt(1)
	ds_load_u8 v51, v51
	s_waitcnt vmcnt(0)
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	scratch_load_b32 v50, off, off offset:504 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	scratch_load_b32 v51, off, off offset:484 ; 4-byte Folded Reload
	v_lshl_or_b32 v67, v50, 16, v49
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:480
	scratch_load_b32 v50, off, off offset:476
	s_waitcnt vmcnt(2)
	ds_load_u8 v51, v51
	s_waitcnt vmcnt(1)
	ds_load_u8 v49, v49
	s_waitcnt vmcnt(0)
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	scratch_load_b32 v50, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	scratch_load_b32 v51, off, off offset:468 ; 4-byte Folded Reload
	v_lshl_or_b32 v66, v50, 16, v49
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:464
	scratch_load_b32 v50, off, off offset:460
	s_waitcnt vmcnt(2)
	ds_load_u8 v51, v51
	s_waitcnt vmcnt(1)
	ds_load_u8 v49, v49
	s_waitcnt vmcnt(0)
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	scratch_load_b32 v50, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	scratch_load_b32 v51, off, off offset:452 ; 4-byte Folded Reload
	v_lshl_or_b32 v65, v50, 16, v49
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:448
	scratch_load_b32 v50, off, off offset:444
	s_waitcnt vmcnt(2)
	ds_load_u8 v51, v51
	s_waitcnt vmcnt(1)
	ds_load_u8 v49, v49
	s_waitcnt vmcnt(0)
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	scratch_load_b32 v50, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v64, v50, 16, v49
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:844
	scratch_load_b32 v50, off, off offset:852
	v_wmma_i32_16x16x16_iu8 v[17:24], v[64:67], v[53:56], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v229, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v230, v24
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v49, v50, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:840
	scratch_load_b32 v51, off, off offset:848
	s_waitcnt vmcnt(0)
	v_perm_b32 v50, v50, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v50, 16, v49
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:828
	scratch_load_b32 v50, off, off offset:836
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v49, v50, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:824
	scratch_load_b32 v51, off, off offset:832
	s_waitcnt vmcnt(0)
	v_perm_b32 v50, v50, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v50, 16, v49
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:812
	scratch_load_b32 v50, off, off offset:820
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v49, v50, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:804
	scratch_load_b32 v51, off, off offset:816
	s_waitcnt vmcnt(0)
	v_perm_b32 v50, v50, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v50, 16, v49
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:788
	scratch_load_b32 v50, off, off offset:784
	s_waitcnt vmcnt(1)
	v_perm_b32 v49, v247, v49, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v50, v0, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v68, v50, 16, v49
	v_wmma_i32_16x16x16_iu8 v[49:56], v[25:28], v[68:71], v[1:8] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:796
	scratch_load_b32 v25, off, off offset:808
	v_wmma_i32_16x16x16_iu8 v[1:8], v[45:48], v[68:71], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v70, v14
	s_waitcnt vmcnt(0)
	v_perm_b32 v25, v0, v25, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:792
	scratch_load_b32 v26, off, off offset:800
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v0, v26, 0xc0c0004
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	v_lshl_or_b32 v28, v26, 16, v25
	v_perm_b32 v25, v63, v213, 0xc0c0004
	v_perm_b32 v26, v211, v212, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v26, 16, v25
	scratch_load_b32 v26, off, off offset:1132 ; 4-byte Folded Reload
	v_perm_b32 v25, v185, v189, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v186, v26, 0xc0c0004
	v_lshl_or_b32 v26, v26, 16, v25
	v_perm_b32 v25, v0, v184, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:372
	scratch_load_b32 v61, off, off offset:180
	s_waitcnt vmcnt(0)
	v_perm_b32 v61, v61, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v61, 16, v25
	v_wmma_i32_16x16x16_iu8 v[49:56], v[29:32], v[25:28], v[49:56] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:1120
	scratch_load_b32 v30, off, off offset:1128
	v_wmma_i32_16x16x16_iu8 v[1:8], v[41:44], v[25:28], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v26, v10
	v_cvt_f32_i32_e32 v28, v11
	v_cvt_f32_i32_e32 v44, v15
	v_cvt_f32_i32_e32 v11, v21
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v29, v30, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v30, off, off offset:1116
	scratch_load_b32 v31, off, off offset:1124
	s_waitcnt vmcnt(0)
	v_perm_b32 v30, v30, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v30, 16, v29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:356
	scratch_load_b32 v29, off, off offset:160
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v0, v29, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:244
	scratch_load_b32 v30, off, off offset:240
	s_waitcnt vmcnt(0)
	v_perm_b32 v30, v0, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v30, 16, v29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:220
	scratch_load_b32 v29, off, off offset:176
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v29, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:352
	scratch_load_b32 v30, off, off offset:308
	s_waitcnt vmcnt(0)
	v_perm_b32 v30, v0, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:116
	scratch_load_b32 v29, off, off offset:100
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v0, v29, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:184
	scratch_load_b32 v61, off, off offset:104
	s_waitcnt vmcnt(0)
	v_perm_b32 v61, v0, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v61, 16, v29
	v_wmma_i32_16x16x16_iu8 v[49:56], v[33:36], v[29:32], v[49:56] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:376
	scratch_load_b32 v33, off, off offset:316
	v_wmma_i32_16x16x16_iu8 v[1:8], v[57:60], v[29:32], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v31, v17
	v_cvt_f32_i32_e32 v32, v18
	v_cvt_f32_i32_e32 v29, v12
	v_cvt_f32_i32_e32 v12, v22
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v0, v33, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:192
	scratch_load_b32 v34, off, off offset:68
	s_waitcnt vmcnt(0)
	v_perm_b32 v34, v0, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v34, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:196
	scratch_load_b32 v33, off, off offset:84
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v0, v33, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:152
	scratch_load_b32 v34, off, off offset:136
	s_waitcnt vmcnt(0)
	v_perm_b32 v34, v34, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v34, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:312
	scratch_load_b32 v33, off, off offset:304
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v0, v33, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:216
	scratch_load_b32 v34, off, off offset:200
	s_waitcnt vmcnt(0)
	v_perm_b32 v34, v34, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:296
	scratch_load_b32 v33, off, off offset:224
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:292
	scratch_load_b32 v61, off, off offset:288
	s_waitcnt vmcnt(0)
	v_perm_b32 v61, v0, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v61, 16, v33
	scratch_load_b32 v61, off, off offset:112 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[49:56], v[37:40], v[33:36], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[64:67], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v67, off, off offset:368
	scratch_load_b32 v66, off, off offset:120
	scratch_load_b32 v65, off, off offset:96
	scratch_load_b32 v64, off, off offset:228
	v_cvt_f32_i32_e32 v34, v9
	v_cvt_f32_i32_e32 v9, v16
	v_cvt_f32_i32_e32 v21, v49
	scratch_load_b32 v49, off, off offset:64 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v16, v50
	v_cvt_f32_i32_e32 v17, v51
	scratch_load_b32 v51, off, off offset:72 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v18, v52
	scratch_load_b32 v52, off, off offset:80 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v209, v53
	scratch_load_b32 v53, off, off offset:172 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v15, v54
	scratch_load_b32 v54, off, off offset:132 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v10, v55
	v_cvt_f32_i32_e32 v69, v56
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v56, off, off offset:140
	scratch_load_b32 v55, off, off offset:128
	scratch_load_b32 v50, off, off offset:88
	v_cvt_f32_i32_e32 v41, v1
	v_cvt_f32_i32_e32 v42, v2
	v_cvt_f32_i32_e32 v25, v3
	v_cvt_f32_i32_e32 v27, v4
	v_cvt_f32_i32_e32 v13, v5
	v_cvt_f32_i32_e32 v14, v6
	v_cvt_f32_i32_e32 v2, v7
	v_cvt_f32_i32_e32 v4, v8
.LBB0_16:
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v6, off, off offset:764
	scratch_load_b32 v8, off, off offset:760
	scratch_load_b32 v23, off, off offset:720
	scratch_load_b32 v30, off, off offset:716
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v1.h, v56.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v5.h, v67.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v22.h, v55.l
	v_mov_b16_e32 v24.h, v54.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v5.l, v1.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v22.l, v1.l
	v_mov_b16_e32 v24.l, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v35.h, v64.l
	v_mov_b16_e32 v35.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v3, v1, v5
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s44, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s44, s0
	s_mov_b32 s26, 0x7ffffffe
	s_ashr_i32 s10, s0, 8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v0, off, off offset:864 ; 4-byte Folded Reload
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s10, s45
	s_cselect_b32 s0, -1, 0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s0, s3, s0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(4)
	v_fma_f32 v3, v3, v6, v182
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v6.h, v66.l
	v_mov_b16_e32 v6.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v7, v1, v6
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(3)
	v_fma_f32 v7, v7, v8, v183
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v1, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v8, v8, v23, v181
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v23, v1, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v181, v8, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v33, v23, v30, v180
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v183, v7, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v7, off, off offset:508 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v182, v3, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v3.h, v51.l
	v_mov_b16_e32 v3.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v180, v33, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v3, v5
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v7, v5, v7, v167
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v3, v6
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v6, off, off offset:756 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v40, v5, v6, v179
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v6, off, off offset:708 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v3, v24
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v24, off, off offset:748 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v179, v40, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v8, v5, v6, v177
	scratch_load_b32 v6, off, off offset:712 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v3, v22
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v22, off, off offset:752 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v39, v5, v6, v178
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v5.h, v62.l
	v_mov_b16_e32 v5.l, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v178, v39, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v6, v1, v5
	v_mul_f32_e32 v5, v3, v5
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v45, v6, v22, v175
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v6.h, v65.l
	v_mov_b16_e32 v6.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v175, v45, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v22, v1, v6
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v46, v22, v24, v176
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v22.h, v52.l
	v_mov_b16_e32 v22.l, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v176, v46, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v24, v1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v47, v24, v50, v173
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v24.h, v53.l
	v_mov_b16_e32 v24.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v173, v47, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v1, v24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v49, v33, v49, v174
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v33, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v174, v49, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v48, v5, v33, v171
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v3, v6
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v6, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v33.h, v61.l
	v_mov_b16_e32 v33.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v171, v48, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v50, v5, v6, v172
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v6, off, off offset:700 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v3, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v172, v50, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v51, v5, v6, v169
	scratch_load_b32 v6, off, off offset:704 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v3, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v169, v51, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v169.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v54, v5, v6, v170
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v6, off, off offset:736 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v1, v33
	v_mul_f32_e32 v33, v3, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v170, v54, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fma_f32 v24, v5, v6, v132
	scratch_load_b32 v6, off, off offset:732 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v1, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v55, v5, v6, v168
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v5, v166, s10, 1
	v_add_lshl_u32 v6, v165, s10, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s10, s10, s35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v165.h, v1.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v22, v164, s10, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	s_clause 0x1
	buffer_load_u16 v56, v5, s[12:15], 0 offen
	buffer_load_u16 v57, v6, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v6, v161, s10, 1
	v_cndmask_b32_e64 v5, 0x80000000, v22, s0
	v_add_lshl_u32 v22, v162, s10, 1
	v_add_lshl_u32 v38, v163, s10, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s11, s10, s33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v43, s11, v159, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	v_cndmask_b32_e64 v38, 0x80000000, v38, s0
	s_clause 0x3
	buffer_load_u16 v58, v5, s[28:31], 0 offen
	buffer_load_u16 v59, v6, s[28:31], 0 offen
	buffer_load_u16 v60, v22, s[28:31], 0 offen
	buffer_load_u16 v61, v38, s[28:31], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v5, s11, v160, 1
	v_add_lshl_u32 v6, s11, v156, 1
	v_add_lshl_u32 v22, s11, v157, 1
	v_add_lshl_u32 v38, s11, v158, 1
	v_cndmask_b32_e64 v43, 0x80000000, v43, s0
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	v_cndmask_b32_e64 v38, 0x80000000, v38, s0
	s_clause 0x4
	buffer_load_u16 v62, v5, s[28:31], 0 offen
	buffer_load_u16 v64, v6, s[28:31], 0 offen
	buffer_load_u16 v65, v22, s[28:31], 0 offen
	buffer_load_u16 v66, v38, s[28:31], 0 offen
	buffer_load_u16 v67, v43, s[28:31], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v40, v149, s10, 1
	v_add_lshl_u32 v43, v150, s10, 1
	v_add_lshl_u32 v52, v151, s10, 1
	v_add_lshl_u32 v53, v152, s10, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v71, s11, v153, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v40, 0x80000000, v40, s0
	v_cndmask_b32_e64 v43, 0x80000000, v43, s0
	v_cndmask_b32_e64 v74, 0x80000000, v52, s0
	v_cndmask_b32_e64 v75, 0x80000000, v53, s0
	s_clause 0x3
	buffer_load_u16 v53, v40, s[28:31], 0 offen
	buffer_load_u16 v52, v43, s[28:31], 0 offen
	buffer_load_u16 v43, v74, s[28:31], 0 offen
	buffer_load_u16 v40, v75, s[28:31], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v167, v7, s2
	v_cndmask_b32_e64 v75, v177, v8, s2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v72, s11, v154, 1
	v_add_lshl_u32 v73, s11, v155, 1
	v_cndmask_b32_e64 v71, 0x80000000, v71, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v168, v55, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v6, s27, v130
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v72, 0x80000000, v72, s0
	v_cndmask_b32_e64 v73, 0x80000000, v73, s0
	s_clause 0x2
	buffer_load_u16 v55, v71, s[28:31], 0 offen
	buffer_load_u16 v47, v72, s[28:31], 0 offen
	buffer_load_u16 v49, v73, s[28:31], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v160.h, v1.l
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	scratch_load_b32 v5, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v22.h, v1.l
	v_mov_b16_e64 v159.h, v1.l
	v_mov_b16_e64 v161.h, v1.l
	v_mov_b16_e64 v163.h, v1.l
	v_mov_b16_e64 v167.h, v1.l
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s12, s34, s27
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s12, s12, s33
	.loc	1 364 22 is_stmt 1              ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v8, 16, v57
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v57, 16, v59
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v59, 16, v61
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v61, 16, v64
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v7, 16, v56
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v56, 16, v58
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v64, 16, v66
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v58, 16, v60
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v60, 16, v62
	v_lshlrev_b32_e32 v62, 16, v65
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v8, v56
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v72, v8, v61
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v71, v8, v58
	v_dual_mul_f32 v58, v7, v58 :: v_dual_mul_f32 v65, v8, v57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v63, v66, v0, v37
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:868
	scratch_load_b32 v66, off, off offset:856
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v57, v7, v57 :: v_dual_mul_f32 v80, v8, v64
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v64, v7, v64 :: v_dual_mul_f32 v81, v8, v62
	v_mul_f32_e32 v62, v7, v62
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v57, v57, v215, v39
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v72, v16, v23
	v_fma_f32 v18, v80, v18, v46
	v_fma_f32 v29, v64, v29, v50
	v_fma_f32 v28, v62, v28, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v39, v57, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v54, 16, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v46, v18, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v61, v7, v61
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v63, v37, v63, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v56, v7, v56
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v82, v8, v54 :: v_dual_lshlrev_b32 v55, 16, v55
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v26, v61, v26, v68
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v54, v7, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v56, v56, v214, v75
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v15, v82, v15, v79
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v49, 16, v49
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v43, 16, v43
	v_lshlrev_b32_e32 v52, 16, v52
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v65, v65, v0, v36
	scratch_load_b32 v0, off, off offset:872 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v71, v71, v0, v77
	scratch_load_b32 v0, off, off offset:876 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v77, v71, s3
	v_cndmask_b32_e64 v71, v23, v16, s3
	v_cndmask_b32_e64 v23, v48, v28, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v23
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v17, v81, v17, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v45, v17, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v73, v8, v60
	v_mul_f32_e32 v60, v7, v60
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0x42800000, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v18, 0xbfb8aa3b, v61
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v73, v73, v21, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v34, v60, v34, v74
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v50, v29, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v30, v73, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v8, v59
	v_mul_f32_e32 v59, v7, v59
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v28, v28
	v_cndmask_b32_e64 v18, 0, 0x42800000, s7
	v_mul_f32_e32 v29, 0xbfb8aa3b, v60
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v61
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v28, v28, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v29, 0, 0x42800000, s8
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v60
	v_ldexp_f32 v18, v18, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v29, v29
	v_ldexp_f32 v29, v29, v46
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v67, v0, v76
	v_fma_f32 v67, v58, v66, v51
	scratch_load_b32 v58, off, off offset:860 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v36, v65, s3
	v_cndmask_b32_e64 v65, v74, v34, s3
	v_cndmask_b32_e64 v21, v51, v67, s3
	v_cndmask_b32_e64 v51, v79, v15, s3
	v_cndmask_b32_e64 v67, v68, v26, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v65
	v_mul_f32_e32 v26, 0xbfb8aa3b, v64
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v26
	v_cndmask_b32_e64 v16, 0, 0x42800000, s5
	v_mul_f32_e32 v17, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v26, 0, 0x42800000, s6
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s6
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v65
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v17
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v17, 0, 0x42800000, s4
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v16, v16, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v39
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v74, 1.0, v16 :: v_dual_add_f32 v77, 1.0, v26
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v129, v59, v58, v78
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v76, v0, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v0, 0xbfb8aa3b, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v75, v56, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v76, 1.0, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v78, v129, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v78, 1.0, v28
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, null, v74, v74, v65
	v_div_scale_f32 v37, s4, v61, v76, v61
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v0, 0, 0x42800000, s1
	v_mul_f32_e32 v15, 0xbfb8aa3b, v71
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v82, v28
	v_div_scale_f32 v80, null, v78, v78, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v72
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v149, v80
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v0, v0
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v152, -v28, v82, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v15, 0xbfb8aa3b, v71 :: v_dual_fmac_f32 v82, v152, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ldexp_f32 v0, v0, v34
	v_exp_f32_e32 v15, v15
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, s6, v64, v77, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v68, 1.0, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v16, null, v68, v68, v72
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v15, v15, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v77, v77, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v16
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v73, 1.0, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v17, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v36, null, v76, v76, v61
	v_rcp_f32_e32 v129, v30
	v_div_scale_f32 v0, null, v73, v73, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v75, 1.0, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v150, -v16, v46, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v79, 1.0, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v45, v0
	v_rcp_f32_e32 v130, v36
	v_div_scale_f32 v18, null, v75, v75, v67
	v_fmac_f32_e32 v46, v150, v46
	v_div_scale_f32 v39, null, v79, v79, v60
	v_rcp_f32_e32 v81, v18
	v_div_scale_f32 v15, vcc_lo, v71, v73, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v131, v39
	v_fma_f32 v50, -v0, v45, 1.0
	v_div_scale_f32 v17, s9, v72, v68, v72
	v_fma_f32 v154, -v36, v130, 1.0
	v_div_scale_f32 v26, s8, v67, v75, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v151, -v18, v81, 1.0
	v_dual_fmac_f32 v45, v50, v45 :: v_dual_mul_f32 v152, v17, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v39, v131, 1.0
	v_dual_fmac_f32 v130, v154, v130 :: v_dual_fmac_f32 v81, v151, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v151, v15, v45
	v_fma_f32 v150, -v80, v149, 1.0
	v_fmac_f32_e32 v131, v50, v131
	v_div_scale_f32 v29, s7, v65, v74, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v0, v151, v15
	v_dual_fmac_f32 v149, v150, v149 :: v_dual_mul_f32 v156, v37, v130
	v_mul_f32_e32 v150, v26, v81
	v_fma_f32 v153, -v30, v129, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v151, v50, v45
	v_div_scale_f32 v48, s1, v60, v79, v60
	v_div_scale_f32 v154, s5, v23, v78, v23
	v_fma_f32 v0, -v0, v151, v15
	.loc	1 370 31 is_stmt 1              ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v50, s11, v145, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v158, v154, v149
	v_div_fmas_f32 v151, v0, v45, v151
	v_fma_f32 v0, -v18, v150, v26
	s_mov_b32 vcc_lo, s9
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v45, s11, v143, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v71, v151, v73, v71
	v_fmac_f32_e32 v150, v0, v81
	v_fma_f32 v0, -v36, v156, v37
	v_fmac_f32_e32 v129, v153, v129
	v_fma_f32 v153, -v16, v152, v17
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v66, v71
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v162, -v18, v150, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v156, v0, v130 :: v_dual_mul_f32 v155, v34, v129
	v_fmac_f32_e32 v152, v153, v46
	v_mul_f32_e32 v153, v29, v82
	v_mul_f32_e32 v157, v48, v131
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v168, -v36, v156, v37
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v26, v136, s10, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v15, -v16, v152, v17
	v_fma_f32 v16, -v28, v153, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v160.l, v66.h
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v0, v133, s10, 1
	v_add_lshl_u32 v17, v134, s10, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v152, v15, v46, v152
	v_fma_f32 v15, -v30, v155, v34
	s_mov_b32 vcc_lo, s8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v18, v135, s10, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v81, v162, v81, v150
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v155, v15, v129
	v_fma_f32 v15, -v80, v158, v154
	v_fmac_f32_e32 v153, v16, v82
	v_fma_f32 v16, -v39, v157, v48
	v_div_fixup_f32 v68, v152, v68, v72
	v_fma_f32 v166, -v30, v155, v34
	v_fmac_f32_e32 v158, v15, v149
	v_fma_f32 v164, -v28, v153, v29
	v_div_fixup_f32 v67, v81, v75, v67
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v63, v63, v68
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v28, v137, s10, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v80, -v80, v158, v154
	v_div_fmas_f32 v73, v164, v82, v153
	s_mov_b32 vcc_lo, s6
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v62, v62, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v72, v166, v129, v155
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v65, v73, v74, v65
	v_div_fmas_f32 v71, v168, v130, v156
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v64, v72, v77, v64
	v_fmac_f32_e32 v157, v16, v131
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v22.l, v62.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v59, v59, v65
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v61, v71, v76, v61
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v58, v58, v64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v136, -v39, v157, v48
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v64, 1, v160
	v_and_b32_e32 v22, 1, v22
	v_mov_b16_e64 v159.l, v59.h
	v_mov_b16_e64 v161.l, v63.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v68, v136, v131, v157
	s_mov_b32 vcc_lo, s5
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v57, v57, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v67, v80, v149, v158
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v60, v68, v79, v60
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v29, v138, s10, 1
	v_add_lshl_u32 v30, v139, s10, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v23, v67, v78, v23
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v34, v140, s10, 1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v56, v56, v60
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v60, 1, v159
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v36, s11, v141, 1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v23, v21, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v21, v66, v64, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:644
	scratch_load_b32 v80, off, off offset:636
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v163.l, v56.h
	v_mov_b16_e64 v165.l, v23.h
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v38, 56, v5
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v37, s11, v142, 1
	v_add_lshl_u32 v46, s11, v144, 1
	v_add_lshl_u32 v133, s11, v146, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v64, 1, v165
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v134, s11, v147, 1
	v_add_lshl_u32 v135, s11, v148, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v62, v62
	v_cmp_o_f32_e64 s4, v59, v59
	v_and_b32_e32 v61, 1, v161
	v_mov_b16_e64 v167.l, v58.h
	v_add3_u32 v22, v62, v22, 0x7fff
	v_cmp_o_f32_e64 s6, v23, v23
	v_and_b32_e32 v62, 1, v163
	v_add3_u32 v59, v59, v60, 0x7fff
	v_add3_u32 v60, v23, v64, 0x7fff
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_or_b32_e32 v16, s12, v38
	v_add3_u32 v15, s12, v38, 64
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	v_cndmask_b32_e64 v28, 0x80000000, v28, s0
	v_cndmask_b32_e64 v29, 0x80000000, v29, s0
	v_cndmask_b32_e64 v38, 0x80000000, v30, s0
	v_cndmask_b32_e64 v34, 0x80000000, v34, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v39, 0x80000000, v36, s0
	v_cndmask_b32_e64 v137, 0x80000000, v37, s0
	v_cndmask_b32_e64 v138, 0x80000000, v45, s0
	v_cndmask_b32_e64 v139, 0x80000000, v46, s0
	v_cndmask_b32_e64 v140, 0x80000000, v50, s0
	v_cndmask_b32_e64 v133, 0x80000000, v133, s0
	v_cndmask_b32_e64 v134, 0x80000000, v134, s0
	v_cndmask_b32_e64 v135, 0x80000000, v135, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v63, v63
	v_mov_b16_e64 v169.l, v57.h
	v_cmp_o_f32_e64 s5, v56, v56
	v_add3_u32 v56, v56, v62, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v60.h, s6
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v60, v8, v55
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v61, v63, v61, 0x7fff
	v_and_b32_e32 v63, 1, v167
	v_cndmask_b16 v21.h, 0x7fff, v21.h, vcc_lo
	v_and_b32_e32 v65, 1, v169
	v_cndmask_b16 v23.h, 0x7fff, v56.h, s5
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	v_add3_u32 v56, v58, v63, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v132, v24, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v61.h, s0
	v_add3_u32 v61, v57, v65, 0x7fff
	v_cmp_o_f32_e64 s0, v57, v57
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v63, off, off offset:724 ; 4-byte Folded Reload
	v_fma_f32 v57, v60, v209, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.h, 0x7fff, v56.h, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v56.l, v1.l
	v_mov_b16_e64 v56.h, v222.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v35, v3, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v58, v57, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v58, off, off offset:728 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v46, v0, s[28:31], 0 offen
	buffer_load_u16 v45, v17, s[28:31], 0 offen
	buffer_load_u16 v37, v18, s[28:31], 0 offen
	buffer_load_u16 v36, v26, s[28:31], 0 offen
	buffer_load_u16 v30, v28, s[28:31], 0 offen
	buffer_load_u16 v29, v29, s[28:31], 0 offen
	buffer_load_u16 v18, v38, s[28:31], 0 offen
	buffer_load_u16 v17, v34, s[28:31], 0 offen
	buffer_load_u16 v48, v39, s[28:31], 0 offen
	buffer_load_u16 v50, v137, s[28:31], 0 offen
	buffer_load_u16 v38, v138, s[28:31], 0 offen
	buffer_load_u16 v39, v139, s[28:31], 0 offen
	buffer_load_u16 v0, v140, s[28:31], 0 offen
	buffer_load_u16 v34, v133, s[28:31], 0 offen
	buffer_load_u16 v26, v134, s[28:31], 0 offen
	buffer_load_u16 v28, v135, s[28:31], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v64, v1, v56 :: v_dual_mul_f32 v133, 0xbfb8aa3b, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s1
	v_cndmask_b16 v22.l, 0x7fff, v59.h, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v62, 0xbfb8aa3b, v57
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v60.l, v1.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v133
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v60.h, v221.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v76, v8, v52
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v56, v3, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v59, 0, 0x42800000, s1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v62, v1, v60 :: v_dual_mul_f32 v55, v7, v55
	v_mul_f32_e32 v60, v3, v60
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v52, v7, v52 :: v_dual_fmac_f32 v59, 0xbfb8aa3b, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.l, 0x7fff, v61.h, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v61, off, off offset:628
	scratch_load_b32 v5, off, off offset:520
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v59, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(21)
	v_fma_f32 v64, v64, v66, v125
	scratch_load_b32 v66, off, off offset:648 ; 4-byte Folded Reload
	s_waitcnt vmcnt(21)
	v_fma_f32 v56, v56, v80, v123
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v125, v64, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v56, v123, v56, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v46, 16, v46
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v45, 16, v45
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v33, v33, v63, v127
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v127, v33, s2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v35, v35, v58, v128
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v128, v35, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v58, v59, v58
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v54, v54, v70, v35
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v58, 1.0, v58 :: v_dual_fmac_f32 v59, 0xbfb8aa3b, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v35, v54, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v54, v55, v249, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v55, null, v58, v58, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v54, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v54, v59
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v59, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v33
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v62, v62, v66, v126
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v126, v62, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v54, v54, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v55, v59, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v54, 1.0, v54 :: v_dual_fmac_f32 v59, v66, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v54, v54, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v65, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v70, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v66, v70, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v63, 0xbfb8aa3b, v35 :: v_dual_fmac_f32 v70, v73, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v63
	v_cndmask_b32_e64 v63, 0, 0x42800000, s1
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v35
	v_exp_f32_e32 v63, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v63, v63, v67
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, vcc_lo, v51, v58, v51
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v63, 1.0, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v65, v65, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v63, v63, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v74, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v75, null, v65, v65, v33
	v_rcp_f32_e32 v73, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v71, v74, 1.0
	v_fmac_f32_e32 v74, v78, v74
	v_div_scale_f32 v78, s4, v35, v63, v35
	v_mul_f32_e32 v67, v68, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v55, v67, v68
	v_fmac_f32_e32 v67, v72, v59
	v_div_scale_f32 v72, s1, v57, v54, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v55, -v55, v67, v68
	v_mul_f32_e32 v68, v72, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v55, v55, v59, v67
	v_fma_f32 v59, -v66, v68, v72
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v67, -v75, v73, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v51, v55, v58, v51
	v_fmac_f32_e32 v68, v59, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v59, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v58.l, v1.l
	v_mov_b16_e64 v58.h, v207.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v66, v68, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v66, v66, v70, v68
	s_mov_b32 vcc_lo, s4
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v70, v8, v40
	v_mul_f32_e32 v40, v7, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v54, v66, v54, v57
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v77, v8, v53
	v_mul_f32_e32 v53, v7, v53
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v57.h, v1.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v53, v237, v56
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v56, v53, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v56, v77, v235, v64
	s_waitcnt vmcnt(0)
	v_fma_f32 v59, v60, v59, v124
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v60, v78, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v124, v59, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v72, -v71, v60, v78
	v_fmac_f32_e32 v73, v67, v73
	v_div_scale_f32 v67, s5, v33, v65, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v52, v52, v236, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v60, v72, v74 :: v_dual_mul_f32 v79, v67, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v59, v52, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v71, v60, v78
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v59.l, v1.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v80, -v75, v79, v67
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v59.h, v220.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v71, v8, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v60, v68, v74, v60
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v79, v80, v73
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v76, v210, v62
	scratch_load_b32 v74, off, off offset:612 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v35, v60, v63, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v60, off, off offset:684 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v67, -v75, v79, v67
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v43, v7, v43
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v35, v52, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v62, v68, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v67, v67, v73, v79
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v67, v65, v33
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v53, v53, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v64, v56, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v56.l, v35.h
	v_mov_b16_e32 v56.h, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v57.l, v53.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v54, v33, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v33, v1, v59 :: v_dual_and_b32 v56, 1, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v55, 1, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v57.l, v54.h
	v_cmp_o_f32_e64 s0, v54, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v56, v35, v56, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v35, v52, v51
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v51, off, off offset:696 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v52, v53, v55, 0x7fff
	v_mov_b16_e32 v55.h, v1.l
	v_mov_b16_e32 v55.l, v35.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v55, 1, v55
	v_add3_u32 v55, v35, v55, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v51, v33, v51, v122
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v33.h, 0x7fff, v56.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_and_b32_e32 v53, 1, v57
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v57, v1, v58
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v122, v51, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v56, v8, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v33.l, 0x7fff, v52.h, vcc_lo
	v_add3_u32 v52, v54, v53, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v53, off, off offset:692 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v54.l, v1.l
	v_mov_b16_e64 v54.h, v217.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v56, v56, v69, v51
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v49, v7, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v35.l, 0x7fff, v52.h, s0
	v_mov_b16_e32 v52.h, v1.l
	v_cndmask_b16 v35.h, 0x7fff, v55.h, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v55, v3, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v51, v56, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v56, 0xbfb8aa3b, v51
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v56, 0, 0x42800000, s1
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v56, v56
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v53, v57, v53, v121
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v57, v8, v47
	v_mul_f32_e32 v47, v7, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v121, v53, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v10, v57, v10, v53
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v57.l, v1.l
	v_mov_b16_e64 v57.h, v216.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v53, v10, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v53, off, off offset:688 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v53, v55, v53, v120
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v55, v3, v58
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v120, v53, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v56, v56, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v9, v49, v9, v53
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v56, 1.0, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v53, v9, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v53, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v53
	v_cndmask_b32_e64 v53, 0, 0x42800000, s1
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v9
	v_exp_f32_e32 v53, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v53, v53, v62
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v53, 1.0, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v65, null, v53, v53, v9
	v_rcp_f32_e32 v68, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v65, v68, 1.0
	v_fmac_f32_e32 v68, v72, v68
	v_div_scale_f32 v72, s4, v9, v53, v9
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v59, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v59, v1, v54
	v_mul_f32_e32 v54, v3, v54
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v59, v59, v61, v117
	scratch_load_b32 v61, off, off offset:632 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v55, v55, v60, v119
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v117, v59, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v49, v119, v55, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v55, v1, v57
	v_mul_f32_e32 v57, v3, v57
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v44, v47, v44, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, null, v56, v56, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v49, v44, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v49, v58
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v58, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v60, 0xbfb8aa3b, v44
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v55, v55, v61, v118
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v118, v55, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v49, v49, v61
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v47, v58, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v63, vcc_lo, v51, v56, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v60, 0xbfb8aa3b, v44 :: v_dual_add_f32 v49, 1.0, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v58, v61, v58
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v61, null, v49, v49, v10
	v_rcp_f32_e32 v64, v61
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v60, v60, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v62, v63, v58
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v60, 1.0, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v47, v62, v63
	v_fma_f32 v67, -v61, v64, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v69, null, v60, v60, v44
	v_fmac_f32_e32 v62, v66, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v64, v67, v64
	v_div_scale_f32 v66, s1, v10, v49, v10
	v_rcp_f32_e32 v67, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v47, v62, v63
	v_mul_f32_e32 v63, v66, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v47, v47, v58, v62
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v58, -v61, v63, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v69, v67, 1.0
	v_div_fixup_f32 v47, v47, v56, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v63, v58, v64
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v58, off, off offset:616 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v67, v62, v67
	v_div_scale_f32 v62, s5, v44, v60, v44
	v_fma_f32 v61, -v61, v63, v66
	v_mul_f32_e32 v73, v62, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v61, v61, v64, v63
	s_mov_b32 vcc_lo, s4
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v8, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v61, v49, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v49.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v57, v57, v58, v116
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v58, v72, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v116, v57, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v65, v58, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v40, v233, v57
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v58, v66, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v57, v40, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v63, -v65, v58, v72
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v8, v46
	v_mul_f32_e32 v46, v7, v46
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v58, v63, v68, v58
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v63, v70, v232, v55
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v68, off, off offset:576 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v58, v53, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v71, v231, v59
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v40, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v55, v63, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v55, off, off offset:592 ; 4-byte Folded Reload
	v_fma_f32 v54, v54, v74, v115
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v74, -v69, v73, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v49.l, v9.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v40, v40, v47 :: v_dual_lshlrev_b32 v47, 16, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v115, v54, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v73, v74, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v49, 1, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v43, v43, v234, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v62, -v69, v73, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v49, v9, v49, 0x7fff
	v_mov_b16_e32 v49.l, v40.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v54, v43, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v62, v62, v67, v73
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v9, off, off offset:680 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v54.l, v1.l
	v_mov_b16_e64 v54.h, v202.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v44, v62, v60, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v43, v43, v44
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v59, v53, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v53.l, v1.l
	v_mov_b16_e64 v53.h, v203.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v52.l, v43.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v44, v44, v10
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v10, v1, v53 :: v_dual_and_b32 v51, 1, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v52.l, v44.h
	v_cmp_o_f32_e64 s0, v44, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v50, v43, v51, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v51, v8, v47
	v_mul_f32_e32 v47, v7, v47
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v10, v10, v9, v114
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.h, 0x7fff, v49.h, vcc_lo
	v_mov_b16_e32 v49.h, v1.l
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	v_and_b32_e32 v43, 1, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v114, v10, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.l, 0x7fff, v50.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v42, v51, v42, v10
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v51, v1, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v44, v43, 0x7fff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v44.l, v1.l
	v_mov_b16_e64 v44.h, v200.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v10, v42, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v10, 1, v49
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v49, off, off offset:676 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v50, 0xbfb8aa3b, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v40, v10, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v43.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v50
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v50, v8, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v48, v7, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v49, v51, v49, v113
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v51.l, v1.l
	v_mov_b16_e64 v51.h, v198.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v113, v49, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v49, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v41, v50, v41, v40
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v50, v3, v53 :: v_dual_fmac_f32 v49, 0xbfb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v40, v41, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v41, off, off offset:672 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v49, v49
	v_mul_f32_e32 v53, 0xbfb8aa3b, v40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v53, v1, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v49, v49, v52
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v44, v3, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v53, v55, v109
	scratch_load_b32 v55, off, off offset:596 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v44, v68, v107
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v109, v53, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v44, v107, v44, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v46, v228, v44
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v44, v46, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v41, v50, v41, v112
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v50, v3, v54
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v54, off, off offset:668 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v112, v41, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v32, v47, v32, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v41, v32, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v49, v49, v42
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v50, v50, v54, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v111, v50, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v50, v1, v51
	v_mul_f32_e32 v51, v3, v51
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v48, v31, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v50, v50, v55, v110
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v47, v31, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v48
	v_exp_f32_e32 v47, v52
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v52, v41
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v110, v50, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v54, 0xbfb8aa3b, v31
	v_cndmask_b32_e64 v48, 0, 0x42800000, s1
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v47, v47, v55
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v41, v52, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v48, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v52, v55, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v31
	v_exp_f32_e32 v54, v54
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v48, v48, v56
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v57, vcc_lo, v42, v49, v42
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v48, 1.0, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v54, v54, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v59, null, v48, v48, v32
	v_mul_f32_e32 v56, v57, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v62, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v60, -v41, v56, v57
	v_div_scale_f32 v63, null, v54, v54, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v56, v60, v52
	v_fma_f32 v66, -v59, v62, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v41, v56, v57
	v_dual_fmac_f32 v62, v66, v62 :: v_dual_add_f32 v47, 1.0, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v41, v41, v52, v56
	v_div_scale_f32 v66, s4, v32, v48, v32
	v_div_scale_f32 v55, null, v47, v47, v40
	v_div_scale_f32 v60, s1, v40, v47, v40
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v58, v55
	v_div_fixup_f32 v41, v41, v49, v42
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v49.l, v1.l
	v_mov_b16_e64 v49.h, v193.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v55, v58, 1.0
	v_fmac_f32_e32 v58, v61, v58
	v_rcp_f32_e32 v61, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v57, v60, v58
	v_fma_f32 v52, -v55, v57, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v56, -v63, v61, 1.0
	v_fmac_f32_e32 v57, v52, v58
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v52, off, off offset:580 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v61, v56, v61
	v_div_scale_f32 v56, s5, v31, v54, v31
	v_fma_f32 v55, -v55, v57, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v67, v56, v61
	v_div_fmas_f32 v55, v55, v58, v57
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v63, v67, v56
	v_fmac_f32_e32 v67, v68, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v56, -v63, v67, v56
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v51, v51, v52, v108
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v52, v66, v62
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v108, v51, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v60, -v59, v52, v66
	v_fmac_f32_e32 v52, v60, v62
	v_div_fixup_f32 v40, v55, v47, v40
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v47.l, v1.l
	v_mov_b16_e64 v47.h, v195.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v59, v52, v66
	v_div_fmas_f32 v52, v57, v62, v52
	s_mov_b32 vcc_lo, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v57, v64, v227, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v56, v56, v61, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v62, off, off offset:556 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v32, v52, v48, v32
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v48.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v50, v57, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v31, v56, v54, v31
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v48.h, v194.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v54, 16, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v41, v43, v41 :: v_dual_mul_f32 v44, v44, v31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v45, v7, v45
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v43, 16, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v45, v226, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v51, v45, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v32, v45, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v65, v225, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.l, v32.h
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v53, v46, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.l, v44.h
	v_mov_b16_e32 v46.h, v1.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v40, v31, v40 :: v_dual_and_b32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v31, v1, v47 :: v_dual_and_b32 v42, 1, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v45, v32, v45, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v32, off, off offset:664 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.l, v40.h
	v_cmp_o_f32_e64 s0, v40, v40
	v_add3_u32 v39, v44, v42, 0x7fff
	v_mov_b16_e32 v42.l, v41.h
	v_mov_b16_e32 v42.h, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v32, v31, v32, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.h, 0x7fff, v45.h, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v45, v8, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_and_b32_e32 v44, 1, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v106, v32, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v46, off, off offset:652 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.l, 0x7fff, v39.h, vcc_lo
	v_add3_u32 v39, v40, v44, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v27, v45, v27, v32
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v45, v1, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v40, v3, v47
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v47.h, v192.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v27, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v27, 1, v42
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v42, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v27, v41, v27, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v39.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v44
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v44, v8, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v27.h, 0x7fff, v27.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v42, v45, v42, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v105, v42, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, s1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v44, v25, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v32
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v41, v25, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v41, off, off offset:656 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v42
	v_mul_f32_e32 v45, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v45, v7, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v42, v42, v44
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v44, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v43, v7, v43
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v40, v40, v41, v104
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v3, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v104, v40, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v41, v41, v46, v103
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v46, v1, v47
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v43, v43, v20, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v103, v41, s2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v20, 1.0, v42
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v42, v1, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v40, v43, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v19, v45, v19, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v20, v20, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v41, v19, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v44, off, off offset:564 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v50, v48
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v43, 0, 0x42800000, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v42, v42, v44, v101
	scratch_load_b32 v44, off, off offset:568 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v44, v46, v44, v102
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v102, v44, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v44, v41, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v101, v42, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v48, v50, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v19
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v50, v45, v50
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v45, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v60, s4, v25, v42, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v51, null, v42, v42, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v53, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v43, v43, v44
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v52, vcc_lo, v32, v20, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v37, v45, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v51, v53, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v53, v44, v53
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v44, v8, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v56, null, v43, v43, v38
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v54, v7, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v55, v52, v50
	v_div_scale_f32 v59, null, v37, v37, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v58, v56
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v57, 16, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v48, v55, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v46, v59
	v_fmac_f32_e32 v55, v36, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v36, -v48, v55, v52
	v_mul_f32_e32 v48, v60, v53
	v_fma_f32 v52, -v56, v58, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v50, v55
	v_fma_f32 v50, -v51, v48, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v52, v58
	v_div_scale_f32 v52, s5, v38, v43, v38
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v47, v3, v47 :: v_dual_fmac_f32 v48, v50, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v50, off, off offset:560 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v20, v36, v20, v32
	v_fma_f32 v55, -v59, v46, 1.0
	v_fma_f32 v51, -v51, v48, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v46, v55, v46
	v_div_fmas_f32 v48, v51, v53, v48
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v55, s1, v19, v37, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v25, v48, v42, v25
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v42.l, v1.l
	v_mov_b16_e64 v42.h, v191.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v1, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v47, v47, v50, v100
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v50, v52, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v100, v47, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v60, -v56, v50, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v49, v3, v49 :: v_dual_fmac_f32 v50, v60, v58
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v49, v49, v62, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v56, v50, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v99, v49, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v50, v52, v58, v50
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v51, v54, v224, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v38, v50, v43, v38
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v45, v8, v57
	v_mul_f32_e32 v57, v7, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v49, v51, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v57, v223, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v47, v53, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v38, v47, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v45, v219, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v40, v45, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v20, v39, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.h, v1.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v61, v55, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v59, v61, v55
	v_fmac_f32_e32 v61, v62, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v54, -v59, v61, v55
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v55, off, off offset:540 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v46, v54, v46, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v19, v46, v37, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v44, v218, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v40, v43, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v41, v37, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v38.h
	v_mov_b16_e32 v37.h, v1.l
	v_mov_b16_e32 v41.h, v1.l
	v_mov_b16_e32 v41.l, v40.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v19, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v37
	v_and_b32_e32 v19, 1, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v39.l, v25.h
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v41.l, v1.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v36, v38, v37, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v38, v8, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v40, v19, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v19, off, off offset:624 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v41.h, v190.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v25, v25
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v7, v34
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v32, v32, v19, v98
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v19.h, 0x7fff, v36.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_mov_b16_e32 v36.h, v1.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v98, v32, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v19.l, 0x7fff, v37.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v37, off, off offset:620 ; 4-byte Folded Reload
	v_fma_f32 v14, v38, v14, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v39
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v39, v1, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, v20.h
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v32, v14, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v25, v38, 0x7fff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v32.l, v1.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v36, v20, v36, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v38
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v37, v39, v37, v97
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v97, v37, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v20, 16, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v0.h, 0x7fff, v36.h, vcc_lo
	v_cndmask_b16 v0.l, 0x7fff, v32.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v37, v37
	v_ldexp_f32 v37, v37, v39
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v38, v8, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v20, v7, v20 :: v_dual_add_f32 v37, 1.0, v37
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v13, v38, v13, v25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v38, off, off offset:776 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v25, v13, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v25, off, off offset:608 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v36, v3, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v42, off, off offset:548 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v13
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v25, v36, v25, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v96, v25, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v12, v34, v12, v25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v25, v12, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v36, v3, v41
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v41, off, off offset:604 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v32.h, v38.l
	v_mov_b16_e32 v38.l, v1.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v25, 0xbfb8aa3b, v12
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v38.h, v188.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, s0
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v12
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v25, v25, v43
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v40, v1, v32
	v_dual_mul_f32 v32, v3, v32 :: v_dual_add_f32 v25, 1.0, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v40, v40, v42, v93
	scratch_load_b32 v42, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, null, v25, v25, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v93, v40, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v49, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v46, v49, 1.0
	v_fmac_f32_e32 v49, v53, v49
	v_div_scale_f32 v53, s1, v12, v25, v12
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v36, v36, v41, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v95, v36, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v11, v20, v11, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v37, v37, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v34, v11, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v39
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v39, v20
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v36, v1, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v38, v3, v38 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v36, v36, v42, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v94, v36, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v34, v42
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v20, v39, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, vcc_lo, v14, v37, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v39, v42, v39 :: v_dual_add_f32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v41, v41, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v43, v44, v39
	v_div_scale_f32 v42, null, v34, v34, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v41, 1.0, v41 :: v_dual_lshlrev_b32 v30, 16, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v20, v43, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v42
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v52, v8, v30 :: v_dual_lshlrev_b32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v50, null, v41, v41, v11
	v_fmac_f32_e32 v43, v47, v39
	v_div_scale_f32 v47, s0, v13, v34, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v42, v45, 1.0
	v_fma_f32 v20, -v20, v43, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v45, v48, v45
	v_div_fmas_f32 v20, v20, v39, v43
	v_rcp_f32_e32 v48, v50
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v44, v47, v45
	v_div_fixup_f32 v14, v20, v37, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v42, v44, v47
	v_fma_f32 v43, -v50, v48, 1.0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v51, v8, v29
	v_mul_f32_e32 v29, v7, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v44, v39, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v39, off, off offset:544 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v48, v43, v48
	v_div_scale_f32 v43, s4, v11, v41, v11
	v_fma_f32 v42, -v42, v44, v47
	v_mul_f32_e32 v54, v43, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v45, v44
	s_mov_b32 vcc_lo, s1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v45, v8, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v13, v42, v34, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v38, v38, v39, v92
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v39, v53, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v92, v38, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v46, v39, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v29, v29, v205, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v39, v47, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v38, v29, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v46, v39, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v44, v49, v39
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v12, v39, v25, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v39, v52, v206, v40
	v_fma_f32 v25, v51, v208, v36
	scratch_load_b32 v51, off, off offset:524 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v29, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v40, v39, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:536
	scratch_load_b32 v40, off, off offset:532
	v_fma_f32 v32, v32, v55, v91
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v50, v54, v43
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v30, v7, v30 :: v_dual_mul_f32 v13, v29, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v36, v25, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v32, v91, v32, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v54, v55, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v36.l, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v30, v30, v204, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v43, -v50, v54, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v32, v30, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v38, v43, v48, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v32.l, v1.l
	v_mov_b16_e64 v32.h, v187.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v11, v38, v41, v11
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v38, off, off offset:572 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v20, v1, v32 :: v_dual_mul_f32 v11, v30, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v12.h
	v_mov_b16_e32 v30.h, v1.l
	v_mov_b16_e32 v34.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v30, 1, v30
	v_and_b32_e32 v29, 1, v34
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v34, off, off offset:780 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v12, v30, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v12, off, off offset:600 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v30.l, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v12, v20, v12, v90
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v20, 16, v28
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v14, v25, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v25, v11, v29, 0x7fff
	v_cndmask_b16 v28.h, 0x7fff, v30.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v90, v12, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v13.h
	v_mov_b16_e32 v11.h, v1.l
	v_cndmask_b16 v28.l, 0x7fff, v25.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v25, off, off offset:588 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v30.h, v34.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v34, v1, v30 :: v_dual_and_b32 v11, 1, v11
	v_mul_f32_e32 v30, v3, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v11, v13, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v30, v30, v38, v87
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v87, v30, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v25, v34, v25, v89
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v8, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v89, v25, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v2, v34, v2, v25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v34, off, off offset:772 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v25, v2, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v25, off, off offset:584 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v29, v8, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v14, v14
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v20, v7, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v4, v29, v4, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v14.h
	v_mov_b16_e32 v29.h, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v12, v4, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v12, 1, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v29, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v12, v14, v12, 0x7fff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v14.l, v1.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v29, v29
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v36.h, v34.l
	scratch_load_b32 v34, off, off offset:768 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v14.h, v34.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v3, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v8, v8, v17 :: v_dual_mul_f32 v37, v1, v14
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v32, v25, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v29, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v17, v7, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v88, v25, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v29, 1.0, v29 :: v_dual_mul_f32 v26, v7, v26
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v20, v20, v230, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v25, v20, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v26, v229, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, null, v29, v29, v4
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v30, v25, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v1, v36
	v_mul_f32_e32 v36, v3, v36
	v_mul_f32_e32 v3, v3, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v14, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v30, v34
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v34, v26
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v32, v32, v39, v86
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v38
	v_mul_f32_e32 v39, 0xbfb8aa3b, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v37, v40, v85
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v86, v32, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v38, 0, 0x42800000, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	v_ldexp_f32 v30, v30, v40
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v26, v34, 1.0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v85, v37, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v1.h, 0x7fff, v12.h, s0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v34, v40, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v20
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v45, v201, v37
	v_fma_f32 v8, v8, v199, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v25
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v30, v30, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v32, v8, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v43, v40
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v3, v51, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v83, v3, s2
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v38, v38, v41
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, vcc_lo, v4, v29, v4
	v_fma_f32 v47, -v40, v43, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v38, 1.0, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v39, v39, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v41, v42, v34
	v_fmac_f32_e32 v43, v47, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v44, null, v38, v38, v20
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v39, 1.0, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v26, v41, v42
	v_rcp_f32_e32 v48, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v49, null, v39, v39, v25
	v_fmac_f32_e32 v41, v46, v34
	v_div_scale_f32 v46, s1, v2, v30, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v49
	v_fma_f32 v26, -v26, v41, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v44, v48, 1.0
	v_div_fmas_f32 v26, v26, v34, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s4, v20, v38, v20
	v_fma_f32 v41, -v49, v47, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v26, v29, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v41, v47
	v_dual_mul_f32 v42, v46, v43 :: v_dual_mul_f32 v7, v7, v18
	v_div_scale_f32 v41, s5, v25, v39, v25
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v8, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v40, v42, v46
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v7, v196, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v34, v43
	v_mul_f32_e32 v34, v50, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v7, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v40, v42, v46
	v_fma_f32 v46, -v44, v34, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v18, v40, v43, v42
	v_fmac_f32_e32 v34, v46, v48
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v2, v18, v30, v2
	v_fma_f32 v40, -v44, v34, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v40, v48, v34
	s_mov_b32 vcc_lo, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v14, v36, v14, v84
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v36, v41, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v84, v14, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v49, v36, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v17, v17, v197, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v36, v51, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v14, v17, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v49, v36, v41
	v_div_fixup_f32 v17, v34, v38, v20
	v_div_fmas_f32 v36, v41, v47, v36
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v14, v17
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v37, v45, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.h, v1.l
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_mov_b16_e32 v13.h, v1.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v36, v39, v25
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v14, v2
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.h, v1.l
	v_mov_b16_e32 v14.l, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.l, v2.h
	v_mov_b16_e32 v7.h, v1.l
	v_cndmask_b16 v1.l, 0x7fff, v11.h, vcc_lo
	v_mov_b16_e32 v7.l, v12.h
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_cmp_o_f32_e64 s2, v2, v2
	v_mov_b16_e32 v17.l, v3.h
	v_and_b32_e32 v11, 1, v13
	v_cmp_o_f32_e64 s0, v3, v3
	v_and_b32_e32 v7, 1, v7
	v_and_b32_e32 v13, 1, v14
	v_and_b32_e32 v8, 1, v17
	v_mov_b32_e32 v17, 0x7632
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v7, v12, v7, 0x7fff
	v_add3_u32 v12, v4, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v8, v3, v8, 0x7fff
	v_add3_u32 v3, v2, v11, 0x7fff
	scratch_load_b32 v11, off, off offset:512 ; 4-byte Folded Reload
	v_cndmask_b16 v2.h, 0x7fff, v7.h, vcc_lo
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v5, s27, v5
	s_mov_b32 s27, 0x31027000
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v2.l, 0x7fff, v8.h, s0
	s_mov_b32 s0, 0x76543210
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u32_e32 vcc_lo, 0, v11
	v_mov_b32_e32 v14, 0x5410
	v_dual_cndmask_b32 v8, v9, v23 :: v_dual_cndmask_b32 v17, 0x3276, v17
	v_dual_cndmask_b32 v13, v2, v19 :: v_dual_cndmask_b32 v2, v19, v2
	v_dual_cndmask_b32 v18, v35, v21 :: v_dual_cndmask_b32 v19, v21, v35
	v_cndmask_b32_e32 v21, v1, v27, vcc_lo
	v_dual_cndmask_b32 v1, v27, v1 :: v_dual_cndmask_b32 v14, 0x1054, v14
	v_cmp_o_f32_e64 s1, v4, v4
	v_cndmask_b16 v4.l, 0x7fff, v3.h, s2
	v_cndmask_b32_e32 v7, v22, v33, vcc_lo
	v_cndmask_b32_e32 v9, v23, v9, vcc_lo
	v_dual_cndmask_b32 v3, v33, v22 :: v_dual_cndmask_b32 v20, v10, v24
	v_cndmask_b32_e32 v10, v24, v10, vcc_lo
	v_cndmask_b32_e32 v11, v28, v31, vcc_lo
	v_lshl_or_b32 v14, v14, 8, v14
	v_lshl_or_b32 v17, v17, 8, v17
	v_cndmask_b16 v4.h, 0x7fff, v12.h, s1
	v_cndmask_b32_e32 v12, v31, v28, vcc_lo
	v_permlanex16_b32 v19, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v14, 0x540054, v14
	v_dual_cndmask_b32 v22, v4, v0 :: v_dual_and_b32 v17, 0x760076, v17
	v_cndmask_b32_e32 v0, v0, v4, vcc_lo
	v_permlanex16_b32 v4, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v9, v14, 4, v14
	v_lshl_or_b32 v14, v17, 4, v17
	v_permlanex16_b32 v26, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v23, 0x5040504, v9
	v_and_b32_e32 v24, 0x7060706, v14
	v_permlanex16_b32 v17, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v10, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v0, v4, v3, v23
	v_perm_b32 v1, v4, v3, v24
	v_perm_b32 v2, v7, v8, v23
	v_perm_b32 v3, v7, v8, v24
	v_add_lshl_u32 v4, v16, v6, 1
	v_perm_b32 v7, v12, v11, v23
	v_perm_b32 v8, v12, v11, v24
	v_perm_b32 v9, v17, v13, v23
	v_perm_b32 v10, v17, v13, v24
	v_add_lshl_u32 v6, v15, v6, 1
	v_perm_b32 v11, v19, v18, v23
	v_perm_b32 v12, v19, v18, v24
	v_perm_b32 v13, v14, v20, v23
	v_perm_b32 v14, v14, v20, v24
	v_add_lshl_u32 v16, v16, v5, 1
	v_perm_b32 v17, v25, v21, v23
	v_perm_b32 v18, v25, v21, v24
	v_perm_b32 v19, v26, v22, v23
	v_perm_b32 v20, v26, v22, v24
	v_add_lshl_u32 v5, v15, v5, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	buffer_store_b128 v[7:10], v6, s[24:27], 0 offen
	buffer_store_b128 v[11:14], v16, s[24:27], 0 offen
	buffer_store_b128 v[17:20], v5, s[24:27], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1144
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
		.amdhsa_next_free_sgpr 56
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 1144
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 61608
; TotalNumSgprs: 58
; NumVgprs: 256
; ScratchSize: 1144
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 58
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 1144
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 514
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
