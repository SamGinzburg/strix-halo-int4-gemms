	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
	v_mov_b32_e32 v215, v0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b32 s34, s[0:1], 0x38
	s_mov_b32 s39, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v1, 3, v215
	v_and_b32_e32 v42, 24, v1
	v_lshrrev_b32_e32 v101, 4, v215
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 2, v215
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v45, 4, v215
	v_lshlrev_b32_e32 v41, 5, v215
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v194, 16, v101
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
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v2, s34, v2
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b64 s[24:25], s[22:23]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_rcp_iflag_f32_e32 v0, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	v_add_nc_u32_e32 v40, 0, v45
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s4, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s4
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v0, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v0, 15, v215
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s2, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s10, s2
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s10, s2
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s35, s15, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s2, s2, s9
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v6, s35, v101
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s2, s2, s9
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s36, s3, 5
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s3, s2, s7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s36, v42
	v_or_b32_e32 v4, s36, v101
	v_or_b32_e32 v5, s36, v194
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s4, s4, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v102, v0, 4, v6
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s4, s4, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s34, 31
.Ltmp13:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s28, s4, 6
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s14, s2, 8
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v3
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s34, v4
	v_cmp_gt_i32_e64 s3, s34, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s5, 31
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s4, s28, s34
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v255, s15, 5, v102
	s_mul_i32 s8, s35, s36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s31, -1, 0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v43, v2, v42, s4
	.loc	1 348 22 is_stmt 0              ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 352 30 is_stmt 1              ; generate_amdgcn.py:352:30
	s_add_i32 s6, s14, s8
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s3, s3, s31
	s_and_b32 vcc_lo, vcc_lo, s31
	s_and_b32 s4, s2, s31
	s_cmp_gt_i32 s5, 63
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s6, v102
	v_add_nc_u32_e32 v3, s6, v255
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v4, s36, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s36, s36, 32
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s4
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v13, s36, v42
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s15, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s7, s15, 6
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v3, s3
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v3, s15, v3
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v14, s36, v101
	v_or_b32_e32 v15, s36, v194
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s6, s6, s7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v12, 0x80000000, v4, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v13
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v21, s6, v102
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v20, s36, v43
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s34, v14
	v_cmp_gt_i32_e64 s4, s34, v15
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v22, s6, v255
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v24, s15, v21
	v_add3_u32 v23, s6, s15, v255
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[36:37], v12, s[20:23], 0 offen
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[12:15], v2, s[24:27], 0 offen
	buffer_load_b128 v[16:19], v3, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v2, 0x80000000, v20, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	s_and_b32 s3, s4, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v3, 0x80000000, v21, vcc_lo
	v_cndmask_b32_e64 v25, 0x80000000, v22, s3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e32 v28, 0x80000000, v24, vcc_lo
	v_cndmask_b32_e64 v32, 0x80000000, v23, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[4:7], v5, s[24:27], 0 offen
	buffer_load_b128 v[8:11], v8, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[38:39], v2, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[20:23], v3, s[24:27], 0 offen
	buffer_load_b128 v[24:27], v25, s[24:27], 0 offen
	buffer_load_b128 v[28:31], v28, s[24:27], 0 offen
	buffer_load_b128 v[32:35], v32, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_bfe_i32 v2, v215, 4, 1
	v_and_b32_e32 v1, 0x778, v1
	v_lshrrev_b32_e32 v3, 1, v215
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s5, 0x5f
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v2, 0x90, v2
	v_xor_b32_e32 v44, v2, v1
	v_and_b32_e32 v2, 16, v215
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v44
	s_waitcnt vmcnt(9)
	ds_store_b64 v1, v[36:37] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(6)
	ds_store_b128 v40, v[4:7]
	s_waitcnt vmcnt(5)
	ds_store_b128 v40, v[8:11] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v40, v[12:15] offset:16384
	ds_store_b128 v40, v[16:19] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v1, v[38:39] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v40, v[20:23] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v40, v[24:27] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v40, v[28:31] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v40, v[32:35] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v4, 5, v215
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_or_b32 v196, 0x70, v3, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 4, v215
	s_mov_b32 s3, 0
	scratch_store_b32 off, v4, off offset:168 ; 4-byte Folded Spill
	v_and_b32_e32 v8, 0x160, v4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v4, 0x100, v196
	scratch_store_b32 off, v4, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x200, v196
	scratch_store_b32 off, v4, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x300, v196
	scratch_store_b32 off, v4, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x400, v196
	scratch_store_b32 off, v4, off offset:196 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x500, v196
	scratch_store_b32 off, v4, off offset:204 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x600, v196
	scratch_store_b32 off, v4, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x700, v196
	scratch_store_b32 off, v4, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x800, v196
	scratch_store_b32 off, v4, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x900, v196
	scratch_store_b32 off, v4, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xa00, v196
	scratch_store_b32 off, v4, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xb00, v196
	scratch_store_b32 off, v4, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xc00, v196
	scratch_store_b32 off, v4, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xd00, v196
	scratch_store_b32 off, v4, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xe00, v196
	scratch_store_b32 off, v4, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xf00, v196
	scratch_store_b32 off, v4, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1000, v196
	scratch_store_b32 off, v4, off offset:176 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1100, v196
	scratch_store_b32 off, v4, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1200, v196
	scratch_store_b32 off, v4, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1300, v196
	scratch_store_b32 off, v4, off offset:200 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1400, v196
	scratch_store_b32 off, v4, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1500, v196
	scratch_store_b32 off, v4, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1600, v196
	scratch_store_b32 off, v4, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1700, v196
	scratch_store_b32 off, v4, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1800, v196
	scratch_store_b32 off, v4, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1900, v196
	scratch_store_b32 off, v4, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1a00, v196
	scratch_store_b32 off, v4, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1b00, v196
	scratch_store_b32 off, v4, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1c00, v196
	scratch_store_b32 off, v4, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1d00, v196
	scratch_store_b32 off, v4, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1e00, v196
	scratch_store_b32 off, v4, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1f00, v196
	scratch_store_b32 off, v4, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x80, v196
	scratch_store_b32 off, v4, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x180, v196
	scratch_store_b32 off, v4, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x280, v196
	scratch_store_b32 off, v4, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x380, v196
	scratch_store_b32 off, v4, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x480, v196
	scratch_store_b32 off, v4, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x580, v196
	scratch_store_b32 off, v4, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x680, v196
	scratch_store_b32 off, v4, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x780, v196
	scratch_store_b32 off, v4, off offset:324 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x880, v196
	scratch_store_b32 off, v4, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x980, v196
	scratch_store_b32 off, v4, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xa80, v196
	scratch_store_b32 off, v4, off offset:336 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xb80, v196
	scratch_store_b32 off, v4, off offset:340 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xc80, v196
	scratch_store_b32 off, v4, off offset:344 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xd80, v196
	scratch_store_b32 off, v4, off offset:348 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xe80, v196
	scratch_store_b32 off, v4, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xf80, v196
	scratch_store_b32 off, v4, off offset:356 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1080, v196
	scratch_store_b32 off, v4, off offset:360 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1180, v196
	scratch_store_b32 off, v4, off offset:364 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1280, v196
	scratch_store_b32 off, v4, off offset:368 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1380, v196
	scratch_store_b32 off, v4, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1480, v196
	scratch_store_b32 off, v4, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1580, v196
	scratch_store_b32 off, v4, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1680, v196
	scratch_store_b32 off, v4, off offset:384 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1780, v196
	scratch_store_b32 off, v4, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1880, v196
	scratch_store_b32 off, v4, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1980, v196
	scratch_store_b32 off, v4, off offset:396 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1a80, v196
	scratch_store_b32 off, v4, off offset:400 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1b80, v196
	scratch_store_b32 off, v4, off offset:404 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1c80, v196
	scratch_store_b32 off, v4, off offset:408 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1d80, v196
	scratch_store_b32 off, v4, off offset:412 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1e80, v196
	scratch_store_b32 off, v4, off offset:416 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1f80, v196
	scratch_store_b32 off, v4, off offset:420 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr1
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; kill: killed $vgpr1
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr196
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
.LBB0_3:                                ; %Flow608
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v2
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v233, 0 :: v_dual_and_b32 v2, 0x160, v41
	v_bfe_i32 v1, v215, 2, 1
	v_and_or_b32 v196, 0x70, v3, v0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v93, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v0, 0x90, v1, v2
	scratch_store_b32 off, v215, off offset:424 ; 4-byte Folded Spill
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v5, 0
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x100, v196
	scratch_store_b32 off, v2, off offset:428 ; 4-byte Folded Spill
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v175, 0
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x200, v196
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v231, 0
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v196
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v189, 0
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v196
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v99, 0
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x500, v196
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v183, 0
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x600, v196
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v213, 0
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x700, v196
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v185, 0
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x800, v196
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v235, 0
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x900, v196
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v177, 0
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v196
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v181, 0
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb00, v196
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v167, 0
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v196
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v173, 0
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd00, v196
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v165, 0
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v196
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v161, 0
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf00, v196
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v151, 0
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1000, v196
	scratch_store_b32 off, v41, off offset:432 ; 4-byte Folded Spill
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v157, 0
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1100, v196
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v149, 0
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1200, v196
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v143, 0
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1300, v196
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v135, 0
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1400, v196
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v141, 0
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1500, v196
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v133, 0
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1600, v196
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v127, 0
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1700, v196
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v119, 0
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1800, v196
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v123, 0
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1900, v196
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v115, 0
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a00, v196
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v111, 0
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b00, v196
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v251, 0
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c00, v196
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v107, 0
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d00, v196
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v103, 0
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e00, v196
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v209, 0
	v_mov_b32_e32 v210, 0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s37, s5, 5
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f00, v196
	s_add_i32 s36, s36, 32
	s_mov_b32 s38, 1
	s_add_i32 s1, 0, 0x8000
	s_add_i32 s30, 0, 0x8800
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x80, v196
	s_add_i32 s29, 0, 0x2000
	s_add_i32 s33, 0, 0x4000
	s_add_i32 s3, 0, 0x6000
	s_add_i32 s37, s37, -3
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x180, v196
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x280, v196
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x380, v196
	s_mov_b32 s11, s4
	s_mov_b32 s39, s4
	s_mov_b32 s40, s4
