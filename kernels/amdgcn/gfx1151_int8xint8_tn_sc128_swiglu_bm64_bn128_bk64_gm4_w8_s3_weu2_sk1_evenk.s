	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v121, 4, v0
	v_lshrrev_b32_e32 v2, 3, v0
	v_and_b32_e32 v16, 15, v0
	s_mov_b32 s49, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v4, 0x70, v121
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v3, 48, v121
	v_and_or_b32 v122, v2, 16, v16
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v58, 0, v121
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v59, 32, v122
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s22, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s12, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s12
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s15, s14, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s14, s14, s12
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s15
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s14
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s16, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s17, s16
	s_abs_i32 s12, s2
	s_cvt_f32_u32 s18, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 2, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s7, 0, s17
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v1, s22, v1
	s_mov_b64 s[24:25], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s18
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s14, s12, s6
	s_xor_b32 s6, s2, s16
	s_mul_i32 s18, s14, s17
	s_ashr_i32 s19, s6, 31
	s_sub_i32 s12, s12, s18
	s_add_i32 s18, s14, 1
	s_sub_i32 s20, s12, s17
	s_cmp_ge_u32 s12, s17
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s14, s18, s14
	s_cselect_b32 s12, s20, s12
	s_add_i32 s18, s14, 1
	s_cmp_ge_u32 s12, s17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s30, s6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s14, s18, s14
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s26, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s14, s19
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s35, s23, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s19
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[73:74], null, s35, v2, v[4:5]
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s16, s3, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s12, s13, 63
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s16
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_addk_i32 s13, 0x7f
.Ltmp15:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s14, s13, 31
.Ltmp17:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s2, 6
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s14, s14, 25
.Ltmp19:
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v74, v1, v3, s34
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s3, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s13, s13, s14
.Ltmp21:
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s16, s35, s26
	v_lshl_add_u32 v123, s23, 6, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s12, 63
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[7:8], null, s22, s26, v[74:75]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s14, s33, s16
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s14, v73
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s12, 0x7f
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v3, s14, v123
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s15, s23, 7
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v4, s23, v1
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s14, s14, s15
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v5, s23, v3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v6, 0x80000000, v7, s2
	.loc	1 346 30 is_stmt 0              ; generate_amdgcn.py:346:30
	v_lshl_add_u32 v10, s22, 6, v7
	.loc	1 352 30 is_stmt 1              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v7, s14, v73
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_mov_b32 s31, s7
	.loc	1 358 31 is_stmt 1              ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v8, s14, v123
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[18:21], v6, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[22:25], v1, s[28:31], 0 offen
	buffer_load_b128 v[26:29], v3, s[28:31], 0 offen
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v1, s23, v7
	v_add3_u32 v9, s14, s23, v123
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v6, 0x80000000, v10, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v3, 0x80000000, v7, s3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[30:33], v4, s[28:31], 0 offen
	buffer_load_b128 v[34:37], v5, s[28:31], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v4, 0x80000000, v8, s3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_cndmask_b32_e64 v5, 0x80000000, v9, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[38:41], v6, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[42:45], v3, s[28:31], 0 offen
	buffer_load_b128 v[46:49], v4, s[28:31], 0 offen
	buffer_load_b128 v[50:53], v1, s[28:31], 0 offen
	buffer_load_b128 v[54:57], v5, s[28:31], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 1, v0
	scratch_store_b32 off, v0, off offset:512 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v0, 4, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s12, 0xbf
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(9)
	ds_store_b128 v58, v[18:21] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v58, v[22:25]
	s_waitcnt vmcnt(7)
	ds_store_b128 v58, v[26:29] offset:4096
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
	v_or_b32_e32 v176, v17, v16
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
	s_mov_b32 s10, 0
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
	s_mov_b32 s10, -1
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
	s_load_b64 s[20:21], s[0:1], 0x20
	v_or_b32_e32 v16, s34, v122
	v_or_b32_e32 v17, s34, v59
	s_ashr_i32 s1, s13, 7
	v_or_b32_e32 v156, s33, v0
	v_or_b32_e32 v153, s33, v4
	v_mul_lo_u32 v158, v16, s1
	v_mul_lo_u32 v157, v17, s1
	v_or_b32_e32 v154, s33, v5
	v_or_b32_e32 v155, s33, v6
	v_or_b32_e32 v141, s33, v7
	v_or_b32_e32 v142, s33, v8
	v_or_b32_e32 v143, s33, v9
	v_or_b32_e32 v144, s33, v10
	v_or_b32_e32 v125, s33, v11
	v_or_b32_e32 v126, s33, v12
	v_or_b32_e32 v127, s33, v13
	v_or_b32_e32 v128, s33, v14
	v_or_b32_e32 v129, s33, v15
	v_or_b32_e32 v130, s33, v1
	v_or_b32_e32 v131, s33, v2
	v_or_b32_e32 v132, s33, v3
	v_add_nc_u32_e32 v152, s23, v0
	v_add_nc_u32_e32 v148, s23, v4
	v_add_nc_u32_e32 v149, s23, v5
	v_add_nc_u32_e32 v150, s23, v6
	v_add_nc_u32_e32 v145, s23, v7
	v_add_nc_u32_e32 v151, s23, v8
	v_add_nc_u32_e32 v146, s23, v9
	v_add_nc_u32_e32 v147, s23, v10
	v_add_nc_u32_e32 v133, s23, v11
	v_add_nc_u32_e32 v134, s23, v12
	v_add_nc_u32_e32 v135, s23, v13
	v_add_nc_u32_e32 v136, s23, v14
	v_add_nc_u32_e32 v137, s23, v15
	v_add_nc_u32_e32 v138, s23, v1
	v_add_nc_u32_e32 v139, s23, v2
	v_add_nc_u32_e32 v140, s23, v3
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_add_i32 s44, s26, 64
	scratch_store_b32 off, v59, off offset:520 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_or_b32_e32 v0, 0x80, v176
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v120, 0
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x100, v176
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v164, 0
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x180, v176
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v112, 0
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x200, v176
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v104, 0
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x280, v176
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v88, 0
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v176
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v96, 0
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x380, v176
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v80, 0
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v176
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v174, 0
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x480, v176
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v124, 0
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x500, v176
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x580, v176
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v166, 0
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x600, v176
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x680, v176
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x700, v176
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x780, v176
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x800, v176
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x880, v176
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s11, s12, 6
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s12, 0
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x900, v176
	s_add_i32 s0, s44, 64
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x980, v176
	s_mov_b32 s40, s24
	s_add_i32 s50, 0, 0x8000
	s_add_i32 s47, 0, 0x9000
	s_add_i32 s46, 0, 0x2000
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v176
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s11, s11, -3
	s_mov_b32 s27, 1
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa80, v176
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb00, v176
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb80, v176
	s_mov_b32 s19, s12
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s49, s12
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v176
	s_mov_b32 s48, s12
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc80, v176
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd00, v176
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd80, v176
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v176
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe80, v176
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf00, v176
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf80, v176
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1000, v176
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1080, v176
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1100, v176
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1180, v176
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1200, v176
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1280, v176
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1300, v176
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1380, v176
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1400, v176
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1480, v176
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1500, v176
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1580, v176
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1600, v176
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1680, v176
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1700, v176
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1780, v176
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1800, v176
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1880, v176
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1900, v176
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1980, v176
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a00, v176
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a80, v176
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b00, v176
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b80, v176
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c00, v176
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c80, v176
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d00, v176
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d80, v176
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e00, v176
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e80, v176
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f00, v176
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f80, v176
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 64, v176
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc0, v176
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x140, v176
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c0, v176
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x240, v176
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x2c0, v176
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x340, v176
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x3c0, v176
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x440, v176
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x4c0, v176
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x540, v176
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x5c0, v176
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x640, v176
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x6c0, v176
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x740, v176
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x7c0, v176
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x840, v176
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x8c0, v176
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x940, v176
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x9c0, v176
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa40, v176
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xac0, v176
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb40, v176
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xbc0, v176
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc40, v176
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xcc0, v176
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd40, v176
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xdc0, v176
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe40, v176
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xec0, v176
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf40, v176
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xfc0, v176
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1040, v176
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x10c0, v176
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1140, v176
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x11c0, v176
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1240, v176
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x12c0, v176
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1340, v176
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x13c0, v176
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1440, v176
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x14c0, v176
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1540, v176
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x15c0, v176
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1640, v176
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x16c0, v176
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1740, v176
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x17c0, v176
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1840, v176
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x18c0, v176
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1940, v176
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x19c0, v176
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a40, v176
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1ac0, v176
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b40, v176
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1bc0, v176
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c40, v176
	scratch_store_b32 off, v0, off offset:476 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1cc0, v176
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d40, v176
	scratch_store_b32 off, v0, off offset:484 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1dc0, v176
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e40, v176
	scratch_store_b32 off, v0, off offset:492 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1ec0, v176
	scratch_store_b32 off, v0, off offset:496 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f40, v176
	scratch_store_b32 off, v0, off offset:500 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1fc0, v176
	scratch_store_b32 off, v0, off offset:504 ; 4-byte Folded Spill
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s52, s48, 6
	s_mov_b32 s51, s50
	s_mov_b32 s50, s26
	s_mov_b32 s26, s44
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s44, s0, s52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v186, s19 :: v_dual_add_nc_u32 v177, s49, v176
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[0:1], null, s44, s22, v[74:75]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v183, s16 :: v_dual_add_nc_u32 v178, s10, v176
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s10, s50, 31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v185, s18
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s10, s10, 25
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s49, s44, s35
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b128 v[65:68], v0, s[4:7], 0 offen
	v_add_nc_u32_e32 v0, s51, v122
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v0 offset:832
	ds_load_u8 v2, v0 offset:768
	v_dual_mov_b32 v184, s17 :: v_dual_mov_b32 v181, s14
	v_dual_mov_b32 v182, s15 :: v_dual_mov_b32 v179, s12
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s50, s50, s10
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s10, s49, s33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v180, s13
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s51, s50, 7
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s49, s10, s23
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s51, s1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s50, s51, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s52, s50, s33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s27, s27, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v193, v150, s52, 1
	v_add_lshl_u32 v194, v145, s52, 1
	v_add_lshl_u32 v195, v151, s52, 1
	v_add_lshl_u32 v196, v146, s52, 1
	v_add_lshl_u32 v197, v147, s52, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v0 offset:960
	ds_load_u8 v3, v0 offset:896
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v198, v133, s52, 1
	v_add_lshl_u32 v199, v134, s52, 1
	v_add_lshl_u32 v200, v135, s52, 1
	v_add_lshl_u32 v201, v136, s52, 1
	v_add_lshl_u32 v202, v137, s52, 1
	v_add_lshl_u32 v203, v138, s52, 1
	v_add_lshl_u32 v204, v139, s52, 1
	v_add_lshl_u32 v205, v140, s52, 1
	v_dual_cndmask_b32 v194, 0x80000000, v194 :: v_dual_cndmask_b32 v199, 0x80000000, v199
	v_dual_cndmask_b32 v196, 0x80000000, v196 :: v_dual_cndmask_b32 v201, 0x80000000, v201
	v_dual_cndmask_b32 v198, 0x80000000, v198 :: v_dual_cndmask_b32 v203, 0x80000000, v203
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v200, 0x80000000, v200 :: v_dual_cndmask_b32 v205, 0x80000000, v205
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s27, 2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v197, 0x80000000, v197, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s27, s27, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v0 offset:576
	ds_load_u8 v4, v0 offset:512
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v193, 0x80000000, v193, vcc_lo
	v_cndmask_b32_e32 v195, 0x80000000, v195, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v44, v2, 16, v1
	ds_load_u8 v1, v0 offset:320
	ds_load_u8 v2, v0 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v0 offset:704
	ds_load_u8 v5, v0 offset:640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v4, 16, v3
	ds_load_u8 v2, v0 offset:448
	ds_load_u8 v3, v0 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_lshl_or_b32 v42, v2, 16, v1
	ds_load_u8 v1, v0 offset:64
	ds_load_u8 v2, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v0 offset:192
	ds_load_u8 v3, v0 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v2, 16, v1
	ds_load_u8 v1, v177 offset:1664
	ds_load_u8 v2, v177 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v177 offset:1920
	ds_load_u8 v3, v177 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v177 offset:1152
	ds_load_u8 v4, v177 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v177 offset:1408
	ds_load_u8 v5, v177 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v4, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v1
	ds_load_u8 v1, v177 offset:640
	ds_load_u8 v2, v177 offset:512
	v_lshl_or_b32 v3, v5, 16, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v177 offset:896
	ds_load_u8 v5, v177 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v5, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v177 offset:128
	ds_load_u8 v5, v177
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v5, v1, 0xc0c0004
	ds_load_u8 v5, v177 offset:384
	ds_load_u8 v6, v177 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v177 offset:1728
	ds_load_u8 v6, v177 offset:1600
	v_wmma_i32_16x16x16_iu8 v[33:40], v[1:4], v[41:44], v[179:186] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v177 offset:1984
	ds_load_u8 v7, v177 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v177 offset:1216
	ds_load_u8 v8, v177 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v177 offset:1472
	ds_load_u8 v9, v177 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v8, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	ds_load_u8 v5, v177 offset:704
	ds_load_u8 v6, v177 offset:576
	v_lshl_or_b32 v7, v9, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v177 offset:960
	ds_load_u8 v9, v177 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v9, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 16, v5
	ds_load_u8 v5, v177 offset:192
	ds_load_u8 v9, v177 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v9, v5, 0xc0c0004
	ds_load_u8 v9, v177 offset:448
	ds_load_u8 v10, v177 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v9, 16, v5
	ds_load_u8 v9, v0 offset:864
	ds_load_u8 v10, v0 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v0 offset:992
	ds_load_u8 v11, v0 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v0 offset:608
	ds_load_u8 v12, v0 offset:544
	v_lshl_or_b32 v72, v10, 16, v9
	ds_load_u8 v9, v0 offset:352
	ds_load_u8 v10, v0 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v0 offset:736
	ds_load_u8 v13, v0 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v12, 16, v11
	ds_load_u8 v10, v0 offset:480
	ds_load_u8 v11, v0 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v70, v10, 16, v9
	ds_load_u8 v9, v0 offset:32
	ds_load_u8 v10, v0 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	ds_load_u8 v10, v0 offset:224
	ds_load_u8 v11, v0 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v10, 16, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v178 offset:1664
	ds_load_u8 v10, v178 offset:1536
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[49:56], v[1:4], v[69:72], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[5:8], v[69:72], v[179:186] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v178 offset:1920
	ds_load_u8 v11, v178 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v178 offset:1152
	ds_load_u8 v12, v178 offset:1024
	v_lshl_or_b32 v48, v10, 16, v9
	ds_load_u8 v9, v178 offset:640
	ds_load_u8 v10, v178 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v178 offset:1408
	ds_load_u8 v13, v178 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v12, 16, v11
	ds_load_u8 v10, v178 offset:896
	ds_load_u8 v11, v178 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v46, v10, 16, v9
	ds_load_u8 v9, v178 offset:128
	ds_load_u8 v10, v178
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v178 offset:384
	ds_load_u8 v11, v178 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v10, 16, v9
	ds_load_u8 v9, v178 offset:1728
	ds_load_u8 v10, v178 offset:1600
	v_wmma_i32_16x16x16_iu8 v[25:32], v[45:48], v[41:44], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[45:48], v[69:72], v[179:186] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v178 offset:1984
	ds_load_u8 v11, v178 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v178 offset:1216
	ds_load_u8 v12, v178 offset:1088
	v_lshl_or_b32 v190, v10, 16, v9
	ds_load_u8 v9, v178 offset:704
	ds_load_u8 v10, v178 offset:576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v178 offset:1472
	ds_load_u8 v13, v178 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v189, v12, 16, v11
	ds_load_u8 v10, v178 offset:960
	ds_load_u8 v11, v178 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v188, v10, 16, v9
	ds_load_u8 v9, v178 offset:192
	ds_load_u8 v10, v178 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v178 offset:448
	ds_load_u8 v11, v178 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v187, v10, 16, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[5:8], v[41:44], v[179:186] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[187:190], v[41:44], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[187:190], v[69:72], v[179:186] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v69, v0 offset:1856
	ds_load_u8 v70, v0 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v0 offset:1984
	ds_load_u8 v71, v0 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v0 offset:1600
	ds_load_u8 v72, v0 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v0 offset:1728
	ds_load_u8 v179, v0 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v179, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v0 offset:1344
	ds_load_u8 v70, v0 offset:1280
	v_lshl_or_b32 v71, v179, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v0 offset:1472
	ds_load_u8 v179, v0 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v179, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v0 offset:1088
	ds_load_u8 v179, v0 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v179, v69, 0xc0c0004
	ds_load_u8 v179, v0 offset:1216
	ds_load_u8 v180, v0 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v179, 16, v69
	ds_load_u8 v179, v177 offset:3712
	ds_load_u8 v180, v177 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v177 offset:3968
	ds_load_u8 v181, v177 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v177 offset:3200
	ds_load_u8 v182, v177 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v177 offset:3456
	ds_load_u8 v183, v177 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v183, v182, 0xc0c0004
	v_lshl_or_b32 v182, v180, 16, v179
	ds_load_u8 v179, v177 offset:2688
	ds_load_u8 v180, v177 offset:2560
	v_lshl_or_b32 v181, v183, 16, v181
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v177 offset:2944
	ds_load_u8 v183, v177 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v183, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v180, 16, v179
	ds_load_u8 v179, v177 offset:2176
	ds_load_u8 v183, v177 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v183, v179, 0xc0c0004
	ds_load_u8 v183, v177 offset:2432
	ds_load_u8 v184, v177 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v183, 16, v179
	ds_load_u8 v183, v0 offset:1888
	ds_load_u8 v184, v0 offset:1824
	v_wmma_i32_16x16x16_iu8 v[33:40], v[179:182], v[69:72], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	ds_load_u8 v184, v0 offset:2016
	ds_load_u8 v185, v0 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	ds_load_u8 v185, v0 offset:1632
	ds_load_u8 v186, v0 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	ds_load_u8 v186, v0 offset:1760
	ds_load_u8 v187, v0 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v186, 0xc0c0004
	v_lshl_or_b32 v186, v184, 16, v183
	ds_load_u8 v183, v0 offset:1376
	ds_load_u8 v184, v0 offset:1312
	v_lshl_or_b32 v185, v187, 16, v185
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	ds_load_u8 v184, v0 offset:1504
	ds_load_u8 v187, v0 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v187, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v184, v184, 16, v183
	ds_load_u8 v183, v0 offset:1120
	ds_load_u8 v187, v0 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v187, v183, 0xc0c0004
	ds_load_u8 v187, v0 offset:1248
	ds_load_u8 v188, v0 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v183, v187, 16, v183
	v_wmma_i32_16x16x16_iu8 v[49:56], v[179:182], v[183:186], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v179, v177 offset:3776
	ds_load_u8 v180, v177 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v177 offset:4032
	ds_load_u8 v181, v177 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v177 offset:3264
	ds_load_u8 v182, v177 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v177 offset:3520
	ds_load_u8 v187, v177 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v182, 0xc0c0004
	v_lshl_or_b32 v182, v180, 16, v179
	ds_load_u8 v179, v177 offset:2752
	ds_load_u8 v180, v177 offset:2624
	v_lshl_or_b32 v181, v187, 16, v181
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v177 offset:3008
	ds_load_u8 v187, v177 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v187, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v180, 16, v179
	ds_load_u8 v179, v177 offset:2240
	ds_load_u8 v187, v177 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v187, v179, 0xc0c0004
	ds_load_u8 v187, v177 offset:2496
	ds_load_u8 v188, v177 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v179, v187, 16, v179
	v_wmma_i32_16x16x16_iu8 v[9:16], v[179:182], v[69:72], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[179:182], v[183:186], v[17:24] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v179, v178 offset:3712
	ds_load_u8 v180, v178 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v178 offset:3968
	ds_load_u8 v181, v178 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v178 offset:3200
	ds_load_u8 v182, v178 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v178 offset:3456
	ds_load_u8 v187, v178 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v182, 0xc0c0004
	v_lshl_or_b32 v182, v180, 16, v179
	ds_load_u8 v179, v178 offset:2688
	ds_load_u8 v180, v178 offset:2560
	v_lshl_or_b32 v181, v187, 16, v181
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v178 offset:2944
	ds_load_u8 v187, v178 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v187, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v180, 16, v179
	ds_load_u8 v179, v178 offset:2176
	ds_load_u8 v187, v178 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v187, v179, 0xc0c0004
	ds_load_u8 v187, v178 offset:2432
	ds_load_u8 v188, v178 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v187, 16, v179
	ds_load_u8 v187, v178 offset:3776
	ds_load_u8 v188, v178 offset:3648
	v_wmma_i32_16x16x16_iu8 v[25:32], v[179:182], v[69:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[179:182], v[183:186], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	ds_load_u8 v188, v178 offset:4032
	ds_load_u8 v189, v178 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	ds_load_u8 v189, v178 offset:3264
	ds_load_u8 v190, v178 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	ds_load_u8 v190, v178 offset:3520
	ds_load_u8 v191, v178 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v191, v190, 0xc0c0004
	v_lshl_or_b32 v190, v188, 16, v187
	ds_load_u8 v187, v178 offset:2752
	ds_load_u8 v188, v178 offset:2624
	v_lshl_or_b32 v189, v191, 16, v189
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	ds_load_u8 v188, v178 offset:3008
	ds_load_u8 v191, v178 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v191, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v188, v188, 16, v187
	ds_load_u8 v187, v178 offset:2240
	ds_load_u8 v191, v178 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v191, v187, 0xc0c0004
	ds_load_u8 v191, v178 offset:2496
	ds_load_u8 v192, v178 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v187, v191, 16, v187
	v_wmma_i32_16x16x16_iu8 v[1:8], v[187:190], v[69:72], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v69, v0 offset:2880
	ds_load_u8 v70, v0 offset:2816
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[41:48], v[187:190], v[183:186], v[41:48] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v0 offset:3008
	ds_load_u8 v71, v0 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v0 offset:2624
	ds_load_u8 v72, v0 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v0 offset:2752
	ds_load_u8 v179, v0 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v179, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v0 offset:2368
	ds_load_u8 v70, v0 offset:2304
	v_lshl_or_b32 v71, v179, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v0 offset:2496
	ds_load_u8 v179, v0 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v179, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v0 offset:2112
	ds_load_u8 v179, v0 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v179, v69, 0xc0c0004
	ds_load_u8 v179, v0 offset:2240
	ds_load_u8 v180, v0 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v179, 16, v69
	ds_load_u8 v179, v177 offset:5760
	ds_load_u8 v180, v177 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v177 offset:6016
	ds_load_u8 v181, v177 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v177 offset:5248
	ds_load_u8 v182, v177 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v177 offset:5504
	ds_load_u8 v183, v177 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v183, v182, 0xc0c0004
	v_lshl_or_b32 v182, v180, 16, v179
	ds_load_u8 v179, v177 offset:4736
	ds_load_u8 v180, v177 offset:4608
	v_lshl_or_b32 v181, v183, 16, v181
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v177 offset:4992
	ds_load_u8 v183, v177 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v183, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v180, 16, v179
	ds_load_u8 v179, v177 offset:4224
	ds_load_u8 v183, v177 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v183, v179, 0xc0c0004
	ds_load_u8 v183, v177 offset:4480
	ds_load_u8 v184, v177 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v183, 16, v179
	ds_load_u8 v183, v0 offset:2912
	ds_load_u8 v184, v0 offset:2848
	v_wmma_i32_16x16x16_iu8 v[33:40], v[179:182], v[69:72], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	ds_load_u8 v184, v0 offset:3040
	ds_load_u8 v185, v0 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	ds_load_u8 v185, v0 offset:2656
	ds_load_u8 v186, v0 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	ds_load_u8 v186, v0 offset:2784
	ds_load_u8 v187, v0 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v186, 0xc0c0004
	v_lshl_or_b32 v186, v184, 16, v183
	ds_load_u8 v183, v0 offset:2400
	ds_load_u8 v184, v0 offset:2336
	v_lshl_or_b32 v185, v187, 16, v185
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	ds_load_u8 v184, v0 offset:2528
	ds_load_u8 v187, v0 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v187, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v184, v184, 16, v183
	ds_load_u8 v183, v0 offset:2144
	ds_load_u8 v187, v0 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v187, v183, 0xc0c0004
	ds_load_u8 v187, v0 offset:2272
	ds_load_u8 v188, v0 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v183, v187, 16, v183
	v_wmma_i32_16x16x16_iu8 v[49:56], v[179:182], v[183:186], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v179, v177 offset:5824
	ds_load_u8 v180, v177 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v177 offset:6080
	ds_load_u8 v181, v177 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v177 offset:5312
	ds_load_u8 v182, v177 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v177 offset:5568
	ds_load_u8 v187, v177 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v182, 0xc0c0004
	v_lshl_or_b32 v182, v180, 16, v179
	ds_load_u8 v179, v177 offset:4800
	ds_load_u8 v180, v177 offset:4672
	v_lshl_or_b32 v181, v187, 16, v181
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v177 offset:5056
	ds_load_u8 v187, v177 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v187, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v180, 16, v179
	ds_load_u8 v179, v177 offset:4288
	ds_load_u8 v187, v177 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v187, v179, 0xc0c0004
	ds_load_u8 v187, v177 offset:4544
	ds_load_u8 v188, v177 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v179, v187, 16, v179
	v_wmma_i32_16x16x16_iu8 v[9:16], v[179:182], v[69:72], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[179:182], v[183:186], v[17:24] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v179, v178 offset:5760
	ds_load_u8 v180, v178 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v178 offset:6016
	ds_load_u8 v181, v178 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v178 offset:5248
	ds_load_u8 v182, v178 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v178 offset:5504
	ds_load_u8 v187, v178 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v182, 0xc0c0004
	v_lshl_or_b32 v182, v180, 16, v179
	ds_load_u8 v179, v178 offset:4736
	ds_load_u8 v180, v178 offset:4608
	v_lshl_or_b32 v181, v187, 16, v181
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v178 offset:4992
	ds_load_u8 v187, v178 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v187, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v180, 16, v179
	ds_load_u8 v179, v178 offset:4224
	ds_load_u8 v187, v178 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v187, v179, 0xc0c0004
	ds_load_u8 v187, v178 offset:4480
	ds_load_u8 v188, v178 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v187, 16, v179
	ds_load_u8 v187, v178 offset:5824
	ds_load_u8 v188, v178 offset:5696
	v_wmma_i32_16x16x16_iu8 v[25:32], v[179:182], v[69:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[179:182], v[183:186], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	ds_load_u8 v188, v178 offset:6080
	ds_load_u8 v189, v178 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	ds_load_u8 v189, v178 offset:5312
	ds_load_u8 v190, v178 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	ds_load_u8 v190, v178 offset:5568
	ds_load_u8 v191, v178 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v191, v190, 0xc0c0004
	v_lshl_or_b32 v190, v188, 16, v187
	ds_load_u8 v187, v178 offset:4800
	ds_load_u8 v188, v178 offset:4672
	v_lshl_or_b32 v189, v191, 16, v189
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	ds_load_u8 v188, v178 offset:5056
	ds_load_u8 v191, v178 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v191, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v188, v188, 16, v187
	ds_load_u8 v187, v178 offset:4288
	ds_load_u8 v191, v178 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v191, v187, 0xc0c0004
	ds_load_u8 v191, v178 offset:4544
	ds_load_u8 v192, v178 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v192, v149, s52, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v187, v191, 16, v187
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v191, v148, s52, 1
	v_cndmask_b32_e32 v192, 0x80000000, v192, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[187:190], v[69:72], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v69, v0 offset:3904
	ds_load_u8 v70, v0 offset:3840
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[41:48], v[187:190], v[183:186], v[41:48] neg_lo:[1,1,0]
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v191, 0x80000000, v191, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v0 offset:4032
	ds_load_u8 v71, v0 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v0 offset:3648
	ds_load_u8 v72, v0 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v0 offset:3776
	ds_load_u8 v179, v0 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v179, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v0 offset:3392
	ds_load_u8 v70, v0 offset:3328
	v_lshl_or_b32 v71, v179, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v0 offset:3520
	ds_load_u8 v179, v0 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v179, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v0 offset:3136
	ds_load_u8 v179, v0 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v179, v69, 0xc0c0004
	ds_load_u8 v179, v0 offset:3264
	ds_load_u8 v180, v0 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v179, 16, v69
	ds_load_u8 v179, v177 offset:7808
	ds_load_u8 v180, v177 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v177 offset:8064
	ds_load_u8 v181, v177 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v177 offset:7296
	ds_load_u8 v182, v177 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v177 offset:7552
	ds_load_u8 v183, v177 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v183, v182, 0xc0c0004
	v_lshl_or_b32 v182, v180, 16, v179
	ds_load_u8 v179, v177 offset:6784
	ds_load_u8 v180, v177 offset:6656
	v_lshl_or_b32 v181, v183, 16, v181
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v177 offset:7040
	ds_load_u8 v183, v177 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v183, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v180, 16, v179
	ds_load_u8 v179, v177 offset:6272
	ds_load_u8 v183, v177 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v183, v179, 0xc0c0004
	ds_load_u8 v183, v177 offset:6528
	ds_load_u8 v184, v177 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v179, v183, 16, v179
	ds_load_u8 v183, v0 offset:3936
	ds_load_u8 v184, v0 offset:3872
	v_wmma_i32_16x16x16_iu8 v[33:40], v[179:182], v[69:72], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	ds_load_u8 v184, v0 offset:4064
	ds_load_u8 v185, v0 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	ds_load_u8 v185, v0 offset:3680
	ds_load_u8 v186, v0 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	ds_load_u8 v186, v0 offset:3808
	ds_load_u8 v187, v0 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v186, 0xc0c0004
	v_lshl_or_b32 v186, v184, 16, v183
	ds_load_u8 v183, v0 offset:3424
	ds_load_u8 v184, v0 offset:3360
	v_lshl_or_b32 v185, v187, 16, v185
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	ds_load_u8 v184, v0 offset:3552
	ds_load_u8 v187, v0 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v187, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v184, v184, 16, v183
	ds_load_u8 v183, v0 offset:3168
	ds_load_u8 v187, v0 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v187, v183, 0xc0c0004
	ds_load_u8 v187, v0 offset:3296
	ds_load_u8 v0, v0 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v183, v0, 16, v183
	v_wmma_i32_16x16x16_iu8 v[49:56], v[179:182], v[183:186], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v0, v177 offset:7872
	ds_load_u8 v179, v177 offset:7744
	v_cvt_f32_i32_e32 v56, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v179, v0, 0xc0c0004
	ds_load_u8 v179, v177 offset:8128
	ds_load_u8 v180, v177 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v177 offset:7360
	ds_load_u8 v181, v177 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v177 offset:7616
	ds_load_u8 v182, v177 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	v_lshl_or_b32 v182, v179, 16, v0
	ds_load_u8 v0, v177 offset:6848
	ds_load_u8 v179, v177 offset:6720
	v_lshl_or_b32 v181, v181, 16, v180
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v179, v0, 0xc0c0004
	ds_load_u8 v179, v177 offset:7104
	ds_load_u8 v180, v177 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v179, 16, v0
	ds_load_u8 v0, v177 offset:6336
	ds_load_u8 v179, v177 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v179, v0, 0xc0c0004
	ds_load_u8 v179, v177 offset:6592
	ds_load_u8 v177, v177 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v177, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v179, v177, 16, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v178 offset:7808
	ds_load_u8 v177, v178 offset:7680
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[179:182], v[69:72], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[179:182], v[183:186], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v177, v0, 0xc0c0004
	ds_load_u8 v177, v178 offset:8064
	ds_load_u8 v179, v178 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v179, v177, 0xc0c0004
	ds_load_u8 v179, v178 offset:7296
	ds_load_u8 v180, v178 offset:7168
	v_lshl_or_b32 v182, v177, 16, v0
	ds_load_u8 v0, v178 offset:6784
	ds_load_u8 v177, v178 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v178 offset:7552
	ds_load_u8 v181, v178 offset:7424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v177, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v181, v180, 16, v179
	ds_load_u8 v177, v178 offset:7040
	ds_load_u8 v179, v178 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v179, v177, 0xc0c0004
	v_lshl_or_b32 v180, v177, 16, v0
	ds_load_u8 v0, v178 offset:6272
	ds_load_u8 v177, v178 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v177, v0, 0xc0c0004
	ds_load_u8 v177, v178 offset:6528
	ds_load_u8 v179, v178 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v179, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v177, 16, v0
	ds_load_u8 v0, v178 offset:7872
	ds_load_u8 v177, v178 offset:7744
	v_wmma_i32_16x16x16_iu8 v[25:32], v[179:182], v[69:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[179:182], v[183:186], v[57:64] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v179, v55
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v180, v143, s50, 1
	v_add_lshl_u32 v181, v144, s50, 1
	v_add_lshl_u32 v182, v125, s50, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v55, v57
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v57, v36
	v_cvt_f32_i32_e32 v36, v19
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v181, 0x80000000, v181, vcc_lo
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v28, v28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v177, v0, 0xc0c0004
	ds_load_u8 v177, v178 offset:8128
	ds_load_u8 v187, v178 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v187, v177, 0xc0c0004
	ds_load_u8 v187, v178 offset:7360
	ds_load_u8 v188, v178 offset:7232
	v_lshl_or_b32 v190, v177, 16, v0
	ds_load_u8 v0, v178 offset:6848
	ds_load_u8 v177, v178 offset:6720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	ds_load_u8 v188, v178 offset:7616
	ds_load_u8 v189, v178 offset:7488
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v177, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v189, v188, 16, v187
	ds_load_u8 v177, v178 offset:7104
	ds_load_u8 v187, v178 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v187, v177, 0xc0c0004
	v_lshl_or_b32 v188, v177, 16, v0
	ds_load_u8 v0, v178 offset:6336
	ds_load_u8 v177, v178 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v177, v0, 0xc0c0004
	ds_load_u8 v177, v178 offset:6592
	ds_load_u8 v178, v178 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v178, v53
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v53, v58
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v58, v37
	v_cvt_f32_i32_e32 v37, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v187, v177, 16, v0
	v_cvt_f32_i32_e32 v0, v64
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v64, v23
	v_cvt_f32_i32_e32 v177, v54
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v54, v59
	v_wmma_i32_16x16x16_iu8 v[1:8], v[187:190], v[69:72], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[187:190], v[183:186], v[41:48] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v71, v52
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v52, v61
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v61, v35
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v35, v25
	v_cvt_f32_i32_e32 v25, v32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v32, v20
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v20, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v44, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v9, v2
	v_cvt_f32_i32_e32 v2, v6
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v6, v158, s51, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v22, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v42, v10
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v10, v3
	v_cvt_f32_i32_e32 v3, v7
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v7, v157, s51, 1
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v23, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v43, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v11, v1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x1
	buffer_load_u16 v6, v6, s[36:39], 0 offen
	buffer_load_u16 v7, v7, s[36:39], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v8, v156, s50, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v69, v50
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v50, v63
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v63, v24
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v24, v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v41, v12
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v14, v13
	v_cvt_f32_i32_e32 v13, v16
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v16, v153, s50, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v59, v39
	v_cvt_f32_i32_e32 v39, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v21, v45
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v45, v154, s50, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v70, v49
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v49, v62
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v62, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v33, v26
	v_cvt_f32_i32_e32 v26, v30
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v30, v18
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v18, v46
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v46, v155, s50, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v19, v47
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v47, v141, s50, 1
	v_add_lshl_u32 v188, v131, s50, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v190, v152, s52, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v72, v51
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v51, v60
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v60, v34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v34, v27
	v_cvt_f32_i32_e32 v27, v31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v31, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v17, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v45, 0x80000000, v45
	v_add_lshl_u32 v48, v142, s50, 1
	v_add_lshl_u32 v183, v126, s50, 1
	v_add_lshl_u32 v184, v127, s50, 1
	v_add_lshl_u32 v185, v128, s50, 1
	v_add_lshl_u32 v186, v129, s50, 1
	v_add_lshl_u32 v187, v130, s50, 1
	v_add_lshl_u32 v189, v132, s50, 1
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_cndmask_b32 v47, 0x80000000, v47
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	v_cndmask_b32_e32 v188, 0x80000000, v188, vcc_lo
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v190, 0x80000000, v190, vcc_lo
	v_cndmask_b32_e32 v204, 0x80000000, v204, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v48, 0x80000000, v48 :: v_dual_cndmask_b32 v183, 0x80000000, v183
	v_dual_cndmask_b32 v180, 0x80000000, v180 :: v_dual_cndmask_b32 v185, 0x80000000, v185
	v_dual_cndmask_b32 v182, 0x80000000, v182 :: v_dual_cndmask_b32 v187, 0x80000000, v187
	v_dual_cndmask_b32 v184, 0x80000000, v184 :: v_dual_cndmask_b32 v189, 0x80000000, v189
	v_cndmask_b32_e32 v186, 0x80000000, v186, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s50, s27, 12
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s51, s50, 0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v222, s51, v121
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s52, s48, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v202, 0x80000000, v202, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x1f
	buffer_load_u16 v8, v8, s[40:43], 0 offen
	buffer_load_u16 v16, v16, s[40:43], 0 offen
	buffer_load_u16 v206, v45, s[40:43], 0 offen
	buffer_load_u16 v207, v46, s[40:43], 0 offen
	buffer_load_u16 v208, v47, s[40:43], 0 offen
	buffer_load_u16 v209, v48, s[40:43], 0 offen
	buffer_load_u16 v210, v180, s[40:43], 0 offen
	buffer_load_u16 v211, v181, s[40:43], 0 offen
	buffer_load_u16 v212, v182, s[40:43], 0 offen
	buffer_load_u16 v213, v183, s[40:43], 0 offen
	buffer_load_u16 v214, v184, s[40:43], 0 offen
	buffer_load_u16 v215, v185, s[40:43], 0 offen
	buffer_load_u16 v216, v186, s[40:43], 0 offen
	buffer_load_u16 v217, v187, s[40:43], 0 offen
	buffer_load_u16 v218, v188, s[40:43], 0 offen
	buffer_load_u16 v219, v189, s[40:43], 0 offen
	buffer_load_u16 v220, v190, s[40:43], 0 offen
	buffer_load_u16 v221, v191, s[40:43], 0 offen
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
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v45, s10, v73
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v184, s49, v73
	v_add_nc_u32_e32 v188, s49, v123
	s_mov_b32 s49, s46
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s46, s51, s50
	s_mov_b32 s50, s47
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s47, s51, 0x8000
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v8, 16, v8
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v180, s10, v123
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[45:48], v45, s[28:31], 0 offen
	buffer_load_b128 v[180:183], v180, s[28:31], 0 offen
	buffer_load_b128 v[184:187], v184, s[28:31], 0 offen
	buffer_load_b128 v[188:191], v188, s[28:31], 0 offen
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v222, v[65:68] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v65, s46, v121
	s_waitcnt vmcnt(3)
	ds_store_b128 v65, v[45:48]
	s_waitcnt vmcnt(2)
	ds_store_b128 v65, v[180:183] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v65, v[184:187] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v65, v[188:191] offset:20480
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v45, v6, v8
	s_mov_b32 s10, s45
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s45, s46, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s48, s11
	s_mov_b32 s48, s52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v169, v45, v62
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v45, v6, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v170, v45, v60 :: v_dual_lshlrev_b32 v45, 16, v206
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v46, v6, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v161, v46, v61 :: v_dual_lshlrev_b32 v46, 16, v207
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v47, v6, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v162, v47, v57 :: v_dual_lshlrev_b32 v47, 16, v208
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v6, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v115, v48, v58 :: v_dual_lshlrev_b32 v48, 16, v209
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v6, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v116, v57, v38
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v38, 16, v210
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v57, v6, v38 :: v_dual_mul_f32 v8, v7, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v107, v57, v59
	v_dual_fmac_f32 v172, v8, v70 :: v_dual_lshlrev_b32 v57, 16, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v58, v6, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v108, v58, v40
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v40, 16, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v58, v6, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v99, v58, v44 :: v_dual_lshlrev_b32 v44, 16, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v58, v6, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v100, v58, v42
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v42, 16, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v58, v6, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v91, v58, v43 :: v_dual_mul_f32 v8, v7, v16
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v43, 16, v215
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v173, v8, v69
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v7, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v165, v8, v72 :: v_dual_mul_f32 v8, v7, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v166, v8, v71
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v7, v47
	v_dual_mul_f32 v58, v6, v43 :: v_dual_fmac_f32 v117, v8, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v92, v58, v41 :: v_dual_lshlrev_b32 v41, 16, v216
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v7, v48
	v_mul_f32_e32 v58, v6, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v118, v8, v177 :: v_dual_fmac_f32 v83, v58, v14
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v14, 16, v217
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v58, v6, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v84, v58, v12
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v12, 16, v218
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v58, v6, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v75, v58, v15 :: v_dual_mul_f32 v8, v7, v38
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v15, 16, v219
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v109, v8, v179 :: v_dual_mul_f32 v8, v7, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v58, v6, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v110, v8, v56
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v7, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v76, v58, v13 :: v_dual_fmac_f32 v101, v8, v31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v7, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v102, v8, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v7, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v93, v8, v36 :: v_dual_mul_f32 v8, v7, v43
	v_fmac_f32_e32 v94, v8, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v7, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v85, v8, v39 :: v_dual_mul_f32 v8, v7, v14
	v_fmac_f32_e32 v86, v8, v37
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v7, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v77, v8, v64 :: v_dual_mul_f32 v8, v7, v15
	v_fmac_f32_e32 v78, v8, v63
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v8, 16, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v12, v6, v8
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v159, v12, v35 :: v_dual_lshlrev_b32 v12, 16, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v13, v6, v12
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v171, v13, v33
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v13, 16, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v14, v6, v13
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v163, v14, v34 :: v_dual_lshlrev_b32 v14, 16, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v15, v6, v14
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v164, v15, v28 :: v_dual_lshlrev_b32 v15, 16, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v6, v15
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v119, v16, v29 :: v_dual_lshlrev_b32 v16, 16, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v6, v16
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v120, v28, v26
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v26, 16, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v6, v26
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v111, v28, v27
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v27, 16, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v6, v27
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v112, v28, v25 :: v_dual_lshlrev_b32 v25, 16, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v6, v25
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v103, v28, v11
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v11, 16, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v6, v11
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v104, v28, v9 :: v_dual_lshlrev_b32 v9, 16, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v6, v9
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v95, v28, v10 :: v_dual_lshlrev_b32 v10, 16, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v6, v10
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v96, v28, v4
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v4, 16, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v6, v4
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v87, v28, v5
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v5, 16, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v6, v5
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v88, v28, v2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v2, 16, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v6, v2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v79, v28, v3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v3, 16, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v6, v6, v3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v80, v6, v1 :: v_dual_mul_f32 v1, v7, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v174, v1, v55 :: v_dual_mul_f32 v1, v7, v12
	v_fmac_f32_e32 v175, v1, v53
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v7, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v167, v1, v54
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v7, v14
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v168, v1, v51
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v7, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v124, v1, v52
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v7, v16
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v160, v1, v49 :: v_dual_mul_f32 v1, v7, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v113, v1, v50
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v7, v27
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v114, v1, v0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v7, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v105, v0, v24 :: v_dual_mul_f32 v0, v7, v11
	v_fmac_f32_e32 v106, v0, v22
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v7, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v97, v0, v23 :: v_dual_mul_f32 v0, v7, v10
	v_fmac_f32_e32 v98, v0, v20
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v7, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v89, v0, v21
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v7, v5
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v90, v0, v18
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v7, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v81, v0, v19
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v7, v3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v82, v0, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v33, v176
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s50, 0, 0x8000
	s_add_i32 s47, 0, 0x9000
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v159, 0
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v1, s50, v122
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v4, 0
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
	ds_load_u8_d16 v206, v1 offset:416
	ds_load_u8_d16 v208, v1 offset:352
	ds_load_u8_d16 v236, v1 offset:288
	ds_load_u8_d16 v254, v1 offset:512
	ds_load_u8_d16 v211, v1 offset:576
	ds_load_u8_d16 v253, v1 offset:640
	ds_load_u8_d16 v255, v1 offset:704
	ds_load_u8_d16 v237, v1 offset:736
	ds_load_u8_d16 v238, v1 offset:672
	ds_load_u8_d16 v239, v1 offset:608
	ds_load_u8_d16 v240, v1 offset:544
	ds_load_u8_d16 v34, v1 offset:768
	ds_load_u8_d16 v36, v1 offset:832
	ds_load_u8_d16 v0, v1 offset:896
	ds_load_u8_d16 v35, v1 offset:960
	ds_load_u8_d16 v241, v1 offset:992
	ds_load_u8_d16 v242, v1 offset:928
	ds_load_u8_d16 v243, v1 offset:864
	ds_load_u8_d16 v244, v1 offset:800
	ds_load_u8_d16 v221, v1 offset:1024
	ds_load_u8_d16 v222, v1 offset:1088
	ds_load_u8_d16 v223, v1 offset:1152
	ds_load_u8_d16 v224, v1 offset:1216
	ds_load_u8_d16 v176, v1 offset:1248
	ds_load_u8_d16 v177, v1 offset:1184
	ds_load_u8_d16 v178, v1 offset:1120
	ds_load_u8_d16 v179, v1 offset:1056
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
	ds_load_u8_d16 v207, v1 offset:2016
	ds_load_u8_d16 v209, v1 offset:1952
	ds_load_u8_d16 v210, v1 offset:1888
	ds_load_u8_d16 v212, v1 offset:1824
	ds_load_u8_d16 v188, v1 offset:2048
	ds_load_u8_d16 v189, v1 offset:2112
	ds_load_u8_d16 v190, v1 offset:2176
	ds_load_u8_d16 v191, v1 offset:2240
	ds_load_u8_d16 v2, v1 offset:2272
	ds_load_u8_d16 v180, v1 offset:3840
	ds_load_u8_d16 v181, v1 offset:3904
	ds_load_u8_d16 v182, v1 offset:3968
	ds_load_u8_d16 v183, v1 offset:4032
	ds_load_u8_d16 v3, v1 offset:4064
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v18, 0
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v2, off offset:668 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:652 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v1 offset:2208
	ds_load_u8_d16 v3, v1 offset:4000
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v9, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v50, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:656 ; 4-byte Folded Spill
	ds_load_u8_d16 v3, v1 offset:3936
	scratch_store_b32 off, v2, off offset:672 ; 4-byte Folded Spill
	ds_load_u8_d16 v51, v1 offset:2144
	ds_load_u8_d16 v52, v1 offset:2080
	ds_load_u8_d16 v195, v1 offset:2304
	ds_load_u8_d16 v197, v1 offset:2368
	ds_load_u8_d16 v202, v1 offset:2432
	ds_load_u8_d16 v205, v1 offset:2496
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
	ds_load_u8_d16 v121, v1 offset:2848
	ds_load_u8_d16 v57, v1 offset:3072
	ds_load_u8_d16 v58, v1 offset:3136
	ds_load_u8_d16 v59, v1 offset:3200
	ds_load_u8_d16 v60, v1 offset:3264
	ds_load_u8_d16 v2, v1 offset:3296
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:556 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v1 offset:3232
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:560 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v1 offset:3168
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:572 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v1 offset:3104
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:576 ; 4-byte Folded Spill
	ds_load_u8_d16 v64, v1 offset:3328
	ds_load_u8_d16 v66, v1 offset:3392
	ds_load_u8_d16 v67, v1 offset:3456
	ds_load_u8_d16 v68, v1 offset:3520
	ds_load_u8_d16 v2, v1 offset:3552
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:580 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v1 offset:3488
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:584 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v1 offset:3424
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:588 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v1 offset:3360
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:600 ; 4-byte Folded Spill
	ds_load_u8_d16 v71, v1 offset:3584
	ds_load_u8_d16 v73, v1 offset:3648
	ds_load_u8_d16 v74, v1 offset:3712
	ds_load_u8_d16 v123, v1 offset:3776
	ds_load_u8_d16 v2, v1 offset:3808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:604 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v1 offset:3744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:608 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v1 offset:3680
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:620 ; 4-byte Folded Spill
	ds_load_u8_d16 v2, v1 offset:3616
	ds_load_u8_d16 v1, v1 offset:3872
	scratch_store_b32 off, v3, off offset:660 ; 4-byte Folded Spill
	v_mov_b32_e32 v3, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:664 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v2, off offset:624 ; 4-byte Folded Spill
	v_cndmask_b32_e64 v2, 0, 1, s2
	scratch_store_b32 off, v1, off offset:508 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	v_cmp_ne_u32_e64 s0, 1, v2
	v_mov_b32_e32 v2, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	v_perm_b32 v1, v34, v36, 0xc0c0004
	v_perm_b32 v2, v0, v35, 0xc0c0004
	v_perm_b32 v3, v254, v211, 0xc0c0004
	v_perm_b32 v4, v253, v255, 0xc0c0004
	s_mov_b32 s12, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v20, v2, 16, v1
	v_perm_b32 v1, v251, v252, 0xc0c0004
	v_perm_b32 v2, v249, v250, 0xc0c0004
	v_lshl_or_b32 v19, v4, 16, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	v_lshl_or_b32 v18, v2, 16, v1
	v_perm_b32 v1, v245, v247, 0xc0c0004
	v_perm_b32 v2, v246, v248, 0xc0c0004
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_lshl_or_b32 v17, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:48
	scratch_load_b32 v2, off, off offset:44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s19, s12
	v_dual_mov_b32 v9, s12 :: v_dual_mov_b32 v10, s13
	v_dual_mov_b32 v12, s15 :: v_dual_mov_b32 v11, s14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v4, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v13, s16 :: v_dual_mov_b32 v14, s17
	v_dual_mov_b32 v16, s19 :: v_dual_mov_b32 v15, s18
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:356
	scratch_load_b32 v50, off, off offset:324
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v5, s49, v5
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v3, s49, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	ds_load_u8 v3, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v1, s49, v1
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v2, s49, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v4, s49, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v49, s49, v49
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s49, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v49
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s49, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v40, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s49, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v4, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v4, s49, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v39, v4, 16, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:24
	scratch_load_b32 v2, off, off offset:12
	v_add_nc_u32_e32 v1, s49, v1
	scratch_load_b32 v4, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v5, s49, v5
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v3, s49, v3
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s49, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v4, s49, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v2, v2
	ds_load_u8 v4, v4
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s49, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v38, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off           ; 4-byte Folded Reload
	v_add_nc_u32_e32 v1, s49, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s49, v3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s49, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:8  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s49, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v37, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:304
	scratch_load_b32 v2, off, off offset:300
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v3, s49, v3
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, s49, v1
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s49, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s49, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v44, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s49, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v4, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v4, s49, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v4, 16, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:280
	scratch_load_b32 v2, off, off offset:268
	v_add_nc_u32_e32 v1, s49, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v4, v238, v237, 0xc0c0004
	ds_load_u8 v1, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s49, v3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s49, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s49, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v42, v2, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:252
	scratch_load_b32 v2, off, off offset:256
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v3, s49, v3
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, s49, v1
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s49, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s49, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_perm_b32 v3, v240, v239, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v41, v2, 16, v1
	v_perm_b32 v1, v244, v243, 0xc0c0004
	v_perm_b32 v2, v242, v241, 0xc0c0004
	v_lshl_or_b32 v47, v4, 16, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[41:44], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v48, v2, 16, v1
	v_perm_b32 v1, v236, v208, 0xc0c0004
	v_perm_b32 v2, v206, v204, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v2, 16, v1
	v_perm_b32 v1, v229, v235, 0xc0c0004
	v_perm_b32 v2, v234, v233, 0xc0c0004
	v_lshl_or_b32 v45, v2, 16, v1
	v_wmma_i32_16x16x16_iu8 v[1:8], v[37:40], v[17:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[37:40], v[45:48], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v37, v228, v230, 0xc0c0004
	v_perm_b32 v38, v231, v232, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[41:44], v[45:48], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v39, v201, v203, 0xc0c0004
	v_perm_b32 v41, v226, v227, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:120
	scratch_load_b32 v42, off, off offset:108
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v40, v38, 16, v37
	v_perm_b32 v37, v198, v199, 0xc0c0004
	v_perm_b32 v38, v200, v225, 0xc0c0004
	v_lshl_or_b32 v39, v41, 16, v39
	v_perm_b32 v41, v223, v224, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v44, off, off offset:96
	scratch_load_b32 v45, off, off offset:100
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v38, v38, 16, v37
	v_perm_b32 v37, v221, v222, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v46, off, off offset:68
	scratch_load_b32 v48, off, off offset:352
	scratch_load_b32 v47, off, off offset:376
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v37, v41, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v41, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v43, s49, v43
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v42, s49, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	ds_load_u8 v42, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v44, s49, v44
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v46, s49, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	ds_load_u8 v45, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v48, s49, v48
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v47, s49, v47
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s49, v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	ds_load_u8 v48, v48
	ds_load_u8 v47, v47
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s49, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v42, v43, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v43, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v43, s49, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v43, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	v_lshl_or_b32 v44, v42, 16, v41
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v41, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v43, v45, 16, v43
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:88
	scratch_load_b32 v42, off, off offset:76
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v41, s49, v41
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s49, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v41, v41
	ds_load_u8 v45, v45
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s49, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v42, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v42, v42, 16, v41
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v41, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s49, v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s49, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v41, v45, 16, v41
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[41:44], v[37:40], v[1:8] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v46, s49, v46
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s49, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s49, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v47, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v47, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s49, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v48, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v48, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s49, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v49, v48, 0xc0c0004
	v_lshl_or_b32 v48, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v47, v49, 16, v47
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:344
	scratch_load_b32 v46, off, off offset:332
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v49, s49, v49
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s49, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	ds_load_u8 v49, v49
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s49, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v49, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v49, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v46, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v49, s49, v49
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s49, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v49
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v49, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v49, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v49, s49, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v45, v49, 16, v45
	v_perm_b32 v49, v193, v192, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[45:48], v[37:40], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v37, v212, v210, 0xc0c0004
	v_perm_b32 v38, v209, v207, 0xc0c0004
	v_perm_b32 v39, v196, v194, 0xc0c0004
	v_lshl_or_b32 v40, v38, 16, v37
	v_perm_b32 v37, v187, v186, 0xc0c0004
	v_perm_b32 v38, v185, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v39, v49, 16, v39
	v_perm_b32 v49, v177, v176, 0xc0c0004
	v_lshl_or_b32 v38, v38, 16, v37
	v_perm_b32 v37, v179, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v49, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v49, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[37:40], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[45:48], v[37:40], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v37, v217, v218, 0xc0c0004
	v_perm_b32 v38, v219, v220, 0xc0c0004
	v_perm_b32 v39, v213, v214, 0xc0c0004
	v_perm_b32 v41, v215, v216, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:184
	scratch_load_b32 v42, off, off offset:172
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v40, v38, 16, v37
	v_perm_b32 v37, v195, v197, 0xc0c0004
	v_perm_b32 v38, v202, v205, 0xc0c0004
	v_lshl_or_b32 v39, v41, 16, v39
	v_perm_b32 v41, v190, v191, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v44, off, off offset:160
	scratch_load_b32 v45, off, off offset:164
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v38, v38, 16, v37
	v_perm_b32 v37, v188, v189, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v47, off, off offset:440
	scratch_load_b32 v46, off, off offset:132
	scratch_load_b32 v48, off, off offset:416
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v37, v41, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v41, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v50, s49, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v49, s49, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v49
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v43, s49, v43
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v42, s49, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	ds_load_u8 v42, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v44, s49, v44
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v47, s49, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	ds_load_u8 v45, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v46, s49, v46
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v48, s49, v48
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s49, v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v46, v46
	ds_load_u8 v48, v48
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s49, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v42, v43, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v43, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v43, s49, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v43, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	v_lshl_or_b32 v44, v42, 16, v41
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v41, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v43, v45, 16, v43
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:152
	scratch_load_b32 v42, off, off offset:140
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v41, s49, v41
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s49, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v41, v41
	ds_load_u8 v45, v45
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s49, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v42, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v42, v42, 16, v41
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v41, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s49, v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s49, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v41, v45, 16, v41
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[41:44], v[37:40], v[1:8] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v46, s49, v46
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s49, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s49, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v47, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v47, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s49, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v48, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v48, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s49, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v49, v48, 0xc0c0004
	v_lshl_or_b32 v48, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v47, v49, 16, v47
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:408
	scratch_load_b32 v46, off, off offset:396
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v49, s49, v49
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s49, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	ds_load_u8 v49, v49
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s49, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v49, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v49, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v46, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v49, s49, v49
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s49, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v49
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v49, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v49, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v49, s49, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v45, v49, 16, v45
	v_perm_b32 v49, v62, v61, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[45:48], v[37:40], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v39, v65, v63, 0xc0c0004
	v_perm_b32 v37, v121, v72, 0xc0c0004
	v_perm_b32 v38, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v39, v49, 16, v39
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:668
	scratch_load_b32 v50, off, off offset:672
	v_lshl_or_b32 v40, v38, 16, v37
	v_perm_b32 v37, v56, v55, 0xc0c0004
	v_perm_b32 v38, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	v_perm_b32 v37, v52, v51, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v37, v49, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v49, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[37:40], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[45:48], v[37:40], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v37, v180, v181, 0xc0c0004
	v_perm_b32 v38, v182, v183, 0xc0c0004
	v_perm_b32 v39, v71, v73, 0xc0c0004
	v_perm_b32 v41, v74, v123, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:248
	scratch_load_b32 v42, off, off offset:236
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v40, v38, 16, v37
	v_perm_b32 v37, v64, v66, 0xc0c0004
	v_perm_b32 v38, v67, v68, 0xc0c0004
	v_lshl_or_b32 v39, v41, 16, v39
	v_perm_b32 v41, v59, v60, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v44, off, off offset:224
	scratch_load_b32 v45, off, off offset:228
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v38, v38, 16, v37
	v_perm_b32 v37, v57, v58, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v47, off, off offset:504
	scratch_load_b32 v46, off, off offset:196
	scratch_load_b32 v48, off, off offset:480
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v37, v41, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v41, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v50, s49, v50
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v49, s49, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	ds_load_u8 v49, v49
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v43, s49, v43
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v42, s49, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	ds_load_u8 v42, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v44, s49, v44
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v47, s49, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	ds_load_u8 v45, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v46, s49, v46
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v48, s49, v48
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s49, v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v46, v46
	ds_load_u8 v48, v48
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s49, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v42, v43, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v43, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v43, s49, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v43, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	v_lshl_or_b32 v44, v42, 16, v41
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v41, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v43, v45, 16, v43
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:216
	scratch_load_b32 v42, off, off offset:204
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v41, s49, v41
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s49, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v41, v41
	ds_load_u8 v45, v45
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s49, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v42, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v42, v42, 16, v41
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v41, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s49, v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s49, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v41, v45, 16, v41
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[41:44], v[37:40], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v46, s49, v46
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s49, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s49, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v47, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v47, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s49, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v48, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v48, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s49, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v49, v48, 0xc0c0004
	v_lshl_or_b32 v48, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v47, v49, 16, v47
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:472
	scratch_load_b32 v46, off, off offset:460
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v49, s49, v49
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s49, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	ds_load_u8 v49, v49
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s49, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v49, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v49, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v46, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v49, s49, v49
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s49, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v49
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v49, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v49, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v49, s49, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v49, 16, v45
	v_wmma_i32_16x16x16_iu8 v[25:32], v[45:48], v[37:40], v[25:32] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:660
	scratch_load_b32 v38, off, off offset:664
	s_waitcnt vmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:652
	scratch_load_b32 v39, off, off offset:656
	s_waitcnt vmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:620
	scratch_load_b32 v40, off, off offset:624
	s_waitcnt vmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:604
	scratch_load_b32 v49, off, off offset:608
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v49, v40, 0xc0c0004
	v_lshl_or_b32 v40, v38, 16, v37
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:588
	scratch_load_b32 v38, off, off offset:600
	v_lshl_or_b32 v39, v49, 16, v39
	s_waitcnt vmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:580
	scratch_load_b32 v49, off, off offset:584
	s_waitcnt vmcnt(0)
	v_perm_b32 v38, v49, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:572
	scratch_load_b32 v49, off, off offset:576
	s_waitcnt vmcnt(0)
	v_perm_b32 v37, v49, v37, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:556
	scratch_load_b32 v50, off, off offset:560
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	v_cvt_f32_i32_e32 v50, v3
	v_cvt_f32_i32_e32 v3, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v49, 16, v37
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[37:40], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[45:48], v[37:40], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v39, v25
	v_cvt_f32_i32_e32 v40, v26
	v_cvt_f32_i32_e32 v37, v27
	v_cvt_f32_i32_e32 v38, v28
	v_cvt_f32_i32_e32 v27, v29
	v_cvt_f32_i32_e32 v28, v30
	v_cvt_f32_i32_e32 v25, v31
	v_cvt_f32_i32_e32 v26, v32
	v_cvt_f32_i32_e32 v32, v17
	v_cvt_f32_i32_e32 v41, v18
	v_cvt_f32_i32_e32 v31, v19
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
	v_cvt_f32_i32_e32 v13, v4
	v_cvt_f32_i32_e32 v4, v8
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x19                           ; 104-byte Folded Spill
	scratch_store_b32 off, v41, off offset:720
	scratch_store_b32 off, v32, off offset:716
	scratch_store_b32 off, v2, off offset:712
	scratch_store_b32 off, v1, off offset:708
	scratch_store_b32 off, v31, off offset:704
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
	scratch_store_b32 off, v12, off offset:552
	scratch_store_b32 off, v11, off offset:548
	scratch_store_b32 off, v28, off offset:544
	scratch_store_b32 off, v27, off offset:540
	scratch_store_b32 off, v10, off offset:536
	scratch_store_b32 off, v9, off offset:532
	scratch_store_b32 off, v26, off offset:528
	scratch_store_b32 off, v25, off offset:524
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v9, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	v_perm_b32 v1, v34, v36, 0xc0c0004
	v_perm_b32 v0, v0, v35, 0xc0c0004
	v_perm_b32 v2, v254, v211, 0xc0c0004
	v_perm_b32 v3, v253, v255, 0xc0c0004
	s_mov_b32 s12, 0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v4, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v20, v0, 16, v1
	v_perm_b32 v0, v251, v252, 0xc0c0004
	v_perm_b32 v1, v249, v250, 0xc0c0004
	v_lshl_or_b32 v19, v3, 16, v2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v2, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	v_lshl_or_b32 v18, v1, 16, v0
	v_perm_b32 v0, v245, v247, 0xc0c0004
	v_perm_b32 v1, v246, v248, 0xc0c0004
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_lshl_or_b32 v17, v1, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:48
	scratch_load_b32 v1, off, off offset:44
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s19, s12
	v_dual_mov_b32 v9, s12 :: v_dual_mov_b32 v10, s13
	v_dual_mov_b32 v11, s14 :: v_dual_mov_b32 v12, s15
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v3, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v13, s16 :: v_dual_mov_b32 v14, s17
	v_dual_mov_b32 v15, s18 :: v_dual_mov_b32 v16, s19
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v4, s10, v4
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v2, s10, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v4, v4
	ds_load_u8 v2, v2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, s10, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s10, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s10, v1
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
	v_add_nc_u32_e32 v2, s10, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v3, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s10, v3
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
	v_add_nc_u32_e32 v0, s10, v0
	scratch_load_b32 v3, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v4, s10, v4
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, s10, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, s10, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v4, v4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s10, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	ds_load_u8 v1, v1
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s10, v1
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
	v_add_nc_u32_e32 v0, s10, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s10, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s10, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:8  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s10, v1
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
	v_add_nc_u32_e32 v2, s10, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s10, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s10, v1
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
	v_add_nc_u32_e32 v2, s10, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v3, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s10, v3
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
	v_add_nc_u32_e32 v0, s10, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v3, v238, v237, 0xc0c0004
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s10, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s10, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s10, v1
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
	v_add_nc_u32_e32 v2, s10, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s10, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s10, v1
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
	v_perm_b32 v0, v236, v208, 0xc0c0004
	v_perm_b32 v1, v206, v204, 0xc0c0004
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
	v_add_nc_u32_e32 v22, s10, v22
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v21, s10, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v23, s10, v23
	v_add_nc_u32_e32 v24, s10, v24
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v28, s10, v28
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v26, s10, v26
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, s10, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	ds_load_u8 v24, v24
	ds_load_u8 v28, v28
	ds_load_u8 v26, v26
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v25, s10, v25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v29, s10, v29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s10, v27
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	ds_load_u8 v29, v29
	ds_load_u8 v27, v27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s10, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v22, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s10, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v23, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s10, v23
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
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v22, s10, v22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s10, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s10, v21
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
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s10, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s10, v21
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
	v_add_nc_u32_e32 v25, s10, v25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s10, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s10, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v26, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s10, v26
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v26, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v27, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v27, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s10, v27
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
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v26, s10, v26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s10, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v26, v26
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s10, v25
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
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s10, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v25, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s10, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v29, v25, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v29, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v25, v25, 16, v0
	v_perm_b32 v0, v212, v210, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[233:240], v[25:28], v[17:20], v[233:240] neg_lo:[1,1,0]
	v_perm_b32 v17, v209, v207, 0xc0c0004
	v_perm_b32 v18, v196, v194, 0xc0c0004
	v_perm_b32 v19, v193, v192, 0xc0c0004
	v_lshl_or_b32 v20, v17, 16, v0
	v_perm_b32 v0, v187, v186, 0xc0c0004
	v_perm_b32 v17, v185, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v19, v19, 16, v18
	v_lshl_or_b32 v18, v17, 16, v0
	v_perm_b32 v0, v179, v178, 0xc0c0004
	v_perm_b32 v17, v177, v176, 0xc0c0004
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
	v_perm_b32 v17, v202, v205, 0xc0c0004
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
	v_add_nc_u32_e32 v29, s10, v29
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v29, v29
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v22, s10, v22
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v21, s10, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v23, s10, v23
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v24, s10, v24
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v26, s10, v26
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	ds_load_u8 v24, v24
	ds_load_u8 v26, v26
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v25, s10, v25
	v_add_nc_u32_e32 v28, s10, v28
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s10, v0
	v_add_nc_u32_e32 v27, s10, v27
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
	v_add_nc_u32_e32 v21, s10, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v21, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v22, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s10, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v22, v23, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v23, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s10, v23
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
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v22, s10, v22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s10, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s10, v21
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
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s10, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s10, v21
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
	v_add_nc_u32_e32 v25, s10, v25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s10, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s10, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v26, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s10, v26
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v26, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v27, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v27, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s10, v27
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
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v26, s10, v26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s10, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v26, v26
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s10, v25
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
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s10, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v25, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s10, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v29, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v25, v25, 16, v0
	v_perm_b32 v0, v121, v72, 0xc0c0004
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
	scratch_load_b32 v17, off, off offset:668
	scratch_load_b32 v29, off, off offset:672
	v_perm_b32 v0, v52, v51, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v29, v17, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v29, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v17, v17, 16, v0
	v_perm_b32 v0, v180, v181, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[241:248], v[21:24], v[17:20], v[241:248] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v17, v182, v183, 0xc0c0004
	v_perm_b32 v18, v71, v73, 0xc0c0004
	v_perm_b32 v19, v74, v123, 0xc0c0004
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
	v_add_nc_u32_e32 v29, s10, v29
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v29, v29
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v22, s10, v22
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v21, s10, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v23, s10, v23
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v24, s10, v24
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v26, s10, v26
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	ds_load_u8 v24, v24
	ds_load_u8 v26, v26
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v25, s10, v25
	v_add_nc_u32_e32 v28, s10, v28
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s10, v0
	v_add_nc_u32_e32 v27, s10, v27
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
	v_add_nc_u32_e32 v21, s10, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v21, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v22, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s10, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v22, v23, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v23, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s10, v23
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
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v22, s10, v22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s10, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s10, v21
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
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s10, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s10, v21
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
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v25, s10, v25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s10, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s10, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v26, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s10, v26
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v26, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v27, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v27, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s10, v27
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
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v26, s10, v26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s10, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v26, v26
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s10, v25
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
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s10, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v25, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s10, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v29, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v25, 16, v0
	v_wmma_i32_16x16x16_iu8 v[233:240], v[25:28], v[17:20], v[233:240] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:660
	scratch_load_b32 v17, off, off offset:664
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:652
	scratch_load_b32 v18, off, off offset:656
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:620
	scratch_load_b32 v19, off, off offset:624
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:604
	scratch_load_b32 v20, off, off offset:608
	s_waitcnt vmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_lshl_or_b32 v20, v17, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:588
	scratch_load_b32 v17, off, off offset:600
	v_lshl_or_b32 v19, v19, 16, v18
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:580
	scratch_load_b32 v18, off, off offset:584
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v17, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:572
	scratch_load_b32 v17, off, off offset:576
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:556
	scratch_load_b32 v29, off, off offset:560
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v29, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v17, v17, 16, v0
	v_cvt_f32_i32_e32 v0, v1
	v_cvt_f32_i32_e32 v1, v2
	v_wmma_i32_16x16x16_iu8 v[241:248], v[21:24], v[17:20], v[241:248] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v25, v233
	v_cvt_f32_i32_e32 v26, v234
	v_cvt_f32_i32_e32 v21, v235
	v_cvt_f32_i32_e32 v22, v236
	v_cvt_f32_i32_e32 v19, v237
	v_cvt_f32_i32_e32 v20, v238
	v_cvt_f32_i32_e32 v17, v239
	v_cvt_f32_i32_e32 v18, v240
	v_cvt_f32_i32_e32 v44, v241
	v_cvt_f32_i32_e32 v43, v242
	v_cvt_f32_i32_e32 v42, v243
	v_cvt_f32_i32_e32 v41, v244
	v_cvt_f32_i32_e32 v32, v245
	v_cvt_f32_i32_e32 v31, v246
	v_cvt_f32_i32_e32 v29, v247
	v_cvt_f32_i32_e32 v30, v248
	v_cvt_f32_i32_e32 v27, v9
	v_cvt_f32_i32_e32 v28, v10
	v_cvt_f32_i32_e32 v23, v11
	v_cvt_f32_i32_e32 v24, v12
	v_cvt_f32_i32_e32 v11, v13
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v9, v15
	v_cvt_f32_i32_e32 v10, v16
	v_cvt_f32_i32_e32 v13, v3
	v_cvt_f32_i32_e32 v14, v4
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v4, v8
	scratch_store_b32 off, v0, off offset:508 ; 4-byte Folded Spill
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 25
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s26, s0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v44, off offset:764
	scratch_store_b32 off, v43, off offset:760
	scratch_store_b32 off, v1, off offset:756
	scratch_store_b32 off, v42, off offset:752
	scratch_store_b32 off, v41, off offset:748
	scratch_store_b32 off, v14, off offset:744
	scratch_store_b32 off, v13, off offset:740
	scratch_store_b32 off, v32, off offset:736
	scratch_store_b32 off, v31, off offset:732
	scratch_store_b32 off, v6, off offset:728
	scratch_store_b32 off, v5, off offset:724
	scratch_store_b32 off, v30, off offset:696
	scratch_store_b32 off, v29, off offset:692
	scratch_store_b32 off, v4, off offset:688
	scratch_store_b32 off, v3, off offset:684
	scratch_store_b32 off, v28, off offset:680
	scratch_store_b32 off, v27, off offset:676
	scratch_store_b32 off, v26, off offset:672
	scratch_store_b32 off, v25, off offset:668
	scratch_store_b32 off, v24, off offset:664
	scratch_store_b32 off, v23, off offset:660
	scratch_store_b32 off, v22, off offset:656
	scratch_store_b32 off, v21, off offset:652
	scratch_store_b32 off, v12, off offset:624
	scratch_store_b32 off, v11, off offset:620
	scratch_store_b32 off, v20, off offset:608
	scratch_store_b32 off, v19, off offset:604
	scratch_store_b32 off, v10, off offset:600
	scratch_store_b32 off, v9, off offset:588
	scratch_store_b32 off, v18, off offset:584
	scratch_store_b32 off, v40, off offset:580
	scratch_store_b32 off, v39, off offset:576
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v17, off offset:572
	scratch_store_b32 off, v38, off offset:560
	scratch_store_b32 off, v37, off offset:556
	s_ashr_i32 s0, s0, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v0, v158, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_mov_b32 v217, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v218, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v51, v0, s[8:11], 0 offen
	v_add_lshl_u32 v0, v157, s0, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s35
	v_mov_b32_e32 v236, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v237, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_mov_b32_e32 v212, 0
	v_mov_b32_e32 v182, 0
	v_mov_b32_e32 v222, 0
	v_mov_b32_e32 v178, 0
	buffer_load_u16 v56, v0, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v0, v156, s0, 1
	v_mov_b32_e32 v198, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v235, 0
	v_mov_b32_e32 v190, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_mov_b32_e32 v214, 0
	v_mov_b32_e32 v224, 0
	v_mov_b32_e32 v216, 0
	v_mov_b32_e32 v232, 0
	buffer_load_u16 v54, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, v153, s0, 1
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v229, 0
	v_mov_b32_e32 v220, 0
	v_mov_b32_e32 v200, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_mov_b32_e32 v204, 0
	v_mov_b32_e32 v206, 0
	v_mov_b32_e32 v194, 0
	v_mov_b32_e32 v192, 0
	buffer_load_u16 v55, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, v154, s0, 1
	v_mov_b32_e32 v219, 0
	s_mov_b32 s12, 0
	v_mov_b32_e32 v189, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v213, 0 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_mov_b32_e32 v223, 0
	v_mov_b32_e32 v215, 0
	v_mov_b32_e32 v221, 0
	v_mov_b32_e32 v199, 0
	buffer_load_u16 v52, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, v155, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v53, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, v141, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v209, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, v142, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v208, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, v143, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v202, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, v144, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v201, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, v125, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v193, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, v126, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v191, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, v127, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v186, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, v128, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v185, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, v129, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:772 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v130, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:768 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v131, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v195, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, v132, s0, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s0, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v177, v0, s[24:27], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v0, s0, v152, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v66, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, s0, v148, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v65, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, s0, v149, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v62, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, s0, v150, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v64, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, s0, v145, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v61, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, s0, v151, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v63, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, s0, v146, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v203, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, s0, v147, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v205, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, s0, v133, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v196, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, s0, v134, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v197, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, s0, v135, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v187, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, s0, v136, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v188, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, s0, v137, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v233, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, s0, v138, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v181, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, s0, v139, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v207, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, s0, v140, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v179, v0, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v0, s47, v122
	ds_load_u8_d16 v28, v0
	ds_load_u8_d16 v228, v0 offset:32
	ds_load_u8_d16 v1, v0 offset:64
	ds_load_u8_d16 v184, v0 offset:2976
	ds_load_u8_d16 v231, v0 offset:3040
	ds_load_u8_d16 v67, v0 offset:3104
	ds_load_u8_d16 v68, v0 offset:3168
	ds_load_u8_d16 v69, v0 offset:3232
	ds_load_u8_d16 v70, v0 offset:3296
	ds_load_u8_d16 v71, v0 offset:3360
	ds_load_u8_d16 v72, v0 offset:3424
	ds_load_u8_d16 v73, v0 offset:3488
	ds_load_u8_d16 v74, v0 offset:3552
	ds_load_u8_d16 v123, v0 offset:3616
	ds_load_u8_d16 v239, v0 offset:3680
	ds_load_u8_d16 v121, v0 offset:3744
	ds_load_u8_d16 v238, v0 offset:3808
	ds_load_u8_d16 v242, v0 offset:3872
	ds_load_u8_d16 v246, v0 offset:3936
	ds_load_u8_d16 v240, v0 offset:4000
	ds_load_u8_d16 v243, v0 offset:4064
	s_waitcnt lgkmcnt(18)
	scratch_store_b32 off, v1, off offset:1080 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:128
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1084 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:192
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1088 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:256
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1092 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:320
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1096 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:384
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1100 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:448
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1104 ; 4-byte Folded Spill
	ds_load_u8_d16 v58, v0 offset:512
	ds_load_u8_d16 v60, v0 offset:576
	ds_load_u8_d16 v1, v0 offset:640
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1108 ; 4-byte Folded Spill
	ds_load_u8_d16 v57, v0 offset:704
	ds_load_u8_d16 v250, v0 offset:768
	ds_load_u8_d16 v226, v0 offset:832
	ds_load_u8_d16 v59, v0 offset:896
	ds_load_u8_d16 v43, v0 offset:960
	ds_load_u8_d16 v1, v0 offset:1024
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1016 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1088
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1020 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1152
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1024 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1216
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1028 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1280
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1032 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1344
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1036 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1408
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1040 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1472
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1044 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1536
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1048 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1600
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1052 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1664
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1056 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1728
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1060 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1792
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1064 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1856
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1068 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1920
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1072 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1984
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1076 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2048
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:952 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2112
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:956 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2176
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:960 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2240
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:964 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2304
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:968 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2368
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:972 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2432
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:976 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2496
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:980 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2560
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:984 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2624
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:988 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2688
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:992 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2752
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:996 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2816
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1000 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2880
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1004 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2944
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1008 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3008
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:1012 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3072
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:888 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3136
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:892 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3200
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:896 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3264
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:900 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3328
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:904 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3392
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:908 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3456
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:912 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3520
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:916 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3584
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:920 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:924 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:928 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:932 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3840
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:936 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:940 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:3968
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:944 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:4032
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:948 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:96
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:820 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:160
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:812 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:224
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:816 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:288
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:844 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:352
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:852 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:416
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:836 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:480
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:848 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:544
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:860 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:608
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:868 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:672
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:856 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:736
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:864 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:800
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:876 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:864
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:884 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:928
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:872 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:992
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:880 ; 4-byte Folded Spill
	ds_load_u8_d16 v183, v0 offset:1056
	ds_load_u8_d16 v225, v0 offset:1120
	ds_load_u8_d16 v211, v0 offset:1184
	ds_load_u8_d16 v227, v0 offset:1248
	ds_load_u8_d16 v1, v0 offset:1312
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:784 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1376
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:792 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1440
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:780 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1504
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:788 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1568
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:800 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1632
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:808 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:796 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:804 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:828 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1888
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:840 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:1952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:824 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v0 offset:2016
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:832 ; 4-byte Folded Spill
	ds_load_u8_d16 v244, v0 offset:2080
	ds_load_u8_d16 v247, v0 offset:2144
	ds_load_u8_d16 v241, v0 offset:2208
	ds_load_u8_d16 v245, v0 offset:2272
	ds_load_u8_d16 v249, v0 offset:2336
	ds_load_u8_d16 v252, v0 offset:2400
	ds_load_u8_d16 v248, v0 offset:2464
	ds_load_u8_d16 v251, v0 offset:2528
	ds_load_u8_d16 v254, v0 offset:2592
	ds_load_u8_d16 v176, v0 offset:2656
	ds_load_u8_d16 v253, v0 offset:2720
	ds_load_u8_d16 v255, v0 offset:2784
	ds_load_u8_d16 v230, v0 offset:2848
	ds_load_u8_d16 v1, v0 offset:2912
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v0, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:776 ; 4-byte Folded Spill
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	v_perm_b32 v0, v250, v226, 0xc0c0004
	v_perm_b32 v1, v59, v43, 0xc0c0004
	scratch_load_b32 v3, off, off offset:1108 ; 4-byte Folded Reload
	v_perm_b32 v2, v58, v60, 0xc0c0004
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	v_lshl_or_b32 v20, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1092
	scratch_load_b32 v1, off, off offset:1096
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_mov_b16_e64 v178.l, v28.l
	v_dual_mov_b32 v9, s12 :: v_dual_mov_b32 v10, s13
	v_dual_mov_b32 v11, s14 :: v_dual_mov_b32 v12, s15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v4, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v13, s16 :: v_dual_mov_b32 v14, s17
	v_dual_mov_b32 v15, s18 :: v_dual_mov_b32 v16, s19
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v48, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt vmcnt(4)
	v_perm_b32 v3, v3, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v3, 16, v2
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1100
	scratch_load_b32 v2, off, off offset:1104
	scratch_load_b32 v3, off, off offset:32
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v4, s46, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v48, s46, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	s_waitcnt vmcnt(1)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s46, v3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v18, v1, 16, v0
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1080
	scratch_load_b32 v1, off, off offset:1084
	scratch_load_b32 v2, off, off offset:1088
	ds_load_u8 v3, v3
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v28, v0, 0xc0c0004
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
	v_add_nc_u32_e32 v2, s46, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
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
	v_add_nc_u32_e32 v2, s46, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s46, v3
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
	v_add_nc_u32_e32 v0, s46, v0
	scratch_load_b32 v3, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v4, s46, v4
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, s46, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s46, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v1, v1
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
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
	v_add_nc_u32_e32 v0, s46, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s46, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:8  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
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
	v_add_nc_u32_e32 v2, s46, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
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
	v_add_nc_u32_e32 v2, s46, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s46, v3
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
	v_add_nc_u32_e32 v0, s46, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s46, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
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
	v_add_nc_u32_e32 v2, s46, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:876
	scratch_load_b32 v1, off, off offset:884
	v_wmma_i32_16x16x16_iu8 v[25:32], v[39:42], v[17:20], v[9:16] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:872
	scratch_load_b32 v2, off, off offset:880
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:860
	scratch_load_b32 v3, off, off offset:868
	v_lshl_or_b32 v47, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:844
	scratch_load_b32 v1, off, off offset:852
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:856
	scratch_load_b32 v4, off, off offset:864
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:836
	scratch_load_b32 v2, off, off offset:848
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v1, 16, v0
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:820
	scratch_load_b32 v1, off, off offset:812
	scratch_load_b32 v2, off, off offset:816
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v228, v0, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v44, v1, 16, v0
	v_wmma_i32_16x16x16_iu8 v[1:8], v[35:38], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[35:38], v[44:47], v[9:16] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1064
	scratch_load_b32 v35, off, off offset:1068
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
	scratch_load_b32 v35, off, off offset:1072
	scratch_load_b32 v36, off, off offset:1076
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v40, s46, v40
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v41, s46, v41
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v42, s46, v42
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v45, s46, v45
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v44, s46, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	ds_load_u8 v45, v45
	ds_load_u8 v44, v44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v46, s46, v46
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v47, s46, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	ds_load_u8 v47, v47
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v36, off, off offset:1048
	scratch_load_b32 v37, off, off offset:1052
	s_waitcnt vmcnt(0)
	v_perm_b32 v36, v36, v37, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:1056
	scratch_load_b32 v38, off, off offset:1060
	s_waitcnt vmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	v_lshl_or_b32 v38, v35, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1032
	scratch_load_b32 v35, off, off offset:1036
	v_lshl_or_b32 v37, v37, 16, v36
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:1040
	scratch_load_b32 v36, off, off offset:1044
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v35, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1016
	scratch_load_b32 v35, off, off offset:1020
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:1024
	scratch_load_b32 v39, off, off offset:1028
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v35, v35, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s46, v39
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s46, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v39, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s46, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v40, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s46, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v40, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v41, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s46, v41
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
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v40, s46, v40
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s46, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v40, v40
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v39, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s46, v39
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
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s46, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s46, v39
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
	v_add_nc_u32_e32 v44, s46, v44
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s46, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s46, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s46, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s46, v46
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
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s46, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s46, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v45, v45
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s46, v44
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
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s46, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s46, v44
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
	scratch_load_b32 v0, off, off offset:828
	scratch_load_b32 v35, off, off offset:840
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v48, s46, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:824
	scratch_load_b32 v36, off, off offset:832
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v36, off, off offset:800
	scratch_load_b32 v37, off, off offset:808
	s_waitcnt vmcnt(0)
	v_perm_b32 v36, v36, v37, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:796
	scratch_load_b32 v38, off, off offset:804
	s_waitcnt vmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	v_lshl_or_b32 v38, v35, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:784
	scratch_load_b32 v35, off, off offset:792
	v_lshl_or_b32 v37, v37, 16, v36
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:780
	scratch_load_b32 v36, off, off offset:788
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v36, v35, 16, v0
	v_perm_b32 v0, v183, v225, 0xc0c0004
	v_perm_b32 v35, v211, v227, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[39:42], v[35:38], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[44:47], v[35:38], v[9:16] neg_lo:[1,1,0]
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1000
	scratch_load_b32 v35, off, off offset:1004
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
	scratch_load_b32 v35, off, off offset:1008
	scratch_load_b32 v36, off, off offset:1012
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v40, s46, v40
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v41, s46, v41
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v42, s46, v42
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v45, s46, v45
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v44, s46, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	ds_load_u8 v45, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v47, s46, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v46, s46, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v46, v46
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v36, off, off offset:984
	scratch_load_b32 v37, off, off offset:988
	s_waitcnt vmcnt(0)
	v_perm_b32 v36, v36, v37, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:992
	scratch_load_b32 v38, off, off offset:996
	s_waitcnt vmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	v_lshl_or_b32 v38, v35, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:968
	scratch_load_b32 v35, off, off offset:972
	v_lshl_or_b32 v37, v37, 16, v36
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:976
	scratch_load_b32 v36, off, off offset:980
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v35, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:952
	scratch_load_b32 v35, off, off offset:956
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:960
	scratch_load_b32 v39, off, off offset:964
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v35, v35, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s46, v39
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s46, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v39, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s46, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v40, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s46, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v40, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v41, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s46, v41
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
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v40, s46, v40
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s46, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v40, v40
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v39, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s46, v39
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
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s46, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s46, v39
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
	v_add_nc_u32_e32 v44, s46, v44
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s46, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s46, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s46, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s46, v46
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
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s46, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s46, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v45, v45
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s46, v44
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
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s46, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s46, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v48, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v48, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v44, v44, 16, v0
	scratch_load_b32 v0, off, off offset:776 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[25:32], v[44:47], v[35:38], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v35, v184, v231, 0xc0c0004
	v_perm_b32 v36, v254, v176, 0xc0c0004
	v_perm_b32 v37, v253, v255, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v37, 16, v36
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v48, s46, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v230, v0, 0xc0c0004
	ds_load_u8 v48, v48
	v_lshl_or_b32 v38, v35, 16, v0
	v_perm_b32 v0, v249, v252, 0xc0c0004
	v_perm_b32 v35, v248, v251, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v36, v35, 16, v0
	v_perm_b32 v0, v244, v247, 0xc0c0004
	v_perm_b32 v35, v241, v245, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[39:42], v[35:38], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[44:47], v[35:38], v[9:16] neg_lo:[1,1,0]
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v0, off, off offset:936
	scratch_load_b32 v35, off, off offset:940
	scratch_load_b32 v40, off, off offset:248
	scratch_load_b32 v41, off, off offset:224
	scratch_load_b32 v42, off, off offset:228
	scratch_load_b32 v45, off, off offset:504
	scratch_load_b32 v47, off, off offset:484
	scratch_load_b32 v44, off, off offset:196
	scratch_load_b32 v46, off, off offset:480
	s_waitcnt vmcnt(7)
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:944
	scratch_load_b32 v36, off, off offset:948
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v40, s46, v40
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v41, s46, v41
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v42, s46, v42
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v45, s46, v45
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v44, s46, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	ds_load_u8 v45, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v47, s46, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v46, s46, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v46, v46
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v36, off, off offset:920
	scratch_load_b32 v37, off, off offset:924
	s_waitcnt vmcnt(0)
	v_perm_b32 v36, v36, v37, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:928
	scratch_load_b32 v38, off, off offset:932
	s_waitcnt vmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	v_lshl_or_b32 v38, v35, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:904
	scratch_load_b32 v35, off, off offset:908
	v_lshl_or_b32 v37, v37, 16, v36
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:912
	scratch_load_b32 v36, off, off offset:916
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v35, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:888
	scratch_load_b32 v35, off, off offset:892
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v35, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:896
	scratch_load_b32 v39, off, off offset:900
	s_waitcnt vmcnt(0)
	v_perm_b32 v35, v35, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v35, v35, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s46, v39
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s46, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v39, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s46, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v40, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s46, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v40, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v41, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s46, v41
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
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v40, s46, v40
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s46, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v40, v40
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v39, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s46, v39
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
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s46, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s46, v39
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
	v_cvt_f32_i32_e32 v210, v3
	v_cvt_f32_i32_e32 v212, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v237, v5
	v_cvt_f32_i32_e32 v236, v6
	v_cvt_f32_i32_e32 v182, v7
	v_cvt_f32_i32_e32 v235, v8
	v_cvt_f32_i32_e32 v217, v1
	v_cvt_f32_i32_e32 v218, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v44, s46, v44
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s46, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s46, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s46, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s46, v46
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
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s46, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s46, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v45, v45
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s46, v44
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
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s46, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s46, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v48, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v44, v44, 16, v0
	v_perm_b32 v0, v242, v246, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[44:47], v[35:38], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v35, v240, v243, 0xc0c0004
	v_perm_b32 v36, v123, v239, 0xc0c0004
	v_perm_b32 v37, v121, v238, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v222, v25
	v_lshl_or_b32 v38, v35, 16, v0
	v_perm_b32 v0, v71, v72, 0xc0c0004
	v_perm_b32 v35, v73, v74, 0xc0c0004
	v_lshl_or_b32 v37, v37, 16, v36
	v_cvt_f32_i32_e32 v229, v26
	v_cvt_f32_i32_e32 v219, v27
	v_cvt_f32_i32_e32 v180, v28
	v_lshl_or_b32 v36, v35, 16, v0
	v_perm_b32 v0, v67, v68, 0xc0c0004
	v_perm_b32 v35, v69, v70, 0xc0c0004
	v_mov_b16_e64 v28.l, v178.l
	v_cvt_f32_i32_e32 v178, v29
	v_cvt_f32_i32_e32 v198, v30
	v_cvt_f32_i32_e32 v189, v31
	v_lshl_or_b32 v35, v35, 16, v0
	v_cvt_f32_i32_e32 v190, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[39:42], v[35:38], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[44:47], v[35:38], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v213, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v214, v18
	v_cvt_f32_i32_e32 v215, v19
	v_cvt_f32_i32_e32 v216, v20
	v_cvt_f32_i32_e32 v223, v21
	v_cvt_f32_i32_e32 v224, v22
	v_cvt_f32_i32_e32 v232, v23
	v_cvt_f32_i32_e32 v234, v24
	v_cvt_f32_i32_e32 v220, v9
	v_cvt_f32_i32_e32 v221, v10
	v_cvt_f32_i32_e32 v204, v11
	v_cvt_f32_i32_e32 v206, v12
	v_cvt_f32_i32_e32 v199, v13
	v_cvt_f32_i32_e32 v200, v14
	v_cvt_f32_i32_e32 v194, v15
	v_cvt_f32_i32_e32 v192, v16
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v231, off offset:1132
	scratch_store_b32 off, v230, off offset:1128
	scratch_store_b32 off, v184, off offset:1124
	v_mov_b16_e64 v184.l, v225.l
	v_mov_b16_e64 v225.l, v228.l
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v227, off offset:1120
	scratch_store_b32 off, v211, off offset:1116
	scratch_store_b32 off, v176, off offset:1112
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v24, 0
	v_mov_b32_e32 v26, 0
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v4, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v227.l, v233.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v211.l, v181.l
	v_perm_b32 v25, v250, v226, 0xc0c0004
	v_perm_b32 v26, v59, v43, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v16, s45, v33
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v8, off, off offset:28
	scratch_load_b32 v9, off, off offset:24
	scratch_load_b32 v10, off, off offset:20
	scratch_load_b32 v11, off, off offset:16
	scratch_load_b32 v12, off, off offset:12
	scratch_load_b32 v13, off, off offset:8
	scratch_load_b32 v14, off, off offset:4
	scratch_load_b32 v15, off, off
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v44, v26, 16, v25
	v_perm_b32 v25, v58, v60, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v1, off, off offset:352 ; 4-byte Folded Reload
	scratch_store_b32 off, v66, off offset:352 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v26, off, off offset:1108
	scratch_load_b32 v3, off, off offset:48
	scratch_load_b32 v4, off, off offset:44
	scratch_load_b32 v5, off, off offset:40
	scratch_load_b32 v6, off, off offset:36
	scratch_load_b32 v7, off, off offset:32
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:504 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v8, s45, v8
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v9, s45, v9
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v10, s45, v10
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v11, s45, v11
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v12, s45, v12
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v13, s45, v13
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v14, s45, v14
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v15, s45, v15
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(6)
	v_perm_b32 v26, v26, v57, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:1064
	scratch_load_b32 v57, off, off offset:1068
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v3, s45, v3
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v4, s45, v4
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v5, s45, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v43, v26, 16, v25
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:1092
	scratch_load_b32 v26, off, off offset:1096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v7, s45, v7
	v_add_nc_u32_e32 v6, s45, v6
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v3, v3
	ds_load_u8 v4, v4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:500 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(3)
	v_perm_b32 v33, v33, v57, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:1072
	scratch_load_b32 v58, off, off offset:1076
	s_waitcnt vmcnt(3)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:1100
	scratch_load_b32 v27, off, off offset:1104
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:496 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(3)
	v_perm_b32 v60, v57, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v60, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:1048
	scratch_load_b32 v57, off, off offset:1052
	s_waitcnt vmcnt(3)
	v_perm_b32 v26, v26, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v26, 16, v25
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v25, off, off offset:1080
	scratch_load_b32 v26, off, off offset:1084
	scratch_load_b32 v27, off, off offset:1088
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:1136 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(4)
	v_perm_b32 v33, v33, v57, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:1056
	scratch_load_b32 v58, off, off offset:1060
	s_waitcnt vmcnt(5)
	v_perm_b32 v25, v28, v25, 0xc0c0004
	s_waitcnt vmcnt(3)
	v_perm_b32 v26, v26, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(1)
	v_perm_b32 v59, v57, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v59, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:1032
	scratch_load_b32 v57, off, off offset:1036
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:484 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(1)
	v_perm_b32 v33, v33, v57, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:1040
	scratch_load_b32 v58, off, off offset:1044
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(1)
	v_perm_b32 v58, v57, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:1016
	scratch_load_b32 v57, off, off offset:1020
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:492 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:472 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(1)
	v_perm_b32 v33, v33, v57, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:1024
	scratch_load_b32 v226, off, off offset:1028
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s45, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt vmcnt(0)
	v_perm_b32 v57, v57, v226, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v57, v57, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:476 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:1140 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:1144 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:1148 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:1152 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:376 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v73, off offset:380
	scratch_store_b32 off, v74, off offset:376
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s45, v0
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v74, s45, v0
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v207, off offset:436
	scratch_store_b32 off, v61, off offset:372
	scratch_store_b32 off, v62, off offset:368
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v61, s45, v0
	scratch_load_b32 v0, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v62, s45, v0
	scratch_load_b32 v0, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v207, s45, v0
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	scratch_store_b32 off, v65, off offset:356 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v65, s45, v1
	scratch_load_b32 v1, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v176, s45, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s45, v1
	scratch_load_b32 v1, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v1
	scratch_load_b32 v1, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v228, s45, v1
	scratch_load_b32 v1, off, off offset:336 ; 4-byte Folded Reload
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:344
	scratch_store_b32 off, v255, off offset:340
	scratch_store_b32 off, v251, off offset:336
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v255, s45, v1
	scratch_load_b32 v1, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v251, s45, v1
	scratch_load_b32 v1, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v1
	scratch_load_b32 v1, off, off offset:324 ; 4-byte Folded Reload
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v1
	scratch_load_b32 v1, off, off offset:320 ; 4-byte Folded Reload
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v1
	scratch_load_b32 v1, off, off offset:316 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v179, off offset:432
	scratch_store_b32 off, v0, off offset:320
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v1
	scratch_load_b32 v1, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v231, s45, v1
	scratch_load_b32 v1, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s45, v1
	scratch_load_b32 v1, off, off offset:304 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v254, off offset:308
	scratch_store_b32 off, v121, off offset:304
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v254, s45, v1
	scratch_load_b32 v1, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v121, s45, v1
	scratch_load_b32 v1, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s45, v1
	scratch_load_b32 v1, off, off offset:292 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v72, off offset:296
	scratch_store_b32 off, v253, off offset:292
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v72, s45, v1
	scratch_load_b32 v1, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v253, s45, v1
	scratch_load_b32 v1, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v230, s45, v1
	scratch_load_b32 v1, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s45, v1
	scratch_load_b32 v1, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s45, v1
	scratch_load_b32 v1, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s45, v1
	scratch_load_b32 v1, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v24, s45, v1
	scratch_load_b32 v1, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	ds_load_u8 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s45, v1
	scratch_load_b32 v1, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s45, v1
	scratch_load_b32 v1, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v19, s45, v1
	scratch_load_b32 v1, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s45, v1
	scratch_load_b32 v1, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s45, v1
	scratch_load_b32 v1, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s45, v1
	scratch_load_b32 v1, off, off offset:240 ; 4-byte Folded Reload
	scratch_store_b32 off, v64, off offset:240 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v40, v40
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v48, v40, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v233, s45, v1
	scratch_load_b32 v1, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v64, s45, v1
	scratch_load_b32 v1, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s45, v1
	scratch_load_b32 v1, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s45, v1
	scratch_load_b32 v1, off, off offset:224 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v252, off offset:228
	scratch_store_b32 off, v70, off offset:224
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v252, s45, v1
	scratch_load_b32 v1, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s45, v1
	scratch_load_b32 v1, off, off offset:216 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:316
	scratch_store_b32 off, v238, off offset:216
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v1
	scratch_load_b32 v1, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v238, s45, v1
	scratch_load_b32 v1, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s45, v1
	scratch_load_b32 v1, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s45, v1
	scratch_load_b32 v1, off, off offset:200 ; 4-byte Folded Reload
	scratch_store_b32 off, v123, off offset:200 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s45, v1
	scratch_load_b32 v1, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, s45, v1
	scratch_load_b32 v1, off, off offset:192 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v240, off offset:196
	scratch_store_b32 off, v248, off offset:192
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v240, s45, v1
	scratch_load_b32 v1, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v248, s45, v1
	scratch_load_b32 v1, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v36, s45, v1
	scratch_load_b32 v1, off, off offset:180 ; 4-byte Folded Reload
	scratch_store_b32 off, v243, off offset:180 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v181, s45, v1
	scratch_load_b32 v1, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v243, s45, v1
	scratch_load_b32 v1, off, off offset:172 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v68, off offset:176
	scratch_store_b32 off, v53, off offset:172
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s45, v1
	scratch_load_b32 v1, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, s45, v1
	scratch_load_b32 v1, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, s45, v1
	scratch_load_b32 v1, off, off offset:160 ; 4-byte Folded Reload
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v195, off offset:444
	scratch_store_b32 off, v67, off offset:164
	scratch_store_b32 off, v239, off offset:160
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v53, v53
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v35, v53, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s45, v1
	scratch_load_b32 v1, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v239, s45, v1
	scratch_load_b32 v1, off, off offset:152 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v177, off offset:440
	scratch_store_b32 off, v242, off offset:152
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s45, v1
	scratch_load_b32 v1, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v242, s45, v1
	scratch_load_b32 v1, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v195, s45, v1
	scratch_load_b32 v1, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v177, s45, v1
	scratch_load_b32 v1, off, off offset:136 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v56, off offset:140
	scratch_store_b32 off, v241, off offset:136
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v56, s45, v1
	scratch_load_b32 v1, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v241, s45, v1
	scratch_load_b32 v1, off, off offset:128 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v54, off offset:132
	scratch_store_b32 off, v55, off offset:128
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v54, s45, v1
	scratch_load_b32 v1, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v55, s45, v1
	scratch_load_b32 v1, off, off offset:120 ; 4-byte Folded Reload
	scratch_store_b32 off, v69, off offset:120 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, s45, v1
	scratch_load_b32 v1, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s45, v1
	scratch_load_b32 v1, off, off offset:112 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v63, off offset:116
	scratch_store_b32 off, v245, off offset:112
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v63, s45, v1
	scratch_load_b32 v1, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v245, s45, v1
	scratch_load_b32 v1, off, off offset:104 ; 4-byte Folded Reload
	scratch_store_b32 off, v247, off offset:104 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v63
	ds_load_u8 v63, v245
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v63, v33, 0xc0c0004
	ds_load_u8 v32, v32
	ds_load_u8 v63, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v63, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v32, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v31, s45, v1
	scratch_load_b32 v1, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v247, s45, v1
	scratch_load_b32 v1, off, off offset:96 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v249, off offset:100
	scratch_store_b32 off, v71, off offset:96
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v249, s45, v1
	scratch_load_b32 v1, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s45, v1
	scratch_load_b32 v1, off, off offset:88 ; 4-byte Folded Reload
	scratch_store_b32 off, v50, off offset:88 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v249
	ds_load_u8 v63, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v63, v33, 0xc0c0004
	ds_load_u8 v31, v31
	ds_load_u8 v63, v247
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v63, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v31, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v30, s45, v1
	scratch_load_b32 v1, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s45, v1
	scratch_load_b32 v1, off, off offset:80 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v244, off offset:84
	scratch_store_b32 off, v52, off offset:80
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v30, v30
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v50, v30, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v244, s45, v1
	scratch_load_b32 v1, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v52, s45, v1
	scratch_load_b32 v1, off, off offset:72 ; 4-byte Folded Reload
	scratch_store_b32 off, v51, off offset:72 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v244
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v52, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v29, s45, v1
	scratch_load_b32 v1, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s45, v1
	scratch_load_b32 v1, off, off offset:64 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v246, off offset:68
	scratch_store_b32 off, v49, off offset:64
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v246, s45, v1
	scratch_load_b32 v1, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v49, s45, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v246
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
	scratch_load_b32 v33, off, off offset:1000
	scratch_load_b32 v49, off, off offset:1004
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v49, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:1008
	scratch_load_b32 v50, off, off offset:1012
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v49, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v49, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:984
	scratch_load_b32 v49, off, off offset:988
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v49, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:992
	scratch_load_b32 v50, off, off offset:996
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v49, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v49, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:968
	scratch_load_b32 v49, off, off offset:972
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v49, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:976
	scratch_load_b32 v50, off, off offset:980
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v49, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v49, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:952
	scratch_load_b32 v49, off, off offset:956
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v49, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:960
	scratch_load_b32 v63, off, off offset:964
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v49, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v33
	ds_load_u8 v33, v243
	ds_load_u8 v63, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v63, v33, 0xc0c0004
	ds_load_u8 v36, v36
	ds_load_u8 v63, v181
	v_mov_b16_e64 v181.l, v211.l
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v63, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v36, v36, 16, v33
	ds_load_u8 v33, v67
	ds_load_u8 v63, v239
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v63, v33, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v33
	ds_load_u8 v33, v195
	ds_load_u8 v53, v177
	scratch_load_b32 v177, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v53, v33, 0xc0c0004
	ds_load_u8 v34, v34
	ds_load_u8 v53, v242
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v53, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v54
	ds_load_u8 v53, v55
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v53, v33, 0xc0c0004
	ds_load_u8 v53, v56
	ds_load_u8 v54, v241
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v53, 16, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:936
	scratch_load_b32 v54, off, off offset:940
	s_waitcnt vmcnt(0)
	v_perm_b32 v53, v53, v54, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:944
	scratch_load_b32 v55, off, off offset:948
	s_waitcnt vmcnt(0)
	v_perm_b32 v54, v54, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v54, 16, v53
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:920
	scratch_load_b32 v54, off, off offset:924
	s_waitcnt vmcnt(0)
	v_perm_b32 v53, v53, v54, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:928
	scratch_load_b32 v55, off, off offset:932
	s_waitcnt vmcnt(0)
	v_perm_b32 v54, v54, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v54, 16, v53
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:904
	scratch_load_b32 v54, off, off offset:908
	s_waitcnt vmcnt(0)
	v_perm_b32 v53, v53, v54, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:912
	scratch_load_b32 v63, off, off offset:916
	s_waitcnt vmcnt(0)
	v_perm_b32 v54, v54, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:888
	scratch_load_b32 v63, off, off offset:892
	s_waitcnt vmcnt(0)
	v_perm_b32 v53, v53, v63, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v63, off, off offset:896
	scratch_load_b32 v67, off, off offset:900
	s_waitcnt vmcnt(0)
	v_perm_b32 v63, v63, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v63, 16, v53
	ds_load_u8 v63, v233
	ds_load_u8 v64, v64
	v_mov_b16_e64 v233.l, v227.l
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v40, v40, 16, v63
	ds_load_u8 v48, v252
	ds_load_u8 v63, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v63, v48, 0xc0c0004
	v_lshl_or_b32 v39, v38, 16, v48
	ds_load_u8 v38, v46
	ds_load_u8 v46, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v46, v38, 0xc0c0004
	ds_load_u8 v46, v0
	ds_load_u8 v47, v238
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v46, 16, v38
	ds_load_u8 v46, v240
	ds_load_u8 v47, v248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v37, v37
	ds_load_u8 v47, v123
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v47, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v37, 16, v46
	ds_load_u8 v46, v254
	ds_load_u8 v47, v121
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v231
	ds_load_u8 v48, v179
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v179, off, off offset:432
	scratch_load_b32 v2, off, off offset:52
	v_add_nc_u32_e32 v1, s45, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v47, 16, v46
	ds_load_u8 v46, v253
	ds_load_u8 v47, v230
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v45, v45
	ds_load_u8 v47, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v47, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v45, 16, v46
	v_lshl_or_b32 v46, v21, 16, v23
	v_lshl_or_b32 v45, v17, 16, v19
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s45, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v2, 16, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[25:28], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[45:48], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v61
	ds_load_u8 v42, v62
	scratch_load_b32 v61, off, off offset:324 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[9:16], v[29:32], v[57:60], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[33:36], v[49:52], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[53:56], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_cvt_f32_i32_e32 v227, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v73
	ds_load_u8 v43, v74
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v42, 16, v41
	ds_load_u8 v41, v65
	ds_load_u8 v42, v66
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v207
	ds_load_u8 v0, v176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v42, 0xc0c0004
	ds_load_u8 v42, v228
	v_cvt_f32_i32_e32 v228, v14
	v_lshl_or_b32 v43, v0, 16, v41
	ds_load_u8 v0, v255
	ds_load_u8 v41, v251
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	scratch_load_b32 v41, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_u8 v61, v61
	s_waitcnt vmcnt(0)
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v41, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:320
	scratch_load_b32 v41, off, off offset:316
	s_waitcnt vmcnt(1)
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(0)
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v41, v0, 0xc0c0004
	scratch_load_b32 v41, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v61, v41, 0xc0c0004
	scratch_load_b32 v61, off, off offset:388 ; 4-byte Folded Reload
	v_lshl_or_b32 v41, v41, 16, v0
	scratch_load_b32 v0, off, off offset:1148 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[17:24], v[41:44], v[57:60], v[17:24] neg_lo:[1,1,0]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v207, off, off offset:436
	scratch_load_b32 v57, off, off offset:1152
	scratch_load_b32 v195, off, off offset:444
	scratch_load_b32 v58, off, off offset:1144
	s_waitcnt vmcnt(5)
	ds_load_u8 v61, v61
	s_waitcnt vmcnt(4)
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(2)
	ds_load_u8 v57, v57
	s_waitcnt vmcnt(0)
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	scratch_load_b32 v57, off, off offset:1140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v57, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	scratch_load_b32 v58, off, off offset:420 ; 4-byte Folded Reload
	v_lshl_or_b32 v60, v57, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:416
	scratch_load_b32 v57, off, off offset:428
	s_waitcnt vmcnt(2)
	ds_load_u8 v58, v58
	s_waitcnt vmcnt(1)
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(0)
	ds_load_u8 v57, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	scratch_load_b32 v57, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v57, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	scratch_load_b32 v58, off, off offset:404 ; 4-byte Folded Reload
	v_lshl_or_b32 v59, v57, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:400
	scratch_load_b32 v57, off, off offset:412
	s_waitcnt vmcnt(2)
	ds_load_u8 v58, v58
	s_waitcnt vmcnt(1)
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(0)
	ds_load_u8 v57, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	scratch_load_b32 v57, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v57, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v57, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:384
	scratch_load_b32 v57, off, off offset:396
	s_waitcnt vmcnt(1)
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(0)
	ds_load_u8 v57, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v57, v0, 0xc0c0004
	scratch_load_b32 v57, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v57, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v61, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v57, 16, v0
	scratch_load_b32 v0, off, off offset:496 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[17:24], v[57:60], v[49:52], v[17:24] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:1136
	scratch_load_b32 v50, off, off offset:500
	s_waitcnt vmcnt(2)
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(1)
	ds_load_u8 v49, v49
	s_waitcnt vmcnt(0)
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	scratch_load_b32 v49, off, off offset:504 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	scratch_load_b32 v50, off, off offset:484 ; 4-byte Folded Reload
	v_lshl_or_b32 v64, v49, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:480
	scratch_load_b32 v49, off, off offset:492
	s_waitcnt vmcnt(2)
	ds_load_u8 v50, v50
	s_waitcnt vmcnt(1)
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(0)
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	scratch_load_b32 v49, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	scratch_load_b32 v50, off, off offset:468 ; 4-byte Folded Reload
	v_lshl_or_b32 v63, v49, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:464
	scratch_load_b32 v49, off, off offset:476
	s_waitcnt vmcnt(2)
	ds_load_u8 v50, v50
	s_waitcnt vmcnt(1)
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(0)
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	scratch_load_b32 v49, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	scratch_load_b32 v50, off, off offset:452 ; 4-byte Folded Reload
	v_lshl_or_b32 v62, v49, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:448
	scratch_load_b32 v49, off, off offset:460
	s_waitcnt vmcnt(2)
	ds_load_u8 v50, v50
	s_waitcnt vmcnt(1)
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(0)
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	scratch_load_b32 v49, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v49, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:876
	scratch_load_b32 v49, off, off offset:884
	v_wmma_i32_16x16x16_iu8 v[17:24], v[61:64], v[53:56], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v230, v23
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v231, v24
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v49, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:872
	scratch_load_b32 v50, off, off offset:880
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v49, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v49, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:860
	scratch_load_b32 v49, off, off offset:868
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v49, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:856
	scratch_load_b32 v50, off, off offset:864
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v49, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v49, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:844
	scratch_load_b32 v49, off, off offset:852
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v49, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:836
	scratch_load_b32 v50, off, off offset:848
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v49, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v49, 16, v0
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:820
	scratch_load_b32 v49, off, off offset:812
	scratch_load_b32 v50, off, off offset:816
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v225, v0, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v49, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v49, 16, v0
	v_wmma_i32_16x16x16_iu8 v[49:56], v[25:28], v[65:68], v[1:8] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:828
	scratch_load_b32 v25, off, off offset:840
	v_wmma_i32_16x16x16_iu8 v[1:8], v[45:48], v[65:68], v[1:8] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:352
	scratch_load_b32 v65, off, off offset:356
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v25, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:824
	scratch_load_b32 v26, off, off offset:832
	s_waitcnt vmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v25, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:800
	scratch_load_b32 v25, off, off offset:808
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v25, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:796
	scratch_load_b32 v26, off, off offset:804
	s_waitcnt vmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v25, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:784
	scratch_load_b32 v25, off, off offset:792
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v25, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:780
	scratch_load_b32 v26, off, off offset:788
	s_waitcnt vmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v25, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:1116
	scratch_load_b32 v69, off, off offset:1120
	v_perm_b32 v0, v183, v184, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v25, v25, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v25, 16, v0
	v_wmma_i32_16x16x16_iu8 v[49:56], v[29:32], v[25:28], v[49:56] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1128
	scratch_load_b32 v29, off, off offset:776
	v_wmma_i32_16x16x16_iu8 v[1:8], v[41:44], v[25:28], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v25, v11
	v_cvt_f32_i32_e32 v44, v15
	v_cvt_f32_i32_e32 v11, v21
	v_cvt_f32_i32_e32 v27, v12
	v_cvt_f32_i32_e32 v12, v22
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v29, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:1124
	scratch_load_b32 v30, off, off offset:1132
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v29, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v29, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1112
	scratch_load_b32 v29, off, off offset:308
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v29, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:340
	scratch_load_b32 v30, off, off offset:292
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v29, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:228
	scratch_load_b32 v29, off, off offset:100
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v29, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:336
	scratch_load_b32 v30, off, off offset:192
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v29, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:104
	scratch_load_b32 v29, off, off offset:84
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v29, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:136
	scratch_load_b32 v69, off, off offset:112
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v29, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v29, 16, v0
	v_wmma_i32_16x16x16_iu8 v[49:56], v[33:36], v[29:32], v[49:56] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:152
	scratch_load_b32 v33, off, off offset:68
	v_wmma_i32_16x16x16_iu8 v[1:8], v[57:60], v[29:32], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v30, v17
	v_cvt_f32_i32_e32 v31, v18
	v_cvt_f32_i32_e32 v18, v19
	v_cvt_f32_i32_e32 v19, v20
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v33, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:196
	scratch_load_b32 v34, off, off offset:180
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v33, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:200
	scratch_load_b32 v33, off, off offset:160
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v33, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:304
	scratch_load_b32 v34, off, off offset:216
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v33, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:296
	scratch_load_b32 v33, off, off offset:96
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:380
	scratch_load_b32 v34, off, off offset:376
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v33, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v33, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:176
	scratch_load_b32 v33, off, off offset:164
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:224
	scratch_load_b32 v69, off, off offset:120
	s_waitcnt vmcnt(0)
	v_perm_b32 v33, v69, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v33, v33, 16, v0
	v_cvt_f32_i32_e32 v0, v10
	v_wmma_i32_16x16x16_iu8 v[49:56], v[37:40], v[33:36], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[61:64], v[33:36], v[1:8] neg_lo:[1,1,0]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v64, off, off offset:240
	scratch_load_b32 v63, off, off offset:116
	scratch_load_b32 v62, off, off offset:368
	scratch_load_b32 v61, off, off offset:372
	v_cvt_f32_i32_e32 v34, v9
	v_cvt_f32_i32_e32 v9, v16
	v_cvt_f32_i32_e32 v21, v49
	scratch_load_b32 v49, off, off offset:64 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v16, v50
	scratch_load_b32 v50, off, off offset:88 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v17, v51
	scratch_load_b32 v51, off, off offset:72 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v20, v52
	v_cvt_f32_i32_e32 v211, v53
	scratch_load_b32 v53, off, off offset:172 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v15, v54
	scratch_load_b32 v54, off, off offset:132 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v10, v55
	v_cvt_f32_i32_e32 v176, v56
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v56, off, off offset:140
	scratch_load_b32 v55, off, off offset:128
	scratch_load_b32 v52, off, off offset:80
	v_cvt_f32_i32_e32 v41, v1
	v_cvt_f32_i32_e32 v42, v2
	v_cvt_f32_i32_e32 v24, v3
	v_cvt_f32_i32_e32 v26, v4
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
	scratch_load_b32 v29, off, off offset:716
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v1.h, v56.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v5.h, v66.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v22.h, v55.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v35.h, v63.l
	v_mov_b16_e32 v5.l, v1.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v22.l, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v35.l, v1.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s44, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v3, v1, v5
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s44, s0
	s_mov_b32 s22, 0x7ffffffe
	s_ashr_i32 s12, s0, 7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s12, s1
	s_cselect_b32 s0, -1, 0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s0, s3, s0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(3)
	v_fma_f32 v3, v3, v6, v174
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v6.h, v65.l
	v_mov_b16_e32 v6.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v7, v1, v6
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v7, v7, v8, v175
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v1, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v8, v8, v23, v173
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v23.h, v54.l
	v_mov_b16_e32 v23.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v173, v8, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v1, v23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v33, v28, v29, v172
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v175, v7, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v7, off, off offset:508 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v174, v3, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v3.h, v51.l
	v_mov_b16_e32 v3.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v172, v33, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v33, off, off offset:704 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v3, v5
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v7, v5, v7, v159
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v3, v6
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v6, off, off offset:756 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v40, v5, v6, v171
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v6, off, off offset:708 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v3, v23
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v23, off, off offset:748 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v171, v40, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v8, v5, v6, v169
	scratch_load_b32 v6, off, off offset:712 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v3, v22
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v22, off, off offset:752 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v38, v5, v6, v170
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v5.h, v62.l
	v_mov_b16_e32 v5.l, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v170, v38, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v6, v1, v5
	v_mul_f32_e32 v5, v3, v5
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v39, v6, v22, v167
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v6.h, v64.l
	v_mov_b16_e32 v6.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v167, v39, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v167.h, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v22, v1, v6
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v45, v22, v23, v168
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v22.h, v52.l
	v_mov_b16_e32 v22.l, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v168, v45, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v23, v1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v23, v33, v165
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v23.h, v53.l
	v_mov_b16_e32 v23.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v165, v46, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v165.h, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v1, v23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v48, v33, v49, v166
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v33, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v166, v48, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v47, v5, v33, v163
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v3, v6
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v6, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v33.h, v61.l
	v_mov_b16_e32 v33.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v163, v47, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v163.h, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v49, v5, v6, v164
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v6, off, off offset:700 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v3, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v164, v49, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v50, v5, v50, v161
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v3, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v161, v50, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v161.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v51, v5, v6, v162
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v6, off, off offset:736 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v1, v33
	v_mul_f32_e32 v33, v3, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v162, v51, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v23, v5, v6, v124
	scratch_load_b32 v6, off, off offset:732 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v1, v35
	v_mul_f32_e32 v35, v3, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v54, v5, v6, v160
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v5, v158, s12, 1
	v_add_lshl_u32 v6, v157, s12, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s12, s12, s35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v157.h, v1.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v22, v156, s12, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	s_clause 0x1
	buffer_load_u16 v56, v5, s[8:11], 0 offen
	buffer_load_u16 v57, v6, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v6, v153, s12, 1
	v_cndmask_b32_e64 v5, 0x80000000, v22, s0
	v_add_lshl_u32 v22, v154, s12, 1
	v_add_lshl_u32 v37, v155, s12, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s10, s12, s33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v43, s10, v151, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	v_cndmask_b32_e64 v37, 0x80000000, v37, s0
	s_clause 0x3
	buffer_load_u16 v58, v5, s[24:27], 0 offen
	buffer_load_u16 v59, v6, s[24:27], 0 offen
	buffer_load_u16 v60, v22, s[24:27], 0 offen
	buffer_load_u16 v61, v37, s[24:27], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v5, s10, v152, 1
	v_add_lshl_u32 v6, s10, v148, 1
	v_add_lshl_u32 v22, s10, v149, 1
	v_add_lshl_u32 v37, s10, v150, 1
	v_cndmask_b32_e64 v43, 0x80000000, v43, s0
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	v_cndmask_b32_e64 v37, 0x80000000, v37, s0
	s_clause 0x4
	buffer_load_u16 v62, v5, s[24:27], 0 offen
	buffer_load_u16 v63, v6, s[24:27], 0 offen
	buffer_load_u16 v64, v22, s[24:27], 0 offen
	buffer_load_u16 v65, v37, s[24:27], 0 offen
	buffer_load_u16 v66, v43, s[24:27], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	scratch_load_b32 v5, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v55, s10, v145, 1
	v_add_lshl_u32 v68, s10, v146, 1
	v_add_lshl_u32 v69, s10, v147, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v40, v141, s12, 1
	v_add_lshl_u32 v43, v142, s12, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v55, 0x80000000, v55, s0
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	v_cndmask_b32_e64 v69, 0x80000000, v69, s0
	s_clause 0x2
	buffer_load_u16 v55, v55, s[24:27], 0 offen
	buffer_load_u16 v47, v68, s[24:27], 0 offen
	buffer_load_u16 v49, v69, s[24:27], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v52, v143, s12, 1
	v_add_lshl_u32 v53, v144, s12, 1
	v_cndmask_b32_e64 v40, 0x80000000, v40, s0
	v_cndmask_b32_e64 v43, 0x80000000, v43, s0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v6, s23, v122
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v70, 0x80000000, v52, s0
	v_cndmask_b32_e64 v71, 0x80000000, v53, s0
	s_clause 0x3
	buffer_load_u16 v53, v40, s[24:27], 0 offen
	buffer_load_u16 v52, v43, s[24:27], 0 offen
	buffer_load_u16 v43, v70, s[24:27], 0 offen
	buffer_load_u16 v40, v71, s[24:27], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v159, v7, s2
	v_cndmask_b32_e64 v71, v169, v8, s2
	v_cndmask_b32_e64 v74, v160, v54, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v22.h, v1.l
	v_mov_b16_e64 v158.h, v1.l
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s11, s34, s23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v159.h, v1.l
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s11, s11, s33
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
	v_lshlrev_b32_e32 v61, 16, v63
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v63, 16, v65
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v7, 16, v56
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v56, 16, v58
	v_lshlrev_b32_e32 v58, 16, v60
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v69, v8, v61 :: v_dual_lshlrev_b32 v60, 16, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v122, v8, v63 :: v_dual_mul_f32 v61, v7, v61
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v62, 16, v64
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v121, v8, v60
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v69, v16, v28
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v54, 16, v66
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v0, v61, v0, v67
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v123, v8, v62
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v121, v121, v21, v29
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v62, v7, v62 :: v_dual_and_b32 v37, 56, v5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v8, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v67, v0, s3
	v_cndmask_b32_e64 v69, v29, v121, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v59, v7, v59 :: v_dual_mul_f32 v68, v8, v58
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v62, v25, v73
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v58, v7, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v0, 0xbfb8aa3b, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v59, v59, v212, v51
	v_fma_f32 v68, v68, v215, v46
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v60, v7, v60
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v143, v58, v210, v50
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v51, v59, s3
	v_cndmask_b32_e64 v59, v73, v25, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v8, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v142, v66, v216, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v0, 0, 0x42800000, s1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v8, v56
	v_mul_f32_e32 v56, v7, v56
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v34, v60, v34, v70
	v_fma_f32 v60, v122, v20, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v65, v213, v36
	v_fma_f32 v56, v56, v217, v71
	v_fma_f32 v64, v64, v214, v32
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v17, v123, v17, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v0, v0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v141, v8, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v71, v56, s3
	v_cndmask_b32_e64 v56, v46, v68, s3
	v_cndmask_b32_e64 v68, v28, v16, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v32, v64, s3
	v_cndmask_b32_e64 v64, v45, v60, s3
	v_cndmask_b32_e64 v61, v39, v17, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v67
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v28
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v15, v141, v15, v74
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v50, v143, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v17
	v_cndmask_b32_e64 v28, 0, 0x42800000, s9
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v7, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v74, v15, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v17, 0, 0x42800000, s4
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v57, v57, v218, v38
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v49, 16, v49
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v67
	v_exp_f32_e32 v28, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v38, v57, s3
	v_cndmask_b32_e64 v57, v48, v142, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s9
	v_exp_f32_e32 v17, v17
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	scratch_load_b32 v5, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v54, v7, v54
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v52, 16, v52
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v28, v28, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v63, v7, v63 :: v_dual_add_f32 v122, 1.0, v28
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v27, v63, v27, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v63, v36, v65, s3
	v_cndmask_b32_e64 v65, v70, v34, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s1
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v141, null, v122, v122, v59
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v72, v27, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v65
	v_ldexp_f32 v0, v0, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v147, v141
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s4
	v_mul_f32_e32 v29, 0xbfb8aa3b, v60
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v16
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v70, 1.0, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v27, 0xbfb8aa3b, v64
	v_ldexp_f32 v17, v17, v36
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v29
	v_cndmask_b32_e64 v16, 0, 0x42800000, s5
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s5
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v29, 0, 0x42800000, s8
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v65
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v27, 0, 0x42800000, s6
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s6
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v60
	v_exp_f32_e32 v16, v16
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v16, v16, v38
	v_ldexp_f32 v29, v29, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v72, 1.0, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v16, null, v70, v70, v69
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v123, 1.0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, null, v72, v72, v65
	v_rcp_f32_e32 v46, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v48, s1, v60, v123, v60
	v_rcp_f32_e32 v143, v28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v148, -v16, v46, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v15, 0xbfb8aa3b, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v150, -v28, v143, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v148, v46
	v_fma_f32 v148, -v141, v147, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v143, v150, v143
	v_fmac_f32_e32 v147, v148, v147
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v73, 1.0, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, s9, v69, v70, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v25, 0xbfb8aa3b, v61
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v150, v17, v46
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v68
	v_cndmask_b32_e64 v25, 0, 0x42800000, s7
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v15, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, s7, v65, v72, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v15, v15, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v71, 1.0, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v25, v25, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v0, null, v71, v71, v68
	v_div_scale_f32 v15, vcc_lo, v68, v71, v68
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v74, 1.0, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v73, v73, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v0
	v_div_scale_f32 v36, null, v74, v74, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v142, v25
	v_div_scale_f32 v38, s4, v61, v74, v61
	v_rcp_f32_e32 v145, v36
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v0, v45, 1.0
	v_fma_f32 v149, -v25, v142, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v50, v45
	v_fma_f32 v152, -v36, v145, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v142, v149, v142 :: v_dual_mul_f32 v149, v15, v45
	v_fmac_f32_e32 v145, v152, v145
	v_div_scale_f32 v152, s5, v59, v122, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v27, 0xbfb8aa3b, v64 :: v_dual_mul_f32 v154, v38, v145
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v156, v152, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, null, v123, v123, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v121, 1.0, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v146, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_scale_f32 v32, null, v121, v121, v64
	v_div_scale_f32 v34, s6, v64, v121, v64
	v_rcp_f32_e32 v144, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v39, v146, 1.0
	v_fmac_f32_e32 v146, v50, v146
	v_fma_f32 v50, -v0, v149, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v151, -v32, v144, 1.0
	v_mul_f32_e32 v155, v48, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v149, v50, v45
	.loc	1 370 31 is_stmt 1              ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v50, s10, v137, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v144, v151, v144
	v_fma_f32 v151, -v16, v150, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v0, v149, v15
	v_dual_mul_f32 v153, v34, v144 :: v_dual_fmac_f32 v150, v151, v46
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v149, v0, v45, v149
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v151, v29, v143
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v45, s10, v135, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v15, -v16, v150, v17
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v17, v126, s12, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v126, s10, v139, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v16, -v28, v151, v29
	v_div_fixup_f32 v68, v149, v71, v68
	v_div_fmas_f32 v150, v15, v46, v150
	v_fma_f32 v15, -v32, v153, v34
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v46, s10, v136, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v151, v16, v143
	v_fma_f32 v16, -v39, v155, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v153, v15, v144
	v_fma_f32 v15, -v141, v156, v152
	v_fma_f32 v162, -v28, v151, v29
	v_fmac_f32_e32 v155, v16, v146
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v28, v129, s12, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v164, -v32, v153, v34
	v_fmac_f32_e32 v156, v15, v147
	v_div_scale_f32 v27, s8, v67, v73, v67
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v29, v130, s12, 1
	v_add_lshl_u32 v32, v131, s12, 1
	v_add_lshl_u32 v34, v132, s12, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v148, v27, v142
	s_mov_b32 vcc_lo, s8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v28, 0x80000000, v28, s0
	v_cndmask_b32_e64 v32, 0x80000000, v32, s0
	v_cndmask_b32_e64 v34, 0x80000000, v34, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v0, -v25, v148, v27
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v16, s11, v37
	v_add3_u32 v15, s11, v37, 64
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v129, 0x80000000, v45, s0
	v_cndmask_b32_e64 v130, 0x80000000, v46, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v148, v0, v142
	v_fma_f32 v0, -v36, v154, v38
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v131, 0x80000000, v50, s0
	v_cndmask_b32_e64 v126, 0x80000000, v126, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v69, v150, v70, v69
	v_fma_f32 v160, -v25, v148, v27
	v_fmac_f32_e32 v154, v0, v145
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v0, v125, s12, 1
	v_add_lshl_u32 v25, v127, s12, 1
	v_add_lshl_u32 v27, v128, s12, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v127, s10, v140, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v166, -v36, v154, v38
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v36, s10, v133, 1
	v_add_lshl_u32 v38, s10, v134, 1
	v_add_lshl_u32 v125, s10, v138, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	v_cndmask_b32_e64 v27, 0x80000000, v27, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v128, -v39, v155, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v39, 0x80000000, v29, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v48, 0x80000000, v36, s0
	v_cndmask_b32_e64 v38, 0x80000000, v38, s0
	v_cndmask_b32_e64 v127, 0x80000000, v127, s0
	v_cndmask_b32_e64 v125, 0x80000000, v125, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v46, v0, s[24:27], 0 offen
	buffer_load_u16 v45, v17, s[24:27], 0 offen
	buffer_load_u16 v37, v25, s[24:27], 0 offen
	buffer_load_u16 v36, v27, s[24:27], 0 offen
	buffer_load_u16 v29, v28, s[24:27], 0 offen
	buffer_load_u16 v28, v39, s[24:27], 0 offen
	buffer_load_u16 v17, v32, s[24:27], 0 offen
	buffer_load_u16 v0, v34, s[24:27], 0 offen
	buffer_load_u16 v48, v48, s[24:27], 0 offen
	buffer_load_u16 v50, v38, s[24:27], 0 offen
	buffer_load_u16 v38, v129, s[24:27], 0 offen
	buffer_load_u16 v39, v130, s[24:27], 0 offen
	buffer_load_u16 v32, v131, s[24:27], 0 offen
	buffer_load_u16 v34, v125, s[24:27], 0 offen
	buffer_load_u16 v25, v126, s[24:27], 0 offen
	buffer_load_u16 v27, v127, s[24:27], 0 offen
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v127, v160, v142, v148
	s_mov_b32 vcc_lo, s7
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v66, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v71, v162, v143, v151
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v67, v127, v73, v67
	v_div_fmas_f32 v70, v164, v144, v153
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v65, v71, v72, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v63, v63, v69 :: v_dual_mul_f32 v62, v62, v67
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v126, 0xbfb8aa3b, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v125, -v141, v156, v152
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v58, v58, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v64, v70, v121, v64
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v22.l, v62.h
	v_mov_b16_e64 v159.l, v63.h
	v_mov_b16_e64 v158.l, v66.h
	v_mov_b16_e64 v157.l, v58.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v57, v57, v64 :: v_dual_and_b32 v22, 1, v22
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v68, v166, v145, v154
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v63, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v69, v128, v146, v155
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v61, v68, v74, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v165.l, v57.h
	v_cmp_o_f32_e64 s1, v62, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v60, v69, v123, v60
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v64, 1, v158
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v56, v56, v61 :: v_dual_and_b32 v61, 1, v159
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v58, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v21, v21, v60 :: v_dual_and_b32 v60, 1, v157
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v67, v125, v147, v156
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v61, v63, v61, 0x7fff
	v_and_b32_e32 v63, 1, v165
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e64 v161.l, v21.h
	v_add3_u32 v22, v62, v22, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v59, v67, v122, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v58, v58, v60, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_and_b32_e32 v62, 1, v161
	v_cmp_o_f32_e64 s5, v21, v21
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v59, v20, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v20, v66, v64, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v66, off, off offset:644 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v60, v21, v62, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v58.h, s4
	v_add3_u32 v58, v57, v63, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v63, off, off offset:724 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v167.l, v56.h
	v_mov_b16_e64 v163.l, v59.h
	v_cndmask_b16 v20.l, 0x7fff, v61.h, s0
	v_cmp_o_f32_e64 s0, v56, v56
	v_cmp_o_f32_e64 s6, v59, v59
	v_and_b32_e32 v65, 1, v167
	v_and_b32_e32 v64, 1, v163
	v_cndmask_b16 v20.h, 0x7fff, v20.h, vcc_lo
	v_cndmask_b16 v21.h, 0x7fff, v22.h, s1
	v_cndmask_b16 v22.h, 0x7fff, v60.h, s5
	v_add3_u32 v61, v56, v65, 0x7fff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v56.l, v1.l
	v_mov_b16_e64 v56.h, v209.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v59, v59, v64, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v124, v23, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v126
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v1, v56
	v_mul_f32_e32 v56, v3, v56
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v60, v8, v55
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.h, 0x7fff, v58.h, vcc_lo
	v_cndmask_b16 v22.l, 0x7fff, v59.h, s6
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v59, 0, 0x42800000, s1
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v55, v7, v55
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v58, v60, v211, v57
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v60.l, v1.l
	v_mov_b16_e64 v60.h, v208.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.l, 0x7fff, v61.h, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v121, off, off offset:636
	scratch_load_b32 v61, off, off offset:628
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v57, v58, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v58, off, off offset:728 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v62, 0xbfb8aa3b, v57
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v62, v1, v60
	v_mul_f32_e32 v60, v3, v60
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v46, 16, v46
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v45, 16, v45
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v28, 16, v28
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v48, 16, v48
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v38, 16, v38
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v64, v64, v66, v117
	scratch_load_b32 v66, off, off offset:648 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(4)
	v_fma_f32 v33, v33, v63, v119
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v117, v64, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v117, v8, v52
	v_mul_f32_e32 v52, v7, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v119, v33, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v56, v56, v121, v115
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v35, v35, v58, v120
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v115, v56, s2
	v_cndmask_b32_e64 v35, v120, v35, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v54, v54, v228, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v35, v54, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v54, v55, v227, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v63, 0xbfb8aa3b, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v54, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v63
	v_mul_f32_e32 v65, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v63, 0, 0x42800000, s1
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v63, v63
	v_ldexp_f32 v63, v63, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v63, v63, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v73, v70
	v_fma_f32 v119, -v70, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v119, v73
	v_div_scale_f32 v119, s4, v35, v63, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v51
	v_exp_f32_e32 v59, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v58, v59, v58
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v58, 1.0, v58 :: v_dual_fmac_f32 v59, 0xbfb8aa3b, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v55, null, v58, v58, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v54, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v59, v55
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v62, v62, v66, v118
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v118, v62, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v54, v54, v66
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v55, v59, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, vcc_lo, v51, v58, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v65, 0xbfb8aa3b, v33 :: v_dual_add_f32 v54, 1.0, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v59, v66, v59 :: v_dual_mul_f32 v118, v8, v53
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v53, v7, v53
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v54, v54, v57
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v53, v237, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v69, v66
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v56, v53, s3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v65, v65, v67
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v67, v68, v59
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v56, v118, v223, v64
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v71, -v55, v67, v68
	v_fma_f32 v72, -v66, v69, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v74, null, v65, v65, v33
	v_fmac_f32_e32 v67, v71, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v69, v72, v69
	v_div_scale_f32 v71, s1, v57, v54, v57
	v_rcp_f32_e32 v72, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v55, -v55, v67, v68
	v_mul_f32_e32 v68, v71, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v55, v55, v59, v67
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v59, -v66, v68, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v74, v72, 1.0
	v_div_fixup_f32 v51, v55, v58, v51
	.loc	1 370 31 is_stmt 1              ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v58.l, v1.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v68, v59, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v59, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v72, v67, v72
	v_div_scale_f32 v67, s5, v33, v65, v33
	v_fma_f32 v66, -v66, v68, v71
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v58.h, v203.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v120, v67, v72
	v_div_fmas_f32 v66, v66, v69, v68
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v54, v66, v54, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v57.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v59, v60, v59, v116
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v60, v119, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v116, v59, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v71, -v70, v60, v119
	v_fma_f32 v116, -v74, v120, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v52, v52, v236, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v60, v71, v73
	v_fmac_f32_e32 v120, v116, v72
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v71, v8, v43
	v_mul_f32_e32 v43, v7, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v59, v52, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v70, v60, v119
	v_fma_f32 v67, -v74, v120, v67
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v59.l, v1.l
	v_mov_b16_e64 v59.h, v205.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v70, v8, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v60, v68, v73, v60
	s_mov_b32 vcc_lo, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v117, v224, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v67, v67, v72, v120
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v40, v7, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v35, v60, v63, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v60, off, off offset:684
	scratch_load_b32 v74, off, off offset:612
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v67, v65, v33
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v35, v52, v35
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v62, v68, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v53, v53, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v64, v56, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v56.l, v35.h
	v_mov_b16_e32 v56.h, v1.l
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_mov_b16_e32 v57.l, v53.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v54, v33, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
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
	v_fma_f32 v51, v33, v51, v114
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v33.h, 0x7fff, v56.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_and_b32_e32 v53, 1, v57
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v57, v1, v58
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v114, v51, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v56, v8, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v33.l, 0x7fff, v52.h, vcc_lo
	v_add3_u32 v52, v54, v53, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v53, off, off offset:692 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v54.l, v1.l
	v_mov_b16_e64 v54.h, v202.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v56, v56, v176, v51
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v49, v7, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v35.h, 0x7fff, v55.h, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v55, v3, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v35.l, 0x7fff, v52.h, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v51, v56, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v52.h, v1.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
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
	v_fma_f32 v53, v57, v53, v113
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v57, v8, v47
	v_mul_f32_e32 v47, v7, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v113, v53, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v10, v57, v10, v53
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v57.l, v1.l
	v_mov_b16_e64 v57.h, v201.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v53, v10, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v53, off, off offset:688 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v59, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v59, v1, v54
	v_mul_f32_e32 v54, v3, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v59, v59, v61, v109
	scratch_load_b32 v61, off, off offset:632 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v109, v59, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v53, v55, v53, v112
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v55, v3, v58
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v112, v53, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v55, v55, v60, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v56, v56, v58
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v9, v49, v9, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v111, v55, s2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v56, 1.0, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v58, 0xbfb8aa3b, v10 :: v_dual_mul_f32 v55, v1, v57
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v53, v9, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v44, v47, v44, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, null, v56, v56, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v55, v55, v61, v110
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v53, 0xbfb8aa3b, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v49, v44, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v49, v58
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v58, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v53
	v_dual_mul_f32 v60, 0xbfb8aa3b, v44 :: v_dual_mul_f32 v57, v3, v57
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v110, v55, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v53, 0, 0x42800000, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v49, v49, v61
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v47, v58, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v9
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v49, 1.0, v49 :: v_dual_fmac_f32 v58, v61, v58
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v61, null, v49, v49, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v60, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v64, v61
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v53, v53, v62
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v63, vcc_lo, v51, v56, v51
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v53, 1.0, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v60, v60, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v62, v63, v58
	v_fma_f32 v67, -v61, v64, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v65, null, v53, v53, v9
	v_fma_f32 v66, -v47, v62, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v64, v67, v64
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v68, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v62, v66, v58
	v_div_scale_f32 v66, s1, v10, v49, v10
	v_div_scale_f32 v69, null, v60, v60, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v47, v62, v63
	v_mul_f32_e32 v63, v66, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v65, v68, 1.0
	v_rcp_f32_e32 v67, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v47, v47, v58, v62
	v_fma_f32 v58, -v61, v63, v66
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v68, v72, v68
	v_div_scale_f32 v72, s4, v9, v53, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v63, v58, v64
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v58, off, off offset:616 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v47, v47, v56, v51
	v_fma_f32 v62, -v69, v67, 1.0
	v_fma_f32 v61, -v61, v63, v66
	v_fmac_f32_e32 v67, v62, v67
	v_div_scale_f32 v62, s5, v44, v60, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v61, v61, v64, v63
	s_mov_b32 vcc_lo, s4
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v64, v8, v45 :: v_dual_mul_f32 v73, v62, v67
	v_mul_f32_e32 v45, v7, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v61, v49, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v49.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v57, v57, v58, v108
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v58, v72, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v108, v57, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v65, v58, v72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v40, v235, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v58, v66, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v57, v40, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v63, -v65, v58, v72
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v8, v46
	v_mul_f32_e32 v46, v7, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v58, v63, v68, v58
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v63, v70, v234, v55
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v68, off, off offset:576 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v58, v53, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v71, v232, v59
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v40, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v55, v63, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v55, off, off offset:592 ; 4-byte Folded Reload
	v_fma_f32 v54, v54, v74, v107
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v74, -v69, v73, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v49.l, v9.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v40, v40, v47 :: v_dual_lshlrev_b32 v47, 16, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v107, v54, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v73, v74, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v49, 1, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v43, v43, v182, v54
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
	v_mov_b16_e64 v54.h, v196.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v44, v62, v60, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v43, v43, v44
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v59, v53, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v53.l, v1.l
	v_mov_b16_e64 v53.h, v197.l
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
	v_fma_f32 v10, v10, v9, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.h, 0x7fff, v49.h, vcc_lo
	v_mov_b16_e32 v49.h, v1.l
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	v_and_b32_e32 v43, 1, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v106, v10, s2
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
	v_mov_b16_e64 v44.h, v193.l
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
	v_fma_f32 v49, v51, v49, v105
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v51.l, v1.l
	v_mov_b16_e64 v51.h, v191.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v105, v49, s2
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
	v_fma_f32 v53, v53, v55, v101
	scratch_load_b32 v55, off, off offset:596 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v44, v68, v99
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v101, v53, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v44, v99, v44, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v46, v222, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v44, v46, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v65, v220, v53
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v41, v50, v41, v104
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v50, v3, v54
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v54, off, off offset:668 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v104, v41, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v47, v31, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v41, v31, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v49, v49, v42
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v50, v50, v54, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v103, v50, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v50, v1, v51
	v_mul_f32_e32 v51, v3, v51
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v30, v48, v30, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v50, v50, v55, v102
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v47, v30, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v47, v52
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v48
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v52, v41
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v102, v50, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v54, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v48, 0, 0x42800000, s1
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v47, v47, v55
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v41, v52, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v47, 1.0, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v48, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v52, v55, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v55, null, v47, v47, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v54, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v58, v55
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v48, v48, v56
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v57, vcc_lo, v42, v49, v42
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v48, 1.0, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v54, v54, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v56, v57, v52
	v_fma_f32 v61, -v55, v58, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v59, null, v48, v48, v31
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v54, 1.0, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v60, -v41, v56, v57
	v_fmac_f32_e32 v58, v61, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v62, v59
	v_div_scale_f32 v63, null, v54, v54, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v56, v60, v52
	v_div_scale_f32 v60, s1, v40, v47, v40
	v_rcp_f32_e32 v61, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v41, v56, v57
	v_mul_f32_e32 v57, v60, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v59, v62, 1.0
	v_div_fmas_f32 v41, v41, v52, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v55, v57, v60
	v_fmac_f32_e32 v62, v66, v62
	v_div_scale_f32 v66, s4, v31, v48, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v41, v41, v49, v42
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v49.l, v1.l
	v_mov_b16_e64 v49.h, v186.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v57, v52, v58
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v52, off, off offset:580 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v56, -v63, v61, 1.0
	v_fma_f32 v55, -v55, v57, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v55, v55, v58, v57
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v40, v55, v47, v40
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v47.l, v1.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v61, v56, v61
	v_div_scale_f32 v56, s5, v30, v54, v30
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v47.h, v188.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v67, v56, v61
	v_fma_f32 v68, -v63, v67, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v61
	v_fma_f32 v56, -v63, v67, v56
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v51, v51, v52, v100
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v52, v66, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v100, v51, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v60, -v59, v52, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v45, v229, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v52, v60, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v51, v45, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v59, v52, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v52, v57, v62, v52
	s_mov_b32 vcc_lo, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v57, v64, v221, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v56, v56, v61, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v62, off, off offset:556 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v31, v52, v48, v31
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v48.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v50, v57, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v30, v56, v54, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v31, v45, v31 :: v_dual_lshlrev_b32 v54, 16, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.h, v1.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v41, v43, v41 :: v_dual_mul_f32 v44, v44, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v53, v46, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.l, v31.h
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_mov_b16_e32 v46.h, v1.l
	v_mov_b16_e32 v46.l, v44.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v40, v30, v40 :: v_dual_and_b32 v45, 1, v45
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v30, v1, v47
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v43, 16, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v42, 1, v46
	v_mov_b16_e32 v46.l, v40.h
	v_add3_u32 v45, v31, v45, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v31, off, off offset:664 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v48.h, v187.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v44, v42, 0x7fff
	v_mov_b16_e32 v42.l, v41.h
	v_mov_b16_e32 v42.h, v1.l
	v_cmp_o_f32_e64 s0, v40, v40
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v57, 16, v36
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v31, v30, v31, v98
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v30.h, 0x7fff, v45.h, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v45, v8, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_and_b32_e32 v44, 1, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v98, v31, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v46, off, off offset:652 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v43, v7, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v30.l, 0x7fff, v39.h, vcc_lo
	v_add3_u32 v39, v40, v44, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v26, v45, v26, v31
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v45, v1, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v40, v3, v47
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v47.h, v185.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v26, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v26, 1, v42
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v42, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v26, v41, v26, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v39.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v44
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v44, v8, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v26.h, 0x7fff, v26.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v42, v45, v42, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v97, v42, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, s1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v24, v44, v24, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v31
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v41, v24, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v41, off, off offset:656 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v42
	v_mul_f32_e32 v45, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v45, v7, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v42, v42, v44
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v24
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v40, v40, v41, v96
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v3, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v96, v40, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v41, v41, v46, v95
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v46, v1, v47
	v_mul_f32_e32 v47, v3, v47
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v43, v43, v19, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v95, v41, s2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v19, 1.0, v42 :: v_dual_mul_f32 v42, v1, v49
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v49, v3, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v40, v43, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v18, v45, v18, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v19, v19, v31
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v40, 0xbfb8aa3b, v38
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v41, v18, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v44, off, off offset:564 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v50, v48
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v18
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v49, v49, v62, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v91, v49, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v43, v43
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v42, v42, v44, v93
	scratch_load_b32 v44, off, off offset:568 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v44, v46, v44, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v94, v44, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v44, v41, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v93, v42, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v48, v50, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v18
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v50, v45, v50
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v45, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v51, null, v42, v42, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v43, v43, v44
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v52, vcc_lo, v31, v19, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v53, v51
	v_div_scale_f32 v60, s4, v24, v42, v24
	v_mul_f32_e32 v55, v52, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v37, v45, v44
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v45, v8, v57
	v_mul_f32_e32 v57, v7, v57
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v48, v55, v52
	v_fma_f32 v44, -v51, v53, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v45, v206, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v55, v36, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v53, v44, v53
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v44, v8, v54
	v_mul_f32_e32 v54, v7, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v48, v55, v52
	v_div_scale_f32 v56, null, v43, v43, v38
	v_mul_f32_e32 v48, v60, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v40, v45, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v36, v36, v50, v55
	v_rcp_f32_e32 v58, v56
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v50, -v51, v48, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v48, v50, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v50, off, off offset:560 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v56, v58, 1.0
	v_fma_f32 v51, -v51, v48, v60
	v_fmac_f32_e32 v58, v52, v58
	v_div_scale_f32 v52, s5, v38, v43, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v48, v51, v53, v48
	s_mov_b32 vcc_lo, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v51, v54, v219, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v24, v48, v42, v24
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v42.l, v1.l
	v_mov_b16_e64 v42.h, v181.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v47, v47, v50, v92
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v50, v52, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v92, v47, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v60, -v56, v50, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v57, v180, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v50, v60, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v47, v53, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v56, v50, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v50, v52, v58, v50
	v_div_fixup_f32 v38, v50, v43, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v49, v51, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v37, 1.0, v37 :: v_dual_mul_f32 v38, v47, v38
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v59, null, v37, v37, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v46, v59
	v_fma_f32 v55, -v59, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v55, s1, v18, v37, v18
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v61, v55, v46
	v_fma_f32 v62, -v59, v61, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, v62, v46
	v_fma_f32 v54, -v59, v61, v55
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v55, off, off offset:540 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v46, v54, v46, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v18, v46, v37, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v44, v204, v41
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v40, v43, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v41, v37, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v38.h
	v_mov_b16_e32 v37.h, v1.l
	v_mov_b16_e32 v41.h, v1.l
	v_mov_b16_e32 v41.l, v40.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v24, v18, v24 :: v_dual_and_b32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v19, v36, v19, v31
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v31, v1, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v36, v38, v37, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v38, v8, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v40, v18, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v18, off, off offset:624 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v19, v39, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v24.h
	v_mov_b16_e32 v39.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v41.l, v1.l
	v_mov_b16_e64 v41.h, v233.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, v19.h
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v7, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v24, v24
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v31, v31, v18, v90
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v18.h, 0x7fff, v36.h, vcc_lo
	v_mov_b16_e32 v36.h, v1.l
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v90, v31, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v36, 1, v36
	v_cndmask_b16 v18.l, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v14, v38, v14, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v39
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v39, v1, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v14, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v14, v19, v36, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v36, off, off offset:620 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v24, v38, 0x7fff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v37.l, v1.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v38, 0xbfb8aa3b, v31 :: v_dual_lshlrev_b32 v19, 16, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v14.h, 0x7fff, v14.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v14.l, 0x7fff, v37.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v38
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v38, off, off offset:772 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v31
	v_exp_f32_e32 v32, v32
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v36, v39, v36, v89
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v89, v36, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v36, v8, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v32, v39
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v13, v36, v13, v24
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v36, v3, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v42, off, off offset:548 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v24, v13, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v24, off, off offset:608 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v37.h, v38.l
	v_mov_b16_e32 v38.l, v1.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v40, v1, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v40, v40, v42, v85
	scratch_load_b32 v42, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v24, v36, v24, v88
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v36, off, off offset:768 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v85, v40, s2
	v_cndmask_b32_e64 v24, v88, v24, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v12, v34, v12, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v24, v12, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v19, v7, v19 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v13
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, null, v24, v24, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v49, v46
	v_fma_f32 v53, -v46, v49, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v49, v53, v49
	v_div_scale_f32 v53, s1, v12, v24, v12
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v38.h, v36.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v36, v3, v41
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v41, off, off offset:604 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v36, v36, v41, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v87, v36, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v36, v1, v38
	v_mul_f32_e32 v38, v3, v38
	v_mul_f32_e32 v52, v8, v29
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v11, v19, v11, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v19, null, v32, v32, v31
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v36, v36, v42, v86
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v34, v11, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v39
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v39, v19
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v86, v36, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v34, v42
	v_mul_f32_e32 v41, 0xbfb8aa3b, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v19, v39, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v39, v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_scale_f32 v42, null, v34, v34, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, vcc_lo, v31, v32, v31
	v_rcp_f32_e32 v45, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v11
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v42, v45, 1.0
	v_fmac_f32_e32 v45, v48, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v41, v41, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v43, v44, v39
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v41, 1.0, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v19, v43, v44
	v_div_scale_f32 v50, null, v41, v41, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v47, v39
	v_div_scale_f32 v47, s0, v13, v34, v13
	v_rcp_f32_e32 v48, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v43, v44
	v_div_fmas_f32 v19, v19, v39, v43
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v50, v48, 1.0
	v_div_fixup_f32 v19, v19, v32, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v43, v48
	v_div_scale_f32 v43, s4, v11, v41, v11
	v_mul_f32_e32 v54, v43, v48
	v_mul_f32_e32 v44, v47, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v42, v44, v47
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v51, v8, v28
	v_mul_f32_e32 v28, v7, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v44, v39, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v39, off, off offset:544 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v42, v44, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v45, v44
	s_mov_b32 vcc_lo, s1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v45, v8, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v13, v42, v34, v13
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v34.l, v1.l
	v_mov_b16_e64 v34.h, v179.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v31, v1, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v38, v38, v39, v84
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v39, v53, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v84, v38, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v46, v39, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v28, v198, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v39, v47, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v38, v28, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v46, v39, v53
	v_div_fmas_f32 v39, v44, v49, v39
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v12, v39, v24, v12
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v3, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v39, v52, v199, v40
	v_fma_f32 v24, v51, v200, v36
	scratch_load_b32 v51, off, off offset:524 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v28, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v40, v39, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:536
	scratch_load_b32 v40, off, off offset:532
	v_fma_f32 v37, v37, v55, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v50, v54, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v36, v24, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.h, v1.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v29, v7, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v83, v37, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v54, v55, v48 :: v_dual_mul_f32 v13, v28, v13
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v19, v24, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v29, v29, v178, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v43, -v50, v54, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v37, v29, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v38, v43, v48, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v11, v38, v41, v11
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v38, off, off offset:572 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v29, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v12.h
	v_mov_b16_e32 v29.h, v1.l
	v_mov_b16_e32 v36.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v29, 1, v29
	v_and_b32_e32 v28, 1, v36
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v36.l, v1.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v12, v29, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v12, off, off offset:600 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v36.h, v177.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v24, v11, v28, 0x7fff
	v_cndmask_b16 v28.h, 0x7fff, v29.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_mov_b16_e32 v11.h, v1.l
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v28.l, 0x7fff, v24.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v24, off, off offset:588 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v12, v31, v12, v82
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v31.l, v1.l
	v_mov_b16_e64 v31.h, v207.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v82, v12, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v1, v31
	v_mul_f32_e32 v31, v3, v31
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v24, v32, v24, v81
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v8, v25
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v31, v38, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v81, v24, s2
	v_cndmask_b32_e64 v31, v79, v31, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v2, v32, v2, v24
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v3, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v24, v2, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v24, off, off offset:584 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v29, v8, v27
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v8, v8, v0 :: v_dual_mul_f32 v25, v7, v25
	v_mul_f32_e32 v0, v7, v0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v4, v29, v4, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v19.h
	v_mov_b16_e32 v29.h, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v25, v230, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v12, v4, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v12, 1, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v31, v25, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v29, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v29, v29
	v_ldexp_f32 v29, v29, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v24, v32, v24, v80
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v1, v36
	v_mul_f32_e32 v36, v3, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v13.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v80, v24, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v32, v32, v39, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v78, v32, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v34, 0xbfb8aa3b, v2 :: v_dual_mul_f32 v27, v7, v27
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v7, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v8, v192, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v31, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v27, v27, v231, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v32, v8, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v24, v24, v27, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v29, v29, v4
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v38, 0xbfb8aa3b, v24
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v12, v19, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v19, v19
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v19.l, v1.l
	v_mov_b16_e64 v19.h, v195.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v38
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v34, v27
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v1, v19
	v_mul_f32_e32 v3, v3, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v19, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v1.h, 0x7fff, v12.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v38, 0, 0x42800000, s1
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v37, v40, v77
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v3, v51, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v77, v37, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v31, v31, v40
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v27, v34, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v38, v38
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 1, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v45, v194, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v75, v3, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v34, v40, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v11, v13, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v37, v45, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v7, v189, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v38, v38, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v31, v31, v2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v38, 1.0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v7, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v43, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v44, null, v38, v38, v24
	v_rcp_f32_e32 v48, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v40, v43, 1.0
	v_fmac_f32_e32 v43, v47, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v44, v48, 1.0
	v_dual_fmac_f32 v48, v50, v48 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v25
	v_div_scale_f32 v50, s4, v24, v38, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, vcc_lo, v4, v29, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v39, v39
	v_ldexp_f32 v39, v39, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v41, v42, v34
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v39, 1.0, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v27, v41, v42
	v_div_scale_f32 v49, null, v39, v39, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v46, v34
	v_div_scale_f32 v46, s1, v2, v31, v2
	v_rcp_f32_e32 v47, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v27, v41, v42
	v_mul_f32_e32 v42, v46, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v27, v34, v41
	v_fma_f32 v34, -v40, v42, v46
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v49, v47, 1.0
	v_fmac_f32_e32 v42, v34, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v34, v50, v48 :: v_dual_fmac_f32 v47, v41, v47
	v_div_scale_f32 v41, s5, v25, v39, v25
	v_fma_f32 v40, -v40, v42, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v46, -v44, v34, v50
	v_div_fmas_f32 v17, v40, v43, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v34, v46, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v2, v17, v31, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v44, v34, v50
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.h, v1.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v12, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v40, v48, v34
	s_mov_b32 vcc_lo, s5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.h, v1.l
	v_mov_b16_e32 v12.l, v2.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v19, v36, v19, v76
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v36, v41, v47
	v_div_fixup_f32 v4, v27, v29, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v76, v19, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v49, v36, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v8, v4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v0, v0, v190, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v36, v51, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v19, v0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v49, v36, v41
	v_div_fixup_f32 v19, v34, v38, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v41, v47, v36
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v19
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_mov_b16_e32 v13.l, v4.h
	v_mov_b16_e32 v13.h, v1.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v36, v39, v25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v7
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v0.h
	v_mov_b16_e32 v7.h, v1.l
	v_cndmask_b16 v1.l, 0x7fff, v11.h, vcc_lo
	v_and_b32_e32 v11, 1, v12
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v12, 1, v13
	v_mov_b32_e32 v13, 0x5410
	v_mov_b16_e32 v17.l, v3.h
	v_cmp_o_f32_e64 s0, v3, v3
	v_and_b32_e32 v7, 1, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v8, 1, v17
	v_mov_b32_e32 v17, 0x7632
	v_add3_u32 v7, v0, v7, 0x7fff
	v_add3_u32 v0, v2, v11, 0x7fff
	v_add3_u32 v11, v4, v12, 0x7fff
	v_add3_u32 v8, v3, v8, 0x7fff
	scratch_load_b32 v3, off, off offset:512 ; 4-byte Folded Reload
	v_cndmask_b16 v2.h, 0x7fff, v7.h, vcc_lo
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v5, s23, v5
	s_mov_b32 s23, 0x31027000
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v2.l, 0x7fff, v8.h, s0
	s_mov_b32 s0, 0x76543210
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v3, 16, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_cndmask_b16 v3.h, 0x7fff, v11.h, s1
	v_cndmask_b16 v3.l, 0x7fff, v0.h, s2
	v_cndmask_b32_e32 v13, 0x1054, v13, vcc_lo
	v_cndmask_b32_e32 v17, 0x3276, v17, vcc_lo
	v_cndmask_b32_e32 v0, v21, v33, vcc_lo
	v_dual_cndmask_b32 v7, v9, v22 :: v_dual_cndmask_b32 v8, v22, v9
	v_dual_cndmask_b32 v11, v30, v28 :: v_dual_cndmask_b32 v22, v3, v14
	v_cndmask_b32_e32 v3, v14, v3, vcc_lo
	v_cndmask_b32_e32 v12, v2, v18, vcc_lo
	v_cndmask_b32_e32 v2, v18, v2, vcc_lo
	v_dual_cndmask_b32 v18, v35, v20 :: v_dual_cndmask_b32 v19, v20, v35
	v_cndmask_b32_e32 v20, v10, v23, vcc_lo
	v_cndmask_b32_e32 v10, v23, v10, vcc_lo
	v_cndmask_b32_e32 v4, v33, v21, vcc_lo
	v_cndmask_b32_e32 v21, v1, v26, vcc_lo
	v_cndmask_b32_e32 v1, v26, v1, vcc_lo
	v_cndmask_b32_e32 v9, v28, v30, vcc_lo
	v_lshl_or_b32 v13, v13, 8, v13
	v_lshl_or_b32 v17, v17, 8, v17
	v_permlanex16_b32 v14, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v13, 0x540054, v13
	v_and_b32_e32 v17, 0x760076, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v0, v13, 4, v13
	v_lshl_or_b32 v13, v17, 4, v17
	v_permlanex16_b32 v17, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v23, 0x5040504, v0
	v_and_b32_e32 v24, 0x7060706, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v0, v14, v4, v23
	v_perm_b32 v1, v14, v4, v24
	v_perm_b32 v2, v8, v7, v23
	v_perm_b32 v3, v8, v7, v24
	v_add_lshl_u32 v4, v16, v6, 1
	v_perm_b32 v7, v11, v9, v23
	v_perm_b32 v8, v11, v9, v24
	v_perm_b32 v9, v17, v12, v23
	v_perm_b32 v10, v17, v12, v24
	v_add_lshl_u32 v6, v15, v6, 1
	v_perm_b32 v11, v19, v18, v23
	v_perm_b32 v12, v19, v18, v24
	v_perm_b32 v13, v25, v20, v23
	v_perm_b32 v14, v25, v20, v24
	v_add_lshl_u32 v16, v16, v5, 1
	v_perm_b32 v17, v26, v21, v23
	v_perm_b32 v18, v26, v21, v24
	v_perm_b32 v19, v27, v22, v23
	v_perm_b32 v20, v27, v22, v24
	v_add_lshl_u32 v5, v15, v5, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v4, s[20:23], 0 offen
	buffer_store_b128 v[7:10], v6, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v16, s[20:23], 0 offen
	buffer_store_b128 v[17:20], v5, s[20:23], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1160
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 1160
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 61396
; TotalNumSgprs: 55
; NumVgprs: 256
; ScratchSize: 1160
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 55
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
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	361                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 1160
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 512
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
