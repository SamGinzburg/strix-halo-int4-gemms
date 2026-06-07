	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 4, v0
	v_lshrrev_b32_e32 v2, 3, v0
	v_and_b32_e32 v39, 15, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v207, 4, v0
	v_lshlrev_b32_e32 v205, 5, v0
	s_mov_b32 s48, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v38, 0, v207
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s26, 31
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
	s_lshr_b32 s9, s9, 27
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
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s12, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v2, s13, v2
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
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
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v1, 2, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v4, 28, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s31, s7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 0x37c, v1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
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
	s_mov_b64 s[20:21], s[10:11]
	s_cselect_b32 s14, s19, s12
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s34, s27, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s14, s14, s18
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s22, s3, 5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s14, s18
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v3, s34, v3
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s16, s3, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s14, s13, 0xff
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
	s_lshl_b32 s26, s2, 5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v202, v39, 4, v3
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s2, s16, 24
.Ltmp19:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s13, s26, s13
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s3, 8
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v203, v2, v4, s13
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s13, s14, s2
.Ltmp21:
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s15, s34, s22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s12, 31
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v204, s27, 5, v202
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s14, s33, s15
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s12, 63
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v3, s14, v202
	v_add_nc_u32_e32 v4, s14, v204
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s15, s27, 6
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v2, s22, v203
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s14, s14, s15
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s22, 32
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v6, 0x80000000, v3, s2
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v3, s27, v3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v13, s14, v202
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v12, s27, v4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v5, s35, v203
	.loc	1 352 30 is_stmt 1              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v14, s14, v204
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 358 39 is_stmt 0              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v21, s27, v13
	v_add3_u32 v20, s14, s27, v204
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v16, 0x80000000, v12, s2
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	buffer_load_b32 v36, v2, s[4:7], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v5, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v4, s2
	v_cndmask_b32_e64 v22, 0x80000000, v13, s3
	v_cndmask_b32_e64 v24, 0x80000000, v14, s3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[12:15], v3, s[28:31], 0 offen
	buffer_load_b128 v[16:19], v16, s[28:31], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v21, s3
	v_cndmask_b32_e64 v32, 0x80000000, v20, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[4:7], v6, s[28:31], 0 offen
	buffer_load_b128 v[8:11], v8, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v37, v2, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[20:23], v22, s[28:31], 0 offen
	buffer_load_b128 v[24:27], v24, s[28:31], 0 offen
	buffer_load_b128 v[28:31], v3, s[28:31], 0 offen
	buffer_load_b128 v[32:35], v32, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_bfe_i32 v2, v0, 5, 1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v3, 16, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s12, 0x5f
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v2, 0x90, v2
	v_xor_b32_e32 v206, v2, v1
	v_lshrrev_b32_e32 v2, 1, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v206
	s_waitcnt vmcnt(9)
	ds_store_b32 v1, v36 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(6)
	ds_store_b128 v38, v[4:7]
	s_waitcnt vmcnt(5)
	ds_store_b128 v38, v[8:11] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v38, v[12:15] offset:16384
	ds_store_b128 v38, v[16:19] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v1, v37 offset:33792
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v38, v[20:23] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v38, v[24:27] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v38, v[28:31] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v38, v[32:35] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_or_b32 v134, 0x70, v2, v39
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v17, 5, v0
	v_and_b32_e32 v1, 4, v0
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v4, 0x700, v134
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v201, 0x160, v17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v235, 0x100, v134
	v_or_b32_e32 v239, 0x200, v134
	v_or_b32_e32 v231, 0x300, v134
	scratch_store_b32 off, v4, off          ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x800, v134
	v_or_b32_e32 v232, 0x400, v134
	v_or_b32_e32 v237, 0x500, v134
	v_or_b32_e32 v241, 0x600, v134
	v_or_b32_e32 v236, 0x1000, v134
	scratch_store_b32 off, v4, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x900, v134
	v_or_b32_e32 v240, 0x1100, v134
	v_or_b32_e32 v233, 0x1200, v134
	v_or_b32_e32 v234, 0x1300, v134
	v_or_b32_e32 v238, 0x1400, v134
	scratch_store_b32 off, v4, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xa00, v134
	v_or_b32_e32 v243, 0x1500, v134
	v_or_b32_e32 v242, 0x180, v134
	v_or_b32_e32 v244, 0x280, v134
	v_or_b32_e32 v245, 0x380, v134
	scratch_store_b32 off, v4, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xb00, v134
	v_or_b32_e32 v246, 0x480, v134
	v_or_b32_e32 v247, 0x780, v134
	v_or_b32_e32 v248, 0x880, v134
	v_or_b32_e32 v249, 0x980, v134
	scratch_store_b32 off, v4, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xc00, v134
	v_or_b32_e32 v250, 0xa80, v134
	v_or_b32_e32 v251, 0xb80, v134
	v_or_b32_e32 v130, 0x1b80, v134
	v_or_b32_e32 v129, 0x1c80, v134
	scratch_store_b32 off, v4, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xd00, v134
	v_or_b32_e32 v192, 0x1d80, v134
	scratch_store_b32 off, v4, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xe00, v134
	scratch_store_b32 off, v4, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xf00, v134
	scratch_store_b32 off, v4, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1600, v134
	scratch_store_b32 off, v4, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1700, v134
	scratch_store_b32 off, v4, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1800, v134
	scratch_store_b32 off, v4, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1900, v134
	scratch_store_b32 off, v4, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1a00, v134
	scratch_store_b32 off, v4, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1b00, v134
	scratch_store_b32 off, v4, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1c00, v134
	scratch_store_b32 off, v4, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1d00, v134
	scratch_store_b32 off, v4, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1e00, v134
	scratch_store_b32 off, v4, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1f00, v134
	scratch_store_b32 off, v4, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x80, v134
	scratch_store_b32 off, v4, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x580, v134
	scratch_store_b32 off, v4, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x680, v134
	scratch_store_b32 off, v4, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xc80, v134
	scratch_store_b32 off, v4, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xd80, v134
	scratch_store_b32 off, v4, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xe80, v134
	scratch_store_b32 off, v4, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xf80, v134
	scratch_store_b32 off, v4, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1080, v134
	scratch_store_b32 off, v4, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1180, v134
	scratch_store_b32 off, v4, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1280, v134
	scratch_store_b32 off, v4, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1380, v134
	scratch_store_b32 off, v4, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1480, v134
	scratch_store_b32 off, v4, off offset:120 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1580, v134
	scratch_store_b32 off, v4, off offset:124 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1680, v134
	scratch_store_b32 off, v4, off offset:128 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1780, v134
	scratch_store_b32 off, v4, off offset:132 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1880, v134
	scratch_store_b32 off, v4, off offset:136 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1980, v134
	scratch_store_b32 off, v4, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1a80, v134
	scratch_store_b32 off, v4, off offset:144 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1e80, v134
	scratch_store_b32 off, v4, off offset:148 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1f80, v134
	scratch_store_b32 off, v4, off offset:152 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr17
                                        ; implicit-def: $vgpr201
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr134
                                        ; implicit-def: $vgpr235
                                        ; implicit-def: $vgpr239
                                        ; implicit-def: $vgpr231
                                        ; implicit-def: $vgpr232
                                        ; implicit-def: $vgpr237
                                        ; implicit-def: $vgpr241
                                        ; implicit-def: $vgpr236
                                        ; implicit-def: $vgpr240
                                        ; implicit-def: $vgpr233
                                        ; implicit-def: $vgpr234
                                        ; implicit-def: $vgpr238
                                        ; implicit-def: $vgpr243
                                        ; implicit-def: $vgpr242
                                        ; implicit-def: $vgpr244
                                        ; implicit-def: $vgpr245
                                        ; implicit-def: $vgpr246
                                        ; implicit-def: $vgpr247
                                        ; implicit-def: $vgpr248
                                        ; implicit-def: $vgpr249
                                        ; implicit-def: $vgpr250
                                        ; implicit-def: $vgpr251
                                        ; implicit-def: $vgpr130
                                        ; implicit-def: $vgpr129
                                        ; implicit-def: $vgpr192
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
.LBB0_3:                                ; %Flow613
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v4, s26, v39
	v_or_b32_e32 v3, s26, v3
	v_and_b32_e32 v5, 0xf0, v0
	s_ashr_i32 s1, s13, 8
	v_or_b32_e32 v132, s33, v0
	v_mul_lo_u32 v133, v4, s1
	v_mul_lo_u32 v131, v3, s1
	v_lshlrev_b32_e32 v199, 2, v5
	v_lshlrev_b32_e32 v200, 1, v0
	v_lshlrev_b32_e32 v198, 1, v5
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v118, 0 :: v_dual_and_b32 v201, 0x160, v205
	v_bfe_i32 v1, v0, 2, 1
	v_and_or_b32 v134, 0x70, v2, v39
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v2, 28, v200
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v210, 0, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_or_b32 v208, 0x90, v1, v201
	v_or_b32_e32 v1, 0x700, v134
	v_or_b32_e32 v235, 0x100, v134
	v_or_b32_e32 v239, 0x200, v134
	v_or_b32_e32 v231, 0x300, v134
	v_or_b32_e32 v232, 0x400, v134
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x800, v134
	v_or_b32_e32 v237, 0x500, v134
	v_or_b32_e32 v241, 0x600, v134
	v_or_b32_e32 v236, 0x1000, v134
	v_or_b32_e32 v240, 0x1100, v134
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x900, v134
	v_or_b32_e32 v233, 0x1200, v134
	v_or_b32_e32 v234, 0x1300, v134
	v_or_b32_e32 v238, 0x1400, v134
	v_or_b32_e32 v243, 0x1500, v134
	scratch_store_b32 off, v1, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xa00, v134
	v_or_b32_e32 v242, 0x180, v134
	v_or_b32_e32 v244, 0x280, v134
	v_or_b32_e32 v245, 0x380, v134
	v_or_b32_e32 v246, 0x480, v134
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xb00, v134
	v_or_b32_e32 v247, 0x780, v134
	v_or_b32_e32 v248, 0x880, v134
	v_or_b32_e32 v249, 0x980, v134
	v_or_b32_e32 v250, 0xa80, v134
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xc00, v134
	v_or_b32_e32 v251, 0xb80, v134
	v_or_b32_e32 v130, 0x1b80, v134
	v_or_b32_e32 v129, 0x1c80, v134
	v_or_b32_e32 v192, 0x1d80, v134
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xd00, v134
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v114, 0
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xe00, v134
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v106, 0
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xf00, v134
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v102, 0
	scratch_store_b32 off, v1, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1600, v134
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v94, 0
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1700, v134
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v98, 0
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1800, v134
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v90, 0
	scratch_store_b32 off, v1, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1900, v134
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v128, 0
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1a00, v134
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v120, 0
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1b00, v134
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v124, 0
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1c00, v134
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v84, 0
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1d00, v134
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	scratch_store_b32 off, v1, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1e00, v134
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v72, 0
	scratch_store_b32 off, v1, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1f00, v134
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v76, 0
	scratch_store_b32 off, v1, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x80, v134
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v70, 0
	scratch_store_b32 off, v1, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x580, v134
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v66, 0
	v_mov_b32_e32 v65, 0
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s11, s12, 5
	scratch_store_b32 off, v1, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x680, v134
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s12, 0
	s_add_i32 s0, s35, 32
	scratch_store_b32 off, v1, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xc80, v134
	s_mov_b32 s10, 1
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s21, 0xffff
	scratch_store_b32 off, v1, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xd80, v134
	s_mov_b32 s40, s20
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s46, 0, 0x8400
	s_add_i32 s45, 0, 0x2000
	scratch_store_b32 off, v1, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xe80, v134
	s_add_i32 s47, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
	s_add_i32 s11, s11, -3
	s_mov_b32 s30, s6
	scratch_store_b32 off, v1, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xf80, v134
	s_mov_b32 s31, s7
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	scratch_store_b32 off, v1, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1080, v134
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	scratch_store_b32 off, v1, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1180, v134
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s48, s12
	s_mov_b32 s23, s12
	scratch_store_b32 off, v1, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1280, v134
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v110, 0
	scratch_store_b32 off, v1, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1380, v134
	scratch_store_b32 off, v1, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1480, v134
	scratch_store_b32 off, v1, off offset:120 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1580, v134
	scratch_store_b32 off, v1, off offset:124 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1680, v134
	scratch_store_b32 off, v1, off offset:128 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1780, v134
	scratch_store_b32 off, v1, off offset:132 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1880, v134
	scratch_store_b32 off, v1, off offset:136 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1980, v134
	scratch_store_b32 off, v1, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1a80, v134
	scratch_store_b32 off, v1, off offset:144 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1e80, v134
	scratch_store_b32 off, v1, off offset:148 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1f80, v134
	scratch_store_b32 off, v1, off offset:152 ; 4-byte Folded Spill
	v_and_b32_e32 v1, 32, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v1, 0, v199, v1
	v_add_nc_u32_e32 v209, v1, v2
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s51, s23, 5
	s_mov_b32 s50, s48
	s_mov_b32 s48, s47
	s_mov_b32 s47, s22
	s_mov_b32 s22, s35
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s0, s51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v137, s50, v134
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s35, v203
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v145, s19 :: v_dual_add_nc_u32 v136, s48, v134
	v_mov_b32_e32 v142, s16
	v_mov_b32_e32 v140, s14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v135, v1, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v137 offset:3328
	ds_load_u8 v2, v137 offset:3072
	ds_load_u8 v3, v137 offset:3840
	ds_load_u8 v4, v137 offset:3584
	ds_load_u8 v6, v137 offset:2304
	ds_load_u8 v7, v137 offset:2048
	ds_load_u8 v8, v137 offset:2816
	ds_load_u8 v9, v137 offset:2560
	ds_load_u8 v10, v137 offset:1280
	ds_load_u8 v11, v137 offset:1024
	ds_load_u8 v12, v137 offset:1792
	ds_load_u8 v13, v137 offset:1536
	ds_load_u8 v14, v137 offset:256
	ds_load_u8 v15, v137
	ds_load_u8 v16, v137 offset:768
	ds_load_u8 v17, v137 offset:512
	ds_load_u8 v18, v137 offset:3456
	ds_load_u8 v19, v137 offset:3200
	ds_load_u8 v20, v137 offset:3968
	ds_load_u8 v21, v137 offset:3712
	ds_load_u8 v22, v137 offset:2432
	ds_load_u8 v23, v137 offset:2176
	ds_load_u8 v24, v137 offset:2944
	ds_load_u8 v25, v137 offset:2688
	ds_load_u8 v26, v137 offset:1408
	ds_load_u8 v27, v137 offset:1152
	ds_load_u8 v28, v137 offset:1920
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	ds_load_u8 v29, v137 offset:1664
	ds_load_u8 v30, v137 offset:384
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v3, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v6, v9, v8, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v1
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v1, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v2, v13, v12, 0xc0c0004
	ds_load_u8 v8, v137 offset:640
	v_lshl_or_b32 v3, v6, 16, v3
	ds_load_u8 v6, v137 offset:128
	ds_load_u8 v7, v137 offset:896
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v136 offset:3328
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v2, v2, 16, v1
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v1, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v10, v17, v16, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v15, v136 offset:2304
	ds_load_u8 v16, v136 offset:2048
	ds_load_u8 v32, v136 offset:896
	ds_load_u8 v13, v136 offset:3072
	ds_load_u8 v31, v136 offset:3840
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v11, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v18, v23, v22, 0xc0c0004
	v_lshl_or_b32 v1, v10, 16, v1
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v10, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v23, v29, v28, 0xc0c0004
	v_perm_b32 v12, v21, v20, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v136 offset:2816
	ds_load_u8 v27, v136 offset:3968
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v20, v25, v24, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v136 offset:1536
	ds_load_u8 v24, v136 offset:256
	ds_load_u8 v26, v136 offset:512
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v10, v23, 16, v10
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v136
	ds_load_u8 v25, v136 offset:768
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v8, v136 offset:3456
	ds_load_u8 v14, v136 offset:3584
	ds_load_u8 v21, v136 offset:1280
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v136 offset:3712
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v13, v13, v9, 0xc0c0004
	ds_load_u8 v9, v136 offset:3200
	ds_load_u8 v19, v136 offset:2560
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v12, v12, 16, v11
	v_lshl_or_b32 v11, v20, 16, v18
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v18, v136 offset:1024
	ds_load_u8 v20, v136 offset:1792
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v6, v6, v30, 0xc0c0004
	v_dual_mov_b32 v144, s18 :: v_dual_add_nc_u32 v5, s49, v208
	v_dual_mov_b32 v143, s17 :: v_dual_mov_b32 v138, s12
	v_mov_b32_e32 v141, s15
	v_mov_b32_e32 v139, s13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v29, v26, v25, 0xc0c0004
	ds_load_u8 v25, v136 offset:1408
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s48, s47, 31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[150:153], v5 offset:512
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s48, s48, 24
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v30, v16, v27, 0xc0c0004
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s47, s47, s48
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v9, v136 offset:1152
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v136 offset:2432
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v22, v20, 0xc0c0004
	ds_load_u8 v22, v136 offset:2944
	ds_load_u8 v16, v136 offset:1920
	ds_load_u8 v33, v136 offset:640
	v_perm_b32 v14, v14, v31, 0xc0c0004
	v_perm_b32 v18, v18, v21, 0xc0c0004
	ds_load_u8 v21, v136 offset:2176
	v_lshl_or_b32 v15, v17, 16, v15
	v_lshl_or_b32 v149, v30, 16, v8
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s47, s47, 8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s50, s47, s34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v31, v9, v25, 0xc0c0004
	ds_load_u8 v9, v136 offset:128
	v_perm_b32 v23, v23, v24, 0xc0c0004
	ds_load_u8 v24, v136 offset:2688
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[25:28], v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v19, v21, v19, 0xc0c0004
	ds_load_u8 v21, v136 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v22, v24, v22, 0xc0c0004
	ds_load_u8 v24, v136 offset:384
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[1:4], v[25:28], v[138:145] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v148, v22, 16, v19
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v21, v21, v16, 0xc0c0004
	v_lshl_or_b32 v16, v14, 16, v13
	v_lshl_or_b32 v14, v20, 16, v18
	v_lshl_or_b32 v13, v29, 16, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v147, v21, 16, v31
	v_wmma_i32_16x16x16_iu8 v[49:56], v[13:16], v[25:28], v[138:145] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v9, v24, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v9, v7, 16, v6
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v6, v33, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[41:48], v[9:12], v[25:28], v[138:145] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v146, v6, 16, v24
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[1:4], v[150:153], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[9:12], v[150:153], v[138:145] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[33:40], v[146:149], v[25:28], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[13:16], v[150:153], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[146:149], v[150:153], v[138:145] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v138, v137 offset:7424
	ds_load_u8 v139, v137 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v137 offset:7936
	ds_load_u8 v140, v137 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v137 offset:6400
	ds_load_u8 v141, v137 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	ds_load_u8 v141, v137 offset:6912
	ds_load_u8 v142, v137 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v142, v141, 0xc0c0004
	v_lshl_or_b32 v141, v139, 16, v138
	ds_load_u8 v138, v137 offset:5376
	ds_load_u8 v139, v137 offset:5120
	v_lshl_or_b32 v140, v142, 16, v140
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v137 offset:5888
	ds_load_u8 v142, v137 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v142, v139, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v139, 16, v138
	ds_load_u8 v138, v137 offset:4352
	ds_load_u8 v142, v137 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v142, v138, 0xc0c0004
	ds_load_u8 v142, v137 offset:4864
	ds_load_u8 v143, v137 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v142, 16, v138
	v_xor_b32_e32 v142, 16, v208
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v146, s49, v142
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s49, s35, s34
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s48, s49, s33
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[142:145], v146
	ds_load_b128 v[146:149], v146 offset:512
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s49, s48, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s47, s1
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s10, s10, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s10, 2
	s_cselect_b32 s10, s10, 0
	s_add_i32 s51, s23, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[138:141], v[142:145], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[138:141], v[146:149], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v138, v137 offset:7552
	ds_load_u8 v139, v137 offset:7296
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v137 offset:8064
	ds_load_u8 v140, v137 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v137 offset:6528
	ds_load_u8 v141, v137 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v141, v140, 0xc0c0004
	ds_load_u8 v140, v137 offset:7040
	ds_load_u8 v150, v137 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v150, v140, 0xc0c0004
	v_lshl_or_b32 v140, v139, 16, v138
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v139, v150, 16, v141
	ds_load_u8 v138, v137 offset:5504
	ds_load_u8 v141, v137 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v141, v138, 0xc0c0004
	ds_load_u8 v141, v137 offset:6016
	ds_load_u8 v150, v137 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v150, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v141, 16, v138
	ds_load_u8 v141, v137 offset:4480
	ds_load_u8 v150, v137 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v150, v141, 0xc0c0004
	ds_load_u8 v150, v137 offset:4992
	ds_load_u8 v137, v137 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v137, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v137, v137, 16, v141
	v_wmma_i32_16x16x16_iu8 v[41:48], v[137:140], v[142:145], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[137:140], v[146:149], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v137, v136 offset:7424
	ds_load_u8 v138, v136 offset:7168
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v154, v8
	v_cvt_f32_i32_e32 v155, v7
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v136 offset:7936
	ds_load_u8 v139, v136 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v136 offset:6400
	ds_load_u8 v140, v136 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v136 offset:6912
	ds_load_u8 v141, v136 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v141, v140, 0xc0c0004
	v_lshl_or_b32 v140, v138, 16, v137
	ds_load_u8 v137, v136 offset:5376
	ds_load_u8 v138, v136 offset:5120
	v_lshl_or_b32 v139, v141, 16, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v136 offset:5888
	ds_load_u8 v141, v136 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v141, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v138, 16, v137
	ds_load_u8 v137, v136 offset:4352
	ds_load_u8 v141, v136 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v141, v137, 0xc0c0004
	ds_load_u8 v141, v136 offset:4864
	ds_load_u8 v150, v136 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v150, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v141, 16, v137
	ds_load_u8 v141, v136 offset:7552
	ds_load_u8 v150, v136 offset:7296
	v_wmma_i32_16x16x16_iu8 v[49:56], v[137:140], v[142:145], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[137:140], v[146:149], v[25:32] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v137, v57
	v_cvt_f32_i32_e32 v138, v44
	v_cvt_f32_i32_e32 v139, v43
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v57, v49
	v_cvt_f32_i32_e32 v49, v52
	v_cvt_f32_i32_e32 v52, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v56, v41
	v_cvt_f32_i32_e32 v140, v46
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v29, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v150, v141, 0xc0c0004
	ds_load_u8 v150, v136 offset:8064
	ds_load_u8 v151, v136 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v136 offset:6528
	ds_load_u8 v152, v136 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v136 offset:7040
	ds_load_u8 v153, v136 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	v_lshl_or_b32 v153, v150, 16, v141
	ds_load_u8 v141, v136 offset:5504
	ds_load_u8 v150, v136 offset:5248
	v_lshl_or_b32 v152, v152, 16, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v150, v141, 0xc0c0004
	ds_load_u8 v150, v136 offset:6016
	ds_load_u8 v151, v136 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v150, 16, v141
	ds_load_u8 v141, v136 offset:4480
	ds_load_u8 v150, v136 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v150, v141, 0xc0c0004
	ds_load_u8 v150, v136 offset:4992
	ds_load_u8 v136, v136 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v136, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v136, 16, v141
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v136, v58
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v58, v51
	v_cvt_f32_i32_e32 v51, v54
	v_cvt_f32_i32_e32 v54, v55
	v_wmma_i32_16x16x16_iu8 v[33:40], v[150:153], v[142:145], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[150:153], v[146:149], v[9:16] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v149, v1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v1, v132, s50, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v55, v42
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v42, v35
	v_cvt_f32_i32_e32 v35, v38
	v_cvt_f32_i32_e32 v38, v39
	v_cvt_f32_i32_e32 v39, v25
	v_cvt_f32_i32_e32 v25, v28
	v_cvt_f32_i32_e32 v28, v27
	v_cvt_f32_i32_e32 v27, v32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v32, v2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v2, v131, s47, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v153, v5
	v_cvt_f32_i32_e32 v147, v24
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v24, v26
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v1, v1, s[40:43], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v26, v30
	v_cvt_f32_i32_e32 v30, v31
	v_cvt_f32_i32_e32 v31, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v145, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v22, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v141, v45
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v41, v33
	v_cvt_f32_i32_e32 v33, v36
	v_cvt_f32_i32_e32 v36, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v40, v18
	v_cvt_f32_i32_e32 v142, v17
	v_cvt_f32_i32_e32 v143, v20
	v_cvt_f32_i32_e32 v144, v19
	v_cvt_f32_i32_e32 v146, v21
	v_cvt_f32_i32_e32 v148, v23
	v_cvt_f32_i32_e32 v150, v4
	v_cvt_f32_i32_e32 v151, v3
	v_cvt_f32_i32_e32 v152, v6
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v17, v10
	v_cvt_f32_i32_e32 v18, v12
	v_cvt_f32_i32_e32 v21, v11
	v_cvt_f32_i32_e32 v19, v14
	v_cvt_f32_i32_e32 v20, v16
	v_cvt_f32_i32_e32 v23, v15
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v209, v1 offset:34816
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v133, s47, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s47, s10, 10
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_u16 v1, v1, s[36:39], 0 offen
	buffer_load_u16 v2, v2, s[36:39], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v156, 16, v1
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v157, 16, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s48, v202
	v_add_nc_u32_e32 v5, s48, v204
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v9, s49, v202
	v_add_nc_u32_e32 v13, s49, v204
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[28:31], 0 offen
	buffer_load_b128 v[5:8], v5, s[28:31], 0 offen
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	buffer_load_b128 v[13:16], v13, s[28:31], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[43:46], v210 offset:34816
	s_mov_b32 s48, s45
	s_mov_b32 s49, s46
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v158, v44, v156
	v_mul_f32_e32 v159, v43, v156
	v_mul_f32_e32 v160, v46, v156
	v_dual_mul_f32 v161, v45, v156 :: v_dual_mul_f32 v162, v44, v157
	v_mul_f32_e32 v163, v43, v157
	v_mul_f32_e32 v164, v46, v157
	v_mul_f32_e32 v165, v45, v157
	ds_load_b128 v[43:46], v210 offset:34832
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v126, v162, v40
	v_fmac_f32_e32 v122, v164, v143
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v166, v44, v156
	v_mul_f32_e32 v167, v43, v156
	v_mul_f32_e32 v168, v46, v156
	v_dual_mul_f32 v169, v45, v156 :: v_dual_mul_f32 v170, v44, v157
	v_mul_f32_e32 v171, v43, v157
	v_mul_f32_e32 v172, v46, v157
	v_mul_f32_e32 v173, v45, v157
	ds_load_b128 v[43:46], v210 offset:35328
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v116, v159, v137 :: v_dual_fmac_f32 v113, v160, v60
	v_fmac_f32_e32 v86, v170, v145
	v_fmac_f32_e32 v82, v172, v147
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v174, v44, v156
	v_mul_f32_e32 v175, v43, v156
	v_mul_f32_e32 v176, v46, v156
	v_dual_mul_f32 v177, v45, v156 :: v_dual_mul_f32 v178, v44, v157
	v_mul_f32_e32 v179, v43, v157
	v_mul_f32_e32 v180, v46, v157
	v_mul_f32_e32 v181, v45, v157
	ds_load_b128 v[43:46], v210 offset:35344
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v112, v161, v59
	v_dual_fmac_f32 v108, v167, v61 :: v_dual_fmac_f32 v101, v174, v55
	v_fmac_f32_e32 v74, v180, v150
	v_dual_fmac_f32 v97, v176, v138 :: v_dual_fmac_f32 v78, v178, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v183, v43, v156
	v_mul_f32_e32 v187, v43, v157
	v_add_nc_u32_e32 v43, s27, v132
	v_mul_f32_e32 v182, v44, v156
	v_mul_f32_e32 v184, v46, v156
	v_dual_mul_f32 v185, v45, v156 :: v_dual_mul_f32 v186, v44, v157
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v43, v43, s50, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v188, v46, v157
	v_mul_f32_e32 v189, v45, v157
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s50, s47, 0
	s_mov_b32 s47, s44
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s44, s10, 13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v104, v169, v63
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s45, s44, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v105, v168, v64 :: v_dual_add_nc_u32 v32, s50, v206
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v43, v43, s[40:43], 0 offen
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v100, v175, v56
	v_dual_fmac_f32 v125, v163, v142 :: v_dual_fmac_f32 v68, v186, v152
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s46, s50, 0x8000
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s44, s45, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s23, s11
	s_mov_b32 s23, s51
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_store_b32 v209, v43 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[43:46], v210 offset:34816
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v190, v44, v156
	v_mul_f32_e32 v191, v43, v156
	v_mul_f32_e32 v193, v46, v156
	v_dual_mul_f32 v194, v45, v156 :: v_dual_mul_f32 v195, v44, v157
	v_mul_f32_e32 v196, v43, v157
	v_mul_f32_e32 v197, v46, v157
	v_mul_f32_e32 v211, v45, v157
	ds_load_b128 v[43:46], v210 offset:34832
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v96, v177, v139 :: v_dual_fmac_f32 v89, v184, v48
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v118, v190, v50 :: v_dual_fmac_f32 v121, v165, v144
	v_dual_fmac_f32 v114, v194, v58 :: v_dual_fmac_f32 v127, v196, v39
	v_fmac_f32_e32 v123, v211, v28
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v212, v44, v156
	v_mul_f32_e32 v213, v43, v156
	v_mul_f32_e32 v214, v46, v156
	v_dual_mul_f32 v215, v45, v156 :: v_dual_mul_f32 v216, v44, v157
	v_mul_f32_e32 v217, v43, v157
	v_mul_f32_e32 v218, v46, v157
	v_mul_f32_e32 v219, v45, v157
	ds_load_b128 v[43:46], v210 offset:35328
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v117, v158, v136 :: v_dual_fmac_f32 v92, v183, v141
	v_dual_fmac_f32 v109, v166, v62 :: v_dual_fmac_f32 v66, v189, v155
	v_fmac_f32_e32 v88, v185, v47
	v_dual_fmac_f32 v81, v173, v148 :: v_dual_fmac_f32 v106, v215, v54
	v_dual_fmac_f32 v67, v187, v153 :: v_dual_fmac_f32 v120, v216, v26
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v107, v214, v52
	v_dual_fmac_f32 v83, v219, v30 :: v_dual_fmac_f32 v84, v218, v27
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v220, v44, v156
	v_mul_f32_e32 v221, v43, v156
	v_mul_f32_e32 v222, v46, v156
	v_dual_mul_f32 v223, v45, v156 :: v_dual_mul_f32 v224, v44, v157
	v_mul_f32_e32 v225, v43, v157
	v_mul_f32_e32 v226, v46, v157
	v_mul_f32_e32 v227, v45, v157
	ds_load_b128 v[43:46], v210 offset:35344
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v85, v171, v146 :: v_dual_fmac_f32 v102, v221, v41
	v_dual_fmac_f32 v73, v181, v151 :: v_dual_fmac_f32 v98, v223, v42
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v87, v191, v57
	v_dual_fmac_f32 v79, v225, v31 :: v_dual_fmac_f32 v80, v224, v17
	v_dual_fmac_f32 v75, v227, v21 :: v_dual_fmac_f32 v76, v226, v18
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b32 v32, v135 offset:32768
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v228, v44, v156
	v_mul_f32_e32 v229, v43, v156
	v_mul_f32_e32 v230, v46, v156
	v_mul_f32_e32 v156, v45, v156
	v_mul_f32_e32 v44, v44, v157
	v_mul_f32_e32 v43, v43, v157
	v_mul_f32_e32 v46, v46, v157
	v_mul_f32_e32 v45, v45, v157
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v93, v182, v140 :: v_dual_fmac_f32 v110, v213, v53
	v_dual_fmac_f32 v77, v179, v149 :: v_dual_fmac_f32 v90, v156, v38
	v_dual_fmac_f32 v65, v188, v154 :: v_dual_fmac_f32 v94, v229, v37
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v115, v193, v49 :: v_dual_fmac_f32 v128, v195, v24
	v_dual_fmac_f32 v111, v212, v51 :: v_dual_fmac_f32 v124, v197, v25
	v_dual_fmac_f32 v103, v220, v34 :: v_dual_fmac_f32 v70, v46, v20
	v_dual_fmac_f32 v99, v222, v33 :: v_dual_fmac_f32 v72, v44, v19
	v_fmac_f32_e32 v95, v228, v35
	v_fmac_f32_e32 v91, v230, v36
	v_dual_fmac_f32 v119, v217, v29 :: v_dual_add_nc_u32 v24, s45, v207
	v_fmac_f32_e32 v71, v43, v22
	v_fmac_f32_e32 v69, v45, v23
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v24, v[1:4]
	ds_store_b128 v24, v[5:8] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v24, v[9:12] offset:16384
	ds_store_b128 v24, v[13:16] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_and_b32_e32 v1, 4, v0
	v_mov_b32_e32 v17, v205
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s46, 0, 0x8400
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v87, 0
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s47, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v205, v231 :: v_dual_mov_b32 v206, v232
	v_cndmask_b32_e64 v1, 0x90, 0, vcc_lo
	v_dual_mov_b32 v204, v242 :: v_dual_mov_b32 v203, v244
	v_dual_mov_b32 v202, v245 :: v_dual_mov_b32 v227, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v18, v1, v201
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v1, 0, 1, s2
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v211, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v19, 16, v18
	v_dual_mov_b32 v219, 0 :: v_dual_add_nc_u32 v2, s49, v18
	v_mov_b32_e32 v226, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v222, 0 :: v_dual_add_nc_u32 v3, s49, v19
	v_mov_b32_e32 v221, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[13:16], v2
	ds_load_b128 v[9:12], v2 offset:512
	ds_load_b128 v[5:8], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v3 offset:512
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v201, v246
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v197, v247
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v195, v249
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v193, v251
	v_mov_b32_e32 v196, v248
	v_mov_b32_e32 v194, v250
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s12, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v20, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0xf                            ; 64-byte Folded Reload
	scratch_load_b32 v24, off, off offset:48
	scratch_load_b32 v25, off, off offset:40
	scratch_load_b32 v22, off, off offset:60
	scratch_load_b32 v23, off, off offset:56
	scratch_load_b32 v26, off, off offset:32
	scratch_load_b32 v54, off, off offset:52
	scratch_load_b32 v55, off, off offset:44
	scratch_load_b32 v58, off, off offset:36
	scratch_load_b32 v28, off, off offset:16
	scratch_load_b32 v27, off, off offset:24
	scratch_load_b32 v29, off, off offset:8
	scratch_load_b32 v30, off, off
	scratch_load_b32 v59, off, off offset:28
	scratch_load_b32 v145, off, off offset:20
	scratch_load_b32 v146, off, off offset:12
	scratch_load_b32 v147, off, off offset:4
	v_add_nc_u32_e32 v31, s48, v241
	v_add_nc_u32_e32 v32, s48, v237
	v_add_nc_u32_e32 v33, s48, v206
	v_add_nc_u32_e32 v34, s48, v205
	v_add_nc_u32_e32 v35, s48, v239
	v_add_nc_u32_e32 v52, s48, v235
	v_add_nc_u32_e32 v53, s48, v134
	v_add_nc_u32_e32 v148, s48, v243
	v_add_nc_u32_e32 v149, s48, v238
	v_add_nc_u32_e32 v150, s48, v234
	v_add_nc_u32_e32 v151, s48, v233
	v_add_nc_u32_e32 v152, s48, v240
	v_add_nc_u32_e32 v153, s48, v236
	v_add_nc_u32_e32 v135, s48, v195
	v_add_nc_u32_e32 v38, s48, v192
	v_add_nc_u32_e32 v39, s48, v129
	v_add_nc_u32_e32 v40, s48, v130
	v_add_nc_u32_e32 v63, s48, v193
	v_add_nc_u32_e32 v64, s48, v194
	v_add_nc_u32_e32 v136, s48, v196
	v_add_nc_u32_e32 v137, s48, v197
	v_add_nc_u32_e32 v140, s48, v201
	v_add_nc_u32_e32 v141, s48, v202
	v_add_nc_u32_e32 v142, s48, v203
	v_add_nc_u32_e32 v143, s48, v204
	scratch_load_b32 v21, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v36, s48, v20
	scratch_load_b32 v20, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v24, s48, v24
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v25, s48, v25
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v22, s48, v22
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v23, s48, v23
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v26, s48, v26
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v54, s48, v54
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v55, s48, v55
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v58, s48, v58
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v28, s48, v28
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v27, s48, v27
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v29, s48, v29
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v30, s48, v30
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v24, v24
	ds_load_u8 v25, v25
	ds_load_u8 v22, v22
	ds_load_u8 v28, v28
	ds_load_u8 v29, v29
	ds_load_u8 v26, v26
	ds_load_u8 v27, v27
	ds_load_u8 v23, v23
	ds_load_u8 v32, v32
	ds_load_u8 v33, v33
	ds_load_u8 v30, v30
	ds_load_u8 v52, v52
	ds_load_u8 v57, v53
	ds_load_u8 v34, v34
	ds_load_u8 v35, v35
	ds_load_u8 v31, v31
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v53, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v59, s48, v59
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v145, s48, v145
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v146, s48, v146
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v147, s48, v147
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v25, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	v_perm_b32 v23, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v26, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v31, v30, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v21, s48, v21
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s48, v20
	scratch_load_b32 v20, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v53, s48, v53
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s48, v20
	scratch_load_b32 v20, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s48, v20
	scratch_load_b32 v20, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v43, s48, v20
	scratch_load_b32 v20, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s48, v20
	scratch_load_b32 v20, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v45, s48, v20
	scratch_load_b32 v20, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s48, v20
	scratch_load_b32 v20, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s48, v20
	scratch_load_b32 v20, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s48, v20
	scratch_load_b32 v20, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v49, s48, v20
	scratch_load_b32 v20, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s48, v20
	scratch_load_b32 v20, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s48, v20
	scratch_load_b32 v20, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v56, s48, v20
	scratch_load_b32 v20, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v60, s48, v20
	scratch_load_b32 v20, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v61, s48, v20
	scratch_load_b32 v20, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v62, s48, v20
	scratch_load_b32 v20, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v138, s48, v20
	scratch_load_b32 v20, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s48, v20
	scratch_load_b32 v20, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v144, s48, v20
	scratch_load_b32 v20, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s48, v20
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v28, v53
	ds_load_u8 v29, v54
	ds_load_u8 v30, v20
	ds_load_u8 v31, v59
	ds_load_u8 v32, v145
	ds_load_u8 v33, v55
	ds_load_u8 v58, v58
	ds_load_u8 v59, v21
	ds_load_u8 v145, v148
	ds_load_u8 v148, v149
	ds_load_u8 v146, v146
	ds_load_u8 v149, v152
	ds_load_u8 v152, v153
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	ds_load_u8 v147, v147
	v_perm_b32 v20, v57, v52, 0xc0c0004
	v_perm_b32 v21, v35, v34, 0xc0c0004
	v_lshl_or_b32 v55, v22, 16, v24
	v_lshl_or_b32 v54, v25, 16, v23
	v_lshl_or_b32 v53, v27, 16, v26
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v57, v29, v28, 0xc0c0004
	v_lshl_or_b32 v52, v21, 16, v20
	v_dual_mov_b32 v27, s19 :: v_dual_mov_b32 v26, s18
	v_dual_mov_b32 v25, s17 :: v_dual_mov_b32 v24, s16
	v_dual_mov_b32 v23, s15 :: v_dual_mov_b32 v22, s14
	v_dual_mov_b32 v21, s13 :: v_dual_mov_b32 v20, s12
	ds_load_u8 v61, v61
	ds_load_u8 v62, v62
	ds_load_u8 v56, v56
	ds_load_u8 v135, v135
	ds_load_u8 v136, v136
	ds_load_u8 v63, v63
	ds_load_u8 v64, v64
	ds_load_u8 v60, v60
	ds_load_u8 v139, v139
	ds_load_u8 v140, v140
	ds_load_u8 v137, v137
	ds_load_u8 v143, v143
	ds_load_u8 v144, v144
	ds_load_u8 v141, v141
	ds_load_u8 v142, v142
	ds_load_u8 v138, v138
	ds_load_u8 v38, v38
	ds_load_u8 v39, v39
	ds_load_u8 v36, v36
	ds_load_u8 v42, v42
	ds_load_u8 v43, v43
	ds_load_u8 v40, v40
	ds_load_u8 v41, v41
	ds_load_u8 v37, v37
	ds_load_u8 v46, v46
	ds_load_u8 v47, v47
	ds_load_u8 v44, v44
	ds_load_u8 v50, v50
	ds_load_u8 v51, v51
	ds_load_u8 v48, v48
	ds_load_u8 v49, v49
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v59, v59, v30, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v145, v148, v145, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	v_perm_b32 v146, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v60, v60, v56, 0xc0c0004
	v_perm_b32 v62, v136, v135, 0xc0c0004
	v_perm_b32 v64, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v135, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v136, v138, v137, 0xc0c0004
	v_perm_b32 v137, v144, v143, 0xc0c0004
	v_perm_b32 v138, v142, v141, 0xc0c0004
	v_perm_b32 v153, v32, v31, 0xc0c0004
	v_perm_b32 v58, v58, v33, 0xc0c0004
	v_lshl_or_b32 v59, v59, 16, v57
	v_lshl_or_b32 v57, v146, 16, v145
	v_perm_b32 v145, v152, v149, 0xc0c0004
	v_perm_b32 v146, v151, v150, 0xc0c0004
	v_lshl_or_b32 v63, v60, 16, v61
	v_lshl_or_b32 v62, v64, 16, v62
	v_lshl_or_b32 v61, v136, 16, v135
	v_lshl_or_b32 v60, v138, 16, v137
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v64, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v135, v37, v36, 0xc0c0004
	v_perm_b32 v136, v43, v42, 0xc0c0004
	v_perm_b32 v137, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	v_perm_b32 v45, v51, v50, 0xc0c0004
	v_perm_b32 v47, v49, v48, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[28:35], v[52:55], v[13:16], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v58, v58, 16, v153
	v_lshl_or_b32 v56, v146, 16, v145
	v_wmma_i32_16x16x16_iu8 v[36:43], v[60:63], v[13:16], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v138, v135, 16, v64
	v_lshl_or_b32 v137, v137, 16, v136
	v_lshl_or_b32 v136, v44, 16, v46
	v_lshl_or_b32 v135, v47, 16, v45
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[9:12], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[20:27], v[60:63], v[9:12], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[28:35], v[56:59], v[5:8], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[135:138], v[5:8], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[56:59], v[1:4], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[20:27], v[135:138], v[1:4], v[20:27] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v222, v30
	v_cvt_f32_i32_e32 v224, v31
	v_cvt_f32_i32_e32 v52, v32
	v_cvt_f32_i32_e32 v53, v33
	v_cvt_f32_i32_e32 v211, v34
	v_cvt_f32_i32_e32 v218, v35
	v_cvt_f32_i32_e32 v212, v36
	v_cvt_f32_i32_e32 v219, v37
	v_cvt_f32_i32_e32 v221, v38
	v_cvt_f32_i32_e32 v223, v39
	v_cvt_f32_i32_e32 v38, v40
	v_cvt_f32_i32_e32 v210, v41
	v_cvt_f32_i32_e32 v217, v42
	v_cvt_f32_i32_e32 v220, v43
	v_cvt_f32_i32_e32 v231, v44
	v_cvt_f32_i32_e32 v232, v45
	v_cvt_f32_i32_e32 v229, v46
	v_cvt_f32_i32_e32 v230, v47
	v_cvt_f32_i32_e32 v36, v48
	v_cvt_f32_i32_e32 v37, v49
	v_cvt_f32_i32_e32 v34, v50
	v_cvt_f32_i32_e32 v35, v51
	v_cvt_f32_i32_e32 v32, v20
	v_cvt_f32_i32_e32 v33, v21
	v_cvt_f32_i32_e32 v30, v22
	v_cvt_f32_i32_e32 v31, v23
	v_cvt_f32_i32_e32 v22, v24
	v_cvt_f32_i32_e32 v23, v25
	v_cvt_f32_i32_e32 v21, v26
	v_cvt_f32_i32_e32 v20, v27
	v_cvt_f32_i32_e32 v226, v28
	v_cvt_f32_i32_e32 v227, v29
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0xe                            ; 60-byte Folded Spill
	scratch_store_b32 off, v38, off offset:276
	scratch_store_b32 off, v53, off offset:272
	scratch_store_b32 off, v52, off offset:268
	scratch_store_b32 off, v37, off offset:216
	scratch_store_b32 off, v36, off offset:212
	scratch_store_b32 off, v35, off offset:200
	scratch_store_b32 off, v34, off offset:196
	scratch_store_b32 off, v33, off offset:184
	scratch_store_b32 off, v32, off offset:180
	scratch_store_b32 off, v31, off offset:176
	scratch_store_b32 off, v30, off offset:172
	scratch_store_b32 off, v23, off offset:168
	scratch_store_b32 off, v22, off offset:164
	scratch_store_b32 off, v21, off offset:160
	scratch_store_b32 off, v20, off offset:156
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v20, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v20, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0xb                            ; 48-byte Folded Reload
	scratch_load_b32 v27, off, off offset:32
	scratch_load_b32 v22, off, off offset:64
	scratch_load_b32 v24, off, off offset:56
	scratch_load_b32 v25, off, off offset:48
	scratch_load_b32 v26, off, off offset:40
	scratch_load_b32 v47, off, off offset:36
	scratch_load_b32 v21, off, off offset:68
	scratch_load_b32 v23, off, off offset:60
	scratch_load_b32 v28, off, off offset:24
	scratch_load_b32 v29, off, off offset:16
	scratch_load_b32 v30, off, off offset:8
	scratch_load_b32 v31, off, off
	v_add_nc_u32_e32 v33, s47, v237
	v_add_nc_u32_e32 v34, s47, v206
	v_add_nc_u32_e32 v45, s47, v235
	v_add_nc_u32_e32 v32, s47, v241
	v_add_nc_u32_e32 v35, s47, v205
	v_add_nc_u32_e32 v44, s47, v239
	v_add_nc_u32_e32 v46, s47, v134
	v_add_nc_u32_e32 v149, s47, v243
	v_add_nc_u32_e32 v150, s47, v238
	v_add_nc_u32_e32 v151, s47, v240
	v_add_nc_u32_e32 v152, s47, v236
	v_add_nc_u32_e32 v135, s47, v195
	v_add_nc_u32_e32 v38, s47, v192
	v_add_nc_u32_e32 v39, s47, v129
	v_add_nc_u32_e32 v40, s47, v130
	v_add_nc_u32_e32 v63, s47, v193
	v_add_nc_u32_e32 v64, s47, v194
	v_add_nc_u32_e32 v136, s47, v196
	v_add_nc_u32_e32 v137, s47, v197
	v_add_nc_u32_e32 v140, s47, v201
	v_add_nc_u32_e32 v141, s47, v202
	v_add_nc_u32_e32 v142, s47, v203
	v_add_nc_u32_e32 v143, s47, v204
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v36, s47, v20
	scratch_load_b32 v20, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v27, s47, v27
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v22, s47, v22
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v24, s47, v24
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v25, s47, v25
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v26, s47, v26
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v51, s47, v47
	scratch_load_b32 v47, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v21, s47, v21
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s47, v20
	scratch_load_b32 v20, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v145, s47, v47
	scratch_load_b32 v47, off, off offset:20 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v28, s47, v28
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v41, s47, v20
	scratch_load_b32 v20, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v146, s47, v47
	scratch_load_b32 v47, off, off offset:12 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v29, s47, v29
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v42, s47, v20
	scratch_load_b32 v20, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v147, s47, v47
	scratch_load_b32 v47, off, off offset:4 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v31, s47, v31
	v_add_nc_u32_e32 v30, s47, v30
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	ds_load_u8 v31, v31
	ds_load_u8 v49, v45
	ds_load_u8 v50, v46
	ds_load_u8 v35, v35
	ds_load_u8 v44, v44
	ds_load_u8 v32, v32
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:52
	scratch_load_b32 v46, off, off offset:44
	v_add_nc_u32_e32 v23, s47, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	ds_load_u8 v26, v26
	ds_load_u8 v23, v23
	ds_load_u8 v29, v29
	ds_load_u8 v30, v30
	ds_load_u8 v27, v27
	ds_load_u8 v28, v28
	ds_load_u8 v24, v24
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v26, s47, v233
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v24, s47, v234
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v43, s47, v20
	scratch_load_b32 v20, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v148, s47, v47
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v47, v23, 16, v25
	v_perm_b32 v23, v30, v29, 0xc0c0004
	v_perm_b32 v25, v28, v27, 0xc0c0004
	v_perm_b32 v27, v34, v33, 0xc0c0004
	v_perm_b32 v28, v32, v31, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v45, s47, v45
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v46, s47, v46
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, s47, v20
	scratch_load_b32 v20, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v52, s47, v20
	scratch_load_b32 v20, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, s47, v20
	scratch_load_b32 v20, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v54, s47, v20
	scratch_load_b32 v20, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v55, s47, v20
	scratch_load_b32 v20, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v56, s47, v20
	scratch_load_b32 v20, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v57, s47, v20
	scratch_load_b32 v20, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v58, s47, v20
	scratch_load_b32 v20, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v59, s47, v20
	scratch_load_b32 v20, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v60, s47, v20
	scratch_load_b32 v20, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v61, s47, v20
	scratch_load_b32 v20, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v62, s47, v20
	scratch_load_b32 v20, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v138, s47, v20
	scratch_load_b32 v20, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s47, v20
	scratch_load_b32 v20, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v144, s47, v20
	scratch_load_b32 v20, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s47, v20
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v29, v22
	ds_load_u8 v30, v45
	ds_load_u8 v31, v20
	ds_load_u8 v32, v145
	ds_load_u8 v33, v146
	ds_load_u8 v34, v46
	ds_load_u8 v51, v51
	ds_load_u8 v145, v21
	ds_load_u8 v146, v149
	ds_load_u8 v149, v150
	ds_load_u8 v147, v147
	ds_load_u8 v150, v151
	ds_load_u8 v151, v152
	ds_load_u8 v152, v24
	ds_load_u8 v153, v26
	ds_load_u8 v148, v148
	v_perm_b32 v20, v50, v49, 0xc0c0004
	v_perm_b32 v21, v44, v35, 0xc0c0004
	v_lshl_or_b32 v46, v25, 16, v23
	v_lshl_or_b32 v45, v28, 16, v27
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v49, v30, v29, 0xc0c0004
	v_lshl_or_b32 v44, v21, 16, v20
	v_dual_mov_b32 v27, s19 :: v_dual_mov_b32 v26, s18
	v_dual_mov_b32 v25, s17 :: v_dual_mov_b32 v24, s16
	v_dual_mov_b32 v23, s15 :: v_dual_mov_b32 v22, s14
	v_dual_mov_b32 v21, s13 :: v_dual_mov_b32 v20, s12
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v154, v51, v34, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v50, v145, v31, 0xc0c0004
	v_perm_b32 v145, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v146, v149, v146, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[28:35], v[44:47], v[13:16], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v50, 16, v49
	v_lshl_or_b32 v50, v154, 16, v145
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v145, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v147, 16, v146
	ds_load_u8 v61, v61
	ds_load_u8 v62, v62
	ds_load_u8 v59, v59
	ds_load_u8 v135, v135
	ds_load_u8 v136, v136
	ds_load_u8 v63, v63
	ds_load_u8 v64, v64
	ds_load_u8 v60, v60
	ds_load_u8 v139, v139
	ds_load_u8 v140, v140
	ds_load_u8 v137, v137
	ds_load_u8 v143, v143
	ds_load_u8 v144, v144
	ds_load_u8 v141, v141
	ds_load_u8 v142, v142
	ds_load_u8 v138, v138
	ds_load_u8 v38, v38
	ds_load_u8 v39, v39
	ds_load_u8 v36, v36
	ds_load_u8 v42, v42
	ds_load_u8 v43, v43
	ds_load_u8 v40, v40
	ds_load_u8 v41, v41
	ds_load_u8 v37, v37
	ds_load_u8 v146, v53
	ds_load_u8 v147, v54
	ds_load_u8 v148, v48
	ds_load_u8 v57, v57
	ds_load_u8 v58, v58
	ds_load_u8 v149, v55
	ds_load_u8 v56, v56
	ds_load_u8 v150, v52
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v52, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v53, v60, v59, 0xc0c0004
	v_perm_b32 v54, v136, v135, 0xc0c0004
	v_perm_b32 v48, v153, v152, 0xc0c0004
	v_perm_b32 v59, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v60, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v62, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v63, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v61, v138, v137, 0xc0c0004
	v_lshl_or_b32 v55, v53, 16, v52
	v_lshl_or_b32 v48, v48, 16, v145
	v_lshl_or_b32 v54, v59, 16, v54
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v59, v39, v38, 0xc0c0004
	v_lshl_or_b32 v52, v63, 16, v62
	v_lshl_or_b32 v53, v61, 16, v60
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v61, v43, v42, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[28:35], v[48:51], v[5:8], v[28:35] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v62, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v60, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v63, v147, v146, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[36:43], v[52:55], v[13:16], v[20:27] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v255, v30
	v_cvt_f32_i32_e32 v135, v31
	v_cvt_f32_i32_e32 v252, v32
	v_cvt_f32_i32_e32 v253, v33
	v_cvt_f32_i32_e32 v245, v34
	v_cvt_f32_i32_e32 v248, v35
	v_cvt_f32_i32_e32 v228, v28
	v_cvt_f32_i32_e32 v138, v29
	v_lshl_or_b32 v15, v62, 16, v61
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	v_lshl_or_b32 v16, v60, 16, v59
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v56, v56, v149, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v150, v148, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[143:150], v[44:47], v[9:12], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[20:27], v[52:55], v[9:12], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v13, v56, 16, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v14, v64, 16, v63
	v_wmma_i32_16x16x16_iu8 v[143:150], v[48:51], v[1:4], v[143:150] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[13:16], v[5:8], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[20:27], v[13:16], v[1:4], v[20:27] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v143, v143
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v141, v145
	v_cvt_f32_i32_e32 v142, v146
	v_cvt_f32_i32_e32 v139, v147
	v_cvt_f32_i32_e32 v140, v148
	v_cvt_f32_i32_e32 v34, v149
	v_cvt_f32_i32_e32 v35, v150
	v_cvt_f32_i32_e32 v246, v36
	v_cvt_f32_i32_e32 v249, v37
	v_cvt_f32_i32_e32 v251, v38
	v_cvt_f32_i32_e32 v254, v39
	v_cvt_f32_i32_e32 v242, v40
	v_cvt_f32_i32_e32 v244, v41
	v_cvt_f32_i32_e32 v247, v42
	v_cvt_f32_i32_e32 v250, v43
	v_cvt_f32_i32_e32 v32, v20
	v_cvt_f32_i32_e32 v33, v21
	v_cvt_f32_i32_e32 v30, v22
	v_cvt_f32_i32_e32 v31, v23
	v_cvt_f32_i32_e32 v22, v24
	v_cvt_f32_i32_e32 v23, v25
	v_cvt_f32_i32_e32 v20, v26
	v_cvt_f32_i32_e32 v21, v27
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s22, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s22, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s0, s34
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v133, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v132, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	v_add3_u32 v173, s33, s27, v0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_add_lshl_u32 v5, v131, s0, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_and_b32_e32 v4, 28, v200
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v6, v173, s4, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_and_b32_e32 v3, 32, v17
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v2, v2, s[20:23], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s9, s9, 0xffff
	s_clause 0x9                            ; 40-byte Folded Spill
	scratch_store_b32 off, v35, off offset:240
	scratch_store_b32 off, v34, off offset:236
	scratch_store_b32 off, v33, off offset:232
	scratch_store_b32 off, v32, off offset:228
	scratch_store_b32 off, v31, off offset:224
	scratch_store_b32 off, v30, off offset:220
	scratch_store_b32 off, v23, off offset:208
	scratch_store_b32 off, v22, off offset:204
	scratch_store_b32 off, v21, off offset:192
	scratch_store_b32 off, v20, off offset:188
	v_mov_b32_e32 v151, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add3_u32 v3, 0, v199, v3
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v145, 0, v198
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v13, s46, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v146, v3, v4
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_dual_cndmask_b32 v4, 0x80000000, v6 :: v_dual_cndmask_b32 v3, 0x80000000, v5
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v172, v1, s[8:11], 0 offen
	buffer_load_u16 v174, v3, s[8:11], 0 offen
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v14, s46, v19
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v22, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v21, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v162, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v146, v2 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v1, v4, s[20:23], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v2, 0, 1, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[25:28], v145 offset:34816
	ds_load_b128 v[9:12], v145 offset:34832
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[5:8], v145 offset:35328
	ds_load_b128 v[1:4], v145 offset:35344
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v146, v15 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[45:48], v13
	ds_load_b128 v[41:44], v13 offset:512
	ds_load_b128 v[37:40], v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[33:36], v14 offset:512
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v13, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v22, off, off offset:92
	scratch_load_b32 v21, off, off offset:100
	scratch_load_b32 v54, off, off offset:104
	scratch_load_b32 v24, off, off offset:96
	scratch_load_b32 v23, off, off offset:88
	scratch_load_b32 v58, off, off offset:84
	scratch_load_b32 v59, off, off offset:80
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v29, s45, v195
	v_add_nc_u32_e32 v30, s45, v196
	s_clause 0xb                            ; 48-byte Folded Reload
	scratch_load_b32 v20, off, off offset:136
	scratch_load_b32 v31, off, off offset:132
	scratch_load_b32 v32, off, off offset:128
	scratch_load_b32 v49, off, off offset:124
	scratch_load_b32 v50, off, off offset:120
	scratch_load_b32 v51, off, off offset:116
	scratch_load_b32 v52, off, off offset:112
	scratch_load_b32 v53, off, off offset:108
	scratch_load_b32 v13, off, off offset:152
	scratch_load_b32 v14, off, off offset:148
	scratch_load_b32 v18, off, off offset:144
	scratch_load_b32 v19, off, off offset:140
	v_add_nc_u32_e32 v55, s45, v193
	v_add_nc_u32_e32 v56, s45, v194
	v_add_nc_u32_e32 v60, s45, v201
	v_add_nc_u32_e32 v57, s45, v197
	v_add_nc_u32_e32 v61, s45, v202
	v_add_nc_u32_e32 v15, s45, v192
	v_add_nc_u32_e32 v16, s45, v129
	v_add_nc_u32_e32 v17, s45, v130
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v22, s45, v22
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v21, s45, v21
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v54, s45, v54
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v24, s45, v24
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v23, s45, v23
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v22, v22
	ds_load_u8 v23, v23
	ds_load_u8 v21, v21
	ds_load_u8 v24, v24
	ds_load_u8 v29, v29
	ds_load_u8 v30, v30
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v58, s45, v58
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v20, s45, v20
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v31, s45, v31
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v32, s45, v32
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v49, s45, v49
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v50, s45, v50
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v51, s45, v51
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v52, s45, v52
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v53, s45, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v23, s45, v203
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v21, v24, v21, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v24, s45, v204
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v30, off, off offset:76 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v59, s45, v59
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v13, s45, v13
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v14, s45, v14
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v18, s45, v18
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v19, s45, v19
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v30, s45, v30
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v55, v55
	ds_load_u8 v56, v56
	ds_load_u8 v59, v59
	ds_load_u8 v60, v60
	ds_load_u8 v57, v57
	ds_load_u8 v24, v24
	ds_load_u8 v30, v30
	ds_load_u8 v61, v61
	ds_load_u8 v23, v23
	ds_load_u8 v58, v58
	ds_load_u8 v62, v15
	ds_load_u8 v63, v16
	ds_load_u8 v64, v13
	ds_load_u8 v136, v19
	ds_load_u8 v137, v20
	ds_load_u8 v147, v17
	ds_load_u8 v148, v18
	ds_load_u8 v149, v14
	ds_load_u8 v49, v49
	ds_load_u8 v50, v50
	ds_load_u8 v31, v31
	ds_load_u8 v53, v53
	ds_load_u8 v54, v54
	ds_load_u8 v32, v32
	ds_load_u8 v51, v51
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v13, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v16, v30, v24, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v17, v23, v61, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v15, v58, v57, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v58, s45, v233
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v23, v13, 16, v29
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v29, v63, v62, 0xc0c0004
	v_perm_b32 v14, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v55, v137, v136, 0xc0c0004
	v_lshl_or_b32 v24, v21, 16, v22
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v56, v148, v147, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v30, v149, v64, 0xc0c0004
	v_lshl_or_b32 v22, v15, 16, v14
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	v_lshl_or_b32 v21, v17, 16, v16
	v_mov_b32_e32 v20, s19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v32, v31, 0xc0c0004
	v_lshl_or_b32 v32, v30, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v52, off, off offset:56
	scratch_load_b32 v57, off, off offset:36
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v30, v50, 16, v49
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:48
	scratch_load_b32 v50, off, off offset:40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v29, v51, 16, v53
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v51, off, off offset:60
	scratch_load_b32 v53, off, off offset:16
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v31, v56, 16, v55
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v55, off, off offset:68
	scratch_load_b32 v56, off, off offset:20
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v19, s18 :: v_dual_add_nc_u32 v54, s45, v239
	v_dual_mov_b32 v18, s17 :: v_dual_mov_b32 v17, s16
	v_dual_mov_b32 v16, s15 :: v_dual_mov_b32 v15, s14
	v_dual_mov_b32 v14, s13 :: v_dual_mov_b32 v13, s12
	ds_load_u8 v54, v54
	ds_load_u8 v58, v58
	v_wmma_i32_16x16x16_iu8 v[156:163], v[21:24], v[45:48], v[13:20] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[156:163], v[29:32], v[37:40], v[156:163] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v154, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v155, v157
	v_cvt_f32_i32_e32 v156, v160
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v157, v161
	v_cvt_f32_i32_e32 v160, v162
	v_cvt_f32_i32_e32 v161, v163
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v52, s45, v52
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v57, s45, v57
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v49, s45, v49
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v50, s45, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v49
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v51, s45, v51
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v57, v57
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v55, s45, v55
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v56, s45, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v55, v55
	ds_load_u8 v56, v56
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:8 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v53, s45, v53
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s45, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	ds_load_u8 v52, v52
	ds_load_u8 v53, v53
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v52, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v50, v53, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v53, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v52, s45, v52
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, s45, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	ds_load_u8 v53, v53
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v53, v52, 0xc0c0004
	v_lshl_or_b32 v52, v51, 16, v49
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v49, s45, v237
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v51, v53, 16, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s45, v206
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v49, v49
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v53, s45, v241
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	ds_load_u8 v53, v53
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s45, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v53, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v53, s45, v134
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v50, v50, 16, v49
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v49, s45, v235
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v53, v53
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v53, v49, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v53, s45, v205
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v53, v53
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v54, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v49, v53, 16, v49
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v53, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[162:169], v[49:52], v[41:44], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[175:182], v[49:52], v[45:48], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[21:24], v[41:44], v[13:20] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[13:20], v[29:32], v[33:36], v[13:20] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v225, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v23, v14
	v_cvt_f32_i32_e32 v21, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v22, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v14, v19
	v_cvt_f32_i32_e32 v13, v20
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v54, s45, v54
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, s45, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v54, v54
	ds_load_u8 v53, v53
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v54, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v54, s45, v54
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v54, v54
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v55, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v55, s45, v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v55, v55
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v56, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v56, s45, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v56, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v56, 0xc0c0004
	v_lshl_or_b32 v56, v54, 16, v53
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v53, s45, v243
	v_add_nc_u32_e32 v54, s45, v238
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v55, v57, 16, v55
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v57, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v53, v53
	ds_load_u8 v54, v54
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v54, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v57, s45, v57
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v57, v57
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v54, s45, v54
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v54, v54
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v57, v54, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v57, s45, v236
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v54, v54, 16, v53
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v53, s45, v240
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v57, v57
	ds_load_u8 v53, v53
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v57, v53, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v57, s45, v234
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v57, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v57, 16, v53
	v_wmma_i32_16x16x16_iu8 v[162:169], v[53:56], v[33:36], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[175:182], v[53:56], v[37:40], v[175:182] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v216, v164
	v_cvt_f32_i32_e32 v215, v165
	v_cvt_f32_i32_e32 v214, v166
	v_cvt_f32_i32_e32 v213, v167
	v_cvt_f32_i32_e32 v209, v168
	v_cvt_f32_i32_e32 v208, v169
	v_cvt_f32_i32_e32 v166, v177
	v_cvt_f32_i32_e32 v167, v178
	v_cvt_f32_i32_e32 v164, v179
	v_cvt_f32_i32_e32 v165, v180
	v_cvt_f32_i32_e32 v168, v181
	v_cvt_f32_i32_e32 v169, v182
	v_cvt_f32_i32_e32 v170, v175
	v_cvt_f32_i32_e32 v171, v176
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v23, off offset:280
	scratch_store_b32 off, v22, off offset:264
	scratch_store_b32 off, v21, off offset:260
	scratch_store_b32 off, v16, off offset:256
	scratch_store_b32 off, v15, off offset:252
	scratch_store_b32 off, v14, off offset:248
	scratch_store_b32 off, v13, off offset:244
	ds_load_b128 v[29:32], v145 offset:34816
	ds_load_b128 v[21:24], v145 offset:34832
	ds_load_b128 v[17:20], v145 offset:35328
	ds_load_b128 v[13:16], v145 offset:35344
	v_dual_mov_b32 v207, v240 :: v_dual_mov_b32 v200, v239
	v_dual_mov_b32 v60, v236 :: v_dual_mov_b32 v59, v235
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v236, 0
	v_mov_b32_e32 v235, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v51, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v54, off, off offset:60
	scratch_load_b32 v55, off, off offset:56
	scratch_load_b32 v56, off, off offset:48
	scratch_load_b32 v57, off, off offset:40
	scratch_load_b32 v58, off, off offset:32
	v_add_nc_u32_e32 v178, s44, v59
	scratch_load_b32 v59, off, off offset:52 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v61, s44, v192
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v62, off, off offset:24
	scratch_load_b32 v63, off, off offset:16
	scratch_load_b32 v64, off, off offset:8
	scratch_load_b32 v147, off, off
	scratch_load_b32 v49, off, off offset:152
	scratch_load_b32 v50, off, off offset:148
	scratch_load_b32 v52, off, off offset:68
	scratch_load_b32 v53, off, off offset:64
	v_add_nc_u32_e32 v149, s44, v237
	v_add_nc_u32_e32 v150, s44, v206
	v_add_nc_u32_e32 v148, s44, v241
	v_add_nc_u32_e32 v176, s44, v205
	v_add_nc_u32_e32 v177, s44, v200
	v_add_nc_u32_e32 v134, s44, v134
	v_add_nc_u32_e32 v205, s44, v243
	v_add_nc_u32_e32 v206, s44, v238
	v_add_nc_u32_e32 v60, s44, v60
	v_add_nc_u32_e32 v195, s44, v195
	v_add_nc_u32_e32 v129, s44, v129
	v_add_nc_u32_e32 v130, s44, v130
	v_add_nc_u32_e32 v193, s44, v193
	v_add_nc_u32_e32 v194, s44, v194
	v_add_nc_u32_e32 v196, s44, v196
	v_add_nc_u32_e32 v197, s44, v197
	v_add_nc_u32_e32 v201, s44, v201
	v_add_nc_u32_e32 v202, s44, v202
	v_add_nc_u32_e32 v203, s44, v203
	v_add_nc_u32_e32 v204, s44, v204
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v136, s44, v51
	scratch_load_b32 v51, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v54, s44, v54
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v55, s44, v55
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v180, s44, v59
	scratch_load_b32 v59, off, off offset:44 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v56, s44, v56
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v52, s44, v52
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v53, s44, v53
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v137, s44, v51
	scratch_load_b32 v51, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v181, s44, v59
	scratch_load_b32 v59, off, off offset:36 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v57, s44, v57
	v_add_nc_u32_e32 v58, s44, v58
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v151, s44, v51
	scratch_load_b32 v51, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v182, s44, v59
	scratch_load_b32 v59, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v152, s44, v51
	scratch_load_b32 v51, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v183, s44, v59
	scratch_load_b32 v59, off, off offset:20 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v62, s44, v62
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v153, s44, v51
	scratch_load_b32 v51, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v236, s44, v59
	scratch_load_b32 v59, off, off offset:12 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v63, s44, v63
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v175, s44, v51
	scratch_load_b32 v51, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v239, s44, v59
	scratch_load_b32 v59, off, off offset:4 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v64, s44, v64
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v56, v56
	ds_load_u8 v57, v57
	ds_load_u8 v54, v54
	ds_load_u8 v63, v63
	ds_load_u8 v64, v64
	ds_load_u8 v58, v58
	ds_load_u8 v62, v62
	ds_load_u8 v55, v55
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v147, s44, v147
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v149, v149
	ds_load_u8 v179, v150
	ds_load_u8 v147, v147
	ds_load_u8 v178, v178
	ds_load_u8 v134, v134
	ds_load_u8 v176, v176
	ds_load_u8 v177, v177
	ds_load_u8 v148, v148
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v57, s44, v233
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v55, s44, v234
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v150, v54, 16, v56
	v_perm_b32 v54, v64, v63, 0xc0c0004
	v_perm_b32 v56, v62, v58, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v58, v179, v149, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v148, v147, 0xc0c0004
	v_lshl_or_b32 v149, v56, 16, v54
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v148, v62, 16, v58
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v184, s44, v51
	scratch_load_b32 v51, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v240, s44, v59
	v_add_nc_u32_e32 v59, s44, v207
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v185, s44, v51
	scratch_load_b32 v51, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v186, s44, v51
	scratch_load_b32 v51, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s44, v51
	scratch_load_b32 v51, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v188, s44, v51
	scratch_load_b32 v51, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v189, s44, v51
	scratch_load_b32 v51, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v190, s44, v51
	scratch_load_b32 v51, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v191, s44, v51
	scratch_load_b32 v51, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v192, s44, v51
	scratch_load_b32 v51, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v198, s44, v51
	scratch_load_b32 v51, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v199, s44, v51
	scratch_load_b32 v51, off, off offset:76 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v49, s44, v49
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v235, s44, v51
	scratch_load_b32 v51, off, off offset:72 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v50, s44, v50
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s44, v51
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v63, v53
	ds_load_u8 v64, v180
	ds_load_u8 v179, v51
	ds_load_u8 v180, v183
	ds_load_u8 v183, v236
	ds_load_u8 v181, v181
	ds_load_u8 v182, v182
	ds_load_u8 v236, v52
	ds_load_u8 v205, v205
	ds_load_u8 v206, v206
	ds_load_u8 v239, v239
	ds_load_u8 v59, v59
	ds_load_u8 v60, v60
	ds_load_u8 v200, v55
	ds_load_u8 v207, v57
	ds_load_u8 v240, v240
	v_perm_b32 v51, v134, v178, 0xc0c0004
	v_perm_b32 v52, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v62, v64, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v147, v52, 16, v51
	v_mov_b32_e32 v58, s19
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v134, v183, v180, 0xc0c0004
	v_dual_mov_b32 v57, s18 :: v_dual_mov_b32 v56, s17
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v63, v236, v179, 0xc0c0004
	v_perm_b32 v236, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v205, v206, v205, 0xc0c0004
	v_dual_mov_b32 v55, s16 :: v_dual_mov_b32 v54, s15
	v_dual_mov_b32 v53, s14 :: v_dual_mov_b32 v52, s13
	v_mov_b32_e32 v51, s12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v206, v240, v239, 0xc0c0004
	v_lshl_or_b32 v64, v63, 16, v62
	v_lshl_or_b32 v63, v236, 16, v134
	v_perm_b32 v59, v60, v59, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[176:183], v[147:150], v[45:48], v[51:58] neg_lo:[1,1,0]
	v_lshl_or_b32 v62, v206, 16, v205
	ds_load_u8 v60, v191
	ds_load_u8 v134, v192
	ds_load_u8 v189, v189
	ds_load_u8 v191, v195
	ds_load_u8 v192, v196
	ds_load_u8 v193, v193
	ds_load_u8 v194, v194
	ds_load_u8 v190, v190
	ds_load_u8 v195, v199
	ds_load_u8 v196, v201
	ds_load_u8 v197, v197
	ds_load_u8 v199, v204
	ds_load_u8 v201, v235
	ds_load_u8 v202, v202
	ds_load_u8 v203, v203
	ds_load_u8 v198, v198
	ds_load_u8 v205, v61
	ds_load_u8 v129, v129
	ds_load_u8 v49, v49
	ds_load_u8 v137, v137
	ds_load_u8 v151, v151
	ds_load_u8 v130, v130
	ds_load_u8 v136, v136
	ds_load_u8 v50, v50
	ds_load_u8 v175, v175
	ds_load_u8 v184, v184
	ds_load_u8 v152, v152
	ds_load_u8 v187, v187
	ds_load_u8 v188, v188
	ds_load_u8 v185, v185
	ds_load_u8 v186, v186
	ds_load_u8 v153, v153
	v_perm_b32 v61, v207, v200, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v60, v134, v60, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v134, v190, v189, 0xc0c0004
	v_perm_b32 v189, v192, v191, 0xc0c0004
	v_perm_b32 v190, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v191, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v192, v198, v197, 0xc0c0004
	v_perm_b32 v193, v201, v199, 0xc0c0004
	v_perm_b32 v194, v203, v202, 0xc0c0004
	v_lshl_or_b32 v61, v61, 16, v59
	v_lshl_or_b32 v204, v134, 16, v60
	v_lshl_or_b32 v203, v190, 16, v189
	v_lshl_or_b32 v202, v192, 16, v191
	v_lshl_or_b32 v201, v194, 16, v193
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v59, v129, v205, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	v_perm_b32 v50, v151, v137, 0xc0c0004
	v_perm_b32 v60, v136, v130, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v129, v184, v175, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v153, v152, 0xc0c0004
	v_perm_b32 v134, v188, v187, 0xc0c0004
	v_perm_b32 v136, v186, v185, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[184:191], v[201:204], v[45:48], v[51:58] neg_lo:[1,1,0]
	v_lshl_or_b32 v48, v49, 16, v59
	v_lshl_or_b32 v47, v60, 16, v50
	v_lshl_or_b32 v46, v130, 16, v129
	v_lshl_or_b32 v45, v136, 16, v134
	v_wmma_i32_16x16x16_iu8 v[192:199], v[147:150], v[41:44], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[201:204], v[41:44], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[176:183], v[61:64], v[37:40], v[176:183] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[184:191], v[45:48], v[37:40], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[192:199], v[61:64], v[33:36], v[192:199] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[51:58], v[45:48], v[33:36], v[51:58] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v151, v176
	v_cvt_f32_i32_e32 v175, v177
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v176, v180
	v_cvt_f32_i32_e32 v177, v181
	v_cvt_f32_i32_e32 v180, v182
	v_cvt_f32_i32_e32 v181, v183
	v_cvt_f32_i32_e32 v182, v184
	v_cvt_f32_i32_e32 v183, v185
	v_cvt_f32_i32_e32 v50, v186
	v_cvt_f32_i32_e32 v185, v187
	v_cvt_f32_i32_e32 v49, v188
	v_cvt_f32_i32_e32 v184, v189
	v_cvt_f32_i32_e32 v186, v190
	v_cvt_f32_i32_e32 v187, v191
	v_cvt_f32_i32_e32 v188, v192
	v_cvt_f32_i32_e32 v189, v193
	v_cvt_f32_i32_e32 v190, v194
	v_cvt_f32_i32_e32 v191, v195
	v_cvt_f32_i32_e32 v152, v196
	v_cvt_f32_i32_e32 v153, v197
	v_cvt_f32_i32_e32 v149, v198
	v_cvt_f32_i32_e32 v150, v199
	v_cvt_f32_i32_e32 v147, v51
	v_cvt_f32_i32_e32 v148, v52
	v_cvt_f32_i32_e32 v136, v53
	v_cvt_f32_i32_e32 v137, v54
	v_cvt_f32_i32_e32 v239, v55
	v_cvt_f32_i32_e32 v240, v56
	v_cvt_f32_i32_e32 v235, v57
	v_cvt_f32_i32_e32 v236, v58