.Ltmp15:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v44, off offset:160
	scratch_store_b32 off, v45, off offset:168
	scratch_store_b32 off, v42, off offset:128
	scratch_store_b32 off, v255, off offset:136
	scratch_store_b32 off, v43, off offset:144
	scratch_store_b32 off, v0, off offset:308
	v_or_b32_e32 v0, 0x480, v196
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x580, v196
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x680, v196
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x780, v196
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x880, v196
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x980, v196
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa80, v196
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb80, v196
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc80, v196
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd80, v196
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe80, v196
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf80, v196
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1080, v196
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1180, v196
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1280, v196
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1380, v196
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1480, v196
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1580, v196
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1680, v196
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1780, v196
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1880, v196
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1980, v196
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a80, v196
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b80, v196
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c80, v196
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d80, v196
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e80, v196
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f80, v196
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s41, s40, 5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v195, s39, v196
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s41, s36, s41
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v197, s33, v196
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s41, v42
	v_mov_b32_e32 v255, v196
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_clause 0xe                            ; 120-byte Folded Spill
	scratch_store_b64 off, v[159:160], off offset:112
	scratch_store_b64 off, v[6:7], off offset:16
	scratch_store_b64 off, v[4:5], off offset:8
	scratch_store_b64 off, v[240:241], off offset:104
	scratch_store_b64 off, v[2:3], off
	scratch_store_b64 off, v[232:233], off offset:96
	scratch_store_b64 off, v[93:94], off offset:88
	scratch_store_b64 off, v[238:239], off offset:56
	scratch_store_b64 off, v[99:100], off offset:48
	scratch_store_b64 off, v[236:237], off offset:40
	scratch_store_b64 off, v[175:176], off offset:80
	scratch_store_b64 off, v[230:231], off offset:32
	scratch_store_b64 off, v[189:190], off offset:72
	scratch_store_b64 off, v[213:214], off offset:24
	scratch_store_b64 off, v[234:235], off offset:64
	v_dual_mov_b32 v190, v186 :: v_dual_mov_b32 v189, v185
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v1
	v_dual_mov_b32 v196, v102 :: v_dual_add_nc_u32 v1, s41, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s33, s38, 1
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s38, s41, s35
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v102, v194 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_mov_b32 v194, v188 :: v_dual_mov_b32 v193, v187
	v_mov_b32_e32 v186, v180
	v_mov_b32_e32 v188, v178
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[0:1], v1, s[20:23], 0 offen
	v_dual_mov_b32 v187, v177 :: v_dual_mov_b32 v178, v174
	v_dual_mov_b32 v185, v179 :: v_dual_mov_b32 v176, v172
	v_mov_b32_e32 v177, v173
	v_dual_mov_b32 v175, v171 :: v_dual_mov_b32 v172, v168
	v_dual_mov_b32 v179, v245 :: v_dual_mov_b32 v174, v170
	v_mov_b32_e32 v171, v167
	v_mov_b32_e32 v167, v253
	v_dual_mov_b32 v173, v169 :: v_dual_mov_b32 v168, v254
	v_dual_mov_b32 v170, v166 :: v_dual_mov_b32 v169, v165
	v_dual_mov_b32 v166, v164 :: v_dual_mov_b32 v165, v163
	v_dual_mov_b32 v164, v162 :: v_dual_mov_b32 v163, v161
	v_dual_mov_b32 v162, v158 :: v_dual_mov_b32 v161, v157
	v_dual_mov_b32 v158, v156 :: v_dual_mov_b32 v157, v155
	v_dual_mov_b32 v156, v154 :: v_dual_mov_b32 v155, v153
	v_dual_mov_b32 v154, v152 :: v_dual_mov_b32 v153, v151
	v_dual_mov_b32 v152, v150 :: v_dual_mov_b32 v151, v149
	v_dual_mov_b32 v150, v148 :: v_dual_mov_b32 v149, v147
	v_dual_mov_b32 v148, v146 :: v_dual_mov_b32 v147, v145
	v_dual_mov_b32 v146, v144 :: v_dual_mov_b32 v145, v143
	v_dual_mov_b32 v144, v142 :: v_dual_mov_b32 v143, v141
	v_dual_mov_b32 v142, v140 :: v_dual_mov_b32 v141, v139
	v_dual_mov_b32 v140, v138 :: v_dual_mov_b32 v139, v137
	v_dual_mov_b32 v138, v136 :: v_dual_mov_b32 v137, v135
	v_dual_mov_b32 v136, v134 :: v_dual_mov_b32 v135, v133
	v_dual_mov_b32 v134, v132 :: v_dual_mov_b32 v133, v131
	v_dual_mov_b32 v132, v130 :: v_dual_mov_b32 v131, v129
	v_dual_mov_b32 v130, v128 :: v_dual_mov_b32 v129, v127
	v_dual_mov_b32 v128, v126 :: v_dual_mov_b32 v127, v125
	v_dual_mov_b32 v126, v124 :: v_dual_mov_b32 v125, v123
	v_dual_mov_b32 v124, v122 :: v_dual_mov_b32 v123, v121
	v_dual_mov_b32 v122, v120 :: v_dual_mov_b32 v121, v119
	v_dual_mov_b32 v120, v118 :: v_dual_mov_b32 v119, v117
	v_dual_mov_b32 v118, v116 :: v_dual_mov_b32 v117, v115
	v_dual_mov_b32 v116, v114 :: v_dual_mov_b32 v115, v113
	v_dual_mov_b32 v114, v112 :: v_dual_mov_b32 v113, v111
	v_dual_mov_b32 v112, v110 :: v_dual_mov_b32 v111, v109
	v_dual_mov_b32 v110, v108 :: v_dual_mov_b32 v109, v107
	v_mov_b32_e32 v100, v98
	v_dual_mov_b32 v108, v106 :: v_dual_mov_b32 v107, v105
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v218, s11 :: v_dual_mov_b32 v105, v251
	v_mov_b32_e32 v216, s9
	v_dual_mov_b32 v106, v252 :: v_dual_mov_b32 v99, v97
	v_dual_mov_b32 v214, s7 :: v_dual_mov_b32 v217, s10
	v_mov_b32_e32 v215, s8
	v_mov_b32_e32 v213, s6
	v_mov_b32_e32 v211, s4
	v_dual_mov_b32 v97, v183 :: v_dual_mov_b32 v98, v184
	v_dual_mov_b32 v183, v191 :: v_dual_mov_b32 v184, v192
	v_mov_b32_e32 v191, v247
	v_dual_mov_b32 v159, v249 :: v_dual_mov_b32 v192, v248
	v_mov_b32_e32 v160, v250
	v_mov_b32_e32 v180, v246
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s39, s38, s14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v212, s5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[0:1], off offset:120 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v195 offset:3328
	ds_load_u8 v2, v195 offset:3072
	scratch_load_b32 v0, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
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
	v_lshl_or_b32 v254, v6, 16, v5
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
	v_lshl_or_b32 v253, v8, 16, v7
	ds_load_u8 v6, v197 offset:1920
	ds_load_u8 v7, v197 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v252, v6, 16, v5
	ds_load_u8 v5, v197 offset:384
	ds_load_u8 v6, v197 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v197 offset:896
	ds_load_u8 v7, v197 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v251, v6, 16, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s1, v0
	ds_load_b128 v[41:44], v5
	ds_load_b128 v[45:48], v5 offset:512
	ds_load_b128 v[89:92], v5 offset:1024
	ds_load_b128 v[93:96], v5 offset:1536
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[219:226], v[1:4], v[41:44], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[1:4], v[89:92], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[25:28], v[89:92], v[211:218] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[81:88], v[29:32], v[89:92], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[251:254], v[89:92], v[211:218] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v89, v195 offset:7424
	ds_load_u8 v90, v195 offset:7168
	v_wmma_i32_16x16x16_iu8 v[227:234], v[1:4], v[45:48], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[1:4], v[93:96], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[235:242], v[25:28], v[41:44], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[25:28], v[45:48], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[25:28], v[93:96], v[211:218] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[243:250], v[29:32], v[41:44], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[201:208], v[251:254], v[41:44], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[29:32], v[45:48], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[251:254], v[45:48], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[29:32], v[93:96], v[211:218] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v195 offset:7936
	ds_load_u8 v91, v195 offset:7680
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[25:32], v[251:254], v[93:96], v[211:218] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v195 offset:6400
	ds_load_u8 v92, v195 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v195 offset:6912
	ds_load_u8 v93, v195 offset:6656
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
	v_xor_b32_e32 v93, 16, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v198, s1, v93
	ds_load_b128 v[93:96], v198
	ds_load_b128 v[211:214], v198 offset:512
	ds_load_b128 v[215:218], v198 offset:1024
	ds_load_b128 v[251:254], v198 offset:1536
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[219:226], v[89:92], v[93:96], v[219:226] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[227:234], v[89:92], v[211:214], v[227:234] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[89:92], v[215:218], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[89:92], v[251:254], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v89, v195 offset:7552
	ds_load_u8 v90, v195 offset:7296
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
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
	ds_load_u8 v198, v195 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v198, v198, v92, 0xc0c0004
	v_lshl_or_b32 v92, v90, 16, v89
	ds_load_u8 v89, v195 offset:5504
	ds_load_u8 v90, v195 offset:5248
	v_lshl_or_b32 v91, v198, 16, v91
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v195 offset:6016
	ds_load_u8 v198, v195 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v198, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v195 offset:4480
	ds_load_u8 v198, v195 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v198, v89, 0xc0c0004
	ds_load_u8 v198, v195 offset:4992
	ds_load_u8 v195, v195 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v195, v198, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v195, 16, v89
	v_wmma_i32_16x16x16_iu8 v[235:242], v[89:92], v[93:96], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[89:92], v[211:214], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[89:92], v[215:218], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[89:92], v[251:254], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v89, v197 offset:7424
	ds_load_u8 v90, v197 offset:7168
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
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
	ds_load_u8 v195, v197 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v195, v92, 0xc0c0004
	v_lshl_or_b32 v92, v90, 16, v89
	ds_load_u8 v89, v197 offset:5376
	ds_load_u8 v90, v197 offset:5120
	v_lshl_or_b32 v91, v195, 16, v91
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v197 offset:5888
	ds_load_u8 v195, v197 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v195, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v197 offset:4352
	ds_load_u8 v195, v197 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v195, v89, 0xc0c0004
	ds_load_u8 v195, v197 offset:4864
	ds_load_u8 v198, v197 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v198, v195, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v195, 16, v89
	ds_load_u8 v195, v197 offset:7552
	ds_load_u8 v198, v197 offset:7296
	v_wmma_i32_16x16x16_iu8 v[41:48], v[89:92], v[251:254], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[89:92], v[215:218], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[243:250], v[89:92], v[93:96], v[243:250] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[89:92], v[211:214], v[65:72] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v89, v220
	v_cvt_f32_i32_e32 v90, v221
	v_cvt_f32_i32_e32 v91, v222
	v_cvt_f32_i32_e32 v92, v223
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v222, v65
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v65, v49
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v223, v67
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v67, v51
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v198, v195, 0xc0c0004
	ds_load_u8 v198, v197 offset:8064
	ds_load_u8 v199, v197 offset:7808
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v198, v199, v198, 0xc0c0004
	ds_load_u8 v199, v197 offset:6528
	ds_load_u8 v200, v197 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v199, v200, v199, 0xc0c0004
	ds_load_u8 v200, v197 offset:7040
	ds_load_u8 v0, v197 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v200, 0xc0c0004
	v_lshl_or_b32 v200, v198, 16, v195
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v199, v0, 16, v199
	ds_load_u8 v0, v197 offset:5504
	ds_load_u8 v195, v197 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v195, v0, 0xc0c0004
	ds_load_u8 v195, v197 offset:6016
	ds_load_u8 v198, v197 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v198, v195, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v198, v195, 16, v0
	ds_load_u8 v0, v197 offset:4480
	ds_load_u8 v195, v197 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v195, v0, 0xc0c0004
	ds_load_u8 v195, v197 offset:4992
	ds_load_u8 v197, v197 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v197, v195, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v197, v195, 16, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v0, v219
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v195, v243
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v243, v7
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[25:32], v[197:200], v[251:254], v[25:32] neg_lo:[1,1,0]
	v_dual_mov_b32 v252, v106 :: v_dual_mov_b32 v251, v105
	v_dual_mov_b32 v105, v107 :: v_dual_mov_b32 v106, v108
	v_dual_mov_b32 v107, v109 :: v_dual_mov_b32 v108, v110
	v_dual_mov_b32 v109, v111 :: v_dual_mov_b32 v110, v112
	v_dual_mov_b32 v111, v113 :: v_dual_mov_b32 v112, v114
	v_dual_mov_b32 v113, v115 :: v_dual_mov_b32 v114, v116
	v_dual_mov_b32 v115, v117 :: v_dual_mov_b32 v116, v118
	v_dual_mov_b32 v117, v119 :: v_dual_mov_b32 v118, v120
	v_dual_mov_b32 v119, v121 :: v_dual_mov_b32 v120, v122
	v_dual_mov_b32 v121, v123 :: v_dual_mov_b32 v122, v124
	v_dual_mov_b32 v123, v125 :: v_dual_mov_b32 v124, v126
	v_dual_mov_b32 v125, v127 :: v_dual_mov_b32 v126, v128
	v_dual_mov_b32 v127, v129 :: v_dual_mov_b32 v128, v130
	v_dual_mov_b32 v129, v131 :: v_dual_mov_b32 v130, v132
	v_dual_mov_b32 v131, v133 :: v_dual_mov_b32 v132, v134
	v_dual_mov_b32 v133, v135 :: v_dual_mov_b32 v134, v136
	v_dual_mov_b32 v135, v137 :: v_dual_mov_b32 v136, v138
	v_dual_mov_b32 v137, v139 :: v_dual_mov_b32 v138, v140
	v_dual_mov_b32 v139, v141 :: v_dual_mov_b32 v140, v142
	v_dual_mov_b32 v141, v143 :: v_dual_mov_b32 v142, v144
	v_dual_mov_b32 v143, v145 :: v_dual_mov_b32 v144, v146
	v_dual_mov_b32 v145, v147 :: v_dual_mov_b32 v146, v148
	v_dual_mov_b32 v147, v149 :: v_dual_mov_b32 v148, v150
	v_dual_mov_b32 v149, v151 :: v_dual_mov_b32 v150, v152
	v_dual_mov_b32 v151, v153 :: v_dual_mov_b32 v152, v154
	v_dual_mov_b32 v153, v155 :: v_dual_mov_b32 v154, v156
	v_dual_mov_b32 v155, v157 :: v_dual_mov_b32 v156, v158
	v_dual_mov_b32 v157, v161 :: v_dual_mov_b32 v254, v168
	v_dual_mov_b32 v158, v162 :: v_dual_mov_b32 v161, v163
	v_dual_mov_b32 v162, v164 :: v_dual_mov_b32 v163, v165
	v_dual_mov_b32 v164, v166 :: v_dual_mov_b32 v165, v169
	v_dual_mov_b32 v253, v167 :: v_dual_mov_b32 v166, v170
	v_mov_b32_e32 v167, v171
	v_dual_mov_b32 v169, v173 :: v_dual_mov_b32 v168, v172
	v_dual_mov_b32 v170, v174 :: v_dual_mov_b32 v171, v175
	v_dual_mov_b32 v173, v177 :: v_dual_mov_b32 v172, v176
	v_dual_mov_b32 v174, v178 :: v_dual_mov_b32 v175, v179
	v_dual_mov_b32 v177, v187 :: v_dual_mov_b32 v176, v180
	v_dual_mov_b32 v179, v185 :: v_dual_mov_b32 v178, v188
	v_dual_mov_b32 v187, v193 :: v_dual_mov_b32 v180, v186
	v_dual_mov_b32 v185, v189 :: v_dual_mov_b32 v188, v194
	v_mov_b32_e32 v194, v102
	v_mov_b32_e32 v102, v196
	v_mov_b32_e32 v196, v255
	scratch_load_b32 v255, off, off offset:136 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[201:208], v[197:200], v[93:96], v[201:208] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[197:200], v[215:218], v[57:64] neg_lo:[1,1,0]
	v_mov_b32_e32 v186, v190
	v_wmma_i32_16x16x16_iu8 v[73:80], v[197:200], v[211:214], v[73:80] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v93, v224
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v219, v204
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v204, v230
	v_cvt_f32_i32_e32 v230, v1
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s41, v101
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v216, v205
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v205, v231
	v_cvt_f32_i32_e32 v231, v2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v221, v208
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v1
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s41, v194
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s41, s39, s15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v208, v234
	v_cvt_f32_i32_e32 v234, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v49, v73
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s1, s34, v1
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s39, v102
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v73, v81
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v81, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v51, v77
	v_cvt_f32_i32_e32 v77, v85
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v85, v13
	v_cvt_f32_i32_e32 v94, v225
	v_cvt_f32_i32_e32 v95, v226
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v200, v244
	v_cvt_f32_i32_e32 v198, v247
	v_cvt_f32_i32_e32 v212, v248
	v_dual_mov_b32 v248, v192 :: v_dual_mov_b32 v247, v191
	v_dual_mov_b32 v192, v184 :: v_dual_mov_b32 v191, v183
	v_dual_mov_b32 v184, v98 :: v_dual_mov_b32 v183, v97
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v96, v235
	v_cvt_f32_i32_e32 v235, v236
	v_cvt_f32_i32_e32 v236, v237
	v_cvt_f32_i32_e32 v237, v238
	v_cvt_f32_i32_e32 v238, v239
	v_cvt_f32_i32_e32 v239, v240
	v_cvt_f32_i32_e32 v240, v241
	v_cvt_f32_i32_e32 v241, v242
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v214, v201
	v_cvt_f32_i32_e32 v218, v202
	v_cvt_f32_i32_e32 v215, v203
	v_cvt_f32_i32_e32 v220, v206
	v_cvt_f32_i32_e32 v217, v207
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v201, v227
	v_cvt_f32_i32_e32 v202, v228
	v_cvt_f32_i32_e32 v203, v229
	v_cvt_f32_i32_e32 v206, v232
	v_cvt_f32_i32_e32 v207, v233
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v226, v66
	v_cvt_f32_i32_e32 v227, v68
	v_cvt_f32_i32_e32 v224, v69
	v_cvt_f32_i32_e32 v228, v70
	v_cvt_f32_i32_e32 v225, v71
	v_cvt_f32_i32_e32 v229, v72
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v66, v50
	v_cvt_f32_i32_e32 v68, v52
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v69, v74
	v_cvt_f32_i32_e32 v50, v75
	v_cvt_f32_i32_e32 v70, v76
	v_cvt_f32_i32_e32 v71, v78
	v_cvt_f32_i32_e32 v52, v79
	v_cvt_f32_i32_e32 v72, v80
	v_cvt_f32_i32_e32 v74, v82
	v_cvt_f32_i32_e32 v75, v83
	v_cvt_f32_i32_e32 v76, v84
	v_cvt_f32_i32_e32 v78, v86
	v_cvt_f32_i32_e32 v79, v87
	v_cvt_f32_i32_e32 v80, v88
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v82, v10
	v_cvt_f32_i32_e32 v83, v11
	v_cvt_f32_i32_e32 v84, v12
	v_cvt_f32_i32_e32 v86, v14
	v_cvt_f32_i32_e32 v87, v15
	v_cvt_f32_i32_e32 v88, v16
	v_cvt_f32_i32_e32 v232, v3
	v_cvt_f32_i32_e32 v233, v4
	v_cvt_f32_i32_e32 v242, v6
	v_cvt_f32_i32_e32 v244, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s33, 2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v197, v245
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s38, s33, 0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v199, v249
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s33, s38, 11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v213, v250
	v_dual_mov_b32 v250, v160 :: v_dual_mov_b32 v249, v159
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v117, v117, v85 :: v_dual_add_f32 v110, v110, v231
	v_dual_add_f32 v113, v113, v87 :: v_dual_add_f32 v106, v106, v233
	v_dual_add_f32 v105, v105, v232 :: v_dual_add_f32 v100, v100, v242
	v_dual_add_f32 v99, v99, v234 :: v_dual_add_f32 v210, v210, v244
	v_add_f32_e32 v109, v109, v230
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v123, v123, v43 :: v_dual_add_f32 v116, v116, v48
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v211, v246
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v249, v249, v236
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v247, v247, v94 :: v_dual_add_f32 v192, v192, v235
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v128, v128, v42
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v135, v135, v61
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
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
	v_dual_add_f32 v187, v187, v203 :: v_dual_add_f32 v180, v180, v206
	v_dual_add_f32 v179, v179, v205 :: v_dual_add_f32 v172, v172, v66
	v_dual_add_f32 v171, v171, v65 :: v_dual_add_f32 v254, v254, v54
	v_dual_add_f32 v169, v169, v67 :: v_dual_add_f32 v164, v164, v56
	v_dual_add_f32 v253, v253, v53 :: v_dual_add_f32 v156, v156, v34
	v_dual_add_f32 v163, v163, v55 :: v_dual_add_f32 v154, v154, v36
	v_dual_add_f32 v155, v155, v33 :: v_dual_add_f32 v148, v148, v38
	v_dual_add_f32 v153, v153, v35 :: v_dual_add_f32 v146, v146, v40
	v_dual_add_f32 v147, v147, v37 :: v_dual_add_f32 v140, v140, v18
	v_dual_add_f32 v145, v145, v39 :: v_dual_add_f32 v138, v138, v20
	v_dual_add_f32 v139, v139, v17 :: v_dual_add_f32 v132, v132, v22
	v_dual_add_f32 v137, v137, v19 :: v_dual_add_f32 v130, v130, v24
	v_dual_add_f32 v131, v131, v21 :: v_dual_add_f32 v126, v126, v82
	v_dual_add_f32 v129, v129, v23 :: v_dual_add_f32 v122, v122, v84
	v_dual_add_f32 v125, v125, v81 :: v_dual_add_f32 v118, v118, v86
	v_dual_add_f32 v121, v121, v83 :: v_dual_add_f32 v114, v114, v88
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v185, v185, v224 :: v_dual_add_f32 v182, v182, v69
	v_dual_add_f32 v177, v177, v225 :: v_dual_add_f32 v174, v174, v70
	v_dual_add_f32 v181, v181, v49 :: v_dual_add_f32 v168, v168, v71
	v_dual_add_f32 v173, v173, v50 :: v_dual_add_f32 v166, v166, v72
	v_dual_add_f32 v167, v167, v51 :: v_dual_add_f32 v162, v162, v74
	v_dual_add_f32 v165, v165, v52 :: v_dual_add_f32 v152, v152, v78
	v_dual_add_f32 v161, v161, v73 :: v_dual_add_f32 v158, v158, v76
	v_dual_add_f32 v157, v157, v75 :: v_dual_add_f32 v150, v150, v80
	v_dual_add_f32 v151, v151, v77 :: v_dual_add_f32 v144, v144, v58
	v_dual_add_f32 v149, v149, v79 :: v_dual_add_f32 v142, v142, v60
	v_dual_add_f32 v143, v143, v57 :: v_dual_add_f32 v136, v136, v62
	v_dual_add_f32 v141, v141, v59 :: v_dual_add_f32 v134, v134, v64
	v_dual_add_f32 v133, v133, v63 :: v_dual_add_f32 v124, v124, v44
	v_dual_add_f32 v127, v127, v41 :: v_dual_add_f32 v120, v120, v46
	v_dual_add_f32 v119, v119, v45 :: v_dual_add_f32 v112, v112, v26
	v_dual_add_f32 v115, v115, v47 :: v_dual_add_f32 v108, v108, v28
	v_dual_add_f32 v111, v111, v25 :: v_dual_add_f32 v252, v252, v30
	v_dual_add_f32 v107, v107, v27 :: v_dual_add_f32 v104, v104, v32
	v_add_f32_e32 v251, v251, v29
	v_add_f32_e32 v103, v103, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s42, s40, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v170, v170, v68
	v_add_f32_e32 v248, v248, v95
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v184, v184, v221
	v_add_f32_e32 v178, v178, v229
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v250, v250, v237
	v_add_f32_e32 v188, v188, v204
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v186, v186, v228
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s39, v255
	s_mov_b32 s39, s29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s1
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s41, v102
	.loc	1 358 31 is_stmt 0              ; generate_amdgcn.py:358:31
	v_cndmask_b32_e32 v9, 0x80000000, v2, vcc_lo
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s41, v255
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	s_add_i32 s41, s33, 0
	s_mov_b32 s33, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v13, 0x80000000, v2, s1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[24:27], 0 offen
	buffer_load_b128 v[5:8], v5, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x4                            ; 32-byte Folded Reload
	scratch_load_b32 v97, off, off offset:160
	scratch_load_b64 v[159:160], off, off offset:112
	scratch_load_b64 v[230:231], off, off offset:32
	scratch_load_b32 v43, off, off offset:144
	scratch_load_b64 v[232:233], off, off offset:96
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v191, v191, v96
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s1, s38, 13
	scratch_load_b32 v42, off, off offset:128 ; 4-byte Folded Reload
	s_add_i32 s29, s1, 0
	s_mov_b32 s1, s30
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s30, s41, 0x8000
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s3, s29, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s40, s37
	s_mov_b32 s40, s42
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v245, s41, v97
	scratch_load_b64 v[97:98], off, off offset:120 ; 8-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(5)
	v_dual_add_f32 v160, v160, v239 :: v_dual_add_f32 v159, v159, v238
	scratch_load_b64 v[238:239], off, off offset:56 ; 8-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(5)
	v_add_f32_e32 v230, v230, v214
	s_waitcnt vmcnt(3)
	v_add_f32_e32 v232, v232, v195
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(1)
	ds_store_b64 v245, v[97:98] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v97, off, off offset:168 ; 4-byte Folded Reload
	v_dual_mov_b32 v246, v176 :: v_dual_mov_b32 v245, v175
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[236:237], off, off offset:40
	scratch_load_b64 v[175:176], off, off offset:80
	scratch_load_b64 v[189:190], off, off offset:72
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v233, v233, v200
	v_dual_add_f32 v231, v231, v218 :: v_dual_add_f32 v246, v246, v208
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v245, v245, v207
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v193, s29, v97
	v_dual_mov_b32 v97, v99 :: v_dual_mov_b32 v98, v100
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[99:100], off, off offset:48
	scratch_load_b64 v[234:235], off, off offset:64
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(3)
	v_add_f32_e32 v176, v176, v213
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v193, v[1:4]
	ds_store_b128 v193, v[5:8] offset:4096
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[6:7], off, off offset:16
	scratch_load_b64 v[4:5], off, off offset:8
	scratch_load_b64 v[2:3], off, off
	scratch_load_b64 v[213:214], off, off offset:24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v239, v239, v241 :: v_dual_add_f32 v238, v238, v240
	scratch_load_b64 v[240:241], off, off offset:104 ; 8-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v175, v175, v199
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v237, v237, v202 :: v_dual_add_f32 v236, v236, v201
	s_waitcnt vmcnt(7)
	v_dual_add_f32 v209, v209, v243 :: v_dual_add_f32 v190, v190, v220
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v189, v189, v216
	v_add_f32_e32 v183, v183, v217
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v193, v[9:12] offset:16384
	ds_store_b128 v193, v[13:16] offset:20480
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(6)
	v_add_f32_e32 v100, v100, v219
	v_add_f32_e32 v99, v99, v215
	s_waitcnt vmcnt(5)
	v_add_f32_e32 v235, v235, v227
	s_waitcnt vmcnt(4)
	v_dual_add_f32 v234, v234, v223 :: v_dual_add_f32 v7, v7, v89
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_add_f32_e32 v5, v5, v91
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v3, v3, v93
	scratch_load_b64 v[93:94], off, off offset:88 ; 8-byte Folded Reload
	v_add_f32_e32 v6, v6, v0
	v_add_f32_e32 v4, v4, v90
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v2, v2, v92 :: v_dual_add_f32 v241, v241, v211
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v240, v240, v197
	v_add_f32_e32 v214, v214, v226
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v213, v213, v222 :: v_dual_add_f32 v94, v94, v212
	v_add_f32_e32 v93, v93, v198
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v215, off, off offset:424
	scratch_load_b32 v0, off, off offset:432
	scratch_load_b32 v8, off, off offset:428
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v1, 4, v215
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v232, 0
	s_add_i32 s1, 0, 0x8000
	s_add_i32 s30, 0, 0x8800
	s_add_i32 s29, 0, 0x2000
	s_add_i32 s33, 0, 0x4000
	v_mov_b32_e32 v233, v232
	v_mov_b32_e32 v6, v232
	v_mov_b32_e32 v93, v232
	v_mov_b32_e32 v2, v232
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v4, v232 :: v_dual_mov_b32 v5, v233
	v_mov_b32_e32 v7, v233
	v_mov_b32_e32 v94, v233
	v_mov_b32_e32 v3, v233
	v_dual_mov_b32 v241, v233 :: v_dual_mov_b32 v240, v232
	v_dual_mov_b32 v175, v232 :: v_dual_mov_b32 v176, v233
	v_dual_mov_b32 v248, v233 :: v_dual_mov_b32 v247, v232
	v_dual_mov_b32 v230, v232 :: v_dual_mov_b32 v231, v233
	v_dual_mov_b32 v191, v232 :: v_dual_mov_b32 v192, v233
	v_dual_mov_b32 v189, v232 :: v_dual_mov_b32 v190, v233
	v_dual_mov_b32 v159, v232 :: v_dual_mov_b32 v160, v233
	v_dual_mov_b32 v99, v232 :: v_dual_mov_b32 v100, v233
	v_dual_mov_b32 v250, v233 :: v_dual_mov_b32 v249, v232
	v_dual_mov_b32 v183, v232 :: v_dual_mov_b32 v184, v233
	v_dual_mov_b32 v239, v233 :: v_dual_mov_b32 v238, v232
	v_dual_mov_b32 v213, v232 :: v_dual_mov_b32 v214, v233
	v_dual_mov_b32 v237, v233 :: v_dual_mov_b32 v236, v232
	v_dual_mov_b32 v185, v232 :: v_dual_mov_b32 v186, v233
	v_dual_mov_b32 v179, v232 :: v_dual_mov_b32 v180, v233
	v_dual_mov_b32 v235, v233 :: v_dual_mov_b32 v234, v232
	v_dual_mov_b32 v187, v232 :: v_dual_mov_b32 v188, v233
	v_dual_mov_b32 v177, v232 :: v_dual_mov_b32 v178, v233
	v_dual_mov_b32 v246, v233 :: v_dual_mov_b32 v245, v232
	v_dual_mov_b32 v181, v232 :: v_dual_mov_b32 v182, v233
	v_dual_mov_b32 v171, v232 :: v_dual_mov_b32 v172, v233
	v_dual_mov_b32 v167, v232 :: v_dual_mov_b32 v168, v233
	v_dual_mov_b32 v254, v233 :: v_dual_mov_b32 v253, v232
	v_dual_mov_b32 v173, v232 :: v_dual_mov_b32 v174, v233
	v_dual_mov_b32 v169, v232 :: v_dual_mov_b32 v170, v233
	v_dual_mov_b32 v165, v232 :: v_dual_mov_b32 v166, v233
	v_dual_mov_b32 v163, v232 :: v_dual_mov_b32 v164, v233
	v_dual_mov_b32 v161, v232 :: v_dual_mov_b32 v162, v233
	v_dual_mov_b32 v155, v232 :: v_dual_mov_b32 v156, v233
	v_dual_mov_b32 v151, v232 :: v_dual_mov_b32 v152, v233
	v_dual_mov_b32 v147, v232 :: v_dual_mov_b32 v148, v233
	v_dual_mov_b32 v157, v232 :: v_dual_mov_b32 v158, v233
	v_dual_mov_b32 v153, v232 :: v_dual_mov_b32 v154, v233
	v_dual_mov_b32 v149, v232 :: v_dual_mov_b32 v150, v233
	v_dual_mov_b32 v145, v232 :: v_dual_mov_b32 v146, v233
	v_dual_mov_b32 v143, v232 :: v_dual_mov_b32 v144, v233
	v_dual_mov_b32 v139, v232 :: v_dual_mov_b32 v140, v233
	v_dual_mov_b32 v135, v232 :: v_dual_mov_b32 v136, v233
	v_dual_mov_b32 v131, v232 :: v_dual_mov_b32 v132, v233
	v_dual_mov_b32 v141, v232 :: v_dual_mov_b32 v142, v233
	v_dual_mov_b32 v137, v232 :: v_dual_mov_b32 v138, v233
	v_dual_mov_b32 v133, v232 :: v_dual_mov_b32 v134, v233
	v_dual_mov_b32 v129, v232 :: v_dual_mov_b32 v130, v233
	v_dual_mov_b32 v127, v232 :: v_dual_mov_b32 v128, v233
	v_dual_mov_b32 v125, v232 :: v_dual_mov_b32 v126, v233
	v_dual_mov_b32 v119, v232 :: v_dual_mov_b32 v120, v233
	v_dual_mov_b32 v117, v232 :: v_dual_mov_b32 v118, v233
	v_dual_mov_b32 v123, v232 :: v_dual_mov_b32 v124, v233
	v_dual_mov_b32 v121, v232 :: v_dual_mov_b32 v122, v233
	v_dual_mov_b32 v115, v232 :: v_dual_mov_b32 v116, v233
	v_dual_mov_b32 v113, v232 :: v_dual_mov_b32 v114, v233
	v_dual_mov_b32 v111, v232 :: v_dual_mov_b32 v112, v233
	v_dual_mov_b32 v109, v232 :: v_dual_mov_b32 v110, v233
	v_dual_mov_b32 v252, v233 :: v_dual_mov_b32 v251, v232
	v_dual_mov_b32 v97, v232 :: v_dual_mov_b32 v98, v233
	v_dual_mov_b32 v107, v232 :: v_dual_mov_b32 v108, v233
	v_dual_mov_b32 v105, v232 :: v_dual_mov_b32 v106, v233
	v_dual_mov_b32 v103, v232 :: v_dual_mov_b32 v104, v233
	v_dual_mov_b32 v209, v232 :: v_dual_mov_b32 v210, v233
	s_add_i32 s3, 0, 0x6000
