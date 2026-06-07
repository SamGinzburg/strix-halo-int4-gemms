	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
	v_mov_b32_e32 v135, v0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	s_mov_b32 s49, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v2, 4, v135
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 2, v135
	v_and_b32_e32 v192, 15, v135
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0xff
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
	s_lshr_b32 s5, s5, 24
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
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s12, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v1, s13, v1
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v0, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
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
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s18, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s18
	v_readfirstlane_b32 s18, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v0, 3, v135
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v3, 24, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s31, s7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v0, 0x778, v0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s17
	s_mov_b64 s[24:25], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s18, s18, s6
	s_mul_hi_u32 s12, s6, s18
	s_xor_b32 s18, s2, s16
	s_add_i32 s12, s6, s12
	s_ashr_i32 s18, s18, 31
	s_mul_hi_u32 s12, s14, s12
	s_mov_b32 s6, 0x7ffffffe
	s_mul_i32 s19, s12, s17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s30, s6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s12, 1
	s_sub_i32 s20, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s12, s19, s12
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s12, 1
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s14, s19, s12
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s34, s23, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s14, s14, s18
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s26, s3, 5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s14, s18
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v2, s34, v2
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s16, s3, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s14, s13, 0x7f
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s16
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s16, s14, 31
.Ltmp15:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
.Ltmp16:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s12, s13, 31
.Ltmp17:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v134, v192, 4, v2
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s2, s16, 25
.Ltmp19:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s13, s33, s13
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s22, s3, 8
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v44, v1, v3, s13
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s13, s14, s2
.Ltmp21:
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s15, s34, s26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s12, 31
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v136, s23, 5, v134
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s14, s22, s15
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s12, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s26, v44
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s14, v134
	v_add_nc_u32_e32 v3, s14, v136
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s15, s23, 6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s26, 32
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s14, s14, s15
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v4, s35, v44
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s2
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s23, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v14, s14, v134
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v10, 0x80000000, v3, s2
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v3, s23, v3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v15, s14, v136
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[38:39], v1, s[4:7], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v4, s3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 358 39 is_stmt 0              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v4, s23, v14
	v_add3_u32 v22, s14, s23, v136
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[6:9], v5, s[28:31], 0 offen
	buffer_load_b128 v[10:13], v10, s[28:31], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v14, s3
	v_cndmask_b32_e64 v26, 0x80000000, v15, s3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[14:17], v2, s[28:31], 0 offen
	buffer_load_b128 v[18:21], v3, s[28:31], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v4, s3
	v_cndmask_b32_e64 v3, 0x80000000, v22, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[40:41], v1, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[22:25], v5, s[28:31], 0 offen
	buffer_load_b128 v[26:29], v26, s[28:31], 0 offen
	buffer_load_b128 v[30:33], v2, s[28:31], 0 offen
	buffer_load_b128 v[34:37], v3, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_bfe_i32 v1, v135, 4, 1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v137, 4, v135
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v2, 16, v135
	v_lshlrev_b32_e32 v43, 5, v135
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v3, 16, v192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 0x90, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v4, 32, v192
	v_or_b32_e32 v5, 48, v192
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v42, 0, v137
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s12, 0x5f
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v138, v1, v0
	v_lshrrev_b32_e32 v0, 1, v135
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v138
	s_waitcnt vmcnt(9)
	ds_store_b64 v1, v[38:39] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v42, v[6:9]
	s_waitcnt vmcnt(7)
	ds_store_b128 v42, v[10:13] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v42, v[14:17] offset:16384
	s_waitcnt vmcnt(5)
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
	v_and_or_b32 v148, 0x70, v0, v192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v33, 5, v135
	v_and_b32_e32 v1, 4, v135
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v6, 0x100, v148
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v18, 0x160, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v7, 0x700, v148
	v_or_b32_e32 v8, 0x180, v148
	v_or_b32_e32 v9, 0x280, v148
	scratch_store_b32 off, v6, off offset:580 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x200, v148
	v_or_b32_e32 v10, 0x380, v148
	v_or_b32_e32 v11, 0x480, v148
	v_or_b32_e32 v12, 0x580, v148
	v_or_b32_e32 v13, 0x680, v148
	scratch_store_b32 off, v6, off offset:588 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x300, v148
	v_or_b32_e32 v14, 0x780, v148
	v_or_b32_e32 v15, 0x880, v148
	v_or_b32_e32 v16, 0x980, v148
	v_or_b32_e32 v17, 0xa80, v148
	scratch_store_b32 off, v6, off offset:596 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x400, v148
	scratch_store_b32 off, v6, off offset:604 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x500, v148
	scratch_store_b32 off, v6, off offset:612 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x600, v148
	scratch_store_b32 off, v6, off offset:620 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x800, v148
	scratch_store_b32 off, v6, off offset:632 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x900, v148
	scratch_store_b32 off, v6, off offset:640 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xa00, v148
	scratch_store_b32 off, v6, off offset:648 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xb00, v148
	scratch_store_b32 off, v6, off offset:656 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xc00, v148
	scratch_store_b32 off, v6, off offset:664 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xd00, v148
	scratch_store_b32 off, v6, off offset:672 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xe00, v148
	scratch_store_b32 off, v6, off offset:680 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xf00, v148
	scratch_store_b32 off, v6, off offset:684 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1000, v148
	scratch_store_b32 off, v6, off offset:584 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1100, v148
	scratch_store_b32 off, v6, off offset:592 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1200, v148
	scratch_store_b32 off, v6, off offset:600 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1300, v148
	scratch_store_b32 off, v6, off offset:608 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1400, v148
	scratch_store_b32 off, v6, off offset:616 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1500, v148
	scratch_store_b32 off, v6, off offset:624 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1600, v148
	scratch_store_b32 off, v6, off offset:628 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1700, v148
	scratch_store_b32 off, v6, off offset:636 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1800, v148
	scratch_store_b32 off, v6, off offset:644 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1900, v148
	scratch_store_b32 off, v6, off offset:652 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1a00, v148
	scratch_store_b32 off, v6, off offset:660 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1b00, v148
	scratch_store_b32 off, v6, off offset:668 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1c00, v148
	scratch_store_b32 off, v6, off offset:676 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1d00, v148
	scratch_store_b32 off, v6, off offset:688 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1e00, v148
	scratch_store_b32 off, v6, off offset:692 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1f00, v148
	scratch_store_b32 off, v6, off offset:696 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x80, v148
	scratch_store_b32 off, v6, off offset:700 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xb80, v148
	scratch_store_b32 off, v6, off offset:704 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xc80, v148
	scratch_store_b32 off, v6, off offset:708 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xd80, v148
	scratch_store_b32 off, v6, off offset:712 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xe80, v148
	scratch_store_b32 off, v6, off offset:716 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xf80, v148
	scratch_store_b32 off, v6, off offset:720 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1080, v148
	scratch_store_b32 off, v6, off offset:724 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1180, v148
	scratch_store_b32 off, v6, off offset:728 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1280, v148
	scratch_store_b32 off, v6, off offset:732 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1380, v148
	scratch_store_b32 off, v6, off offset:736 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1480, v148
	scratch_store_b32 off, v6, off offset:740 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1580, v148
	scratch_store_b32 off, v6, off offset:744 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1680, v148
	scratch_store_b32 off, v6, off offset:748 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1780, v148
	scratch_store_b32 off, v6, off offset:752 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1880, v148
	scratch_store_b32 off, v6, off offset:756 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1980, v148
	scratch_store_b32 off, v6, off offset:760 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1a80, v148
	scratch_store_b32 off, v6, off offset:764 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1b80, v148
	scratch_store_b32 off, v6, off offset:768 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1c80, v148
	scratch_store_b32 off, v6, off offset:772 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1d80, v148
	scratch_store_b32 off, v6, off offset:776 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1e80, v148
	scratch_store_b32 off, v6, off offset:780 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1f80, v148
	scratch_store_b32 off, v6, off offset:784 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr18
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr148
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
                                        ; implicit-def: $vgpr17
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
	s_load_b64 s[20:21], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v2
	v_or_b32_e32 v2, s33, v192
	v_or_b32_e32 v3, s33, v3
	v_or_b32_e32 v4, s33, v4
	v_or_b32_e32 v5, s33, v5
	v_and_b32_e32 v6, 0xf0, v135
	s_ashr_i32 s44, s13, 7
	v_or_b32_e32 v133, s22, v135
	v_mul_lo_u32 v163, v2, s44
	v_mul_lo_u32 v251, v3, s44
	v_mul_lo_u32 v131, v4, s44
	v_mul_lo_u32 v132, v5, s44
	v_lshlrev_b32_e32 v149, 2, v6
	v_lshlrev_b32_e32 v150, 1, v135
	v_lshlrev_b32_e32 v147, 1, v6
	s_and_not1_b32 vcc_lo, exec_lo, s10
	scratch_store_b32 off, v6, off offset:788 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v2, 0x160, v43
	v_bfe_i32 v1, v135, 2, 1
	v_and_or_b32 v148, 0x70, v0, v192
	v_mov_b32_e32 v146, 0
	v_mov_b32_e32 v54, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v15, 0
	v_and_or_b32 v0, 0x90, v1, v2
	v_dual_mov_b32 v42, 0 :: v_dual_and_b32 v1, 28, v150
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v40, 0
	v_mov_b32_e32 v7, 0
	scratch_store_b32 off, v0, off offset:568 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x100, v148
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v17, 0
	scratch_store_b32 off, v0, off offset:580 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x200, v148
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v171, 0
	scratch_store_b32 off, v0, off offset:588 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v148
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v123, 0
	scratch_store_b32 off, v0, off offset:596 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v148
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v191, 0
	scratch_store_b32 off, v0, off offset:604 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x500, v148
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v211, 0
	scratch_store_b32 off, v0, off offset:612 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x600, v148
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v53, 0
	scratch_store_b32 off, v0, off offset:620 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x700, v148
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v143, 0
	scratch_store_b32 off, v0, off offset:792 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x800, v148
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v115, 0
	scratch_store_b32 off, v0, off offset:632 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x900, v148
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v213, 0
	scratch_store_b32 off, v0, off offset:640 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v148
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v205, 0
	scratch_store_b32 off, v0, off offset:648 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb00, v148
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v203, 0
	scratch_store_b32 off, v0, off offset:656 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v148
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v183, 0
	scratch_store_b32 off, v0, off offset:664 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd00, v148
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v179, 0
	scratch_store_b32 off, v0, off offset:672 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v148
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v181, 0
	scratch_store_b32 off, v0, off offset:680 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf00, v148
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v193, 0
	scratch_store_b32 off, v0, off offset:684 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1000, v148
	v_mov_b32_e32 v220, 0
	v_mov_b32_e32 v214, 0
	v_mov_b32_e32 v212, 0
	v_mov_b32_e32 v206, 0
	scratch_store_b32 off, v0, off offset:584 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1100, v148
	v_mov_b32_e32 v204, 0
	v_mov_b32_e32 v210, 0
	v_mov_b32_e32 v252, 0
	v_mov_b32_e32 v208, 0
	scratch_store_b32 off, v0, off offset:592 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1200, v148
	v_mov_b32_e32 v202, 0
	v_mov_b32_e32 v200, 0
	v_mov_b32_e32 v184, 0
	v_mov_b32_e32 v198, 0
	scratch_store_b32 off, v0, off offset:600 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1300, v148
	v_mov_b32_e32 v180, 0
	v_mov_b32_e32 v194, 0
	v_mov_b32_e32 v182, 0
	v_mov_b32_e32 v196, 0
	scratch_store_b32 off, v0, off offset:608 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1400, v148
	v_mov_b32_e32 v178, 0
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s11, s12, 5
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	scratch_store_b32 off, v0, off offset:616 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1500, v148
	s_mov_b32 s12, 0
	s_add_i32 s1, s35, 32
	s_mov_b32 s10, 1
	s_and_b32 s37, s9, 0xffff
	scratch_store_b32 off, v0, off offset:624 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1600, v148
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_add_i32 s50, 0, 0x8000
	scratch_store_b32 off, v0, off offset:628 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1700, v148
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s27, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	scratch_store_b32 off, v0, off offset:636 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1800, v148
	s_add_i32 s11, s11, -3
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s13, s12
	scratch_store_b32 off, v0, off offset:644 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1900, v148
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	scratch_store_b32 off, v0, off offset:652 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a00, v148
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	scratch_store_b32 off, v0, off offset:660 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b00, v148
	s_mov_b32 s49, s12
	s_mov_b32 s48, s12
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v148, off offset:560
	scratch_store_b32 off, v44, off offset:564
	v_mov_b32_e32 v55, 0
	scratch_store_b32 off, v0, off offset:668 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c00, v148
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v245, 0
	v_mov_b32_e32 v243, 0
	v_mov_b32_e32 v59, 0
	scratch_store_b32 off, v0, off offset:676 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d00, v148
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v121, 0
	v_mov_b32_e32 v237, 0
	v_mov_b32_e32 v21, 0
	scratch_store_b32 off, v0, off offset:688 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e00, v148
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v233, 0
	scratch_store_b32 off, v0, off offset:692 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f00, v148
	v_mov_b32_e32 v175, 0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v227, 0
	v_mov_b32_e32 v225, 0
	scratch_store_b32 off, v0, off offset:696 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x80, v148
	v_mov_b32_e32 v13, 0
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v173, 0
	v_mov_b32_e32 v177, 0
	scratch_store_b32 off, v0, off offset:700 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x180, v148
	scratch_store_b32 off, v0, off offset:796 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x280, v148
	scratch_store_b32 off, v0, off offset:800 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x380, v148
	scratch_store_b32 off, v0, off offset:804 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x480, v148
	scratch_store_b32 off, v0, off offset:808 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x580, v148
	scratch_store_b32 off, v0, off offset:812 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x680, v148
	scratch_store_b32 off, v0, off offset:816 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x780, v148
	scratch_store_b32 off, v0, off offset:820 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x880, v148
	scratch_store_b32 off, v0, off offset:824 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x980, v148
	scratch_store_b32 off, v0, off offset:828 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa80, v148
	scratch_store_b32 off, v0, off offset:832 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb80, v148
	scratch_store_b32 off, v0, off offset:704 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc80, v148
	scratch_store_b32 off, v0, off offset:708 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd80, v148
	scratch_store_b32 off, v0, off offset:712 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe80, v148
	scratch_store_b32 off, v0, off offset:716 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf80, v148
	scratch_store_b32 off, v0, off offset:720 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1080, v148
	scratch_store_b32 off, v0, off offset:724 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1180, v148
	scratch_store_b32 off, v0, off offset:728 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1280, v148
	scratch_store_b32 off, v0, off offset:732 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1380, v148
	scratch_store_b32 off, v0, off offset:736 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1480, v148
	scratch_store_b32 off, v0, off offset:740 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1580, v148
	scratch_store_b32 off, v0, off offset:744 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1680, v148
	scratch_store_b32 off, v0, off offset:748 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1780, v148
	scratch_store_b32 off, v0, off offset:752 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1880, v148
	scratch_store_b32 off, v0, off offset:756 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1980, v148
	scratch_store_b32 off, v0, off offset:760 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a80, v148
	scratch_store_b32 off, v0, off offset:764 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b80, v148
	scratch_store_b32 off, v0, off offset:768 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c80, v148
	scratch_store_b32 off, v0, off offset:772 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d80, v148
	scratch_store_b32 off, v0, off offset:776 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e80, v148
	scratch_store_b32 off, v0, off offset:780 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f80, v148
	scratch_store_b32 off, v0, off offset:784 ; 4-byte Folded Spill
	v_and_b32_e32 v0, 32, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v0, 0, v149, v0
	v_add_nc_u32_e32 v0, v0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:572
	scratch_store_b32 off, v147, off offset:840
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v0, 0, v147
	scratch_store_b32 off, v0, off offset:576 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v150, off offset:848
	scratch_store_b32 off, v1, off offset:156
	scratch_store_b32 off, v0, off offset:12
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:852
	scratch_store_b32 off, v0, off offset:16
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v135, off offset:836
	scratch_store_b32 off, v0, off offset:4
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v149, off offset:844
	scratch_store_b32 off, v0, off offset:8
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v43, off offset:856 ; 4-byte Folded Spill
	v_mov_b32_e32 v43, 0
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s52, s48, 5
	s_mov_b32 s51, s49
	s_mov_b32 s49, s26
	s_mov_b32 s26, s35
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s1, s52
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s51, v148
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s35, v44
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v38, off offset:300
	scratch_store_b32 off, v15, off offset:256
	scratch_store_b32 off, v14, off offset:296
	scratch_store_b32 off, v56, off offset:252
	scratch_store_b32 off, v55, off offset:248
	scratch_store_b32 off, v54, off offset:244
	scratch_store_b32 off, v43, off offset:240
	scratch_store_b32 off, v42, off offset:236
	scratch_store_b32 off, v41, off offset:232
	scratch_store_b32 off, v40, off offset:228
	scratch_store_b32 off, v37, off offset:224
	scratch_store_b32 off, v22, off offset:220
	scratch_store_b32 off, v4, off offset:216
	scratch_store_b32 off, v34, off offset:212
	scratch_store_b32 off, v32, off offset:208
	scratch_store_b32 off, v59, off offset:204
	scratch_store_b32 off, v31, off offset:200
	scratch_store_b32 off, v24, off offset:196
	scratch_store_b32 off, v23, off offset:192
	scratch_store_b32 off, v21, off offset:188
	scratch_store_b32 off, v45, off offset:184
	scratch_store_b32 off, v17, off offset:180
	scratch_store_b32 off, v176, off offset:292
	scratch_store_b32 off, v228, off offset:288
	scratch_store_b32 off, v121, off offset:176
	scratch_store_b32 off, v9, off offset:172
	scratch_store_b32 off, v10, off offset:168
	scratch_store_b32 off, v7, off offset:164
	scratch_store_b32 off, v8, off offset:160
	scratch_store_b32 off, v169, off offset:284
	scratch_store_b32 off, v175, off offset:152
	scratch_store_b32 off, v65, off offset:148
	s_clause 0x18                           ; 100-byte Folded Spill
	scratch_store_b32 off, v5, off offset:144
	scratch_store_b32 off, v12, off offset:140
	scratch_store_b32 off, v11, off offset:136
	scratch_store_b32 off, v123, off offset:132
	scratch_store_b32 off, v36, off offset:128
	scratch_store_b32 off, v52, off offset:124
	scratch_store_b32 off, v66, off offset:120
	scratch_store_b32 off, v119, off offset:116
	scratch_store_b32 off, v13, off offset:112
	scratch_store_b32 off, v28, off offset:108
	scratch_store_b32 off, v27, off offset:104
	scratch_store_b32 off, v174, off offset:100
	scratch_store_b32 off, v173, off offset:96
	scratch_store_b32 off, v130, off offset:92
	scratch_store_b32 off, v191, off offset:88
	scratch_store_b32 off, v211, off offset:84
	scratch_store_b32 off, v129, off offset:80
	scratch_store_b32 off, v25, off offset:76
	scratch_store_b32 off, v53, off offset:72
	scratch_store_b32 off, v143, off offset:68
	scratch_store_b32 off, v146, off offset:64
	scratch_store_b32 off, v248, off offset:280
	scratch_store_b32 off, v250, off offset:276
	scratch_store_b32 off, v111, off offset:272
	scratch_store_b32 off, v115, off offset:268
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v140, s27, v148
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v148, s19
	v_mov_b32_e32 v146, s17
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[129:130], v1, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v139 offset:3328
	ds_load_u8 v2, v139 offset:3072
	scratch_load_b32 v135, off, off offset:568 ; 4-byte Folded Reload
	v_mov_b32_e32 v147, s18
	v_dual_mov_b32 v145, s16 :: v_dual_mov_b32 v142, s13
	v_mov_b32_e32 v143, s14
	v_mov_b32_e32 v141, s12
	v_mov_b32_e32 v169, v126
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s27, s49, 31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v144, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s27, s27, 25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s49, s49, s27
	s_ashr_i32 s49, s49, 7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s51, s49, s34
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
	v_add_nc_u32_e32 v5, s50, v135
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
	v_add_nc_u32_e32 v157, s50, v145
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s50, s35, s34
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s27, s50, s22
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[145:148], v157
	ds_load_b128 v[149:152], v157 offset:512
	ds_load_b128 v[153:156], v157 offset:1024
	ds_load_b128 v[157:160], v157 offset:1536
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s50, s27, s23
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s49, s44
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s10, s10, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s10, 2
	s_cselect_b32 s10, s10, 0
	s_add_i32 s52, s48, 1
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
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
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
	scratch_store_b32 off, v113, off offset:372 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v116
	v_cvt_f32_i32_e32 v116, v41
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v98, v98
	scratch_store_b32 off, v58, off offset:552 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v141, v139, 0xc0c0004
	ds_load_u8 v141, v140 offset:7936
	ds_load_u8 v142, v140 offset:7680
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
	v_wmma_i32_16x16x16_iu8 v[65:72], v[141:144], v[153:156], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[141:144], v[157:160], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[141:144], v[145:148], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[141:144], v[149:152], v[89:96] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v142, v61
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v41, v66
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v97, off offset:436 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v100
	scratch_store_b32 off, v113, off offset:376 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v115
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v41, off offset:520 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v65
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v100, v26
	v_cvt_f32_i32_e32 v141, v64
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v161, v139, 0xc0c0004
	ds_load_u8 v161, v140 offset:8064
	ds_load_u8 v162, v140 offset:7808
	scratch_store_b32 off, v41, off offset:536 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v68
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v97, off offset:440 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v99
	scratch_store_b32 off, v113, off offset:380 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v118
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v41, off offset:524 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v67
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v99, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v41, off offset:540 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v70
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v97, off offset:444 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v102
	scratch_store_b32 off, v113, off offset:384 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v117
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v41, off offset:528 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v140 offset:6528
	ds_load_u8 v164, v140 offset:6272
	v_cvt_f32_i32_e32 v41, v69
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v117, v42
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v102, v35
	v_lshl_or_b32 v167, v161, 16, v139
	ds_load_u8 v139, v140 offset:5504
	ds_load_u8 v161, v140 offset:5248
	scratch_store_b32 off, v41, off offset:544 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v72
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v97, off offset:448 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v101
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v101, v33
	scratch_load_b32 v33, off, off offset:572 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v113, off offset:388 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v120
	scratch_store_b32 off, v97, off offset:456 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v104
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v41, off offset:532 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v71
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v113, off offset:392 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v119
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v162, v164, v162, 0xc0c0004
	ds_load_u8 v164, v140 offset:7040
	ds_load_u8 v165, v140 offset:6784
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v97, off offset:460 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v103
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v113, off offset:396 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v161, v139, 0xc0c0004
	v_cvt_f32_i32_e32 v113, v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v73, off offset:452
	scratch_store_b32 off, v41, off offset:548
	scratch_store_b32 off, v97, off offset:464
	v_cvt_f32_i32_e32 v73, v76
	scratch_store_b32 off, v74, off offset:500 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v119, v59
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v103, v37
	v_cvt_f32_i32_e32 v104, v39
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
	v_cvt_f32_i32_e32 v140, v63
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[105:112], v[164:167], v[145:148], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[164:167], v[149:152], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[164:167], v[153:156], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[164:167], v[157:160], v[17:24] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v165, v1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v1, v133, s51, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v166, v4
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v4, v132, s49, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v97, v106
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v113, off offset:304
	scratch_store_b32 off, v114, off offset:368
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v113, v121
	scratch_store_b32 off, v97, off offset:336 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v105
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v1, v1, s[40:43], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v164, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v113, off offset:320
	scratch_store_b32 off, v98, off offset:432
	scratch_store_b32 off, v97, off offset:352
	v_cvt_f32_i32_e32 v113, v124
	v_cvt_f32_i32_e32 v97, v108
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v2, v251, s49, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v167, v3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v3, v131, s49, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v113, off offset:308 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v123
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v123, v57
	v_cvt_f32_i32_e32 v57, v60
	scratch_store_b32 off, v73, off offset:504 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v73, v78
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v57, off offset:556 ; 4-byte Folded Spill
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v57, v82
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v73, off offset:508 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v73, v80
	v_cvt_f32_i32_e32 v98, v28
	v_cvt_f32_i32_e32 v147, v32
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	scratch_store_b32 off, v57, off offset:468 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v57, v81
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v73, off offset:512 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v73, v79
	v_cvt_f32_i32_e32 v148, v31
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v106, v34
	scratch_store_b32 off, v57, off offset:484 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v57, v84
	scratch_store_b32 off, v73, off offset:516 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v73, v90
	scratch_store_b32 off, v97, off offset:340 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v107
	scratch_store_b32 off, v113, off offset:324 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v113, v126
	scratch_store_b32 off, v73, off offset:400 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v73, v89
	scratch_store_b32 off, v97, off offset:356 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v110
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v113, off offset:312
	scratch_store_b32 off, v57, off offset:472
	scratch_store_b32 off, v73, off offset:416
	v_cvt_f32_i32_e32 v73, v92
	v_cvt_f32_i32_e32 v113, v125
	scratch_store_b32 off, v97, off offset:344 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v109
	v_cvt_f32_i32_e32 v57, v83
	scratch_store_b32 off, v73, off offset:404 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v73, v91
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v113, off offset:328
	scratch_store_b32 off, v97, off offset:360
	scratch_store_b32 off, v57, off offset:488
	v_cvt_f32_i32_e32 v113, v128
	v_cvt_f32_i32_e32 v97, v112
	scratch_store_b32 off, v73, off offset:420 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v73, v94
	v_cvt_f32_i32_e32 v57, v86
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v113, off offset:316
	scratch_store_b32 off, v97, off offset:348
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v91, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v73, off offset:408
	scratch_store_b32 off, v57, off offset:476
	v_cvt_f32_i32_e32 v73, v93
	v_cvt_f32_i32_e32 v57, v85
	v_dual_mov_b32 v86, v183 :: v_dual_add_nc_u32 v5, s23, v133
	v_cvt_f32_i32_e32 v113, v127
	v_cvt_f32_i32_e32 v97, v111
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v73, off offset:424
	scratch_store_b32 off, v57, off offset:492
	v_cvt_f32_i32_e32 v73, v96
	v_cvt_f32_i32_e32 v57, v88
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v5, v5, s51, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v113, off offset:332
	scratch_store_b32 off, v97, off offset:364
	scratch_store_b32 off, v73, off offset:412
	scratch_store_b32 off, v57, off offset:480
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v73, v95
	v_cvt_f32_i32_e32 v57, v87
	v_mov_b32_e32 v84, v180
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v97, v27
	v_cvt_f32_i32_e32 v96, v30
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v73, off offset:428
	scratch_store_b32 off, v57, off offset:496
	v_cvt_f32_i32_e32 v95, v29
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v93, v18
	v_cvt_f32_i32_e32 v151, v17
	v_cvt_f32_i32_e32 v94, v20
	v_cvt_f32_i32_e32 v152, v19
	v_cvt_f32_i32_e32 v149, v22
	v_cvt_f32_i32_e32 v153, v21
	v_cvt_f32_i32_e32 v150, v24
	v_cvt_f32_i32_e32 v154, v23
	v_mov_b32_e32 v88, v177
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v155, v10
	v_cvt_f32_i32_e32 v156, v9
	v_cvt_f32_i32_e32 v157, v12
	v_cvt_f32_i32_e32 v158, v11
	v_cvt_f32_i32_e32 v159, v14
	v_cvt_f32_i32_e32 v160, v13
	v_cvt_f32_i32_e32 v92, v6
	v_cvt_f32_i32_e32 v90, v8
	v_cvt_f32_i32_e32 v89, v7
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v105, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v126, v75
	v_cvt_f32_i32_e32 v121, v77
	v_cvt_f32_i32_e32 v145, v62
	v_cvt_f32_i32_e32 v114, v44
	v_cvt_f32_i32_e32 v113, v43
	v_cvt_f32_i32_e32 v112, v46
	v_cvt_f32_i32_e32 v111, v45
	v_cvt_f32_i32_e32 v110, v48
	v_cvt_f32_i32_e32 v109, v47
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v127, v50
	v_cvt_f32_i32_e32 v122, v49
	v_cvt_f32_i32_e32 v125, v52
	v_cvt_f32_i32_e32 v124, v51
	v_cvt_f32_i32_e32 v128, v54
	v_cvt_f32_i32_e32 v118, v53
	v_cvt_f32_i32_e32 v139, v56
	v_cvt_f32_i32_e32 v120, v55
	v_cvt_f32_i32_e32 v107, v38
	v_cvt_f32_i32_e32 v108, v40
	v_mov_b32_e32 v80, v193
	v_mov_b32_e32 v82, v179
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v50, v136 :: v_dual_lshlrev_b32 v1, 16, v1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v33, v1 offset:36864
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v163, s49, 1
	s_mov_b32 s49, s46
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x3
	buffer_load_u16 v173, v1, s[36:39], 0 offen
	buffer_load_u16 v174, v2, s[36:39], 0 offen
	buffer_load_u16 v175, v3, s[36:39], 0 offen
	buffer_load_u16 v176, v4, s[36:39], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s27, v134
	v_add_nc_u32_e32 v2, s27, v136
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v3, s50, v134
	v_add_nc_u32_e32 v4, s50, v136
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[17:20], v1, s[28:31], 0 offen
	buffer_load_b128 v[21:24], v2, s[28:31], 0 offen
	buffer_load_b128 v[25:28], v3, s[28:31], 0 offen
	buffer_load_b128 v[29:32], v4, s[28:31], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v177, v5, s[40:43], 0 offen
	scratch_load_b32 v34, off, off offset:576 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(0)
	ds_load_b128 v[13:16], v34 offset:36864
	ds_load_b128 v[9:12], v34 offset:36880
	ds_load_b128 v[5:8], v34 offset:37376
	ds_load_b128 v[1:4], v34 offset:37392
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v177, 16, v177
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s27, s10, 11
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s51, s27, 0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_barrier
	ds_store_b32 v33, v177 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v193, s51, v138
	v_mov_b32_e32 v81, v178
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_load_b128 v[177:180], v34 offset:36864
	v_mov_b32_e32 v83, v181
	v_mov_b32_e32 v85, v182
	v_mov_b32_e32 v87, v184
	ds_load_b128 v[181:184], v34 offset:36880
	ds_load_b128 v[185:188], v34 offset:37376
	ds_load_b128 v[189:192], v34 offset:37392
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s27, s10, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b64 v193, v[129:130] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s46, s27, 0
	s_mov_b32 s50, s47
	v_add_nc_u32_e32 v129, s46, v137
	ds_store_b128 v129, v[17:20]
	ds_store_b128 v129, v[21:24] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v129, v[25:28] offset:16384
	ds_store_b128 v129, v[29:32] offset:20480
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v18, 16, v174
	v_lshlrev_b32_e32 v17, 16, v173
	v_dual_mov_b32 v211, v252 :: v_dual_lshlrev_b32 v20, 16, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v31, v134 :: v_dual_mul_f32 v36, v11, v18
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v130, v9, v17 :: v_dual_lshlrev_b32 v19, 16, v175
	v_mul_f32_e32 v45, v14, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v143, v13, v17 :: v_dual_mul_f32 v72, v12, v20
	v_dual_mul_f32 v115, v16, v17 :: v_dual_mul_f32 v68, v9, v20
	v_dual_mul_f32 v146, v15, v17 :: v_dual_mul_f32 v65, v14, v18
	v_mul_f32_e32 v174, v11, v17
	v_mul_f32_e32 v52, v13, v18
	v_mul_f32_e32 v66, v16, v18
	v_mul_f32_e32 v54, v15, v18
	v_mul_f32_e32 v74, v14, v19
	v_dual_mul_f32 v67, v13, v19 :: v_dual_mul_f32 v70, v11, v20
	v_mul_f32_e32 v71, v16, v19
	v_dual_mul_f32 v69, v15, v19 :: v_dual_mul_f32 v28, v6, v18
	v_mul_f32_e32 v78, v14, v20
	v_mul_f32_e32 v76, v13, v20
	v_mul_f32_e32 v79, v16, v20
	v_dual_mul_f32 v77, v15, v20 :: v_dual_mul_f32 v40, v6, v19
	v_dual_mul_f32 v129, v10, v17 :: v_dual_mul_f32 v56, v5, v20
	v_dual_mul_f32 v173, v12, v17 :: v_dual_mul_f32 v62, v6, v20
	v_mul_f32_e32 v175, v10, v18
	v_mul_f32_e32 v176, v9, v18
	v_dual_mul_f32 v193, v12, v18 :: v_dual_mul_f32 v24, v1, v19
	v_mul_f32_e32 v59, v10, v19
	v_dual_mul_f32 v53, v9, v19 :: v_dual_mul_f32 v218, v3, v18
	v_mul_f32_e32 v64, v12, v19
	v_dual_mul_f32 v55, v11, v19 :: v_dual_mul_f32 v216, v1, v18
	v_dual_mul_f32 v73, v10, v20 :: v_dual_mul_f32 v134, v4, v19
	v_mul_f32_e32 v12, v6, v17
	v_dual_mul_f32 v9, v5, v17 :: v_dual_mul_f32 v42, v4, v20
	v_dual_mul_f32 v11, v8, v17 :: v_dual_mul_f32 v34, v1, v20
	v_dual_mul_f32 v10, v7, v17 :: v_dual_mul_f32 v25, v5, v18
	s_waitcnt lgkmcnt(8)
	v_dual_mul_f32 v27, v8, v18 :: v_dual_mul_f32 v136, v178, v17
	v_dual_mul_f32 v23, v7, v18 :: v_dual_mul_f32 v228, v177, v19
	v_dual_mul_f32 v39, v5, v19 :: v_dual_mul_f32 v38, v179, v17
	v_dual_mul_f32 v43, v8, v19 :: v_dual_mul_f32 v58, v177, v18
	v_mul_f32_e32 v33, v7, v19
	v_dual_mul_f32 v61, v8, v20 :: v_dual_mul_f32 v230, v179, v19
	s_waitcnt lgkmcnt(7)
	v_dual_mul_f32 v57, v7, v20 :: v_dual_mul_f32 v22, v181, v17
	v_mul_f32_e32 v7, v2, v17
	v_mul_f32_e32 v6, v1, v17
	v_mul_f32_e32 v8, v4, v17
	v_dual_mul_f32 v5, v3, v17 :: v_dual_mul_f32 v236, v181, v18
	v_dual_mul_f32 v13, v2, v18 :: v_dual_mul_f32 v32, v184, v17
	v_dual_mul_f32 v217, v4, v18 :: v_dual_mul_f32 v240, v181, v19
	v_dual_mul_f32 v219, v2, v19 :: v_dual_mul_f32 v48, v184, v18
	v_mul_f32_e32 v135, v3, v19
	v_dual_mul_f32 v47, v2, v20 :: v_dual_mul_f32 v242, v183, v19
	s_waitcnt lgkmcnt(6)
	v_dual_mul_f32 v37, v3, v20 :: v_dual_mul_f32 v14, v186, v17
	v_mov_b32_e32 v49, v137
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v137, v177, v17 :: v_dual_mov_b32 v4, v244
	v_dual_mul_f32 v41, v180, v17 :: v_dual_mul_f32 v248, v185, v18
	v_dual_mul_f32 v223, v178, v18 :: v_dual_mul_f32 v244, v185, v17
	v_dual_mul_f32 v63, v180, v18 :: v_dual_mul_f32 v2, v187, v17
	v_dual_mul_f32 v51, v179, v18 :: v_dual_mul_f32 v170, v186, v19
	v_dual_mul_f32 v75, v178, v19 :: v_dual_mul_f32 v250, v187, v18
	v_dual_mul_f32 v229, v180, v19 :: v_dual_mul_f32 v178, v178, v20
	v_dual_mul_f32 v177, v177, v20 :: v_dual_mul_f32 v46, v188, v19
	v_mul_f32_e32 v180, v180, v20
	v_dual_mul_f32 v179, v179, v20 :: v_dual_mul_f32 v252, v185, v19
	v_mul_f32_e32 v231, v182, v17
	s_waitcnt lgkmcnt(5)
	v_dual_mul_f32 v21, v183, v17 :: v_dual_mul_f32 v254, v190, v18
	v_mul_f32_e32 v44, v182, v18
	v_dual_mul_f32 v238, v183, v18 :: v_dual_mul_f32 v239, v182, v19
	v_mul_f32_e32 v16, v192, v18
	v_dual_mul_f32 v241, v184, v19 :: v_dual_mul_f32 v182, v182, v20
	v_dual_mul_f32 v181, v181, v20 :: v_dual_mul_f32 v30, v192, v19
	v_mul_f32_e32 v184, v184, v20
	v_dual_mul_f32 v183, v183, v20 :: v_dual_mul_f32 v26, v189, v19
	v_mul_f32_e32 v15, v188, v17
	v_mul_f32_e32 v247, v186, v18
	v_mul_f32_e32 v249, v188, v18
	v_dual_mul_f32 v35, v187, v19 :: v_dual_fmac_f32 v168, v54, v126
	v_mul_f32_e32 v186, v186, v20
	v_mul_f32_e32 v185, v185, v20
	v_mul_f32_e32 v188, v188, v20
	v_mul_f32_e32 v187, v187, v20
	v_mul_f32_e32 v1, v190, v17
	v_mul_f32_e32 v253, v189, v17
	v_mul_f32_e32 v255, v192, v17
	v_mul_f32_e32 v17, v191, v17
	v_mul_f32_e32 v3, v189, v18
	v_dual_mul_f32 v18, v191, v18 :: v_dual_mul_f32 v29, v190, v19
	v_dual_mul_f32 v19, v191, v19 :: v_dual_mul_f32 v190, v190, v20
	v_mul_f32_e32 v189, v189, v20
	v_mul_f32_e32 v192, v192, v20
	v_mul_f32_e32 v20, v191, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v60, off, off offset:156
	scratch_load_b32 v191, off, off offset:12
	scratch_load_b32 v144, off, off offset:372
	scratch_load_b32 v54, off, off offset:244
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v203, v184, v108
	v_fmac_f32_e32 v207, v182, v107
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v209, v79, v157
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v215, v178, v106 :: v_dual_mov_b32 v178, v81
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v201, v72, v161 :: v_dual_fmac_f32 v210, v179, v102
	v_dual_fmac_f32 v195, v47, v92 :: v_dual_fmac_f32 v214, v177, v101
	v_mov_b32_e32 v177, v88
	v_mov_b32_e32 v179, v82
	s_mov_b32 s27, s45
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s47, s51, 0x8000
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s45, s46, 0x4000
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v177, v20, v154
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s48, s11
	s_mov_b32 s48, s52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v0, v219, v96
	v_fmac_f32_e32 v212, v76, v156
	v_fmac_f32_e32 v220, v135, v148
	scratch_load_b32 v148, off, off offset:560 ; 4-byte Folded Reload
	v_fmac_f32_e32 v204, v68, v160
	v_fmac_f32_e32 v200, v70, v162
	v_mov_b32_e32 v182, v85
	v_fmac_f32_e32 v208, v77, v158
	v_fmac_f32_e32 v198, v56, v165
	scratch_load_b32 v56, off, off offset:252 ; 4-byte Folded Reload
	v_fmac_f32_e32 v196, v57, v167
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v222, v30, v139
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v194, v34, v91
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v202, v183, v104 :: v_dual_mov_b32 v183, v86
	v_dual_fmac_f32 v206, v181, v103 :: v_dual_mov_b32 v181, v83
	v_mov_b32_e32 v184, v87
	v_fmac_f32_e32 v182, v188, v94
	v_fmac_f32_e32 v178, v192, v150
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v184, v186, v93
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v60, v37, v89 :: v_dual_fmac_f32 v191, v143, v144
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v60, off offset:156
	scratch_store_b32 off, v191, off offset:12
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v143, off, off offset:16
	scratch_load_b32 v191, off, off offset:368
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v143, v45, v191
	scratch_store_b32 off, v143, off offset:16 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:60
	scratch_load_b32 v143, off, off offset:380
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v45, v146, v143
	scratch_store_b32 off, v45, off offset:60 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:260
	scratch_load_b32 v143, off, off offset:376
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v45, v115, v143
	scratch_store_b32 off, v45, off offset:260 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:4
	scratch_load_b32 v115, off, off offset:388
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v45, v130, v115
	scratch_store_b32 off, v45, off offset:4 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:8
	scratch_load_b32 v115, off, off offset:384
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v45, v129, v115
	scratch_store_b32 off, v45, off offset:8 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v115, off, off offset:268
	scratch_load_b32 v45, off, off offset:56
	scratch_load_b32 v129, off, off offset:396
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v115, v134, v147 :: v_dual_mov_b32 v134, v31
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v45, v174, v129
	scratch_store_b32 off, v45, off offset:56 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off
	scratch_load_b32 v129, off, off offset:392
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v45, v173, v129
	scratch_store_b32 off, v45, off         ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:52
	scratch_load_b32 v129, off, off offset:436
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v45, v9, v129
	scratch_load_b32 v129, off, off offset:80 ; 4-byte Folded Reload
	scratch_store_b32 off, v45, off offset:52 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v191, off, off offset:88
	scratch_load_b32 v9, off, off offset:48
	scratch_load_b32 v45, off, off offset:432
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v191, v252, v122
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v9, v12, v45
	scratch_load_b32 v45, off, off offset:184 ; 4-byte Folded Reload
	scratch_store_b32 off, v9, off offset:48 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v174, off, off offset:100
	scratch_load_b32 v9, off, off offset:36
	scratch_load_b32 v12, off, off offset:444
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v174, v64, v110 :: v_dual_fmac_f32 v179, v189, v153
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v9, v10, v12
	scratch_store_b32 off, v9, off offset:36 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v130, off, off offset:92
	scratch_load_b32 v9, off, off offset:32
	scratch_load_b32 v10, off, off offset:440
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v130, v170, v127 :: v_dual_fmac_f32 v9, v11, v10
	scratch_store_b32 off, v9, off offset:32 ; 4-byte Folded Spill
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v173, off, off offset:96
	scratch_load_b32 v9, off, off offset:44
	scratch_load_b32 v10, off, off offset:456
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v173, v55, v109
	scratch_load_b32 v55, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v9, v6, v10
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:168
	scratch_load_b32 v144, off, off offset:272
	scratch_store_b32 off, v9, off offset:44 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v143, off, off offset:68
	scratch_load_b32 v6, off, off offset:40
	scratch_load_b32 v9, off, off offset:448
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v144, v24, v95
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:224
	scratch_load_b32 v24, off, off offset:196
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v143, v43, v98
	scratch_load_b32 v43, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v6, v7, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:28
	scratch_load_b32 v9, off, off offset:464
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v183, v185, v151
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v7, v5, v9
	scratch_store_b32 off, v7, off offset:28 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v146, off, off offset:64
	scratch_load_b32 v5, off, off offset:24
	scratch_load_b32 v7, off, off offset:460
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v146, v33, v97 :: v_dual_fmac_f32 v5, v8, v7
	scratch_store_b32 off, v6, off offset:40 ; 4-byte Folded Spill
	v_mov_b32_e32 v6, v211
	scratch_store_b32 off, v5, off offset:24 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v211, off, off offset:84
	scratch_load_b32 v5, off, off offset:264
	scratch_load_b32 v7, off, off offset:452
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v6, v180, v105
	v_mov_b32_e32 v180, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v252, v6
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v180, v190, v149 :: v_dual_fmac_f32 v211, v40, v100
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v5, v52, v7
	scratch_store_b32 off, v5, off offset:264 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v8, off, off offset:160
	scratch_load_b32 v5, off, off offset:20
	scratch_load_b32 v7, off, off offset:500
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v5, v65, v7
	scratch_load_b32 v65, off, off offset:148 ; 4-byte Folded Reload
	scratch_store_b32 off, v5, off offset:20 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:164
	scratch_load_b32 v5, off, off offset:504
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v169, v66, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v126, v169
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:172
	scratch_load_b32 v169, off, off offset:284
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v181, v187, v152
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v9, v176, v121
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v121, off, off offset:176
	scratch_load_b32 v5, off, off offset:508
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v169, v25, v123
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v121, v175, v5
	scratch_load_b32 v5, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v7, v36, v5
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v176, off, off offset:292
	scratch_load_b32 v175, off, off offset:152
	scratch_load_b32 v5, off, off offset:512
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v175, v23, v119 :: v_dual_fmac_f32 v10, v193, v5
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v5, off, off offset:144
	scratch_load_b32 v12, off, off offset:140
	scratch_load_b32 v11, off, off offset:136
	scratch_load_b32 v123, off, off offset:132
	scratch_load_b32 v36, off, off offset:128
	scratch_load_b32 v52, off, off offset:124
	scratch_load_b32 v66, off, off offset:120
	scratch_load_b32 v25, off, off offset:552
	v_mov_b32_e32 v193, v80
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v119, off, off offset:116
	scratch_load_b32 v23, off, off offset:556
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v193, v42, v90 :: v_dual_fmac_f32 v12, v217, v141
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v221, v19, v120
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v36, v67, v116
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v52, v71, v114
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v66, v69, v113
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v8, v28, v25
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v42, off, off offset:236
	scratch_load_b32 v34, off, off offset:212
	scratch_load_b32 v25, off, off offset:320
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v171, v27, v23
	scratch_load_b32 v23, off, off offset:192 ; 4-byte Folded Reload
	v_fmac_f32_e32 v65, v13, v145
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v13, off, off offset:112
	scratch_load_b32 v28, off, off offset:108
	scratch_load_b32 v27, off, off offset:104
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v54, v137, v25
	scratch_load_b32 v25, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v13, v59, v112
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:228
	scratch_load_b32 v59, off, off offset:204
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v28, v53, v111
	scratch_load_b32 v53, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v137, v49 :: v_dual_fmac_f32 v56, v136, v25
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v25, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v136, v50 :: v_dual_fmac_f32 v53, v35, v124
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v43, v38, v25
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v38, off, off offset:300
	scratch_load_b32 v31, off, off offset:200
	scratch_load_b32 v25, off, off offset:76
	scratch_load_b32 v33, off, off offset:308
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v25, v46, v125
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v55, v41, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:232
	scratch_load_b32 v33, off, off offset:328
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v41, v22, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:220
	scratch_load_b32 v33, off, off offset:312
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v42, v231, v33
	scratch_load_b32 v33, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v37, v21, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:188
	scratch_load_b32 v33, off, off offset:316
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v40, v32, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off offset:208
	scratch_load_b32 v33, off, off offset:352
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v22, v244, v33
	v_mov_b32_e32 v244, v4
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:216
	scratch_load_b32 v33, off, off offset:336
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v172, v14, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:296
	scratch_load_b32 v33, off, off offset:356
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v38, v2, v33
	scratch_load_b32 v2, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v4, v15, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:256
	scratch_load_b32 v2, off, off offset:360
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v14, v253, v2
	scratch_load_b32 v2, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v15, v1, v2
	scratch_load_b32 v1, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v245, v17, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:180
	scratch_load_b32 v1, off, off offset:348
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v5, v216, v142 :: v_dual_fmac_f32 v246, v255, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v1, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v243, v58, v1
	scratch_load_b32 v1, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v11, v218, v140 :: v_dual_fmac_f32 v244, v223, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v1, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v32, v51, v1
	scratch_load_b32 v1, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v111, v144 :: v_dual_fmac_f32 v34, v63, v1
	scratch_load_b32 v1, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v31, v236, v1
	scratch_load_b32 v1, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v59, v44, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v44, off, off offset:564
	scratch_load_b32 v1, off, off offset:428
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v24, v238, v1
	scratch_load_b32 v1, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v237, v48, v1
	scratch_load_b32 v1, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v21, v248, v1
	scratch_load_b32 v1, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v23, v247, v1
	scratch_load_b32 v1, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v233, v250, v1
	scratch_load_b32 v1, off, off offset:472 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v129, v39, v99 :: v_dual_fmac_f32 v234, v249, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v1, off, off offset:492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v17, v3, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v250, off, off offset:276
	scratch_load_b32 v1, off, off offset:476
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v250, v26, v118
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v45, v254, v1
	scratch_load_b32 v1, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v235, v18, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v248, off, off offset:280
	scratch_load_b32 v1, off, off offset:480
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v123, v74, v117 :: v_dual_fmac_f32 v248, v29, v128
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v232, v16, v1
	scratch_load_b32 v1, off, off offset:536 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v213, v78, v155 :: v_dual_fmac_f32 v226, v228, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v1, off, off offset:520 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v227, v75, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v228, off, off offset:288
	scratch_load_b32 v1, off, off offset:540
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v205, v73, v159 :: v_dual_fmac_f32 v176, v230, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v1, off, off offset:524 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v199, v62, v164 :: v_dual_fmac_f32 v224, v229, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v1, off, off offset:544 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v225, v240, v1
	scratch_load_b32 v1, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v197, v61, v166 :: v_dual_fmac_f32 v228, v239, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v1, off, off offset:548 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v27, v242, v1
	scratch_load_b32 v1, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v119, v241, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x17                           ; 96-byte Folded Reload
	scratch_load_b32 v186, off, off offset:264
	scratch_load_b32 v106, off, off offset:20
	scratch_load_b32 v108, off, off offset:28
	scratch_load_b32 v107, off, off offset:24
	scratch_load_b32 v154, off, off offset:44
	scratch_load_b32 v153, off, off offset:40
	scratch_load_b32 v152, off, off offset:36
	scratch_load_b32 v151, off, off offset:32
	scratch_load_b32 v156, off, off offset:52
	scratch_load_b32 v155, off, off offset:48
	scratch_load_b32 v185, off, off offset:56
	scratch_load_b32 v68, off, off
	scratch_load_b32 v69, off, off offset:4
	scratch_load_b32 v70, off, off offset:8
	scratch_load_b32 v71, off, off offset:60
	scratch_load_b32 v72, off, off offset:260
	scratch_load_b32 v2, off, off offset:12
	scratch_load_b32 v6, off, off offset:16
	scratch_load_b32 v147, off, off offset:840
	scratch_load_b32 v149, off, off offset:844
	scratch_load_b32 v150, off, off offset:848
	scratch_load_b32 v18, off, off offset:852
	scratch_load_b32 v135, off, off offset:836
	scratch_load_b32 v33, off, off offset:856
	scratch_store_b32 off, v15, off offset:256 ; 4-byte Folded Spill
	v_mov_b32_e32 v249, v38
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v255, v14 :: v_dual_and_b32 v192, 15, v135
	v_and_b32_e32 v1, 4, v135
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v2, 0
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v17, off offset:832
	scratch_store_b32 off, v16, off offset:828
	scratch_store_b32 off, v15, off offset:824
	scratch_store_b32 off, v14, off offset:820
	scratch_store_b32 off, v13, off offset:816
	scratch_store_b32 off, v12, off offset:812
	scratch_store_b32 off, v11, off offset:808
	scratch_store_b32 off, v10, off offset:804
	scratch_store_b32 off, v9, off offset:800
	scratch_store_b32 off, v8, off offset:796
	scratch_store_b32 off, v7, off offset:792
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v177, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:156
	scratch_store_b32 off, v2, off offset:256
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v54, 0
	s_add_i32 s50, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s27, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