.LBB0_16:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s35, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s35, s0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s26, s26, s27
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s0, s34
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(4)
	v_add_lshl_u32 v33, v133, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v34, v132, s1, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v35, v131, s0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v131.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_mov_b16_e64 v131.h, v174.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e64 v192.h, v131.l
	v_mov_b16_e64 v133.h, v131.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v34, v34, s[20:23], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v132.h, v131.l
	v_mov_b16_e64 v134.h, v131.l
	v_mov_b16_e64 v172.h, v131.l
	v_mov_b16_e64 v174.h, v131.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v40, v25, v131
	v_mul_f32_e32 v36, v26, v131
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v45, v22, v131
	v_mul_f32_e32 v46, v21, v131
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v40, v231, v125
	v_fma_f32 v36, v36, v232, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v45, v45, v140, v120
	v_fma_f32 v46, v46, v139, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v125, v125, v40, s2
	v_cndmask_b32_e64 v126, v126, v36, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v120, v120, v45, s2
	v_cndmask_b32_e64 v119, v119, v46, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v39, v33, s[8:11], 0 offen
	buffer_load_u16 v38, v35, s[8:11], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v33, v173, s1, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v146, v34 offset:34816
	s_waitcnt lgkmcnt(0)
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v140, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_and_b32_e32 v35, 15, v0
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v173.h, v131.l
	.loc	1 370 31 is_stmt 1              ; generate_amdgcn.py:370:31
	buffer_load_u16 v37, v33, s[20:23], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v33, 0xf0, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v130, s27, v35
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v34, 1, v33
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v33.h, v172.l
	v_mov_b16_e64 v33.l, v131.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v32, v131
	v_mul_f32_e32 v42, v31, v131
	v_mul_f32_e32 v35, v29, v131
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v129, s26, s33, v34
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v32, v33
	v_mul_f32_e32 v29, v29, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v42, v42, v141, v123
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v141, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v26, v26, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v41, v41, v142, v124
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v142, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v30, v131
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v43, v28, v131 :: v_dual_mul_f32 v22, v22, v33
	v_dual_mul_f32 v44, v27, v131 :: v_dual_mul_f32 v25, v25, v33
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v30, v30, v33
	v_mul_f32_e32 v31, v31, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v43, v43, v230, v122
	v_fma_f32 v44, v44, v229, v121
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v29, v29, v228, v87
	v_fma_f32 v30, v30, v138, v118
	v_fma_f32 v31, v31, v255, v114
	v_fma_f32 v32, v32, v135, v115
	v_fma_f32 v35, v35, v143, v127
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v59, v20, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v124, v124, v41, s2
	v_cndmask_b32_e64 v123, v123, v42, s2
	v_cndmask_b32_e64 v122, v122, v43, s2
	v_cndmask_b32_e64 v121, v121, v44, s2
	v_cndmask_b32_e64 v118, v118, v30, s2
	v_cndmask_b32_e64 v143, v87, v29, s2
	v_cndmask_b32_e64 v115, v115, v32, s2
	v_cndmask_b32_e64 v114, v114, v31, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[29:32], v145 offset:34816
	ds_load_b128 v[41:44], v145 offset:34832
	v_mul_f32_e32 v48, v9, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v59, v59, v254, v99
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v28, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v34, v34, v144, v128
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v127, v127, v35, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v25, v25, v226, v116
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v99, v59, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v26, v227, v117
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v128, v128, v34, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v22, v22, v253, v111
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v116, v25, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v20, v20, v131
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v117, v26, s2
	s_mov_b32 s26, 0x7ffffffe
	v_cndmask_b32_e64 v22, v111, v22, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v60, v19, v33 :: v_dual_lshlrev_b32 v99, 16, v39
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v53, v12, v33
	v_mul_f32_e32 v54, v11, v33
	v_mul_f32_e32 v47, v10, v33
	v_mul_f32_e32 v27, v27, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v60, v60, v251, v98
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v21, v21, v33
	v_mul_f32_e32 v51, v24, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v48, v48, v140, v108
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v140, v15, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v98, v60, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v52, v23, v33 :: v_dual_mul_f32 v39, v29, v99
	v_mul_f32_e32 v55, v18, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v140, v140, v247, v90
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v56, v17, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v6, v33
	v_mul_f32_e32 v58, v5, v33
	v_mul_f32_e32 v61, v8, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v98, v90, v140, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v90, v43, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v53, v218, v105
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v62, v7, v33
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v63, v14, v33
	v_mul_f32_e32 v64, v13, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v135, v2, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v105, v105, v53, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v53, v41, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v54, v54, v211, v104
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v138, v1, v33
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v139, v16, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v108, v108, v48, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v32, v99
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v104, v104, v54, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v54, v44, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v47, v47, v141, v109
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v141, v4, v33
	v_mul_f32_e32 v33, v3, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v138, v138, v142, v92
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v21, v21, v252, v110
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v28, v224, v113
	v_fma_f32 v61, v61, v223, v97
	v_fma_f32 v142, v33, v217, v88
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[33:36], v145 offset:35328
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v139, v139, v250, v91
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v110, v110, v21, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v21, 16, v38
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v38, v30, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v27, v27, v222, v112
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v52, v52, v245, v106
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v113, v28, s2
	v_cndmask_b32_e64 v61, v97, v61, s2
	v_cndmask_b32_e64 v97, v91, v139, s2
	v_cndmask_b32_e64 v87, v112, v27, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[25:28], v145 offset:35344
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v106, v106, v52, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v42, v99
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v51, v51, v248, v107
	v_fma_f32 v63, v63, v244, v95
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v135, v135, v210, v93
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v109, v47, s2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v107, v107, v51, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v91, v34, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v58, v58, v212, v100
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v51, v31, v99
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v63, v95, v63, s2
	v_cndmask_b32_e64 v95, v93, v135, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v100, v58, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v100, v36, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v57, v57, v219, v101
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_barrier
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v93, v32, v21
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v32, v38, v171, v40
	v_fma_f32 v38, v51, v166, v87
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v101, v57, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v101, v35, v99
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v64, v64, v242, v94
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v112, v53, v164, v108
	v_fma_f32 v113, v54, v169, v105
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_store_b32 v146, v37 offset:34816
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v94, v64, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v94, v31, v21
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v39, v170, v45
	v_fma_f32 v39, v48, v167, v46
	v_fma_f32 v48, v52, v165, v47
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_barrier
	ds_load_b128 v[51:54], v145 offset:34816
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v109, v28, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v62, v62, v221, v96
	v_fma_f32 v141, v141, v220, v89
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v29, v29, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v139, v46, v39, s3
	v_cndmask_b32_e64 v135, v40, v32, s3
	v_cndmask_b32_e64 v62, v96, v62, s2
	v_cndmask_b32_e64 v96, v92, v138, s2
	v_cndmask_b32_e64 v89, v89, v141, s2
	v_cndmask_b32_e64 v138, v45, v31, s3
	v_cndmask_b32_e64 v141, v47, v48, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v101, v101, v158, v62
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_load_b128 v[45:48], v145 offset:34832
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v30, v21
	v_mul_f32_e32 v92, v33, v99
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v55, v55, v249, v103
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v116, v29, v162, v125
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v140, v87, v38, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_load_b128 v[37:40], v145 offset:35328
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v62, v101, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v101, v53, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v117, v30, v163, v126
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_load_b128 v[29:32], v145 offset:35344
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v56, v56, v246, v102
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v103, v55, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v103, v25, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v91, v91, v155, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v88, v88, v142, s2
	v_cndmask_b32_e64 v56, v102, v56, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v102, v26, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v103, v103, v156, v96
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v111, v27, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v90, v90, v168, v104
	v_fma_f32 v92, v92, v154, v58
	v_fma_f32 v100, v100, v159, v61
	v_fma_f32 v102, v102, v157, v95
	v_fma_f32 v109, v109, v161, v89
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v57, v91, s3
	v_cndmask_b32_e64 v91, v96, v103, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v96, v51, v99
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v111, v111, v160, v88
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v104, v104, v90, s3
	v_cndmask_b32_e64 v58, v58, v92, s3
	v_cndmask_b32_e64 v61, v61, v100, s3
	v_cndmask_b32_e64 v92, v95, v102, s3
	v_cndmask_b32_e64 v90, v89, v109, s3
	v_cndmask_b32_e64 v89, v126, v117, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v100, v54, v99
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v102, v46, v99
	v_dual_mul_f32 v109, v48, v99 :: v_dual_mul_f32 v54, v54, v21
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v126, v29, v99
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v96, v96, v151, v143
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v108, v108, v112, s3
	v_cndmask_b32_e64 v88, v88, v111, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v95, v52, v99
	v_dual_mul_f32 v111, v47, v99 :: v_dual_mul_f32 v52, v52, v21
	v_mul_f32_e32 v112, v38, v99
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v101, v101, v178, v114
	v_fma_f32 v102, v102, v177, v22
	v_fma_f32 v49, v126, v49, v64
	v_fma_f32 v54, v54, v191, v124
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v126, v143, v96, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v112, v112, v183, v55
	v_fma_f32 v52, v52, v189, v128
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v101, v114, v101, s3
	v_cndmask_b32_e64 v102, v22, v102, s3
	v_cndmask_b32_e64 v96, v124, v54, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v126
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v105, v105, v113, s3
	v_cndmask_b32_e64 v87, v125, v116, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v103, v45, v99
	v_dual_mul_f32 v113, v37, v99 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v101
	v_mul_f32_e32 v117, v39, v99
	v_mul_f32_e32 v125, v30, v99
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v109, v109, v181, v107
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v55, v112, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v53, v53, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v128, v52, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v128, 0xbfb8aa3b, v96
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v116, v40, v99
	v_mul_f32_e32 v142, v32, v99
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v95, v95, v175, v118
	v_fma_f32 v100, v100, v179, v115
	v_fma_f32 v103, v103, v176, v110
	v_fma_f32 v50, v117, v50, v60
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v107, v107, v109, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v51, v51, v21 :: v_dual_mul_f32 v112, 0xbfb8aa3b, v55
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v53, v53, v190, v123
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v99, v31, v99
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v54
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v128
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v113, v113, v182, v56
	v_fma_f32 v116, v116, v185, v59
	v_fma_f32 v117, v125, v184, v63
	v_fma_f32 v125, v142, v187, v97
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v118, v118, v95, s3
	v_cndmask_b32_e64 v100, v115, v100, s3
	v_cndmask_b32_e64 v103, v110, v103, s3
	v_cndmask_b32_e64 v50, v60, v50, s3
	v_cndmask_b32_e64 v95, v123, v53, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v110, 0xbfb8aa3b, v107
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v51, v51, v188, v127
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v112
	v_cndmask_b32_e64 v128, 0, 0x42800000, s19
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v126
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v99, v99, v186, v98
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v56, v113, s3
	v_cndmask_b32_e64 v59, v59, v116, s3
	v_cndmask_b32_e64 v60, v63, v117, s3
	v_cndmask_b32_e64 v49, v64, v49, s3
	v_cndmask_b32_e64 v63, v97, v125, s3
	v_cndmask_b32_e64 v64, v98, v99, s3
	v_cndmask_b32_e64 v51, v127, v51, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v97, 0xbfb8aa3b, v100
	v_dual_mul_f32 v99, 0xbfb8aa3b, v102 :: v_dual_fmac_f32 v54, 0xbfb8aa3b, v101
	v_dual_mul_f32 v127, 0xbfb8aa3b, v95 :: v_dual_fmac_f32 v128, 0xbfb8aa3b, v96
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v110
	v_cndmask_b32_e64 v112, 0, 0x42800000, s9
	v_mul_f32_e32 v113, 0xbfb8aa3b, v50
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v111, v111, v180, v106
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v53, 0xbfb8aa3b, v118 :: v_dual_mul_f32 v114, 0xbfb8aa3b, v59
	v_mul_f32_e32 v116, 0xbfb8aa3b, v60
	v_mul_f32_e32 v124, 0xbfb8aa3b, v51
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v97
	v_cndmask_b32_e64 v110, 0, 0x42800000, s7
	v_fmac_f32_e32 v112, 0xbfb8aa3b, v55
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v113
	v_exp_f32_e32 v54, v54
	v_exp_f32_e32 v128, v128
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v106, v106, v111, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v111, 0xbfb8aa3b, v56 :: v_dual_fmac_f32 v110, 0xbfb8aa3b, v107
	v_cndmask_b32_e64 v97, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v114
	v_cndmask_b32_e64 v113, 0, 0x42800000, s12
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v116
	v_cndmask_b32_e64 v145, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v166, 0, 0xffffffc0, s19
	v_exp_f32_e32 v22, v22
	v_cndmask_b32_e64 v114, 0, 0x42800000, s11
	v_mul_f32_e32 v115, 0xbfb8aa3b, v49
	v_cndmask_b32_e64 v116, 0, 0x42800000, s13
	v_cndmask_b32_e64 v143, 0, 0xffffffc0, s0
	v_exp_f32_e32 v110, v110
	v_ldexp_f32 v54, v54, v145
	v_fmac_f32_e32 v97, 0xbfb8aa3b, v100
	v_ldexp_f32 v128, v128, v166
	v_fmac_f32_e32 v113, 0xbfb8aa3b, v50
	v_dual_mul_f32 v123, 0xbfb8aa3b, v63 :: v_dual_fmac_f32 v116, 0xbfb8aa3b, v60
	v_cndmask_b32_e64 v154, 0, 0xffffffc0, s7
	v_fmac_f32_e32 v114, 0xbfb8aa3b, v59
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v115
	v_ldexp_f32 v22, v22, v143
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v97, v97
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v128, 1.0, v128
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v113, v113
	v_dual_mul_f32 v125, 0xbfb8aa3b, v52 :: v_dual_add_f32 v22, 1.0, v22
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v99
	v_cndmask_b32_e64 v115, 0, 0x42800000, s14
	v_cndmask_b32_e64 v144, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v159, 0, 0xffffffc0, s12
	v_exp_f32_e32 v116, v116
	v_ldexp_f32 v110, v110, v154
	v_cndmask_b32_e64 v99, 0, 0x42800000, s5
	v_cndmask_b32_e64 v160, 0, 0xffffffc0, s13
	v_fmac_f32_e32 v115, 0xbfb8aa3b, v49
	v_ldexp_f32 v97, v97, v144
	v_ldexp_f32 v113, v113, v159
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v110, 1.0, v110
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v144, null, v22, v22, v126
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v116, v116, v160
	v_fmac_f32_e32 v99, 0xbfb8aa3b, v102
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v113, 1.0, v113
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v160, null, v110, v110, v107
	v_rcp_f32_e32 v185, v144
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v124
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v116, 1.0, v116
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v99, v99
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v170, null, v113, v113, v50
	v_rcp_f32_e32 v190, v160
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v98, 0xbfb8aa3b, v103
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v125
	v_cndmask_b32_e64 v124, 0, 0x42800000, s18
	v_cndmask_b32_e64 v146, 0, 0xffffffc0, s5
	v_exp_f32_e32 v112, v112
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v196, v170
	v_fma_f32 v206, -v144, v185, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v117, 0xbfb8aa3b, v64 :: v_dual_fmac_f32 v124, 0xbfb8aa3b, v51
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v98
	v_cndmask_b32_e64 v125, 0, 0x42800000, s17
	v_cndmask_b32_e64 v156, 0, 0xffffffc0, s9
	v_ldexp_f32 v99, v99, v146
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v185, v206, v185
	v_fma_f32 v206, -v160, v190, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v98, 0, 0x42800000, s6
	v_mul_f32_e32 v109, 0xbfb8aa3b, v106
	v_fmac_f32_e32 v125, 0xbfb8aa3b, v52
	v_exp_f32_e32 v124, v124
	v_ldexp_f32 v112, v112, v156
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v118
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v190, v206, v190
	v_fma_f32 v206, -v170, v196, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v99, 1.0, v99
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v98, 0xbfb8aa3b, v103
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v109
	v_cndmask_b32_e64 v165, 0, 0xffffffc0, s18
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v112, 1.0, v112
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v53, v53
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v196, v206, v196
	v_div_scale_f32 v156, null, v99, v99, v102
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v109, 0, 0x42800000, s8
	v_cndmask_b32_e64 v142, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v115, v115
	v_ldexp_f32 v124, v124, v165
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v188, v156
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v111
	v_fmac_f32_e32 v109, 0xbfb8aa3b, v106
	v_cndmask_b32_e64 v161, 0, 0xffffffc0, s14
	v_exp_f32_e32 v98, v98
	v_exp_f32_e32 v125, v125
	v_ldexp_f32 v53, v53, v142
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v124, 1.0, v124
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v111, 0, 0x42800000, s10
	v_cndmask_b32_e64 v151, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v164, 0, 0xffffffc0, s17
	v_ldexp_f32 v115, v115, v161
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v154, null, v54, v54, v101
	v_div_scale_f32 v181, null, v124, v124, v51
	v_fma_f32 v211, -v156, v188, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v98, v98, v151
	v_fmac_f32_e32 v111, 0xbfb8aa3b, v56
	v_ldexp_f32 v125, v125, v164
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v164, null, v112, v112, v55
	v_rcp_f32_e32 v187, v154
	v_rcp_f32_e32 v202, v181
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v115, 1.0, v115 :: v_dual_fmac_f32 v188, v211, v188
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v142, null, v53, v53, v118
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v98, 1.0, v98
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v111, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v177, null, v115, v115, v49
	v_rcp_f32_e32 v184, v142
	v_rcp_f32_e32 v193, v164
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v127
	v_cndmask_b32_e64 v157, 0, 0xffffffc0, s10
	v_exp_f32_e32 v109, v109
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v198, v177
	v_fma_f32 v210, -v154, v187, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v127, 0, 0x42800000, s20
	v_cndmask_b32_e64 v155, 0, 0xffffffc0, s8
	v_ldexp_f32 v111, v111, v157
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v205, -v142, v184, 1.0
	v_fmac_f32_e32 v187, v210, v187
	v_fma_f32 v210, -v164, v193, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v127, 0xbfb8aa3b, v95
	v_ldexp_f32 v109, v109, v155
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v143, vcc_lo, v118, v53, v118
	v_dual_fmac_f32 v184, v205, v184 :: v_dual_add_f32 v111, 1.0, v111
	v_fmac_f32_e32 v193, v210, v193
	v_fma_f32 v210, -v177, v198, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v109, 1.0, v109
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v117
	v_exp_f32_e32 v114, v114
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v123
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v198, v210, v198
	v_mul_f32_e32 v210, v143, v184
	v_div_scale_f32 v166, null, v111, v111, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v117, 0, 0x42800000, s16
	v_cndmask_b32_e64 v158, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v123, 0, 0x42800000, s15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v194, v166
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v163, 0, 0xffffffc0, s16
	v_cndmask_b32_e64 v162, 0, 0xffffffc0, s15
	v_ldexp_f32 v114, v114, v158
	v_fmac_f32_e32 v123, 0xbfb8aa3b, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v158, null, v98, v98, v103
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v127, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v114, 1.0, v114
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v123, v123
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v211, -v166, v194, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v97, 1.0, v97
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v189, v158
	v_div_scale_f32 v168, null, v114, v114, v59
	v_fmac_f32_e32 v194, v211, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v146, null, v97, v97, v100
	v_rcp_f32_e32 v195, v168
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v167, 0, 0xffffffc0, s20
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v123, v123, v162
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v186, v146
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v205, -v158, v189, 1.0
	v_div_scale_f32 v162, null, v109, v109, v106
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v127, v127, v167
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v175, null, v116, v116, v60
	v_fmac_f32_e32 v189, v205, v189
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v205, -v168, v195, 1.0
	v_rcp_f32_e32 v191, v162
	v_fma_f32 v207, -v146, v186, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v117, 0xbfb8aa3b, v64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v165, s12, v55, v112, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v195, v205, v195 :: v_dual_fmac_f32 v186, v207, v186
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v117, v117
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v127, 1.0, v127
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v197, v175
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v207, -v162, v191, 1.0
	v_div_scale_f32 v176, s0, v60, v116, v60
	v_div_scale_f32 v145, s5, v126, v22, v126
	v_fmac_f32_e32 v191, v207, v191
	v_div_scale_f32 v151, s6, v100, v97, v100
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v117, v117, v163
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v207, -v175, v197, 1.0
	v_div_scale_f32 v155, s7, v101, v54, v101
	v_div_scale_f32 v167, s13, v56, v111, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v117, 1.0, v117
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v197, v207, v197
	v_fma_f32 v207, -v181, v202, 1.0
	v_div_scale_f32 v157, s8, v102, v99, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v179, null, v117, v117, v64
	v_fmac_f32_e32 v202, v207, v202
	v_div_scale_f32 v161, s10, v107, v110, v107
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v200, v179
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v125, 1.0, v125
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v159, s9, v103, v98, v103
	v_div_scale_f32 v163, s11, v106, v109, v106
	v_div_scale_f32 v169, s4, v59, v114, v59
	v_div_scale_f32 v182, null, v128, v128, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v205, -v179, v200, 1.0
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v45, v45, v21 :: v_dual_mul_f32 v24, v24, v131
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v203, v182
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v12, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v200, v205, v200
	v_fma_f32 v205, -v142, v210, v143
	v_div_scale_f32 v171, s1, v50, v113, v50
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v45, v45, v152, v119
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v10, v131
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v210, v205, v184
	v_mul_f32_e32 v205, v145, v185
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v42, v42, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v119, v45, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v48, v48, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v142, -v142, v210, v143
	v_dual_mul_f32 v143, v151, v186 :: v_dual_mul_f32 v18, v18, v131
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v44, v44, v21
	v_mul_f32_e32 v6, v6, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v142, v142, v184, v210
	v_fma_f32 v184, -v146, v143, v151
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v210, s16, v64, v117, v64
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v53, v142, v53, v118
	v_mul_f32_e32 v118, v165, v193
	v_div_scale_f32 v183, null, v127, v127, v95
	v_fmac_f32_e32 v143, v184, v186
	v_mul_f32_e32 v142, v167, v194
	v_div_scale_f32 v184, s18, v51, v124, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v204, v183
	v_fma_f32 v146, -v146, v143, v151
	v_dual_mul_f32 v151, v157, v188 :: v_dual_mul_f32 v38, v38, v21
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v23, v23, v131
	v_mul_f32_e32 v47, v47, v21
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v34, v21
	v_mul_f32_e32 v41, v41, v21
	v_mul_f32_e32 v11, v11, v131
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v17, v17, v131
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v207, -v183, v204, 1.0
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v123, 1.0, v123
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v37, v37, v21
	v_dual_mul_f32 v19, v19, v131 :: v_dual_mul_f32 v30, v30, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v204, v207, v204
	v_fma_f32 v207, -v144, v205, v145
	v_div_scale_f32 v178, null, v123, v123, v63
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v39, v39, v21 :: v_dual_mul_f32 v2, v2, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v205, v207, v185
	v_rcp_f32_e32 v199, v178
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v40, v40, v21 :: v_dual_mul_f32 v5, v5, v131
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v8, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v144, -v144, v205, v145
	v_dual_mul_f32 v145, v155, v187 :: v_dual_mul_f32 v36, v36, v21
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v14, v14, v131 :: v_dual_mul_f32 v33, v33, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v144, v144, v185, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v205, -v154, v145, v155
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v211, -v178, v199, 1.0
	v_div_fmas_f32 v143, v146, v186, v143
	v_mul_f32_e32 v146, v161, v190
	v_fmac_f32_e32 v145, v205, v187
	v_fma_f32 v205, -v156, v151, v157
	v_div_scale_f32 v180, null, v125, v125, v52
	v_div_fixup_f32 v126, v144, v22, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v154, -v154, v145, v155
	v_fmac_f32_e32 v151, v205, v188
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v201, v180
	v_dual_mul_f32 v144, v210, v200 :: v_dual_mul_f32 v185, v159, v189
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v156, -v156, v151, v157
	v_div_fmas_f32 v145, v154, v187, v145
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v22, -v158, v185, v159
	v_div_scale_f32 v207, s17, v52, v125, v52
	v_div_fmas_f32 v151, v156, v188, v151
	v_fma_f32 v156, -v160, v146, v161
	v_fma_f32 v206, -v180, v201, 1.0
	v_fmac_f32_e32 v185, v22, v189
	v_fma_f32 v22, -v164, v118, v165
	v_div_fixup_f32 v97, v143, v97, v100
	v_fmac_f32_e32 v146, v156, v190
	v_mul_f32_e32 v154, v176, v197
	v_mul_f32_e32 v186, v163, v191
	v_dual_mul_f32 v100, v184, v202 :: v_dual_fmac_f32 v199, v211, v199
	v_fmac_f32_e32 v118, v22, v193
	v_div_fixup_f32 v54, v145, v54, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v143, -v162, v186, v163
	v_fmac_f32_e32 v201, v206, v201
	v_div_scale_f32 v206, s14, v49, v115, v49
	v_fma_f32 v164, -v164, v118, v165
	v_fmac_f32_e32 v186, v143, v191
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v212, v207, v201 :: v_dual_mul_f32 v155, v169, v195
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v165.h, v131.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v101, v138, v126
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v158, -v158, v185, v159
	v_fma_f32 v160, -v160, v146, v161
	v_fma_f32 v143, -v168, v155, v169
	s_mov_b32 vcc_lo, s9
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v132.l, v101.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v187, v206, v198
	v_fma_f32 v162, -v162, v186, v163
	v_fmac_f32_e32 v155, v143, v195
	v_div_fixup_f32 v99, v151, v99, v102
	v_fma_f32 v211, -v182, v203, 1.0
	v_fma_f32 v143, -v177, v187, v206
	v_fma_f32 v156, -v166, v142, v167
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v54, v140, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v168, -v168, v155, v169
	v_fmac_f32_e32 v203, v211, v203
	v_fmac_f32_e32 v187, v143, v198
	v_fmac_f32_e32 v142, v156, v194
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v134.l, v54.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v205, v171, v196
	v_fma_f32 v143, -v180, v212, v207
	v_fma_f32 v177, -v177, v187, v206
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v206, v46, v21
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v46, v135, v53
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v53, v158, v189, v185
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v166, -v166, v142, v167
	v_div_fmas_f32 v126, v160, v190, v146
	s_mov_b32 vcc_lo, s11
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v133.l, v46.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v102, v162, v191, v186
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v53, v53, v98, v103
	v_div_fmas_f32 v98, v164, v193, v118
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s7, v46, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v102, v102, v109, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v106, 1, v133
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v156, -v175, v154, v176
	v_div_fixup_f32 v55, v98, v112, v55
	s_mov_b32 vcc_lo, s13
	v_div_scale_f32 v211, s15, v63, v123, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v46, v46, v106, 0x7fff
	v_and_b32_e32 v106, 1, v134
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v170, v205, v171
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v55, v57, v55
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v103, v126, v110, v107
	v_div_fmas_f32 v107, v166, v194, v142
	v_fmac_f32_e32 v212, v143, v201
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v143.h, v131.l
	v_mov_b16_e64 v143.l, v55.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v205, v22, v196 :: v_dual_fmac_f32 v154, v156, v197
	v_div_fixup_f32 v56, v107, v111, v56
	v_mul_f32_e32 v157, v211, v199
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v170, -v170, v205, v171
	v_fma_f32 v175, -v175, v154, v176
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v167.h, v131.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v53, v108, v53
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v108, v168, v195, v155
	s_mov_b32 vcc_lo, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v56, v58, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v178, v157, v211
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v103, v105, v103
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v105, v170, v196, v205
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v156, -v179, v144, v210
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v102, v104, v102
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v104, v175, v197, v154
	v_fmac_f32_e32 v157, v22, v199
	s_mov_b32 vcc_lo, s14
	v_fmac_f32_e32 v144, v156, v200
	v_div_fixup_f32 v59, v108, v114, v59
	v_div_fixup_f32 v60, v104, v116, v60
	v_fma_f32 v178, -v178, v157, v211
	v_fma_f32 v22, -v181, v100, v184
	v_fma_f32 v179, -v179, v144, v210
	v_fma_f32 v180, -v180, v212, v207
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v60, v92, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v57, v177, v198, v187
	s_mov_b32 vcc_lo, s15
	v_div_fixup_f32 v50, v105, v113, v50
	v_div_fmas_f32 v58, v178, v199, v157
	s_mov_b32 vcc_lo, s16
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v59, v61, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v61, v179, v200, v144
	s_mov_b32 vcc_lo, s17
	v_fmac_f32_e32 v100, v22, v202
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v188.h, v131.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v97, v139, v97 :: v_dual_mul_f32 v62, v62, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v54, v54
	v_and_b32_e32 v98, 1, v132
	v_add3_u32 v54, v54, v106, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v57, v57, v115, v49
	v_div_fmas_f32 v50, v180, v201, v212
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v188.l, v56.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v58, v58, v123, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v161.h, v131.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v181, -v181, v100, v184
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s8, v101, v101
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v99, v141, v99 :: v_dual_mul_f32 v58, v90, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v98, v101, v98, 0x7fff
	v_cndmask_b16 v49.l, 0x7fff, v54.h, s4
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v57, v91, v57 :: v_dual_and_b32 v54, 1, v143
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v161.l, v62.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v52, v50, v125, v52
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v91, 1, v188
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s7
	v_cmp_o_f32_e64 s7, v55, v55
	v_cndmask_b16 v46.l, 0x7fff, v98.h, s8
	v_cmp_o_f32_e64 s8, v56, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v92, v181, v202, v100
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v54, v55, v54, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v52, v89, v52 :: v_dual_and_b32 v55, 1, v161
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v56, v56, v91, 0x7fff
	v_mov_b16_e64 v167.l, v58.h
	v_mov_b16_e64 v171.h, v131.l
	v_cmp_o_f32_e64 s4, v62, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v51, v92, v124, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v55, v62, v55, 0x7fff
	v_mov_b16_e64 v171.l, v52.h
	v_cndmask_b16 v91.l, 0x7fff, v56.h, s8
	v_and_b32_e32 v56, 1, v167
	v_mov_b16_e64 v173.l, v53.h
	v_mov_b16_e64 v165.l, v57.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v51, v87, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v87.l, 0x7fff, v55.h, s4
	v_and_b32_e32 v55, 1, v171
	v_and_b32_e32 v104, 1, v173
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v210, s5, v96, v128, v96
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v53, v53
	v_cndmask_b16 v91.h, 0x7fff, v54.h, s7
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v53, v53, v104, 0x7fff
	v_and_b32_e32 v54, 1, v165
	v_cmp_o_f32_e64 s7, v52, v52
	v_add3_u32 v52, v52, v55, 0x7fff
	v_mov_b16_e64 v156.h, v131.l
	v_mov_b16_e64 v176.h, v131.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v207, s6, v95, v127, v95
	v_mul_f32_e32 v184, v210, v203
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v156.l, v102.h
	v_cndmask_b16 v50.l, 0x7fff, v53.h, s0
	v_cmp_o_f32_e64 s0, v57, v57
	v_mov_b16_e64 v176.l, v51.h
	v_add3_u32 v54, v57, v54, 0x7fff
	v_cndmask_b16 v90.h, 0x7fff, v52.h, s7
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v52, v206, v153, v120
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v172.l, v97.h
	v_mov_b16_e64 v174.l, v99.h
	v_and_b32_e32 v63, 1, v156
	v_and_b32_e32 v57, 1, v176
	v_cndmask_b16 v92.l, 0x7fff, v54.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v54, -v182, v184, v210
	v_mul_f32_e32 v55, v207, v204
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v120, v52, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v159.h, v131.l
	v_mov_b16_e64 v163.h, v131.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v184, v54, v203 :: v_dual_and_b32 v107, 1, v172
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v101, 1, v174
	v_cmp_o_f32_e64 s11, v102, v102
	v_mov_b16_e64 v159.l, v59.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v61, v61, v117, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v63, v102, v63, 0x7fff
	v_mov_b16_e64 v163.l, v60.h
	v_cmp_o_f32_e64 s8, v51, v51
	v_add3_u32 v51, v51, v57, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v54, -v183, v55, v207
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v57, 0xbfb8aa3b, v52
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v99, v99
	v_add3_u32 v99, v99, v101, 0x7fff
	v_and_b32_e32 v53, 1, v159
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v61, v88, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v88.l, 0x7fff, v63.h, s11
	v_and_b32_e32 v63, 1, v163
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v55, v54, v204 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v192.l, v103.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v169.h, v131.l
	v_cmp_o_f32_e64 s9, v97, v97
	v_add3_u32 v97, v97, v107, 0x7fff
	v_and_b32_e32 v98, 1, v192
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_cndmask_b16 v50.h, 0x7fff, v99.h, s1
	v_cmp_o_f32_e64 s1, v60, v60
	v_add3_u32 v53, v59, v53, 0x7fff
	v_mov_b16_e64 v169.l, v61.h
	v_add3_u32 v59, v60, v63, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s10, v103, v103
	v_cndmask_b16 v49.h, 0x7fff, v97.h, s9
	v_add3_u32 v64, v103, v98, 0x7fff
	v_cmp_o_f32_e64 s9, v58, v58
	v_cndmask_b16 v87.h, 0x7fff, v53.h, vcc_lo
	v_and_b32_e32 v53, 1, v169
	v_add3_u32 v56, v58, v56, 0x7fff
	v_cndmask_b16 v92.h, 0x7fff, v59.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v58, -v182, v184, v210
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v52
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v88.h, 0x7fff, v64.h, s10
	v_cmp_o_f32_e64 s10, v61, v61
	v_add3_u32 v53, v61, v53, 0x7fff
	v_cndmask_b16 v89.h, 0x7fff, v56.h, s9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v56, v93, v215, v122
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v58, v58, v203, v184
	v_fma_f32 v59, -v183, v55, v207
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v54, 0, 0x42800000, s1
	v_exp_f32_e32 v57, v57
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s6
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v89.l, 0x7fff, v53.h, s10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v94, v216, v121
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v122, v56, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v55, v59, v204, v55
	v_div_fixup_f32 v58, v58, v128, v96
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v45
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v121, v53, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v55, v55, v127, v95
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v56, v56, v58
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v90.l, 0x7fff, v51.h, s8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v51, v54
	v_ldexp_f32 v54, v57, v59
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v53, v53, v55
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v55.l, v56.h
	v_mov_b16_e64 v55.h, v131.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s1
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v59, v9, v131
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v55, 1, v55
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v51, v51, v57
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v57, null, v54, v54, v52
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v64, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v55, v56, v55, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v56, v57
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v58.h, v131.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v26, v26, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.h, 0x7fff, v55.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v55, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v60, null, v51, v51, v45
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v7, v131
	v_mul_f32_e32 v35, v35, v21
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v13, v13, v131
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v57, v56, 1.0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v4, v131
	v_mul_f32_e32 v1, v1, v131
	v_mul_f32_e32 v25, v25, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v3, v3, v131 :: v_dual_fmac_f32 v56, v61, v56
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v61, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v22, s27, 4, v130
	s_mov_b32 s27, 0x31027000
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v23, v23, v64, v83
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v83, v23, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v10, v10, v55, v86
	scratch_load_b32 v55, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v47, v47, v149, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v86, v10, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v23, v23, v47, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v42, v42, v213, v10
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v24, v24, v61, v84
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v61, vcc_lo, v52, v54, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v10, v42, s3
	v_cndmask_b32_e64 v24, v84, v24, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v63, v61, v56
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v48, v48, v150, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v24, v48, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v57, v63, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v83, 0xbfb8aa3b, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v63, v48, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v57, v63, v61
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v57, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v42, v42, v56, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v42, v42, v54, v52
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v54, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s1
	v_exp_f32_e32 v47, v47
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v47, v47, v52
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v17, v17, v57, v79
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v79, v17, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v12, v12, v54, v82
	scratch_load_b32 v54, off, off offset:196 ; 4-byte Folded Reload
	v_fma_f32 v55, v59, v55, v85
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v59, v60
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v37, v37, v147, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v85, v55, s2
	v_cndmask_b32_e64 v17, v17, v37, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v41, v41, v214, v55
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v62, -v60, v59, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v55, v41, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v59, v62, v59
	v_div_scale_f32 v62, s0, v45, v51, v45
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v64, v62, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v60, v64, v62
	v_fmac_f32_e32 v64, v48, v59
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v56, -v60, v64, v62
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v56, v56, v59, v64
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v23
	v_exp_f32_e32 v42, v48
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v42, v42, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v47, v47, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v52, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v48, v52, 1.0
	v_fmac_f32_e32 v52, v55, v52
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v58.l, v53.h
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v58, 1, v58
	v_add3_u32 v58, v53, v58, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v53, null, v42, v42, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.l, 0x7fff, v58.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v11, v11, v54, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v54, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v81, v11, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v53, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v54, v55, v54
	v_div_fixup_f32 v45, v56, v51, v45
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v56, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v55, s1, v23, v42, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v51.h, v131.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v41, v41, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.l, v10.h
	v_mov_b16_e64 v45.h, v131.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v58, v55, v54 :: v_dual_and_b32 v45, 1, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v45, v10, v45, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v82, v12, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v43, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, vcc_lo, v24, v47, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v44, v208, v10
	v_fma_f32 v12, v12, v209, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v10, v44, s3
	v_cndmask_b32_e64 v11, v11, v12, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v18, v18, v56, v80
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v56, v43, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v80, v18, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v48, v56, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v38, v38, v148, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v56, v57, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v38, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v53, v58, v55
	v_fma_f32 v12, -v48, v56, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v43, 0xbfb8aa3b, v17 :: v_dual_mul_f32 v44, 0xbfb8aa3b, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v58, v38, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v12, v12, v52, v56
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v53, v58, v55
	v_div_fixup_f32 v12, v12, v47, v24
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v47, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v38, v38, v54, v58
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v43, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v10, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v10.h, 0x7fff, v45.h, s0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v45, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v18
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v23, v38, v42, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v51.l, v41.h
	v_cmp_o_f32_e64 s0, v41, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v24, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v11, v23
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v51, 1, v51
	v_mov_b16_e32 v23.l, v12.h
	v_mov_b16_e64 v23.h, v131.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v51, v41, v51, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v24, v24, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v37, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v23, 1, v23
	v_cndmask_b16 v10.l, 0x7fff, v51.h, s0
	v_cmp_o_f32_e64 s0, v12, v12
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v11.h
	v_add3_u32 v23, v12, v23, 0x7fff
	v_mov_b16_e64 v38.h, v131.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v15, v15, v131
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, null, v24, v24, v18
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v37, v37, v41
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s0
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v41, v42
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v11, v38, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v12, null, v37, v37, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_rcp_f32_e32 v44, v12
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v19, v19, v47, v75
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v6, v6, v43, v78
	scratch_load_b32 v43, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v75, v19, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v20, v20, v45, v76
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v12, v44, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v78, v6, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v39, v39, v136, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v76, v20, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v44, v45, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v19, v39, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v39, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v40, v40, v137, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v20, v40, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, s1, v17, v37, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v51, v40, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v20
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v5, v5, v43, v77
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v43, -v42, v41, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v77, v5, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v41, v43, v41
	v_div_scale_f32 v43, vcc_lo, v18, v24, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v33, v33, v225, v5
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v47, v43, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v34, v34, v39, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v12, v51, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v33, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v42, v47, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v34, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v51, v39, v44
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v47, v48, v41 :: v_dual_mul_f32 v48, 0xbfb8aa3b, v19
	v_fma_f32 v12, -v12, v51, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v42, v47, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v33, v39, v40
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v39, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v34, v41, v47
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, s5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v12, v12, v44, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v18, v34, v24, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v19
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v33
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v12, v37, v17
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v18
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v18.h, v131.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v42, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v6.h
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v5, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.l, 0x7fff, v38.h, vcc_lo
	v_mov_b16_e64 v24.h, v131.l
	v_and_b32_e32 v18, 1, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v12, v41, v17
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, null, v11, v11, v20
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v6, v18, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v6, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v33, v17
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.l, v5.h
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v12, v12, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v37, v34
	v_fma_f32 v38, -v17, v33, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v24, v5, v24, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v38, v33
	v_div_scale_f32 v38, vcc_lo, v20, v11, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v8, v8, v39, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v34, v37, 1.0
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s1, v19, v12, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v39, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v6, v7, v6, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v74, v8, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v8, v38, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v73, v6, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v36, v36, v42, v7
	scratch_load_b32 v42, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v17, v8, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v36, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v36, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v8, v40, v33
	v_fma_f32 v40, -v34, v41, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v17, v8, v38
	v_fmac_f32_e32 v41, v40, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v8, v17, v33, v8
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v33, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v17, -v34, v41, v39
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v8, v8, v11, v20
	v_div_fmas_f32 v17, v17, v37, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v7, v8
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v17, v12, v19
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v17, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v18.l, 0x7fff, v24.h, vcc_lo
	v_cmp_o_f32_e64 s4, v7, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v24, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_fma_f32 v35, v35, v42, v6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v35, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v35, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v7.h
	v_mov_b16_e64 v12.h, v131.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(3)
	v_fma_f32 v13, v13, v33, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v12, 1, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v71, v13, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v13, v29, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v12, v7, v12, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v13, v239, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.l, v6.h
	v_mov_b16_e64 v13.h, v131.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v1, v1, v24, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v11, v5, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v13, 1, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v67, v1, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v6, v13, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v13, v16, v131
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v14, v14, v35, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v72, v14, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v20, v30, v240, v14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v14, v20, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v14, 0xbfb8aa3b, v5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v20, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v11, 0xbfb8aa3b, v8
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v11
	v_cndmask_b32_e64 v14, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v11, 0, 0x42800000, s0
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v14, 0xbfb8aa3b, v5 :: v_dual_fmac_f32 v11, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v14, v14
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_ldexp_f32 v11, v11, v16
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v16, off, off offset:188 ; 4-byte Folded Reload
	v_fma_f32 v13, v13, v17, v70
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v70, v13, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v14, v14, v17
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v17, v31, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v19, null, v11, v11, v8
	v_div_scale_f32 v31, s1, v8, v11, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v2, v2, v20, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v14, v14, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v68, v2, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v24, v20
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v15, v15, v16, v69
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v32, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, s4, v5, v14, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v69, v15, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v236, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, v17, v235, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v13, v16, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v16, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v15, v17, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v29, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v19, v16, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v29
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v16, v30, v16
	v_fma_f32 v30, -v20, v24, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, s0
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v33, v31, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v24, v30, v24 :: v_dual_fmac_f32 v29, 0xbfb8aa3b, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v35, -v19, v33, v31
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v29, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v35, v16
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v17, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v30, v32, v24
	v_fma_f32 v19, -v19, v33, v31
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v29, v34
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v34, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v16, v19, v16, v33
	s_mov_b32 vcc_lo, s4
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v17, v17, v13
	v_div_fixup_f32 v8, v16, v11, v8
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v16, off, off offset:160 ; 4-byte Folded Reload
	v_fma_f32 v26, v26, v36, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v26, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v25, v25, v34, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v20, v30, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v25, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v30, v34, v24
	v_div_scale_f32 v34, null, v29, v29, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v30, v32
	v_rcp_f32_e32 v31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v20, v24, v30
	v_fma_f32 v20, -v35, v36, 1.0
	v_div_fixup_f32 v5, v19, v14, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v36, v20, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v20, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v14, vcc_lo, v13, v17, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v3, v16, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v34, v31, 1.0
	v_div_scale_f32 v19, s0, v15, v29, v15
	v_mul_f32_e32 v11, v14, v36
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v31, v24, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v66, v3, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v16, -v35, v11, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v5, v19, v31
	v_dual_fmac_f32 v11, v16, v36 :: v_dual_mul_f32 v16, v27, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v8, -v34, v5, v19
	v_fma_f32 v14, -v35, v11, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v5, v8, v31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v28, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v11, v14, v36, v11
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v34, v5, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v14, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v5, v19, v31, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v5, v29, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v12.l, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v4, v4, v20, v65
	scratch_load_b32 v20, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v65, v4, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v8, v8, v14, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.l, v2.h
	v_mov_b16_e64 v14.h, v131.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v8, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v11, v17, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v1.h
	v_mov_b16_e64 v11.h, v131.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v13, 0x7632 :: v_dual_mul_f32 v4, v4, v8
	v_mov_b16_e64 v8.h, v131.l
	v_and_b32_e32 v6, 1, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v11.l, v4.h
	v_cmp_o_f32_e64 s1, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v6, v1, v6, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v16, v16, v20, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v16, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v5, 1, v14
	v_mov_b16_e32 v8.l, v3.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v5, v2, v5, 0x7fff
	v_cmp_o_f32_e64 s2, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v7, 1, v8
	v_and_b32_e32 v8, 1, v11
	v_mov_b32_e32 v11, 0x5410
	v_add3_u32 v1, v3, v7, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add3_u32 v2, v4, v8, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s0
	s_mov_b32 s0, 0x76543210
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_cndmask_b32_e32 v11, 0x1054, v11, vcc_lo
	v_cndmask_b32_e32 v13, 0x3276, v13, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_dual_cndmask_b32 v2, v46, v50 :: v_dual_cndmask_b32 v5, v49, v88
	v_cndmask_b32_e32 v7, v91, v92, vcc_lo
	v_dual_cndmask_b32 v14, v87, v89 :: v_dual_cndmask_b32 v15, v10, v90
	v_cndmask_b32_e32 v10, v90, v10, vcc_lo
	v_dual_cndmask_b32 v16, v23, v9 :: v_dual_cndmask_b32 v9, v9, v23
	v_cndmask_b32_e32 v17, v3, v18, vcc_lo
	v_cndmask_b32_e32 v3, v18, v3, vcc_lo
	v_dual_cndmask_b32 v1, v50, v46 :: v_dual_cndmask_b32 v4, v88, v49
	v_cndmask_b32_e32 v6, v92, v91, vcc_lo
	v_cndmask_b32_e32 v8, v89, v87, vcc_lo
	v_lshl_or_b32 v11, v11, 8, v11
	v_lshl_or_b32 v13, v13, 8, v13
	v_cndmask_b32_e32 v18, v0, v12, vcc_lo
	v_cndmask_b32_e32 v0, v12, v0, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v11, 0x540054, v11
	v_and_b32_e32 v13, 0x760076, v13
	v_permlanex16_b32 v21, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v11, v11, 4, v11
	v_lshl_or_b32 v12, v13, 4, v13
	v_permlanex16_b32 v13, v14, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v14, 0x5040504, v11
	v_and_b32_e32 v19, 0x7060706, v12
	v_permlanex16_b32 v11, v9, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v0, v2, v1, v14
	v_perm_b32 v1, v2, v1, v19
	v_perm_b32 v2, v5, v4, v14
	v_perm_b32 v3, v5, v4, v19
	v_perm_b32 v4, v7, v6, v14
	v_perm_b32 v5, v7, v6, v19
	v_perm_b32 v6, v13, v8, v14
	v_perm_b32 v7, v13, v8, v19
	v_perm_b32 v8, v10, v15, v14
	v_perm_b32 v9, v10, v15, v19
	v_perm_b32 v10, v11, v16, v14
	v_perm_b32 v11, v11, v16, v19
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v16, v129, v130, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v12, v20, v17, v14
	v_perm_b32 v13, v20, v17, v19
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v17, v129, v22, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v14, v21, v18, v14
	v_perm_b32 v15, v21, v18, v19
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 288
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 288
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 27780
; TotalNumSgprs: 54
; NumVgprs: 256
; ScratchSize: 288
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 54
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 288
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 110
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