.LBB0_8:                                ; %Flow609
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	s_clause 0x2                            ; 24-byte Folded Spill
	scratch_store_b64 off, v[6:7], off offset:16
	scratch_store_b64 off, v[4:5], off offset:8
	scratch_store_b64 off, v[2:3], off
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s4, 0
	v_cndmask_b32_e64 v0, 0x90, 0, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v35, v0, v8
	v_xor_b32_e32 v36, 16, v35
	v_add_nc_u32_e32 v0, s1, v35
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, s1, v36
	ds_load_b128 v[29:32], v0
	ds_load_b128 v[25:28], v0 offset:512
	ds_load_b128 v[21:24], v0 offset:1024
	ds_load_b128 v[17:20], v0 offset:1536
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[9:12], v1 offset:512
	ds_load_b128 v[5:8], v1 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v1 offset:1536
	v_cndmask_b32_e64 v0, 0, 1, s31
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s1, 1, v0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:348
	scratch_load_b32 v34, off, off offset:352
	scratch_load_b32 v33, off, off offset:344
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
	scratch_load_b32 v38, off, off offset:336
	scratch_load_b32 v37, off, off offset:328
	v_dual_mov_b32 v102, v94 :: v_dual_mov_b32 v101, v93
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v0, s39, v0
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v34, s39, v34
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v33, s39, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v34, v34
	ds_load_u8 v33, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s39, v38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s39, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s39, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v56, v33, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, s39, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v37, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s39, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v55, v37, 16, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:320
	scratch_load_b32 v33, off, off offset:312
	v_add_nc_u32_e32 v0, s39, v0
	scratch_load_b32 v37, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v38, s39, v38
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v34, s39, v34
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v33, s39, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s39, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	ds_load_u8 v33, v33
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s39, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v54, v33, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:300
	scratch_load_b32 v33, off, off offset:296
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v34, s39, v34
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s39, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s39, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s39, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v53, v33, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:412
	scratch_load_b32 v33, off, off offset:408
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v34, s39, v34
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s39, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s39, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s39, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v60, v33, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, s39, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v37, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s39, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v37, 16, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:384
	scratch_load_b32 v33, off, off offset:376
	v_add_nc_u32_e32 v0, s39, v0
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
	v_add_nc_u32_e32 v34, s39, v34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s39, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s39, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v58, v33, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:364
	scratch_load_b32 v33, off, off offset:360
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v34, s39, v34
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s39, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s39, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s39, v33
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
	scratch_load_b32 v45, off, off offset:268
	scratch_load_b32 v47, off, off offset:276
	scratch_load_b32 v46, off, off offset:260
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v73, v51
	v_cvt_f32_i32_e32 v34, v48
	v_cvt_f32_i32_e32 v71, v49
	v_cvt_f32_i32_e32 v70, v50
	v_cvt_f32_i32_e32 v72, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v191, v191, v33 :: v_dual_add_f32 v250, v250, v34
	v_dual_add_f32 v192, v192, v0 :: v_dual_add_f32 v249, v249, v69
	v_dual_add_f32 v160, v160, v70 :: v_dual_add_f32 v159, v159, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v239, v239, v72 :: v_dual_add_f32 v238, v238, v73
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 16-byte Folded Reload
	scratch_load_b32 v49, off, off offset:244
	scratch_load_b32 v48, off, off offset:228
	scratch_load_b64 v[33:34], off, off offset:16
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v45, s39, v45
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v47, s39, v47
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v46, s39, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	ds_load_u8 v47, v47
	ds_load_u8 v46, v46
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v49, s39, v49
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v48, s39, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v49
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s39, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v47, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v64, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v47, s39, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v48, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s39, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v49, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v63, v48, 16, v47
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:212
	scratch_load_b32 v46, off, off offset:196
	v_add_nc_u32_e32 v45, s39, v45
	scratch_load_b32 v48, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v49, s39, v49
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v47, s39, v47
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v46, s39, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v49
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s39, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v46, v46
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s39, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v47, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v62, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:172 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v46, s39, v196
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v47, s39, v47
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s39, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s39, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v47, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v61, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:284
	scratch_load_b32 v46, off, off offset:272
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v47, s39, v47
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s39, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s39, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v45, v45
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s39, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v47, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v68, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v45, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v47, s39, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v48, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s39, v48
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v48, 16, v47
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:224
	scratch_load_b32 v46, off, off offset:208
	v_add_nc_u32_e32 v45, s39, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v47, s39, v47
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s39, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s39, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v47, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v66, v46, 16, v45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:184
	scratch_load_b32 v46, off, off offset:176
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v47, s39, v47
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s39, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s39, v46
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v47, v47
	ds_load_u8 v45, v45
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v46, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s39, v46
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
	v_dual_add_f32 v237, v237, v74 :: v_dual_add_f32 v236, v236, v75
	v_add_f32_e32 v188, v188, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[45:52], v[57:60], v[9:12], v[45:52] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v187, v187, v77 :: v_dual_add_f32 v180, v180, v78
	v_dual_add_f32 v179, v179, v79 :: v_dual_add_f32 v246, v246, v80
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
	v_dual_add_f32 v245, v245, v81 :: v_dual_add_f32 v172, v172, v82
	v_add_f32_e32 v171, v171, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[45:52], v[65:68], v[5:8], v[45:52] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v170, v170, v84 :: v_dual_add_f32 v169, v169, v85
	v_dual_add_f32 v254, v254, v86 :: v_dual_add_f32 v253, v253, v87
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
	v_dual_add_f32 v153, v153, v93 :: v_dual_add_f32 v148, v148, v94
	v_mov_b32_e32 v93, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[45:52], v[57:60], v[5:8], v[45:52] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v164, v164, v88 :: v_dual_add_f32 v163, v163, v89
	v_dual_add_f32 v156, v156, v90 :: v_dual_add_f32 v155, v155, v91
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
	v_add_f32_e32 v154, v154, v92
	v_dual_mov_b32 v94, v102 :: v_dual_add_f32 v147, v147, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[45:52], v[65:68], v[1:4], v[45:52] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v146, v146, v96 :: v_dual_add_f32 v145, v145, v193
	v_dual_add_f32 v140, v140, v194 :: v_dual_add_f32 v139, v139, v195
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v203, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v204, v45
	v_cvt_f32_i32_e32 v205, v48
	v_cvt_f32_i32_e32 v206, v47
	v_cvt_f32_i32_e32 v207, v50
	v_cvt_f32_i32_e32 v208, v49
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
	v_dual_add_f32 v132, v132, v199 :: v_dual_add_f32 v131, v131, v200
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
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v130, v130, v201
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v248, v248, v52 :: v_dual_add_f32 v247, v247, v51
	v_dual_add_f32 v129, v129, v202 :: v_dual_add_f32 v126, v126, v203
	v_dual_add_f32 v125, v125, v204 :: v_dual_add_f32 v122, v122, v205
	v_dual_add_f32 v121, v121, v206 :: v_dual_add_f32 v114, v114, v211
	v_dual_add_f32 v118, v118, v207 :: v_dual_add_f32 v117, v117, v208
	v_dual_add_f32 v113, v113, v212 :: v_dual_add_f32 v110, v110, v38
	v_dual_add_f32 v109, v109, v37 :: v_dual_add_f32 v106, v106, v40
	v_dual_add_f32 v105, v105, v39 :: v_dual_add_f32 v98, v98, v42
	v_dual_add_f32 v97, v97, v41 :: v_dual_add_f32 v210, v210, v44
	v_dual_add_f32 v209, v209, v43 :: v_dual_add_f32 v34, v34, v46
	v_add_f32_e32 v33, v33, v45
	scratch_store_b64 off, v[33:34], off offset:16 ; 8-byte Folded Spill
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
	scratch_load_b32 v0, off, off offset:268
	scratch_load_b32 v34, off, off offset:276
	scratch_load_b32 v33, off, off offset:260
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
	scratch_load_b32 v38, off, off offset:244
	scratch_load_b32 v37, off, off offset:228
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
	scratch_load_b32 v33, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s33, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v34, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v88, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v37, v34, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v37, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s33, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v38, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v87, v37, 16, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:212
	scratch_load_b32 v33, off, off offset:196
	v_add_nc_u32_e32 v0, s33, v0
	scratch_load_b32 v37, off, off offset:328 ; 4-byte Folded Reload
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
	scratch_load_b32 v33, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s33, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v34, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v86, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:172 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v33, s33, v196
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
	scratch_load_b32 v33, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s33, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v34, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v85, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:348
	scratch_load_b32 v33, off, off offset:344
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
	scratch_load_b32 v33, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s33, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v34, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v92, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v37, v34, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v37, off, off offset:340 ; 4-byte Folded Reload
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
	scratch_load_b32 v34, off, off offset:320
	scratch_load_b32 v33, off, off offset:312
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
	scratch_load_b32 v33, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s33, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v34, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v90, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:300
	scratch_load_b32 v33, off, off offset:296
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
	scratch_load_b32 v33, off, off offset:308 ; 4-byte Folded Reload
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
	scratch_load_b32 v0, off, off offset:284
	scratch_load_b32 v33, off, off offset:368
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[53:60], v[89:92], v[29:32], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[89:92], v[25:28], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[85:88], v[21:24], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[89:92], v[21:24], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[89:92], v[17:20], v[37:44] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v18, off, off offset:288
	scratch_load_b32 v17, off, off offset:272
	scratch_load_b32 v20, off, off offset:256
	scratch_load_b32 v19, off, off offset:240
	scratch_load_b32 v24, off, off offset:400
	scratch_load_b32 v22, off, off offset:416
	scratch_load_b32 v21, off, off offset:192
	scratch_load_b32 v23, off, off offset:392
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
	scratch_load_b32 v17, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s33, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v18, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s33, v18
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v19, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v19, s33, v19
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_lshl_or_b32 v20, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v19, v19, 16, v18
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:224
	scratch_load_b32 v17, off, off offset:208
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
	scratch_load_b32 v17, off, off offset:232 ; 4-byte Folded Reload
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
	scratch_load_b32 v0, off, off offset:184
	scratch_load_b32 v17, off, off offset:176
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
	scratch_load_b32 v17, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s33, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v21, v17, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v17, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:412 ; 4-byte Folded Reload
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
	v_dual_add_f32 v241, v241, v48 :: v_dual_add_f32 v240, v240, v47
	v_dual_add_f32 v94, v94, v50 :: v_dual_add_f32 v93, v93, v49
	v_dual_add_f32 v176, v176, v52 :: v_dual_add_f32 v175, v175, v51
	v_add_f32_e32 v161, v161, v25
	v_add_f32_e32 v157, v157, v27
	v_add_f32_e32 v151, v151, v29
	v_add_f32_e32 v149, v149, v31
	v_dual_add_f32 v233, v233, v46 :: v_dual_add_f32 v232, v232, v45
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
	scratch_load_b32 v21, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s33, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v22, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s33, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v23, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s33, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	v_lshl_or_b32 v24, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v23, v23, 16, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:384
	scratch_load_b32 v21, off, off offset:376
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
	scratch_load_b32 v21, off, off offset:388 ; 4-byte Folded Reload
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
	scratch_load_b32 v0, off, off offset:364
	scratch_load_b32 v21, off, off offset:360
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
	scratch_load_b32 v21, off, off offset:372 ; 4-byte Folded Reload
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
	v_dual_add_f32 v231, v231, v0 :: v_dual_add_f32 v230, v230, v1
	v_dual_add_f32 v100, v100, v2 :: v_dual_add_f32 v99, v99, v3
	v_dual_add_f32 v190, v190, v4 :: v_dual_add_f32 v189, v189, v5
	v_dual_add_f32 v184, v184, v6 :: v_dual_add_f32 v183, v183, v7
	v_dual_add_f32 v214, v214, v8 :: v_dual_add_f32 v213, v213, v9
	v_dual_add_f32 v235, v235, v10 :: v_dual_add_f32 v234, v234, v11
	v_dual_add_f32 v186, v186, v12 :: v_dual_add_f32 v185, v185, v13
	v_dual_add_f32 v178, v178, v14 :: v_dual_add_f32 v177, v177, v15
	v_dual_add_f32 v182, v182, v16 :: v_dual_add_f32 v181, v181, v17
	v_dual_add_f32 v174, v174, v18 :: v_dual_add_f32 v173, v173, v19
	v_dual_add_f32 v168, v168, v20 :: v_dual_add_f32 v167, v167, v21
	v_dual_add_f32 v166, v166, v22 :: v_dual_add_f32 v165, v165, v23
	v_add_f32_e32 v162, v162, v24
	v_add_f32_e32 v158, v158, v26
	v_add_f32_e32 v152, v152, v28
	v_add_f32_e32 v150, v150, v30
	v_dual_add_f32 v144, v144, v32 :: v_dual_add_f32 v143, v143, v33
	v_dual_add_f32 v142, v142, v34 :: v_dual_add_f32 v141, v141, v53
	v_dual_add_f32 v136, v136, v54 :: v_dual_add_f32 v135, v135, v55
	v_dual_add_f32 v134, v134, v56 :: v_dual_add_f32 v133, v133, v57
	v_dual_add_f32 v128, v128, v58 :: v_dual_add_f32 v127, v127, v59
	v_dual_add_f32 v124, v124, v60 :: v_dual_add_f32 v123, v123, v61
	v_dual_add_f32 v120, v120, v62 :: v_dual_add_f32 v119, v119, v63
	v_dual_add_f32 v116, v116, v64 :: v_dual_add_f32 v115, v115, v65
	v_add_f32_e32 v104, v104, v44
	v_dual_add_f32 v112, v112, v38 :: v_dual_add_f32 v111, v111, v37
	v_dual_add_f32 v108, v108, v40 :: v_dual_add_f32 v107, v107, v39
	v_dual_add_f32 v252, v252, v42 :: v_dual_add_f32 v251, v251, v41
	v_add_f32_e32 v103, v103, v43
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[230:231], off offset:32
	scratch_store_b64 off, v[213:214], off offset:24
	s_branch .LBB0_13
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[230:231], off offset:32
	scratch_store_b64 off, v[213:214], off offset:24
