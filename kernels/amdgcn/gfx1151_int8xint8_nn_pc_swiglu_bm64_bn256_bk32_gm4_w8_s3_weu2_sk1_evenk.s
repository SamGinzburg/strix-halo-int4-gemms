	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
	v_mov_b32_e32 v213, v0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_mov_b32 s38, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v2, 3, v213
	v_and_b32_e32 v3, 24, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v2, 0x778, v2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s14, 63
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
	s_lshr_b32 s10, s10, 26
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
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[24:25], s[22:23]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b32 s23, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s23
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v0, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s6, v0
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
	s_load_b32 s10, s[0:1], 0x38
	s_xor_b32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v0, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v0, 2, v213
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v0, s10, v0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s11
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s5, s12, s5
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s11, s4
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s34, s15, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s9
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s4, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s14, s4, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s10, 31
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s6, s3, 5
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s28, s2, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 31
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s28, s10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v194, v0, v3, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s34, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s14, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 348 30 is_stmt 1              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v0, s6, v194
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v1, 4, v213
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v40, 15, v213
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 63
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v196, 4, v213
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v1, s34, v1
	s_lshl_b32 s7, s15, 6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s6, s6, 32
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v4, s6, v194
	v_lshlrev_b32_e32 v41, 5, v213
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v39, 0, v196
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v42, v40, 4, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v21, 0x80000000, v4, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v44, s15, 5, v42
	v_add_nc_u32_e32 v1, s4, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v3, s4, v44
	s_add_i32 s4, s4, s7
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v12, s15, v1
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v13, s4, v42
	v_add_nc_u32_e32 v14, s4, v44
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v3, s3
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v3, s15, v3
	.loc	1 358 31 is_stmt 0              ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v22, s15, v13
	v_add3_u32 v20, s4, s15, v44
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v1, s3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v23, 0x80000000, v13, s2
	v_cndmask_b32_e64 v24, 0x80000000, v14, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[12:15], v12, s[24:27], 0 offen
	buffer_load_b128 v[16:19], v3, s[24:27], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v22, s2
	v_cndmask_b32_e64 v32, 0x80000000, v20, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[0:1], v0, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[4:7], v5, s[24:27], 0 offen
	buffer_load_b128 v[8:11], v8, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[36:37], v21, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[20:23], v23, s[24:27], 0 offen
	buffer_load_b128 v[24:27], v24, s[24:27], 0 offen
	buffer_load_b128 v[28:31], v3, s[24:27], 0 offen
	buffer_load_b128 v[32:35], v32, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_bfe_i32 v3, v213, 4, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x5f
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v3, 0x90, v3
	v_xor_b32_e32 v45, v3, v2
	v_and_b32_e32 v2, 16, v213
	v_lshrrev_b32_e32 v3, 1, v213
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v38, 0, v45
	s_waitcnt vmcnt(7)
	ds_store_b64 v38, v[0:1] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(6)
	ds_store_b128 v39, v[4:7]
	s_waitcnt vmcnt(5)
	ds_store_b128 v39, v[8:11] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v39, v[12:15] offset:16384
	ds_store_b128 v39, v[16:19] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v38, v[36:37] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v39, v[20:23] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v39, v[24:27] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v39, v[28:31] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v39, v[32:35] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v0, 5, v213
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_or_b32 v224, 0x70, v3, v40
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 4, v213
	s_mov_b32 s4, 0
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_and_b32_e32 v4, 0x160, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v0, 0x100, v224
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x200, v224
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v224
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v224
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x500, v224
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x600, v224
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x700, v224
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x800, v224
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x900, v224
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v224
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb00, v224
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v224
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd00, v224
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v224
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf00, v224
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1000, v224
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1100, v224
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1200, v224
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1300, v224
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1400, v224
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1500, v224
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1600, v224
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1700, v224
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1800, v224
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1900, v224
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a00, v224
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b00, v224
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c00, v224
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d00, v224
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e00, v224
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f00, v224
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x80, v224
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x180, v224
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x280, v224
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x380, v224
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x480, v224
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x580, v224
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x680, v224
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x780, v224
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x880, v224
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x980, v224
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa80, v224
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb80, v224
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc80, v224
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd80, v224
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe80, v224
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf80, v224
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1080, v224
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1180, v224
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1280, v224
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1380, v224
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1480, v224
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1580, v224
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1680, v224
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1780, v224
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1880, v224
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1980, v224
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a80, v224
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b80, v224
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c80, v224
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d80, v224
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e80, v224
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f80, v224
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr224
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
.LBB0_3:                                ; %Flow608
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v2
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v184, 0 :: v_dual_and_b32 v1, 0x160, v41
	v_bfe_i32 v0, v213, 2, 1
	v_and_or_b32 v224, 0x70, v3, v40
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v134, 0
	scratch_store_b32 off, v1, off offset:404 ; 4-byte Folded Spill
	v_and_or_b32 v0, 0x90, v0, v1
	v_or_b32_e32 v1, 0x100, v224
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v8, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:128
	scratch_store_b32 off, v213, off offset:400
	scratch_store_b32 off, v1, off offset:148
	v_or_b32_e32 v1, 0x200, v224
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v10, 0
	scratch_store_b32 off, v1, off offset:156 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x300, v224
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v248, 0
	scratch_store_b32 off, v1, off offset:164 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x400, v224
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v250, 0
	scratch_store_b32 off, v1, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x500, v224
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v246, 0
	scratch_store_b32 off, v1, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x600, v224
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v254, 0
	scratch_store_b32 off, v1, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x700, v224
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v252, 0
	scratch_store_b32 off, v1, off offset:196 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x800, v224
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v190, 0
	scratch_store_b32 off, v1, off offset:204 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x900, v224
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v176, 0
	scratch_store_b32 off, v1, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xa00, v224
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v182, 0
	scratch_store_b32 off, v1, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xb00, v224
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v172, 0
	scratch_store_b32 off, v1, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xc00, v224
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v168, 0
	scratch_store_b32 off, v1, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xd00, v224
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v160, 0
	scratch_store_b32 off, v1, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xe00, v224
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v166, 0
	scratch_store_b32 off, v1, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xf00, v224
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v158, 0
	scratch_store_b32 off, v1, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1000, v224
	scratch_store_b32 off, v41, off offset:408 ; 4-byte Folded Spill
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v152, 0
	scratch_store_b32 off, v1, off offset:152 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1100, v224
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v144, 0
	scratch_store_b32 off, v1, off offset:160 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1200, v224
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v106, 0
	scratch_store_b32 off, v1, off offset:168 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1300, v224
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v186, 0
	scratch_store_b32 off, v1, off offset:176 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1400, v224
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v136, 0
	scratch_store_b32 off, v1, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1500, v224
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v128, 0
	scratch_store_b32 off, v1, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1600, v224
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v138, 0
	scratch_store_b32 off, v1, off offset:200 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1700, v224
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v126, 0
	scratch_store_b32 off, v1, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1800, v224
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	scratch_store_b32 off, v1, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1900, v224
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	scratch_store_b32 off, v1, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1a00, v224
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v118, 0
	scratch_store_b32 off, v1, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1b00, v224
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	scratch_store_b32 off, v1, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1c00, v224
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v226, 0
	scratch_store_b32 off, v1, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1d00, v224
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v228, 0
	scratch_store_b32 off, v1, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1e00, v224
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v192, 0
	scratch_store_b32 off, v1, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1f00, v224
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v222, 0
	scratch_store_b32 off, v1, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x80, v224
	v_mov_b32_e32 v223, 0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s36, s5, 5
	s_add_i32 s1, s6, 32
	s_mov_b32 s35, 1
	scratch_store_b32 off, v1, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x180, v224
	s_add_i32 s39, 0, 0x8000
	s_add_i32 s31, 0, 0x8800
	s_add_i32 s30, 0, 0x2000
	s_add_i32 s33, 0, 0x4000
	scratch_store_b32 off, v1, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x280, v224
	s_add_i32 s29, 0, 0x6000
	s_add_i32 s36, s36, -3
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	scratch_store_b32 off, v1, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x380, v224
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	scratch_store_b32 off, v1, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x480, v224
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_mov_b32 s38, s4
	scratch_store_b32 off, v1, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x580, v224
	s_mov_b32 s37, s4
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v42, off offset:136
	scratch_store_b32 off, v44, off offset:140
	scratch_store_b32 off, v45, off offset:144
	scratch_store_b32 off, v1, off offset:292
	v_or_b32_e32 v1, 0x680, v224
	scratch_store_b32 off, v1, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x780, v224
	scratch_store_b32 off, v1, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x880, v224
	scratch_store_b32 off, v1, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x980, v224
	scratch_store_b32 off, v1, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xa80, v224
	scratch_store_b32 off, v1, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xb80, v224
	scratch_store_b32 off, v1, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xc80, v224
	scratch_store_b32 off, v1, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xd80, v224
	scratch_store_b32 off, v1, off offset:324 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xe80, v224
	scratch_store_b32 off, v1, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xf80, v224
	scratch_store_b32 off, v1, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1080, v224
	scratch_store_b32 off, v1, off offset:336 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1180, v224
	scratch_store_b32 off, v1, off offset:340 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1280, v224
	scratch_store_b32 off, v1, off offset:344 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1380, v224
	scratch_store_b32 off, v1, off offset:348 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1480, v224
	scratch_store_b32 off, v1, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1580, v224
	scratch_store_b32 off, v1, off offset:356 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1680, v224
	scratch_store_b32 off, v1, off offset:360 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1780, v224
	scratch_store_b32 off, v1, off offset:364 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1880, v224
	scratch_store_b32 off, v1, off offset:368 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1980, v224
	scratch_store_b32 off, v1, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1a80, v224
	scratch_store_b32 off, v1, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1b80, v224
	scratch_store_b32 off, v1, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1c80, v224
	scratch_store_b32 off, v1, off offset:384 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1d80, v224
	scratch_store_b32 off, v1, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1e80, v224
	scratch_store_b32 off, v1, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1f80, v224
	scratch_store_b32 off, v1, off offset:396 ; 4-byte Folded Spill
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s40, s37, 5
	s_mov_b32 s41, s38
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s38, s1, s40
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_clause 0xe                            ; 120-byte Folded Spill
	scratch_store_b64 off, v[9:10], off offset:8
	scratch_store_b64 off, v[239:240], off offset:112
	scratch_store_b64 off, v[7:8], off
	scratch_store_b64 off, v[149:150], off offset:104
	scratch_store_b64 off, v[171:172], off offset:96
	scratch_store_b64 off, v[173:174], off offset:16
	scratch_store_b64 off, v[231:232], off offset:88
	scratch_store_b64 off, v[214:215], off offset:48
	scratch_store_b64 off, v[233:234], off offset:80
	scratch_store_b64 off, v[235:236], off offset:72
	scratch_store_b64 off, v[175:176], off offset:64
	scratch_store_b64 off, v[177:178], off offset:24
	scratch_store_b64 off, v[187:188], off offset:56
	scratch_store_b64 off, v[179:180], off offset:32
	scratch_store_b64 off, v[181:182], off offset:40
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s38, v194
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v215, s11 :: v_dual_mov_b32 v182, v170
	v_dual_mov_b32 v214, s10 :: v_dual_add_nc_u32 v195, s41, v224
	v_mov_b32_e32 v212, s8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[0:1], v1, s[20:23], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v210, s6 :: v_dual_add_nc_u32 v197, s33, v224
	v_dual_mov_b32 v213, s9 :: v_dual_mov_b32 v180, v168
	v_dual_mov_b32 v209, s5 :: v_dual_mov_b32 v176, v164
	v_dual_mov_b32 v179, v167 :: v_dual_mov_b32 v172, v160
	v_dual_mov_b32 v175, v163 :: v_dual_mov_b32 v168, v156
	v_dual_mov_b32 v211, s7 :: v_dual_mov_b32 v178, v166
	v_dual_mov_b32 v181, v169 :: v_dual_mov_b32 v174, v162
	v_dual_mov_b32 v171, v159 :: v_dual_mov_b32 v164, v152
	v_dual_mov_b32 v167, v155 :: v_dual_mov_b32 v160, v102
	v_dual_mov_b32 v177, v165 :: v_dual_mov_b32 v170, v158
	v_dual_mov_b32 v173, v161 :: v_dual_mov_b32 v166, v154
	v_dual_mov_b32 v163, v151 :: v_dual_mov_b32 v156, v144
	v_dual_mov_b32 v159, v101 :: v_dual_mov_b32 v152, v140
	v_dual_mov_b32 v169, v157 :: v_dual_mov_b32 v162, v106
	v_mov_b32_e32 v165, v153
	v_dual_mov_b32 v157, v206 :: v_dual_mov_b32 v148, v136
	v_dual_mov_b32 v155, v143 :: v_dual_mov_b32 v150, v142
	v_dual_mov_b32 v153, v185 :: v_dual_mov_b32 v146, v138
	v_dual_mov_b32 v151, v139 :: v_dual_mov_b32 v144, v132
	v_dual_mov_b32 v149, v141 :: v_dual_mov_b32 v140, v130
	v_dual_mov_b32 v147, v135 :: v_dual_mov_b32 v136, v128
	v_mov_b32_e32 v145, v137
	v_dual_mov_b32 v143, v131 :: v_dual_mov_b32 v132, v126
	v_mov_b32_e32 v139, v129
	v_mov_b32_e32 v135, v127
	v_dual_mov_b32 v131, v125 :: v_dual_mov_b32 v130, v124
	v_mov_b32_e32 v128, v122
	v_dual_mov_b32 v126, v120 :: v_dual_mov_b32 v129, v123
	v_mov_b32_e32 v127, v121
	v_dual_mov_b32 v125, v119 :: v_dual_mov_b32 v122, v116
	v_mov_b32_e32 v120, v114
	v_dual_mov_b32 v124, v118 :: v_dual_mov_b32 v121, v115
	v_dual_mov_b32 v119, v113 :: v_dual_mov_b32 v114, v108
	v_dual_mov_b32 v123, v117 :: v_dual_mov_b32 v116, v110
	v_dual_mov_b32 v118, v112 :: v_dual_mov_b32 v113, v107
	v_mov_b32_e32 v107, v191
	v_dual_mov_b32 v161, v105 :: v_dual_mov_b32 v154, v186
	v_mov_b32_e32 v117, v111
	v_dual_mov_b32 v115, v109 :: v_dual_mov_b32 v108, v192
	v_mov_b32_e32 v110, v104
	v_mov_b32_e32 v106, v100
	v_mov_b32_e32 v191, v248
	v_dual_mov_b32 v137, v254 :: v_dual_mov_b32 v158, v207
	v_mov_b32_e32 v111, v225
	v_mov_b32_e32 v109, v103
	v_dual_mov_b32 v105, v99 :: v_dual_mov_b32 v104, v98
	v_dual_mov_b32 v101, v227 :: v_dual_mov_b32 v192, v249
	v_dual_mov_b32 v206, v222 :: v_dual_mov_b32 v187, v229
	v_mov_b32_e32 v99, v246
	v_dual_mov_b32 v141, v252 :: v_dual_mov_b32 v138, v255
	v_mov_b32_e32 v185, v250
	v_dual_mov_b32 v112, v226 :: v_dual_mov_b32 v103, v97
	v_dual_mov_b32 v102, v228 :: v_dual_mov_b32 v207, v223
	v_mov_b32_e32 v142, v253
	v_mov_b32_e32 v188, v230
	v_mov_b32_e32 v100, v247
	v_mov_b32_e32 v186, v251
	v_dual_mov_b32 v98, v94 :: v_dual_mov_b32 v97, v93
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s33, s35, 1
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s35, s38, s34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v208, s4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s38, s35, s14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[0:1], off offset:120 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v195 offset:3328
	ds_load_u8 v2, v195 offset:3072
	scratch_load_b32 v95, off, off offset:128 ; 4-byte Folded Reload
	v_mov_b32_e32 v0, v224
	ds_load_u8 v93, v195 offset:6656
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v195 offset:3840
	ds_load_u8 v3, v195 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v195 offset:2304
	ds_load_u8 v4, v195 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v195 offset:2816
	ds_load_u8 v5, v195 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v4, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v1
	ds_load_u8 v1, v195 offset:1280
	ds_load_u8 v2, v195 offset:1024
	v_lshl_or_b32 v3, v5, 16, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v195 offset:1792
	ds_load_u8 v5, v195 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v5, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v195 offset:256
	ds_load_u8 v5, v195
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v5, v1, 0xc0c0004
	ds_load_u8 v5, v195 offset:768
	ds_load_u8 v6, v195 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v195 offset:3456
	ds_load_u8 v6, v195 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v195 offset:3968
	ds_load_u8 v7, v195 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v195 offset:2432
	ds_load_u8 v8, v195 offset:2176
	v_lshl_or_b32 v28, v6, 16, v5
	ds_load_u8 v5, v195 offset:1408
	ds_load_u8 v6, v195 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v195 offset:2944
	ds_load_u8 v9, v195 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v8, 16, v7
	ds_load_u8 v6, v195 offset:1920
	ds_load_u8 v7, v195 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v26, v6, 16, v5
	ds_load_u8 v5, v195 offset:384
	ds_load_u8 v6, v195 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v195 offset:896
	ds_load_u8 v7, v195 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v6, 16, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v5, v197 offset:3328
	ds_load_u8 v6, v197 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v197 offset:3840
	ds_load_u8 v7, v197 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v197 offset:2304
	ds_load_u8 v8, v197 offset:2048
	v_lshl_or_b32 v32, v6, 16, v5
	ds_load_u8 v5, v197 offset:1280
	ds_load_u8 v6, v197 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v197 offset:2816
	ds_load_u8 v9, v197 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v8, 16, v7
	ds_load_u8 v6, v197 offset:1792
	ds_load_u8 v7, v197 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v30, v6, 16, v5
	ds_load_u8 v5, v197 offset:256
	ds_load_u8 v6, v197
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v197 offset:768
	ds_load_u8 v7, v197 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v6, 16, v5
	ds_load_u8 v5, v197 offset:3456
	ds_load_u8 v6, v197 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v197 offset:3968
	ds_load_u8 v7, v197 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v197 offset:2432
	ds_load_u8 v8, v197 offset:2176
	v_lshl_or_b32 v201, v6, 16, v5
	ds_load_u8 v5, v197 offset:1408
	ds_load_u8 v6, v197 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v197 offset:2944
	ds_load_u8 v9, v197 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v200, v8, 16, v7
	ds_load_u8 v6, v197 offset:1920
	ds_load_u8 v7, v197 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v199, v6, 16, v5
	ds_load_u8 v5, v197 offset:384
	ds_load_u8 v6, v197 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v197 offset:896
	ds_load_u8 v7, v197 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v198, v6, 16, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s39, v95
	ds_load_b128 v[41:44], v5
	ds_load_b128 v[45:48], v5 offset:512
	ds_load_b128 v[202:205], v5 offset:1024
	ds_load_b128 v[89:92], v5 offset:1536
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[216:223], v[1:4], v[41:44], v[208:215] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[224:231], v[1:4], v[45:48], v[208:215] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[1:4], v[202:205], v[208:215] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[1:4], v[89:92], v[208:215] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[232:239], v[25:28], v[41:44], v[208:215] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[25:28], v[45:48], v[208:215] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[25:28], v[202:205], v[208:215] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[25:28], v[89:92], v[208:215] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[240:247], v[29:32], v[41:44], v[208:215] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[248:255], v[198:201], v[41:44], v[208:215] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[29:32], v[45:48], v[208:215] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[198:201], v[45:48], v[208:215] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[29:32], v[202:205], v[208:215] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[29:32], v[89:92], v[208:215] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[198:201], v[89:92], v[208:215] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v89, v195 offset:7424
	ds_load_u8 v90, v195 offset:7168
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[57:64], v[198:201], v[202:205], v[208:215] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v195 offset:7936
	ds_load_u8 v91, v195 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v195 offset:6400
	ds_load_u8 v92, v195 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v195 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v93, v92, 0xc0c0004
	v_lshl_or_b32 v92, v90, 16, v89
	ds_load_u8 v89, v195 offset:5376
	ds_load_u8 v90, v195 offset:5120
	v_lshl_or_b32 v91, v93, 16, v91
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v195 offset:5888
	ds_load_u8 v93, v195 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v93, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v195 offset:4352
	ds_load_u8 v93, v195 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v93, v89, 0xc0c0004
	ds_load_u8 v93, v195 offset:4864
	ds_load_u8 v94, v195 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v93, 16, v89
	v_xor_b32_e32 v93, 16, v95
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v93, s39, v93
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s39, s38, s15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s33, 2
	s_cselect_b32 s35, s33, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[198:201], v93
	ds_load_b128 v[202:205], v93 offset:512
	ds_load_b128 v[208:211], v93 offset:1024
	ds_load_b128 v[212:215], v93 offset:1536
	s_lshl_b32 s33, s35, 11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s41, s37, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s40, s33, 0
	s_mov_b32 s33, s29
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[216:223], v[89:92], v[198:201], v[216:223] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[224:231], v[89:92], v[202:205], v[224:231] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[89:92], v[208:211], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[89:92], v[212:215], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v89, v195 offset:7552
	ds_load_u8 v90, v195 offset:7296
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v195 offset:8064
	ds_load_u8 v91, v195 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v195 offset:6528
	ds_load_u8 v92, v195 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v195 offset:7040
	ds_load_u8 v93, v195 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v93, v92, 0xc0c0004
	v_lshl_or_b32 v92, v90, 16, v89
	ds_load_u8 v89, v195 offset:5504
	ds_load_u8 v90, v195 offset:5248
	v_lshl_or_b32 v91, v93, 16, v91
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v195 offset:6016
	ds_load_u8 v93, v195 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v93, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v195 offset:4480
	ds_load_u8 v93, v195 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v93, v89, 0xc0c0004
	ds_load_u8 v93, v195 offset:4992
	ds_load_u8 v94, v195 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v93, 16, v89
	v_wmma_i32_16x16x16_iu8 v[232:239], v[89:92], v[198:201], v[232:239] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[89:92], v[202:205], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[89:92], v[208:211], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[89:92], v[212:215], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v89, v197 offset:7424
	ds_load_u8 v90, v197 offset:7168
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v197 offset:7936
	ds_load_u8 v91, v197 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v197 offset:6400
	ds_load_u8 v92, v197 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v197 offset:6912
	ds_load_u8 v93, v197 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v93, v92, 0xc0c0004
	v_lshl_or_b32 v92, v90, 16, v89
	ds_load_u8 v89, v197 offset:5376
	ds_load_u8 v90, v197 offset:5120
	v_lshl_or_b32 v91, v93, 16, v91
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v197 offset:5888
	ds_load_u8 v93, v197 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v93, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v197 offset:4352
	ds_load_u8 v93, v197 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v93, v89, 0xc0c0004
	ds_load_u8 v93, v197 offset:4864
	ds_load_u8 v94, v197 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v93, 16, v89
	ds_load_u8 v93, v197 offset:7552
	ds_load_u8 v94, v197 offset:7296
	v_wmma_i32_16x16x16_iu8 v[240:247], v[89:92], v[198:201], v[240:247] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[89:92], v[212:215], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[89:92], v[202:205], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[89:92], v[208:211], v[81:88] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v89, v216
	v_cvt_f32_i32_e32 v90, v217
	v_cvt_f32_i32_e32 v92, v219
	v_cvt_f32_i32_e32 v91, v218
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v197 offset:8064
	ds_load_u8 v95, v197 offset:7808
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v134, v134, v90
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v197 offset:6528
	ds_load_u8 v96, v197 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v197 offset:7040
	ds_load_u8 v195, v197 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v195, v96, 0xc0c0004
	v_lshl_or_b32 v96, v94, 16, v93
	ds_load_u8 v93, v197 offset:5504
	ds_load_u8 v94, v197 offset:5248
	v_lshl_or_b32 v95, v195, 16, v95
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v197 offset:6016
	ds_load_u8 v195, v197 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v195, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v94, 16, v93
	ds_load_u8 v93, v197 offset:4480
	ds_load_u8 v195, v197 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v195, v93, 0xc0c0004
	ds_load_u8 v195, v197 offset:4992
	ds_load_u8 v197, v197 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v197, v195, 0xc0c0004
	v_cvt_f32_i32_e32 v197, v242
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v242, v5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v93, v195, 16, v93
	v_cvt_f32_i32_e32 v195, v240
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v240, v3
	scratch_load_b32 v3, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[25:32], v[93:96], v[212:215], v[25:32] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v213, v239
	v_cvt_f32_i32_e32 v239, v2
	scratch_load_b32 v2, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[248:255], v[93:96], v[198:201], v[248:255] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v201, v232
	v_cvt_f32_i32_e32 v212, v238
	v_cvt_f32_i32_e32 v238, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[73:80], v[93:96], v[202:205], v[73:80] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v214, v248
	v_cvt_f32_i32_e32 v215, v249
	v_dual_mov_b32 v249, v192 :: v_dual_mov_b32 v248, v191
	v_cvt_f32_i32_e32 v216, v250
	v_cvt_f32_i32_e32 v217, v251
	v_dual_mov_b32 v251, v186 :: v_dual_mov_b32 v250, v185
	v_wmma_i32_16x16x16_iu8 v[57:64], v[93:96], v[208:211], v[57:64] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v95, v222
	v_cvt_f32_i32_e32 v222, v224
	v_cvt_f32_i32_e32 v224, v226
	v_cvt_f32_i32_e32 v226, v228
	v_cvt_f32_i32_e32 v228, v230
	v_cvt_f32_i32_e32 v230, v9
	v_cvt_f32_i32_e32 v203, v234
	v_cvt_f32_i32_e32 v234, v13
	v_cvt_f32_i32_e32 v93, v220
	v_cvt_f32_i32_e32 v94, v221
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v220, v254
	v_cvt_f32_i32_e32 v221, v255
	v_dual_mov_b32 v255, v138 :: v_dual_add_f32 v248, v248, v95
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v96, v223
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v200, v241
	v_cvt_f32_i32_e32 v208, v243
	v_cvt_f32_i32_e32 v198, v244
	v_cvt_f32_i32_e32 v209, v245
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v202, v233
	v_cvt_f32_i32_e32 v204, v235
	v_cvt_f32_i32_e32 v205, v236
	v_cvt_f32_i32_e32 v211, v237
	v_mov_b32_e32 v254, v137
	v_cvt_f32_i32_e32 v223, v225
	v_cvt_f32_i32_e32 v225, v227
	v_cvt_f32_i32_e32 v227, v229
	v_cvt_f32_i32_e32 v229, v231
	v_cvt_f32_i32_e32 v231, v10
	v_cvt_f32_i32_e32 v232, v11
	v_cvt_f32_i32_e32 v233, v12
	v_cvt_f32_i32_e32 v235, v14
	v_cvt_f32_i32_e32 v236, v15
	v_cvt_f32_i32_e32 v237, v16
	v_cvt_f32_i32_e32 v241, v4
	v_cvt_f32_i32_e32 v243, v6
	v_cvt_f32_i32_e32 v244, v7
	v_cvt_f32_i32_e32 v245, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v250, v250, v201
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v199, v246
	v_cvt_f32_i32_e32 v210, v247
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v255, v255, v204 :: v_dual_mov_b32 v192, v108
	v_add_f32_e32 v189, v189, v222
	v_mov_b32_e32 v191, v107
	v_mov_b32_e32 v107, v113
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v218, v252
	v_cvt_f32_i32_e32 v219, v253
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v249, v249, v96
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v254, v254, v203
	v_dual_mov_b32 v108, v114 :: v_dual_mov_b32 v113, v119
	v_dual_add_f32 v190, v190, v223 :: v_dual_mov_b32 v223, v207
	v_dual_mov_b32 v114, v120 :: v_dual_mov_b32 v119, v125
	v_mov_b32_e32 v222, v206
	v_mov_b32_e32 v207, v158
	v_dual_mov_b32 v120, v126 :: v_dual_mov_b32 v125, v131
	v_mov_b32_e32 v186, v154
	v_mov_b32_e32 v206, v157
	v_dual_mov_b32 v157, v169 :: v_dual_mov_b32 v126, v132
	v_mov_b32_e32 v131, v143
	v_dual_mov_b32 v185, v153 :: v_dual_mov_b32 v158, v170
	v_mov_b32_e32 v153, v165
	v_dual_mov_b32 v169, v181 :: v_dual_mov_b32 v132, v144
	v_dual_mov_b32 v143, v155 :: v_dual_mov_b32 v154, v166
	v_mov_b32_e32 v170, v182
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v108, v108, v26
	v_dual_mov_b32 v144, v156 :: v_dual_mov_b32 v155, v167
	v_add_f32_e32 v184, v184, v200
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v222, v222, v244
	v_dual_mov_b32 v156, v168 :: v_dual_add_f32 v125, v125, v23
	v_add_f32_e32 v192, v192, v241
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v120, v120, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v158, v158, v56
	v_add_f32_e32 v126, v126, v24
	v_add_f32_e32 v114, v114, v235
	v_add_f32_e32 v186, v186, v40
	v_add_f32_e32 v144, v144, v38
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v132, v132, v62
	v_add_f32_e32 v206, v206, v87
	v_add_f32_e32 v154, v154, v84
	v_add_f32_e32 v170, v170, v76
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v156, v156, v82 :: v_dual_add_nc_u32 v5, s38, v3
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v13, s39, v3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s38, v2
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v9, s39, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[24:27], 0 offen
	buffer_load_b128 v[5:8], v5, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v137, off, off offset:144 ; 4-byte Folded Reload
	s_mov_b32 s38, s30
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s30, s35, 13
	s_mov_b32 s39, s31
	s_add_i32 s30, s30, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s31, s40, 0x8000
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s29, s30, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s37, s36
	s_mov_b32 s37, s41
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v246, s40, v137
	scratch_load_b64 v[137:138], off, off offset:120 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v246, v[137:138] offset:32768
	v_dual_mov_b32 v247, v100 :: v_dual_mov_b32 v246, v99
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v193, s30, v196
	v_mov_b32_e32 v99, v105
	v_mov_b32_e32 v137, v145
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v251, v251, v202 :: v_dual_mov_b32 v100, v106
	v_add_f32_e32 v246, v246, v205
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v193, v[1:4]
	ds_store_b128 v193, v[5:8] offset:4096
	scratch_load_b64 v[7:8], off, off       ; 8-byte Folded Reload
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v193, v[9:12] offset:16384
	ds_store_b128 v193, v[13:16] offset:20480
	scratch_load_b64 v[9:10], off, off offset:8 ; 8-byte Folded Reload
	v_dual_mov_b32 v5, v111 :: v_dual_mov_b32 v6, v112
	v_dual_mov_b32 v111, v117 :: v_dual_mov_b32 v112, v118
	v_dual_mov_b32 v117, v123 :: v_dual_mov_b32 v138, v146
	v_dual_mov_b32 v1, v101 :: v_dual_mov_b32 v118, v124
	v_dual_mov_b32 v123, v129 :: v_dual_mov_b32 v124, v130
	v_mov_b32_e32 v129, v139
	v_dual_mov_b32 v105, v161 :: v_dual_mov_b32 v130, v140
	v_dual_mov_b32 v106, v162 :: v_dual_add_f32 v137, v137, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v118, v118, v233 :: v_dual_add_f32 v117, v117, v232
	v_dual_add_f32 v6, v6, v239 :: v_dual_add_f32 v113, v113, v234
	scratch_load_b64 v[233:234], off, off offset:80 ; 8-byte Folded Reload
	v_add_f32_e32 v191, v191, v240
	scratch_load_b64 v[239:240], off, off offset:112 ; 8-byte Folded Reload
	v_mov_b32_e32 v253, v142
	v_dual_add_f32 v247, v247, v211 :: v_dual_mov_b32 v2, v102
	v_dual_mov_b32 v101, v159 :: v_dual_mov_b32 v102, v160
	v_dual_mov_b32 v159, v171 :: v_dual_mov_b32 v252, v141
	v_mov_b32_e32 v141, v149
	v_dual_mov_b32 v139, v151 :: v_dual_mov_b32 v160, v172
	v_dual_mov_b32 v165, v177 :: v_dual_mov_b32 v140, v152
	v_dual_mov_b32 v151, v163 :: v_dual_mov_b32 v166, v178
	v_dual_mov_b32 v167, v179 :: v_dual_mov_b32 v152, v164
	v_dual_mov_b32 v161, v173 :: v_dual_mov_b32 v168, v180
	v_dual_mov_b32 v163, v175 :: v_dual_mov_b32 v162, v174
	v_mov_b32_e32 v164, v176
	s_clause 0x5                            ; 48-byte Folded Reload
	scratch_load_b64 v[171:172], off, off offset:96
	scratch_load_b64 v[173:174], off, off offset:16
	scratch_load_b64 v[175:176], off, off offset:64
	scratch_load_b64 v[177:178], off, off offset:24
	scratch_load_b64 v[179:180], off, off offset:32
	scratch_load_b64 v[181:182], off, off offset:40
	v_dual_mov_b32 v142, v150 :: v_dual_add_f32 v105, v105, v35
	scratch_load_b64 v[149:150], off, off offset:104 ; 8-byte Folded Reload
	v_dual_add_f32 v2, v2, v243 :: v_dual_add_f32 v133, v133, v89
	v_add_f32_e32 v252, v252, v212
	v_add_f32_e32 v168, v168, v50
	v_dual_add_f32 v166, v166, v52 :: v_dual_add_f32 v167, v167, v49
	v_add_f32_e32 v160, v160, v54
	v_dual_add_f32 v152, v152, v34 :: v_dual_add_f32 v151, v151, v33
	v_add_f32_e32 v106, v106, v36
	v_dual_add_f32 v138, v138, v20 :: v_dual_add_f32 v169, v169, v75
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v140, v140, v58
	v_dual_add_f32 v164, v164, v78 :: v_dual_add_f32 v163, v163, v77
	v_dual_add_f32 v142, v142, v60 :: v_dual_add_f32 v153, v153, v83
	v_add_f32_e32 v124, v124, v42
	v_dual_add_f32 v102, v102, v86 :: v_dual_add_f32 v101, v101, v85
	v_dual_add_f32 v139, v139, v57 :: v_dual_add_f32 v112, v112, v48
	v_dual_add_f32 v141, v141, v59 :: v_dual_add_f32 v130, v130, v64
	v_dual_add_f32 v129, v129, v63 :: v_dual_add_f32 v100, v100, v30
	v_add_f32_e32 v107, v107, v25
	v_dual_add_f32 v99, v99, v29 :: v_dual_add_f32 v162, v162, v80
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(10)
	v_dual_add_f32 v8, v8, v94 :: v_dual_add_f32 v7, v7, v93
	v_dual_mov_b32 v93, v97 :: v_dual_mov_b32 v94, v98
	v_dual_mov_b32 v97, v103 :: v_dual_mov_b32 v98, v104
	v_dual_mov_b32 v103, v109 :: v_dual_mov_b32 v104, v110
	v_mov_b32_e32 v109, v115
	v_dual_add_f32 v253, v253, v213 :: v_dual_mov_b32 v110, v116
	v_dual_mov_b32 v115, v121 :: v_dual_mov_b32 v116, v122
	v_mov_b32_e32 v121, v127
	s_waitcnt vmcnt(9)
	v_dual_add_f32 v9, v9, v91 :: v_dual_mov_b32 v122, v128
	v_dual_mov_b32 v127, v135 :: v_dual_mov_b32 v128, v136
	v_mov_b32_e32 v135, v147
	v_add_f32_e32 v121, v121, v230
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v143, v143, v37 :: v_dual_add_f32 v122, v122, v231
	v_add_f32_e32 v109, v109, v236
	v_add_f32_e32 v135, v135, v17
	scratch_load_b64 v[235:236], off, off offset:72 ; 8-byte Folded Reload
	v_dual_add_f32 v1, v1, v242 :: v_dual_add_f32 v94, v94, v215
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v93, v93, v214
	scratch_load_b64 v[214:215], off, off offset:48 ; 8-byte Folded Reload
	v_dual_mov_b32 v136, v148 :: v_dual_add_f32 v5, v5, v238
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v127, v127, v21 :: v_dual_add_f32 v10, v10, v92
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_add_f32 v165, v165, v51 :: v_dual_add_f32 v136, v136, v18
	v_dual_add_f32 v185, v185, v39 :: v_dual_add_f32 v110, v110, v237
	v_dual_add_f32 v128, v128, v22 :: v_dual_add_f32 v223, v223, v245
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(9)
	v_dual_add_f32 v183, v183, v195 :: v_dual_add_f32 v240, v240, v208
	v_add_f32_e32 v234, v234, v210
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(8)
	v_add_f32_e32 v172, v172, v229
	v_dual_mov_b32 v230, v188 :: v_dual_mov_b32 v229, v187
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[231:232], off, off offset:88
	scratch_load_b64 v[187:188], off, off offset:56
	s_waitcnt vmcnt(8)
	v_add_f32_e32 v176, v176, v227
	s_waitcnt vmcnt(5)
	v_dual_add_f32 v182, v182, v225 :: v_dual_add_f32 v175, v175, v226
	v_dual_add_f32 v171, v171, v228 :: v_dual_mov_b32 v226, v6
	v_dual_mov_b32 v228, v2 :: v_dual_add_f32 v181, v181, v224
	v_dual_mov_b32 v224, v0 :: v_dual_add_f32 v159, v159, v53
	v_add_f32_e32 v157, v157, v55
	v_mov_b32_e32 v225, v5
	v_dual_mov_b32 v227, v1 :: v_dual_add_f32 v230, v230, v217
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v239, v239, v197
	s_waitcnt vmcnt(4)
	v_dual_add_f32 v150, v150, v209 :: v_dual_add_f32 v149, v149, v198
	v_dual_add_f32 v233, v233, v199 :: v_dual_add_f32 v180, v180, v70
	v_dual_add_f32 v229, v229, v216 :: v_dual_add_f32 v174, v174, v74
	v_dual_add_f32 v179, v179, v69 :: v_dual_add_f32 v178, v178, v72
	v_add_f32_e32 v177, v177, v71
	v_add_f32_e32 v173, v173, v73
	v_add_f32_e32 v161, v161, v79
	v_add_f32_e32 v155, v155, v81
	v_dual_add_f32 v207, v207, v88 :: v_dual_add_f32 v116, v116, v46
	v_dual_add_f32 v131, v131, v61 :: v_dual_add_f32 v104, v104, v28
	v_dual_add_f32 v123, v123, v41 :: v_dual_add_f32 v98, v98, v32
	v_add_f32_e32 v119, v119, v43
	v_add_f32_e32 v115, v115, v45
	v_add_f32_e32 v111, v111, v47
	v_add_f32_e32 v103, v103, v27
	v_add_f32_e32 v97, v97, v31
	s_waitcnt vmcnt(3)
	v_dual_add_f32 v236, v236, v219 :: v_dual_add_f32 v235, v235, v218
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v215, v215, v221 :: v_dual_add_f32 v214, v214, v220
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v232, v232, v68
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v188, v188, v66 :: v_dual_add_f32 v187, v187, v65
	v_add_f32_e32 v231, v231, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v213, off, off offset:400
	scratch_load_b32 v0, off, off offset:408
	scratch_load_b32 v4, off, off offset:404
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v1, 4, v213
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v183, 0
	s_add_i32 s39, 0, 0x8000
	s_add_i32 s31, 0, 0x8800
	s_add_i32 s30, 0, 0x2000
	s_add_i32 s33, 0, 0x4000
	v_mov_b32_e32 v184, v183
	v_mov_b32_e32 v133, v183
	v_mov_b32_e32 v149, v183
	v_mov_b32_e32 v7, v183
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v9, v183 :: v_dual_mov_b32 v10, v184
	v_mov_b32_e32 v134, v184
	v_mov_b32_e32 v150, v184
	v_mov_b32_e32 v8, v184
	v_dual_mov_b32 v240, v184 :: v_dual_mov_b32 v239, v183
	v_dual_mov_b32 v234, v184 :: v_dual_mov_b32 v233, v183
	v_dual_mov_b32 v249, v184 :: v_dual_mov_b32 v248, v183
	v_dual_mov_b32 v93, v183 :: v_dual_mov_b32 v94, v184
	v_dual_mov_b32 v251, v184 :: v_dual_mov_b32 v250, v183
	v_dual_mov_b32 v236, v184 :: v_dual_mov_b32 v235, v183
	v_dual_mov_b32 v247, v184 :: v_dual_mov_b32 v246, v183
	v_dual_mov_b32 v230, v184 :: v_dual_mov_b32 v229, v183
	v_dual_mov_b32 v255, v184 :: v_dual_mov_b32 v254, v183
	v_dual_mov_b32 v215, v184 :: v_dual_mov_b32 v214, v183
	v_dual_mov_b32 v253, v184 :: v_dual_mov_b32 v252, v183
	v_dual_mov_b32 v188, v184 :: v_dual_mov_b32 v187, v183
	v_dual_mov_b32 v190, v184 :: v_dual_mov_b32 v189, v183
	v_dual_mov_b32 v179, v183 :: v_dual_mov_b32 v180, v184
	v_dual_mov_b32 v175, v183 :: v_dual_mov_b32 v176, v184
	v_dual_mov_b32 v232, v184 :: v_dual_mov_b32 v231, v183
	v_dual_mov_b32 v181, v183 :: v_dual_mov_b32 v182, v184
	v_dual_mov_b32 v177, v183 :: v_dual_mov_b32 v178, v184
	v_dual_mov_b32 v171, v183 :: v_dual_mov_b32 v172, v184
	v_dual_mov_b32 v173, v183 :: v_dual_mov_b32 v174, v184
	v_dual_mov_b32 v167, v183 :: v_dual_mov_b32 v168, v184
	v_dual_mov_b32 v163, v183 :: v_dual_mov_b32 v164, v184
	v_dual_mov_b32 v159, v183 :: v_dual_mov_b32 v160, v184
	v_dual_mov_b32 v169, v183 :: v_dual_mov_b32 v170, v184
	v_dual_mov_b32 v165, v183 :: v_dual_mov_b32 v166, v184
	v_dual_mov_b32 v161, v183 :: v_dual_mov_b32 v162, v184
	v_dual_mov_b32 v157, v183 :: v_dual_mov_b32 v158, v184
	v_dual_mov_b32 v155, v183 :: v_dual_mov_b32 v156, v184
	v_dual_mov_b32 v151, v183 :: v_dual_mov_b32 v152, v184
	v_dual_mov_b32 v101, v183 :: v_dual_mov_b32 v102, v184
	v_dual_mov_b32 v143, v183 :: v_dual_mov_b32 v144, v184
	v_dual_mov_b32 v153, v183 :: v_dual_mov_b32 v154, v184
	v_dual_mov_b32 v105, v183 :: v_dual_mov_b32 v106, v184
	v_dual_mov_b32 v207, v184 :: v_dual_mov_b32 v206, v183
	v_dual_mov_b32 v186, v184 :: v_dual_mov_b32 v185, v183
	v_dual_mov_b32 v139, v183 :: v_dual_mov_b32 v140, v184
	v_dual_mov_b32 v135, v183 :: v_dual_mov_b32 v136, v184
	v_dual_mov_b32 v131, v183 :: v_dual_mov_b32 v132, v184
	v_dual_mov_b32 v127, v183 :: v_dual_mov_b32 v128, v184
	v_dual_mov_b32 v141, v183 :: v_dual_mov_b32 v142, v184
	v_dual_mov_b32 v137, v183 :: v_dual_mov_b32 v138, v184
	v_dual_mov_b32 v129, v183 :: v_dual_mov_b32 v130, v184
	v_dual_mov_b32 v125, v183 :: v_dual_mov_b32 v126, v184
	v_dual_mov_b32 v123, v183 :: v_dual_mov_b32 v124, v184
	v_dual_mov_b32 v121, v183 :: v_dual_mov_b32 v122, v184
	v_dual_mov_b32 v115, v183 :: v_dual_mov_b32 v116, v184
	v_dual_mov_b32 v113, v183 :: v_dual_mov_b32 v114, v184
	v_dual_mov_b32 v119, v183 :: v_dual_mov_b32 v120, v184
	v_dual_mov_b32 v117, v183 :: v_dual_mov_b32 v118, v184
	v_dual_mov_b32 v111, v183 :: v_dual_mov_b32 v112, v184
	v_dual_mov_b32 v109, v183 :: v_dual_mov_b32 v110, v184
	v_dual_mov_b32 v107, v183 :: v_dual_mov_b32 v108, v184
	v_dual_mov_b32 v226, v184 :: v_dual_mov_b32 v225, v183
	v_dual_mov_b32 v99, v183 :: v_dual_mov_b32 v100, v184
	v_dual_mov_b32 v228, v184 :: v_dual_mov_b32 v227, v183
	v_dual_mov_b32 v103, v183 :: v_dual_mov_b32 v104, v184
	v_dual_mov_b32 v192, v184 :: v_dual_mov_b32 v191, v183
	v_dual_mov_b32 v97, v183 :: v_dual_mov_b32 v98, v184
	v_dual_mov_b32 v223, v184 :: v_dual_mov_b32 v222, v183
	s_add_i32 s29, 0, 0x6000