.LBB0_8:                                ; %Flow1206
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v56, off offset:252
	scratch_store_b32 off, v55, off offset:248
	scratch_store_b32 off, v54, off offset:244
	scratch_store_b32 off, v43, off offset:240
	scratch_store_b32 off, v42, off offset:236
	scratch_store_b32 off, v41, off offset:232
	scratch_store_b32 off, v40, off offset:228
	scratch_store_b32 off, v37, off offset:224
	scratch_store_b32 off, v172, off offset:476
	scratch_store_b32 off, v22, off offset:220
	scratch_store_b32 off, v4, off offset:216
	scratch_store_b32 off, v34, off offset:212
	scratch_store_b32 off, v32, off offset:208
	scratch_store_b32 off, v59, off offset:204
	scratch_store_b32 off, v31, off offset:200
	scratch_store_b32 off, v24, off offset:196
	scratch_store_b32 off, v23, off offset:192
	scratch_store_b32 off, v21, off offset:188
	scratch_store_b32 off, v45, off offset:184
	scratch_store_b32 off, v17, off offset:180
	scratch_store_b32 off, v9, off offset:172
	scratch_store_b32 off, v7, off offset:164
	scratch_store_b32 off, v10, off offset:168
	scratch_store_b32 off, v8, off offset:160
	scratch_store_b32 off, v175, off offset:152
	scratch_store_b32 off, v171, off offset:356
	scratch_store_b32 off, v5, off offset:144
	scratch_store_b32 off, v65, off offset:148
	scratch_store_b32 off, v11, off offset:136
	scratch_store_b32 off, v12, off offset:140
	scratch_store_b32 off, v36, off offset:128
	scratch_store_b32 off, v123, off offset:132
	s_clause 0x13                           ; 80-byte Folded Spill
	scratch_store_b32 off, v66, off offset:120
	scratch_store_b32 off, v52, off offset:124
	scratch_store_b32 off, v28, off offset:108
	scratch_store_b32 off, v13, off offset:112
	scratch_store_b32 off, v119, off offset:116
	scratch_store_b32 off, v27, off offset:104
	scratch_store_b32 off, v174, off offset:100
	scratch_store_b32 off, v173, off offset:96
	scratch_store_b32 off, v130, off offset:92
	scratch_store_b32 off, v191, off offset:88
	scratch_store_b32 off, v211, off offset:84
	scratch_store_b32 off, v129, off offset:80
	scratch_store_b32 off, v25, off offset:76
	scratch_store_b32 off, v53, off offset:72
	scratch_store_b32 off, v143, off offset:68
	scratch_store_b32 off, v146, off offset:64
	scratch_store_b32 off, v0, off offset:336
	scratch_store_b32 off, v6, off offset:16
	scratch_store_b32 off, v2, off offset:12
	scratch_store_b32 off, v126, off offset:360
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xa                            ; 44-byte Folded Reload
	scratch_load_b32 v247, off, off offset:792
	scratch_load_b32 v238, off, off offset:796
	scratch_load_b32 v239, off, off offset:800
	scratch_load_b32 v230, off, off offset:804
	scratch_load_b32 v241, off, off offset:808
	scratch_load_b32 v123, off, off offset:812
	scratch_load_b32 v122, off, off offset:816
	scratch_load_b32 v170, off, off offset:820
	scratch_load_b32 v188, off, off offset:824
	scratch_load_b32 v229, off, off offset:828
	scratch_load_b32 v242, off, off offset:832
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v47, 0
	v_cndmask_b32_e64 v0, 0x90, 0, vcc_lo
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v125, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v34, v0, v18
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v0, s50, v34
	v_xor_b32_e32 v35, 16, v34
	ds_load_b128 v[29:32], v0
	ds_load_b128 v[25:28], v0 offset:512
	ds_load_b128 v[21:24], v0 offset:1024
	ds_load_b128 v[17:20], v0 offset:1536
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v0, s50, v35
	ds_load_b128 v[13:16], v0
	ds_load_b128 v[9:12], v0 offset:512
	ds_load_b128 v[5:8], v0 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v0 offset:1536
	v_cndmask_b32_e64 v0, 0, 1, s2
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_mov_b32_e32 v127, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s1, 1, v0
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v103, 0
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v38, 0
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_mov_b32 s12, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v0, off, off offset:712
	scratch_load_b32 v37, off, off offset:720
	scratch_load_b32 v38, off, off offset:716
	scratch_load_b32 v36, off, off offset:708
	scratch_load_b32 v41, off, off offset:704
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v39, s49, v229
	v_add_nc_u32_e32 v40, s49, v188
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v42, s49, v242
	v_add_nc_u32_e32 v43, s49, v123
	v_add_nc_u32_e32 v44, s49, v241
	v_add_nc_u32_e32 v45, s49, v170
	v_add_nc_u32_e32 v46, s49, v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	ds_load_u8 v44, v44
	ds_load_u8 v45, v45
	ds_load_u8 v46, v46
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v47, s49, v238
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v0, s49, v0
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v37, s49, v37
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, s49, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v36, s49, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v36, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v36, off, off offset:700 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v41, s49, v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	ds_load_u8 v39, v39
	ds_load_u8 v40, v40
	ds_load_u8 v38, v38
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	v_perm_b32 v38, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v42, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:776 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v41, v46, v45, 0xc0c0004
	v_lshl_or_b32 v55, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s49, v230
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v54, v39, 16, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:772 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v37, s49, v239
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v38, v44, v43, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:784 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v53, v41, 16, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:780
	scratch_load_b32 v41, off, off offset:760
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v36, s49, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v36, v36
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v40, s49, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v36, v47, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v39, s49, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	ds_load_u8 v40, v40
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:768
	scratch_load_b32 v43, off, off offset:756
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v40, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:764 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v42, s49, v42
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v38, s49, v38
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v41, s49, v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v52, v0, 16, v36
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:748
	scratch_load_b32 v36, off, off offset:728
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v37, s49, v37
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v43, s49, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	ds_load_u8 v38, v38
	ds_load_u8 v41, v41
	ds_load_u8 v43, v43
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v40, s49, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	ds_load_u8 v40, v40
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s49, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v38, v38, v42, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v43, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v59, v38, 16, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:724 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v40, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v36, s49, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v58, v37, 16, v41
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v43, s49, v43
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s49, v38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s49, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v40
	ds_load_u8 v0, v0
	ds_load_u8 v36, v36
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v0, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:736 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v42, s49, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v38, v36, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:732 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v0, 16, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v39, s49, v39
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s49, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v56, v38, 16, v36
	v_dual_mov_b32 v43, s19 :: v_dual_mov_b32 v42, s18
	v_dual_mov_b32 v41, s17 :: v_dual_mov_b32 v40, s16
	v_dual_mov_b32 v39, s15 :: v_dual_mov_b32 v38, s14
	v_dual_mov_b32 v37, s13 :: v_dual_mov_b32 v36, s12
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[29:32], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[56:59], v[13:16], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v125, v44
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v126, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:680
	scratch_load_b32 v44, off, off offset:664
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s49, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v118, v46
	v_cvt_f32_i32_e32 v119, v47
	v_cvt_f32_i32_e32 v112, v48
	v_cvt_f32_i32_e32 v113, v49
	ds_load_u8 v0, v0
	v_cvt_f32_i32_e32 v104, v50
	v_cvt_f32_i32_e32 v105, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:648
	scratch_load_b32 v46, off, off offset:632
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	ds_load_u8 v44, v44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v47, s49, v47
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s49, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:684 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v63, v44, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s49, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:656 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s49, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v47, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v62, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:620
	scratch_load_b32 v44, off, off offset:604
	v_add_nc_u32_e32 v0, s49, v0
	scratch_load_b32 v46, off, off offset:644 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v47, s49, v47
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s49, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	ds_load_u8 v44, v44
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v44, s49, v247
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:588 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v61, v44, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:580 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v44, s49, v148
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s49, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:596 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:692 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v60, v44, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:688
	scratch_load_b32 v44, off, off offset:676
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s49, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:696 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:652 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v67, v44, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:624 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s49, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s49, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:628
	scratch_load_b32 v44, off, off offset:616
	v_add_nc_u32_e32 v0, s49, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:636 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:600 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v65, v44, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:592
	scratch_load_b32 v44, off, off offset:584
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s49, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:608 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v64, v44, 16, v0
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[25:28], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[9:12], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v127, v44
	v_cvt_f32_i32_e32 v128, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v120, v46
	v_cvt_f32_i32_e32 v124, v47
	v_cvt_f32_i32_e32 v114, v48
	v_cvt_f32_i32_e32 v116, v49
	v_cvt_f32_i32_e32 v109, v50
	v_cvt_f32_i32_e32 v110, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[25:28], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[56:59], v[9:12], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v102, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v103, v45
	v_cvt_f32_i32_e32 v100, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v101, v47
	v_cvt_f32_i32_e32 v98, v48
	v_cvt_f32_i32_e32 v99, v49
	v_cvt_f32_i32_e32 v96, v50
	v_cvt_f32_i32_e32 v97, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[21:24], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[5:8], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v94, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v95, v45
	v_cvt_f32_i32_e32 v92, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v93, v47
	v_cvt_f32_i32_e32 v90, v48
	v_cvt_f32_i32_e32 v91, v49
	v_cvt_f32_i32_e32 v88, v50
	v_cvt_f32_i32_e32 v89, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[21:24], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[56:59], v[5:8], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v86, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v87, v45
	v_cvt_f32_i32_e32 v84, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v85, v47
	v_cvt_f32_i32_e32 v83, v48
	v_cvt_f32_i32_e32 v0, v49
	v_cvt_f32_i32_e32 v81, v50
	v_cvt_f32_i32_e32 v82, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[17:20], v[36:43] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[1:4], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v79, v44
	v_cvt_f32_i32_e32 v80, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v77, v46
	v_cvt_f32_i32_e32 v78, v47
	v_cvt_f32_i32_e32 v75, v48
	v_cvt_f32_i32_e32 v76, v49
	v_cvt_f32_i32_e32 v73, v50
	v_cvt_f32_i32_e32 v74, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[29:32], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[52:55], v[17:20], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[13:16], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[56:59], v[1:4], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v0, v42
	v_cvt_f32_i32_e32 v52, v36
	v_cvt_f32_i32_e32 v53, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v36, v40
	v_cvt_f32_i32_e32 v37, v41
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v43
	v_cvt_f32_i32_e32 v42, v48
	v_cvt_f32_i32_e32 v43, v49
	v_cvt_f32_i32_e32 v40, v50
	v_cvt_f32_i32_e32 v41, v51
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v45, off offset:1116
	scratch_store_b32 off, v47, off offset:1112
	scratch_store_b32 off, v44, off offset:1108
	scratch_store_b32 off, v46, off offset:1104
	scratch_store_b32 off, v43, off offset:928
	scratch_store_b32 off, v42, off offset:924
	scratch_store_b32 off, v41, off offset:920
	scratch_store_b32 off, v40, off offset:916
	scratch_store_b32 off, v128, off offset:912
	scratch_store_b32 off, v127, off offset:908
	scratch_store_b32 off, v126, off offset:904
	scratch_store_b32 off, v124, off offset:896
	scratch_store_b32 off, v120, off offset:892
	scratch_store_b32 off, v119, off offset:888
	scratch_store_b32 off, v118, off offset:884
	scratch_store_b32 off, v116, off offset:880
	scratch_store_b32 off, v114, off offset:876
	scratch_store_b32 off, v113, off offset:872
	scratch_store_b32 off, v112, off offset:868
	scratch_store_b32 off, v105, off offset:856
	scratch_store_b32 off, v104, off offset:852
	scratch_store_b32 off, v103, off offset:848
	scratch_store_b32 off, v102, off offset:844
	scratch_store_b32 off, v101, off offset:840
	scratch_store_b32 off, v100, off offset:836
	scratch_store_b32 off, v99, off offset:576
	scratch_store_b32 off, v98, off offset:572
	scratch_store_b32 off, v97, off offset:568
	scratch_store_b32 off, v96, off offset:564
	scratch_store_b32 off, v95, off offset:560
	scratch_store_b32 off, v94, off offset:556
	scratch_store_b32 off, v93, off offset:552
	s_clause 0x14                           ; 84-byte Folded Spill
	scratch_store_b32 off, v92, off offset:548
	scratch_store_b32 off, v91, off offset:536
	scratch_store_b32 off, v90, off offset:532
	scratch_store_b32 off, v89, off offset:528
	scratch_store_b32 off, v88, off offset:524
	scratch_store_b32 off, v87, off offset:520
	scratch_store_b32 off, v86, off offset:516
	scratch_store_b32 off, v85, off offset:504
	scratch_store_b32 off, v84, off offset:500
	scratch_store_b32 off, v83, off offset:496
	scratch_store_b32 off, v82, off offset:488
	scratch_store_b32 off, v81, off offset:484
	scratch_store_b32 off, v80, off offset:440
	scratch_store_b32 off, v53, off offset:392
	scratch_store_b32 off, v52, off offset:388
	scratch_store_b32 off, v121, off offset:176
	scratch_store_b32 off, v39, off offset:316
	scratch_store_b32 off, v38, off offset:312
	scratch_store_b32 off, v37, off offset:308
	scratch_store_b32 off, v36, off offset:304
	scratch_store_b32 off, v0, off offset:300
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v128, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v38, 0
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v36, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0xb                            ; 48-byte Folded Reload
	scratch_load_b32 v0, off, off offset:684
	scratch_load_b32 v36, off, off offset:680
	scratch_load_b32 v38, off, off offset:664
	scratch_load_b32 v47, off, off offset:580
	scratch_load_b32 v37, off, off offset:672
	scratch_load_b32 v39, off, off offset:656
	scratch_load_b32 v40, off, off offset:648
	scratch_load_b32 v41, off, off offset:640
	scratch_load_b32 v42, off, off offset:632
	scratch_load_b32 v44, off, off offset:620
	scratch_load_b32 v45, off, off offset:612
	scratch_load_b32 v46, off, off offset:604
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(22)
	v_add_nc_u32_e32 v43, s27, v247
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v36, s27, v36
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v37, s27, v37
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v39, s27, v39
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v40, s27, v40
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v41, s27, v41
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v42, s27, v42
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v44, s27, v44
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s27, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s27, v46
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
	scratch_load_b32 v42, off, off offset:596 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v40, off, off offset:588 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v38, s27, v38
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v36, off, off offset:720 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v62, v39, 16, v41
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v47, s27, v47
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v41, off, off offset:716 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v61, v43, 16, v45
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v43, s27, v188
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v38, s27, v148
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v47, v47
	ds_load_u8 v38, v38
	v_lshl_or_b32 v63, v0, 16, v37
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:712
	scratch_load_b32 v37, off, off offset:708
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v47, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v42, s27, v42
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v40, s27, v40
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v42
	ds_load_u8 v40, v40
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v42, s27, v229
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v36, s27, v36
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v41, s27, v41
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v36, v36
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v40, off, off offset:704 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v60, v39, 16, v38
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v38, off, off offset:700 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v37, s27, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v41, v36, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v41, s27, v123
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v43, s27, v241
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v41, v41
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v37, s27, v242
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v67, v36, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s27, v122
	v_add_nc_u32_e32 v36, s27, v238
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v40, s27, v40
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v40, v40
	ds_load_u8 v37, v37
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s27, v38
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v40, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v40, s27, v170
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v40
	ds_load_u8 v0, v0
	ds_load_u8 v36, v36
	ds_load_u8 v38, v38
	v_lshl_or_b32 v66, v37, 16, v42
	v_perm_b32 v37, v43, v41, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v0, v39, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v39, s27, v230
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v38, v36, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v38, s27, v239
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	ds_load_u8 v38, v38
	v_lshl_or_b32 v65, v0, 16, v37
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:688 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v64, v38, 16, v36
	v_dual_mov_b32 v43, s19 :: v_dual_mov_b32 v42, s18
	v_dual_mov_b32 v41, s17 :: v_dual_mov_b32 v40, s16
	v_dual_mov_b32 v39, s15 :: v_dual_mov_b32 v38, s14
	v_dual_mov_b32 v37, s13 :: v_dual_mov_b32 v36, s12
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[29:32], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[64:67], v[29:32], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[60:63], v[25:28], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[64:67], v[25:28], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[60:63], v[21:24], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[64:67], v[21:24], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[60:63], v[17:20], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[64:67], v[17:20], v[36:43] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v18, off, off offset:692
	scratch_load_b32 v17, off, off offset:676
	scratch_load_b32 v20, off, off offset:660
	scratch_load_b32 v19, off, off offset:644
	scratch_load_b32 v24, off, off offset:764
	scratch_load_b32 v22, off, off offset:780
	scratch_load_b32 v21, off, off offset:600
	scratch_load_b32 v60, off, off offset:732
	scratch_load_b32 v23, off, off offset:756
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v0, s27, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v18, s27, v18
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v17, s27, v17
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v20, s27, v20
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v19, s27, v19
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v24, s27, v24
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	ds_load_u8 v20, v20
	ds_load_u8 v19, v19
	ds_load_u8 v24, v24
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v22, s27, v22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v21, s27, v21
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v60, s27, v60
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s27, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	ds_load_u8 v60, v60
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v17, off, off offset:696 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s27, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v18, off, off offset:652 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s27, v18
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v19, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v19, s27, v19
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_lshl_or_b32 v20, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:624 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v19, v19, 16, v18
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:628
	scratch_load_b32 v17, off, off offset:616
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v18, s27, v18
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s27, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v17, off, off offset:636 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s27, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:592
	scratch_load_b32 v17, off, off offset:584
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s27, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v17, off, off offset:608 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s27, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v21, v17, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:772 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v17, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:776 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[44:51], v[17:20], v[13:16], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[17:20], v[9:12], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[17:20], v[5:8], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[17:20], v[1:4], v[139:146] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v129, v44
	v_cvt_f32_i32_e32 v240, v82
	v_cvt_f32_i32_e32 v130, v83
	v_cvt_f32_i32_e32 v236, v84
	v_cvt_f32_i32_e32 v116, v85
	v_cvt_f32_i32_e32 v159, v86
	v_cvt_f32_i32_e32 v136, v87
	v_cvt_f32_i32_e32 v157, v88
	v_cvt_f32_i32_e32 v158, v89
	v_cvt_f32_i32_e32 v86, v31
	v_cvt_f32_i32_e32 v88, v32
	v_cvt_f32_i32_e32 v127, v141
	v_cvt_f32_i32_e32 v128, v142
	v_cvt_f32_i32_e32 v87, v47
	v_cvt_f32_i32_e32 v85, v48
	v_cvt_f32_i32_e32 v89, v49
	v_cvt_f32_i32_e32 v82, v50
	v_cvt_f32_i32_e32 v83, v51
	v_cvt_f32_i32_e32 v134, v45
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, s27, v21
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s27, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:784 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s27, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v22, off, off offset:760 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s27, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v23, off, off offset:768 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s27, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	v_lshl_or_b32 v24, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v23, v23, 16, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:748
	scratch_load_b32 v21, off, off offset:740
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v22, s27, v22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s27, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s27, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:728
	scratch_load_b32 v21, off, off offset:724
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s27, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:736 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s27, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v60, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v21, v21, 16, v0
	v_wmma_i32_16x16x16_iu8 v[36:43], v[21:24], v[1:4], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[21:24], v[13:16], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[21:24], v[9:12], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[21:24], v[5:8], v[98:105] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v0, v38
	v_cvt_f32_i32_e32 v80, v52
	v_cvt_f32_i32_e32 v81, v53
	v_cvt_f32_i32_e32 v113, v54
	v_cvt_f32_i32_e32 v114, v55
	v_cvt_f32_i32_e32 v231, v56
	v_cvt_f32_i32_e32 v112, v57
	v_cvt_f32_i32_e32 v137, v58
	v_cvt_f32_i32_e32 v138, v59
	v_cvt_f32_i32_e32 v124, v90
	v_cvt_f32_i32_e32 v126, v91
	v_cvt_f32_i32_e32 v120, v92
	v_cvt_f32_i32_e32 v121, v93
	v_cvt_f32_i32_e32 v118, v94
	v_cvt_f32_i32_e32 v119, v95
	v_cvt_f32_i32_e32 v117, v96
	v_cvt_f32_i32_e32 v84, v97
	v_cvt_f32_i32_e32 v95, v25
	v_cvt_f32_i32_e32 v96, v26
	v_cvt_f32_i32_e32 v93, v27
	v_cvt_f32_i32_e32 v94, v28
	v_cvt_f32_i32_e32 v91, v29
	v_cvt_f32_i32_e32 v92, v30
	v_cvt_f32_i32_e32 v66, v98
	v_cvt_f32_i32_e32 v67, v99
	v_cvt_f32_i32_e32 v64, v100
	v_cvt_f32_i32_e32 v65, v101
	v_cvt_f32_i32_e32 v62, v102
	v_cvt_f32_i32_e32 v63, v103
	v_cvt_f32_i32_e32 v60, v104
	v_cvt_f32_i32_e32 v61, v105
	v_cvt_f32_i32_e32 v58, v139
	v_cvt_f32_i32_e32 v59, v140
	v_cvt_f32_i32_e32 v56, v143
	v_cvt_f32_i32_e32 v57, v144
	v_cvt_f32_i32_e32 v54, v145
	v_cvt_f32_i32_e32 v55, v146
	v_cvt_f32_i32_e32 v52, v36
	v_cvt_f32_i32_e32 v53, v37
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v37, v40
	v_cvt_f32_i32_e32 v38, v41
	v_cvt_f32_i32_e32 v0, v42
	v_cvt_f32_i32_e32 v36, v43
	v_cvt_f32_i32_e32 v90, v46
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s26, 31
	s_clause 0x9                            ; 40-byte Folded Spill
	scratch_store_b32 off, v159, off offset:1184
	scratch_store_b32 off, v158, off offset:1180
	scratch_store_b32 off, v157, off offset:1176
	scratch_store_b32 off, v126, off offset:1172
	scratch_store_b32 off, v124, off offset:1168
	scratch_store_b32 off, v121, off offset:1164
	scratch_store_b32 off, v120, off offset:1160
	scratch_store_b32 off, v119, off offset:1156
	scratch_store_b32 off, v118, off offset:1152
	scratch_store_b32 off, v84, off offset:1148
	s_lshr_b32 s1, s1, 25
	s_mov_b32 s11, 0x31027000
	s_add_i32 s1, s26, s1
	s_mov_b32 s10, 0x7ffffffe
	s_ashr_i32 s1, s1, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s1, s34
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s44
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v133, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v84, v129 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s25, s25, 0xffff
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v117, off offset:1144
	scratch_store_b32 off, v96, off offset:1140
	scratch_store_b32 off, v95, off offset:1136
	scratch_store_b32 off, v94, off offset:1132
	scratch_store_b32 off, v93, off offset:1128
	scratch_store_b32 off, v92, off offset:1124
	scratch_store_b32 off, v91, off offset:1120
	scratch_store_b32 off, v88, off offset:968
	scratch_store_b32 off, v86, off offset:964
	scratch_store_b32 off, v67, off offset:960
	scratch_store_b32 off, v66, off offset:956
	scratch_store_b32 off, v65, off offset:952
	scratch_store_b32 off, v64, off offset:948
	scratch_store_b32 off, v63, off offset:944
	scratch_store_b32 off, v62, off offset:940
	scratch_store_b32 off, v61, off offset:936
	scratch_store_b32 off, v60, off offset:932
	scratch_store_b32 off, v125, off offset:900
	scratch_store_b32 off, v110, off offset:864
	scratch_store_b32 off, v109, off offset:860
	scratch_store_b32 off, v59, off offset:464
	scratch_store_b32 off, v58, off offset:460
	scratch_store_b32 off, v57, off offset:456
	scratch_store_b32 off, v56, off offset:452
	scratch_store_b32 off, v55, off offset:448
	scratch_store_b32 off, v54, off offset:444
	scratch_store_b32 off, v53, off offset:432
	scratch_store_b32 off, v52, off offset:428
	scratch_store_b32 off, v39, off offset:424
	scratch_store_b32 off, v38, off offset:332
	scratch_store_b32 off, v37, off offset:328
	scratch_store_b32 off, v36, off offset:324
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	v_add3_u32 v135, s22, s23, v135
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v0, v163, s1, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_and_b32_e32 v3, 28, v150
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v4, v251, s1, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v7, v135, s4, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(12)
	v_and_b32_e32 v2, 32, v33
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_add_lshl_u32 v5, v131, s1, 1
	s_and_b32 s9, s9, 0xffff
	v_add_lshl_u32 v6, v132, s1, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add3_u32 v2, 0, v149, v2
	v_add_nc_u32_e32 v88, 0, v147
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v8, s47, v34
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v9, s47, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v86, v2, v3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v3, 0x80000000, v5 :: v_dual_cndmask_b32 v2, 0x80000000, v4
	v_dual_cndmask_b32 v4, 0x80000000, v6 :: v_dual_cndmask_b32 v5, 0x80000000, v7
	v_mov_b32_e32 v95, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v254, 0
	v_mov_b32_e32 v187, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v129, 0
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v11, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x2
	buffer_load_u16 v91, v0, s[8:11], 0 offen
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	buffer_load_u16 v0, v3, s[8:11], 0 offen
	v_mov_b32_e32 v3, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v86, v1 offset:36864
	v_mov_b32_e32 v1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v211, v4, s[8:11], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v4, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s1, 1, v4
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v0, off offset:1188 ; 4-byte Folded Spill
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v0, v5, s[24:27], 0 offen
	v_mov_b32_e32 v97, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[36:39], v88 offset:36864
	ds_load_b128 v[28:31], v88 offset:36880
	ds_load_b128 v[4:7], v88 offset:37376
	ds_load_b128 v[118:121], v88 offset:37392
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
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
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v8, 0
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v0, off, off offset:712
	scratch_load_b32 v3, off, off offset:720
	scratch_load_b32 v8, off, off offset:716
	scratch_load_b32 v1, off, off offset:708
	scratch_load_b32 v11, off, off offset:704
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v9, s46, v229
	v_add_nc_u32_e32 v10, s46, v188
	v_add_nc_u32_e32 v32, s46, v242
	v_add_nc_u32_e32 v33, s46, v123
	v_add_nc_u32_e32 v34, s46, v241
	v_add_nc_u32_e32 v35, s46, v170
	v_add_nc_u32_e32 v40, s46, v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	ds_load_u8 v35, v35
	ds_load_u8 v40, v40
	v_dual_mov_b32 v104, s19 :: v_dual_add_nc_u32 v41, s46, v238
	v_dual_mov_b32 v103, s18 :: v_dual_mov_b32 v102, s17
	v_dual_mov_b32 v101, s16 :: v_dual_mov_b32 v100, s15
	v_mov_b32_e32 v99, s14
	v_dual_mov_b32 v97, s12 :: v_dual_mov_b32 v98, s13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:644
	scratch_load_b32 v49, off, off offset:660
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v3, s46, v3
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v8, s46, v8
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:700 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v11, s46, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	ds_load_u8 v8, v8
	ds_load_u8 v11, v11
	ds_load_u8 v32, v32
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v48, s46, v48
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v49, s46, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v3, v8, v3, 0xc0c0004
	v_perm_b32 v8, v10, v9, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v10, off, off offset:776 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v32, v11, 0xc0c0004
	v_lshl_or_b32 v11, v3, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s46, v230
	v_add_nc_u32_e32 v3, s46, v239
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v41, v41
	ds_load_u8 v1, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, s46, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v10, v9, 16, v8
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v9, off, off offset:772 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v8, v34, v33, 0xc0c0004
	v_perm_b32 v33, v40, v35, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:784
	scratch_load_b32 v40, off, off offset:756
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v9, s46, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v3, v3
	ds_load_u8 v32, v32
	ds_load_u8 v35, v9
	v_lshl_or_b32 v9, v33, 16, v8
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:780
	scratch_load_b32 v33, off, off offset:760
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v40, s46, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v3, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:768 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v35, v32, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v35, off, off offset:764 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v34, s46, v34
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v8, s46, v8
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v33, s46, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	ds_load_u8 v8, v8
	ds_load_u8 v33, v33
	ds_load_u8 v40, v40
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v8, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v8, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v40, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:740 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v35, s46, v35
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v8, s46, v8
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s46, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v41, v8
	ds_load_u8 v40, v40
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v8, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s46, v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v8, v0, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:748
	scratch_load_b32 v1, off, off offset:728
	v_add_nc_u32_e32 v3, s46, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v35, v35
	v_wmma_i32_16x16x16_iu8 v[139:146], v[8:11], v[60:63], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v35, v3, 0xc0c0004
	v_lshl_or_b32 v35, v34, 16, v32
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v32, off, off offset:724 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v34, v3, 16, v33
	v_perm_b32 v3, v40, v41, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:648
	scratch_load_b32 v40, off, off offset:632
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v1, s46, v1
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v32, s46, v32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v42
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	ds_load_u8 v32, v32
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v41, s46, v41
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s46, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v41, v41
	ds_load_u8 v40, v40
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v0, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:736 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v32, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v32, off, off offset:732 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v33, s46, v33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, s46, v32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	ds_load_u8 v32, v32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v32, v33, 0xc0c0004
	v_lshl_or_b32 v33, v0, 16, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:672
	scratch_load_b32 v3, off, off offset:680
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v32, v32, 16, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:664 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[139:146], v[32:35], v[56:59], v[139:146] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v253, v139
	v_cvt_f32_i32_e32 v254, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v216, v141
	v_cvt_f32_i32_e32 v218, v142
	v_cvt_f32_i32_e32 v187, v143
	v_cvt_f32_i32_e32 v175, v144
	v_cvt_f32_i32_e32 v173, v145
	v_cvt_f32_i32_e32 v174, v146
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s46, v3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v3, v3
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:684 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v43, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s46, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v40, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:656 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s46, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v40, 16, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:620
	scratch_load_b32 v1, off, off offset:604
	v_add_nc_u32_e32 v0, s46, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s46, v3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s46, v247
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:588 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v41, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:580 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v1, s46, v148
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s46, v3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s46, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:596 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:692 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v40, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:688
	scratch_load_b32 v1, off, off offset:676
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[139:146], v[40:43], v[52:55], v[97:104] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v3, s46, v3
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:696 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:652 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v51, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:624 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s46, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v48, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v48, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s46, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v48, 16, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:628
	scratch_load_b32 v1, off, off offset:616
	v_add_nc_u32_e32 v0, s46, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s46, v3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:636 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:600 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v49, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:592
	scratch_load_b32 v1, off, off offset:584
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v3, s46, v3
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:608 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v1, 16, v0
	v_wmma_i32_16x16x16_iu8 v[139:146], v[48:51], v[24:27], v[139:146] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v219, v139
	v_cvt_f32_i32_e32 v223, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v191, v141
	v_cvt_f32_i32_e32 v217, v142
	v_cvt_f32_i32_e32 v189, v143
	v_cvt_f32_i32_e32 v190, v144
	v_cvt_f32_i32_e32 v171, v145
	v_cvt_f32_i32_e32 v172, v146
	v_wmma_i32_16x16x16_iu8 v[139:146], v[8:11], v[52:55], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[32:35], v[24:27], v[139:146] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v166, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v167, v140
	v_cvt_f32_i32_e32 v164, v141
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v165, v142
	v_cvt_f32_i32_e32 v161, v143
	v_cvt_f32_i32_e32 v162, v144
	v_cvt_f32_i32_e32 v159, v145
	v_cvt_f32_i32_e32 v160, v146
	v_wmma_i32_16x16x16_iu8 v[139:146], v[40:43], v[44:47], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[48:51], v[20:23], v[139:146] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v157, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v158, v140
	v_cvt_f32_i32_e32 v149, v141
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v150, v142
	v_cvt_f32_i32_e32 v126, v143
	v_cvt_f32_i32_e32 v147, v144
	v_cvt_f32_i32_e32 v117, v145
	v_cvt_f32_i32_e32 v3, v146
	v_wmma_i32_16x16x16_iu8 v[139:146], v[8:11], v[44:47], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[32:35], v[20:23], v[139:146] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v125, v140
	v_cvt_f32_i32_e32 v110, v141
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v109, v142
	v_cvt_f32_i32_e32 v105, v143
	v_cvt_f32_i32_e32 v96, v144
	v_cvt_f32_i32_e32 v95, v145
	v_cvt_f32_i32_e32 v93, v146
	v_wmma_i32_16x16x16_iu8 v[139:146], v[40:43], v[16:19], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[48:51], v[12:15], v[139:146] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v92, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v67, v140
	v_cvt_f32_i32_e32 v66, v141
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v124, v142
	v_cvt_f32_i32_e32 v65, v143
	v_cvt_f32_i32_e32 v64, v144
	v_cvt_f32_i32_e32 v129, v145
	v_cvt_f32_i32_e32 v0, v146
	v_wmma_i32_16x16x16_iu8 v[139:146], v[40:43], v[60:63], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[8:11], v[16:19], v[97:104] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu8 v[139:146], v[48:51], v[56:59], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[32:35], v[12:15], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v42, v141
	v_cvt_f32_i32_e32 v43, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v0, v99
	v_cvt_f32_i32_e32 v33, v97
	v_mov_b32_e32 v97, v3
	v_cvt_f32_i32_e32 v32, v98
	v_dual_mov_b32 v98, v126 :: v_dual_mov_b32 v99, v147
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v11, v100
	v_mov_b32_e32 v100, v149
	v_cvt_f32_i32_e32 v10, v101
	v_mov_b32_e32 v101, v150
	v_cvt_f32_i32_e32 v9, v102
	v_mov_b32_e32 v102, v157
	v_cvt_f32_i32_e32 v0, v103
	v_mov_b32_e32 v103, v1
	v_cvt_f32_i32_e32 v8, v104
	v_cvt_f32_i32_e32 v40, v143
	v_cvt_f32_i32_e32 v41, v144
	v_cvt_f32_i32_e32 v34, v145
	v_cvt_f32_i32_e32 v35, v146
	v_cvt_f32_i32_e32 v1, v139
	v_cvt_f32_i32_e32 v3, v140
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v43, off offset:1100
	scratch_store_b32 off, v42, off offset:1096
	scratch_store_b32 off, v41, off offset:1092
	scratch_store_b32 off, v40, off offset:1088
	scratch_store_b32 off, v35, off offset:1084
	scratch_store_b32 off, v34, off offset:1080
	scratch_store_b32 off, v254, off offset:1076
	scratch_store_b32 off, v253, off offset:1072
	scratch_store_b32 off, v223, off offset:1068
	scratch_store_b32 off, v219, off offset:1064
	scratch_store_b32 off, v217, off offset:1060
	scratch_store_b32 off, v191, off offset:1056
	scratch_store_b32 off, v190, off offset:1052
	scratch_store_b32 off, v189, off offset:1048
	scratch_store_b32 off, v175, off offset:1044
	scratch_store_b32 off, v174, off offset:1040
	scratch_store_b32 off, v173, off offset:1036
	scratch_store_b32 off, v172, off offset:1032
	scratch_store_b32 off, v171, off offset:1028
	scratch_store_b32 off, v167, off offset:1024
	scratch_store_b32 off, v166, off offset:1020
	scratch_store_b32 off, v165, off offset:1016
	scratch_store_b32 off, v164, off offset:1012
	scratch_store_b32 off, v162, off offset:1008
	scratch_store_b32 off, v161, off offset:1004
	scratch_store_b32 off, v160, off offset:1000
	scratch_store_b32 off, v159, off offset:996
	scratch_store_b32 off, v158, off offset:992
	scratch_store_b32 off, v125, off offset:988
	scratch_store_b32 off, v110, off offset:984
	scratch_store_b32 off, v109, off offset:980
	scratch_store_b32 off, v105, off offset:976
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v96, off offset:972
	scratch_store_b32 off, v95, off offset:544
	scratch_store_b32 off, v93, off offset:540
	scratch_store_b32 off, v92, off offset:512
	scratch_store_b32 off, v67, off offset:508
	scratch_store_b32 off, v66, off offset:480
	scratch_store_b32 off, v65, off offset:472
	scratch_store_b32 off, v64, off offset:468
	scratch_store_b32 off, v79, off offset:436
	scratch_store_b32 off, v78, off offset:420
	scratch_store_b32 off, v77, off offset:416
	scratch_store_b32 off, v76, off offset:412
	scratch_store_b32 off, v75, off offset:408
	scratch_store_b32 off, v74, off offset:404
	scratch_store_b32 off, v73, off offset:400
	scratch_store_b32 off, v33, off offset:376
	scratch_store_b32 off, v32, off offset:372
	scratch_store_b32 off, v71, off offset:60
	scratch_store_b32 off, v70, off offset:8
	scratch_store_b32 off, v69, off offset:4
	scratch_store_b32 off, v11, off offset:368
	scratch_store_b32 off, v68, off
	scratch_store_b32 off, v185, off offset:56
	scratch_store_b32 off, v155, off offset:48
	scratch_store_b32 off, v156, off offset:52
	scratch_store_b32 off, v151, off offset:32
	scratch_store_b32 off, v152, off offset:36
	scratch_store_b32 off, v153, off offset:40
	scratch_store_b32 off, v154, off offset:44
	scratch_store_b32 off, v107, off offset:24
	scratch_store_b32 off, v108, off offset:28
	scratch_store_b32 off, v106, off offset:20
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v168, off offset:364
	scratch_store_b32 off, v10, off offset:352
	scratch_store_b32 off, v9, off offset:348
	scratch_store_b32 off, v8, off offset:344
	scratch_store_b32 off, v0, off offset:340
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v0, 0
	ds_load_b128 v[48:51], v88 offset:36864
	ds_load_b128 v[40:43], v88 offset:36880
	ds_load_b128 v[32:35], v88 offset:37376
	ds_load_b128 v[8:11], v88 offset:37392
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v254, v72
	v_mov_b32_e32 v175, 0
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v174, 0
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v167, 0
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v161, 0
	v_mov_b32_e32 v162, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v165, 0
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v67, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v0, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v71, off, off offset:752
	scratch_load_b32 v94, off, off offset:688
	scratch_load_b32 v72, off, off offset:748
	scratch_load_b32 v95, off, off offset:684
	scratch_load_b32 v73, off, off offset:744
	scratch_load_b32 v96, off, off offset:680
	scratch_load_b32 v75, off, off offset:736
	scratch_load_b32 v77, off, off offset:728
	v_dual_mov_b32 v217, v98 :: v_dual_add_nc_u32 v110, s45, v188
	v_dual_mov_b32 v253, v100 :: v_dual_add_nc_u32 v160, s45, v170
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v98, off, off offset:664
	scratch_load_b32 v0, off, off offset:784
	scratch_load_b32 v79, off, off offset:720
	v_add_nc_u32_e32 v108, s45, v242
	v_dual_mov_b32 v219, v101 :: v_dual_add_nc_u32 v122, s45, v122
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v101, off, off offset:640
	scratch_load_b32 v100, off, off offset:648
	v_dual_mov_b32 v159, v131 :: v_dual_add_nc_u32 v126, s45, v239
	v_mov_b32_e32 v185, v102
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v70, off, off offset:756
	scratch_load_b32 v93, off, off offset:692
	scratch_load_b32 v74, off, off offset:740
	scratch_load_b32 v76, off, off offset:732
	scratch_load_b32 v78, off, off offset:724
	scratch_load_b32 v64, off, off offset:780
	scratch_load_b32 v92, off, off offset:716
	scratch_load_b32 v65, off, off offset:776
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v66, off, off offset:772
	scratch_load_b32 v67, off, off offset:768
	scratch_load_b32 v68, off, off offset:764
	v_add_nc_u32_e32 v141, s45, v148
	scratch_load_b32 v69, off, off offset:760 ; 4-byte Folded Reload
	v_dual_mov_b32 v170, v111 :: v_dual_add_nc_u32 v109, s45, v229
	scratch_load_b32 v111, off, off offset:620 ; 4-byte Folded Reload
	v_mov_b32_e32 v189, v187
	v_mov_b32_e32 v187, v97
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v97, off, off offset:672
	scratch_load_b32 v102, off, off offset:632
	v_mov_b32_e32 v190, v99
	scratch_load_b32 v99, off, off offset:656 ; 4-byte Folded Reload
	v_mov_b32_e32 v188, v117
	v_mov_b16_e64 v117.l, v211.l
	v_mov_b32_e32 v211, v103
	v_add_nc_u32_e32 v103, s45, v247
	v_mov_b32_e32 v247, v163
	v_mov_b32_e32 v163, v115
	v_mov_b32_e32 v115, v129
	v_mov_b32_e32 v156, v133
	v_mov_b32_e32 v191, v169
	v_mov_b32_e32 v169, v186
	v_mov_b32_e32 v155, v132
	v_dual_mov_b32 v186, v124 :: v_dual_add_nc_u32 v123, s45, v123
	v_add_nc_u32_e32 v125, s45, v230
	v_mov_b32_e32 v239, v233
	v_dual_mov_b32 v242, v237 :: v_dual_mov_b32 v237, v127
	v_add_nc_u32_e32 v127, s45, v238
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v238, v128 :: v_dual_mov_b32 v233, v239
	s_waitcnt vmcnt(28)
	v_add_nc_u32_e32 v71, s45, v71
	s_waitcnt vmcnt(26)
	v_add_nc_u32_e32 v72, s45, v72
	s_waitcnt vmcnt(25)
	v_add_nc_u32_e32 v95, s45, v95
	s_waitcnt vmcnt(24)
	v_add_nc_u32_e32 v73, s45, v73
	s_waitcnt vmcnt(23)
	v_add_nc_u32_e32 v96, s45, v96
	s_waitcnt vmcnt(22)
	v_add_nc_u32_e32 v75, s45, v75
	s_waitcnt vmcnt(21)
	v_add_nc_u32_e32 v77, s45, v77
	s_waitcnt vmcnt(20)
	v_add_nc_u32_e32 v98, s45, v98
	s_waitcnt vmcnt(19)
	v_add_nc_u32_e32 v0, s45, v0
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v79, s45, v79
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v70, s45, v70
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v64, s45, v64
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v129, s45, v111
	scratch_load_b32 v111, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v97, s45, v97
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v99, s45, v99
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v131, s45, v111
	scratch_load_b32 v111, off, off offset:604 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v100, s45, v100
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v132, s45, v111
	scratch_load_b32 v111, off, off offset:596 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v101, s45, v101
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v133, s45, v111
	scratch_load_b32 v111, off, off offset:588 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v102, s45, v102
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v97, v97
	ds_load_u8 v98, v98
	ds_load_u8 v95, v95
	ds_load_u8 v101, v101
	ds_load_u8 v102, v102
	ds_load_u8 v99, v99
	ds_load_u8 v100, v100
	ds_load_u8 v96, v96
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v98, off, off offset:600 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v93, s45, v93
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v96, off, off offset:608 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v95, v95, 16, v97
	v_perm_b32 v97, v102, v101, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v139, s45, v111
	scratch_load_b32 v111, off, off offset:580 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v98, s45, v98
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v140, s45, v111
	scratch_load_b32 v111, off, off offset:676 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v131, v131
	ds_load_u8 v132, v132
	ds_load_u8 v103, v103
	ds_load_u8 v140, v140
	ds_load_u8 v141, v141
	ds_load_u8 v133, v133
	ds_load_u8 v139, v139
	ds_load_u8 v129, v129
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v74, s45, v74
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v100, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v129, v103, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v142, s45, v111
	scratch_load_b32 v111, off, off offset:668 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v76, s45, v76
	v_add_nc_u32_e32 v124, s45, v241
	v_mov_b32_e32 v241, v234
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v234, v241 :: v_dual_add_nc_u32 v143, s45, v111
	scratch_load_b32 v111, off, off offset:660 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v78, s45, v78
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v144, s45, v111
	scratch_load_b32 v111, off, off offset:652 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v104, s45, v92
	scratch_load_b32 v92, off, off offset:712 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v65, s45, v65
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v145, s45, v111
	scratch_load_b32 v111, off, off offset:644 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v105, s45, v92
	scratch_load_b32 v92, off, off offset:708 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v66, s45, v66
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v146, s45, v111
	scratch_load_b32 v111, off, off offset:636 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v106, s45, v92
	scratch_load_b32 v92, off, off offset:704 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v67, s45, v67
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v147, s45, v111
	scratch_load_b32 v111, off, off offset:628 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v107, s45, v92
	scratch_load_b32 v92, off, off offset:700 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v68, s45, v68
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v148, s45, v111
	scratch_load_b32 v111, off, off offset:624 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v128, s45, v92
	scratch_load_b32 v92, off, off offset:696 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v69, s45, v69
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v149, s45, v111
	scratch_load_b32 v111, off, off offset:616 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v92, s45, v92
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v150, s45, v111
	scratch_load_b32 v111, off, off offset:592 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v94, s45, v94
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v151, s45, v111
	scratch_load_b32 v111, off, off offset:584 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v96, s45, v96
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v152, s45, v111
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v129, v94
	ds_load_u8 v131, v142
	ds_load_u8 v132, v92
	ds_load_u8 v142, v145
	ds_load_u8 v145, v146
	ds_load_u8 v143, v143
	ds_load_u8 v144, v144
	ds_load_u8 v146, v93
	ds_load_u8 v149, v149
	ds_load_u8 v150, v150
	ds_load_u8 v147, v147
	ds_load_u8 v151, v151
	ds_load_u8 v152, v152
	ds_load_u8 v153, v96
	ds_load_u8 v154, v98
	ds_load_u8 v148, v148
	v_perm_b32 v92, v141, v140, 0xc0c0004
	v_perm_b32 v96, v139, v133, 0xc0c0004
	v_lshl_or_b32 v94, v99, 16, v97
	v_lshl_or_b32 v93, v101, 16, v100
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v129, v131, v129, 0xc0c0004
	v_lshl_or_b32 v92, v96, 16, v92
	v_dual_mov_b32 v103, s19 :: v_dual_mov_b32 v102, s18
	v_dual_mov_b32 v101, s17 :: v_dual_mov_b32 v100, s16
	v_dual_mov_b32 v99, s15 :: v_dual_mov_b32 v98, s14
	v_dual_mov_b32 v97, s13 :: v_dual_mov_b32 v96, s12
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v133, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v131, v146, v132, 0xc0c0004
	v_perm_b32 v132, v145, v142, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[139:146], v[92:95], v[60:63], v[96:103] neg_lo:[1,1,0]
	v_lshl_or_b32 v158, v131, 16, v129
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v129, v152, v151, 0xc0c0004
	v_lshl_or_b32 v157, v133, 16, v132
	v_dual_mov_b32 v133, v156 :: v_dual_mov_b32 v132, v155
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v131, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v155, v131, 16, v129
	v_mov_b32_e32 v131, v159
	ds_load_u8 v105, v105
	ds_load_u8 v106, v106
	ds_load_u8 v79, v79
	ds_load_u8 v109, v109
	ds_load_u8 v110, v110
	ds_load_u8 v107, v107
	ds_load_u8 v108, v108
	ds_load_u8 v104, v104
	ds_load_u8 v123, v123
	ds_load_u8 v124, v124
	ds_load_u8 v111, v160
	ds_load_u8 v127, v127
	ds_load_u8 v128, v128
	ds_load_u8 v125, v125
	ds_load_u8 v126, v126
	ds_load_u8 v122, v122
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
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v79, v104, v79, 0xc0c0004
	v_perm_b32 v104, v110, v109, 0xc0c0004
	v_perm_b32 v106, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v107, v124, v123, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v109, v128, v127, 0xc0c0004
	v_lshl_or_b32 v156, v147, 16, v149
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v110, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v108, v122, v111, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[122:129], v[92:95], v[44:47], v[96:103] neg_lo:[1,1,0]
	v_lshl_or_b32 v162, v79, 16, v105
	v_lshl_or_b32 v161, v106, 16, v104
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[139:146], v[155:158], v[56:59], v[139:146] neg_lo:[1,1,0]
	v_lshl_or_b32 v159, v110, 16, v109
	v_lshl_or_b32 v160, v108, 16, v107
	v_wmma_i32_16x16x16_iu8 v[104:111], v[92:95], v[52:55], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[155:158], v[20:23], v[122:129] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v66, v68, v67, 0xc0c0004
	v_cvt_f32_i32_e32 v175, v140
	v_cvt_f32_i32_e32 v173, v141
	v_cvt_f32_i32_e32 v174, v142
	v_cvt_f32_i32_e32 v171, v143
	v_cvt_f32_i32_e32 v172, v144
	v_cvt_f32_i32_e32 v168, v145
	v_cvt_f32_i32_e32 v223, v146
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v0, v64, v0, 0xc0c0004
	v_perm_b32 v64, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v67, v74, v73, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[147:154], v[159:162], v[60:63], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[155:158], v[24:27], v[104:111] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v140, v122
	v_cvt_f32_i32_e32 v141, v123
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v69, v78, v77, 0xc0c0004
	v_lshl_or_b32 v167, v0, 16, v65
	v_lshl_or_b32 v166, v66, 16, v64
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v70, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v72, v71, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[72:79], v[92:95], v[16:19], v[96:103] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v94, v139
	v_cvt_f32_i32_e32 v95, v124
	v_mov_b32_e32 v124, v186
	v_dual_mov_b32 v186, v169 :: v_dual_mov_b32 v169, v191
	v_cvt_f32_i32_e32 v139, v125
	v_cvt_f32_i32_e32 v92, v126
	v_cvt_f32_i32_e32 v93, v127
	v_mov_b32_e32 v127, v237
	v_mov_b32_e32 v237, v242
	v_lshl_or_b32 v164, v70, 16, v69
	v_lshl_or_b32 v165, v68, 16, v67
	v_wmma_i32_16x16x16_iu8 v[64:71], v[159:162], v[44:47], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[72:79], v[155:158], v[12:15], v[72:79] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v157, v104
	v_cvt_f32_i32_e32 v158, v105
	v_cvt_f32_i32_e32 v155, v106
	v_cvt_f32_i32_e32 v156, v107
	v_cvt_f32_i32_e32 v105, v129
	v_mov_b32_e32 v129, v115
	v_mov_b32_e32 v115, v163
	v_mov_b32_e32 v163, v247
	v_wmma_i32_16x16x16_iu8 v[64:71], v[164:167], v[20:23], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[164:167], v[56:59], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[159:162], v[52:55], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[159:162], v[16:19], v[96:103] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v126, v74
	v_cvt_f32_i32_e32 v191, v75
	v_cvt_f32_i32_e32 v0, v68
	v_wmma_i32_16x16x16_iu8 v[56:63], v[164:167], v[24:27], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[164:167], v[12:15], v[96:103] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v166, v147
	v_cvt_f32_i32_e32 v167, v148
	v_cvt_f32_i32_e32 v164, v149
	v_cvt_f32_i32_e32 v165, v150
	v_cvt_f32_i32_e32 v161, v151
	v_cvt_f32_i32_e32 v162, v152
	v_cvt_f32_i32_e32 v159, v153
	v_cvt_f32_i32_e32 v160, v154
	v_cvt_f32_i32_e32 v153, v108
	v_cvt_f32_i32_e32 v154, v109
	v_cvt_f32_i32_e32 v151, v110
	v_cvt_f32_i32_e32 v152, v111
	v_mov_b32_e32 v111, v170
	v_cvt_f32_i32_e32 v110, v128
	v_mov_b32_e32 v128, v238
	v_cvt_f32_i32_e32 v108, v64
	v_cvt_f32_i32_e32 v109, v65
	v_cvt_f32_i32_e32 v106, v66
	v_cvt_f32_i32_e32 v107, v67
	v_cvt_f32_i32_e32 v104, v69
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v70
	v_cvt_f32_i32_e32 v149, v56
	v_cvt_f32_i32_e32 v150, v57
	v_cvt_f32_i32_e32 v146, v58
	v_cvt_f32_i32_e32 v147, v59
	v_cvt_f32_i32_e32 v144, v60
	v_cvt_f32_i32_e32 v145, v61
	v_cvt_f32_i32_e32 v142, v62
	v_cvt_f32_i32_e32 v143, v63
	v_cvt_f32_i32_e32 v70, v78
	v_cvt_f32_i32_e32 v125, v96
	v_cvt_f32_i32_e32 v69, v97
	v_mov_b32_e32 v97, v187
	v_mov_b32_e32 v187, v189
	v_cvt_f32_i32_e32 v66, v98
	v_mov_b32_e32 v98, v217
	v_cvt_f32_i32_e32 v67, v99
	v_mov_b32_e32 v99, v190
	v_cvt_f32_i32_e32 v64, v100
	v_mov_b32_e32 v100, v253
	v_cvt_f32_i32_e32 v65, v101
	v_mov_b32_e32 v101, v219
	v_cvt_f32_i32_e32 v68, v102
	v_mov_b32_e32 v102, v185
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v71
	v_cvt_f32_i32_e32 v71, v79
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v72
	v_cvt_f32_i32_e32 v72, v76
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v73
	v_cvt_f32_i32_e32 v73, v77
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v103
	v_mov_b32_e32 v103, v211
	v_mov_b16_e64 v211.l, v117.l
	v_mov_b32_e32 v117, v188