.LBB0_13:
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v0, s30, v35
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v5, s30, v36
	v_dual_mov_b32 v227, v240 :: v_dual_mov_b32 v228, v241
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
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[99:100], off offset:48
	scratch_store_b64 off, v[238:239], off offset:56
	v_dual_mov_b32 v229, v232 :: v_dual_mov_b32 v230, v233
	v_dual_mov_b32 v213, v249 :: v_dual_mov_b32 v214, v250
	v_dual_mov_b32 v206, v247 :: v_dual_mov_b32 v207, v248
	v_dual_mov_b32 v212, v160 :: v_dual_mov_b32 v211, v159
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[236:237], off offset:40
	scratch_store_b64 off, v[177:178], off offset:128
	v_cmp_ne_u32_e64 s1, 1, v0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v66, 0
	v_mov_b32_e32 v225, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_15
; %bb.14:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0xb                            ; 48-byte Folded Reload
	scratch_load_b32 v34, off, off offset:356
	scratch_load_b32 v0, off, off offset:348
	scratch_load_b32 v35, off, off offset:352
	scratch_load_b32 v33, off, off offset:344
	scratch_load_b32 v36, off, off offset:332
	scratch_load_b32 v38, off, off offset:340
	scratch_load_b32 v39, off, off offset:336
	scratch_load_b32 v37, off, off offset:328
	scratch_load_b32 v40, off, off offset:316
	scratch_load_b32 v42, off, off offset:324
	scratch_load_b32 v43, off, off offset:320
	scratch_load_b32 v41, off, off offset:312
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v34, s29, v34
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v0, s29, v0
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v35, s29, v35
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v33, s29, v33
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v36, s29, v36
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v38, s29, v38
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v39, s29, v39
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v37, s29, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	ds_load_u8 v36, v36
	ds_load_u8 v37, v37
	ds_load_u8 v35, v35
	ds_load_u8 v38, v38
	ds_load_u8 v39, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v40, s29, v40
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v41, s29, v41
	v_add_nc_u32_e32 v42, s29, v42
	v_add_nc_u32_e32 v43, s29, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v40
	ds_load_u8 v46, v41
	ds_load_u8 v42, v42
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_perm_b32 v35, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v39, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:412
	scratch_load_b32 v39, off, off offset:420
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v40, v36, 16, v35
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v43, v42, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v36, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v52, s11 :: v_dual_mov_b32 v51, s10
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	v_dual_mov_b32 v50, s9 :: v_dual_mov_b32 v49, s8
	v_dual_mov_b32 v48, s7 :: v_dual_mov_b32 v47, s6
	v_dual_mov_b32 v46, s5 :: v_dual_mov_b32 v45, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v43, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v34, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v42, s29, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v39, v38, 16, v35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:416
	scratch_load_b32 v38, off, off offset:396
	v_add_nc_u32_e32 v37, s29, v37
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v43, s29, v43
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v35, s29, v35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s29, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	ds_load_u8 v35, v35
	ds_load_u8 v38, v38
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v35, v42, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v43, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v38, off, off offset:376
	scratch_load_b32 v34, off, off offset:304
	scratch_load_b32 v33, off, off offset:296
	v_add_nc_u32_e32 v0, s29, v0
	v_add_nc_u32_e32 v36, s29, v36
	v_add_nc_u32_e32 v44, s29, v44
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v42, s29, v42
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, s29, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, s29, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v34, v34
	ds_load_u8 v37, v37
	ds_load_u8 v36, v36
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s29, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v36, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v33, v44, 0xc0c0004
	ds_load_u8 v42, v42
	ds_load_u8 v44, v38
	v_lshl_or_b32 v64, v35, 16, v36
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v35, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v38, v0, 16, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:384
	scratch_load_b32 v33, off, off offset:364
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[53:60], v[38:41], v[29:32], v[45:52] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v34, s29, v34
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v37, s29, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	ds_load_u8 v37, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v35, s29, v35
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s29, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s29, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v37, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v63, v34, 16, v43
	v_perm_b32 v34, v44, v42, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:276
	scratch_load_b32 v42, off, off offset:260
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v37, s29, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v36, v37
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	ds_load_u8 v35, v35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v43, s29, v43
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s29, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v0, v36, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v36, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v35, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v62, v0, 16, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v35, s29, v35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s29, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v42, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:280 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v36, s29, v36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v36, v36
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v35, 16, v33
	v_wmma_i32_16x16x16_iu8 v[53:60], v[61:64], v[25:28], v[53:60] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v33, v53
	v_cvt_f32_i32_e32 v36, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v37, v55
	v_cvt_f32_i32_e32 v87, v56
	v_cvt_f32_i32_e32 v35, v57
	v_cvt_f32_i32_e32 v0, v58
	v_cvt_f32_i32_e32 v86, v59
	v_cvt_f32_i32_e32 v88, v60
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:244
	scratch_load_b32 v44, off, off offset:228
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v42, s29, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v43, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v68, v42, 16, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v53, s29, v53
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v44, s29, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v53, v53
	ds_load_u8 v44, v44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v43, s29, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s29, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v53, v44, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v53, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v67, v44, 16, v43
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:212
	scratch_load_b32 v42, off, off offset:196
	v_add_nc_u32_e32 v34, s29, v34
	scratch_load_b32 v44, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v53, s29, v53
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v43, s29, v43
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v42, s29, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v53, v53
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s29, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	ds_load_u8 v42, v42
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v34, v42, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s29, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v43, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v66, v42, 16, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:172 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v42, s29, v196
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v43, s29, v43
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s29, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v42, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s29, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v43, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v65, v42, 16, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:284
	scratch_load_b32 v42, off, off offset:272
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v43, s29, v43
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, s29, v34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s29, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	ds_load_u8 v34, v34
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v42, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s29, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v43, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v72, v42, 16, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v43, s29, v43
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v44, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s29, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v53, v44, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[53:60], v[65:68], v[21:24], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v71, v44, 16, v43
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:224
	scratch_load_b32 v42, off, off offset:208
	v_add_nc_u32_e32 v34, s29, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v43, s29, v43
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s29, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v42, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s29, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v43, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v70, v42, 16, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:184
	scratch_load_b32 v42, off, off offset:176
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v43, s29, v43
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, s29, v34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s29, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	ds_load_u8 v34, v34
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v42, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v42, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s29, v42
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v42, 16, v34
	v_wmma_i32_16x16x16_iu8 v[53:60], v[69:72], v[17:20], v[53:60] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v204, v53
	v_cvt_f32_i32_e32 v205, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v90, v55
	v_cvt_f32_i32_e32 v92, v56
	v_cvt_f32_i32_e32 v177, v57
	v_cvt_f32_i32_e32 v91, v58
	v_cvt_f32_i32_e32 v237, v59
	v_cvt_f32_i32_e32 v42, v60
	v_wmma_i32_16x16x16_iu8 v[53:60], v[38:41], v[21:24], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[61:64], v[17:20], v[53:60] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v43, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v73, v54
	v_cvt_f32_i32_e32 v74, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v77, v56
	v_cvt_f32_i32_e32 v44, v57
	v_cvt_f32_i32_e32 v75, v58
	v_cvt_f32_i32_e32 v76, v59
	v_cvt_f32_i32_e32 v78, v60
	v_wmma_i32_16x16x16_iu8 v[53:60], v[65:68], v[9:12], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[69:72], v[13:16], v[53:60] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v79, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v81, v54
	v_cvt_f32_i32_e32 v82, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v85, v56
	v_cvt_f32_i32_e32 v80, v57
	v_cvt_f32_i32_e32 v83, v58
	v_cvt_f32_i32_e32 v84, v59
	v_cvt_f32_i32_e32 v89, v60
	v_wmma_i32_16x16x16_iu8 v[53:60], v[38:41], v[9:12], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[61:64], v[13:16], v[53:60] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v95, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v99, v54
	v_cvt_f32_i32_e32 v100, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v159, v56
	v_cvt_f32_i32_e32 v96, v57
	v_cvt_f32_i32_e32 v101, v58
	v_cvt_f32_i32_e32 v102, v59
	v_cvt_f32_i32_e32 v160, v60
	v_wmma_i32_16x16x16_iu8 v[53:60], v[65:68], v[1:4], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[69:72], v[5:8], v[53:60] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v178, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v194, v54
	v_cvt_f32_i32_e32 v197, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v200, v56
	v_cvt_f32_i32_e32 v193, v57
	v_cvt_f32_i32_e32 v198, v58
	v_cvt_f32_i32_e32 v199, v59
	v_cvt_f32_i32_e32 v201, v60
	v_wmma_i32_16x16x16_iu8 v[53:60], v[65:68], v[29:32], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[38:41], v[1:4], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[69:72], v[25:28], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[61:64], v[5:8], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v34, v55
	v_cvt_f32_i32_e32 v38, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v39, v45
	v_cvt_f32_i32_e32 v41, v46
	v_cvt_f32_i32_e32 v45, v47
	v_cvt_f32_i32_e32 v208, v48
	v_cvt_f32_i32_e32 v40, v49
	v_cvt_f32_i32_e32 v46, v50
	v_cvt_f32_i32_e32 v225, v51
	v_cvt_f32_i32_e32 v66, v52
	v_cvt_f32_i32_e32 v51, v56
	v_cvt_f32_i32_e32 v49, v57
	v_cvt_f32_i32_e32 v50, v58
	v_cvt_f32_i32_e32 v47, v59
	v_cvt_f32_i32_e32 v48, v60
	v_cvt_f32_i32_e32 v54, v54
.LBB0_15:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v46, off offset:572
	scratch_store_b32 off, v45, off offset:568
	scratch_store_b32 off, v41, off offset:564
	scratch_store_b32 off, v40, off offset:560
	scratch_store_b32 off, v39, off offset:556
	scratch_store_b32 off, v201, off offset:552
	scratch_store_b32 off, v200, off offset:548
	scratch_store_b32 off, v199, off offset:544
	scratch_store_b32 off, v198, off offset:540
	scratch_store_b32 off, v197, off offset:536
	scratch_store_b32 off, v194, off offset:532
	scratch_store_b32 off, v193, off offset:528
	scratch_store_b32 off, v178, off offset:524
	scratch_store_b32 off, v160, off offset:520
	scratch_store_b32 off, v159, off offset:516
	scratch_store_b32 off, v102, off offset:512
	scratch_store_b32 off, v101, off offset:508
	scratch_store_b32 off, v100, off offset:504
	scratch_store_b32 off, v99, off offset:500
	scratch_store_b32 off, v96, off offset:496
	scratch_store_b32 off, v95, off offset:492
	scratch_store_b32 off, v89, off offset:488
	scratch_store_b32 off, v85, off offset:484
	scratch_store_b32 off, v84, off offset:480
	scratch_store_b32 off, v83, off offset:476
	scratch_store_b32 off, v82, off offset:472
	scratch_store_b32 off, v81, off offset:468
	scratch_store_b32 off, v80, off offset:464
	scratch_store_b32 off, v79, off offset:460
	scratch_store_b32 off, v78, off offset:456
	scratch_store_b32 off, v77, off offset:452
	scratch_store_b32 off, v76, off offset:448
	s_clause 0x8                            ; 48-byte Folded Spill
	scratch_store_b32 off, v75, off offset:444
	scratch_store_b32 off, v74, off offset:440
	scratch_store_b32 off, v73, off offset:436
	scratch_store_b32 off, v44, off offset:432
	scratch_store_b32 off, v43, off offset:428
	scratch_store_b32 off, v42, off offset:424
	scratch_store_b64 off, v[187:188], off offset:144
	scratch_store_b64 off, v[185:186], off offset:136
	scratch_store_b64 off, v[181:182], off offset:120
	v_dual_mov_b32 v187, v245 :: v_dual_mov_b32 v188, v246
	s_clause 0x7                            ; 64-byte Folded Spill
	scratch_store_b64 off, v[173:174], off offset:112
	scratch_store_b64 off, v[171:172], off offset:152
	scratch_store_b64 off, v[169:170], off offset:104
	scratch_store_b64 off, v[167:168], off offset:96
	scratch_store_b64 off, v[165:166], off offset:88
	scratch_store_b64 off, v[253:254], off offset:80
	scratch_store_b64 off, v[163:164], off offset:72
	scratch_store_b64 off, v[161:162], off offset:64
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v197, 0
	v_mov_b32_e32 v198, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v200, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_17