.LBB0_8:                                ; %Flow609
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[9:10], off offset:8
	scratch_store_b64 off, v[7:8], off
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s4, 0
	v_cndmask_b32_e64 v0, 0x90, 0, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v35, v0, v4
	v_xor_b32_e32 v36, 16, v35
	v_add_nc_u32_e32 v0, s39, v35
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, s39, v36
	ds_load_b128 v[29:32], v0
	ds_load_b128 v[25:28], v0 offset:512
	ds_load_b128 v[21:24], v0 offset:1024
	ds_load_b128 v[17:20], v0 offset:1536
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[9:12], v1 offset:512
	ds_load_b128 v[5:8], v1 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v1 offset:1536
	v_cndmask_b32_e64 v0, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s1, 1, v0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:324
	scratch_load_b32 v34, off, off offset:328
	scratch_load_b32 v33, off, off offset:320
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:312
	scratch_load_b32 v37, off, off offset:304
	v_dual_mov_b32 v146, v94 :: v_dual_mov_b32 v145, v93
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v0, s38, v0
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v34, s38, v34
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v33, s38, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v34, v34
	ds_load_u8 v33, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s38, v38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s38, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s38, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v56, v33, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, s38, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v37, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s38, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v55, v37, 16, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:296
	scratch_load_b32 v33, off, off offset:288
	v_add_nc_u32_e32 v0, s38, v0
	scratch_load_b32 v37, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v38, s38, v38
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v34, s38, v34
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v33, s38, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s38, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	ds_load_u8 v33, v33
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s38, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v54, v33, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:276
	scratch_load_b32 v33, off, off offset:272
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v34, s38, v34
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s38, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s38, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s38, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v53, v33, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:388
	scratch_load_b32 v33, off, off offset:384
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v34, s38, v34
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s38, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s38, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s38, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v60, v33, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, s38, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v37, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s38, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v37, 16, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:360
	scratch_load_b32 v33, off, off offset:352
	v_add_nc_u32_e32 v0, s38, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v44, s11 :: v_dual_mov_b32 v43, s10
	v_dual_mov_b32 v42, s9 :: v_dual_mov_b32 v41, s8
	ds_load_u8 v0, v0
	v_dual_mov_b32 v40, s7 :: v_dual_mov_b32 v39, s6
	v_dual_mov_b32 v38, s5 :: v_dual_mov_b32 v37, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[53:56], v[29:32], v[37:44] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, s38, v34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s38, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s38, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v58, v33, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:340
	scratch_load_b32 v33, off, off offset:336
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v34, s38, v34
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s38, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s38, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s38, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v33, 16, v0
	v_wmma_i32_16x16x16_iu8 v[45:52], v[57:60], v[13:16], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v0, v46
	v_cvt_f32_i32_e32 v33, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v69, v47
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v45, off, off offset:244
	scratch_load_b32 v47, off, off offset:252
	scratch_load_b32 v46, off, off offset:236
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v34, v48
	v_cvt_f32_i32_e32 v71, v49
	v_cvt_f32_i32_e32 v73, v51
	v_cvt_f32_i32_e32 v70, v50
	v_cvt_f32_i32_e32 v72, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v251, v251, v0
	v_dual_add_f32 v255, v255, v34 :: v_dual_add_f32 v246, v246, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v247, v247, v70
	v_dual_add_f32 v253, v253, v72 :: v_dual_add_f32 v250, v250, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:220
	scratch_load_b32 v48, off, off offset:204
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v254, v254, v69
	v_add_f32_e32 v252, v252, v73
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v45, s38, v45
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v47, s38, v47
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v46, s38, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	ds_load_u8 v47, v47
	ds_load_u8 v46, v46
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v49, s38, v49
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s38, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v49
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s38, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v47, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v64, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v47, s38, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v48, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s38, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v49, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v63, v48, 16, v47
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:188
	scratch_load_b32 v46, off, off offset:172
	v_add_nc_u32_e32 v45, s38, v45
	scratch_load_b32 v48, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v49, s38, v49
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v47, s38, v47
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v46, s38, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v49
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s38, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v46, v46
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s38, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v47, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v62, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:148 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v46, s38, v224
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v47, s38, v47
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s38, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s38, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v47, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v61, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:260
	scratch_load_b32 v46, off, off offset:248
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v47, s38, v47
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s38, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s38, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v45, v45
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s38, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v47, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v68, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v47, s38, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v48, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s38, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v48, 16, v47
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:200
	scratch_load_b32 v46, off, off offset:184
	v_add_nc_u32_e32 v45, s38, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v47, s38, v47
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s38, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s38, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v47, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v66, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:160
	scratch_load_b32 v46, off, off offset:152
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v47, s38, v47
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s38, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s38, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v45, v45
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s38, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v46, 16, v45
	v_wmma_i32_16x16x16_iu8 v[45:52], v[61:64], v[25:28], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[65:68], v[9:12], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v74, v46
	v_cvt_f32_i32_e32 v75, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v76, v48
	v_cvt_f32_i32_e32 v77, v47
	v_cvt_f32_i32_e32 v78, v50
	v_cvt_f32_i32_e32 v79, v49
	v_cvt_f32_i32_e32 v80, v52
	v_cvt_f32_i32_e32 v81, v51
	v_wmma_i32_16x16x16_iu8 v[45:52], v[53:56], v[25:28], v[37:44] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v190, v190, v74 :: v_dual_add_f32 v189, v189, v75
	v_add_f32_e32 v182, v182, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[45:52], v[57:60], v[9:12], v[45:52] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v181, v181, v77 :: v_dual_add_f32 v176, v176, v78
	v_dual_add_f32 v175, v175, v79 :: v_dual_add_f32 v172, v172, v80
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v82, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v83, v45
	v_cvt_f32_i32_e32 v84, v48
	v_cvt_f32_i32_e32 v85, v47
	v_cvt_f32_i32_e32 v86, v50
	v_cvt_f32_i32_e32 v87, v49
	v_cvt_f32_i32_e32 v88, v52
	v_cvt_f32_i32_e32 v89, v51
	v_wmma_i32_16x16x16_iu8 v[45:52], v[61:64], v[21:24], v[37:44] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v171, v171, v81 :: v_dual_add_f32 v168, v168, v82
	v_add_f32_e32 v167, v167, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[45:52], v[65:68], v[5:8], v[45:52] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v166, v166, v84 :: v_dual_add_f32 v165, v165, v85
	v_dual_add_f32 v160, v160, v86 :: v_dual_add_f32 v159, v159, v87
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v90, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v91, v45
	v_cvt_f32_i32_e32 v92, v48
	v_cvt_f32_i32_e32 v93, v47
	v_cvt_f32_i32_e32 v94, v50
	v_cvt_f32_i32_e32 v95, v49
	v_cvt_f32_i32_e32 v96, v52
	v_cvt_f32_i32_e32 v193, v51
	v_wmma_i32_16x16x16_iu8 v[45:52], v[53:56], v[21:24], v[37:44] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v105, v105, v93 :: v_dual_add_f32 v144, v144, v94
	v_mov_b32_e32 v93, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[45:52], v[57:60], v[5:8], v[45:52] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v158, v158, v88 :: v_dual_add_f32 v157, v157, v89
	v_dual_add_f32 v152, v152, v90 :: v_dual_add_f32 v151, v151, v91
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v194, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v195, v45
	v_cvt_f32_i32_e32 v197, v48
	v_cvt_f32_i32_e32 v198, v47
	v_cvt_f32_i32_e32 v199, v50
	v_cvt_f32_i32_e32 v200, v49
	v_cvt_f32_i32_e32 v201, v52
	v_cvt_f32_i32_e32 v202, v51
	v_wmma_i32_16x16x16_iu8 v[45:52], v[61:64], v[17:20], v[37:44] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v106, v106, v92
	v_dual_mov_b32 v94, v146 :: v_dual_add_f32 v143, v143, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[45:52], v[65:68], v[1:4], v[45:52] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v186, v186, v96 :: v_dual_add_f32 v185, v185, v193
	v_dual_add_f32 v136, v136, v194 :: v_dual_add_f32 v135, v135, v195
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v203, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v204, v45
	v_cvt_f32_i32_e32 v205, v48
	v_cvt_f32_i32_e32 v208, v47
	v_cvt_f32_i32_e32 v209, v50
	v_cvt_f32_i32_e32 v210, v49
	v_cvt_f32_i32_e32 v211, v52
	v_cvt_f32_i32_e32 v212, v51
	v_wmma_i32_16x16x16_iu8 v[45:52], v[61:64], v[29:32], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[53:56], v[17:20], v[37:44] neg_lo:[1,1,0]
	scratch_load_b64 v[53:54], off, off offset:8 ; 8-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v138, v138, v197
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[45:52], v[65:68], v[13:16], v[45:52] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v137, v137, v198
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[37:44], v[57:60], v[1:4], v[37:44] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v128, v128, v199 :: v_dual_add_f32 v127, v127, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v126, v126, v201 :: v_dual_add_f32 v249, v249, v52
	v_dual_add_f32 v248, v248, v51 :: v_dual_add_f32 v125, v125, v202
	v_dual_add_f32 v122, v122, v203 :: v_dual_add_f32 v121, v121, v204
	v_dual_add_f32 v118, v118, v205 :: v_dual_add_f32 v117, v117, v208
	v_dual_add_f32 v114, v114, v209 :: v_dual_add_f32 v113, v113, v210
	v_dual_add_f32 v110, v110, v211 :: v_dual_add_f32 v109, v109, v212
	v_dual_add_f32 v226, v226, v38 :: v_dual_add_f32 v225, v225, v37
	v_dual_add_f32 v192, v192, v40 :: v_dual_add_f32 v191, v191, v39
	v_dual_add_f32 v228, v228, v42 :: v_dual_add_f32 v227, v227, v41
	v_dual_add_f32 v223, v223, v44 :: v_dual_add_f32 v222, v222, v43
	v_dual_add_f32 v134, v134, v46 :: v_dual_add_f32 v133, v133, v45
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v54, v54, v48 :: v_dual_add_f32 v53, v53, v47
	scratch_load_b64 v[47:48], off, off     ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v48, v48, v50 :: v_dual_add_f32 v47, v47, v49
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[53:54], off offset:8
	scratch_store_b64 off, v[47:48], off