.LBB0_16:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s35, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s1, s35, s1
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v68, off offset:492
	scratch_store_b32 off, v65, off offset:396
	scratch_store_b32 off, v64, off offset:384
	scratch_store_b32 off, v0, off offset:380
	s_ashr_i32 s1, s1, 7
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s33, s33, s23
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s1, s34
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s44
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt lgkmcnt(4)
	v_add_lshl_u32 v12, v133, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v15, v132, s1, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v0, v163, s1, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v13, v251, s1, 1
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	v_add_lshl_u32 v14, v131, s1, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v12, v12, s[24:27], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	s_clause 0x3
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	buffer_load_u16 v64, v13, s[8:11], 0 offen
	buffer_load_u16 v148, v14, s[8:11], 0 offen
	buffer_load_u16 v96, v15, s[8:11], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v86, v12 offset:36864
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v12, v135, s4, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v135.h, v91.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[24:27], 0 offen
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
	scratch_load_b32 v17, off, off offset:252 ; 4-byte Folded Reload
	ds_store_b32 v86, v16 offset:36864
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v86.l, 0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v88 offset:36864
	ds_load_b128 v[52:55], v88 offset:36880
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v86.h, v211.l
	v_mov_b16_e64 v135.l, v86.l
	v_mov_b16_e64 v229.l, v86.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v49, v135
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v16, v16, v134, v17
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v134, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v17, v16, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v0, v61, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v0, v0, v175, v16
	v_mov_b32_e32 v175, v66
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v16, v0, s3
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
	v_rcp_f32_e32 v18, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v17, v18, 1.0
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v0, v16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v24, v19, v18
	v_fma_f32 v25, -v17, v24, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v25, v18
	v_fma_f32 v17, -v17, v24, v19
	scratch_load_b32 v19, off, off offset:244 ; 4-byte Folded Reload
	v_div_fmas_f32 v17, v17, v18, v24
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v18, v48, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v131, v17, v16, v0
	scratch_load_b32 v16, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v50, v135
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v18, v18, v84, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v19, v18, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v19, v60, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v19, v19, v94, v18
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, null, v19, v19, v18
	v_rcp_f32_e32 v25, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v24, v25, 1.0
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v18, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v26, v25
	v_fma_f32 v65, -v24, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v65, v25
	v_fma_f32 v24, -v24, v27, v26
	scratch_load_b32 v26, off, off offset:248 ; 4-byte Folded Reload
	v_div_fmas_f32 v24, v24, v25, v27
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v25, v51, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v132, v24, v19, v18
	scratch_load_b32 v19, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v18, v41, v135
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v25, v25, v87, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v26, v25, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v26, v63, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v26, v26, v174, v25
	v_mov_b32_e32 v174, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v26, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v25
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v25
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v27
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v26, v26, v25
	v_rcp_f32_e32 v65, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v27, v65, 1.0
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v25, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v65
	v_fma_f32 v68, -v27, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v65
	v_fma_f32 v27, -v27, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v27, v27, v65, v67
	v_div_fixup_f32 v133, v27, v26, v25
	scratch_load_b32 v26, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v0, v0, v90, v16
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v25, v40, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v16, v0, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v62, v134
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v173, v0
	v_mov_b32_e32 v173, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v16, s3
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
	v_rcp_f32_e32 v65, v17
	v_fma_f32 v66, -v17, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v0, v16, v0
	v_mul_f32_e32 v67, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v17, v67, v66
	v_fmac_f32_e32 v67, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v67, v66
	v_div_fmas_f32 v17, v17, v65, v67
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v25, v25, v85, v26
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v85, v17, v16, v0
	scratch_load_b32 v16, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v18, v18, v89, v19
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v43, v135
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v26, v25, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v26, v52, v134
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v19, v18, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v19, v53, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v26, v26, v171, v25
	v_mov_b32_e32 v171, v70
	v_fma_f32 v19, v19, v172, v18
	v_mov_b32_e32 v172, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v26, s3
	v_cndmask_b32_e64 v18, v18, v19, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v26, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v19, 0xbfb8aa3b, v18
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, null, v19, v19, v18
	v_rcp_f32_e32 v65, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v24, v65, 1.0
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v18, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v65
	v_fma_f32 v68, -v24, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v65
	v_fma_f32 v24, -v24, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v24, v24, v65, v67
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v27, v67, v66
	v_fmac_f32_e32 v67, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v27, v67, v66
	v_div_fmas_f32 v27, v27, v65, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v251, v27, v26, v25
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v83, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v83, v24, v19, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v16, v0, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v55, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v223, v0
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v17
	v_fma_f32 v68, -v16, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v17
	v_fma_f32 v16, -v16, v67, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v66, v16, v17, v67
	scratch_load_b32 v17, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v42, v135
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v163, v66, v65, v0
	scratch_load_b32 v65, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v32, v135
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v16, v16, v82, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v17, v16, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v17, v54, v134
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v17, v17, v168, v16
	v_mov_b32_e32 v168, v69
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
	scratch_load_b32 v17, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v33, v135
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, v16, v81, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v17, v16, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_load_b128 v[24:27], v88 offset:37376
	ds_load_b128 v[16:19], v88 offset:37392
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v71, v25, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v71, v71, v167, v70
	v_mov_b32_e32 v167, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v70, v71, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v71, 0xbfb8aa3b, v70
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v170, v69, v68, v67
	scratch_load_b32 v68, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v67, v35, v135
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v0, v0, v80, v65
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
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v166, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v65, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v71, v71, v72
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v71, 1.0, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v71, v71, v70
	v_rcp_f32_e32 v73, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v72, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v70, v71, v70
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v67, v67, v114, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v68, v67, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v68, v27, v134
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v68, v68, v165, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v67, v68, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v75, v74, v73 :: v_dual_mul_f32 v68, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v72, v75, v74
	v_fmac_f32_e32 v75, v76, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v72, v75, v74
	v_div_fmas_f32 v72, v72, v73, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v82, v72, v71, v70
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v70, v34, v135
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v71, v26, v134
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v70, v70, v113, v249
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v249, v70, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v71, v71, v164, v70
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v70, v71, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v71, 0xbfb8aa3b, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
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
	v_div_fmas_f32 v66, v66, v73, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v68, v68
	v_ldexp_f32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v68, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v73, v69
	v_fma_f32 v74, -v69, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v67, v68, v67
	v_mul_f32_e32 v75, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v69, v75, v74
	v_fmac_f32_e32 v75, v76, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v69, v75, v74
	v_div_fmas_f32 v69, v69, v73, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v87, v69, v68, v67
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v68, v16, v134
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v249, v66, v65, v0
	scratch_load_b32 v65, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v9, v135
	v_mul_f32_e32 v67, v8, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v70
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v67, v67, v231, v255
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v71, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v255, v67, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v68, v68, v161, v67
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v71, v71, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v67, v68, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v71, 1.0, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v68, 0xbfb8aa3b, v67
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v247, v72, v71, v70
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v70, v11, v135
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v70, v70, v138, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v246, v70, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v112, v65
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v112, 16, v148
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v65, v0, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v17, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v162, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v65, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v0
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v66, v73, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v246, v66, v65, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v10, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v67
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v0, v0, v137, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v68, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v245, v0, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v245.h, v2.l
	v_mov_b16_e64 v245.l, v86.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v71, v19, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v65, v18, v134 :: v_dual_mul_f32 v2, v49, v245
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v71, v71, v160, v70
	v_fma_f32 v65, v65, v159, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v2, v2, v130, v244
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v70, v71, s3
	v_cndmask_b32_e64 v0, v0, v65, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v2, v244, v2, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v68, v68, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v71, 0xbfb8aa3b, v70
	v_mul_f32_e32 v65, 0xbfb8aa3b, v0
	.loc	1 364 22 is_stmt 1              ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v244, 16, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v73, v69
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v64, v61, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v64, v64, v158, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v74, -v69, v73, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v64, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v67, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v64, 0xbfb8aa3b, v2 :: v_dual_mul_f32 v75, v74, v73
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v76, -v69, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v73
	v_fma_f32 v69, -v69, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v69, v69, v73, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v255, v69, v68, v67
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v70
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v71, v71, v72
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v71, 1.0, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v71, v71, v70
	v_rcp_f32_e32 v73, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v72, v73, 1.0
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v70, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v73
	v_fma_f32 v76, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v73
	v_fma_f32 v72, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v72, v72, v73, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
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
	v_div_fmas_f32 v73, v66, v73, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v64
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v2
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v64, v64, v66
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v64, 1.0, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v64, v64, v2
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v2, v64, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v67
	v_fma_f32 v74, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v74, v67
	v_fma_f32 v66, -v66, v69, v68
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v68, v48, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v67, v66, v67, v69
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v68, v68, v240, v243
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v60, v244
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v66, v72, v71, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v242, v67, v64, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v243, v68, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v243, v73, v65, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:212
	scratch_load_b32 v64, off, off offset:208
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v51, v245
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v69, v69, v157, v68
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v2, v50, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v69, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v69, v69
	v_ldexp_f32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v69, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v72, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v71
	v_div_scale_f32 v72, vcc_lo, v68, v69, v68
	v_mul_f32_e32 v74, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v70, v74, v72
	v_fmac_f32_e32 v74, v75, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v70, v74, v72
	v_div_fmas_f32 v70, v70, v71, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v241, v70, v69, v68
	scratch_load_b32 v69, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v68, v41, v245
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v0, v0, v116, v65
	s_waitcnt vmcnt(1)
	v_fma_f32 v2, v2, v236, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v65, v0, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v63, v244
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v64, v2, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v64, v62, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v156, v0
	v_fma_f32 v64, v64, v155, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v65, s3
	v_cndmask_b32_e64 v2, v2, v64, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v65, 0xbfb8aa3b, v0 :: v_dual_mul_f32 v64, 0xbfb8aa3b, v2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v0
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v71
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v65, v65, v0
	v_rcp_f32_e32 v72, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v71, v72, 1.0
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v0, v65, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v73, v72
	v_fma_f32 v75, -v71, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v72
	v_fma_f32 v71, -v71, v74, v73
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v68, v68, v136, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v71, v71, v72, v74
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v64
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v69, v68, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v53, v244
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v240, v71, v65, v0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:200
	scratch_load_b32 v71, off, off offset:1184
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v69, v69, v154, v68
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v40, v245
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v69, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v69, 0xbfb8aa3b, v68
	v_ldexp_f32 v64, v64, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v64, v64, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v67
	v_fma_f32 v73, -v67, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v2, v64, v2
	v_mul_f32_e32 v74, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v67, v74, v73
	v_fmac_f32_e32 v74, v75, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v74, v73
	v_div_fmas_f32 v67, v67, v72, v74
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v239, v67, v64, v2
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v64, off, off offset:1180 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v2, v43, v245 :: v_dual_fmac_f32 v69, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v69, v69
	v_ldexp_f32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v69, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v70
	v_fma_f32 v73, -v70, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v68, v69, v68
	v_mul_f32_e32 v74, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v70, v74, v73
	v_fmac_f32_e32 v74, v75, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v70, v74, v73
	v_div_fmas_f32 v70, v70, v72, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v238, v70, v69, v68
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v69, off, off offset:196
	scratch_load_b32 v70, off, off offset:1176
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v68, v42, v245
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(3)
	v_fma_f32 v0, v0, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v65, v0, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v52, v244
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v153, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v65, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v65, v65, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v65, v65, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v71
	v_fma_f32 v73, -v71, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v0, v65, v0
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v2, v2, v64, v237
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v64, v55, v244
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v74, v73, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v237, v2, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v75, -v71, v74, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v64, v64, v152, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v74, v75, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v64, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v71, -v71, v74, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v64, 0xbfb8aa3b, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v71, v71, v72, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v237, v71, v65, v0
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:192
	scratch_load_b32 v71, off, off offset:1172
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v33, v245
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v2
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v64, v64, v67
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v64, 1.0, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v64, v64, v2
	v_rcp_f32_e32 v72, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v67, v72, 1.0
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v2, v64, v2
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v68, v68, v70, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v74, v73, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v69, v68, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v54, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v75, -v67, v74, v73
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v69, v69, v151, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v74, v75, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v69, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v67, -v67, v74, v73
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v67, v67, v72, v74
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v236, v67, v64, v2
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v64, off, off offset:188
	scratch_load_b32 v67, off, off offset:1168
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v2, v32, v245
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v68
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v69, v69, v70
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v69, 1.0, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v69, v69, v68
	v_rcp_f32_e32 v72, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v70, v72, 1.0
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v68, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v73, v72
	v_fma_f32 v75, -v70, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v72
	v_fma_f32 v70, -v70, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v70, v70, v72, v74
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v0, v0, v71, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v65, v0, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v25, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v150, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v65, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v0
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v71
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v2, v2, v67, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v64, v2, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v64, v24, v244
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v65, v65, v0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v64, v64, v149, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v72, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v64, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v64, 0xbfb8aa3b, v2
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v73, -v71, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v0, v65, v0
	v_mul_f32_e32 v74, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v71, v74, v73
	v_fmac_f32_e32 v74, v75, v72
	v_div_fixup_f32 v138, v70, v69, v68
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v69, off, off offset:1164 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v68, v35, v245
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v71, -v71, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v71, v71, v72, v74
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v137, v71, v65, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v65, off, off offset:1160 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v34, v245
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v64, v64
	v_ldexp_f32 v64, v64, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v64, v64, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v67
	v_fma_f32 v73, -v67, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v2, v64, v2
	v_mul_f32_e32 v74, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v67, v74, v73
	v_fmac_f32_e32 v74, v75, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v74, v73
	v_div_fmas_f32 v67, v67, v72, v74
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v68, v68, v69, v234
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v27, v244
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v234, v68, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v69, v69, v147, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v69, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v65, v233
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v26, v244
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v233, v0, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v146, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v65, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v68
	v_mul_f32_e32 v65, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v69, v69
	v_ldexp_f32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v234, v67, v64, v2
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v64, off, off offset:184
	scratch_load_b32 v67, off, off offset:1156
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v2, v9, v245
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v69, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v70
	v_fma_f32 v73, -v70, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v68, v69, v68
	v_mul_f32_e32 v74, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v70, v74, v73
	v_fmac_f32_e32 v74, v75, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v70, v74, v73
	v_div_fmas_f32 v70, v70, v72, v74
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v233, v70, v69, v68
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v65, v65, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v65, v65, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v71
	v_fma_f32 v73, -v71, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v0, v65, v0
	v_mul_f32_e32 v74, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v71, v74, v73
	v_fmac_f32_e32 v74, v75, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v74, v73
	v_div_fmas_f32 v71, v71, v72, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v84, v71, v65, v0
	.loc	1 364 22 is_stmt 1              ; generate_amdgcn.py:364:22
	scratch_load_b32 v0, off, off offset:1188 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v2, v2, v67, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v64, v2, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v64, v17, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v64, v64, v145, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v64, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v64, 0xbfb8aa3b, v2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v64
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v2
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v64, v64, v67
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v64, 1.0, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v64, v64, v2
	v_rcp_f32_e32 v68, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v67, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v2, v64, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v69, v68
	v_fma_f32 v72, -v67, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v72, v68
	v_fma_f32 v67, -v67, v70, v69
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v67, v67, v68, v70
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v69, off, off offset:180
	scratch_load_b32 v70, off, off offset:1152
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v68, v8, v245
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v229.h, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v49, v229
	v_mul_f32_e32 v49, v49, v86
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v68, v68, v70, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v69, v68, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v16, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v69, v69, v144, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v69, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v68
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v68
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v69, v69, v70
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v69, 1.0, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v69, v69, v68
	v_rcp_f32_e32 v72, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v70, v72, 1.0
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v68, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v73, v72
	v_fma_f32 v75, -v70, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v72
	v_fma_f32 v70, -v70, v74, v73
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v73, off, off offset:1148 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v70, v70, v72, v74
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v72, v11, v245
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v72, v72, v73, v232
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v73, v19, v244
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v232, v72, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v232, v67, v64, v2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v2, off, off offset:1140 ; 4-byte Folded Reload
	v_fma_f32 v73, v73, v143, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v74, -v74, v77, v76
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v76, off, off offset:1144 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v74, v74, v75, v77
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v75, v10, v245
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v230, v74, v73, v72
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v0, v0, v2, v227
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v2, v61, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v227, v0, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v2, v2, v141, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v2, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v2, 0xbfb8aa3b, v0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v75, v75, v76, v235
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v76, v18, v244
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v235, v75, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v235, v70, v69, v68
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v76, v76, v142, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v75, v76, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v76, 0xbfb8aa3b, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v76
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v76, v76
	v_ldexp_f32 v76, v76, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v76, 1.0, v76
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v77, null, v76, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v78, v77
	v_fma_f32 v79, -v77, v78, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v75, v76, v75
	v_mul_f32_e32 v80, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v77, v80, v79
	v_fmac_f32_e32 v80, v81, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v77, v80, v79
	v_div_fmas_f32 v77, v77, v78, v80
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v231, v77, v76, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v2, v2, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v2, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v64
	v_fma_f32 v67, -v64, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v67, v65
	v_div_scale_f32 v67, vcc_lo, v0, v2, v0
	v_mul_f32_e32 v68, v67, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v64, v68, v67
	v_fmac_f32_e32 v68, v69, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v64, v68, v67
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v67, off, off offset:1136 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v64, v64, v65, v68
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v48, v229
	v_mul_f32_e32 v48, v48, v86
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v227, v64, v2, v0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v40, v229
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v2, off, off offset:1120 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v40, v40, v86
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v65, v65, v67, v226
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v67, v60, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v226, v65, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v67, v67, v140, v65
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v2, v225
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v65, v67, s3
	v_cndmask_b32_e64 v0, v225, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v67, 0xbfb8aa3b, v65
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
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
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v70, off, off offset:1132 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v68, v68, v69, v71
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v51, v229
	v_mul_f32_e32 v51, v51, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v123, v68, v67, v65
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v51, v51, v128, v252
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v252, v51, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v69, v69, v70, v224
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v70, v63, v112
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v224, v69, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v70, v70, v139, v69
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
	v_rcp_f32_e32 v72, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v71, v72, 1.0
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v69, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v73, v72
	v_fma_f32 v75, -v71, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v72
	v_fma_f32 v71, -v71, v74, v73
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v73, off, off offset:1128 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v71, v71, v72, v74
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v72, v50, v229
	v_mul_f32_e32 v50, v50, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v122, v71, v70, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.h, v86.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v50, v50, v127, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v210, v50, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v72, v72, v73, v176
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v73, v62, v112
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v176, v72, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v73, v73, v95, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v72, v73, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v72
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v72
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v73, v73, v74
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v73, 1.0, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v74, null, v73, v73, v72
	v_rcp_f32_e32 v75, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v74, v75, 1.0
	v_fmac_f32_e32 v75, v76, v75
	v_div_scale_f32 v76, vcc_lo, v72, v73, v72
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v2, v52, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v77, v76, v75
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v2, v2, v92, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v78, -v74, v77, v76
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v223, v0, v2, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v77, v78, v75
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v0, 0xbfb8aa3b, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v74, -v74, v77, v76
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v76, off, off offset:1124 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v74, v74, v75, v77
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v75, v41, v229
	v_mul_f32_e32 v41, v41, v86
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v226, v74, v73, v72
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v75, v75, v76, v228
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v76, v53, v112
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v228, v75, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v76, v76, v93, v75
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v77, v77, v78, v80
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v116, 1.0, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v0, null, v116, v116, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v2, v0
	v_fma_f32 v64, -v0, v2, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, v64, v2
	v_div_scale_f32 v64, vcc_lo, v223, v116, v223
	v_mul_f32_e32 v65, v64, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v0, v65, v64
	v_fmac_f32_e32 v65, v67, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v0, -v0, v65, v64
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v64, off, off offset:12
	scratch_load_b32 v67, off, off offset:1108
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v225, v0, v2, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:16
	scratch_load_b32 v2, off, off offset:1116
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v0, v37, v135
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, v0, v2, v65
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v36, v135
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v65, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v2, v67, v64
	scratch_load_b32 v67, off, off offset:1100 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v64, v2, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v57, v134
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v64, v3, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v56, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v3, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v3, off, off offset:1112 ; 4-byte Folded Reload
	v_fma_f32 v1, v64, v1, v2
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v131
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v1, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v1, v39, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v64, v1, v3, v254
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:60
	scratch_load_b32 v65, off, off offset:1104
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v1, v38, v135
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v65, v1, v65, v3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v2, v132
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v254, v64, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v58, v134
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v65, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v65, off, off offset:1096 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v64, v64, v65, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v59, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v65, v67, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v0.h
	v_mov_b16_e32 v67.h, v86.l
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v67, v0, v67, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v2, v65, s3
	v_cndmask_b32_e64 v2, v3, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v68, off, off offset:4
	scratch_load_b32 v64, off, off offset:924
	scratch_load_b32 v69, off, off offset:8
	scratch_load_b32 v65, off, off offset:928
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e32 v3.h, v86.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v0, v0, v133 :: v_dual_and_b32 v3, 1, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v1, v2, v85 :: v_dual_mul_f32 v2, v28, v135
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v224, v77, v76, v75
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v1, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v2, v2, v64, v68
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v29, v135
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v68, v2, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fma_f32 v64, v64, v65, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v65.l, v0.h
	v_mov_b16_e32 v65.h, v86.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v68, off, off offset:1088 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v65, v0, v65, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v69, v64, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v69, off, off offset:1092 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v44, v134
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v131.h, 0x7fff, v65.h, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v64, v64, v68, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v45, v134
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v219, off, off offset:56
	scratch_load_b32 v64, off, off offset:916
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v251
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v68, v68, v69, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v1.h
	v_mov_b16_e32 v69.h, v86.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v69, v1, v69, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v0, v68, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v0.h, 0x7fff, v67.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off
	scratch_load_b32 v65, off, off offset:920
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v30, v135
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v68, off, off offset:1084 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v131.l, 0x7fff, v69.h, s5
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v23, v134
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v83, 16, v96
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v3, v3, v64, v219
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v31, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v219, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v64, v64, v65, v67
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v65.l, v1.h
	v_mov_b16_e32 v65.h, v86.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v65, v1, v65, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v67, v64, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v67, off, off offset:1080 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v46, v134
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v132.h, 0x7fff, v65.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v20, v134
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v64, v64, v67, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v47, v134
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v67, v68, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v2.h
	v_mov_b16_e32 v68.h, v86.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v67, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v185, off, off offset:48
	scratch_load_b32 v67, off, off offset:904
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v1, v1, v163 :: v_dual_and_b32 v68, 1, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v68, v2, v68, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v3, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v189, off, off offset:52
	scratch_load_b32 v64, off, off offset:900
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v4, v135
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cndmask_b16 v132.l, 0x7fff, v68.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v68, off, off offset:1076 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v3, v64, v189
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v5, v135
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v189, v3, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v67, v185
	scratch_load_b32 v67, off, off offset:1072 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v185, v64, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v65, v65, v67, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v21, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v65, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v67, v68, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v1.h
	v_mov_b16_e32 v68.h, v86.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v190, off, off offset:36
	scratch_load_b32 v65, off, off offset:884
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v68, v1, v68, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v64, v67, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v217, off, off offset:32
	scratch_load_b32 v67, off, off offset:888
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v2.h
	v_mov_b16_e32 v64.h, v86.l
	v_cndmask_b16 v133.h, 0x7fff, v68.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v82
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v68, off, off offset:1044 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v64, 1, v64
	v_cmp_o_f32_e64 s4, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v64, v2, v64, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v2, v3, v249 :: v_dual_mul_f32 v3, v6, v135
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
	s_waitcnt vmcnt(3)
	v_fma_f32 v3, v3, v65, v190
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v7, v135
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v190, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v65, v65, v67, v217
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v1.h
	v_mov_b16_e32 v67.h, v86.l
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v67, v1, v67, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v217, v65, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v22, v134
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v163.h, 0x7fff, v67.h, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v69, v69, v218, v1
	v_fma_f32 v65, v65, v216, v3
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v216, off, off offset:44
	scratch_load_b32 v64, off, off offset:868
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v13, v134
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v69, s3
	v_cndmask_b32_e64 v2, v3, v65, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v218, off, off offset:40
	scratch_load_b32 v65, off, off offset:872
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v118, v135
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v69, off, off offset:1068 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v3, v3, v64, v216
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v119, v135
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v216, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
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
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v67, v68, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.h, v86.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v187, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v14, v134
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v67, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v247
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v188, off, off offset:24
	scratch_load_b32 v67, off, off offset:856
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v246
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v2.h
	v_cmp_o_f32_e64 s1, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v68, v2, v68, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v3, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v187, off, off offset:28
	scratch_load_b32 v64, off, off offset:852
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v120, v135
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v170.l, 0x7fff, v68.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v68, off, off offset:1040 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v3, v64, v187
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v121, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v187, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v67, v188
	scratch_load_b32 v67, off, off offset:1036 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v188, v64, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v65, v65, v67, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v15, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v65, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v65, off, off offset:908 ; 4-byte Folded Reload
	v_fma_f32 v67, v67, v68, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v1.h
	v_mov_b16_e32 v68.h, v86.l
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v68, v1, v68, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v64, v67, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v255
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.h, v86.l
	v_mov_b32_e32 v67, v186
	v_cndmask_b16 v87.h, 0x7fff, v68.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v2.h
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v68, off, off offset:1028 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v1, v1
	v_and_b32_e32 v64, 1, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v64, v2, v64, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v2, v3, v243 :: v_dual_mul_f32 v3, v36, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v87.l, 0x7fff, v64.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v219, off, off offset:364
	scratch_load_b32 v64, off, off offset:892
	s_waitcnt vmcnt(3)
	v_fma_f32 v3, v3, v65, v186
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v186, off, off offset:20
	scratch_load_b32 v66, off, off offset:912
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v37, v245
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v67, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v67, off, off offset:1064 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v65, v65, v66, v186
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v1.h
	v_mov_b16_e32 v66.h, v86.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v66, v1, v66, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v186, v65, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v56, v244
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b16 v88.h, 0x7fff, v66.h, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v66, off, off offset:1056 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v65, v65, v67, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v57, v244
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v67, v69, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v2.h
	v_mov_b16_e32 v69.h, v86.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v67, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v67, off, off offset:1060 ; 4-byte Folded Reload
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
	scratch_load_b32 v189, off, off offset:360
	scratch_load_b32 v65, off, off offset:896
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v38, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cndmask_b16 v88.l, 0x7fff, v69.h, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v3, v64, v219
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v39, v245
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v219, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v64, v64, v65, v189
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v65.l, v1.h
	v_mov_b16_e32 v65.h, v86.l
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v1, v65, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v189, v64, s2
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
	v_mov_b16_e32 v67.h, v86.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v241
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v66, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v185, off, off offset:176
	scratch_load_b32 v66, off, off offset:880
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v2.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v240
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v67, 1, v67
	v_cmp_o_f32_e64 s1, v2, v2
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v67, v2, v67, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v3, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v217, off, off offset:172
	scratch_load_b32 v64, off, off offset:876
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v28, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v91.l, 0x7fff, v67.h, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v239
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:1052
	scratch_load_b32 v69, off, off offset:1032
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v3, v3, v64, v217
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v29, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v217, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v66, v185
	scratch_load_b32 v66, off, off offset:1048 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v185, v64, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
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
	scratch_load_b32 v190, off, off offset:164
	scratch_load_b32 v65, off, off offset:860
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v67, v1, v67, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v64, v66, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v218, off, off offset:168
	scratch_load_b32 v66, off, off offset:864
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v2.h
	v_mov_b16_e32 v64.h, v86.l
	v_cndmask_b16 v89.h, 0x7fff, v67.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v238
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v67, off, off offset:1024 ; 4-byte Folded Reload
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
	scratch_load_b32 v64, off, off offset:844 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_fma_f32 v3, v3, v65, v190
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v31, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v190, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v65, v65, v66, v218
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v1.h
	v_mov_b16_e32 v66.h, v86.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v66, v1, v66, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v218, v65, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v46, v244
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b16 v90.h, 0x7fff, v66.h, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v66, off, off offset:1020 ; 4-byte Folded Reload
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
	scratch_load_b32 v68, off, off offset:1004 ; 4-byte Folded Reload
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
	scratch_load_b32 v216, off, off offset:160
	scratch_load_b32 v65, off, off offset:848
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v4, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cndmask_b16 v90.l, 0x7fff, v69.h, s5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v138
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v3, v3, v64, v169
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v5, v245
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v169, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v64, v64, v65, v216
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v65.l, v1.h
	v_mov_b16_e32 v65.h, v86.l
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v1, v65, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v216, v64, s2
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
	scratch_load_b32 v187, off, off offset:356
	scratch_load_b32 v66, off, off offset:840
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
	scratch_load_b32 v188, off, off offset:152
	scratch_load_b32 v64, off, off offset:836
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v6, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cndmask_b16 v82.l, 0x7fff, v67.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:1016
	scratch_load_b32 v69, off, off offset:1008
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v3, v3, v64, v188
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v7, v245
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v188, v3, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v66, v187
	scratch_load_b32 v66, off, off offset:1012 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v187, v64, s2
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
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v186, off, off offset:144
	scratch_load_b32 v65, off, off offset:572
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v67, v1, v67, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v64, v66, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v189, off, off offset:148
	scratch_load_b32 v66, off, off offset:576
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v2.h
	v_mov_b16_e32 v64.h, v86.l
	v_cndmask_b16 v80.h, 0x7fff, v67.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v233
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v67, off, off offset:1000 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v64, 1, v64
	v_cmp_o_f32_e64 s4, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v64, v2, v64, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v2, v3, v84 :: v_dual_mul_f32 v3, v118, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v80.l, 0x7fff, v64.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v219, off, off offset:136
	scratch_load_b32 v64, off, off offset:564
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(5)
	v_fma_f32 v3, v3, v65, v186
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v119, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v186, v3, s2
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
	v_mul_f32_e32 v65, v12, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v81.h, 0x7fff, v66.h, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v66, off, off offset:996 ; 4-byte Folded Reload
	v_fma_f32 v65, v65, v68, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v13, v244
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v68, v69, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v2.h
	v_mov_b16_e32 v69.h, v86.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v68, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v68, v58, v112 :: v_dual_and_b32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v232
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v69, v2, v69, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v3, v65, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v185, off, off offset:140
	scratch_load_b32 v65, off, off offset:568
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v120, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cndmask_b16 v81.l, 0x7fff, v69.h, s5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v235
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	scratch_load_b32 v69, off, off offset:788 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v3, v3, v64, v219
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v121, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v219, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v64, v64, v65, v185
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v65.l, v1.h
	v_mov_b16_e32 v65.h, v86.l
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v65, v1, v65, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v185, v64, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v14, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v76.h, 0x7fff, v65.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v56, v112
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
	scratch_load_b32 v218, off, off offset:132
	scratch_load_b32 v66, off, off offset:560
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v67, v2, v67, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v3, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v217, off, off offset:128
	scratch_load_b32 v64, off, off offset:556
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v36, v229
	v_mul_f32_e32 v36, v36, v86
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v76.l, 0x7fff, v67.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v67, off, off offset:992 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v3, v64, v217
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v37, v229
	v_mul_f32_e32 v37, v37, v86
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v217, v3, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v66, v218
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v57, v112
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v217, off, off offset:88
	scratch_load_b32 v84, off, off offset:956
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v65, v102, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v218, v64, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v218, off, off offset:92
	scratch_load_b32 v75, off, off offset:960
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v65, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v230
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v66, v66, v67, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.h, v86.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v190, off, off offset:120
	scratch_load_b32 v65, off, off offset:548
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v1.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v67, v1, v67, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v64, v66, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v216, off, off offset:124
	scratch_load_b32 v66, off, off offset:552
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v2.h
	v_mov_b16_e32 v64.h, v86.l
	v_cndmask_b16 v77.h, 0x7fff, v67.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v227
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v186, off, off offset:104
	scratch_load_b32 v67, off, off offset:964
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v64, 1, v64
	v_cmp_o_f32_e64 s4, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
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
	scratch_load_b32 v187, off, off offset:108
	scratch_load_b32 v64, off, off offset:532
	s_waitcnt vmcnt(6)
	v_fma_f32 v3, v3, v65, v190
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v39, v229
	v_mul_f32_e32 v39, v39, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v190, v3, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v68, v100, v3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v100, v24, v112
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v65, v65, v66, v216
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v1.h
	v_mov_b16_e32 v66.h, v86.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v66, v1, v66, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v216, v65, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v59, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v78.h, 0x7fff, v66.h, s4
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v189, off, off offset:116
	scratch_load_b32 v66, off, off offset:968
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v65, v101, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v65, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v65.l, v2.h
	v_mov_b16_e32 v65.h, v86.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v122
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v65, v2, v65, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v3, v68, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e32 v3.h, v86.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b16 v78.l, 0x7fff, v65.h, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v188, off, off offset:112
	scratch_load_b32 v65, off, off offset:536
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v2, v2, v226 :: v_dual_and_b32 v3, 1, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.l, v2.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v1, v28, v229
	v_mul_f32_e32 v28, v28, v86
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v79.h, 0x7fff, v3.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_fma_f32 v1, v1, v64, v187
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v29, v229
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v70, v2, v70, 0x7fff
	v_mov_b16_e32 v2.h, v86.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v187, v1, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v79.l, 0x7fff, v70.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v64, v64, v65, v188
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v43, v229
	v_mul_f32_e32 v43, v43, v86
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v188, v64, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v66, v189
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v66, v42, v229
	v_mul_f32_e32 v42, v42, v86
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v189, v65, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v66, v66, v67, v186
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v67, v55, v112
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v186, v66, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v67, v67, v105, v65
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v66, v54, v112
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v65, v67, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v66, v66, v110, v64
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v71, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v64, v66, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v44, v112
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v71, v64, v98, v1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v64, s23, v192
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v66, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v71, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v71, v225, v116, v223
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v71
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v71.h, v86.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v71.l, v1.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v65, v45, v112 :: v_dual_and_b32 v70, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v65, v99, v68
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v71, v32, v229
	v_mul_f32_e32 v32, v32, v86
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v68, v65, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v68, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v71, v71, v84, v217
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v84, v25, v112
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v65, v224
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v68
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s1
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v99, v217, v71, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v71, s23, 5, v64
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v65, v66, v65
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v100, v100, v108, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v72
	v_exp_f32_e32 v66, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v68, 1.0, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, null, v68, v68, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v65, v66, v65
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v31, v229
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v85, v73
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v63, v63, v83
	v_mul_f32_e32 v60, v60, v83
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v92, 1.0, v65
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v3.h
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v30, v229
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v63, v63, v191, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v93, null, v92, v92, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v2, 1, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v98, s5, v72, v92, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v94, v93
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v51, v63, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v2, v3, v2, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v185, off, off offset:100
	scratch_load_b32 v3, off, off offset:528
	scratch_load_b32 v63, off, off offset:512
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v56, v56, v83
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v62, v62, v83
	v_mul_f32_e32 v61, v61, v83
	v_mul_f32_e32 v52, v52, v83
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v57, v83
	v_mul_f32_e32 v44, v44, v83
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v62, v62, v126, v50
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v53, v53, v83 :: v_dual_mul_f32 v30, v30, v86
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v59, v59, v83
	v_mul_f32_e32 v29, v29, v86
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v50, v62, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v45, v45, v83
	v_mul_f32_e32 v31, v31, v86
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v25, v25, v83
	v_mul_f32_e32 v24, v24, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v66, v3, v185
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v219, off, off offset:96
	scratch_load_b32 v66, off, off offset:524
	s_waitcnt vmcnt(0)
	v_fma_f32 v65, v65, v66, v219
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v47, v112
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v70, v1, v70, 0x7fff
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v185, v3, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v3, -v73, v85, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v95, v219, v65, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v46, v112
	v_mul_f32_e32 v47, v47, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v74, v66, v97, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v93, v94, 1.0
	v_fmac_f32_e32 v85, v3, v85
	v_div_scale_f32 v3, s4, v67, v68, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v96, v65, v117, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v65, v33, v229 :: v_dual_fmac_f32 v94, v66, v94
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v97, v3, v85
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v74, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v33, v33, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v65, v65, v75, v218
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v75, s23, 4, v64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v73, v97, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v46, v46, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v218, v65, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v97, v66, v85
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v84, v84, v109, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v3, -v73, v97, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v99, v100, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v101, v98, v94
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v102, v65, v84, s3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[65:66], null, s23, 48, v[64:65]
	v_add3_u32 v66, s33, s22, v69
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v84.h, 0x7fff, v2.h, vcc_lo
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v2, 0xbfb8aa3b, v73
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v93, v101, v98
	s_mov_b32 vcc_lo, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v84.l, 0x7fff, v70.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v3, v3, v85, v97
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v101, v69, v94
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v2
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.h, v86.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v3, v68, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v95, v96, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v85, -v93, v101, v98
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, s4
	v_mul_f32_e32 v99, 0xbfb8aa3b, v102
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v3
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v189, off, off offset:76
	scratch_load_b32 v98, off, off offset:952
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v85, v85, v94, v101
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v73
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v99
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v74, 0x80, v66
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v68, v85, v92, v72
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v2, v2
	v_cndmask_b32_e64 v69, 0, 0x42800000, s6
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v92, v4, v229 :: v_dual_mul_f32 v3, v67, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v1.h
	v_mov_b16_e32 v68.h, v86.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v102
	s_mov_b32 s23, 0x31027000
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.l, v3.h
	v_cmp_o_f32_e64 s1, v3, v3
	v_and_b32_e32 v68, 1, v68
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v69, v69
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v68, v1, v68, 0x7fff
	v_add3_u32 v70, v3, v70, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v68.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v216, off, off offset:84
	scratch_load_b32 v68, off, off offset:520
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v67, v69, v72
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v72, v5, v229
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v85.l, 0x7fff, v70.h, s1
	v_mov_b16_e32 v70.h, v86.l
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v5, v86
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v2, v2, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v67, v67, v102
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v2, v69
	v_fma_f32 v94, -v69, v2, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v2, v94, v2
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v94, v35, v229
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v95, vcc_lo, v102, v67, v102
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v35, v35, v86
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v94, v94, v98, v189
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v98, v20, v112
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v93, null, v1, v1, v73
	v_div_scale_f32 v100, s4, v73, v1, v73
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v94, v189, v94, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v20, v20, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v68, v72, v68, v216
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v190, off, off offset:80
	scratch_load_b32 v72, off, off offset:516
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v216, v68, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v72, v92, v72, v190
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v92, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v190, v72, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v72, v21, v112
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v98, v98, v103, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v96, -v93, v92, 1.0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v97, v34, v229 :: v_dual_fmac_f32 v92, v96, v92
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v188, off, off offset:72
	scratch_load_b32 v96, off, off offset:948
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v105, v100, v92
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v96, v97, v96, v188
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v97, v27, v112
	v_mul_f32_e32 v27, v27, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v96, v188, v96, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v97, v97, v107, v94
	scratch_load_b32 v107, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v94, v94, v97, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v97, off, off offset:988 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v72, v72, v97, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v97, -v93, v105, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v72, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v101, v26, v112
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v105, v97, v92 :: v_dual_mul_f32 v26, v26, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v101, v101, v106, v96
	scratch_load_b32 v106, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v96, v96, v101, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v99, v95, v2
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v101, 0xbfb8aa3b, v94 :: v_dual_mul_f32 v72, 0xbfb8aa3b, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v103, -v69, v99, v95
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v72
	v_cndmask_b32_e64 v72, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v99, v103, v2
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v103, v16, v112
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v69, v99, v95
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v95, 0, 0x42800000, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v2, v69, v2, v99
	v_fma_f32 v69, -v93, v105, v100
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v187, off, off offset:68
	scratch_load_b32 v93, off, off offset:504
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v95, 0xbfb8aa3b, v94
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v2, v2, v67, v102
	v_div_fmas_f32 v69, v69, v92, v105
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v68, v98, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s5
	v_exp_f32_e32 v92, v95
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v3, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v1, v69, v1, v73
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v3, v72
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s6
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v73, v6, v229
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v67, v1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v100, off, off offset:944 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v99, v8, v229
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v67, v92, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v2.h
	v_mov_b16_e32 v70.l, v1.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v3, v3, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.h, v86.l
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v72, 1.0, v67
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v1, v1
	v_and_b32_e32 v69, 1, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v70, v7, v229 :: v_dual_and_b32 v67, 1, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, null, v72, v72, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v69, v1, v69, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v7, v86
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v67, v2, v67, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v3, v68
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v67.l, 0x7fff, v69.h, s1
	v_mov_b16_e32 v69.h, v86.l
	v_cndmask_b16 v67.h, 0x7fff, v67.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v92, null, v2, v2, v96
	v_div_scale_f32 v97, vcc_lo, v94, v72, v94
	v_div_scale_f32 v102, s4, v96, v2, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v95, -v68, v3, 1.0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v6, v86
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v8, v8, v86 :: v_dual_fmac_f32 v3, v95, v3
	v_mul_f32_e32 v95, v9, v229
	v_mul_f32_e32 v9, v9, v86
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v101, v97, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v70, v70, v93, v187
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v186, off, off offset:64
	scratch_load_b32 v93, off, off offset:500
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v187, v70, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v73, v73, v93, v186
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v186, v73, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v73, v23, v112
	v_mul_f32_e32 v23, v23, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v98, -v92, v93, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v93, v98, v93
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v98, off, off offset:940 ; 4-byte Folded Reload
	v_fma_f32 v95, v95, v100, v248
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v100, v22, v112
	v_mul_f32_e32 v22, v22, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v105, v102, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v95, v248, v95, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v98, v99, v98, v250
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v99, v17, v112
	v_mul_f32_e32 v17, v17, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v98, v250, v98, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v99, v99, v104, v95
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v104, off, off offset:984 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v95, v95, v99, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v99, off, off offset:980 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v100, v100, v104, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v104, -v68, v101, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v70, v100, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v101, v104, v3 :: v_dual_mul_f32 v100, v10, v229
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v73, v73, v99, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v99, -v92, v105, v102
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v104, v18, v112
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v68, v101, v97
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v18, v18, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v73, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v105, v99, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v3, v68, v3, v101
	s_mov_b32 vcc_lo, s4
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v101, off, off offset:936 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v92, v105, v102
	v_div_fixup_f32 v3, v3, v72, v94
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v185, off, off offset:336
	scratch_load_b32 v94, off, off offset:284
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v72.h, v86.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v68, v68, v93, v105
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v105, off, off offset:292 ; 4-byte Folded Reload
	v_fma_f32 v103, v103, v106, v98
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v2, v68, v2, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v98, v98, v103, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v103, 0xbfb8aa3b, v95
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v1.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v70, v2
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v98
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v72.l, v2.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v97, 0, 0x42800000, s5
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v73, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v97, 0xbfb8aa3b, v95
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s6
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v92, v97
	v_exp_f32_e32 v3, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v68, v92, v68
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v92, v118, v229
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v3, v3, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v73, 1.0, v68 :: v_dual_and_b32 v68, 1, v69
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_and_b32 v70, 1, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v73, v73, v95
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v68, v1, v68, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v1, v119, v229
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v93, null, v3, v3, v98
	v_rcp_f32_e32 v72, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v68.h, 0x7fff, v68.h, vcc_lo
	v_add3_u32 v70, v2, v70, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v13, v112
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v103, s4, v98, v3, v98
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v13, v13, v83
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v68.l, 0x7fff, v70.h, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v96, -v69, v72, 1.0
	v_fmac_f32_e32 v72, v96, v72
	v_div_scale_f32 v96, vcc_lo, v95, v73, v95
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v102, v96, v72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v1, v1, v94, v185
	scratch_load_b32 v94, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v97, v185, v1, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v11, v229
	v_mul_f32_e32 v11, v11, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v1, v1, v101, v222
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v101, v12, v112
	v_mul_f32_e32 v12, v12, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v222, v1, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v92, v92, v94, v111
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v92, v111, v92, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v99, -v93, v94, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v94, v99, v94
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v99, off, off offset:932 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v106, v103, v94
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v99, v100, v99, v221
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v100, v19, v112
	v_mul_f32_e32 v19, v19, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v99, v221, v99, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v100, v100, v105, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v105, off, off offset:976 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v100, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v100, off, off offset:972 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v101, v101, v105, v92
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v105, -v69, v102, v96
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v100, v2, v100, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v102, v105, v72
	v_fma_f32 v105, -v93, v106, v103
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v97, v97, v100, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v69, v102, v96
	v_fmac_f32_e32 v106, v105, v94
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v100, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v69, v69, v72, v102
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v102, off, off offset:276 ; 4-byte Folded Reload
	v_fma_f32 v104, v104, v107, v99
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v72, -v93, v106, v103
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v69, v69, v73, v95
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v92, v101, s3
	v_cndmask_b32_e64 v2, v99, v104, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v99, 0xbfb8aa3b, v1
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v72, v72, v94, v106
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v69, v97, v69
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v92.h, v86.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v96, 0xbfb8aa3b, v2
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v99
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v72, v3, v98
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v97, v120, v229
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v96
	v_cndmask_b32_e64 v99, 0, 0x42800000, s5
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s5
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v95, v73, v3
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v96, v121, v229
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v93, 0, 0x42800000, s6
	v_fmac_f32_e32 v99, 0xbfb8aa3b, v1
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v92.l, v95.h
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v104, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v2
	v_exp_f32_e32 v94, v99
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v95, v95
	v_and_b32_e32 v92, 1, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v70, v93
	v_ldexp_f32 v3, v94, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v72.l, v69.h
	v_mov_b16_e32 v72.h, v86.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v70, v70, v73
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_and_b32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, null, v3, v3, v1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v94, v69, v72, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v69, 1.0, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v70, v95, v92, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v72, v73
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v92.h, 0x7fff, v94.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v94, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v93, null, v69, v69, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v92.l, 0x7fff, v70.h, s1
	v_mov_b16_e32 v70.h, v86.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v98, -v73, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v98, v72
	v_div_scale_f32 v98, vcc_lo, v1, v3, v1
	v_mul_f32_e32 v101, v98, v72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v96, v96, v94, v115
	scratch_load_b32 v94, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v96, v115, v96, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v97, v97, v94, v220
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v95, v220, v97, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v97, v15, v112
	v_mul_f32_e32 v15, v15, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v99, -v93, v94, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v94, v99, v94
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v99, off, off offset:460 ; 4-byte Folded Reload
	v_fma_f32 v49, v49, v100, v215
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v100, v14, v112
	v_mul_f32_e32 v14, v14, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v215, v49, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v61, v61, v102, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v102, off, off offset:544 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v49, v61, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v61, off, off offset:540 ; 4-byte Folded Reload
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
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v103, v97, v94
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v98, off, off offset:508 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v60, 0, 0x42800000, s5
	v_mul_f32_e32 v96, 0xbfb8aa3b, v48
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v72, v73, v72, v101
	v_fma_f32 v73, -v93, v103, v99
	s_mov_b32 vcc_lo, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v49
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v96
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v1, v72, v3, v1
	v_div_fmas_f32 v73, v73, v94, v103
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v95, v100, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v60, v60
	v_cndmask_b32_e64 v93, 0, 0x42800000, s6
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v61, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v2, v73, v69, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s5
	v_mul_f32_e32 v97, 0xbfb8aa3b, v51
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v48
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v3, v2
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v3, v60, v69
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v60.l, v1.h
	v_mov_b16_e32 v60.h, v86.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v61, v93
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s6
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v97
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v60, 1, v60
	v_mov_b16_e32 v70.l, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v62, 0, 0x42800000, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v60, v1, v60, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v61, v61, v69
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v3, v3, v49
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v1.h, 0x7fff, v60.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v60, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v72, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v62, v62
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, null, v61, v61, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v70, v2, v70, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v93, -v69, v72, 1.0
	v_fmac_f32_e32 v72, v93, v72
	v_div_scale_f32 v93, vcc_lo, v49, v3, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v95, v93, v72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v37, v37, v60, v213
	scratch_load_b32 v60, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v213, v37, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v57, v57, v98, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v57, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v36, v36, v60, v212
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v60, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v212, v36, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v56, v56, v63, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v94, -v73, v60, 1.0
	v_fma_f32 v63, -v69, v95, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v36, v56, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v60, v94, v60
	v_div_scale_f32 v94, s1, v48, v61, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v95, v63, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v56.h, v86.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v96, v94, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v57, -v69, v95, v93
	v_fma_f32 v63, -v73, v96, v94
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v57, v57, v72, v95
	s_mov_b32 vcc_lo, s1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v72, off, off offset:452 ; 4-byte Folded Reload
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
	scratch_load_b32 v69, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v2, v62, v49
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v48, v60, v61, v48
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v61, off, off offset:420 ; 4-byte Folded Reload
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
	scratch_load_b32 v63, off, off offset:480 ; 4-byte Folded Reload
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v206, v40, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v52, v52, v167, v40
	s_waitcnt vmcnt(2)
	v_fma_f32 v41, v41, v69, v207
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v40, v52, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v39, v39, v61, v209
	scratch_load_b32 v61, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v207, v41, s2
	v_cndmask_b32_e64 v3, v209, v39, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v39, v58, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v58, vcc_lo, v51, v2, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v53, v53, v173, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v59, v59, v124, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v53, s3
	v_cndmask_b32_e64 v3, v3, v59, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
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
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v49, v63, v58
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v53
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v53, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v61, v62, v61
	v_div_scale_f32 v62, s4, v50, v37, v50
	v_fmac_f32_e32 v63, v69, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v70, v62, v61
	v_fma_f32 v49, -v49, v63, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v69, -v60, v70, v62
	v_div_fmas_f32 v49, v49, v57, v63
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v70, v69, v61
	v_div_fixup_f32 v2, v49, v2, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v51, off, off offset:412 ; 4-byte Folded Reload
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
	v_mov_b16_e32 v48.l, v3.h
	v_mov_b16_e32 v48.h, v86.l
	v_cndmask_b16 v2.l, 0x7fff, v56.h, s1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v56, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v37, v52, v37, v50
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v50.h, v86.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v57, off, off offset:472 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v37, v38, v37 :: v_dual_and_b32 v48, 1, v48
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v48, v3, v48, 0x7fff
	v_mov_b16_e32 v50.l, v37.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v40
	v_ldexp_f32 v38, v39, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v39, v49
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v49, 1, v50
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v50, null, v36, v36, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v3.h, 0x7fff, v48.h, vcc_lo
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
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v203, v43, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v29, v29, v51, v205
	scratch_load_b32 v51, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v205, v29, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v42, v42, v56, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v202, v42, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v28, v28, v51, v204
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v50, v49, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v204, v28, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v49, v51, v49
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v51, v55, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v48, v52, 1.0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v44, v57, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v56, v53, v49
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v51, v51, v172, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v52, v55, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v44, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v50, v56, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v51, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v51, v54, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v54, s1, v40, v38, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v56, v57, v49 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v43
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v51, v51, v171, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v58, v54, v52
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v51, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v51, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v55, 0, 0x42800000, s4
	v_mul_f32_e32 v57, 0xbfb8aa3b, v42
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v45, v45, v51, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v48, v58, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v45, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v50, v56, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v51, v52
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v50, v55
	v_cndmask_b32_e64 v51, 0, 0x42800000, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v45, v45, v49, v56
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v48, -v48, v58, v54
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v36, v45, v36, v41
	v_div_fmas_f32 v48, v48, v52, v58
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v44, v50, v49
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:400
	scratch_load_b32 v52, off, off offset:432
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v38, v48, v38, v40
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v51, v51
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v29, v29, v36 :: v_dual_mul_f32 v28, v28, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, null, v37, v37, v43
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v3.l, 0x7fff, v39.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s1, v29, v29
	v_mov_b16_e32 v41.l, v28.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v44, v38
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v36, v51, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, v29.h
	v_mov_b16_e32 v40.h, v86.l
	v_mov_b16_e32 v41.h, v86.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v40, 1, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v38, v44, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v45, null, v36, v36, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v29, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v40, v28, v40, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v44, v48, v44
	v_div_scale_f32 v48, vcc_lo, v43, v37, v43
	v_rcp_f32_e32 v41, v45
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v33, v33, v52, v184
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v52, off, off offset:280 ; 4-byte Folded Reload
	v_fma_f32 v30, v30, v49, v200
	scratch_load_b32 v49, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v184, v33, s2
	v_cndmask_b32_e64 v30, v200, v30, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v25, v168, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v46, v129, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v46, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v31, v31, v49, v201
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v49, -v45, v41, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v201, v31, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v31, v48, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v49, v41
	v_div_scale_f32 v49, s4, v42, v36, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v47, v47, v52, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v38, v31, v48
	v_mul_f32_e32 v51, v49, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v29, v47, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v31, v50, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v45, v51, v49
	v_fma_f32 v29, -v38, v31, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v51, v50, v41
	v_div_fmas_f32 v31, v29, v44, v31
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v29, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v45, v51, v49
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v31, v31, v37, v43
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v37, v47, v31
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v32, v32, v29, v183
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v33, v25, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v25, v38, v41, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v41, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v183, v32, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v29
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v25, v25, v36, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v36, v24, v125, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.h, 0x7fff, v39.h, s1
	s_delay_alu instid0(VALU_DEP_4)
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
	scratch_load_b32 v38, off, off offset:392 ; 4-byte Folded Reload
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
	scratch_load_b32 v36, off, off offset:424
	scratch_load_b32 v43, off, off offset:372
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v21, v83
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v5, v5, v38, v199
	scratch_load_b32 v38, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v40, v35, v36, v182
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v199, v5, s2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v39
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v39, v34, v86
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
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
	v_cndmask_b32_e64 v38, v182, v40, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v40, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v4, v33, 1.0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v27, v27, v174, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v36, v4
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v36, off, off offset:316 ; 4-byte Folded Reload
	v_fma_f32 v20, v20, v41, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v35, v20, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v39, v39, v40, v181
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v40, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v181, v39, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v27
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v26, v26, v175, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v21, v40, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v34, v26, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v34, s5, v31, v5, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, s4
	v_mul_f32_e32 v41, 0xbfb8aa3b, v26
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v44, v34, v40
	s_mov_b32 vcc_lo, s5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v27
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v21, v44, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v39
	v_cndmask_b32_e64 v41, 0, 0x42800000, s6
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v44, v37, v40 :: v_dual_fmac_f32 v41, 0xbfb8aa3b, v26
	v_fma_f32 v21, -v21, v44, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v35, v39, v43
	v_exp_f32_e32 v37, v41
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v39, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v21, v21, v40, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v4.h
	v_mov_b16_e32 v30.h, v86.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v21, v5, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.h, v86.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v34, v34, v27
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v37, v33
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v37, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v20, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v28.l, 0x7fff, v25.h, vcc_lo
	v_and_b32_e32 v25, 1, v30
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v29
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v29, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v5.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v7, v7, v36, v197
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v25, v4, v25, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v21, v21, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, vcc_lo, v27, v34, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v33, v20
	v_fma_f32 v35, -v32, v29, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v197, v7, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v5, v30, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
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
	scratch_load_b32 v32, off, off offset:332
	scratch_load_b32 v39, off, off offset:368
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v37, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v22, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v22, off, off offset:396 ; 4-byte Folded Reload
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
	v_fma_f32 v9, v9, v32, v180
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v180, v9, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v17, v17, v22, v9
	scratch_load_b32 v22, off, off offset:328 ; 4-byte Folded Reload
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
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v23, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v17.l, 0x7fff, v30.h, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v7, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.h, v86.l
	v_mov_b16_e32 v20.l, v7.h
	v_cmp_o_f32_e64 s4, v7, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v5, 1, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v5, v6, v5, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v16, v16
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v8, v8, v22, v179
	scratch_load_b32 v22, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v179, v8, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v9, v9, v22, v8
	scratch_load_b32 v22, off, off offset:380 ; 4-byte Folded Reload
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
	scratch_load_b32 v16, off, off offset:324
	scratch_load_b32 v21, off, off offset:320
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
	v_fma_f32 v11, v11, v16, v178
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v119, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v178, v11, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v19, v19, v22, v11
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v22, v118, v86
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v19, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v19, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v16, v16, v19, v195
	scratch_load_b32 v19, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v7, v7, v21, v177
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v21, null, v10, v10, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v195, v16, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v7, v177, v7, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v25, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v18, v18, v23, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v18, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v18, v20, v23
	v_mul_f32_e32 v20, 0xbfb8aa3b, v11
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v23, -v21, v25, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v25, v23, v25
	v_div_scale_f32 v23, null, v18, v18, v8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v29, v26, v25
	v_rcp_f32_e32 v27, v23
	s_mov_b32 vcc_lo, s5
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
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v33, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v20, v20, v30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v30, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v21, v21, v25, v29
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v4, v21, v10, v4
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v21, v120, v86
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
	s_waitcnt vmcnt(0)
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
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v23, -v23, v26, v30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v30, off, off offset:156
	scratch_load_b32 v25, off, off offset:260
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v23, v23, v27, v26
	v_fma_f32 v27, -v32, v29, v19
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v8, v23, v18, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v18, off, off offset:340 ; 4-byte Folded Reload
	v_fma_f32 v13, v13, v33, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v33, v31
	v_dual_fmac_f32 v29, v27, v34 :: v_dual_mul_f32 v8, v12, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v27, v79, v85, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v16, v13, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v121, v86
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v23, v84, v78, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v13, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v10, -v31, v33, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.h, v86.l
	v_cmp_o_f32_e64 s1, v4, v4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v10, v33
	v_div_scale_f32 v10, s4, v11, v20, v11
	s_mov_b32 vcc_lo, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v21, v21, v25, v30
	scratch_load_b32 v25, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v30, v21, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v30, v67, v92, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v14, v14, v18, v21
	scratch_load_b32 v18, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v21, v14, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v21, v77, v81, s0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v16, v16, v25, v193
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v25, v10, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v193, v16, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v31, v25, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v8, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v15, v15, v18, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v25, v26, v33
	v_fma_f32 v18, -v32, v29, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v32, v24, v2, s0
	v_cndmask_b32_e64 v2, v2, v24, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v16, v15, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v10, -v31, v25, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v24, 0x7632
	v_cndmask_b32_e64 v15, v91, v90, s0
	v_cndmask_b32_e64 v16, v82, v89, s0
	v_cndmask_b32_e64 v19, v76, v80, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v10, v10, v33, v25
	s_mov_b32 vcc_lo, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v25, v78, v84, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v18, v18, v34, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v10, v20, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v8.h
	v_mov_b16_e32 v11.h, v86.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v18, v22, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.l, 0x7fff, v5.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v12, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v4.h
	v_mov_b16_e32 v12.h, v86.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v14, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 1, v11
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e32 v14.h, v86.l
	v_and_b32_e32 v12, 1, v12
	v_mov_b16_e32 v14.l, v7.h
	v_add3_u32 v6, v8, v11, 0x7fff
	v_and_b32_e32 v13, 1, v13
	v_cmp_o_f32_e64 s3, v10, v10
	v_add3_u32 v12, v4, v12, 0x7fff
	v_and_b32_e32 v11, 1, v14
	v_cmp_o_f32_e64 s4, v7, v7
	v_add3_u32 v8, v10, v13, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s2
	v_cndmask_b16 v5.h, 0x7fff, v12.h, s1
	v_add3_u32 v4, v7, v11, 0x7fff
	s_mov_b32 s1, 0x76543210
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s3
	v_cndmask_b32_e64 v8, v131, v133, s0
	v_cndmask_b32_e64 v34, v5, v17, s0
	v_cndmask_b16 v6.l, 0x7fff, v4.h, s4
	v_cndmask_b32_e64 v4, v132, v0, s0
	v_cndmask_b32_e64 v0, v0, v132, s0
	v_cndmask_b32_e64 v5, v17, v5, s0
	v_mov_b32_e32 v17, 0x5410
	v_cndmask_b32_e64 v35, v6, v9, s0
	v_cndmask_b32_e64 v6, v9, v6, s0
	v_permlanex16_b32 v9, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v11, v163, v87, s0
	v_cndmask_b32_e64 v0, 0x1054, v17, s0
	v_cndmask_b32_e64 v17, 0x3276, v24, s0
	v_cndmask_b32_e64 v13, v170, v88, s0
	v_cndmask_b32_e64 v18, v89, v82, s0
	v_cndmask_b32_e64 v20, v80, v76, s0
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v17, v17, 8, v17
	v_cndmask_b32_e64 v22, v81, v77, s0
	v_cndmask_b32_e64 v33, v28, v3, s0
	v_cndmask_b32_e64 v3, v3, v28, s0
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v17, 0x760076, v17
	v_cndmask_b32_e64 v7, v133, v131, s0
	v_cndmask_b32_e64 v10, v87, v163, s0
	v_cndmask_b32_e64 v12, v88, v170, s0
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v17, v17, 4, v17
	v_cndmask_b32_e64 v26, v85, v79, s0
	v_cndmask_b32_e64 v31, v1, v68, s0
	v_cndmask_b32_e64 v1, v68, v1, s0
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v25, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v27, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v30, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v36, 0x5040504, v0
	v_and_b32_e32 v37, 0x7060706, v17
	v_cndmask_b32_e64 v14, v90, v91, s0
	v_cndmask_b32_e64 v29, v92, v67, s0
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
	buffer_store_b128 v[0:3], v32, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v32, s[20:23], 0 offen offset:256
	buffer_store_b128 v[8:11], v33, s[20:23], 0 offen
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
	buffer_store_b128 v[12:15], v0, s[20:23], 0 offen
	buffer_store_b128 v[16:19], v1, s[20:23], 0 offen
	buffer_store_b128 v[20:23], v2, s[20:23], 0 offen
	buffer_store_b128 v[24:27], v3, s[20:23], 0 offen
	buffer_store_b128 v[28:31], v4, s[20:23], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 1196
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 50600
; TotalNumSgprs: 55
; NumVgprs: 256
; ScratchSize: 1196
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 1196
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 542
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