; %bb.16:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v55, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v39, off, off offset:420
	scratch_load_b32 v40, off, off offset:416
	scratch_load_b32 v42, off, off offset:408
	scratch_load_b32 v43, off, off offset:404
	scratch_load_b32 v44, off, off offset:400
	scratch_load_b32 v45, off, off offset:396
	scratch_load_b32 v46, off, off offset:392
	scratch_load_b32 v52, off, off offset:388
	scratch_load_b32 v53, off, off offset:384
	scratch_load_b32 v41, off, off offset:412
	v_dual_mov_b32 v100, v94 :: v_dual_mov_b32 v99, v93
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v56, off, off offset:288
	scratch_load_b32 v57, off, off offset:284
	scratch_load_b32 v58, off, off offset:280
	scratch_load_b32 v59, off, off offset:276
	scratch_load_b32 v60, off, off offset:268
	scratch_load_b32 v61, off, off offset:260
	scratch_load_b32 v62, off, off offset:252
	scratch_load_b32 v65, off, off offset:244
	v_dual_mov_b32 v102, v91 :: v_dual_add_nc_u32 v91, s3, v196
	v_mov_b32_e32 v101, v90
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v63, s3, v55
	scratch_load_b32 v55, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v70, s3, v65
	scratch_load_b32 v65, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v64, s3, v55
	scratch_load_b32 v55, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v71, s3, v65
	scratch_load_b32 v65, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v67, s3, v55
	scratch_load_b32 v55, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v72, s3, v65
	scratch_load_b32 v65, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v68, s3, v55
	scratch_load_b32 v55, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v73, s3, v65
	scratch_load_b32 v65, off, off offset:212 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v58, s3, v58
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v69, s3, v55
	scratch_load_b32 v55, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v74, s3, v65
	scratch_load_b32 v65, off, off offset:204 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v59, s3, v59
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v78, s3, v55
	scratch_load_b32 v55, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v75, s3, v65
	scratch_load_b32 v65, off, off offset:196 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v60, s3, v60
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v79, s3, v55
	scratch_load_b32 v55, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v76, s3, v65
	scratch_load_b32 v65, off, off offset:188 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v61, s3, v61
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v80, s3, v55
	scratch_load_b32 v55, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v77, s3, v65
	scratch_load_b32 v65, off, off offset:180 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v62, s3, v62
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
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v61, off, off offset:192 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v56, s3, v56
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v59, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v81, s3, v55
	scratch_load_b32 v55, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v89, s3, v65
	scratch_load_b32 v65, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v61, s3, v61
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v82, s3, v55
	scratch_load_b32 v55, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v90, s3, v65
	scratch_load_b32 v65, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v75, v75
	ds_load_u8 v76, v76
	ds_load_u8 v73, v73
	ds_load_u8 v94, v90
	ds_load_u8 v95, v91
	ds_load_u8 v77, v77
	ds_load_u8 v89, v89
	ds_load_u8 v74, v74
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v42, s3, v42
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v83, s3, v55
	scratch_load_b32 v55, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v90, s3, v65
	scratch_load_b32 v65, off, off offset:264 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v43, s3, v43
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v84, s3, v55
	scratch_load_b32 v55, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v91, s3, v65
	scratch_load_b32 v65, off, off offset:256 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v44, s3, v44
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v85, s3, v55
	scratch_load_b32 v55, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v96, s3, v65
	scratch_load_b32 v65, off, off offset:248 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v45, s3, v45
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v93, s3, v55
	scratch_load_b32 v55, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v196, s3, v65
	scratch_load_b32 v65, off, off offset:240 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v46, s3, v46
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v193, s3, v55
	scratch_load_b32 v55, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v202, s3, v65
	scratch_load_b32 v65, off, off offset:232 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v52, s3, v52
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v194, s3, v55
	scratch_load_b32 v55, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v203, s3, v65
	scratch_load_b32 v65, off, off offset:224 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v53, s3, v53
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v195, s3, v55
	scratch_load_b32 v55, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v216, s3, v65
	scratch_load_b32 v65, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v197, s3, v55
	scratch_load_b32 v55, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v217, s3, v65
	scratch_load_b32 v65, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v198, s3, v55
	scratch_load_b32 v55, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v218, s3, v65
	scratch_load_b32 v65, off, off offset:184 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v57, s3, v57
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v199, s3, v55
	scratch_load_b32 v55, off, off offset:300 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v39, s3, v39
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v219, s3, v65
	scratch_load_b32 v65, off, off offset:176 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v59, s3, v59
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v200, s3, v55
	scratch_load_b32 v55, off, off offset:296 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v40, s3, v40
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v220, s3, v65
	v_mov_b32_e32 v65, v92
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v92, v58, 16, v60
	v_perm_b32 v58, v72, v71, 0xc0c0004
	v_perm_b32 v60, v70, v62, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v62, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v74, v73, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v201, s3, v55
	scratch_load_b32 v55, off, off offset:292 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v41, s3, v41
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v55, s3, v55
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v57, v57
	ds_load_u8 v221, v90
	ds_load_u8 v55, v55
	ds_load_u8 v196, v196
	ds_load_u8 v202, v202
	ds_load_u8 v222, v91
	ds_load_u8 v96, v96
	ds_load_u8 v56, v56
	ds_load_u8 v217, v217
	ds_load_u8 v218, v218
	ds_load_u8 v203, v203
	ds_load_u8 v219, v219
	ds_load_u8 v220, v220
	ds_load_u8 v223, v59
	ds_load_u8 v224, v61
	ds_load_u8 v59, v216
	v_lshl_or_b32 v91, v60, 16, v58
	v_lshl_or_b32 v90, v70, 16, v62
	v_perm_b32 v60, v89, v77, 0xc0c0004
	v_mov_b32_e32 v77, s11
	v_perm_b32 v58, v95, v94, 0xc0c0004
	v_dual_mov_b32 v76, s10 :: v_dual_mov_b32 v75, s9
	v_dual_mov_b32 v74, s8 :: v_dual_mov_b32 v73, s7
	v_dual_mov_b32 v72, s6 :: v_dual_mov_b32 v71, s5
	v_mov_b32_e32 v70, s4
	ds_load_u8 v81, v81
	ds_load_u8 v82, v82
	ds_load_u8 v79, v79
	ds_load_u8 v85, v85
	ds_load_u8 v93, v93
	ds_load_u8 v83, v83
	ds_load_u8 v84, v84
	ds_load_u8 v80, v80
	ds_load_u8 v195, v195
	ds_load_u8 v197, v197
	ds_load_u8 v193, v193
	ds_load_u8 v200, v200
	ds_load_u8 v201, v201
	ds_load_u8 v198, v198
	ds_load_u8 v199, v199
	ds_load_u8 v194, v194
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	ds_load_u8 v39, v39
	ds_load_u8 v45, v45
	ds_load_u8 v46, v46
	ds_load_u8 v43, v43
	ds_load_u8 v44, v44
	ds_load_u8 v40, v40
	ds_load_u8 v63, v63
	ds_load_u8 v64, v64
	ds_load_u8 v52, v52
	ds_load_u8 v69, v69
	ds_load_u8 v78, v78
	ds_load_u8 v67, v67
	ds_load_u8 v68, v68
	ds_load_u8 v53, v53
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v94, v221, v57, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_perm_b32 v80, v93, v85, 0xc0c0004
	v_perm_b32 v82, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v83, v197, v195, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v85, v201, v200, 0xc0c0004
	v_perm_b32 v196, v202, v196, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v84, v194, v193, 0xc0c0004
	v_perm_b32 v193, v199, v198, 0xc0c0004
	v_lshl_or_b32 v89, v60, 16, v58
	v_perm_b32 v202, v96, v222, 0xc0c0004
	v_lshl_or_b32 v195, v82, 16, v80
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	v_perm_b32 v95, v56, v55, 0xc0c0004
	v_perm_b32 v216, v218, v217, 0xc0c0004
	v_lshl_or_b32 v194, v84, 16, v83
	v_lshl_or_b32 v193, v193, 16, v85
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v42, v44, v43, 0xc0c0004
	v_lshl_or_b32 v96, v95, 16, v94
	v_lshl_or_b32 v95, v202, 16, v196
	v_perm_b32 v196, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	v_perm_b32 v40, v46, v45, 0xc0c0004
	v_perm_b32 v202, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v43, v64, v63, 0xc0c0004
	v_perm_b32 v203, v59, v203, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[55:62], v[89:92], v[29:32], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v45, v78, v69, 0xc0c0004
	v_lshl_or_b32 v200, v39, 16, v41
	v_lshl_or_b32 v199, v42, 16, v40
	v_lshl_or_b32 v93, v202, 16, v196
	v_lshl_or_b32 v196, v79, 16, v81
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v46, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v53, v52, 0xc0c0004
	v_lshl_or_b32 v94, v203, 16, v216
	v_wmma_i32_16x16x16_iu8 v[216:223], v[89:92], v[21:24], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[193:196], v[29:32], v[70:77] neg_lo:[1,1,0]
	v_lshl_or_b32 v197, v46, 16, v45
	v_wmma_i32_16x16x16_iu8 v[239:246], v[193:196], v[9:12], v[70:77] neg_lo:[1,1,0]
	v_lshl_or_b32 v198, v44, 16, v43
	v_wmma_i32_16x16x16_iu8 v[55:62], v[93:96], v[25:28], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[89:92], v[1:4], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[216:223], v[93:96], v[17:20], v[216:223] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[197:200], v[25:28], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[193:196], v[21:24], v[70:77] neg_lo:[1,1,0]
	v_mov_b32_e32 v21, v234
	v_mov_b32_e32 v23, v237
	v_wmma_i32_16x16x16_iu8 v[239:246], v[197:200], v[13:16], v[239:246] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[39:46], v[93:96], v[5:8], v[39:46] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v203, v56
	v_cvt_f32_i32_e32 v201, v57
	v_cvt_f32_i32_e32 v202, v58
	v_cvt_f32_i32_e32 v57, v62
	v_cvt_f32_i32_e32 v52, v216
	v_cvt_f32_i32_e32 v53, v217
	v_cvt_f32_i32_e32 v216, v220
	v_cvt_f32_i32_e32 v217, v221
	v_cvt_f32_i32_e32 v220, v223
	v_mov_b32_e32 v22, v235
	v_wmma_i32_16x16x16_iu8 v[231:238], v[89:92], v[9:12], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[193:196], v[1:4], v[70:77] neg_lo:[1,1,0]
	v_dual_mov_b32 v92, v65 :: v_dual_mov_b32 v91, v102
	v_mov_b32_e32 v90, v101
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
	v_cvt_f32_i32_e32 v78, v218
	v_cvt_f32_i32_e32 v79, v219
	v_cvt_f32_i32_e32 v218, v222
	v_cvt_f32_i32_e32 v168, v239
	v_cvt_f32_i32_e32 v239, v241
	v_cvt_f32_i32_e32 v242, v242
	v_cvt_f32_i32_e32 v101, v243
	v_cvt_f32_i32_e32 v241, v245
	v_cvt_f32_i32_e32 v243, v39
	v_cvt_f32_i32_e32 v247, v41
	v_cvt_f32_i32_e32 v250, v42
	v_cvt_f32_i32_e32 v245, v43
	v_cvt_f32_i32_e32 v248, v44
	v_cvt_f32_i32_e32 v249, v45
	v_cvt_f32_i32_e32 v69, v46
	v_wmma_i32_16x16x16_iu8 v[231:238], v[93:96], v[13:16], v[231:238] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[197:200], v[5:8], v[70:77] neg_lo:[1,1,0]
	v_dual_mov_b32 v93, v99 :: v_dual_mov_b32 v94, v100
	v_cvt_f32_i32_e32 v219, v25
	v_cvt_f32_i32_e32 v222, v26
	v_cvt_f32_i32_e32 v223, v27
	v_cvt_f32_i32_e32 v226, v28
	v_cvt_f32_i32_e32 v221, v29
	v_cvt_f32_i32_e32 v224, v30
	v_cvt_f32_i32_e32 v95, v31
	v_cvt_f32_i32_e32 v99, v32
	v_cvt_f32_i32_e32 v160, v234
	v_cvt_f32_i32_e32 v178, v235
	v_mov_b32_e32 v235, v22
	v_cvt_f32_i32_e32 v96, v231
	v_cvt_f32_i32_e32 v102, v232
	v_cvt_f32_i32_e32 v231, v233
	v_cvt_f32_i32_e32 v232, v236
	v_cvt_f32_i32_e32 v233, v237
	v_mov_b32_e32 v237, v23
	v_cvt_f32_i32_e32 v236, v238
	v_cvt_f32_i32_e32 v238, v240
	v_cvt_f32_i32_e32 v240, v244
	v_cvt_f32_i32_e32 v244, v246
	v_cvt_f32_i32_e32 v246, v40
	v_cvt_f32_i32_e32 v68, v70
	v_cvt_f32_i32_e32 v198, v71
	v_cvt_f32_i32_e32 v70, v72
	v_cvt_f32_i32_e32 v199, v73
	v_cvt_f32_i32_e32 v67, v74
	v_cvt_f32_i32_e32 v255, v75
	v_cvt_f32_i32_e32 v197, v76
	v_cvt_f32_i32_e32 v200, v77
	v_mov_b32_e32 v234, v21