.LBB0_10:
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:244
	scratch_load_b32 v34, off, off offset:252
	scratch_load_b32 v33, off, off offset:236
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:220
	scratch_load_b32 v37, off, off offset:204
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v0, s33, v0
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v34, s33, v34
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v33, s33, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v34, v34
	ds_load_u8 v33, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s33, v38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s33, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v33, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s33, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v34, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v88, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v37, v34, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v37, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s33, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v38, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v87, v37, 16, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:188
	scratch_load_b32 v33, off, off offset:172
	v_add_nc_u32_e32 v0, s33, v0
	scratch_load_b32 v37, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v38, s33, v38
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v34, s33, v34
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v33, s33, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s33, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	ds_load_u8 v33, v33
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v33, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s33, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v34, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v86, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:148 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v33, s33, v224
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, s33, v34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s33, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v33, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s33, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v34, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v85, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:324
	scratch_load_b32 v33, off, off offset:320
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v34, s33, v34
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s33, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s33, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v33, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s33, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v34, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v92, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v37, v34, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v37, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s33, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v37, 16, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:296
	scratch_load_b32 v33, off, off offset:288
	v_add_nc_u32_e32 v0, s33, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v44, s11 :: v_dual_mov_b32 v43, s10
	v_dual_mov_b32 v42, s9 :: v_dual_mov_b32 v41, s8
	ds_load_u8 v0, v0
	v_dual_mov_b32 v40, s7 :: v_dual_mov_b32 v39, s6
	v_dual_mov_b32 v38, s5 :: v_dual_mov_b32 v37, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[85:88], v[29:32], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[61:68], v[85:88], v[25:28], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[197:204], v[85:88], v[17:20], v[37:44] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, s33, v34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s33, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v33, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s33, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v34, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v90, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:276
	scratch_load_b32 v33, off, off offset:272
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v34, s33, v34
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s33, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s33, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v33, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s33, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:260
	scratch_load_b32 v33, off, off offset:344
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[53:60], v[89:92], v[29:32], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[89:92], v[25:28], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[85:88], v[21:24], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[89:92], v[21:24], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[89:92], v[17:20], v[37:44] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v18, off, off offset:264
	scratch_load_b32 v17, off, off offset:248
	scratch_load_b32 v20, off, off offset:232
	scratch_load_b32 v19, off, off offset:216
	scratch_load_b32 v24, off, off offset:376
	scratch_load_b32 v22, off, off offset:392
	scratch_load_b32 v21, off, off offset:168
	scratch_load_b32 v23, off, off offset:368
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v0, s33, v0
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v33, s33, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v18, s33, v18
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v17, s33, v17
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v20, s33, v20
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v19, s33, v19
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v24, s33, v24
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	ds_load_u8 v20, v20
	ds_load_u8 v19, v19
	ds_load_u8 v24, v24
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v22, s33, v22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, s33, v21
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s33, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v17, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s33, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v18, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s33, v18
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v19, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v19, s33, v19
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_lshl_or_b32 v20, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v19, v19, 16, v18
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:200
	scratch_load_b32 v17, off, off offset:184
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s33, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v18, s33, v18
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s33, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v17, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s33, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:160
	scratch_load_b32 v17, off, off offset:152
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s33, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s33, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v17, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s33, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v21, v17, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v17, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[45:52], v[17:20], v[13:16], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[61:68], v[17:20], v[9:12], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[17:20], v[5:8], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[197:204], v[17:20], v[1:4], v[197:204] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v240, v240, v48 :: v_dual_add_f32 v239, v239, v47
	v_dual_add_f32 v150, v150, v50 :: v_dual_add_f32 v149, v149, v49
	v_dual_add_f32 v234, v234, v52 :: v_dual_add_f32 v233, v233, v51
	v_add_f32_e32 v155, v155, v25
	v_add_f32_e32 v153, v153, v27
	v_dual_add_f32 v101, v101, v29 :: v_dual_add_f32 v206, v206, v31
	v_dual_add_f32 v183, v183, v45 :: v_dual_add_f32 v184, v184, v46
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, s33, v21
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s33, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s33, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v22, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s33, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v23, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s33, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	v_lshl_or_b32 v24, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v23, v23, 16, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:360
	scratch_load_b32 v21, off, off offset:352
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s33, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v22, s33, v22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s33, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s33, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:340
	scratch_load_b32 v21, off, off offset:336
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s33, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s33, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s33, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v33, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v21, v21, 16, v0
	v_wmma_i32_16x16x16_iu8 v[53:60], v[21:24], v[13:16], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[21:24], v[9:12], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[21:24], v[5:8], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[21:24], v[1:4], v[37:44] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v8, v62
	v_cvt_f32_i32_e32 v0, v54
	v_cvt_f32_i32_e32 v1, v53
	v_cvt_f32_i32_e32 v2, v56
	v_cvt_f32_i32_e32 v3, v55
	v_cvt_f32_i32_e32 v4, v58
	v_cvt_f32_i32_e32 v5, v57
	v_cvt_f32_i32_e32 v6, v60
	v_cvt_f32_i32_e32 v7, v59
	v_cvt_f32_i32_e32 v9, v61
	v_cvt_f32_i32_e32 v10, v64
	v_cvt_f32_i32_e32 v11, v63
	v_cvt_f32_i32_e32 v12, v66
	v_cvt_f32_i32_e32 v13, v65
	v_cvt_f32_i32_e32 v14, v68
	v_cvt_f32_i32_e32 v15, v67
	v_cvt_f32_i32_e32 v16, v70
	v_cvt_f32_i32_e32 v17, v69
	v_cvt_f32_i32_e32 v18, v72
	v_cvt_f32_i32_e32 v19, v71
	v_cvt_f32_i32_e32 v20, v74
	v_cvt_f32_i32_e32 v21, v73
	v_cvt_f32_i32_e32 v22, v76
	v_cvt_f32_i32_e32 v23, v75
	v_cvt_f32_i32_e32 v24, v26
	v_cvt_f32_i32_e32 v26, v28
	v_cvt_f32_i32_e32 v28, v30
	v_cvt_f32_i32_e32 v30, v32
	v_cvt_f32_i32_e32 v32, v78
	v_cvt_f32_i32_e32 v33, v77
	v_cvt_f32_i32_e32 v34, v80
	v_cvt_f32_i32_e32 v53, v79
	v_cvt_f32_i32_e32 v54, v82
	v_cvt_f32_i32_e32 v55, v81
	v_cvt_f32_i32_e32 v56, v84
	v_cvt_f32_i32_e32 v57, v83
	v_cvt_f32_i32_e32 v58, v198
	v_cvt_f32_i32_e32 v59, v197
	v_cvt_f32_i32_e32 v60, v200
	v_cvt_f32_i32_e32 v61, v199
	v_cvt_f32_i32_e32 v62, v202
	v_cvt_f32_i32_e32 v63, v201
	v_cvt_f32_i32_e32 v64, v204
	v_cvt_f32_i32_e32 v65, v203
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v94, v94, v0 :: v_dual_add_f32 v93, v93, v1
	v_dual_add_f32 v230, v230, v2 :: v_dual_add_f32 v229, v229, v3
	v_dual_add_f32 v236, v236, v4 :: v_dual_add_f32 v235, v235, v5
	v_dual_add_f32 v215, v215, v6 :: v_dual_add_f32 v214, v214, v7
	v_dual_add_f32 v188, v188, v8 :: v_dual_add_f32 v187, v187, v9
	v_dual_add_f32 v232, v232, v10 :: v_dual_add_f32 v231, v231, v11
	v_dual_add_f32 v180, v180, v12 :: v_dual_add_f32 v179, v179, v13
	v_dual_add_f32 v178, v178, v14 :: v_dual_add_f32 v177, v177, v15
	v_dual_add_f32 v174, v174, v16 :: v_dual_add_f32 v173, v173, v17
	v_dual_add_f32 v170, v170, v18 :: v_dual_add_f32 v169, v169, v19
	v_dual_add_f32 v164, v164, v20 :: v_dual_add_f32 v163, v163, v21
	v_dual_add_f32 v162, v162, v22 :: v_dual_add_f32 v161, v161, v23
	v_add_f32_e32 v156, v156, v24
	v_add_f32_e32 v154, v154, v26
	v_dual_add_f32 v102, v102, v28 :: v_dual_add_f32 v207, v207, v30
	v_dual_add_f32 v140, v140, v32 :: v_dual_add_f32 v139, v139, v33
	v_dual_add_f32 v142, v142, v34 :: v_dual_add_f32 v141, v141, v53
	v_dual_add_f32 v132, v132, v54 :: v_dual_add_f32 v131, v131, v55
	v_dual_add_f32 v130, v130, v56 :: v_dual_add_f32 v129, v129, v57
	v_dual_add_f32 v124, v124, v58 :: v_dual_add_f32 v123, v123, v59
	v_dual_add_f32 v120, v120, v60 :: v_dual_add_f32 v119, v119, v61
	v_dual_add_f32 v116, v116, v62 :: v_dual_add_f32 v115, v115, v63
	v_dual_add_f32 v112, v112, v64 :: v_dual_add_f32 v111, v111, v65
	v_add_f32_e32 v98, v98, v44
	v_dual_add_f32 v108, v108, v38 :: v_dual_add_f32 v107, v107, v37
	v_dual_add_f32 v104, v104, v40 :: v_dual_add_f32 v103, v103, v39
	v_dual_add_f32 v100, v100, v42 :: v_dual_add_f32 v99, v99, v41
	v_add_f32_e32 v97, v97, v43
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[229:230], off offset:128
	scratch_store_b64 off, v[214:215], off offset:48
	s_branch .LBB0_13
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[229:230], off offset:128
	scratch_store_b64 off, v[214:215], off offset:48
.LBB0_13:
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v0, s31, v35
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v5, s31, v36
	v_dual_mov_b32 v210, v239 :: v_dual_mov_b32 v211, v240
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	ds_load_b128 v[29:32], v0
	ds_load_b128 v[21:24], v0 offset:512
	ds_load_b128 v[9:12], v0 offset:1024
	s_waitcnt lgkmcnt(3)
	ds_load_b128 v[1:4], v0 offset:1536
	ds_load_b128 v[25:28], v5
	ds_load_b128 v[17:20], v5 offset:512
	ds_load_b128 v[13:16], v5 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[5:8], v5 offset:1536
	v_cndmask_b32_e64 v0, 0, 1, s2
	v_dual_mov_b32 v147, v254 :: v_dual_mov_b32 v148, v255
	v_dual_mov_b32 v214, v252 :: v_dual_mov_b32 v215, v253
	v_dual_mov_b32 v208, v250 :: v_dual_mov_b32 v209, v251
	v_dual_mov_b32 v65, v248 :: v_dual_mov_b32 v66, v249
	v_dual_mov_b32 v229, v246 :: v_dual_mov_b32 v230, v247
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[173:174], off offset:16
	scratch_store_b64 off, v[222:223], off offset:56
	v_cmp_ne_u32_e64 s1, 1, v0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v86, 0
	v_mov_b32_e32 v67, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_15
; %bb.14:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v0, off, off offset:324
	scratch_load_b32 v34, off, off offset:332
	scratch_load_b32 v35, off, off offset:328
	scratch_load_b32 v33, off, off offset:320
	scratch_load_b32 v36, off, off offset:308
	scratch_load_b32 v38, off, off offset:316
	scratch_load_b32 v39, off, off offset:312
	scratch_load_b32 v37, off, off offset:304
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v40, off, off offset:292
	scratch_load_b32 v42, off, off offset:300
	scratch_load_b32 v43, off, off offset:296
	scratch_load_b32 v41, off, off offset:288
	scratch_load_b32 v44, off, off offset:276
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v52, s11 :: v_dual_mov_b32 v51, s10
	v_dual_mov_b32 v50, s9 :: v_dual_mov_b32 v49, s8
	v_dual_mov_b32 v48, s7 :: v_dual_mov_b32 v47, s6
	v_dual_mov_b32 v46, s5 :: v_dual_mov_b32 v45, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v0, s30, v0
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v34, s30, v34
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v35, s30, v35
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v33, s30, v33
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v36, s30, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v37, s30, v37
	v_add_nc_u32_e32 v38, s30, v38
	v_add_nc_u32_e32 v39, s30, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	ds_load_u8 v36, v36
	ds_load_u8 v37, v37
	ds_load_u8 v35, v35
	ds_load_u8 v38, v38
	ds_load_u8 v39, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v40, s30, v40
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v42, s30, v42
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v43, s30, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_perm_b32 v35, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v39, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:388
	scratch_load_b32 v39, off, off offset:396
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v64, v34, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:284
	scratch_load_b32 v34, off, off offset:280
	scratch_load_b32 v33, off, off offset:272
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v63, v36, 16, v35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v36, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v41, s30, v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	ds_load_u8 v43, v43
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v44, s30, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v38, 16, v35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:392
	scratch_load_b32 v38, off, off offset:372
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v37, s30, v37
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v0, s30, v0
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v34, s30, v34
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v33, s30, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	ds_load_u8 v33, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v36, s30, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v34, v34
	ds_load_u8 v37, v37
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v33, v33, v44, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:380
	scratch_load_b32 v40, off, off offset:368
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v36, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:376 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v39, s30, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v61, v0, 16, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:360
	scratch_load_b32 v33, off, off offset:340
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v35, s30, v35
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v38, s30, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[53:60], v[61:64], v[29:32], v[45:52] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v44, off, off offset:220
	scratch_load_b32 v43, off, off offset:204
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v34, s30, v34
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v40, s30, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v35, v35
	ds_load_u8 v38, v38
	ds_load_u8 v40, v40
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v37, s30, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	ds_load_u8 v37, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, s30, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v44, s30, v44
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v43, s30, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v35, v35, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v38, v40, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v71, v35, 16, v36
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v35, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v37, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:364 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v33, s30, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v70, v34, 16, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v40, s30, v40
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v35, s30, v35
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s30, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v36, v37
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	ds_load_u8 v35, v35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s30, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v0, v36, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v36, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v35, off, off offset:344 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v39, s30, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	ds_load_u8 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v40, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v0, 16, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:244
	scratch_load_b32 v34, off, off offset:236
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s30, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s30, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s30, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v38, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v75, v34, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s30, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v43, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v43, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v43, s30, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v74, v43, 16, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:188
	scratch_load_b32 v34, off, off offset:172
	v_add_nc_u32_e32 v0, s30, v0
	scratch_load_b32 v43, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v44, s30, v44
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, s30, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, s30, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v43, s30, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v34, v34
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s30, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v38, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v73, v34, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:148 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v34, s30, v224
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s30, v38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s30, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s30, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v38, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v72, v34, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:260
	scratch_load_b32 v34, off, off offset:248
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, s30, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s30, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s30, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v0, v0
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s30, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v38, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v79, v34, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s30, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v43, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v43, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v43, s30, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v43, 16, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:200
	scratch_load_b32 v34, off, off offset:184
	v_add_nc_u32_e32 v0, s30, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s30, v38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s30, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s30, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v38, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:168 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v35, s30, v35
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v77, v34, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:160
	scratch_load_b32 v34, off, off offset:152
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, s30, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s30, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s30, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v0, v0
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:176 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v36, s30, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v36, v36
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v68, v35, 16, v33
	v_wmma_i32_16x16x16_iu8 v[53:60], v[68:71], v[25:28], v[53:60] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v33, v53
	v_cvt_f32_i32_e32 v36, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v37, v55
	v_cvt_f32_i32_e32 v41, v56
	v_cvt_f32_i32_e32 v35, v57
	v_cvt_f32_i32_e32 v39, v58
	v_cvt_f32_i32_e32 v40, v59
	v_cvt_f32_i32_e32 v42, v60
	v_wmma_i32_16x16x16_iu8 v[53:60], v[72:75], v[21:24], v[45:52] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s30, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v38, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v76, v34, 16, v0
	v_wmma_i32_16x16x16_iu8 v[53:60], v[76:79], v[17:20], v[53:60] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v43, v53
	v_cvt_f32_i32_e32 v44, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v92, v55
	v_cvt_f32_i32_e32 v0, v56
	v_cvt_f32_i32_e32 v90, v57
	v_cvt_f32_i32_e32 v95, v58
	v_cvt_f32_i32_e32 v146, v59
	v_cvt_f32_i32_e32 v80, v60
	v_wmma_i32_16x16x16_iu8 v[53:60], v[61:64], v[21:24], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[68:71], v[17:20], v[53:60] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v81, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v83, v54
	v_cvt_f32_i32_e32 v84, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v88, v56
	v_cvt_f32_i32_e32 v82, v57
	v_cvt_f32_i32_e32 v85, v58
	v_cvt_f32_i32_e32 v87, v59
	v_cvt_f32_i32_e32 v89, v60
	v_wmma_i32_16x16x16_iu8 v[53:60], v[72:75], v[9:12], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[76:79], v[13:16], v[53:60] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v91, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v145, v54
	v_cvt_f32_i32_e32 v173, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v194, v56
	v_cvt_f32_i32_e32 v96, v57
	v_cvt_f32_i32_e32 v174, v58
	v_cvt_f32_i32_e32 v193, v59
	v_cvt_f32_i32_e32 v197, v60
	v_wmma_i32_16x16x16_iu8 v[53:60], v[61:64], v[9:12], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[68:71], v[13:16], v[53:60] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v198, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v200, v54
	v_cvt_f32_i32_e32 v201, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v204, v56
	v_cvt_f32_i32_e32 v199, v57
	v_cvt_f32_i32_e32 v202, v58
	v_cvt_f32_i32_e32 v203, v59
	v_cvt_f32_i32_e32 v205, v60
	v_wmma_i32_16x16x16_iu8 v[53:60], v[72:75], v[1:4], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[76:79], v[5:8], v[53:60] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v216, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v218, v54
	v_cvt_f32_i32_e32 v219, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v222, v56
	v_cvt_f32_i32_e32 v217, v57
	v_cvt_f32_i32_e32 v220, v58
	v_cvt_f32_i32_e32 v221, v59
	v_cvt_f32_i32_e32 v223, v60
	v_wmma_i32_16x16x16_iu8 v[53:60], v[72:75], v[29:32], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[61:64], v[1:4], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[76:79], v[25:28], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[68:71], v[5:8], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v34, v55
	v_cvt_f32_i32_e32 v38, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v61, v46
	v_cvt_f32_i32_e32 v62, v47
	v_cvt_f32_i32_e32 v212, v48
	v_cvt_f32_i32_e32 v46, v49
	v_cvt_f32_i32_e32 v63, v50
	v_cvt_f32_i32_e32 v86, v51
	v_cvt_f32_i32_e32 v67, v52
	v_cvt_f32_i32_e32 v51, v56
	v_cvt_f32_i32_e32 v49, v57
	v_cvt_f32_i32_e32 v50, v58
	v_cvt_f32_i32_e32 v47, v59
	v_cvt_f32_i32_e32 v48, v60
	v_cvt_f32_i32_e32 v54, v54