.LBB0_17:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_waitcnt lgkmcnt(4)
	scratch_load_b64 v[3:4], off, off offset:16 ; 8-byte Folded Reload
	v_and_b32_e32 v89, 0xf0, v215
	.loc	1 378 14 is_stmt 1              ; generate_amdgcn.py:378:14
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s16
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s1, s14, s15
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt lgkmcnt(3)
	v_add_f32_e32 v25, v190, v61
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v7, v213, v37 :: v_dual_add_f32 v8, v211, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v17, v175, v55 :: v_dual_add_f32 v26, v189, v58
	v_add_f32_e32 v41, v235, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v162, v213, v7, s2
	v_cndmask_b32_e64 v165, v211, v8, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v17, v175, v17, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s13, s13, 0xffff
	v_and_b32_e32 v32, 15, v215
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v6, v214, v87
	v_add_f32_e32 v0, v212, v0
	v_dual_mov_b32 v254, v156 :: v_dual_mov_b32 v253, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v166, v214, v6, s2
	v_cndmask_b32_e64 v167, v212, v0, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v1, v3, v38
	v_add_f32_e32 v2, v4, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v3, v1, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v1, 1, v215
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v4, v2, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	scratch_load_b32 v2, off, off offset:168 ; 4-byte Folded Reload
	v_lshl_add_u32 v3, v89, 2, 0
	v_and_b32_e32 v1, 28, v1
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v2, 32, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v24, v3, v2, v1
	scratch_load_b64 v[3:4], off, off offset:8 ; 8-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v2, v230, v203
	v_add_f32_e32 v1, v229, v195
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v230, v2, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v14, v229, v1, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v2, v4, v51 :: v_dual_add_f32 v1, v3, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v4, v2, s2
	scratch_load_b64 v[4:5], off, off       ; 8-byte Folded Reload
	v_cndmask_b32_e64 v34, v3, v1, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v1, v227, v201 :: v_dual_add_f32 v2, v228, v202
	v_add_f32_e32 v3, v94, v194
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v182, v89, 1, 0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v87, 1, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v228, v2, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v5, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v227, v1, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v1, v4, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v185, v5, v2, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v2, v93, v193
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v4, v1, s2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v1, s28, v32
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v4, s14, v215
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v94, v3, s2
	v_cndmask_b32_e64 v16, v93, v2, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s28, s28, s15
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v2, 32, v1
	v_or_b32_e32 v3, 64, v1
	v_or_b32_e32 v5, 0x60, v1
	s_clause 0x3
	buffer_load_u16 v28, v1, s[8:11], 0 offen
	buffer_load_u16 v181, v2, s[8:11], 0 offen
	buffer_load_u16 v65, v3, s[8:11], 0 offen
	buffer_load_u16 v196, v5, s[8:11], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v2, v207, v48
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v1, v4, s[8:11], 0 offen
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v192, v36 :: v_dual_add_f32 v5, v191, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v190, v25, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v3, v206, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v189, v26, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v171, v192, v4, s2
	v_cndmask_b32_e64 v161, v191, v5, s2
	v_cndmask_b32_e64 v170, v207, v2, s2
	v_cndmask_b32_e64 v169, v206, v3, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v207, v158, v160 :: v_dual_add_f32 v206, v157, v231
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v35, 16, v28
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v24, v1
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	v_add_lshl_u32 v1, s1, v215, 1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[30:31], off, off offset:56
	scratch_load_b64 v[227:228], off, off offset:32
	scratch_load_b64 v[229:230], off, off offset:48
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v11, v176, v57
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[4:7], v182 offset:512
	ds_load_b128 v[192:195], v182 offset:528
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_dual_add_f32 v9, v31, v88 :: v_dual_add_f32 v10, v30, v86
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v20, v228, v59 :: v_dual_add_f32 v21, v227, v56
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v22, v230, v63 :: v_dual_add_f32 v23, v229, v60
	.loc	1 382 23                        ; generate_amdgcn.py:382:23
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v176, v11, s2
	v_cndmask_b32_e64 v172, v227, v21, s2
	v_cndmask_b32_e64 v186, v228, v20, s2
	v_cndmask_b32_e64 v49, v229, v23, s2
	v_cndmask_b32_e64 v51, v230, v22, s2
	v_cndmask_b32_e64 v163, v30, v10, s2
	v_cndmask_b32_e64 v164, v31, v9, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[20:23], v182
	ds_load_b128 v[8:11], v182 offset:16
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v24, v25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[229:230], off, off offset:40
	scratch_load_b64 v[227:228], off, off offset:144
	scratch_load_b64 v[190:191], off, off offset:88
	scratch_load_b64 v[213:214], off, off offset:24
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(3)
	v_dual_add_f32 v27, v184, v64 :: v_dual_add_f32 v30, v230, v205
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v212, v190, v95
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v214, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v184, v27, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	ds_load_b128 v[24:27], v182
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v29, v183, v62
	v_add_f32_e32 v31, v213, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v230, v30, s2
	v_cndmask_b32_e64 v44, v214, v36, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v39, v183, v29, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v29, v229, v204
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v213, v31, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v213, v191, v99
	v_add_f32_e32 v99, v141, v239
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v159, v229, v29, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	ds_load_b128 v[28:31], v182 offset:16
	v_mov_b32_e32 v230, v188
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
	v_add_f32_e32 v37, v234, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v234, v37, s2
	v_cndmask_b32_e64 v37, v235, v41, s2
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v50, 0xbfb8aa3b, v13
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v13
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v41, v41, v43, v15
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v15, v26, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v12, v12, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v15, 0xbfb8aa3b, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v50, v50, v52
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v50, 1.0, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v52, null, v50, v50, v13
	v_rcp_f32_e32 v53, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v52, v53, 1.0
	v_fmac_f32_e32 v53, v54, v53
	v_div_scale_f32 v54, vcc_lo, v13, v50, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v55, v54, v53
	v_fma_f32 v56, -v52, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v56, v53
	v_fma_f32 v52, -v52, v55, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v52, v52, v53, v55
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, null, v15, v15, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v43
	v_fma_f32 v54, -v43, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v54, v53
	v_div_scale_f32 v54, vcc_lo, v12, v15, v12
	v_mul_f32_e32 v55, v54, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v43, v55, v54
	v_fmac_f32_e32 v55, v56, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v55, v54
	v_div_fmas_f32 v53, v43, v53, v55
	v_div_fixup_f32 v43, v46, v45, v14
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v14, v29, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v14, v18, v14
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v18, v18, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v54, -v45, v46, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v54, v46
	v_div_scale_f32 v54, vcc_lo, v14, v18, v14
	v_mul_f32_e32 v55, v54, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v45, v55, v54
	v_fmac_f32_e32 v55, v56, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v45, v55, v54
	v_div_fmas_f32 v54, v45, v46, v55
	v_div_fixup_f32 v45, v52, v50, v13
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v13, v28, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v13, v16, v13
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, null, v16, v16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v50, v46
	v_fma_f32 v52, -v46, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, vcc_lo, v13, v16, v13
	v_mul_f32_e32 v55, v52, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v46, v55, v52
	v_fmac_f32_e32 v55, v56, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v46, v55, v52
	v_div_fmas_f32 v52, v46, v50, v55
	v_div_fixup_f32 v46, v53, v15, v12
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v12, v31, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v53, v19, v12
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v12, 0xbfb8aa3b, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v55, 1.0, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v12, null, v55, v55, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v15, v12
	v_fma_f32 v19, -v12, v15, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, v19, v15
	v_div_scale_f32 v19, vcc_lo, v53, v55, v53
	v_mul_f32_e32 v50, v19, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v12, v50, v19
	v_fmac_f32_e32 v50, v56, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v50, v19
	v_div_fmas_f32 v56, v12, v15, v50
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v12, v30, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v50, v54, v18, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v54, v17, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v12, 0xbfb8aa3b, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v54
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v52, v16, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v57, 1.0, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v12, null, v57, v57, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v12
	v_fma_f32 v15, -v12, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v54, v57, v54
	v_mul_f32_e32 v17, v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v12, v17, v15
	v_fmac_f32_e32 v17, v18, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v17, v15
	v_div_fmas_f32 v58, v12, v14, v17
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	ds_load_b128 v[16:19], v182 offset:512
	ds_load_b128 v[12:15], v182 offset:528
	v_dual_mov_b32 v183, v126 :: v_dual_mov_b32 v182, v125
	v_dual_mov_b32 v125, v135 :: v_dual_mov_b32 v126, v136
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v52, v17, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v59, v186, v52
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v52, 0xbfb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v52, v52
	v_ldexp_f32 v52, v52, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v60, 1.0, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v52, null, v60, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v61, v52
	v_fma_f32 v62, -v52, v61, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, v62, v61
	v_div_scale_f32 v62, vcc_lo, v59, v60, v59
	v_mul_f32_e32 v63, v62, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v52, v63, v62
	v_fmac_f32_e32 v63, v64, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v52, v63, v62
	v_div_fmas_f32 v61, v52, v61, v63
	v_div_fixup_f32 v52, v56, v55, v53
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v53, v16, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v53, v172, v53
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v55, 0xbfb8aa3b, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v55, v55
	v_ldexp_f32 v55, v55, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v56, null, v55, v55, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v62, v56
	v_fma_f32 v63, -v56, v62, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v62, v63, v62
	v_div_scale_f32 v63, vcc_lo, v53, v55, v53
	v_div_fixup_f32 v54, v58, v57, v54
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v57, v19, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v64, v63, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v57, v51, v57
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v71, -v56, v64, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v51, 0xbfb8aa3b, v57 :: v_dual_fmac_f32 v64, v71, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v56, -v56, v64, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v56, v56, v62, v64
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v57
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v51, v51, v58
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v58, 1.0, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v51, null, v58, v58, v57
	v_rcp_f32_e32 v62, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v51, v62, 1.0
	v_fmac_f32_e32 v62, v63, v62
	v_div_scale_f32 v63, vcc_lo, v57, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v64, v63, v62
	v_fma_f32 v71, -v51, v64, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v71, v62
	v_fma_f32 v51, -v51, v64, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v62, v51, v62, v64
	v_div_fixup_f32 v51, v61, v60, v59
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v59, v18, v35
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v59, v49, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v49, 0xbfb8aa3b, v59
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v59
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v49, v49, v60
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v60, 1.0, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v49, null, v60, v60, v59
	v_rcp_f32_e32 v61, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v49, v61, 1.0
	v_fmac_f32_e32 v61, v63, v61
	v_div_scale_f32 v63, vcc_lo, v59, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v64, v63, v61
	v_fma_f32 v71, -v49, v64, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v71, v61
	v_fma_f32 v49, -v49, v64, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v61, v49, v61, v64
	v_div_fixup_f32 v49, v56, v55, v53
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v53, v13, v35
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v53, v48, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v53
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v53
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v48, v48, v55
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v63, 1.0, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v63, v63, v53
	v_rcp_f32_e32 v55, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v48, v55, 1.0
	v_fmac_f32_e32 v55, v56, v55
	v_div_scale_f32 v56, vcc_lo, v53, v63, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v64, v56, v55
	v_div_fixup_f32 v100, v62, v58, v57
	v_fma_f32 v71, -v48, v64, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v71, v55
	v_fma_f32 v48, -v48, v64, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v64, v48, v55, v64
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v48, v12, v35
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v47, v47, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v47
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v47
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v48, v48, v55
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v48, 1.0, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v55, null, v48, v48, v47
	v_rcp_f32_e32 v56, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v55, v56, 1.0
	v_fmac_f32_e32 v56, v57, v56
	v_div_scale_f32 v57, vcc_lo, v47, v48, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v58, v57, v56
	v_fma_f32 v62, -v55, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v58, v62, v56
	v_div_fixup_f32 v172, v61, v60, v59
	v_fma_f32 v55, -v55, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v55, v55, v56, v58
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v56, v15, v35
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v56, v40, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v56
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v56
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v40, v40, v57
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v57, 1.0, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v57, v57, v56
	v_rcp_f32_e32 v58, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v40, v58, 1.0
	v_fmac_f32_e32 v58, v59, v58
	v_div_scale_f32 v59, vcc_lo, v56, v57, v56
	v_div_fixup_f32 v53, v64, v63, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v60, v59, v58
	v_fma_f32 v61, -v40, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v61, v58
	v_fma_f32 v40, -v40, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v58, v40, v58, v60
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v40, v14, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v56, v58, v57, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v39, v39, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v40, v40
	v_ldexp_f32 v40, v40, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v59, 1.0, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v59, v59, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v60, v40
	v_fma_f32 v61, -v40, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v39, v59, v39
	v_mul_f32_e32 v62, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v40, v62, v61
	v_fmac_f32_e32 v62, v63, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v40, v62, v61
	v_div_fmas_f32 v60, v40, v60, v62
	.loc	1 378 14 is_stmt 1              ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v40, 16, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v61, v25, v40
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v44, v44, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v58, v60, v59, v39
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v61, 0xbfb8aa3b, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v61, v61
	v_ldexp_f32 v61, v61, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v62, null, v61, v61, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v63, v62
	v_fma_f32 v64, -v62, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v64, v63
	v_div_scale_f32 v64, vcc_lo, v44, v61, v44
	v_mul_f32_e32 v71, v64, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v62, v71, v64
	v_fmac_f32_e32 v71, v72, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v62, v71, v64
	v_div_fmas_f32 v62, v62, v63, v71
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v63, v24, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v42, v42, v63
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v63, 0xbfb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v63
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v63, v63
	v_ldexp_f32 v63, v63, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v63, v63, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v64
	v_fma_f32 v72, -v64, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v71
	v_div_scale_f32 v72, vcc_lo, v42, v63, v42
	v_mul_f32_e32 v73, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v64, v73, v72
	v_fmac_f32_e32 v73, v74, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v64, -v64, v73, v72
	v_div_fixup_f32 v72, v62, v61, v44
	v_div_fmas_f32 v64, v64, v71, v73
	v_div_fixup_f32 v71, v55, v48, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v55, v64, v63, v42
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v42, v20, v35
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v38, v38, v42
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v42, v23, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v44, v76, v42
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v42, v22, v35
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v47, v34, v42 :: v_dual_mul_f32 v34, v9, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v48, v185, v34
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v34, v8, v35
	scratch_load_b64 v[184:185], off, off offset:128 ; 8-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v59, v77, v34
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v81, v48, v50 :: v_dual_mul_f32 v34, v11, v35
	v_mul_f32_e32 v82, v59, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v0, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v60, v170, v34
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v34, v10, v35
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_add_f32_e32 v59, v180, v91
	v_mov_b32_e32 v229, v187
	v_dual_mov_b32 v189, v154 :: v_dual_mov_b32 v188, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v61, v169, v34
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v34, v5, v35 :: v_dual_add_f32 v169, v227, v90
	v_dual_mov_b32 v187, v146 :: v_dual_mov_b32 v186, v145
	v_mov_b32_e32 v154, v140
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v62, v171, v34
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v34, v4, v35 :: v_dual_mov_b32 v153, v139
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v54, v61, v54 :: v_dual_mov_b32 v171, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v83, v62, v51 :: v_dual_mul_f32 v64, v161, v34
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v34, v7, v35
	v_dual_mov_b32 v146, v130 :: v_dual_mov_b32 v145, v129
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v61, v149, v233
	v_dual_mov_b32 v170, v117 :: v_dual_mul_f32 v73, v166, v34
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v34, v6, v35
	v_mul_f32_e32 v39, v21, v35
	v_dual_mov_b32 v117, v143 :: v_dual_mov_b32 v118, v144
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v81, v81
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v74, v162, v34
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v34, v193, v35
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v39, v75, v39
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_add_f32_e32 v233, v118, v238
	scratch_load_b64 v[90:91], off, off offset:112 ; 8-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v75, v167, v34 :: v_dual_mul_f32 v34, v192, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v76, v165, v34
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v34, v195, v35
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_dual_add_f32 v244, v134, v244 :: v_dual_mul_f32 v71, v76, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v77, v164, v34 :: v_dual_mul_f32 v34, v194, v35
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v77, v77, v56 :: v_dual_mul_f32 v78, v163, v34
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v34, v21, v40
	v_dual_mov_b32 v164, v122 :: v_dual_mov_b32 v163, v121
	v_dual_mov_b32 v121, v127 :: v_dual_mov_b32 v122, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v79, v33, v34
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v33, v20, v40
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v57, v159, v33
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v33, v27, v40 :: v_dual_mov_b32 v160, v152
	v_mov_b32_e32 v159, v151
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v151, v125, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v161, v37, v33
	.loc	1 383 25 is_stmt 0              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v33, v26, v40
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v37, v44, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v45, v228, v92 :: v_dual_mov_b32 v92, v179
	v_mov_b32_e32 v93, v180
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v162, v36, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v33, 0xbfb8aa3b, v161 :: v_dual_mul_f32 v36, v38, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.h, 0
	v_cmp_o_f32_e64 s3, v37, v37
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v80, v47, v46 :: v_dual_mul_f32 v85, v64, v49
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v36, v36
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v201, v159, v178
	v_add_f32_e32 v178, v142, v242
	v_add_f32_e32 v242, v133, v241
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v241, v122, v246 :: v_dual_add_f32 v202, v160, v232
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v232, v124 :: v_dual_fmac_f32 v33, 0xbfb8aa3b, v161
	v_dual_mov_b32 v231, v123 :: v_dual_add_f32 v246, v121, v243
	v_add_f32_e32 v243, v116, v69
	scratch_load_b64 v[180:181], off, off offset:120 ; 8-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v33, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v144, v231, v247
	v_add_f32_e32 v247, v119, v245
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.h, v38.h
	v_mov_b16_e32 v69.l, v80.h
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v236, v150, v236
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v80, v80
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v228, v45, s2
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v58, v78, v58
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v93, v59, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v33, v34
	v_mul_f32_e32 v34, 0xbfb8aa3b, v162
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v76.h, v38.h
	v_mov_b16_e32 v76.l, v58.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v140, v112, v198 :: v_dual_add_f32 v165, 1.0, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s6, v58, v58
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v78, v22, v40
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v245, v111, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, null, v165, v165, v161
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v35, v33
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v35, v39, v41
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v35.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v52, v60, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_and_b32_e32 v39, 1, v38
	v_mov_b16_e32 v38.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v35, v39, 0x7fff
	v_mov_b16_e32 v39.h, v38.h
	v_mov_b16_e32 v39.l, v36.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v68, v73, v100 :: v_dual_and_b32 v39, 1, v39
	v_mov_b32_e32 v100, v107
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v73.h, v38.h
	v_mov_b16_e32 v73.l, v54.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v84, v36, v39, 0x7fff
	v_and_b32_e32 v36, 1, v38
	v_mov_b16_e32 v38.l, v81.h
	v_dual_mov_b32 v101, v108 :: v_dual_and_b32 v56, 1, v73
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v108, s15, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v86, v37, v36, 0x7fff
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v32, v57, v55
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v199, v101, v199
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v107, s15, 5, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v36, v230, v0
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[173:174], off, off offset:152
	scratch_load_b32 v0, off, off offset:436
	v_add_f32_e32 v62, v179, v177
	v_add_f32_e32 v37, v229, v237
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v230, v36, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_add_f32_e32 v215, v181, v222
	v_dual_add_f32 v222, v91, v226 :: v_dual_add_f32 v211, v180, v219
	v_add_f32_e32 v219, v115, v249
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v249.h, 0x7fff, v86.h, s3
	v_cmp_o_f32_e64 s3, v52, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v237, v174, v0
	scratch_load_b32 v0, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v92, v62, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v94, v173, v0
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[234:235], off, off offset:104
	scratch_load_b32 v0, off, off offset:452
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v50, v235, v0
	scratch_load_b32 v0, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v229, v37, s2
	v_cndmask_b32_e64 v50, v235, v50, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v51, v234, v0
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[176:177], off, off offset:80
	scratch_load_b32 v0, off, off offset:444
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v234, v51, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v48, v177, v0
	scratch_load_b32 v0, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v177, v48, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v49, v176, v0
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[2:3], off, off offset:72
	scratch_load_b32 v0, off, off offset:456
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v176, v49, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v46, v3, v0
	scratch_load_b32 v0, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v47, v2, v0
	scratch_load_b32 v0, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v43, v254, v0
	scratch_load_b32 v0, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v44, v253, v0
	scratch_load_b32 v0, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v60, v189, v0
	scratch_load_b32 v0, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v39, v188, v0
	scratch_load_b32 v0, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v188, v39, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v155, v148, v0
	scratch_load_b32 v0, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v64, v147, v0
	scratch_load_b32 v0, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v156, v187, v0
	scratch_load_b32 v0, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v175, v186, v0
	scratch_load_b32 v0, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v167, v154, v0
	scratch_load_b32 v0, off, off offset:492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v179, v153, v0
	scratch_load_b32 v0, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v204, v138, v0
	scratch_load_b32 v0, off, off offset:504 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v205, v137, v0
	scratch_load_b32 v0, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v203, v132, v0
	scratch_load_b32 v0, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v131, v0
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:520 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v214, v146, v0
	scratch_load_b32 v0, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v145, v0
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v183, v0
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v182, v0
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:548 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v164, v0
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v163, v0
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v171, v0
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v170, v0
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:552 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v114, v0
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:544 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v113, v0
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:564 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v110, v0
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:556 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v109, v0
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	v_add_f32_e32 v0, v106, v208
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:568 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v105, v0
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:48
	scratch_store_b64 off, v[97:98], off offset:160
	scratch_load_b32 v0, off, off offset:572 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v98, v0
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:560 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v0, v97, v0 :: v_dual_mov_b32 v97, v251
	v_mov_b32_e32 v98, v252
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v251.l, 0x7fff, v84.h, s1
	v_cmp_o_f32_e64 s1, v82, v82
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v0, v210, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v251.h, 0x7fff, v35.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_add3_u32 v54, v54, v56, 0x7fff
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add3_u32 v35, s28, s14, v87
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_add_f32_e32 v0, v209, v225
	scratch_load_b64 v[225:226], off, off offset:96 ; 8-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_add_f32 v41, v185, v220 :: v_dual_add_f32 v218, v184, v218
	v_add_f32_e32 v220, v90, v223
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	scratch_load_b64 v[0:1], off, off offset:136 ; 8-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v185, v41, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s14, s10
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v88, v1, v217 :: v_dual_add_f32 v89, v0, v216
	v_add_f32_e32 v217, v226, v224
	scratch_load_b64 v[223:224], off, off offset:64 ; 8-byte Folded Reload
	v_add_f32_e32 v216, v225, v221
	v_add_f32_e32 v221, v117, v168
	v_add_f32_e32 v168, v126, v240
	v_dual_mov_b32 v240, v104 :: v_dual_mov_b32 v239, v103
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v1, v88, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v104, s15, 4, v108
	v_dual_mov_b32 v87, v137 :: v_dual_mov_b32 v88, v138
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v66, v224, v102
	v_add_f32_e32 v208, v223, v96
	v_dual_add_f32 v102, v97, v67 :: v_dual_and_b32 v67, 1, v69
	v_add_f32_e32 v69, v239, v197
	v_dual_mov_b32 v95, v253 :: v_dual_mov_b32 v96, v254
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[197:198], null, s15, 48, v[108:109]
	scratch_store_b32 off, v69, off offset:32 ; 4-byte Folded Spill
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.h, v38.h
	v_mov_b16_e32 v69.l, v82.h
	v_add3_u32 v67, v80, v67, 0x7fff
	v_mov_b16_e32 v67.l, v71.h
	v_mov_b16_e32 v80.h, v38.h
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v95, v44, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v69, 1, v69
	v_cndmask_b16 v249.l, 0x7fff, v67.h, s4
	v_mov_b16_e32 v67.h, v38.h
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v238, v232, v250
	v_add_f32_e32 v250, v120, v248
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v69, v82, v69, 0x7fff
	s_mov_b32 s15, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b16 v252.l, 0x7fff, v69.h, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v69, v79, v72
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v72, v29, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v85, v85
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v79, v9, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s7, v69, v69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v72, v73, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v0, v89, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v248, v100, v70
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v70, v74, v172
	v_dual_mul_f32 v74, v75, v53 :: v_dual_and_b32 v53, 1, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v52.h
	v_mov_b16_e32 v75.h, v38.h
	v_mov_b16_e32 v75.l, v85.h
	v_mov_b16_e32 v80.l, v70.h
	v_add3_u32 v53, v81, v53, 0x7fff
	v_and_b32_e32 v56, 1, v38
	v_mov_b16_e32 v38.l, v83.h
	v_cmp_o_f32_e64 s4, v70, v70
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v59, v59, v79
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v252.h, 0x7fff, v53.h, s5
	v_add3_u32 v52, v52, v56, 0x7fff
	v_and_b32_e32 v53, 1, v75
	v_and_b32_e32 v55, 1, v38
	v_cndmask_b16 v52.l, 0x7fff, v54.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s3
	v_add3_u32 v53, v85, v53, 0x7fff
	v_add3_u32 v55, v83, v55, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v75, s3, v161, v165, v161
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v54, 1, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v53.l, 0x7fff, v53.h, s1
	v_cndmask_b16 v53.h, 0x7fff, v55.h, vcc_lo
	v_and_b32_e32 v55, 1, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v67, v75, v166
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v68.h
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_add3_u32 v54, v70, v54, 0x7fff
	v_mov_b16_e32 v81.h, v38.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, s1, v162, v63, v162
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v57, 1, v38
	v_mov_b16_e32 v38.l, v74.h
	v_cmp_o_f32_e64 s5, v71, v71
	v_add3_u32 v55, v71, v55, 0x7fff
	v_cndmask_b16 v54.l, 0x7fff, v54.h, s4
	v_add3_u32 v57, v68, v57, 0x7fff
	v_and_b32_e32 v68, 1, v38
	v_mov_b16_e32 v38.l, v77.h
	v_mov_b16_e32 v81.l, v32.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v71, -v42, v67, v75
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v54.h, 0x7fff, v57.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_and_b32_e32 v57, 1, v76
	v_add3_u32 v68, v74, v68, 0x7fff
	v_and_b32_e32 v74, 1, v38
	v_mov_b16_e32 v38.l, v69.h
	v_and_b32_e32 v76, 1, v81
	v_add3_u32 v57, v58, v57, 0x7fff
	v_cndmask_b16 v55.l, 0x7fff, v55.h, s5
	v_cndmask_b16 v55.h, 0x7fff, v68.h, vcc_lo
	v_and_b32_e32 v58, 1, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v68, v70, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v77, v77
	v_add3_u32 v74, v77, v74, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v67, v71, v166
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v58, v69, v58, 0x7fff
	v_add3_u32 v69, v32, v76, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v71, -v34, v68, v70
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v76, v28, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v77, 0xbfb8aa3b, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s6
	v_cndmask_b16 v57.h, 0x7fff, v74.h, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v42, v67, v75
	v_dual_fmac_f32 v68, v71, v33 :: v_dual_mul_f32 v71, v73, v76
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v77
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v227, v169, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v42, v42, v166, v67
	v_fma_f32 v34, -v34, v68, v70
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v73, 0, 0x42800000, s4
	v_mul_f32_e32 v67, 0xbfb8aa3b, v71
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v42, v42, v165, v161
	v_div_fmas_f32 v33, v34, v33, v68
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v72
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v68, v23, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v32, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v33, v63, v162
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v73
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_add_f32_e32 v200, v240, v200
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s4
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v45, v45, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v58.l, 0x7fff, v69.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v71
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v69, v31, v40 :: v_dual_add_nc_u32 v172, 0x80, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v32, v45, v42
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v34, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v63, v67
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v41, v41, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v32.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v32, v32
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v70, v74, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v74, 0xbfb8aa3b, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v184, v218, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v34, v34, v72
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v45, v63, v45
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v63, 1, v38
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v70, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v68, v67
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v76, v30, v40 :: v_dual_add_f32 v45, 1.0, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v63, v32, v63, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v74
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v75, v75, v76 :: v_dual_lshlrev_b32 v152, 16, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v45, v45, v71
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v74, 0, 0x42800000, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v70, -v67, v68, 1.0
	v_div_scale_f32 v76, s4, v71, v45, v71
	v_rcp_f32_e32 v73, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v68, v70, v68
	v_div_scale_f32 v70, vcc_lo, v72, v34, v72
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v69, v8, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v74, v74
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.l, v33.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v78, v70, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.h, v38.h
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v77, -v32, v73, 1.0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v56, 16, v196
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v62, v62, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v80, -v67, v78, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v63.h, 0x7fff, v63.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v73, v77, v73
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v77, 0xbfb8aa3b, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v85, v125 :: v_dual_fmac_f32 v78, v80, v68
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v81, v76, v73
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v77
	v_mov_b32_e32 v83, v133
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v67, -v67, v78, v70
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v69, v74, v80
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v79, -v32, v81, v76
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v77, 0, 0x42800000, s5
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v180, v211, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v80, v10, v40 :: v_dual_add_f32 v69, 1.0, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v81, v79, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v75
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v96, v43, s2
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v37, v37, v80 :: v_dual_and_b32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v32, v81, v76
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v76, v16, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v70, v77
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_add_f32_e32 v255, v98, v255
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v42, v33, v42, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v74, v74, v76
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v58.h, 0x7fff, v58.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v79, 0xbfb8aa3b, v74
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v67, v67, v68, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v32, v32, v73, v81
	v_div_fixup_f32 v34, v67, v34, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v67, v70, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, null, v69, v69, v41
	v_div_fixup_f32 v32, v32, v45, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v34, v59, v34 :: v_dual_add_f32 v45, 1.0, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v59, v68
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v32, v62, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v181, v215, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v62, null, v45, v45, v75
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v72, v17, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v63.l, 0x7fff, v42.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v77, s1, v75, v45, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v67, v62
	v_fma_f32 v42, -v68, v59, 1.0
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v71, v71, v72
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v79
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v81, v11, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.h, v38.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v59, v42, v59
	v_div_scale_f32 v42, vcc_lo, v41, v69, v41
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v79, 0, 0x42800000, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v73, -v62, v67, 1.0
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v36, v36, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v72, v42, v59 :: v_dual_mov_b32 v81, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v67, v73, v67
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v76, -v68, v72, v42
	v_mov_b32_e32 v82, v132
	v_mul_f32_e32 v78, v77, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v73
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v72, v76, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v62, v78, v77
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v73, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v68, v72, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v78, v76, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v71
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v42, v42, v59, v72
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v62, v78, v77
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v41, v42, v69, v41
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v91, v222, s2
	v_mov_b32_e32 v91, v117
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v59, v59, v67, v78
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s4
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v36, v36, v41
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v90, v220, s2
	v_mov_b32_e32 v89, v153
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v45, v59, v45, v75
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v62, v73, v68
	v_exp_f32_e32 v68, v79
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v79, v18, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v37, v37, v45 :: v_dual_add_f32 v62, 1.0, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v78, v78, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v70, 1, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v174, v237, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v59, null, v62, v62, v71
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v42, v68, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v45, v34, v70, 0x7fff
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v70, v19, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v41, v59
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v37.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.h, v38.h
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v69, v69, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v143.h, 0x7fff, v45.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, vcc_lo, v71, v62, v71
	v_div_scale_f32 v68, null, v42, v42, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v77, 0xbfb8aa3b, v69 :: v_dual_and_b32 v34, 1, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v67, -v59, v41, 1.0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v173, v94, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v79, v4, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v77
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v36.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v41, v67, v41
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v77, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v72, v45, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v69
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v32.h
	v_cmp_o_f32_e64 s1, v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v75, -v59, v72, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v72, v75, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v32, v33, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v59, v72, v45
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v59, 0xbfb8aa3b, v78
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v143.l, 0x7fff, v33.h, s1
	v_and_b32_e32 v33, 1, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v41, v45, v41, v72
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v45, v77
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v67, -v68, v32, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v36, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v59, 0, 0x42800000, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v67, v32
	v_div_scale_f32 v67, s1, v74, v42, v74
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v59, 0xbfb8aa3b, v78 :: v_dual_mul_f32 v76, v67, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v75, -v68, v76, v67
	v_fmac_f32_e32 v76, v75, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v67, -v68, v76, v67
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v67, v32, v76
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v67, v5, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v45, v45, v68
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v68, v70, v79 :: v_dual_mul_f32 v79, v7, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v32, v32, v42, v74
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v59
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v59, v73, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v225, v216, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v74, v12, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v45, v45, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v139.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v73, v73, v74
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v37, v34, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v32, v68, v32
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v68, v13, v40
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v50, v50, v79 :: v_dual_mul_f32 v77, 0xbfb8aa3b, v73
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v41, v41, v62, v71
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v139.l, 0x7fff, v34.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, vcc_lo, v69, v45, v69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v36, v59, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v59, v67
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v41, v42, v62
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v71, v6, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v77
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.h, v38.h
	v_mov_b16_e32 v38.l, v36.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v41
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v51, v51, v71
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v71, v14, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v77, 0, 0x42800000, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v67, v59, 1.0
	v_div_scale_f32 v41, null, v33, v33, v78
	v_mov_b32_e32 v79, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v73
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v59, v34, v59
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v226, v217, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v62, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v72, v70, v59
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v34, v34, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v75, 0xbfb8aa3b, v34
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v41, v62, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v75
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v62, v68, v62
	v_div_scale_f32 v68, s1, v78, v33, v78
	v_fma_f32 v75, -v67, v72, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v74, 0, 0x42800000, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v76, v68, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v75, v59
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v75, -v41, v76, v68
	v_fma_f32 v67, -v67, v72, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v74, v74
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v76, v75, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v59, v67, v59, v72
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v67, v77
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v41, -v41, v76, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v45, v59, v45, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v68, v74, v70
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v74, v192, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v41, v41, v62, v76
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s4
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v45, v50, v45 :: v_dual_add_f32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v49, v49, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v41, v33, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v41, v67, v62
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v62, null, v68, v68, v34
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v51, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v67, v15, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v51, v62
	v_mov_b32_e32 v77, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v50, null, v41, v41, v73
	v_fma_f32 v59, -v62, v51, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v51, v59, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.l, v32.h
	v_cmp_o_f32_e64 s1, v32, v32
	v_and_b32_e32 v37, 1, v42
	v_and_b32_e32 v42, 1, v38
	v_mov_b16_e32 v38.l, v45.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v37, v32, v37, 0x7fff
	v_add3_u32 v42, v36, v42, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v36, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v33.h
	v_mov_b16_e32 v32.h, v38.h
	v_cndmask_b16 v135.l, 0x7fff, v37.h, s1
	v_cndmask_b16 v135.h, 0x7fff, v42.h, vcc_lo
	v_and_b32_e32 v37, 1, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, vcc_lo, v34, v68, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v59, -v50, v36, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v45, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v45, v42, v51 :: v_dual_fmac_f32 v36, v59, v36
	v_div_scale_f32 v59, s3, v73, v41, v73
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v136.h, 0x7fff, v37.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v191, v213, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v62, v45, v42
	v_mul_f32_e32 v70, v59, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v92, v118 :: v_dual_mul_f32 v37, v37, v67
	v_fmac_f32_e32 v45, v69, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v50, v70, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v190, v212, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v72, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v62, v45, v42
	v_fmac_f32_e32 v70, v67, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v62, v69, v71
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v42, v42, v51, v45
	v_fma_f32 v45, -v50, v70, v59
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v50, 0xbfb8aa3b, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v67, 0, 0x42800000, s1
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v51, v193, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v36, v45, v36, v70
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v34, v42, v68, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v67, 0xbfb8aa3b, v37 :: v_dual_mul_f32 v48, v48, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v36, v36, v41, v73
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v45, v67
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v2, v47, s2
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v36, v49, v36
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v62
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v224, v66, s2
	v_cndmask_b32_e64 v66, v3, v46, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v33, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v223, v208, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v50
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v50, v25, v152
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v41, v45, v41
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v25, v25, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v3, v195, v56 :: v_dual_mul_f32 v46, v49, v50
	v_mul_f32_e32 v49, v194, v40
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v41, 1.0, v41 :: v_dual_and_b32 v32, 1, v32
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v42, v42, v45
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v40, v195, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v49, v51, v49
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v33, v32, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v48, v34
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v41, v41, v37
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v136.l, 0x7fff, v32.h, s1
	v_mov_b16_e32 v38.l, v33.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v33, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v50, vcc_lo, v37, v41, v37
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v40, v66, v40 :: v_dual_and_b32 v45, 1, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.h, v38.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v45, v33, v45, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v33, null, v42, v42, v62
	v_fma_f32 v47, -v48, v32, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v127.h, 0x7fff, v45.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v59, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v32, v47, v32 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v46
	v_mul_f32_e32 v70, v50, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v33, v59, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v71, 0, 0x42800000, s3
	v_dual_mov_b32 v90, v154 :: v_dual_fmac_f32 v59, v69, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v48, v70, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v71, 0xbfb8aa3b, v46 :: v_dual_fmac_f32 v70, v69, v32
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s3
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v48, v70, v50
	v_div_fmas_f32 v32, v48, v32, v70
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v70, v9, v152
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v50, v71, v69
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v9, v9, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v32, v32, v41, v37
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v41, v21, v152
	v_mul_f32_e32 v21, v21, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v41, v43, v41 :: v_dual_mul_f32 v68, v24, v152
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v36.h
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v24, v24, v56
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v47, v67, v68
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, s4, v62, v42, v62
	s_mov_b32 vcc_lo, s4
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v68, 0xbfb8aa3b, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v72, v67, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v33, v72, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0x42800000, s5
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s5
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v51, v68
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v68, v28, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v72, v66, v59
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v28, v28, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v33, v72, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v159, v201, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v37, v51, v48
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v48, v40, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.h, v38.h
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v67, v67, v68 :: v_dual_add_f32 v128, 1.0, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v33, v33, v59, v72
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v129, 1.0, v37 :: v_dual_mul_f32 v68, v22, v152
	v_mov_b32_e32 v84, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v131, null, v128, v128, v46
	v_div_fixup_f32 v33, v33, v42, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v133, null, v129, v129, v47
	v_rcp_f32_e32 v132, v131
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v49, v49, v33
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v134, v133
	v_mov_b32_e32 v86, v126
	v_div_scale_f32 v125, s1, v47, v129, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v49.h
	v_mov_b16_e32 v38.l, v48.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v39, v39, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v131, v132, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v130, 1, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v132, v33, v132
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v133, v134, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v36, v34, 0x7fff
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v36, v27, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v134, v33, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v127.l, 0x7fff, v34.h, vcc_lo
	v_and_b32_e32 v34, 1, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v158, v207, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v137, vcc_lo, v46, v128, v46
	v_mul_f32_e32 v124, v125, v134
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v126, v49, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v32, v32, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v157, v206, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v36, v26, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v123, v137, v132
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v26, v26, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v40, v34, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v131, v123, v137
	v_fma_f32 v34, -v133, v124, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v33
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v33, v20, v152
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v138, 0xbfb8aa3b, v40
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v123, v51, v132 :: v_dual_fmac_f32 v124, v34, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v50, 0, 0x42800000, s3
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v131, v123, v137
	v_fma_f32 v45, -v133, v124, v125
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v50, 0xbfb8aa3b, v32 :: v_dual_mul_f32 v33, v44, v33
	v_cndmask_b32_e64 v37, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v42, v42, v132, v123
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s4
	v_exp_f32_e32 v36, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v42, v42, v128, v46
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v49, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v160, v202, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v50, v29, v152
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.h, v38.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v41, v41, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v123.l, 0x7fff, v126.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v36, v34
	v_exp_f32_e32 v36, v37
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v37, v45, v134, v124
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v49, v49, v50
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v41.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v37, v37, v129, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v189, v60, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v66, 0xbfb8aa3b, v49 :: v_dual_mul_f32 v29, v29, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v36, v36, v43
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, null, v34, v34, v32
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v33, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v48, v130, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v42, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v66
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.l, v33.h
	v_cndmask_b16 v123.h, 0x7fff, v37.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, null, v36, v36, v40
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v66, 0, 0x42800000, s3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v38
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v47, -v43, v42, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v49
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v41, v37, 0x7fff
	v_add3_u32 v44, v33, v44, 0x7fff
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v20, v20, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v47, v42
	v_div_scale_f32 v47, vcc_lo, v32, v34, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v48, -v45, v46, 1.0
	v_mul_f32_e32 v51, v47, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s1, v40, v36, v40
	v_fma_f32 v59, -v43, v51, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v62, v48, v46
	v_fmac_f32_e32 v51, v59, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v59, -v45, v62, v48
	v_fma_f32 v43, -v43, v51, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v47, 0xbfb8aa3b, v67 :: v_dual_fmac_f32 v62, v59, v46
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v149, v61, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v42, v43, v42, v51
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v66
	s_delay_alu instid0(VALU_DEP_3)
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
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v46, v23, v152
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v43, v43, v48
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v67
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v36, v45, v36, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v65.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v40, v47
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v34, v39, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s4
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v45, v50, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, null, v43, v43, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v65.l, 0x7fff, v44.h, vcc_lo
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v46, v31, v152
	v_mul_f32_e32 v62, v30, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v41, v39
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v36, v40, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, v34.h
	v_mov_b16_e32 v40.h, v38.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, vcc_lo, v49, v43, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v36, 1.0, v36 :: v_dual_mul_f32 v59, v59, v62
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v40
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v32, v45, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v39, v41, 1.0
	v_div_scale_f32 v37, null, v36, v36, v67
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v59
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v148, v155, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v41, v40, v41
	v_rcp_f32_e32 v44, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v150, v236, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v80, v146 :: v_dual_mul_f32 v51, v47, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v32.h
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v40, v40, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v69, 0, 0x42800000, s4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v147, v64, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v50, v8, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v37, v44, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v66, 0xbfb8aa3b, v40 :: v_dual_fmac_f32 v69, 0xbfb8aa3b, v59
	v_dual_mov_b32 v78, v122 :: v_dual_mul_f32 v45, v45, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v44, v46, v44
	v_div_scale_f32 v46, s1, v67, v36, v67
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v39, v51, v47
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v42, 1, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v68, v46, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v34, v33, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v62, 0, 0x42800000, s3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v51, v66, v41
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v42, v32, v42, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v37, v68, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v186, v175, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v40
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v39, v51, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v68, v66, v44
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v23, v23, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v62, v62
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v39, v39, v41, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v37, v68, v46
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v34, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v39, v39, v43, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v187, v156, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v37, v37, v44, v68
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s4
	v_ldexp_f32 v46, v62, v47
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v47, v48, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v36, v37, v36, v67
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v37, v41, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v46, 1.0, v46 :: v_dual_mul_f32 v39, v47, v39
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v61.h, 0x7fff, v42.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v36, v45, v36 :: v_dual_add_f32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v46, v46, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v39.h
	v_cndmask_b16 v61.l, 0x7fff, v33.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, null, v37, v37, v59
	v_rcp_f32_e32 v43, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, vcc_lo, v40, v46, v40
	v_rcp_f32_e32 v34, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_add3_u32 v33, v39, v33, 0x7fff
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v47, v17, v152
	v_mul_f32_e32 v62, v16, v152
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, v36.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v41, v43, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v64.h, 0x7fff, v33.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v92, v233, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.h, v38.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v67, v10, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v43, v45, v43
	v_fma_f32 v45, -v44, v34, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v33, v33, v47 :: v_dual_and_b32 v32, 1, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v70, v7, v152 :: v_dual_mul_f32 v39, v42, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v34, v45, v34
	v_div_scale_f32 v45, s3, v59, v37, v59
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v41, v39, v42
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v36, v32, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v49, v45, v34
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v17, v17, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v66
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v39, v48, v43
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v91, v221, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v44, v49, v45
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v7, v7, v56
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v30, v30, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v41, v39, v42
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v42, v48, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v49, v47, v34
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v8, v8, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v39, v41, v43, v39
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v44, v49, v45
	s_mov_b32 vcc_lo, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v47, 0xbfb8aa3b, v33 :: v_dual_mul_f32 v44, v11, v152
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v45, v50, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v41, v34, v49
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_exp_f32_e32 v41, v47
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v44, v51, v44
	.loc	1 380 16 is_stmt 0              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v67, v5, v152
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v34, v34, v37, v59
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s1
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v59, v18, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v39, v39, v46, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v36, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v42
	v_ldexp_f32 v37, v41, v37
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v36, v44, v39
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v64.l, 0x7fff, v32.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v40, v43
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v141, v99, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v36.h
	v_cmp_o_f32_e64 s1, v36, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v90, v167, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, null, v37, v37, v33
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v51, v51, v59 :: v_dual_mul_f32 v34, v45, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v40, v40, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v41, 1, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v43
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v49, v49, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v142, v178, s2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v41, v36, v41, 0x7fff
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v45, v19, v152
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v89, v179, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v34.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v36, null, v40, v40, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v43, v32, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v60.h, 0x7fff, v41.h, s1
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v44, v44, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v48, v36
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v45, v4, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v47, v32
	v_div_scale_f32 v47, vcc_lo, v33, v37, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v50, 0xbfb8aa3b, v44 :: v_dual_mul_f32 v45, v46, v45
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.h, v38.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v66, v47, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v11, v11, v56
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v62, -v36, v48, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v50
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v43, v66, v47
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v19, v19, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v48, v62, v48
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v62, 0xbfb8aa3b, v51
	v_cndmask_b32_e64 v50, 0, 0x42800000, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v66, v68, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v34, v39, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v62
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v44
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v43, -v43, v66, v47
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v5, v5, v56
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v16, v16, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v62, 0, 0x42800000, s5
	v_exp_f32_e32 v50, v50
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v43, v32, v66
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s5
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v10, v10, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v51
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v18, v18, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v32, v32, v37, v33
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v4, v4, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v47, v62
	v_ldexp_f32 v46, v50, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v85, v151, s2
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v32, v49, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v32.h
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v47, v43
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v47, v13, v152
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v59, s4, v42, v40, v42
	s_mov_b32 vcc_lo, s4
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, null, v46, v46, v44
	v_mul_f32_e32 v69, v59, v48
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v33, v33, v51
	v_div_scale_f32 v62, s1, v51, v33, v51
	v_fma_f32 v67, -v36, v69, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v32, v43, 0x7fff
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v13, v13, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v69, v67, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v36, v69, v59
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v59, v12, v152
	v_mul_f32_e32 v12, v12, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v36, v36, v48, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v50, v50, v59
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v69, v6, v152
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v88, v204, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v36, v36, v40, v42
	v_rcp_f32_e32 v42, v41
	v_rcp_f32_e32 v40, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v60.l, 0x7fff, v39.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v68, 0xbfb8aa3b, v50
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v36, v45, v36
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v86, v168, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.h, v38.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v6, v6, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v36.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v41, v42, 1.0
	v_fma_f32 v39, -v37, v40, 1.0
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v45, v45, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0x42800000, s4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v87, v205, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v48, v42
	v_fmac_f32_e32 v40, v39, v40
	v_div_scale_f32 v39, vcc_lo, v44, v46, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v48, 0xbfb8aa3b, v45 :: v_dual_mul_f32 v67, v62, v42
	v_dual_fmac_f32 v68, 0xbfb8aa3b, v50 :: v_dual_mul_f32 v49, v39, v40
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v47, v47, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v37, v49, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v36, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v49, v66, v40
	v_fma_f32 v66, -v41, v67, v62
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v37, v49, v39
	v_fmac_f32_e32 v67, v66, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v48, v48
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v37, v37, v40, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v40, -v41, v67, v62
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v68
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v36, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v37, v37, v46, v44
	v_div_fmas_f32 v40, v40, v42, v67
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v39, v48, v39
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s4
	.loc	1 380 9 is_stmt 1               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v42, v59, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.h, v38.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v40, v33, v51
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v40, v41, v48
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_dual_mul_f32 v48, v15, v152 :: v_dual_mul_f32 v37, v42, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v47, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v84, v244, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v39, v39, v45
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.l, v33.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v48, v47, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v47, v81, v0, s2
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v42, v41
	v_div_scale_f32 v46, null, v40, v40, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_mov_b16_e32 v38.l, v37.h
	v_and_b32_e32 v36, 1, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v103.l, 0x7fff, v34.h, s1
	v_cndmask_b16 v103.h, 0x7fff, v43.h, vcc_lo
	v_and_b32_e32 v34, 1, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v41, v42, 1.0
	v_div_scale_f32 v43, vcc_lo, v45, v39, v45
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v48
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v83, v242, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v44, v42
	v_fma_f32 v44, -v46, v32, 1.0
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v68, v14, v152
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v66
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v82, v203, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v49, v43, v42 :: v_dual_fmac_f32 v32, v44, v32
	v_div_scale_f32 v44, s1, v50, v40, v50
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v66, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v59, -v41, v49, v43
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v67, v67, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v62, v44, v32
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v68, v192, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v66, 0xbfb8aa3b, v48 :: v_dual_fmac_f32 v49, v59, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v37, v34, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v59, -v46, v62, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v36, v33, v36, 0x7fff
	v_mov_b32_e32 v69, v100
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v41, v49, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v43, 0xbfb8aa3b, v67 :: v_dual_fmac_f32 v62, v59, v32
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v14, v14, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v41, v41, v42, v49
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v66
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v46, v62, v44
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v39, v41, v39, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v44, v32, v62
	.loc	1 380 16 is_stmt 1              ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v44, v193, v152
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v49, v194, v152
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v42, v42, v46
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v46, v47, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v32, v32, v40, v50
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v99.h, 0x7fff, v34.h, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v41, v46, v32
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v67
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v80, v214, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v99.l, 0x7fff, v36.h, vcc_lo
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v68, v195, v152
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v40, v43
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v43, v51, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, null, v42, v42, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v77, v246, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v37, v43, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v41.h
	v_mov_b16_e32 v39.h, v38.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v40, v32
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v40, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v39
	v_and_b32_e32 v39, 1, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v33, null, v34, v34, v67
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v41, v32, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v78, v241, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v44, v40, 1.0
	v_rcp_f32_e32 v45, v33
	v_div_scale_f32 v62, s1, v67, v34, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v25, v32, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v40, v36, v40
	v_div_scale_f32 v36, vcc_lo, v48, v42, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v59, 0xbfb8aa3b, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v36, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v45, v32, v45 :: v_dual_mul_f32 v32, v51, v24
	v_fma_f32 v51, -v44, v50, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v59, v62, v45 :: v_dual_mul_f32 v66, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v51, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v33, v59, v62
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v44, v50, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v24, v24
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v59, v51, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v66, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v36, v36, v40, v50
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v41, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v33, v59, v62
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v36, v36, v42, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v24, v24, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v42, v37, v39, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v33, v33, v45, v59
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v50, v66
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v40, 1.0, v24
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v45, v47, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v33, v34, v67
	v_mov_b32_e32 v66, v97
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, null, v40, v40, v25
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v231, v144, s2
	v_mov_b32_e32 v67, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v50, v44
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v48, v47
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v97, v232, v238, s2
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v98, v27, v56
	.loc	1 383 13 is_stmt 0              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v26, v37, v26
	.loc	1 385 34 is_stmt 1              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v44, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v95, null, v44, v44, v32
	v_fma_f32 v34, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v96, v95
	v_fmac_f32_e32 v48, v34, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v95, v96, 1.0
	v_fmac_f32_e32 v96, v34, v96
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v46, v79, v0, s2
	scratch_load_b32 v0, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v24, v46, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v46, v45, v36 :: v_dual_mul_f32 v39, v24, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.h, 0x7fff, v42.h, vcc_lo
	v_mov_b16_e32 v33.h, v38.h
	v_mov_b16_e32 v38.l, v46.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v50, vcc_lo, v25, v40, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.l, v39.h
	v_cndmask_b16 v24.l, 0x7fff, v43.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v51, v50, v48 :: v_dual_and_b32 v36, 1, v38
	v_div_scale_f32 v27, s1, v32, v44, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v49, v46, v36, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v47, v51, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v36, v27, v96
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v39, v33, 0x7fff
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v33, v97, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v51, v34, v48
	v_fma_f32 v34, -v95, v36, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v41, 0xbfb8aa3b, v33 :: v_dual_fmac_f32 v36, v34, v96
	v_mul_f32_e32 v34, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v47, v51, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v95, v36, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v37, 0, 0x42800000, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v41, v41, v48, v51
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v27, v96, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v25, v41, v40, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v27, v27, v44, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v37, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v119, v247, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v32, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v93, v182, v0, s2
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v20, v93, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v70, v101 :: v_dual_mul_f32 v27, v20, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.h, 0x7fff, v49.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_cndmask_b16 v20.l, 0x7fff, v43.h, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v92, v183, v0, s2
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v21, v92, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v21, v21, v25
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v25, v37, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, v27.h
	v_mov_b16_e32 v36.h, v38.h
	v_mov_b16_e32 v38.l, v21.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v25
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, null, v34, v34, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v25, v32, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v36
	v_and_b32_e32 v36, 1, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v40, 1.0, v25
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v120, v250, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v27, v32, 0x7fff
	v_add3_u32 v36, v21, v36, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v40, v40, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v25, v25, v29
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v29, v22, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v43, -v37, v39, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v44, v41
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v22, 0xbfb8aa3b, v25 :: v_dual_fmac_f32 v39, v43, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, vcc_lo, v33, v34, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v22, v46, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, s3, v26, v40, v26
	v_fma_f32 v47, -v41, v44, 1.0
	v_mul_f32_e32 v48, v43, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v46, 0xbfb8aa3b, v22
	v_cndmask_b32_e64 v49, 0, 0x42800000, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v44, v47, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v37, v48, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v49, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v50, v28, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v48, v47, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0x42800000, s4
	v_exp_f32_e32 v49, v49
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v27, v27
	v_mov_b16_e32 v27.h, v38.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v42, v163, v0, s2
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v42, v42, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v37, v48, v43
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v46
	v_ldexp_f32 v37, v49, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v29, v29, v39, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v33, v29, v34, v33
	.loc	1 383 25 is_stmt 1              ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v34, v31, v56
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v45, v164, v0, s2
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v23, v45, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v41, v50, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v23, v23, v33 :: v_dual_fmac_f32 v50, v45, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v23.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v41, v50, v28
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s4
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v28, 1.0, v37 :: v_dual_and_b32 v87, 1, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v37, v39, v44, v50
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v43, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v92, null, v28, v28, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v26, v37, v40, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v91, v92
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v32.h, s1
	v_cndmask_b16 v21.h, 0x7fff, v36.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v26, v42, v26
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v90, null, v29, v29, v22
	v_div_scale_f32 v93, vcc_lo, v25, v28, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.l, v26.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v89, v90
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v92, v91, 1.0
	v_div_scale_f32 v31, s1, v22, v29, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v88, 1, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v115, v219, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v91, v33, v91
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v116, v243, s2
	v_cndmask_b32_e64 v42, v111, v245, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v90, v89, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v32, v93, v91
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v30, v39, v30
	v_dual_mul_f32 v16, v42, v16 :: v_dual_fmac_f32 v89, v27, v89
	v_mul_f32_e32 v27, v33, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v92, v32, v93
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v37, 0xbfb8aa3b, v30 :: v_dual_mul_f32 v34, v31, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v36, 0xbfb8aa3b, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v33, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v90, v34, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v92, v32, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v33, v89
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v39, v91, v32
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v26, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v90, v34, v31
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v25, v32, v28, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v27
	v_cndmask_b32_e64 v33, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v31, v89, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v36, v36
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v30
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v22, v31, v29, v22
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v26, v88, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v33, v33
	v_ldexp_f32 v34, v36, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v34
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v85, v170, v0, s2
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v8, v85, v8
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v22, v8, v22
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v8, v33, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v23, v87, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v22, v22
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.l, v22.h
	v_mov_b16_e32 v8.h, v38.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v32, v32, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v26, 1, v8
	v_cndmask_b16 v8.h, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v8.l, 0x7fff, v29.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v36, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v26, v22, v26, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v112, v140, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v17, v22, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v41, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v41
	v_cndmask_b32_e64 v41, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v86, v171, v0, s2
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v9, v86, v9
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v9, v25
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v31, v31, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v9.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v33, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v9, v9
	v_and_b32_e32 v23, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add3_u32 v23, v9, v23, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v25, v33, 1.0
	v_div_scale_f32 v9, vcc_lo, v27, v31, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v28, v33
	v_fma_f32 v28, -v34, v36, 1.0
	v_dual_mul_f32 v29, v9, v33 :: v_dual_fmac_f32 v36, v28, v36
	v_div_scale_f32 v28, s4, v30, v32, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v25, v29, v9
	v_dual_mul_f32 v40, v28, v36 :: v_dual_fmac_f32 v29, v39, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v34, v40, v28
	v_fma_f32 v9, -v25, v29, v9
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v25, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v40, v39, v36
	v_div_fmas_f32 v9, v9, v33, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v29, v41
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s5
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v34, v40, v28
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v9, v9, v31, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v28, v28, v36, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v29, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v16
	v_exp_f32_e32 v25, v25
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v22, v113, v0, s2
	scratch_load_b32 v0, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v10, v22, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v22, v28, v32, v30
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.h, v38.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v22
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
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
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v27, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v25, v30, v25
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v70, v199, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v36, v34, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v19, v30, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v37, v114, v0, s2
	scratch_load_b32 v0, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v11, v37, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v69, v248, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v11, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.h, 0x7fff, v23.h, s1
	v_and_b32_e32 v23, 1, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, null, v22, v22, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.l, 0x7fff, v26.h, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v39
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v18, v37, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v27, v36, v34
	v_rcp_f32_e32 v32, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v11.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v41, 0xbfb8aa3b, v18 :: v_dual_fmac_f32 v36, v39, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v23, v10, v23, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v37, 0xbfb8aa3b, v19 :: v_dual_and_b32 v26, 1, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v41
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v27, v36, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v29, v32, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v26, v11, v26, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v37, v37
	v_cndmask_b32_e64 v39, 0, 0x42800000, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v25, v27, v25, v36
	v_fmac_f32_e32 v32, v30, v32
	v_div_scale_f32 v30, s1, v16, v22, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v25, v28, v17
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v10, v10
	v_mov_b16_e32 v10.h, v38.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v40, v30, v32
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v26.l, 0x7fff, v23.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v31, v109, v0, s2
	scratch_load_b32 v0, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v4, v31, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v33, v110, v0, s2
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v5, v33, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v29, v40, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v5, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v40, v33, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v5.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v29, v40, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v37, v33
	v_exp_f32_e32 v29, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v27, v32, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v27, v22, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_div_scale_f32 v25, null, v30, v30, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v22, v29, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v26.h, 0x7fff, v26.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v67, v255, s2
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v16
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v16, v25
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_dual_mul_f32 v13, v29, v13 :: v_dual_and_b32 v22, 1, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v4.h
	v_cmp_o_f32_e64 s3, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, null, v11, v11, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v22, v5, v22, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v5, s1, v19, v30, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v25, v16, 1.0
	v_rcp_f32_e32 v27, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v10, 1, v10
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v16, v28, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v4, v10, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v4, v5, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v17, v27, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.l, 0x7fff, v10.h, s3
	.loc	1 383 25                        ; generate_amdgcn.py:383:25
	v_mul_f32_e32 v10, v15, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v25, v4, v5
	v_fmac_f32_e32 v27, v23, v27
	v_div_scale_f32 v23, s4, v18, v11, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v4, v31, v16 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v13
	v_mul_f32_e32 v32, v23, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v5, -v25, v4, v5
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v17, v32, v23
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v66, v102, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v4, v5, v16, v4
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v32, v29, v27
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, s5
	.loc	1 383 13 is_stmt 1              ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v12, v25, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v4, v4, v30, v19
	v_fma_f32 v5, -v17, v32, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v29, 0xbfb8aa3b, v13 :: v_dual_mul_f32 v16, 0xbfb8aa3b, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v5, v5, v27, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v29
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v5, v11, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.h, v38.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v15, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v28, v105, v0, s2
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v6, v28, v6
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v6, v5
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v6, v17, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v5.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v6, 1.0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v18, v5, v18, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v33, v106, v0, s2
	scratch_load_b32 v0, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v7, v33, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v7, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v240, v200, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v4.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v7, v7, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v7
	v_ldexp_f32 v10, v15, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v4, v28, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v19, null, v10, v10, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v25, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v19, v25, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_fmac_f32 v25, v27, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v16, v16, v7
	v_rcp_f32_e32 v32, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v27, v32, 1.0
	v_fmac_f32_e32 v32, v40, v32
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v11, v239, v0, s2
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[0:1], off, off offset:160
	scratch_load_b32 v2, off, off offset:24
	.loc	1 383 13                        ; generate_amdgcn.py:383:13
	v_mul_f32_e32 v11, v11, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v14, null, v6, v6, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v15, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v23, -v14, v15, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, s1, v12, v10, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v15, v23, v15
	v_div_scale_f32 v23, vcc_lo, v13, v6, v13
	v_mul_f32_e32 v37, v31, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v29, v23, v15
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v14, v29, v23
	v_div_scale_f32 v30, null, v17, v17, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v34, v15
	v_fma_f32 v34, -v19, v37, v31
	v_rcp_f32_e32 v36, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v14, -v14, v29, v23
	v_fmac_f32_e32 v37, v34, v25
	v_div_scale_f32 v34, s3, v7, v16, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v14, v14, v15, v29
	v_fma_f32 v15, -v19, v37, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v19, v34, v32
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v31, v20, v99, s0
	v_cndmask_b32_e64 v20, v99, v20, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v14, v6, v13
	v_fma_f32 v23, -v30, v36, 1.0
	v_div_fmas_f32 v15, v15, v25, v37
	v_fma_f32 v25, -v27, v19, v34
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v23, v36
	v_div_scale_f32 v23, s4, v11, v17, v11
	v_fmac_f32_e32 v19, v25, v32
	v_div_fixup_f32 v10, v15, v10, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v15, v139, v63, s0
	v_cndmask_b32_e64 v25, v64, v65, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v29, v23, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v30, v29, v23
	v_fmac_f32_e32 v29, v13, v36
	v_fma_f32 v13, -v27, v19, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v27, v65, v64, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v14, -v30, v29, v23
	v_div_fmas_f32 v13, v13, v32, v19
	s_mov_b32 vcc_lo, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v32, v9, v21, s0
	v_cndmask_b32_e64 v9, v21, v9, s0
	v_mov_b32_e32 v21, 0x5410
	v_cndmask_b32_e64 v23, v136, v123, s0
	v_cndmask_b32_e64 v30, v24, v103, s0
	v_cndmask_b32_e64 v24, v103, v24, s0
	v_cndmask_b32_e64 v19, v123, v136, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v14, v14, v36, v29
	v_div_fixup_f32 v7, v13, v16, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_cndmask_b32_e64 v16, v63, v139, s0
	v_cndmask_b32_e64 v29, v61, v60, s0
	v_cndmask_b32_e64 v13, v143, v58, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v33, v0, v2, s2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:16
	scratch_load_b32 v2, off, off offset:8
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v39, v1, v0, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v1, v193, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v0, v192, v56 :: v_dual_mul_f32 v1, v39, v1
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v0, v33, v0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v33, v26, v8, s0
	v_cndmask_b32_e64 v8, v8, v26, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v6, v209, v2, s2
	scratch_load_b32 v2, off, off           ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.h, v38.h
	v_mov_b16_e32 v38.l, v1.h
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v10.l, v0.h
	v_and_b32_e32 v4, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add3_u32 v4, v1, v4, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v12, v210, v2, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v2, v194, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v0, v0
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v3, v12, v3 :: v_dual_mul_f32 v2, v6, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v14, v17, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v12, v54, v57, s0
	v_cndmask_b32_e64 v14, v58, v143, s0
	v_cndmask_b32_e64 v11, v57, v54, s0
	v_cndmask_b32_e64 v17, v127, v135, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v2, v2, v6 :: v_dual_mul_f32 v3, v3, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v6, 1, v10
	v_mov_b16_e32 v7.h, v38.h
	v_cndmask_b16 v10.h, 0x7fff, v28.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cndmask_b32_e64 v28, v60, v61, s0
	v_mov_b16_e32 v7.l, v2.h
	v_mov_b16_e32 v38.l, v3.h
	v_add3_u32 v5, v0, v6, 0x7fff
	v_cmp_o_f32_e64 s3, v3, v3
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
	v_cndmask_b32_e64 v5, v249, v52, s0
	v_cndmask_b32_e64 v7, v53, v55, s0
	v_cndmask_b32_e64 v3, v252, v251, s0
	v_cndmask_b32_e64 v4, v52, v249, s0
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
	v_cndmask_b32_e64 v0, v251, v252, s0
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
	v_add_lshl_u32 v32, v35, v108, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v14, v22, v19, v37
	v_perm_b32 v15, v22, v19, v38
	v_perm_b32 v18, v26, v28, v37
	v_perm_b32 v19, v26, v28, v38
	v_perm_b32 v22, v27, v31, v37
	v_perm_b32 v23, v27, v31, v38
	v_perm_b32 v26, v39, v33, v37
	v_perm_b32 v27, v39, v33, v38
	v_add_lshl_u32 v33, v35, v104, 1
	v_perm_b32 v28, v40, v34, v37
	v_perm_b32 v29, v40, v34, v38
	v_perm_b32 v30, v41, v36, v37
	v_perm_b32 v31, v41, v36, v38
	s_clause 0x2
	buffer_store_b128 v[0:3], v32, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v32, s[12:15], 0 offen offset:256
	buffer_store_b128 v[8:11], v33, s[12:15], 0 offen
	v_add_lshl_u32 v0, v172, v104, 1
	v_add_lshl_u32 v1, v35, v107, 1
	v_add_lshl_u32 v2, v172, v107, 1
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 580
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
		.amdhsa_next_free_sgpr 43
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 580
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 41340
; TotalNumSgprs: 45
; NumVgprs: 256
; ScratchSize: 580
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 45
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 580
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 278
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