.LBB0_15:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v63, off offset:544
	scratch_store_b32 off, v62, off offset:540
	scratch_store_b32 off, v61, off offset:536
	scratch_store_b32 off, v46, off offset:532
	scratch_store_b32 off, v45, off offset:528
	scratch_store_b32 off, v223, off offset:524
	scratch_store_b32 off, v222, off offset:520
	scratch_store_b32 off, v221, off offset:516
	scratch_store_b32 off, v220, off offset:512
	scratch_store_b32 off, v219, off offset:508
	scratch_store_b32 off, v218, off offset:504
	scratch_store_b32 off, v217, off offset:500
	scratch_store_b32 off, v216, off offset:496
	scratch_store_b32 off, v205, off offset:492
	scratch_store_b32 off, v204, off offset:488
	scratch_store_b32 off, v203, off offset:484
	scratch_store_b32 off, v202, off offset:480
	scratch_store_b32 off, v201, off offset:476
	scratch_store_b32 off, v200, off offset:472
	scratch_store_b32 off, v199, off offset:468
	scratch_store_b32 off, v198, off offset:464
	scratch_store_b32 off, v197, off offset:460
	scratch_store_b32 off, v194, off offset:456
	scratch_store_b32 off, v193, off offset:452
	scratch_store_b32 off, v174, off offset:448
	scratch_store_b32 off, v173, off offset:444
	scratch_store_b32 off, v145, off offset:440
	scratch_store_b32 off, v96, off offset:436
	scratch_store_b32 off, v91, off offset:432
	scratch_store_b32 off, v89, off offset:428
	scratch_store_b32 off, v88, off offset:424
	scratch_store_b32 off, v87, off offset:420
	s_clause 0x9                            ; 52-byte Folded Spill
	scratch_store_b32 off, v85, off offset:416
	scratch_store_b32 off, v84, off offset:412
	scratch_store_b32 off, v83, off offset:408
	scratch_store_b32 off, v82, off offset:404
	scratch_store_b32 off, v81, off offset:400
	scratch_store_b32 off, v80, off offset:144
	scratch_store_b32 off, v0, off offset:140
	scratch_store_b64 off, v[181:182], off offset:40
	scratch_store_b64 off, v[179:180], off offset:32
	scratch_store_b64 off, v[177:178], off offset:24
	v_dual_mov_b32 v178, v172 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v196, v224 :: v_dual_mov_b32 v177, v171
	s_clause 0x7                            ; 64-byte Folded Spill
	scratch_store_b64 off, v[169:170], off offset:112
	scratch_store_b64 off, v[167:168], off offset:120
	scratch_store_b64 off, v[165:166], off offset:104
	scratch_store_b64 off, v[163:164], off offset:96
	scratch_store_b64 off, v[161:162], off offset:88
	scratch_store_b64 off, v[159:160], off offset:80
	scratch_store_b64 off, v[157:158], off offset:72
	scratch_store_b64 off, v[155:156], off offset:64
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v200, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_17
; %bb.16:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v55, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v0, off, off offset:396
	scratch_load_b32 v45, off, off offset:392
	scratch_load_b32 v46, off, off offset:388
	scratch_load_b32 v52, off, off offset:384
	scratch_load_b32 v56, off, off offset:264
	scratch_load_b32 v58, off, off offset:256
	scratch_load_b32 v59, off, off offset:252
	v_mov_b32_e32 v159, v95
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v53, off, off offset:380
	scratch_load_b32 v57, off, off offset:260
	scratch_load_b32 v60, off, off offset:244
	scratch_load_b32 v61, off, off offset:236
	scratch_load_b32 v62, off, off offset:228
	scratch_load_b32 v70, off, off offset:220
	scratch_load_b32 v71, off, off offset:212
	v_mov_b32_e32 v157, v90
	scratch_load_b32 v90, off, off offset:232 ; 4-byte Folded Reload
	v_mov_b32_e32 v160, v146
	v_dual_mov_b32 v146, v94 :: v_dual_add_nc_u32 v89, s29, v196
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v72, off, off offset:204
	scratch_load_b32 v73, off, off offset:196
	scratch_load_b32 v74, off, off offset:188
	scratch_load_b32 v75, off, off offset:180
	scratch_load_b32 v76, off, off offset:172
	scratch_load_b32 v77, off, off offset:164
	scratch_load_b32 v87, off, off offset:156
	scratch_load_b32 v88, off, off offset:148
	v_dual_mov_b32 v158, v92 :: v_dual_mov_b32 v145, v93
	s_waitcnt vmcnt(23)
	v_add_nc_u32_e32 v63, s29, v55
	scratch_load_b32 v55, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(19)
	v_add_nc_u32_e32 v56, s29, v56
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v58, s29, v58
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v59, s29, v59
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v60, s29, v60
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v61, s29, v61
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v94, s29, v90
	scratch_load_b32 v90, off, off offset:224 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v62, s29, v62
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v64, s29, v55
	scratch_load_b32 v55, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v196, s29, v90
	scratch_load_b32 v90, off, off offset:216 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v71, s29, v71
	v_add_nc_u32_e32 v70, s29, v70
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v68, s29, v55
	scratch_load_b32 v55, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v216, s29, v90
	scratch_load_b32 v90, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v69, s29, v55
	scratch_load_b32 v55, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v217, s29, v90
	scratch_load_b32 v90, off, off offset:200 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v72, s29, v72
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v60, v60
	ds_load_u8 v61, v61
	ds_load_u8 v58, v58
	ds_load_u8 v71, v71
	ds_load_u8 v72, v72
	ds_load_u8 v62, v62
	ds_load_u8 v70, v70
	ds_load_u8 v59, v59
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v59, off, off offset:176
	scratch_load_b32 v61, off, off offset:168
	v_add_nc_u32_e32 v76, s29, v76
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v78, s29, v55
	scratch_load_b32 v55, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v218, s29, v90
	scratch_load_b32 v90, off, off offset:192 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v73, s29, v73
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v59, s29, v59
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v61, s29, v61
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v79, s29, v55
	scratch_load_b32 v55, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v219, s29, v90
	scratch_load_b32 v90, off, off offset:184 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v74, s29, v74
	v_add_nc_u32_e32 v75, s29, v75
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v75, v75
	ds_load_u8 v76, v76
	ds_load_u8 v73, v73
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v80, s29, v55
	scratch_load_b32 v55, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v220, s29, v90
	scratch_load_b32 v90, off, off offset:160 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v77, s29, v77
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v81, s29, v55
	scratch_load_b32 v55, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v221, s29, v90
	scratch_load_b32 v90, off, off offset:152 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v88, s29, v88
	v_add_nc_u32_e32 v87, s29, v87
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v93, v89
	ds_load_u8 v77, v77
	ds_load_u8 v87, v87
	ds_load_u8 v74, v74
	ds_load_u8 v92, v88
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v88, off, off offset:248
	scratch_load_b32 v89, off, off offset:240
	v_add_nc_u32_e32 v57, s29, v57
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v82, s29, v55
	scratch_load_b32 v55, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v222, s29, v90
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v90, v58, 16, v60
	v_perm_b32 v58, v72, v71, 0xc0c0004
	v_perm_b32 v60, v70, v62, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v62, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v70, v74, v73, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v88, s29, v88
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v89, s29, v89
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v83, s29, v55
	scratch_load_b32 v55, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v84, s29, v55
	scratch_load_b32 v55, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v85, s29, v55
	scratch_load_b32 v55, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v91, s29, v55
	scratch_load_b32 v55, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v95, s29, v55
	scratch_load_b32 v55, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v96, s29, v55
	scratch_load_b32 v55, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v193, s29, v55
	scratch_load_b32 v55, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v194, s29, v55
	scratch_load_b32 v55, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v195, s29, v55
	scratch_load_b32 v55, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v197, s29, v55
	scratch_load_b32 v55, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v198, s29, v55
	scratch_load_b32 v55, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v199, s29, v55
	scratch_load_b32 v55, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v200, s29, v55
	scratch_load_b32 v55, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v201, s29, v55
	scratch_load_b32 v55, off, off offset:284 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s29, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v202, s29, v55
	scratch_load_b32 v55, off, off offset:280 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v45, s29, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v203, s29, v55
	scratch_load_b32 v55, off, off offset:276 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v46, s29, v46
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v204, s29, v55
	scratch_load_b32 v55, off, off offset:272 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v52, s29, v52
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v205, s29, v55
	scratch_load_b32 v55, off, off offset:268 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v53, s29, v53
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v55, s29, v55
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v57, v57
	ds_load_u8 v223, v88
	ds_load_u8 v55, v55
	ds_load_u8 v196, v196
	ds_load_u8 v216, v216
	ds_load_u8 v224, v89
	ds_load_u8 v94, v94
	ds_load_u8 v56, v56
	ds_load_u8 v219, v219
	ds_load_u8 v220, v220
	ds_load_u8 v217, v217
	ds_load_u8 v221, v221
	ds_load_u8 v222, v222
	ds_load_u8 v155, v59
	ds_load_u8 v156, v61
	ds_load_u8 v59, v218
	v_lshl_or_b32 v89, v60, 16, v58
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v58, v93, v92, 0xc0c0004
	v_lshl_or_b32 v88, v70, 16, v62
	v_perm_b32 v60, v87, v77, 0xc0c0004
	v_dual_mov_b32 v77, s11 :: v_dual_mov_b32 v76, s10
	v_dual_mov_b32 v75, s9 :: v_dual_mov_b32 v74, s8
	v_dual_mov_b32 v73, s7 :: v_dual_mov_b32 v72, s6
	v_dual_mov_b32 v71, s5 :: v_dual_mov_b32 v70, s4
	v_lshl_or_b32 v87, v60, 16, v58
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v92, v223, v57, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v196, v216, v196, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v216, v94, v224, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v93, v56, v55, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[247:254], v[87:90], v[1:4], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v218, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v217, v59, v217, 0xc0c0004
	v_lshl_or_b32 v94, v93, 16, v92
	v_lshl_or_b32 v93, v216, 16, v196
	v_perm_b32 v216, v156, v155, 0xc0c0004
	v_dual_mov_b32 v155, v235 :: v_dual_mov_b32 v156, v236
	ds_load_u8 v95, v95
	ds_load_u8 v96, v96
	ds_load_u8 v85, v85
	ds_load_u8 v195, v195
	ds_load_u8 v197, v197
	ds_load_u8 v193, v193
	ds_load_u8 v194, v194
	ds_load_u8 v91, v91
	ds_load_u8 v200, v200
	ds_load_u8 v201, v201
	ds_load_u8 v198, v198
	ds_load_u8 v204, v204
	ds_load_u8 v205, v205
	ds_load_u8 v202, v202
	ds_load_u8 v203, v203
	ds_load_u8 v199, v199
	ds_load_u8 v46, v46
	ds_load_u8 v52, v52
	ds_load_u8 v0, v0
	ds_load_u8 v64, v64
	ds_load_u8 v68, v68
	ds_load_u8 v53, v53
	ds_load_u8 v63, v63
	ds_load_u8 v45, v45
	ds_load_u8 v79, v79
	ds_load_u8 v80, v80
	ds_load_u8 v69, v69
	ds_load_u8 v83, v83
	ds_load_u8 v84, v84
	ds_load_u8 v81, v81
	ds_load_u8 v82, v82
	ds_load_u8 v78, v78
	v_perm_b32 v196, v222, v221, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[55:62], v[87:90], v[29:32], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v85, v91, v85, 0xc0c0004
	v_perm_b32 v96, v197, v195, 0xc0c0004
	v_perm_b32 v193, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v194, v201, v200, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v197, v199, v198, 0xc0c0004
	v_perm_b32 v198, v205, v204, 0xc0c0004
	v_perm_b32 v199, v203, v202, 0xc0c0004
	v_lshl_or_b32 v91, v216, 16, v196
	v_lshl_or_b32 v92, v217, 16, v218
	v_wmma_i32_16x16x16_iu8 v[216:223], v[87:90], v[21:24], v[70:77] neg_lo:[1,1,0]
	v_lshl_or_b32 v196, v85, 16, v95
	v_lshl_or_b32 v195, v193, 16, v96
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v46, v52, v46, 0xc0c0004
	v_mov_b32_e32 v95, v159
	v_lshl_or_b32 v194, v197, 16, v194
	v_lshl_or_b32 v193, v199, 16, v198
	v_wmma_i32_16x16x16_iu8 v[55:62], v[91:94], v[25:28], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[216:223], v[91:94], v[17:20], v[216:223] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[247:254], v[91:94], v[5:8], v[247:254] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v52, v63, v53, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v0, v45, v0, 0xc0c0004
	v_perm_b32 v45, v68, v64, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v53, v80, v79, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[239:246], v[193:196], v[9:12], v[70:77] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v250, v250
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v64, v84, v83, 0xc0c0004
	v_lshl_or_b32 v200, v0, 16, v46
	v_lshl_or_b32 v199, v52, 16, v45
	v_cvt_f32_i32_e32 v0, v57
	v_cvt_f32_i32_e32 v57, v62
	v_cvt_f32_i32_e32 v52, v216
	v_cvt_f32_i32_e32 v45, v218
	v_cvt_f32_i32_e32 v46, v219
	v_cvt_f32_i32_e32 v216, v220
	v_cvt_f32_i32_e32 v218, v222
	v_cvt_f32_i32_e32 v220, v223
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v68, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v78, v69, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[78:85], v[193:196], v[29:32], v[70:77] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v69, v56
	v_lshl_or_b32 v197, v68, 16, v64
	v_cvt_f32_i32_e32 v68, v58
	v_lshl_or_b32 v198, v63, 16, v53
	v_cvt_f32_i32_e32 v53, v217
	v_cvt_f32_i32_e32 v217, v221
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[197:200], v[25:28], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[193:196], v[21:24], v[70:77] neg_lo:[1,1,0]
	v_mov_b32_e32 v21, v231
	v_mov_b32_e32 v23, v233
	v_wmma_i32_16x16x16_iu8 v[239:246], v[197:200], v[13:16], v[239:246] neg_lo:[1,1,0]
	v_mov_b32_e32 v22, v232
	v_mov_b32_e32 v24, v234
	v_wmma_i32_16x16x16_iu8 v[231:238], v[87:90], v[9:12], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[193:196], v[1:4], v[70:77] neg_lo:[1,1,0]
	v_mov_b32_e32 v90, v157
	v_cvt_f32_i32_e32 v195, v55
	v_cvt_f32_i32_e32 v193, v59
	v_cvt_f32_i32_e32 v194, v60
	v_cvt_f32_i32_e32 v55, v61
	v_wmma_i32_16x16x16_iu8 v[25:32], v[197:200], v[17:20], v[25:32] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v56, v78
	v_cvt_f32_i32_e32 v59, v79
	v_cvt_f32_i32_e32 v60, v80
	v_cvt_f32_i32_e32 v63, v81
	v_cvt_f32_i32_e32 v58, v82
	v_cvt_f32_i32_e32 v61, v83
	v_cvt_f32_i32_e32 v62, v84
	v_cvt_f32_i32_e32 v64, v85
	v_cvt_f32_i32_e32 v201, v239
	v_cvt_f32_i32_e32 v239, v241
	v_cvt_f32_i32_e32 v242, v242
	v_cvt_f32_i32_e32 v241, v245
	v_cvt_f32_i32_e32 v245, v251
	v_wmma_i32_16x16x16_iu8 v[231:238], v[91:94], v[13:16], v[231:238] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[197:200], v[5:8], v[70:77] neg_lo:[1,1,0]
	v_dual_mov_b32 v93, v145 :: v_dual_mov_b32 v92, v158
	v_mov_b32_e32 v94, v146
	v_mov_b32_e32 v146, v160
	v_cvt_f32_i32_e32 v219, v25
	v_cvt_f32_i32_e32 v222, v26
	v_cvt_f32_i32_e32 v223, v27
	v_cvt_f32_i32_e32 v179, v28
	v_cvt_f32_i32_e32 v221, v29
	v_cvt_f32_i32_e32 v224, v30
	v_cvt_f32_i32_e32 v91, v31
	v_cvt_f32_i32_e32 v145, v32
	v_cvt_f32_i32_e32 v202, v231
	v_cvt_f32_i32_e32 v203, v232
	v_mov_b32_e32 v232, v22
	v_cvt_f32_i32_e32 v160, v233
	v_cvt_f32_i32_e32 v205, v234
	v_mov_b32_e32 v234, v24
	v_cvt_f32_i32_e32 v96, v235
	v_cvt_f32_i32_e32 v168, v236
	v_mov_b32_e32 v236, v156
	v_cvt_f32_i32_e32 v173, v237
	v_cvt_f32_i32_e32 v174, v238
	v_cvt_f32_i32_e32 v238, v240
	v_cvt_f32_i32_e32 v237, v243
	v_cvt_f32_i32_e32 v240, v244
	v_cvt_f32_i32_e32 v244, v246
	v_cvt_f32_i32_e32 v243, v247
	v_cvt_f32_i32_e32 v246, v248
	v_cvt_f32_i32_e32 v247, v249
	v_cvt_f32_i32_e32 v248, v252
	v_cvt_f32_i32_e32 v249, v253
	v_cvt_f32_i32_e32 v253, v254
	v_cvt_f32_i32_e32 v252, v70
	v_cvt_f32_i32_e32 v198, v71
	v_cvt_f32_i32_e32 v254, v72
	v_cvt_f32_i32_e32 v199, v73
	v_cvt_f32_i32_e32 v251, v74
	v_cvt_f32_i32_e32 v255, v75
	v_cvt_f32_i32_e32 v197, v76
	v_cvt_f32_i32_e32 v200, v77
	v_mov_b32_e32 v231, v21
	v_mov_b32_e32 v233, v23
	v_mov_b32_e32 v235, v155
.LBB0_17:
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt lgkmcnt(4)
	v_add_f32_e32 v1, v133, v38
	v_dual_add_f32 v2, v134, v54 :: v_dual_and_b32 v89, 0xf0, v213
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v0, v210, v0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s9, s17, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v133, v1, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v1, 1, v213
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v134, v2, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	scratch_load_b32 v2, off, off offset:136 ; 4-byte Folded Reload
	v_lshl_add_u32 v3, v89, 2, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v210, v0, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_and_b32_e32 v1, 28, v1
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s8, s16
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s1, s14, s15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v8, v229, v35 :: v_dual_add_f32 v25, v236, v61
	v_add_f32_e32 v30, v190, v44
	v_dual_add_f32 v7, v230, v39 :: v_dual_add_f32 v26, v235, v58
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v20, v94, v59 :: v_dual_add_f32 v21, v93, v56
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v182, v89, 1, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v167, v230, v7, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v31, v187, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v94, v20, s2
	v_cndmask_b32_e64 v172, v93, v21, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v89, 1, v89
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s13, s13, 0xffff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v17, v233, v55 :: v_dual_and_b32 v204, 15, v213
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v6, v147, v37
	v_add_f32_e32 v5, v148, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v233, v17, s2
	v_cndmask_b32_e64 v162, v147, v6, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v166, v148, v5, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v2, 32, v2
	v_add3_u32 v24, v3, v2, v1
	scratch_load_b64 v[3:4], off, off offset:8 ; 8-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v1, v183, v195 :: v_dual_add_f32 v2, v184, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v183, v1, s2
	v_cndmask_b32_e64 v15, v184, v2, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v1, v3, v34 :: v_dual_add_f32 v2, v4, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v3, v1, s2
	v_cndmask_b32_e64 v183, v4, v2, s2
	scratch_load_b64 v[3:4], off, off       ; 8-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v1, v211, v68 :: v_dual_add_f32 v2, v150, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v211, v1, s2
	v_cndmask_b32_e64 v18, v150, v2, s2
	v_dual_mov_b32 v210, v214 :: v_dual_mov_b32 v211, v215
	v_cndmask_b32_e64 v165, v229, v8, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v10, v210, v40 :: v_dual_add_f32 v9, v211, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v187, v31, s2
	v_cndmask_b32_e64 v163, v210, v10, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v164, v211, v9, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v0, v3, v49 :: v_dual_add_f32 v1, v4, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v184, v3, v0, s2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v0, s28, v204
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v4, v1, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v1, v149, v193
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v3, s14, v213
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s28, s28, s15
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v193, v207, v174 :: v_dual_lshlrev_b32 v0, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v149, v1, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v1, 32, v0
	v_or_b32_e32 v2, 64, v0
	v_or_b32_e32 v4, 0x60, v0
	s_clause 0x3
	buffer_load_u16 v28, v0, s[8:11], 0 offen
	buffer_load_u16 v181, v1, s[8:11], 0 offen
	buffer_load_u16 v32, v2, s[8:11], 0 offen
	buffer_load_u16 v195, v4, s[8:11], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v4, v208, v33
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v0, v3, s[8:11], 0 offen
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v1, v66, v48 :: v_dual_add_f32 v2, v65, v47
	v_add_f32_e32 v3, v209, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v236, v25, s2
	v_cndmask_b32_e64 v161, v208, v4, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v170, v66, v1, s2
	v_cndmask_b32_e64 v169, v65, v2, s2
	v_cndmask_b32_e64 v171, v209, v3, s2
	v_cndmask_b32_e64 v47, v235, v26, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v36, v188, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v190, v30, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v44, v188, v36, s2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v35, 16, v28
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v11, v234, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v234, v11, s2
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v24, v0
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v0, s1, v213, 1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[149:150], off, off offset:128
	scratch_load_b64 v[214:215], off, off offset:48
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v22, v150, v63 :: v_dual_add_f32 v23, v149, v60
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v27, v215, v64
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[4:7], v182 offset:512
	ds_load_b128 v[0:3], v182 offset:528
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v150, v22, s2
	v_cndmask_b32_e64 v49, v149, v23, s2
	v_cndmask_b32_e64 v40, v215, v27, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[20:23], v182
	ds_load_b128 v[8:11], v182 offset:16
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v24, v25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v182
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v29, v214, v62
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[65:66], off, off offset:56
	scratch_load_b64 v[235:236], off, off offset:32
	scratch_load_b64 v[133:134], off, off offset:16
	v_mov_b32_e32 v149, v227
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v214, v29, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v29, v189, v43 :: v_dual_mov_b32 v150, v228
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v227, v115, v245
	v_add_f32_e32 v245, v112, v253
	v_add_f32_e32 v228, v132, v240
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v159, v189, v29, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	ds_load_b128 v[28:31], v182 offset:16
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v41, v232, v46
	scratch_load_b64 v[188:189], off, off offset:24 ; 8-byte Folded Reload
	v_add_f32_e32 v240, v130, v244
	v_dual_add_f32 v244, v111, v249 :: v_dual_add_f32 v249, v104, v199
	v_add_f32_e32 v199, v97, v197
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v36, v25, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v15, v15, v36
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v36, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v36, v36
	v_ldexp_f32 v36, v36, v37
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v37, v231, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v231, v37, s2
	v_cndmask_b32_e64 v37, v232, v41, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v43, v43, v15
	v_rcp_f32_e32 v45, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v41, v45, 1.0
	v_fmac_f32_e32 v45, v46, v45
	v_div_scale_f32 v46, vcc_lo, v15, v43, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v50, v46, v45
	v_fma_f32 v52, -v41, v50, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v52, v45
	v_fma_f32 v41, -v41, v50, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v45, v50
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v45, v24, v35
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v14, v14, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v14
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v14
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v45, v45, v46
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v45, 1.0, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, null, v45, v45, v14
	v_rcp_f32_e32 v50, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v46, v50, 1.0
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, vcc_lo, v14, v45, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v53, v52, v50
	v_fma_f32 v54, -v46, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v54, v50
	v_fma_f32 v46, -v46, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v46, v46, v50, v53
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v50, v27, v35
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v13, v13, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v50, 0xbfb8aa3b, v13
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v41, v41, v43, v15
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v15, v26, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v12, v12, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v15, 0xbfb8aa3b, v12 :: v_dual_fmac_f32 v50, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v50, v50
	v_ldexp_f32 v50, v50, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v52, null, v50, v50, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v52
	v_fma_f32 v54, -v52, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v54, v53
	v_div_scale_f32 v54, vcc_lo, v13, v50, v13
	v_mul_f32_e32 v55, v54, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v52, v55, v54
	v_fmac_f32_e32 v55, v56, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v52, v55, v54
	v_div_fmas_f32 v52, v52, v53, v55
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v12
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v215, v134, v222
	v_add_f32_e32 v211, v133, v219
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v15, v15
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v219, v108, v198
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v218, v188, v218
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v15, v15, v43
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, null, v15, v15, v12
	v_rcp_f32_e32 v53, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v43, v53, 1.0
	v_fmac_f32_e32 v53, v54, v53
	v_div_scale_f32 v54, vcc_lo, v12, v15, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v55, v54, v53
	v_fma_f32 v56, -v43, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v56, v53
	v_fma_f32 v43, -v43, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v53, v43, v53, v55
	v_div_fixup_f32 v43, v46, v45, v14
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v14, v29, v35
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v14, v18, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v14
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v14
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v45
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v18, v18, v14
	v_rcp_f32_e32 v46, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v45, v46, 1.0
	v_fmac_f32_e32 v46, v54, v46
	v_div_scale_f32 v54, vcc_lo, v14, v18, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v55, v54, v46
	v_fma_f32 v56, -v45, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v56, v46
	v_fma_f32 v45, -v45, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v54, v45, v46, v55
	v_div_fixup_f32 v45, v52, v50, v13
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v13, v28, v35
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v13, v16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v13
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v13
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v46
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, null, v16, v16, v13
	v_rcp_f32_e32 v50, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v46, v50, 1.0
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, vcc_lo, v13, v16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v55, v52, v50
	v_fma_f32 v56, -v46, v55, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v56, v50
	v_fma_f32 v46, -v46, v55, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v52, v46, v50, v55
	v_div_fixup_f32 v46, v53, v15, v12
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v12, v31, v35
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v53, v19, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v12, 0xbfb8aa3b, v53
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v53
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v12, v12, v15
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v55, 1.0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v12, null, v55, v55, v53
	v_rcp_f32_e32 v15, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v12, v15, 1.0
	v_fmac_f32_e32 v15, v19, v15
	v_div_scale_f32 v19, vcc_lo, v53, v55, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v50, v19, v15
	v_fma_f32 v56, -v12, v50, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v56, v15
	v_fma_f32 v12, -v12, v50, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v56, v12, v15, v50
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v12, v30, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v50, v54, v18, v14
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v54, v17, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v12, 0xbfb8aa3b, v54
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v54
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v155, v52, v16, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v12, v12, v14
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v57, 1.0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v12, null, v57, v57, v54
	v_rcp_f32_e32 v14, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v12, v14, 1.0
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v54, v57, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v17, v15, v14
	v_fma_f32 v18, -v12, v17, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v14
	v_fma_f32 v12, -v12, v17, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v58, v12, v14, v17
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	ds_load_b128 v[16:19], v182 offset:512
	ds_load_b128 v[12:15], v182 offset:528
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v52, v17, v35
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v59, v59, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v52, 0xbfb8aa3b, v59
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v59
	v_exp_f32_e32 v52, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v52, v52, v60
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v60, 1.0, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v52, null, v60, v60, v59
	v_rcp_f32_e32 v61, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v52, v61, 1.0
	v_fmac_f32_e32 v61, v62, v61
	v_div_scale_f32 v62, vcc_lo, v59, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v63, v62, v61
	v_fma_f32 v64, -v52, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v64, v61
	v_fma_f32 v52, -v52, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v61, v52, v61, v63
	v_div_fixup_f32 v52, v56, v55, v53
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v53, v16, v35
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v53, v172, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v55, 0xbfb8aa3b, v53
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v53
	v_exp_f32_e32 v55, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v55, v55, v56
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v55, 1.0, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v56, null, v55, v55, v53
	v_rcp_f32_e32 v62, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v56, v62, 1.0
	v_fmac_f32_e32 v62, v63, v62
	v_div_scale_f32 v63, vcc_lo, v53, v55, v53
	v_div_fixup_f32 v54, v58, v57, v54
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v57, v19, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v64, v63, v62
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v57, v51, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v56, v64, v63
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v51, 0xbfb8aa3b, v57 :: v_dual_fmac_f32 v64, v68, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v56, -v56, v64, v63
	v_div_fmas_f32 v56, v56, v62, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v51, v51, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v58, 1.0, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v51, null, v58, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v62, v51
	v_fma_f32 v63, -v51, v62, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, v63, v62
	v_div_scale_f32 v63, vcc_lo, v57, v58, v57
	v_mul_f32_e32 v64, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v51, v64, v63
	v_fmac_f32_e32 v64, v68, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v51, v64, v63
	v_div_fmas_f32 v62, v51, v62, v64
	v_div_fixup_f32 v51, v61, v60, v59
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v59, v18, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v59, v49, v59
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v49, 0xbfb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v49, v49
	v_ldexp_f32 v49, v49, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v60, 1.0, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v49, null, v60, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v61, v49
	v_fma_f32 v63, -v49, v61, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, v63, v61
	v_div_scale_f32 v63, vcc_lo, v59, v60, v59
	v_mul_f32_e32 v64, v63, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v49, v64, v63
	v_fmac_f32_e32 v64, v68, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v49, v64, v63
	v_div_fmas_f32 v61, v49, v61, v64
	v_div_fixup_f32 v49, v56, v55, v53
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v53, v13, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v53, v48, v53
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v53
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v172, v61, v60, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v48, v48
	v_ldexp_f32 v48, v48, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v63, 1.0, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v63, v63, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v55, v48
	v_fma_f32 v56, -v48, v55, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v56, v55
	v_div_scale_f32 v56, vcc_lo, v53, v63, v53
	v_mul_f32_e32 v64, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v48, v64, v56
	v_fmac_f32_e32 v64, v68, v55
	v_div_fixup_f32 v158, v62, v58, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v48, v64, v56
	v_div_fmas_f32 v64, v48, v55, v64
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v48, v12, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v47, v47, v48
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v48, v48
	v_ldexp_f32 v48, v48, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v55, null, v48, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v56, v55
	v_fma_f32 v57, -v55, v56, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v56
	v_div_scale_f32 v57, vcc_lo, v47, v48, v47
	v_mul_f32_e32 v58, v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v55, v58, v57
	v_fmac_f32_e32 v58, v62, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v55, v58, v57
	v_div_fmas_f32 v55, v55, v56, v58
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v56, v15, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v56, v40, v56
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v40, v40
	v_ldexp_f32 v40, v40, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v57, 1.0, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v57, v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v58, v40
	v_fma_f32 v59, -v40, v58, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v58, v59, v58
	v_div_scale_f32 v59, vcc_lo, v56, v57, v56
	v_div_fixup_f32 v53, v64, v63, v53
	v_mul_f32_e32 v60, v59, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v40, v60, v59
	v_fmac_f32_e32 v60, v61, v58
	v_div_fixup_f32 v72, v55, v48, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v40, v60, v59
	v_div_fmas_f32 v58, v40, v58, v60
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v40, v14, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v56, v58, v57, v56
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v39, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v39
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v39
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v40, v40, v59
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v59, 1.0, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v59, v59, v39
	v_rcp_f32_e32 v60, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v40, v60, 1.0
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v39, v59, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v62, v61, v60
	v_fma_f32 v63, -v40, v62, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, v63, v60
	v_fma_f32 v40, -v40, v62, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v60, v40, v60, v62
	.loc	1 378 14 is_stmt 1              ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v40, 16, v181
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v61, v25, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v44, v44, v61
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v58, v60, v59, v39
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v39, v21, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v61, 0xbfb8aa3b, v44
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v39, v75, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v61, v61
	v_ldexp_f32 v61, v61, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v62, null, v61, v61, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v63, v62
	v_fma_f32 v64, -v62, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v64, v63
	v_div_scale_f32 v64, vcc_lo, v44, v61, v44
	v_mul_f32_e32 v68, v64, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v62, v68, v64
	v_fmac_f32_e32 v68, v69, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v62, v68, v64
	v_div_fmas_f32 v62, v62, v63, v68
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v63, v24, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v73, v62, v61, v44
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v42, v42, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v63, 0xbfb8aa3b, v42
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v63
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v42
	v_exp_f32_e32 v63, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v63, v63, v64
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v63, 1.0, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v63, v63, v42
	v_rcp_f32_e32 v68, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v64, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v42, v63, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v69, v68
	v_fma_f32 v71, -v64, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v70, v71, v68 :: v_dual_add_f32 v71, v154, v205
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_add_f32_e32 v205, v141, v239
	v_add_f32_e32 v239, v129, v241
	v_add_f32_e32 v241, v107, v252
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v64, -v64, v70, v69
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v69, v102, v168 :: v_dual_add_f32 v168, v140, v238
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v64, v64, v68, v70
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v70, v153, v160
	v_add_f32_e32 v68, v101, v96
	v_add_f32_e32 v160, v139, v201
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v55, v64, v63, v42
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v42, v20, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v101, v68, s2
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v38, v38, v42
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v42, v23, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v44, v183, v42
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v42, v22, v35
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v47, v34, v42 :: v_dual_mul_f32 v34, v9, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v81, v47, v46
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v48, v74, v34
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v34, v8, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v81, v81
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v59, v184, v34 :: v_dual_mul_f32 v34, v11, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v83, v59, v155 :: v_dual_mul_f32 v60, v170, v34
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v34, v10, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v59, v176, v95
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v61, v169, v34
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v34, v5, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v54, v61, v54
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v62, v171, v34
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v34, v4, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v64, v161, v34
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v34, v7, v35
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v74, v166, v34
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v34, v6, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v75, v162, v34 :: v_dual_mul_f32 v34, v1, v35
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v74, v74, v158 :: v_dual_mul_f32 v75, v75, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v76, v167, v34
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v34, v0, v35
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v77, v165, v34 :: v_dual_mul_f32 v34, v3, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v164, v34
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v34, v2, v35
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v79, v163, v34 :: v_dual_mul_f32 v34, v21, v40
	v_dual_mov_b32 v163, v191 :: v_dual_mov_b32 v164, v192
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_add_f32_e32 v192, v206, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v58, v79, v58
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v80, v33, v34 :: v_dual_mul_f32 v33, v20, v40
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v79, v29, v40 :: v_dual_add_f32 v158, v99, v251
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v251, s15, v204
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v73, v80, v73
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v57, v159, v33
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v33, v27, v40 :: v_dual_mul_f32 v82, v48, v50
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v173, v124, v246
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s7, v73, v73
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v246, v123, v243 :: v_dual_mul_f32 v161, v37, v33
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v33, v26, v40
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v37, v44, v45
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v243, s15, 4, v251
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v162, v36, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v33, 0xbfb8aa3b, v161 :: v_dual_mul_f32 v36, v38, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.h, 0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v52, v60, v52
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v37, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v36, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v161
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v34
	v_dual_mul_f32 v34, 0xbfb8aa3b, v162 :: v_dual_add_f32 v165, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, null, v165, v165, v161
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v166, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v34, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v42, v166, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v166, v33, v166
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v63, 1.0, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v63, v63, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v34
	v_fma_f32 v35, -v34, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v33, v35, v33
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v35, v39, v41
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v41, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v87, v64, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v35.h
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v39, 1, v38
	v_mov_b16_e32 v38.l, v37.h
	v_add3_u32 v35, v35, v39, 0x7fff
	v_mov_b16_e32 v39.h, v38.h
	v_mov_b16_e32 v39.l, v36.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v253.h, 0x7fff, v35.h, vcc_lo
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add3_u32 v35, s28, s14, v89
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v39
	v_mov_b16_e32 v89.h, v38.h
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v76, v76, v53
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s14, s10
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v172, 0x80, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v85, v36, v39, 0x7fff
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[233:234], off, off offset:120
	scratch_load_b32 v39, off, off offset:408
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v36, 1, v38
	v_cndmask_b16 v253.l, 0x7fff, v85.h, s1
	v_cmp_o_f32_e64 s1, v83, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v88, v37, v36, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[229:230], off, off offset:40
	scratch_load_b32 v36, off, off offset:140
	v_add_f32_e32 v37, v177, v146
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v252.h, 0x7fff, v88.h, s3
	v_mov_b16_e32 v88.h, v38.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v177, v37, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(4)
	v_add_f32_e32 v190, v144, v41
	scratch_load_b32 v41, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_f32_e32 v156, v234, v39
	scratch_load_b32 v39, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_f32_e32 v169, v229, v92
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v45, v230, v36
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v36, off, off offset:144
	scratch_load_b64 v[92:93], off, off offset:112
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v230, v45, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_add_f32_e32 v60, v143, v41
	scratch_load_b32 v41, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v146, v186, v41
	scratch_load_b32 v41, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v187, v185, v41
	scratch_load_b32 v41, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v182, v136, v41
	scratch_load_b32 v41, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v84, v62, v51 :: v_dual_add_f32 v183, v135, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v41, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v64, v138, v41
	scratch_load_b32 v41, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v61, v137, v41
	scratch_load_b32 v41, off, off offset:480 ; 4-byte Folded Reload
	v_add_f32_e32 v62, v175, v90
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v90, v235, v216 :: v_dual_add_f32 v155, v128, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v41, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v194, v127, v41
	scratch_load_b32 v41, off, off offset:492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v184, v126, v41
	scratch_load_b32 v41, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v36, v178, v36 :: v_dual_add_f32 v159, v125, v41
	scratch_load_b32 v41, off, off offset:504 ; 4-byte Folded Reload
	v_dual_mov_b32 v94, v175 :: v_dual_mov_b32 v95, v176
	v_dual_mov_b32 v175, v225 :: v_dual_mov_b32 v176, v226
	scratch_load_b64 v[225:226], off, off offset:96 ; 8-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v222, v93, v179
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v95, v59, s2
	v_cndmask_b32_e64 v36, v178, v36, s2
	v_dual_mov_b32 v95, v143 :: v_dual_mov_b32 v96, v144
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v41, v122, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v94, v62, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_store_b32 off, v41, off offset:156 ; 4-byte Folded Spill
	scratch_load_b32 v41, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v216, v225, v221
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v221, s15, 5, v251
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v167, v121, v41
	scratch_load_b32 v41, off, off offset:520 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v41, v118, v41
	scratch_store_b32 off, v41, off offset:148 ; 4-byte Folded Spill
	scratch_load_b32 v41, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v41, v117, v41
	scratch_store_b32 off, v41, off offset:152 ; 4-byte Folded Spill
	scratch_load_b32 v41, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v41, v114, v41
	scratch_store_b32 off, v41, off offset:144 ; 4-byte Folded Spill
	scratch_load_b32 v41, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v214, v113, v41
	scratch_load_b32 v41, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v41, v110, v41
	scratch_store_b32 off, v41, off offset:136 ; 4-byte Folded Spill
	scratch_load_b32 v41, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v41, v109, v41
	scratch_store_b32 off, v41, off offset:140 ; 4-byte Folded Spill
	scratch_load_b32 v41, off, off offset:536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v41, v176, v41
	scratch_store_b32 off, v41, off offset:128 ; 4-byte Folded Spill
	scratch_load_b32 v41, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v210, v175, v41 :: v_dual_add_f32 v41, v164, v212
	scratch_store_b32 off, v41, off offset:48 ; 4-byte Folded Spill
	scratch_load_b32 v41, off, off offset:540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v148, v163, v41
	scratch_load_b32 v41, off, off offset:544 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v147, v150, v41
	scratch_load_b32 v41, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v191, v149, v41
	v_add_f32_e32 v41, v66, v67
	scratch_store_b32 off, v41, off         ; 4-byte Folded Spill
	v_dual_add_f32 v41, v65, v86 :: v_dual_add_f32 v86, v236, v217
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v217, v226, v224
	scratch_load_b64 v[65:66], off, off offset:64 ; 8-byte Folded Reload
	scratch_store_b32 off, v41, off offset:8 ; 4-byte Folded Spill
	v_dual_add_f32 v41, v189, v220 :: v_dual_add_f32 v220, v92, v223
	scratch_load_b64 v[223:224], off, off offset:88 ; 8-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v157, v233, v39
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[231:232], off, off offset:104
	scratch_load_b32 v39, off, off offset:424
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v236, v86, s2
	v_cndmask_b32_e64 v41, v189, v41, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(3)
	v_dual_add_f32 v208, v65, v202 :: v_dual_add_f32 v209, v66, v203
	v_dual_mov_b32 v204, v154 :: v_dual_mov_b32 v203, v153
	v_mov_b32_e32 v154, v152
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v212, v223, v91
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v91.h, v38.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v50, v232, v39
	scratch_load_b32 v39, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v91.l, v81.h
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v213, v224, v145
	v_dual_add_f32 v145, v142, v242 :: v_dual_add_f32 v242, v131, v237
	v_mov_b32_e32 v153, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v91, 1, v91
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v232, v50, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v81, v81, v91, 0x7fff
	v_mov_b16_e32 v91.h, v38.h
	v_mov_b16_e32 v91.l, v83.h
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v238, v120, v250
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v252.l, 0x7fff, v81.h, s4
	v_mov_b16_e32 v81.h, v38.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v78, v78, v56 :: v_dual_and_b32 v85, 1, v91
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[197:198], null, s15, 48, v[251:252]
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v83, v83, v85, 0x7fff
	v_mov_b16_e32 v85.h, v38.h
	v_mov_b16_e32 v85.l, v87.h
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_add_f32_e32 v248, v116, v248
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s15, s11
	v_cndmask_b16 v237.l, 0x7fff, v83.h, s1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v83, v22, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v87, v87
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v51, v231, v39
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[180:181], off, off offset:80
	scratch_load_b32 v39, off, off offset:416
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v231, v51, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v48, v181, v39
	scratch_load_b32 v39, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v181, v48, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v49, v180, v39
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[170:171], off, off offset:72
	scratch_load_b32 v39, off, off offset:428
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v180, v49, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v46, v171, v39
	scratch_load_b32 v39, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v47, v170, v39
	scratch_load_b32 v39, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v82.h
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v250, v119, v247
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v82, v82
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v247, v103, v254 :: v_dual_add_f32 v254, v100, v255
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v53, 1, v38
	v_add3_u32 v53, v82, v53, 0x7fff
	v_mov_b16_e32 v82.h, v38.h
	v_mov_b16_e32 v82.l, v75.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v237.h, 0x7fff, v53.h, s5
	v_and_b32_e32 v53, 1, v85
	v_add3_u32 v53, v87, v53, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v53.l, 0x7fff, v53.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v43, v152, v39
	scratch_load_b32 v39, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v89.l, v54.h
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v152, 16, v32
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v32, v57, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v56, 1, v89
	v_add3_u32 v54, v54, v56, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v44, v151, v39
	scratch_load_b32 v39, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v153, v44, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v196, v106, v39
	scratch_load_b32 v39, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v39, v105, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v52.h
	v_cmp_o_f32_e64 s3, v52, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v105, v39, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v56, 1, v38
	v_mov_b16_e32 v38.l, v84.h
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v200, v98, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v52, v52, v56, 0x7fff
	v_and_b32_e32 v55, 1, v38
	v_mov_b16_e32 v38.l, v74.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v72, v77, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v52.l, 0x7fff, v54.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	v_add3_u32 v55, v84, v55, 0x7fff
	v_and_b32_e32 v57, 1, v38
	v_mov_b16_e32 v81.l, v72.h
	v_and_b32_e32 v54, 1, v82
	v_mov_b16_e32 v38.l, v76.h
	v_cmp_o_f32_e64 s5, v72, v72
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v80, s3, v161, v165, v161
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v54, v75, v54, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v75, s1, v162, v63, v162
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v77.h, v38.h
	v_mov_b16_e32 v77.l, v58.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v84, v9, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v53.h, 0x7fff, v55.h, vcc_lo
	v_and_b32_e32 v55, 1, v81
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_add3_u32 v57, v74, v57, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v74, v80, v166
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v54.l, 0x7fff, v54.h, s4
	v_cmp_o_f32_e64 s4, v78, v78
	v_add3_u32 v55, v72, v55, 0x7fff
	v_and_b32_e32 v72, 1, v38
	v_mov_b16_e32 v38.l, v78.h
	v_cndmask_b16 v54.h, 0x7fff, v57.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v81, -v42, v74, v80
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v57, 1, v77
	v_cmp_o_f32_e64 s6, v58, v58
	v_add3_u32 v72, v76, v72, 0x7fff
	v_and_b32_e32 v76, 1, v38
	v_cndmask_b16 v55.l, 0x7fff, v55.h, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v74, v81, v166
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v57, v58, v57, 0x7fff
	v_mov_b16_e32 v38.l, v73.h
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v81, v28, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v55.h, 0x7fff, v72.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v72, v75, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v76, v78, v76, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v42, v74, v80
	s_mov_b32 vcc_lo, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s6
	v_and_b32_e32 v58, 1, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v188, v218, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v78, -v34, v72, v75
	v_div_fmas_f32 v42, v42, v166, v74
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v57.h, 0x7fff, v76.h, s4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v229, v169, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v58, v73, v58, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v72, v78, v33 :: v_dual_mul_f32 v59, v59, v84
	v_div_fixup_f32 v42, v42, v165, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v58.h, 0x7fff, v58.h, s7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v34, v72, v75
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v75, v76, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v33, v34, v33, v72
	v_div_fixup_f32 v33, v33, v63, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v75, v33
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v88.l, v32.h
	v_cmp_o_f32_e64 s1, v32, v32
	v_and_b32_e32 v77, 1, v88
	v_dual_mov_b32 v87, v129 :: v_dual_mov_b32 v88, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v73, v32, v77, 0x7fff
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v77, v86, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v235, v90, s2
	v_mov_b32_e32 v89, v137
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v58.l, 0x7fff, v73.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v78, v79, v81 :: v_dual_mul_f32 v81, v30, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v74, 0xbfb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v80, v80, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v74
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v74, v23, v40
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v56, 16, v195
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v45, v45, v74 :: v_dual_mul_f32 v74, v31, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v82, 0xbfb8aa3b, v77
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v32, v45, v42
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v41, v41, v74
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v82
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.l, v33.h
	v_mov_b16_e32 v38.l, v32.h
	v_cmp_o_f32_e64 s1, v32, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v79, 0, 0x42800000, s4
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.h, v38.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v154, v43, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v79
	v_mul_f32_e32 v79, 0xbfb8aa3b, v41
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v34, v34, v63
	v_exp_f32_e32 v63, v72
	v_cndmask_b32_e64 v79, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v34, 1.0, v34 :: v_dual_fmac_f32 v79, 0xbfb8aa3b, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v34, v34, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v45, v63, v45
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v63, 1, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v79, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v73, v72
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v45, 1.0, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v63, v32, v63, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v45, v45, v78
	v_div_scale_f32 v81, s4, v78, v45, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v75, -v72, v73, 1.0
	v_rcp_f32_e32 v76, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v63.h, 0x7fff, v63.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v73, v75, v73
	v_div_scale_f32 v75, vcc_lo, v77, v34, v77
	v_fma_f32 v82, -v32, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v83, v75, v73 :: v_dual_fmac_f32 v76, v82, v76
	v_fma_f32 v85, -v72, v83, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v86, v81, v76
	v_fmac_f32_e32 v83, v85, v73
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v84, -v32, v86, v81
	v_fma_f32 v72, -v72, v83, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v86, v84, v76
	v_div_fmas_f32 v72, v72, v73, v83
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v32, -v32, v86, v81
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v81, v16, v40
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v74, v8, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v34, v72, v34, v77
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v42, v33, v42, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v32, v76, v86
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v62, v62, v74
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v74, v79, v85
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v85, v10, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v82, 0xbfb8aa3b, v80
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v32, v32, v45, v78
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v34, v59, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v74, 1.0, v74 :: v_dual_mul_f32 v37, v37, v85
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v82
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v32, v62, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v63.l, 0x7fff, v42.h, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v134, v215, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v77, v17, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v82, 0, 0x42800000, s5
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v133, v211, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v34.h
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v76, v76, v77
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v80
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v86, v11, v40
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v79, v79, v81
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.h, v38.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v75, v82
	v_mul_f32_e32 v84, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v84
	v_ldexp_f32 v72, v75, v73
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, null, v74, v74, v41
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v75, 1, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v84, 0, 0x42800000, s4
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v45, 1.0, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v59, v73
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v62, null, v45, v45, v80
	v_div_scale_f32 v82, s1, v80, v45, v80
	v_rcp_f32_e32 v72, v62
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v73, v59, 1.0
	v_fmac_f32_e32 v59, v42, v59
	v_div_scale_f32 v42, vcc_lo, v41, v74, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v78, -v62, v72, 1.0
	v_mul_f32_e32 v77, v42, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v72, v78, v72
	v_fma_f32 v81, -v73, v77, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v83, v82, v72
	v_fmac_f32_e32 v77, v81, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v62, v83, v82
	v_fma_f32 v42, -v73, v77, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v83, v81, v72
	v_div_fmas_f32 v42, v42, v59, v77
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v59, -v62, v83, v82
	v_div_fixup_f32 v41, v42, v74, v41
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v93, v222, s2
	v_mov_b32_e32 v93, v139
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v59, v59, v72, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v92, v220, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_mov_b32_e32 v91, v135
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v45, v59, v45, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v92, v136 :: v_dual_mul_f32 v37, v37, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v45, v34, v75, 0x7fff
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v75, v19, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v78, 0xbfb8aa3b, v76
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v143.h, 0x7fff, v45.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v74, v74, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v78
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v233, v157, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v82, 0xbfb8aa3b, v74
	v_cndmask_b32_e64 v78, 0, 0x42800000, s3
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v76
	v_exp_f32_e32 v78, v78
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v62, v78, v73
	v_exp_f32_e32 v73, v84
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v84, v18, v40
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v36, v36, v86
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v234, v156, s2
	v_dual_mov_b32 v85, v127 :: v_dual_mov_b32 v86, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v83, v83, v84
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v84, v4, v40
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v36, v36, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v42, v73, v72
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v72.l, v37.h
	v_mov_b16_e32 v72.h, v38.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v59, null, v62, v62, v76
	v_div_scale_f32 v45, vcc_lo, v76, v62, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v72
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v41, v59
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v36.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v34, v37, v34, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, null, v42, v42, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v59, v41, 1.0
	v_fmac_f32_e32 v41, v72, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v45, v41
	v_fma_f32 v80, -v59, v77, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v80, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v32.h
	v_cmp_o_f32_e64 s1, v32, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v59, v77, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v59, 0xbfb8aa3b, v83
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v41, v45, v41, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v32, v33, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v73
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v143.l, 0x7fff, v33.h, s1
	v_and_b32_e32 v33, 1, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v59, 0, 0x42800000, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v72, -v73, v32, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v36, v33, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v72, v32
	v_div_scale_f32 v72, s1, v79, v42, v79
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v81, v72, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v73, v81, v72
	v_fmac_f32_e32 v81, v80, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v73, v81, v72
	v_div_fmas_f32 v32, v72, v32, v81
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v72, v5, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v32, v32, v42, v79
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v79, v12, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v82
	v_exp_f32_e32 v42, v59
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v59, v78, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v225, v216, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v82, 0, 0x42800000, s3
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s3
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v78, v78, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v74
	v_exp_f32_e32 v45, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v82, 0xbfb8aa3b, v78
	v_ldexp_f32 v45, v45, v73
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v73, v75, v84
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v41, v41, v62, v76
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v76, v6, v40 :: v_dual_add_f32 v45, 1.0, v45
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v32, v73, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v73, v13, v40 :: v_dual_mul_f32 v36, v59, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v41, v42, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v45, v45, v74
	v_dual_mov_b32 v94, v140 :: v_dual_mul_f32 v51, v51, v76
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v139.h, 0x7fff, v33.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v59, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v33, 1.0, v41 :: v_dual_mul_f32 v84, v7, v40
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v82
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.h, v38.h
	v_cndmask_b16 v139.l, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v33, v33, v83
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v50, v50, v84
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v72, v59, 1.0
	v_div_scale_f32 v75, vcc_lo, v74, v45, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v62, v41
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v82, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v59, v34, v59
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v226, v217, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v36.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v82, 0xbfb8aa3b, v78 :: v_dual_mul_f32 v77, v75, v59
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v34, v34, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v73, -v41, v62, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v80, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v62, v73, v62
	v_div_scale_f32 v73, s1, v83, v33, v83
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v80
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v80, -v72, v77, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v81, v73, v62
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v79, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v77, v80, v59
	v_fma_f32 v80, -v41, v81, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v72, -v72, v77, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v81, v80, v62
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v79, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v59, v72, v59, v77
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v72, v82
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v41, v81, v73
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v45, v59, v45, v74
	v_div_fmas_f32 v41, v41, v62, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v73, v79, v75
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v45, v50, v45
	v_mov_b32_e32 v81, v123
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v41, v33, v83
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v41, v72, v62
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v73, 1.0, v73
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.l, v32.h
	v_cmp_o_f32_e64 s1, v32, v32
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v51, v33
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v62, null, v73, v73, v34
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v42
	v_and_b32_e32 v42, 1, v38
	v_mov_b16_e32 v38.l, v45.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v51, v62
	v_div_scale_f32 v50, null, v41, v41, v78
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v32, v37, 0x7fff
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v72, v15, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v33.h
	v_mov_b16_e32 v32.h, v38.h
	v_mov_b32_e32 v83, v125
	v_cndmask_b16 v135.l, 0x7fff, v37.h, s1
	v_and_b32_e32 v37, 1, v38
	v_add3_u32 v42, v36, v42, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v59, -v62, v51, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v45, v45
	v_add3_u32 v37, v45, v37, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v36, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v135.h, 0x7fff, v42.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v51, v59, v51
	v_div_scale_f32 v42, vcc_lo, v34, v73, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v136.h, 0x7fff, v37.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v224, v213, s2
	v_mov_b32_e32 v84, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v45, v42, v51
	v_fma_f32 v59, -v50, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v37, v37, v72
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v74, -v62, v45, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v77, 0xbfb8aa3b, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v45, v74, v51
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v223, v212, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v77
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v62, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v51, v45
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v51, v1, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v34, v42, v73, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v65, v208, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v48, v48, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v36, v59, v36
	v_div_scale_f32 v59, s3, v78, v41, v78
	s_mov_b32 vcc_lo, s3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v170, v47, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v75, v59, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v50, v75, v59
	v_fmac_f32_e32 v75, v72, v36
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v72, 0, 0x42800000, s1
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v79, v0, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v50, v75, v59
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v49, v49, v79 :: v_dual_and_b32 v32, 1, v32
	v_mov_b32_e32 v79, v119
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v36, v45, v36, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v45, v72
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v33, v32, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v171, v46, s2
	v_mov_b32_e32 v80, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v36, v36, v41, v78
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v33, v33
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v48, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.h, v38.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v36, v49, v36
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v41, v45, v41
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v136.l, 0x7fff, v32.h, s1
	v_mov_b16_e32 v38.l, v33.h
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v76, v14, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v66, v209, s2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v33, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v62, v74, v76
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v74, v24, v152
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v41, v41, v37
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v24, v24, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v50, 0xbfb8aa3b, v62
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v48, v32, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v47, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v50
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v50, v25, v152
	v_mul_f32_e32 v25, v25, v56
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v46, v49, v50 :: v_dual_mul_f32 v49, v2, v40
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v50, vcc_lo, v37, v41, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v42, v42, v45
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v47, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v49, v51, v49 :: v_dual_mul_f32 v76, v50, v32
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v45, v33, v45, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v47
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v47, v73, v74 :: v_dual_mul_f32 v40, v3, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v33, null, v42, v42, v62
	v_div_scale_f32 v73, s4, v62, v42, v62
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v74, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v59, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v77, 0, 0x42800000, s3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v127.h, 0x7fff, v45.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v74, 0, 0x42800000, s5
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v75, -v33, v59, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v59, v75, v59
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v36.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v75, -v48, v76, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v51, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v78, v73, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v76, v75, v32
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v36, v34, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v48, v76, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v48, v32, v76
	s_mov_b32 vcc_lo, s4
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v32, v32, v41, v37
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v41, v21, v152
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v40, v72, v40
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fma_f32 v72, -v33, v78, v73
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v37, v51, v48
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v21, v21, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v41, v43, v41 :: v_dual_mul_f32 v48, v40, v32
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v78, v72, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.h, v38.h
	v_dual_mov_b32 v90, v138 :: v_dual_add_f32 v129, 1.0, v37
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v72, v9, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v33, v78, v73
	v_mov_b32_e32 v73, v131
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v133, null, v129, v129, v47
	v_div_fmas_f32 v33, v33, v59, v78
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v77, v77
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v36, v27, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v134, v133
	v_div_fixup_f32 v33, v33, v42, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v127.l, 0x7fff, v34.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v125, s1, v47, v129, v47
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v9, v9, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v49, v49, v33
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v50, v77, v75
	v_dual_mov_b32 v77, v115 :: v_dual_mov_b32 v78, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v49.h
	v_dual_mov_b32 v75, v107 :: v_dual_add_f32 v128, 1.0, v50
	v_mov_b32_e32 v76, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v34, 1, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v204, v71, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v126, v49, v34, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v203, v70, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v70, v28, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v32, v32, v36
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v28, v28, v56
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v68, v68, v70
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v70, v22, v152
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v36, v26, v152
	v_mov_b32_e32 v82, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v26, v26, v56 :: v_dual_mul_f32 v39, v39, v70
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v40, v34, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v138, 0xbfb8aa3b, v40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v37, 0, 0x42800000, s4
	v_mov_b32_e32 v74, v132
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v131, null, v128, v128, v46
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v132, v131
	v_fma_f32 v33, -v131, v132, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v33, v132
	v_fma_f32 v33, -v133, v134, 1.0
	v_dual_fmac_f32 v134, v33, v134 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v124, v125, v134
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v33
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v33, v20, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v137, vcc_lo, v46, v128, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v133, v124, v125
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v33, v44, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v123, v137, v132
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.h, v38.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v124, v34, v134
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v32
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v131, v123, v137
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v20, v20, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v133, v124, v125
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v36, v50
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v50, v29, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v123, v51, v132
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v29, v29, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v131, v123, v137
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v36, v34
	v_exp_f32_e32 v36, v37
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v42, v42, v132, v123
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v49, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v37, v45, v134, v124
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v102, v69, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v42, v42, v128, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v123.l, 0x7fff, v126.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v37, v37, v129, v47
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v36, v36, v43
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v49, v49, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, null, v34, v34, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v33, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v48.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v36, 1.0, v36 :: v_dual_mul_f32 v41, v41, v42
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v42, v43
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v69, 0xbfb8aa3b, v49 :: v_dual_and_b32 v130, 1, v38
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v36, v36, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v41.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v37, v48, v130, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v47, -v43, v42, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.l, v33.h
	v_cndmask_b16 v123.h, 0x7fff, v37.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v69, 0, 0x42800000, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v47, v42
	v_div_scale_f32 v47, vcc_lo, v32, v34, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v49
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v45, v46, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v41, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v51, v47, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v106, v196, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s1, v40, v36, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v59, -v43, v51, v47
	v_mul_f32_e32 v62, v48, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v51, v59, v42
	v_fma_f32 v59, -v45, v62, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v43, v51, v47
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v47, 0xbfb8aa3b, v68 :: v_dual_fmac_f32 v62, v59, v46
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v206, v192, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v42, v43, v42, v51
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v69
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v45, v62, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v32, v42, v34, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v45, v45, v46, v62
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v62, v30, v152
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v43, v43, v48
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v68
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v46, v23, v152
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v59, v59, v62 :: v_dual_and_b32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v36, v45, v36, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v40, v47
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v119.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v71, 0xbfb8aa3b, v59 :: v_dual_mul_f32 v34, v39, v36
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, null, v43, v43, v49
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v33, v44, 0x7fff
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v45, v50, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v36, v40, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v41, v39
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, v34.h
	v_mov_b16_e32 v40.h, v38.h
	v_cndmask_b16 v119.l, 0x7fff, v44.h, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v46, v31, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, vcc_lo, v49, v43, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, null, v36, v36, v68
	v_fma_f32 v40, -v39, v41, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v71
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v96, v190, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v44, v37
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v32, v45, v32 :: v_dual_fmac_f32 v41, v40, v41
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v207, v193, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v71, 0, 0x42800000, s4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v95, v60, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v50, v8, v152 :: v_dual_mul_f32 v51, v47, v41
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v40, v40, v46 :: v_dual_fmac_f32 v71, 0xbfb8aa3b, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v37, v44, 1.0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v45, v45, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v32.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v185, v187, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v44, v46, v44
	v_div_scale_f32 v46, s1, v68, v36, v68
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v39, v51, v47
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v23, v23, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v70, v46, v44
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v30, v30, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v62, 0, 0x42800000, s3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v51, v69, v41 :: v_dual_mul_f32 v8, v8, v56
	v_fma_f32 v69, -v37, v70, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v39, v51, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v70, v69, v44
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v69, v10, v152
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v40
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v39, v39, v41, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v71
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v37, v70, v46
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v62, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v39, v39, v43, v49
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v186, v146, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v37, v37, v44, v70
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v10, v10, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v46, v62, v47
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v47, v48, v72
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v72, v7, v152
	v_dual_mul_f32 v7, v7, v56 :: v_dual_add_f32 v46, 1.0, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v39, v47, v39
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v36, v37, v36, v68
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v37, v41, v44
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v47, v17, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v46, v46, v40
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v36, v45, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v42, 1, v38
	v_mov_b16_e32 v38.l, v39.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v43, v41
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v17, v17, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, null, v37, v37, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v43, 1.0
	v_fmac_f32_e32 v43, v45, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v34, v33, 0x7fff
	v_cmp_o_f32_e64 s1, v34, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v34, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v115.l, 0x7fff, v33.h, s1
	v_and_b32_e32 v33, 1, v38
	v_cmp_o_f32_e64 s1, v39, v39
	v_add3_u32 v33, v39, v33, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v44, v34, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v116.h, 0x7fff, v33.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v94, v168, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v34, v45, v34
	v_div_scale_f32 v45, s3, v59, v37, v59
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v33, v33, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v42, v32, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v49, v45, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v36.h
	v_mov_b16_e32 v32.h, v38.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v68, 0xbfb8aa3b, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v115.h, 0x7fff, v42.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, vcc_lo, v40, v46, v40
	v_fma_f32 v47, -v44, v49, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v39, v42, v43
	v_fmac_f32_e32 v49, v47, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v41, v39, v42
	v_fmac_f32_e32 v39, v48, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v93, v160, s2
	v_cndmask_b32_e64 v93, v121, v167, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v41, v39, v42
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v20, v93, v20
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v39, v41, v43, v39
	v_fma_f32 v41, -v44, v49, v45
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v45, v50, v69
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v69, v5, v152
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v68
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s3
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v5, v5, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v41, v34, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v92, v182, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v62, v16, v152
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v16, v16, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v34, v34, v37, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v49, v49, v69 :: v_dual_mul_f32 v42, v48, v62
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v33
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v34, v45, v34 :: v_dual_mul_f32 v45, v19, v152
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v41, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v39, v39, v46, v40
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v91, v183, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v44, v11, v152
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v59, v18, v152
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v36, v36
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v11, v11, v56
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v44, v51, v44
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v37, v41, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v141, v205, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v42
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v51, v51, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v36, v32, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v36, v44, v39
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v40, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, null, v37, v37, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v116.l, 0x7fff, v32.h, s1
	v_mov_b16_e32 v38.l, v36.h
	v_cmp_o_f32_e64 s1, v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v142, v145, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v34.h
	v_mov_b16_e32 v39.h, v38.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v40, v40, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v44, v44, v45 :: v_dual_and_b32 v41, 1, v38
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v45, v4, v152
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v39
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v19, v19, v56
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v43, v32, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v41, v36, v41, 0x7fff
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v45, v46, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v34, v39, 0x7fff
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v4, v4, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v47, v32
	v_div_scale_f32 v47, vcc_lo, v33, v37, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v107.h, 0x7fff, v41.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v68, v47, v32
	v_fma_f32 v70, -v43, v68, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v70, v32
	v_fma_f32 v43, -v43, v68, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v32, v43, v32, v68
	v_div_fixup_f32 v32, v32, v37, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v32, v49, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v32.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v40, 1.0, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v36, null, v40, v40, v42
	v_rcp_f32_e32 v48, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v36, v48, 1.0
	v_fmac_f32_e32 v48, v62, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v62, 0xbfb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v62
	v_cndmask_b32_e64 v62, 0, 0x42800000, s5
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v51
	v_exp_f32_e32 v47, v62
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v33, v47, v43
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v59, s4, v42, v40, v42
	s_mov_b32 vcc_lo, s4
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v47, v13, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v71, v59, v48
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v13, v13, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v33, v33, v51
	v_fma_f32 v69, -v36, v71, v59
	v_div_scale_f32 v62, s1, v51, v33, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v69, v48
	v_fma_f32 v36, -v36, v71, v59
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v59, v12, v152
	v_mul_f32_e32 v12, v12, v56
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v36, v36, v48, v71
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v71, v6, v152
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_mov_b16_e32 v34.h, v38.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v6, v6, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v36, v36, v40, v42
	v_rcp_f32_e32 v42, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v107.l, 0x7fff, v39.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v36, v45, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v74, v228, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v45, v45, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v89, v61, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v48, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v50, 0xbfb8aa3b, v44 :: v_dual_mul_f32 v47, v47, v71
	v_dual_mul_f32 v48, 0xbfb8aa3b, v45 :: v_dual_mul_f32 v69, v62, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v50
	v_cndmask_b32_e64 v50, 0, 0x42800000, s3
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v48
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v48, 0, 0x42800000, s3
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v46, v50, v70
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v73, v242, s2
	v_dual_mov_b32 v73, v103 :: v_dual_mov_b32 v74, v104
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v36.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v46, 1.0, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v50, v50, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v90, v64, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, null, v46, v46, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v37, v40, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v40, v39, v40
	v_div_scale_f32 v39, vcc_lo, v44, v46, v44
	v_mul_f32_e32 v49, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v37, v49, v39
	v_fmac_f32_e32 v49, v68, v40
	v_fma_f32 v68, -v41, v69, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v37, v49, v39
	v_fmac_f32_e32 v69, v68, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v37, v37, v40, v49
	v_fma_f32 v40, -v41, v69, v62
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v70
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v70, v14, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v37, v37, v46, v44
	v_div_fmas_f32 v40, v40, v42, v69
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v42, v59, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v87, v239, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.h, v38.h
	v_cmp_o_f32_e64 s1, v36, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v40, v33, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v86, v155, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v45
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v37, v42, v37
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v69, v69, v70
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v33, v47, v33 :: v_dual_and_b32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v48, v48
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v32, v43, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_mov_b16_e32 v44.l, v33.h
	v_add3_u32 v34, v36, v34, 0x7fff
	v_mov_b32_e32 v71, v99
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v88, v240, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v103.h, 0x7fff, v43.h, vcc_lo
	v_and_b32_e32 v36, 1, v44
	v_cndmask_b16 v103.l, 0x7fff, v34.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v39, v48, v39
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s4
	v_mov_b32_e32 v72, v100
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v70, v0, v152
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v37.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v40, v41, v48
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v48, v15, v152
	v_mul_f32_e32 v14, v14, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v39, v39, v45
	v_div_scale_f32 v43, vcc_lo, v45, v39, v45
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v40, 1.0, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v42, v41
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v48, v47, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v85, v194, s2
	v_cndmask_b32_e64 v85, v113, v214, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v0, v0, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v68, 0xbfb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v8, v85, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v44, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0x42800000, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v49, v43, v42 :: v_dual_fmac_f32 v68, 0xbfb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v41, v49, v43
	v_fmac_f32_e32 v49, v59, v42
	v_div_scale_f32 v46, null, v40, v40, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v41, v49, v43
	v_rcp_f32_e32 v32, v46
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v41, v41, v42, v49
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v68
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v43
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v49, v2, v152
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v37, v34, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v39, v41, v39, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v46, v32, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, s4
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v2, v2, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v44, v32
	v_div_scale_f32 v44, s1, v50, v40, v50
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v43, 0xbfb8aa3b, v69 :: v_dual_mul_f32 v62, v44, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v59, -v46, v62, v44
	v_fmac_f32_e32 v62, v59, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v44, -v46, v62, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v44, v32, v62
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v44, v1, v152
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v42, v42, v46
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v46, v47, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v32, v32, v40, v50
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v40, v43
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v43, v51, v44 :: v_dual_add_f32 v42, 1.0, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v99.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v41, v46, v32
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v37, v43, v39
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.h, v38.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, null, v42, v42, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v40, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v41.h
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v40, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v81, v246, s2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v39
	v_mov_b16_e32 v38.l, v37.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v83, v159, s2
	v_cndmask_b32_e64 v47, v84, v184, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v62, s1, v69, v34, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v41, v32, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v82, v173, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v70, v3, v152 :: v_dual_and_b32 v39, 1, v38
	v_mul_f32_e32 v1, v1, v56
	v_mul_f32_e32 v3, v3, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v25, v32, v25 :: v_dual_mul_f32 v18, v18, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v59, 0xbfb8aa3b, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v36, v33, v36, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v33, null, v34, v34, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v59
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v99.l, 0x7fff, v36.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v45, v33
	v_fma_f32 v36, -v44, v40, 1.0
	v_fmac_f32_e32 v40, v36, v40
	v_div_scale_f32 v36, vcc_lo, v48, v42, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v33, v45, 1.0
	v_mul_f32_e32 v50, v36, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v45, v32, v45 :: v_dual_mul_f32 v32, v51, v24
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v44, v50, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v59, v62, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v50, v51, v40
	v_fma_f32 v51, -v33, v59, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v24, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v44, v50, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v59, v51, v45
	v_div_fmas_f32 v36, v36, v40, v50
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v33, v59, v62
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v41, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v24, v24, v44
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v36, v36, v42, v48
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v42, v37, v39, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v33, v33, v45, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v45, v47, v70 :: v_dual_add_f32 v40, 1.0, v24
	v_mul_f32_e32 v24, v46, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v33, v34, v69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v46, v45, v36
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	scratch_load_b32 v45, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, null, v40, v40, v25
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v39, v24, v33
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.h, v38.h
	v_cndmask_b16 v24.h, 0x7fff, v42.h, vcc_lo
	v_cndmask_b16 v24.l, 0x7fff, v43.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v42, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v39.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v48, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v46.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v79, v250, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v36, 1, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v26, v37, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v39, v33, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v33, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v49, v46, v36, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v45, v118, v45, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v68, 0xbfb8aa3b, v32 :: v_dual_mul_f32 v23, v45, v23
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v42, v117, v42, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0x42800000, s4
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v92, v122, v33, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v50, v68
	v_dual_mov_b32 v68, v97 :: v_dual_mov_b32 v69, v98
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v97, v80, v238, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v98, v27, v56 :: v_dual_mul_f32 v21, v92, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v33, v97, v98
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v50, v44
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v50, vcc_lo, v25, v40, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v41, 0xbfb8aa3b, v33 :: v_dual_add_f32 v44, 1.0, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v47, v48, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v95, null, v44, v44, v32
	v_fmac_f32_e32 v48, v34, v48
	v_div_scale_f32 v27, s1, v32, v44, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v96, v95
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v51, v50, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v95, v96, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v37, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v96, v34, v96
	v_fma_f32 v34, -v47, v51, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v36, v27, v96
	v_fmac_f32_e32 v51, v34, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v95, v36, v27
	v_fma_f32 v41, -v47, v51, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v34, v96
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v41, v41, v48, v51
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v95, v36, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v25, v41, v40, v25
	v_div_fmas_f32 v27, v27, v96, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, s4
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v21, v21, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v27, v27, v44, v32
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v26
	v_ldexp_f32 v25, v37, v36
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v77, v227, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.h, v38.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v27, v20, v27
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v32, v34
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.h, 0x7fff, v49.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_mov_b16_e32 v36.l, v27.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, null, v34, v34, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v21.h
	v_cndmask_b16 v20.l, 0x7fff, v43.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v25, v32, v25
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v39, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v40, 1.0, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v78, v248, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v27, v32, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v40, v40, v26
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v25, v25, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v43, -v37, v39, 1.0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v29, v22, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v44, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v22, 0xbfb8aa3b, v25 :: v_dual_fmac_f32 v39, v43, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, vcc_lo, v33, v34, v33
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v42, v42, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v22, v46, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v48, v43, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v41, v44, 1.0
	v_div_scale_f32 v28, s3, v26, v40, v26
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v49, 0, 0x42800000, s1
	v_mul_f32_e32 v46, 0xbfb8aa3b, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v44, v47, v44
	v_fma_f32 v47, -v37, v48, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v25
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v50, v28, v44
	v_fmac_f32_e32 v48, v47, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s1
	v_exp_f32_e32 v49, v49
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v27, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v41, v50, v28
	v_fma_f32 v29, -v37, v48, v43
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0x42800000, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.h, v38.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v50, v45, v44
	v_div_fmas_f32 v29, v29, v39, v48
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v37, v49, v47
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v41, v50, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v29, v34, v33
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v37, v39, v44, v50
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v23, v23, v33
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v92, null, v28, v28, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v26, v37, v40, v26
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v111, v244, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v34, v31, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v91, v92
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v43, v41
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v26, v42, v26
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v75, v241, s2
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v30, v39, v30 :: v_dual_add_f32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.l, v26.h
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v16, v42, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v36, 1, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v92, v91, 1.0
	v_div_scale_f32 v90, null, v29, v29, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v88, 1, v27
	v_add3_u32 v36, v21, v36, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v32.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v32, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v89, v90
	v_fmac_f32_e32 v91, v33, v91
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.h, 0x7fff, v36.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v93, vcc_lo, v25, v28, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v112, v245, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, s1, v22, v29, v22
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v30
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v23.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v90, v89, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v87, 1, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v89, v27, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v27, v33, v34 :: v_dual_mul_f32 v34, v31, v89
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v36, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v36
	v_cndmask_b32_e64 v36, 0, 0x42800000, s3
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v27
	v_exp_f32_e32 v36, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v86, v114, v32, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v32, v93, v91 :: v_dual_mul_f32 v9, v86, v9
	v_fma_f32 v33, -v92, v32, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v32, v33, v91
	v_fma_f32 v33, -v90, v34, v31
	v_fma_f32 v39, -v92, v32, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v33, v89
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v39, v91, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v90, v34, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v26, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v25, v32, v28, v25
	v_div_fmas_f32 v31, v31, v89, v34
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v33, v33
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s4
	v_ldexp_f32 v34, v36, v37
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v9, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v22, v31, v29, v22
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v26, v88, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v9.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v22, v8, v22
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v8, v33, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v23, v87, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v31, v31, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v22, v22
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.l, v22.h
	v_mov_b16_e32 v8.h, v38.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v33, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v23, 1, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v37, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v32, v32, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v26, 1, v8
	v_cndmask_b16 v8.h, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v8.l, 0x7fff, v29.h, s1
	v_add3_u32 v23, v9, v23, 0x7fff
	v_cmp_o_f32_e64 s1, v9, v9
	v_add3_u32 v26, v22, v26, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v76, v219, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v25, v33, 1.0
	v_div_scale_f32 v9, vcc_lo, v27, v31, v27
	v_rcp_f32_e32 v36, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v17, v22, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v22, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v28, v33
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v41, 0xbfb8aa3b, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v29, v9, v33
	v_fma_f32 v28, -v34, v36, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v25, v29, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v28, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, s4, v30, v32, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v29, v39, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v41, 0xbfb8aa3b, v17 :: v_dual_mul_f32 v40, v28, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v9, -v25, v29, v9
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v25, 0xbfb8aa3b, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v34, v40, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v9, v9, v33, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v29, v41
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v40, v39, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v9, v9, v31, v27
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v175, v210, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v34, v40, v28
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_ldexp_f32 v29, v29, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	scratch_load_b32 v33, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v28, v28, v36, v40
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v16
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v4, v31, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v25, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v37, v110, v37, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v11, v37, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v73, v247, s2
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v11, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.h, 0x7fff, v23.h, s1
	v_cndmask_b16 v9.l, 0x7fff, v26.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v18, v37, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v22, v109, v22, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v11.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v41, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v10, v22, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v22, v28, v32, v30
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.h, v38.h
	v_and_b32_e32 v26, 1, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v41
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v28, v28, v17
	v_div_scale_f32 v34, vcc_lo, v17, v28, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v22, v25, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v25, v27
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v10.h
	v_add3_u32 v26, v11, v26, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_and_b32 v23, 1, v29
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, null, v22, v22, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v27, v25, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v23, v10, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v29
	v_fmac_f32_e32 v25, v30, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v74, v249, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v36, v34, v25
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v19, v30, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v33, v176, v33, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v29, v32, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v5, v33, v5 :: v_dual_fmac_f32 v32, v30, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, s1, v16, v22, v16
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v27, v36, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v40, v30, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v36, v39, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v29, v40, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v27, v36, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v18 :: v_dual_fmac_f32 v40, v33, v32
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s3
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v25, v27, v25, v36
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v10, v10
	v_mov_b16_e32 v10.h, v38.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v29, v40, v30
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v29, v39
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v150, v147, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v25, v28, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v26.l, 0x7fff, v23.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v37, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v33, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v27, v32, v40
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v1, v39, v1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v5, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v27, v22, v16
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v22, v29, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v5.h
	v_cndmask_b16 v26.h, 0x7fff, v26.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v72, v254, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v30, v30, v19
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v11, 1.0, v22 :: v_dual_mul_f32 v4, v4, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v13, v29, v13 :: v_dual_and_b32 v22, 1, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v16, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v17, null, v11, v11, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v4.h
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v22, v5, v22, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v5, s1, v19, v30, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v4, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v27, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v10, 1, v10
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v28, -v25, v16, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v4, v10, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v16, v28, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v17, v27, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v163, v148, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.l, 0x7fff, v10.h, s3
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v10, v15, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v4, v5, v16 :: v_dual_fmac_f32 v27, v23, v27
	v_div_scale_f32 v23, s4, v18, v11, v18
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v6, v28, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v25, v4, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v32, v23, v27
	v_dual_fmac_f32 v4, v31, v16 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v17, v32, v23
	v_fma_f32 v5, -v25, v4, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v29, v27
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v71, v158, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v4, v5, v16, v4
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v5, -v17, v32, v23
	s_mov_b32 vcc_lo, s4
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v12, v25, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v4, v4, v30, v19
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v5, v5, v27, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v12
	v_exp_f32_e32 v17, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v5, v11, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s5
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.h, v38.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v6, v5
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v6, v17, v11
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v68, v199, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v5.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v11, v11, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v15, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v14, null, v6, v6, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v5, v18, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v17, 0, 0x42800000, s1
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v17, v17, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v36, v30
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v33, v164, v33, s2
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v7, v33, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v149, v191, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v7, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v69, v200, s2
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v0, v33, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v33, v26, v8, s0
	v_cndmask_b32_e64 v8, v8, v26, s0
	v_mov_b16_e32 v38.l, v4.h
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v7, v7, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v10, v15, v10
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v15, v14
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v4, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v19, null, v10, v10, v12
	v_fma_f32 v23, -v14, v15, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, s1, v12, v10, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v25, v19
	v_fmac_f32_e32 v15, v23, v15
	v_div_scale_f32 v23, vcc_lo, v13, v6, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v16, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v29, v23, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v34, -v14, v29, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v16, v16, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v19, v25, 1.0
	v_dual_fmac_f32 v29, v34, v15 :: v_dual_add_f32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v25, v27, v25
	v_fma_f32 v14, -v14, v29, v23
	v_fma_f32 v23, -v30, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v27, null, v16, v16, v7
	v_mul_f32_e32 v37, v31, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v14, v14, v15, v29
	v_fmac_f32_e32 v36, v23, v36
	v_div_scale_f32 v23, s4, v11, v17, v11
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v34, -v19, v37, v31
	v_div_fixup_f32 v6, v14, v6, v13
	v_mul_f32_e32 v29, v23, v36
	v_rcp_f32_e32 v32, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v34, v25
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v30, v29, v23
	v_div_scale_f32 v34, s3, v7, v16, v7
	v_fma_f32 v15, -v19, v37, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v1.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v29, v13, v36
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v27, v32, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v1, v1
	v_cndmask_b32_e64 v31, v20, v99, s0
	v_cndmask_b32_e64 v20, v99, v20, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v15, v15, v25, v37
	v_fmac_f32_e32 v32, v40, v32
	v_fma_f32 v14, -v30, v29, v23
	s_mov_b32 vcc_lo, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v23, v136, v123, s0
	v_cndmask_b32_e64 v30, v24, v103, s0
	v_cndmask_b32_e64 v24, v103, v24, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v15, v10, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v6, off, off offset:8
	scratch_load_b64 v[12:13], off, off offset:56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v19, v34, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v15, v139, v63, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.h, v38.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v27, v19, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v0.h
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v19, v25, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v25, v116, v119, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v6, v12, v6, s2
	scratch_load_b32 v12, off, off          ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v2, v6, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v12, v13, v12, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v27, v19, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v0, v0
	v_cndmask_b32_e64 v27, v119, v116, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v3, v12, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v13, v13, v32, v19
	s_mov_b32 vcc_lo, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v32, v9, v21, s0
	v_cndmask_b32_e64 v9, v21, v9, s0
	v_mov_b32_e32 v21, 0x5410
	v_cndmask_b32_e64 v12, v54, v57, s0
	v_cndmask_b32_e64 v19, v123, v136, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v14, v14, v36, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_and_b32_e32 v4, 1, v38
	v_cndmask_b32_e64 v29, v115, v107, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v13, v16, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v16, v63, v139, s0
	v_cndmask_b32_e64 v13, v143, v58, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v14, v17, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v4, v1, v4, 0x7fff
	v_cndmask_b32_e64 v14, v58, v143, s0
	v_cndmask_b32_e64 v11, v57, v54, s0
	v_cndmask_b32_e64 v17, v127, v135, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.h, v38.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v6, 1, v10
	v_cndmask_b16 v10.h, 0x7fff, v28.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cndmask_b32_e64 v28, v107, v115, s0
	v_mov_b16_e32 v38.l, v3.h
	v_cmp_o_f32_e64 s3, v3, v3
	v_mov_b16_e32 v7.l, v2.h
	v_add3_u32 v5, v0, v6, 0x7fff
	v_cmp_o_f32_e64 s4, v2, v2
	v_cndmask_b16 v10.l, 0x7fff, v18.h, vcc_lo
	v_cndmask_b32_e64 v18, v135, v127, s0
	v_and_b32_e32 v6, 1, v7
	v_and_b32_e32 v7, 1, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v2, v6, 0x7fff
	v_add3_u32 v1, v3, v7, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s1
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s2
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v5, v252, v52, s0
	v_cndmask_b32_e64 v7, v53, v55, s0
	v_cndmask_b32_e64 v3, v237, v253, s0
	v_cndmask_b32_e64 v4, v52, v252, s0
	v_cndmask_b32_e64 v6, v55, v53, s0
	v_permlanex16_b32 v12, v12, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v29, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s3
	v_cndmask_b16 v1.l, 0x7fff, v0.h, s4
	v_cndmask_b32_e64 v0, v253, v237, s0
	v_cndmask_b32_e64 v34, v2, v22, s0
	v_cndmask_b32_e64 v2, v22, v2, s0
	v_mov_b32_e32 v22, 0x7632
	v_permlanex16_b32 v5, v5, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v36, v1, v10, s0
	v_cndmask_b32_e64 v1, v10, v1, s0
	v_permlanex16_b32 v10, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v0, 0x1054, v21, s0
	v_cndmask_b32_e64 v21, 0x3276, v22, s0
	v_permlanex16_b32 v22, v23, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v27, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v20, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v21, v21, 8, v21
	v_permlanex16_b32 v41, v1, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v21, 0x760076, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v21, v21, 4, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v37, 0x5040504, v0
	v_and_b32_e32 v38, 0x7060706, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v0, v10, v3, v37
	v_perm_b32 v1, v10, v3, v38
	v_perm_b32 v2, v5, v4, v37
	v_perm_b32 v3, v5, v4, v38
	v_perm_b32 v4, v7, v6, v37
	v_perm_b32 v5, v7, v6, v38
	v_perm_b32 v6, v12, v11, v37
	v_perm_b32 v7, v12, v11, v38
	v_perm_b32 v8, v14, v13, v37
	v_perm_b32 v9, v14, v13, v38
	v_perm_b32 v10, v16, v15, v37
	v_perm_b32 v11, v16, v15, v38
	v_perm_b32 v12, v18, v17, v37
	v_perm_b32 v13, v18, v17, v38
	v_perm_b32 v16, v23, v25, v37
	v_perm_b32 v17, v23, v25, v38
	v_perm_b32 v20, v24, v30, v37
	v_perm_b32 v21, v24, v30, v38
	v_perm_b32 v24, v29, v32, v37
	v_perm_b32 v25, v29, v32, v38
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v32, v35, v251, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v14, v22, v19, v37
	v_perm_b32 v15, v22, v19, v38
	v_perm_b32 v18, v26, v28, v37
	v_perm_b32 v19, v26, v28, v38
	v_perm_b32 v22, v27, v31, v37
	v_perm_b32 v23, v27, v31, v38
	v_perm_b32 v26, v39, v33, v37
	v_perm_b32 v27, v39, v33, v38
	v_add_lshl_u32 v33, v35, v243, 1
	v_perm_b32 v28, v40, v34, v37
	v_perm_b32 v29, v40, v34, v38
	v_perm_b32 v30, v41, v36, v37
	v_perm_b32 v31, v41, v36, v38
	s_clause 0x2
	buffer_store_b128 v[0:3], v32, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v32, s[12:15], 0 offen offset:256
	buffer_store_b128 v[8:11], v33, s[12:15], 0 offen
	v_add_lshl_u32 v0, v172, v243, 1
	v_add_lshl_u32 v1, v35, v221, 1
	v_add_lshl_u32 v2, v172, v221, 1
	v_add_lshl_u32 v3, v35, v197, 1
	v_add_lshl_u32 v4, v172, v197, 1
	s_clause 0x4
	buffer_store_b128 v[12:15], v0, s[12:15], 0 offen
	buffer_store_b128 v[16:19], v1, s[12:15], 0 offen
	buffer_store_b128 v[20:23], v2, s[12:15], 0 offen
	buffer_store_b128 v[24:27], v3, s[12:15], 0 offen
	buffer_store_b128 v[28:31], v4, s[12:15], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 552
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
		.amdhsa_next_free_sgpr 42
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 552
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 41100
; TotalNumSgprs: 44
; NumVgprs: 256
; ScratchSize: 552
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 44
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 552
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 258
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
