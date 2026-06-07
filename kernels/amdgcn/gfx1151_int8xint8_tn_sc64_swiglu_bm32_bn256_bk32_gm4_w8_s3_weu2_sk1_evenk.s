	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v130, 15, v0
	v_lshlrev_b32_e32 v203, 2, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v207, 4, v0
	v_or_b32_e32 v206, 0x3f0, v0
	s_mov_b32 s49, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v3, 28, v203
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v37, 0, v203
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
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
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s18, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 3, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v1, s26, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s31, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s17
	s_mul_i32 s18, s18, s6
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_lshl_b32 s35, s27, 1
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s22, s3, 5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v2, s35, v2
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s14, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s12, s13, 31
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s18
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s13, s13, 63
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s16, s3, s16
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s14, s13, 31
.Ltmp17:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s16
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v204, v130, 4, v2
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s14, s14, 26
.Ltmp19:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s2, 5
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s3, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s13, s13, s14
.Ltmp21:
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s16, s35, s22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s12, 31
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v205, s27, 5, v204
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s14, s33, s16
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s12, 63
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s14, v204
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v65, v1, v3, s34
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v3, s14, v205
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s16, s27, 6
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s17, s26, s22
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s14, s14, s16
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s15, s26, 5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s2
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s27, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v12, s14, v204
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v3, s2
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v3, s27, v3
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v1, s17, v65
	v_add3_u32 v4, s17, s15, v65
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v13, s14, v205
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 358 39 is_stmt 0              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v22, s27, v12
	v_add3_u32 v20, s14, s27, v205
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v21, 0x80000000, v4, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v23, 0x80000000, v12, s3
	v_cndmask_b32_e64 v24, 0x80000000, v13, s3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[12:15], v2, s[28:31], 0 offen
	buffer_load_b128 v[16:19], v3, s[28:31], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v22, s3
	v_cndmask_b32_e64 v3, 0x80000000, v20, s3
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v1, v1, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[4:7], v5, s[28:31], 0 offen
	buffer_load_b128 v[8:11], v8, s[28:31], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v36, v21, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[20:23], v23, s[28:31], 0 offen
	buffer_load_b128 v[24:27], v24, s[28:31], 0 offen
	buffer_load_b128 v[28:31], v2, s[28:31], 0 offen
	buffer_load_b128 v[32:35], v3, s[28:31], 0 offen
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v3, 16, v130
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s12, 0x5f
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(7)
	ds_store_b32 v37, v1 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(6)
	ds_store_b128 v38, v[4:7]
	s_waitcnt vmcnt(5)
	ds_store_b128 v38, v[8:11] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v38, v[12:15] offset:16384
	ds_store_b128 v38, v[16:19] offset:20480
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v37, v36 offset:33792
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
	v_and_or_b32 v135, 0x70, v2, v130
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v1, 0x3f0, v0
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v4, 0x100, v135
	v_or_b32_e32 v208, 0x1700, v135
	v_or_b32_e32 v209, 0x1800, v135
	v_or_b32_e32 v253, 0x1900, v135
	v_or_b32_e32 v254, 0x1a00, v135
	scratch_store_b32 off, v4, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x200, v135
	v_or_b32_e32 v255, 0x1b00, v135
	v_or_b32_e32 v242, 0x1d00, v135
	v_or_b32_e32 v243, 0x1e00, v135
	v_or_b32_e32 v199, 0x1f00, v135
	scratch_store_b32 off, v4, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x300, v135
	v_or_b32_e32 v200, 0x480, v135
	v_or_b32_e32 v201, 0x580, v135
	v_or_b32_e32 v202, 0x680, v135
	v_or_b32_e32 v249, 0x780, v135
	scratch_store_b32 off, v4, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x400, v135
	v_or_b32_e32 v248, 0x880, v135
	v_or_b32_e32 v247, 0x980, v135
	v_or_b32_e32 v246, 0xa80, v135
	v_or_b32_e32 v245, 0xb80, v135
	scratch_store_b32 off, v4, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x500, v135
	v_or_b32_e32 v244, 0xc80, v135
	v_or_b32_e32 v241, 0xd80, v135
	v_or_b32_e32 v240, 0xe80, v135
	v_or_b32_e32 v239, 0xf80, v135
	scratch_store_b32 off, v4, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x600, v135
	v_or_b32_e32 v238, 0x1080, v135
	v_or_b32_e32 v237, 0x1180, v135
	v_or_b32_e32 v229, 0x1280, v135
	v_or_b32_e32 v230, 0x1380, v135
	scratch_store_b32 off, v4, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x700, v135
	v_or_b32_e32 v231, 0x1480, v135
	v_or_b32_e32 v232, 0x1580, v135
	v_or_b32_e32 v233, 0x1680, v135
	v_or_b32_e32 v234, 0x1780, v135
	scratch_store_b32 off, v4, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x800, v135
	v_or_b32_e32 v235, 0x1880, v135
	v_or_b32_e32 v236, 0x1980, v135
	v_or_b32_e32 v252, 0x1a80, v135
	v_or_b32_e32 v250, 0x1b80, v135
	scratch_store_b32 off, v4, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x900, v135
	v_or_b32_e32 v251, 0x1c80, v135
	v_or_b32_e32 v5, 0x1d80, v135
	scratch_store_b32 off, v4, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xa00, v135
	scratch_store_b32 off, v4, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xb00, v135
	scratch_store_b32 off, v4, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xc00, v135
	scratch_store_b32 off, v4, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xd00, v135
	scratch_store_b32 off, v4, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xe00, v135
	scratch_store_b32 off, v4, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xf00, v135
	scratch_store_b32 off, v4, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1000, v135
	scratch_store_b32 off, v4, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1100, v135
	scratch_store_b32 off, v4, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1200, v135
	scratch_store_b32 off, v4, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1300, v135
	scratch_store_b32 off, v4, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1400, v135
	scratch_store_b32 off, v4, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1500, v135
	scratch_store_b32 off, v4, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1600, v135
	scratch_store_b32 off, v4, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1c00, v135
	scratch_store_b32 off, v4, off          ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x80, v135
	scratch_store_b32 off, v4, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x180, v135
	scratch_store_b32 off, v4, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x280, v135
	scratch_store_b32 off, v4, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x380, v135
	scratch_store_b32 off, v4, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1e80, v135
	scratch_store_b32 off, v4, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1f80, v135
	scratch_store_b32 off, v4, off offset:104 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr135
                                        ; implicit-def: $vgpr208
                                        ; implicit-def: $vgpr209
                                        ; implicit-def: $vgpr253
                                        ; implicit-def: $vgpr254
                                        ; implicit-def: $vgpr255
                                        ; implicit-def: $vgpr242
                                        ; implicit-def: $vgpr243
                                        ; implicit-def: $vgpr199
                                        ; implicit-def: $vgpr200
                                        ; implicit-def: $vgpr201
                                        ; implicit-def: $vgpr202
                                        ; implicit-def: $vgpr249
                                        ; implicit-def: $vgpr248
                                        ; implicit-def: $vgpr247
                                        ; implicit-def: $vgpr246
                                        ; implicit-def: $vgpr245
                                        ; implicit-def: $vgpr244
                                        ; implicit-def: $vgpr241
                                        ; implicit-def: $vgpr240
                                        ; implicit-def: $vgpr239
                                        ; implicit-def: $vgpr238
                                        ; implicit-def: $vgpr237
                                        ; implicit-def: $vgpr229
                                        ; implicit-def: $vgpr230
                                        ; implicit-def: $vgpr231
                                        ; implicit-def: $vgpr232
                                        ; implicit-def: $vgpr233
                                        ; implicit-def: $vgpr234
                                        ; implicit-def: $vgpr235
                                        ; implicit-def: $vgpr236
                                        ; implicit-def: $vgpr252
                                        ; implicit-def: $vgpr250
                                        ; implicit-def: $vgpr251
                                        ; implicit-def: $vgpr5
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
.LBB0_3:                                ; %Flow598
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v4, s34, v130
	v_or_b32_e32 v3, s34, v3
	v_and_b32_e32 v228, 0xf0, v0
	s_ashr_i32 s1, s13, 6
	v_or_b32_e32 v133, s33, v0
	v_mul_lo_u32 v134, v4, s1
	v_mul_lo_u32 v132, v3, s1
	v_lshlrev_b32_e32 v182, 2, v228
	v_lshlrev_b32_e32 v183, 1, v0
	v_lshlrev_b32_e32 v184, 5, v0
	v_lshlrev_b32_e32 v181, 1, v228
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_add_i32 s44, s22, 32
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_and_or_b32 v135, 0x70, v2, v130
	v_dual_mov_b32 v119, 0 :: v_dual_and_b32 v2, 28, v183
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v209, 0, v181
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v1, 0x100, v135
	v_or_b32_e32 v253, 0x1900, v135
	v_or_b32_e32 v254, 0x1a00, v135
	v_or_b32_e32 v255, 0x1b00, v135
	v_or_b32_e32 v242, 0x1d00, v135
	scratch_store_b32 off, v1, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x200, v135
	v_or_b32_e32 v243, 0x1e00, v135
	v_or_b32_e32 v199, 0x1f00, v135
	v_or_b32_e32 v200, 0x480, v135
	v_or_b32_e32 v201, 0x580, v135
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x300, v135
	v_or_b32_e32 v202, 0x680, v135
	v_or_b32_e32 v249, 0x780, v135
	v_or_b32_e32 v248, 0x880, v135
	v_or_b32_e32 v247, 0x980, v135
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x400, v135
	v_or_b32_e32 v246, 0xa80, v135
	v_or_b32_e32 v245, 0xb80, v135
	v_or_b32_e32 v244, 0xc80, v135
	v_or_b32_e32 v241, 0xd80, v135
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x500, v135
	v_or_b32_e32 v240, 0xe80, v135
	v_or_b32_e32 v239, 0xf80, v135
	v_or_b32_e32 v238, 0x1080, v135
	v_or_b32_e32 v237, 0x1180, v135
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x600, v135
	v_or_b32_e32 v229, 0x1280, v135
	v_or_b32_e32 v230, 0x1380, v135
	v_or_b32_e32 v231, 0x1480, v135
	v_or_b32_e32 v232, 0x1580, v135
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x700, v135
	v_or_b32_e32 v233, 0x1680, v135
	v_or_b32_e32 v234, 0x1780, v135
	v_or_b32_e32 v235, 0x1880, v135
	v_or_b32_e32 v236, 0x1980, v135
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x800, v135
	v_or_b32_e32 v252, 0x1a80, v135
	v_or_b32_e32 v250, 0x1b80, v135
	v_or_b32_e32 v251, 0x1c80, v135
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	scratch_store_b32 off, v1, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x900, v135
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	scratch_store_b32 off, v1, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xa00, v135
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	scratch_store_b32 off, v1, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xb00, v135
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	scratch_store_b32 off, v1, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xc00, v135
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	scratch_store_b32 off, v1, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xd00, v135
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	scratch_store_b32 off, v1, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xe00, v135
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	scratch_store_b32 off, v1, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0xf00, v135
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	scratch_store_b32 off, v1, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1000, v135
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1100, v135
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1200, v135
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1300, v135
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	scratch_store_b32 off, v1, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1400, v135
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	scratch_store_b32 off, v1, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1500, v135
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	scratch_store_b32 off, v1, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1600, v135
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	scratch_store_b32 off, v1, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1c00, v135
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s11, s12, 5
	s_mov_b32 s39, 0x31027000
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x80, v135
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s12, 0
	s_add_i32 s0, s44, 32
	s_mov_b32 s10, 1
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x180, v135
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s21, 0xffff
	s_mov_b32 s40, s20
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x280, v135
	v_mov_b32_e32 v88, 0
	s_add_i32 s50, 0, 0x8000
	s_add_i32 s47, 0, 0x8400
	s_add_i32 s46, 0, 0x2000
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x380, v135
	s_add_i32 s48, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	v_mov_b32_e32 v117, 0
	s_add_i32 s11, s11, -3
	scratch_store_b32 off, v1, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1d80, v135
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	scratch_store_b32 off, v1, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1e80, v135
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	scratch_store_b32 off, v1, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1f80, v135
	s_mov_b32 s19, s12
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s49, s12
	scratch_store_b32 off, v1, off offset:104 ; 4-byte Folded Spill
	v_and_b32_e32 v1, 32, v184
	s_mov_b32 s23, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v1, 0, v182, v1
	v_add_nc_u32_e32 v208, v1, v2
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s52, s23, 5
	s_mov_b32 s51, s48
	s_mov_b32 s48, s22
	s_mov_b32 s22, s44
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s44, s0, s52
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v138, s50, v130
	.loc	1 346 30 is_stmt 0              ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[1:2], null, s44, s26, v[65:66]
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v146, s19 :: v_dual_add_nc_u32 v137, s49, v135
	v_dual_mov_b32 v145, s18 :: v_dual_add_nc_u32 v136, s51, v135
	v_dual_mov_b32 v143, s16 :: v_dual_mov_b32 v144, s17
	v_mov_b32_e32 v141, s14
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v131, v1, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v138 offset:416
	ds_load_u8 v2, v138 offset:384
	ds_load_u8 v3, v138 offset:480
	ds_load_u8 v4, v138 offset:448
	ds_load_u8 v5, v138 offset:288
	ds_load_u8 v6, v138 offset:256
	ds_load_u8 v7, v138 offset:352
	ds_load_u8 v8, v138 offset:320
	ds_load_u8 v9, v138 offset:160
	ds_load_u8 v10, v138 offset:128
	ds_load_u8 v13, v138 offset:224
	ds_load_u8 v14, v138 offset:192
	ds_load_u8 v15, v138 offset:96
	ds_load_u8 v16, v138 offset:64
	ds_load_u8 v17, v138
	ds_load_u8 v18, v138 offset:32
	ds_load_u8 v19, v137 offset:3328
	ds_load_u8 v20, v137 offset:3072
	ds_load_u8 v21, v137 offset:3840
	ds_load_u8 v22, v137 offset:3584
	ds_load_u8 v23, v137 offset:2304
	ds_load_u8 v24, v137 offset:2048
	ds_load_u8 v25, v137 offset:2816
	ds_load_u8 v26, v137 offset:2560
	ds_load_u8 v27, v137 offset:1280
	ds_load_u8 v28, v137 offset:1024
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v4, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v5, v8, v7, 0xc0c0004
	ds_load_u8 v2, v137 offset:1792
	ds_load_u8 v6, v137 offset:768
	ds_load_u8 v7, v137 offset:512
	v_lshl_or_b32 v12, v3, 16, v1
	v_lshl_or_b32 v11, v5, 16, v4
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v3, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v4, v14, v13, 0xc0c0004
	ds_load_u8 v1, v137 offset:256
	ds_load_u8 v5, v137
	ds_load_u8 v8, v137 offset:3456
	ds_load_u8 v13, v137 offset:3200
	ds_load_u8 v14, v137 offset:3968
	v_dual_mov_b32 v142, s15 :: v_dual_mov_b32 v139, s12
	v_lshl_or_b32 v10, v4, 16, v3
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v3, v16, v15, 0xc0c0004
	ds_load_u8 v15, v137 offset:3712
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v16, v20, v19, 0xc0c0004
	ds_load_u8 v19, v137 offset:2176
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v20, v24, v23, 0xc0c0004
	ds_load_u8 v23, v137 offset:2688
	ds_load_u8 v29, v137 offset:1536
	v_perm_b32 v4, v17, v18, 0xc0c0004
	ds_load_u8 v17, v137 offset:2432
	ds_load_u8 v24, v137 offset:1664
	v_perm_b32 v18, v22, v21, 0xc0c0004
	ds_load_u8 v21, v137 offset:2944
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v22, v26, v25, 0xc0c0004
	v_lshl_or_b32 v9, v3, 16, v4
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v5, v1, 0xc0c0004
	v_lshl_or_b32 v4, v18, 16, v16
	v_perm_b32 v16, v28, v27, 0xc0c0004
	v_lshl_or_b32 v3, v22, 16, v20
	ds_load_u8 v18, v137 offset:1408
	ds_load_u8 v20, v137 offset:1152
	ds_load_u8 v22, v137 offset:1920
	ds_load_u8 v5, v137 offset:896
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v137 offset:640
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v8, v13, v8, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v13, v138 offset:432
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v2, v29, v2, 0xc0c0004
	v_lshl_or_b32 v1, v6, 16, v1
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v15, v19, v17, 0xc0c0004
	ds_load_u8 v17, v138 offset:496
	ds_load_u8 v25, v137 offset:384
	ds_load_u8 v26, v137 offset:128
	v_lshl_or_b32 v2, v2, 16, v16
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v19, v23, v21, 0xc0c0004
	ds_load_u8 v21, v138 offset:464
	ds_load_u8 v27, v138 offset:400
	v_lshl_or_b32 v16, v14, 16, v8
	ds_load_u8 v6, v138 offset:304
	ds_load_u8 v8, v138 offset:272
	v_lshl_or_b32 v15, v19, 16, v15
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v14, v20, v18, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v19, v24, v22, 0xc0c0004
	ds_load_u8 v18, v138 offset:368
	ds_load_u8 v20, v138 offset:336
	ds_load_u8 v24, v138 offset:240
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v5, v7, v5, 0xc0c0004
	v_lshl_or_b32 v14, v19, 16, v14
	ds_load_u8 v19, v138 offset:176
	ds_load_u8 v22, v138 offset:144
	ds_load_u8 v7, v138 offset:208
	v_mov_b32_e32 v140, s13
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s49, s48, 31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v23, v26, v25, 0xc0c0004
	ds_load_u8 v26, v138 offset:16
	v_wmma_i32_16x16x16_iu8 v[57:64], v[1:4], v[9:12], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v17, v21, v17, 0xc0c0004
	ds_load_u8 v21, v138 offset:112
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v8, v6, 0xc0c0004
	ds_load_u8 v8, v138 offset:80
	v_perm_b32 v25, v27, v13, 0xc0c0004
	v_lshl_or_b32 v13, v5, 16, v23
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s49, s49, 26
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	ds_load_u8 v20, v138 offset:48
	v_lshl_or_b32 v150, v17, 16, v25
	v_wmma_i32_16x16x16_iu8 v[41:48], v[13:16], v[9:12], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v17, v22, v19, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v7, v24, 0xc0c0004
	v_lshl_or_b32 v149, v18, 16, v6
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v5, v136 offset:3328
	ds_load_u8 v6, v136 offset:3072
	ds_load_u8 v18, v136 offset:3840
	ds_load_u8 v19, v136 offset:3584
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v148, v7, 16, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v7, v136 offset:2304
	ds_load_u8 v17, v136 offset:2048
	ds_load_u8 v22, v136 offset:2560
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s48, s48, s49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v8, v21, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v136 offset:2816
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s48, s48, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s51, s48, s35
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v20, v26, v20, 0xc0c0004
	v_lshl_or_b32 v147, v8, 16, v20
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v8, v136 offset:768
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v136 offset:1280
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v17, v7, 0xc0c0004
	ds_load_u8 v17, v136 offset:1792
	v_lshl_or_b32 v154, v18, 16, v5
	ds_load_u8 v18, v136 offset:512
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v136 offset:1536
	ds_load_u8 v19, v136 offset:1024
	v_lshl_or_b32 v153, v21, 16, v7
	ds_load_u8 v5, v136 offset:256
	ds_load_u8 v7, v136
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v18, v8, 0xc0c0004
	ds_load_u8 v18, v136 offset:3712
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v22, v17, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v6, v19, v6, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v5, v7, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v152, v17, 16, v6
	ds_load_u8 v6, v136 offset:3456
	ds_load_u8 v17, v136 offset:3200
	ds_load_u8 v7, v136 offset:3968
	v_lshl_or_b32 v151, v8, 16, v5
	v_wmma_i32_16x16x16_iu8 v[49:56], v[151:154], v[9:12], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[151:154], v[147:150], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v6, v17, v6, 0xc0c0004
	ds_load_u8 v17, v136 offset:2432
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v7, v18, v7, 0xc0c0004
	ds_load_u8 v18, v136 offset:2176
	v_lshl_or_b32 v158, v7, 16, v6
	ds_load_u8 v5, v136 offset:1408
	ds_load_u8 v6, v136 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v136 offset:2944
	ds_load_u8 v19, v136 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v136 offset:1920
	ds_load_u8 v7, v136 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v157, v18, 16, v17
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[1:4], v[147:150], v[139:146] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v156, v6, 16, v5
	ds_load_u8 v5, v136 offset:384
	ds_load_u8 v6, v136 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v136 offset:896
	ds_load_u8 v7, v136 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v155, v6, 16, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[1:8], v[13:16], v[147:150], v[139:146] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[33:40], v[155:158], v[9:12], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[155:158], v[147:150], v[139:146] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v139, v138 offset:928
	ds_load_u8 v140, v138 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v138 offset:992
	ds_load_u8 v141, v138 offset:960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	ds_load_u8 v141, v138 offset:800
	ds_load_u8 v142, v138 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v138 offset:864
	ds_load_u8 v143, v138 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v143, v142, 0xc0c0004
	v_lshl_or_b32 v142, v140, 16, v139
	ds_load_u8 v139, v138 offset:672
	ds_load_u8 v140, v138 offset:640
	v_lshl_or_b32 v141, v143, 16, v141
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v138 offset:736
	ds_load_u8 v143, v138 offset:704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v143, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v140, v140, 16, v139
	ds_load_u8 v139, v138 offset:544
	ds_load_u8 v143, v138 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v143, v139, 0xc0c0004
	ds_load_u8 v143, v138 offset:608
	ds_load_u8 v144, v138 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v143, 16, v139
	ds_load_u8 v143, v137 offset:7424
	ds_load_u8 v144, v137 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v137 offset:7936
	ds_load_u8 v145, v137 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v137 offset:6400
	ds_load_u8 v146, v137 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v137 offset:6912
	ds_load_u8 v147, v137 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v147, v146, 0xc0c0004
	v_lshl_or_b32 v146, v144, 16, v143
	ds_load_u8 v143, v137 offset:5376
	ds_load_u8 v144, v137 offset:5120
	v_lshl_or_b32 v145, v147, 16, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v137 offset:5888
	ds_load_u8 v147, v137 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v147, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v144, 16, v143
	ds_load_u8 v143, v137 offset:4352
	ds_load_u8 v147, v137 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v147, v143, 0xc0c0004
	ds_load_u8 v147, v137 offset:4864
	ds_load_u8 v148, v137 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v143, v147, 16, v143
	ds_load_u8 v147, v138 offset:944
	ds_load_u8 v148, v138 offset:912
	v_wmma_i32_16x16x16_iu8 v[57:64], v[143:146], v[139:142], v[57:64] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v63, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v148, s50, v206
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v148, v148
	ds_load_u8 v149, v138 offset:976
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s50, s44, s35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s49, s50, s33
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s50, s49, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s48, s1
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s10, s10, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s10, 2
	s_cselect_b32 s10, s10, 0
	s_add_i32 s52, s23, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v138 offset:816
	ds_load_u8 v150, v138 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v138 offset:880
	ds_load_u8 v151, v138 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v151, v150, 0xc0c0004
	v_lshl_or_b32 v150, v148, 16, v147
	ds_load_u8 v147, v138 offset:688
	ds_load_u8 v148, v138 offset:656
	v_lshl_or_b32 v149, v151, 16, v149
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v138 offset:752
	ds_load_u8 v151, v138 offset:720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v151, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v148, 16, v147
	ds_load_u8 v147, v138 offset:560
	ds_load_u8 v151, v138 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v151, v147, 0xc0c0004
	ds_load_u8 v151, v138 offset:624
	ds_load_u8 v138, v138 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v138, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v147, v138, 16, v147
	v_wmma_i32_16x16x16_iu8 v[17:24], v[143:146], v[147:150], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v138, v137 offset:7552
	ds_load_u8 v143, v137 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v143, v138, 0xc0c0004
	ds_load_u8 v143, v137 offset:8064
	ds_load_u8 v144, v137 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v137 offset:6528
	ds_load_u8 v145, v137 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v137 offset:7040
	ds_load_u8 v146, v137 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	v_lshl_or_b32 v146, v143, 16, v138
	ds_load_u8 v138, v137 offset:5504
	ds_load_u8 v143, v137 offset:5248
	v_lshl_or_b32 v145, v145, 16, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v143, v138, 0xc0c0004
	ds_load_u8 v143, v137 offset:6016
	ds_load_u8 v144, v137 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v143, 16, v138
	ds_load_u8 v138, v137 offset:4480
	ds_load_u8 v143, v137 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v143, v138, 0xc0c0004
	ds_load_u8 v143, v137 offset:4992
	ds_load_u8 v137, v137 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v137, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v143, v137, 16, v138
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v137, v136 offset:7424
	ds_load_u8 v138, v136 offset:7168
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[41:48], v[143:146], v[139:142], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[143:146], v[147:150], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v155, v7
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v136 offset:7936
	ds_load_u8 v143, v136 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v143, v138, 0xc0c0004
	ds_load_u8 v143, v136 offset:6400
	ds_load_u8 v144, v136 offset:6144
	v_lshl_or_b32 v146, v138, 16, v137
	ds_load_u8 v137, v136 offset:5376
	ds_load_u8 v138, v136 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v136 offset:6912
	ds_load_u8 v145, v136 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v145, v144, 16, v143
	ds_load_u8 v138, v136 offset:5888
	ds_load_u8 v143, v136 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v143, v138, 0xc0c0004
	v_lshl_or_b32 v144, v138, 16, v137
	ds_load_u8 v137, v136 offset:4352
	ds_load_u8 v138, v136 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v136 offset:4864
	ds_load_u8 v143, v136 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v143, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v143, v138, 16, v137
	ds_load_u8 v137, v136 offset:7552
	ds_load_u8 v138, v136 offset:7296
	v_wmma_i32_16x16x16_iu8 v[49:56], v[143:146], v[139:142], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[143:146], v[147:150], v[25:32] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v146, v21
	v_cvt_f32_i32_e32 v143, v20
	v_cvt_f32_i32_e32 v144, v19
	v_cvt_f32_i32_e32 v145, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v29, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v136 offset:8064
	ds_load_u8 v151, v136 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v151, v138, 0xc0c0004
	ds_load_u8 v151, v136 offset:6528
	ds_load_u8 v152, v136 offset:6272
	v_lshl_or_b32 v154, v138, 16, v137
	ds_load_u8 v137, v136 offset:5504
	ds_load_u8 v138, v136 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v136 offset:7040
	ds_load_u8 v153, v136 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v152, 16, v151
	ds_load_u8 v138, v136 offset:6016
	ds_load_u8 v151, v136 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v151, v138, 0xc0c0004
	v_lshl_or_b32 v152, v138, 16, v137
	ds_load_u8 v137, v136 offset:4480
	ds_load_u8 v138, v136 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v136 offset:4992
	ds_load_u8 v136, v136 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v136, v138, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v138, v44
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v151, v136, 16, v137
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v136, v58
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v58, v51
	v_cvt_f32_i32_e32 v51, v54
	v_cvt_f32_i32_e32 v54, v55
	v_wmma_i32_16x16x16_iu8 v[33:40], v[151:154], v[139:142], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[151:154], v[147:150], v[9:16] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v149, v1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v1, v133, s51, 1
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
	v_add_lshl_u32 v2, v132, s48, 1
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
	v_cvt_f32_i32_e32 v21, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v137, v57
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v57, v49
	v_cvt_f32_i32_e32 v49, v52
	v_cvt_f32_i32_e32 v52, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v56, v41
	v_cvt_f32_i32_e32 v139, v43
	v_cvt_f32_i32_e32 v140, v46
	v_cvt_f32_i32_e32 v141, v45
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v41, v33
	v_cvt_f32_i32_e32 v33, v36
	v_cvt_f32_i32_e32 v36, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v40, v18
	v_cvt_f32_i32_e32 v142, v17
	v_cvt_f32_i32_e32 v148, v23
	v_cvt_f32_i32_e32 v150, v4
	v_cvt_f32_i32_e32 v151, v3
	v_cvt_f32_i32_e32 v152, v6
	v_cvt_f32_i32_e32 v154, v8
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v23, v10
	v_cvt_f32_i32_e32 v17, v12
	v_cvt_f32_i32_e32 v20, v11
	v_cvt_f32_i32_e32 v18, v14
	v_cvt_f32_i32_e32 v19, v16
	v_cvt_f32_i32_e32 v22, v15
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v208, v1 offset:34816
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v134, s48, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s48, s10, 10
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
	v_add_nc_u32_e32 v1, s49, v204
	v_add_nc_u32_e32 v5, s49, v205
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v9, s50, v204
	v_add_nc_u32_e32 v13, s50, v205
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[28:31], 0 offen
	buffer_load_b128 v[5:8], v5, s[28:31], 0 offen
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	buffer_load_b128 v[13:16], v13, s[28:31], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[43:46], v209 offset:34816
	s_mov_b32 s49, s46
	s_mov_b32 s50, s47
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v158, v44, v156
	v_mul_f32_e32 v159, v43, v156
	v_mul_f32_e32 v160, v46, v156
	v_dual_mul_f32 v161, v45, v156 :: v_dual_mul_f32 v162, v44, v157
	v_mul_f32_e32 v163, v43, v157
	v_mul_f32_e32 v164, v46, v157
	v_mul_f32_e32 v165, v45, v157
	ds_load_b128 v[43:46], v209 offset:34832
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v118, v158, v136
	v_fmac_f32_e32 v114, v160, v60
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v166, v44, v156
	v_dual_mul_f32 v167, v43, v156 :: v_dual_mul_f32 v172, v46, v157
	v_mul_f32_e32 v168, v46, v156
	v_dual_mul_f32 v169, v45, v156 :: v_dual_mul_f32 v170, v44, v157
	v_mul_f32_e32 v171, v43, v157
	v_mul_f32_e32 v173, v45, v157
	ds_load_b128 v[43:46], v209 offset:35328
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v110, v166, v62
	v_fmac_f32_e32 v106, v168, v64
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v174, v44, v156
	v_dual_mul_f32 v175, v43, v156 :: v_dual_mul_f32 v180, v46, v157
	v_mul_f32_e32 v176, v46, v156
	v_dual_mul_f32 v177, v45, v156 :: v_dual_mul_f32 v178, v44, v157
	v_mul_f32_e32 v179, v43, v157
	v_mul_f32_e32 v181, v45, v157
	ds_load_b128 v[43:46], v209 offset:35344
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v117, v159, v137 :: v_dual_fmac_f32 v102, v174, v55
	v_dual_fmac_f32 v105, v169, v63 :: v_dual_fmac_f32 v126, v163, v142
	v_fmac_f32_e32 v98, v176, v138
	v_fmac_f32_e32 v122, v165, v144
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v183, v43, v156 :: v_dual_mul_f32 v188, v46, v157
	v_mul_f32_e32 v187, v43, v157
	v_add_nc_u32_e32 v43, s27, v133
	v_mul_f32_e32 v186, v44, v157
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v93, v183, v141
	v_dual_fmac_f32 v87, v170, v145 :: v_dual_fmac_f32 v66, v188, v154
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v43, v43, s51, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s51, s48, 0
	s_mov_b32 s48, s45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s45, s10, 13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v79, v178, v32 :: v_dual_add_nc_u32 v32, s51, v203
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_dual_cndmask_b32 v43, 0x80000000, v43 :: v_dual_mul_f32 v182, v44, v156
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v184, v46, v156
	v_mul_f32_e32 v185, v45, v156
	v_mul_f32_e32 v189, v45, v157
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v43, v43, s[40:43], 0 offen
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s46, s45, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v113, v161, v59 :: v_dual_fmac_f32 v94, v182, v140
	v_dual_fmac_f32 v109, v167, v61 :: v_dual_fmac_f32 v90, v184, v48
	v_dual_fmac_f32 v97, v177, v139 :: v_dual_fmac_f32 v86, v171, v146
	v_dual_fmac_f32 v123, v164, v143 :: v_dual_fmac_f32 v82, v173, v148
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s47, s51, 0x8000
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s45, s46, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s23, s11
	s_mov_b32 s23, s52
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_store_b32 v208, v43 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[43:46], v209 offset:34816
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v190, v44, v156
	v_mul_f32_e32 v191, v43, v156
	v_mul_f32_e32 v192, v46, v156
	v_dual_mul_f32 v193, v45, v156 :: v_dual_mul_f32 v194, v44, v157
	v_mul_f32_e32 v195, v43, v157
	v_mul_f32_e32 v196, v46, v157
	v_mul_f32_e32 v197, v45, v157
	ds_load_b128 v[43:46], v209 offset:34832
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v101, v175, v56 :: v_dual_fmac_f32 v74, v181, v151
	v_dual_fmac_f32 v89, v185, v47 :: v_dual_fmac_f32 v78, v179, v149
	v_dual_fmac_f32 v69, v186, v152 :: v_dual_fmac_f32 v116, v192, v49
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v198, v44, v156
	v_mul_f32_e32 v210, v43, v156
	v_mul_f32_e32 v211, v46, v156
	v_dual_mul_f32 v212, v45, v156 :: v_dual_mul_f32 v213, v44, v157
	v_mul_f32_e32 v214, v43, v157
	v_mul_f32_e32 v215, v46, v157
	v_mul_f32_e32 v216, v45, v157
	ds_load_b128 v[43:46], v209 offset:35328
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v127, v162, v40 :: v_dual_fmac_f32 v68, v187, v153
	v_dual_fmac_f32 v83, v172, v147 :: v_dual_fmac_f32 v88, v191, v57
	v_dual_fmac_f32 v75, v180, v150 :: v_dual_fmac_f32 v112, v198, v51
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v120, v214, v29
	v_fmac_f32_e32 v84, v216, v30
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v217, v44, v156 :: v_dual_mul_f32 v224, v45, v157
	v_mul_f32_e32 v218, v43, v156
	v_mul_f32_e32 v219, v46, v156
	v_dual_mul_f32 v220, v45, v156 :: v_dual_mul_f32 v221, v44, v157
	v_mul_f32_e32 v222, v43, v157
	v_mul_f32_e32 v223, v46, v157
	ds_load_b128 v[43:46], v209 offset:35344
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v67, v189, v155 :: v_dual_fmac_f32 v108, v211, v52
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v111, v210, v53 :: v_dual_fmac_f32 v104, v217, v34
	v_dual_fmac_f32 v103, v218, v41 :: v_dual_fmac_f32 v128, v195, v39
	v_dual_fmac_f32 v99, v220, v42 :: v_dual_fmac_f32 v124, v197, v28
	v_dual_fmac_f32 v125, v196, v25 :: v_dual_fmac_f32 v80, v222, v31
	v_fmac_f32_e32 v81, v221, v23
	v_dual_fmac_f32 v76, v224, v20 :: v_dual_add_nc_u32 v23, s46, v207
	v_fmac_f32_e32 v77, v223, v17
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_store_b32 v32, v131 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v23, v[1:4]
	ds_store_b128 v23, v[5:8] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v23, v[9:12] offset:16384
	ds_store_b128 v23, v[13:16] offset:20480
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(5)
	v_mul_f32_e32 v225, v44, v156
	v_mul_f32_e32 v226, v43, v156
	v_mul_f32_e32 v227, v46, v156
	v_mul_f32_e32 v156, v45, v156
	v_mul_f32_e32 v44, v44, v157
	v_mul_f32_e32 v43, v43, v157
	v_mul_f32_e32 v46, v46, v157
	v_mul_f32_e32 v45, v45, v157
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v119, v190, v50 :: v_dual_fmac_f32 v100, v219, v33
	v_dual_fmac_f32 v115, v193, v58 :: v_dual_fmac_f32 v92, v227, v36
	v_dual_fmac_f32 v107, v212, v54 :: v_dual_fmac_f32 v96, v225, v35
	v_fmac_f32_e32 v95, v226, v37
	v_fmac_f32_e32 v91, v156, v38
	v_dual_fmac_f32 v129, v194, v24 :: v_dual_fmac_f32 v72, v43, v21
	v_fmac_f32_e32 v121, v213, v26
	v_dual_fmac_f32 v85, v215, v27 :: v_dual_fmac_f32 v70, v45, v22
	v_fmac_f32_e32 v73, v44, v18
	v_fmac_f32_e32 v71, v46, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v1, v206 :: v_dual_lshlrev_b32 v182, 2, v228
	v_or_b32_e32 v208, 0x1700, v135
	v_or_b32_e32 v209, 0x1800, v135
	v_lshlrev_b32_e32 v181, 1, v228
	v_lshlrev_b32_e32 v183, 1, v0
	v_lshlrev_b32_e32 v184, 5, v0
	s_branch .LBB0_8
.LBB0_7:
	scratch_store_b32 off, v5, off offset:116 ; 4-byte Folded Spill
	s_add_i32 s50, 0, 0x8000
	s_add_i32 s47, 0, 0x8400
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v88, 0
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s48, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v223, v201 :: v_dual_mov_b32 v220, v251
	v_mov_b32_e32 v219, v250
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v250, off, off offset:108
	scratch_load_b32 v251, off, off offset:112
	scratch_load_b32 v221, off, off offset:116
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v17, s50, v130
	ds_load_u8_d16 v37, v17
	ds_load_u8_d16 v18, v17 offset:16
	ds_load_u8_d16 v38, v17 offset:32
	ds_load_u8_d16 v22, v17 offset:48
	ds_load_u8_d16 v39, v17 offset:64
	ds_load_u8_d16 v40, v17 offset:96
	ds_load_u8_d16 v32, v17 offset:112
	ds_load_u8_d16 v33, v17 offset:80
	ds_load_u8_d16 v41, v17 offset:128
	ds_load_u8_d16 v42, v17 offset:160
	ds_load_u8_d16 v43, v17 offset:192
	ds_load_u8_d16 v44, v17 offset:224
	ds_load_u8_d16 v34, v17 offset:240
	ds_load_u8_d16 v35, v17 offset:208
	ds_load_u8_d16 v36, v17 offset:176
	ds_load_u8_d16 v49, v17 offset:144
	ds_load_u8_d16 v45, v17 offset:256
	ds_load_u8_d16 v46, v17 offset:288
	ds_load_u8_d16 v47, v17 offset:320
	ds_load_u8_d16 v48, v17 offset:352
	ds_load_u8_d16 v53, v17 offset:368
	ds_load_u8_d16 v54, v17 offset:336
	ds_load_u8_d16 v55, v17 offset:304
	ds_load_u8_d16 v56, v17 offset:272
	ds_load_u8_d16 v61, v17 offset:384
	ds_load_u8_d16 v62, v17 offset:416
	ds_load_u8_d16 v63, v17 offset:448
	ds_load_u8_d16 v64, v17 offset:480
	ds_load_u8_d16 v57, v17 offset:496
	ds_load_u8_d16 v58, v17 offset:464
	ds_load_u8_d16 v59, v17 offset:432
	ds_load_u8_d16 v60, v17 offset:400
	ds_load_u8_d16 v19, v17 offset:512
	ds_load_u8_d16 v20, v17 offset:544
	ds_load_u8_d16 v21, v17 offset:576
	ds_load_u8_d16 v23, v17 offset:608
	ds_load_u8_d16 v2, v17 offset:624
	ds_load_u8_d16 v3, v17 offset:592
	ds_load_u8_d16 v4, v17 offset:560
	ds_load_u8_d16 v5, v17 offset:528
	ds_load_u8_d16 v24, v17 offset:640
	ds_load_u8_d16 v25, v17 offset:672
	ds_load_u8_d16 v26, v17 offset:704
	ds_load_u8_d16 v27, v17 offset:736
	ds_load_u8_d16 v6, v17 offset:752
	ds_load_u8_d16 v7, v17 offset:720
	ds_load_u8_d16 v8, v17 offset:688
	ds_load_u8_d16 v9, v17 offset:656
	ds_load_u8_d16 v28, v17 offset:768
	ds_load_u8_d16 v29, v17 offset:800
	ds_load_u8_d16 v30, v17 offset:832
	ds_load_u8_d16 v31, v17 offset:864
	ds_load_u8_d16 v10, v17 offset:880
	ds_load_u8_d16 v11, v17 offset:848
	ds_load_u8_d16 v12, v17 offset:816
	ds_load_u8_d16 v13, v17 offset:784
	v_dual_mov_b32 v185, 0 :: v_dual_add_nc_u32 v14, s50, v1
	ds_load_u8_d16 v50, v17 offset:896
	ds_load_u8_d16 v51, v17 offset:928
	ds_load_u8_d16 v52, v17 offset:960
	ds_load_u8_d16 v131, v17 offset:992
	ds_load_u8_d16 v14, v14
	ds_load_u8_d16 v15, v17 offset:976
	ds_load_u8_d16 v16, v17 offset:944
	ds_load_u8_d16 v17, v17 offset:912
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v65, 0, 1, s2
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v146, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v65
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v226, v243
	v_dual_mov_b32 v227, v242 :: v_dual_mov_b32 v224, v200
	v_dual_mov_b32 v225, v199 :: v_dual_mov_b32 v222, v202
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v65, v61, v62, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v136, v63, v64, 0xc0c0004
	v_perm_b32 v137, v45, v46, 0xc0c0004
	v_perm_b32 v138, v47, v48, 0xc0c0004
	s_mov_b32 s12, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v180, s49, v229
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v163, v136, 16, v65
	v_perm_b32 v65, v41, v42, 0xc0c0004
	v_perm_b32 v136, v43, v44, 0xc0c0004
	v_lshl_or_b32 v162, v138, 16, v137
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	v_lshl_or_b32 v161, v136, 16, v65
	v_perm_b32 v65, v37, v38, 0xc0c0004
	v_perm_b32 v136, v39, v40, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v137, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_lshl_or_b32 v160, v136, 16, v65
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:84
	scratch_load_b32 v136, off, off offset:80
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s19, s12
	ds_load_u8 v180, v180
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v139, off, off offset:72
	scratch_load_b32 v138, off, off offset:64
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v137, s49, v137
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v65, s49, v65
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v136, s49, v136
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v137, v137
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v139, s49, v139
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v65, v65
	ds_load_u8 v136, v136
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v138, s49, v138
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v139, v139
	ds_load_u8 v138, v138
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v65, v136, v65, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v136, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v136, s49, v136
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v137, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v171, v136, 16, v65
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v65, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v137, s49, v137
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v137, v137
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v138, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v138, s49, v138
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v138, v138
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v139, s49, v246
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v170, v138, 16, v137
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v137, off, off offset:40
	scratch_load_b32 v136, off, off offset:32
	v_add_nc_u32_e32 v65, s49, v65
	v_add_nc_u32_e32 v138, s49, v248
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v139, v139
	ds_load_u8 v65, v65
	ds_load_u8 v138, v138
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v137, s49, v137
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v136, s49, v136
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v137, v137
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v136, v65, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v136, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v136, s49, v136
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v137, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v169, v136, 16, v65
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v65, off, off offset:20 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v136, s49, v135
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v136, v136
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v137, s49, v137
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v65, s49, v65
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v137, v137
	ds_load_u8 v65, v65
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v136, v65, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v136, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v136, s49, v136
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v137, s49, v240
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v168, v136, 16, v65
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v65, s49, v241
	v_add_nc_u32_e32 v136, s49, v244
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v137, v137
	ds_load_u8 v65, v65
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v136, v65, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v136, s49, v239
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v137, s49, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v175, v136, 16, v65
	ds_load_u8 v137, v137
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v65, s49, v223
	v_add_nc_u32_e32 v136, s49, v224
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v65, v65
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v138, s49, v245
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v138, v138
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v65, v136, v65, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v136, s49, v249
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v138, 16, v137
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v137, s49, v222
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v138, v54, v53, 0xc0c0004
	ds_load_u8 v137, v137
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v137, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v173, v136, 16, v65
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:8
	scratch_load_b32 v136, off, off offset:4
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v137, s49, v137
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v65, s49, v65
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v136, s49, v136
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v137, v137
	ds_load_u8 v65, v65
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v136, v65, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v136, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v136, s49, v136
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	v_perm_b32 v137, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v172, v136, 16, v65
	v_perm_b32 v65, v60, v59, 0xc0c0004
	v_perm_b32 v136, v58, v57, 0xc0c0004
	v_lshl_or_b32 v178, v138, 16, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v179, v136, 16, v65
	v_perm_b32 v65, v49, v36, 0xc0c0004
	v_perm_b32 v136, v35, v34, 0xc0c0004
	v_lshl_or_b32 v177, v136, 16, v65
	v_perm_b32 v65, v18, v22, 0xc0c0004
	v_perm_b32 v136, v33, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v136, 16, v65
	v_dual_mov_b32 v143, s19 :: v_dual_mov_b32 v142, s18
	v_dual_mov_b32 v141, s17 :: v_dual_mov_b32 v140, s16
	v_dual_mov_b32 v139, s15 :: v_dual_mov_b32 v138, s14
	v_dual_mov_b32 v137, s13 :: v_dual_mov_b32 v136, s12
	v_perm_b32 v65, v50, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[144:151], v[168:171], v[160:163], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[172:175], v[160:163], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[160:167], v[168:171], v[176:179], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[172:175], v[176:179], v[136:143] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v172, off, off
	scratch_load_b32 v176, off, off offset:56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v168, v52, v131, 0xc0c0004
	v_perm_b32 v169, v28, v29, 0xc0c0004
	v_perm_b32 v170, v30, v31, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v173, s49, v226
	v_add_nc_u32_e32 v175, s49, v254
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v171, v168, 16, v65
	v_perm_b32 v65, v24, v25, 0xc0c0004
	v_perm_b32 v168, v26, v27, 0xc0c0004
	v_lshl_or_b32 v170, v170, 16, v169
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v174, s49, v209
	v_add_nc_u32_e32 v179, s49, v252
	v_add_nc_u32_e32 v178, s49, v235
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v169, v168, 16, v65
	v_perm_b32 v65, v19, v20, 0xc0c0004
	v_perm_b32 v168, v21, v23, 0xc0c0004
	ds_load_u8 v173, v173
	ds_load_u8 v175, v175
	ds_load_u8 v174, v174
	ds_load_u8 v179, v179
	v_lshl_or_b32 v168, v168, 16, v65
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v65, s49, v227
	scratch_load_b32 v177, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v178, v178
	ds_load_u8 v65, v65
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v172, s49, v172
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v176, s49, v176
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v172, v172
	ds_load_u8 v176, v176
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v177, s49, v177
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v65, v172, v65, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v172, s49, v225
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v177, v177
	ds_load_u8 v172, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v173, s49, v253
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v174, s49, v255
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v174, v174
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	v_lshl_or_b32 v175, v172, 16, v65
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v65, s49, v251
	v_add_nc_u32_e32 v172, s49, v250
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v174, v174, 16, v173
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v173, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v65, v65
	ds_load_u8 v172, v172
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v173, s49, v173
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v65, v172, v65, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v172, s49, v208
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v172, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v172, 16, v65
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:52
	scratch_load_b32 v172, off, off offset:48
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v65, s49, v65
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v172, s49, v172
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v65, v65
	ds_load_u8 v172, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v172, v65, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v172, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v172, s49, v172
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v172, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v176, v172, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v176, s49, v220
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v172, v172, 16, v65
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v65, s49, v221
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v176, v176
	v_wmma_i32_16x16x16_iu8 v[144:151], v[172:175], v[168:171], v[144:151] neg_lo:[1,1,0]
	ds_load_u8 v65, v65
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v176, v65, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v176, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v176, s49, v176
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v176, v176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v177, s49, v236
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v177, v177
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v178, s49, v219
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v178, v178
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	v_lshl_or_b32 v179, v176, 16, v65
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v65, s49, v232
	v_add_nc_u32_e32 v176, s49, v231
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v178, v178, 16, v177
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v177, s49, v233
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v65, v65
	ds_load_u8 v176, v176
	ds_load_u8 v177, v177
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v65, v176, v65, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v176, s49, v234
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v176, v176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v176, 16, v65
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v65, s49, v237
	v_add_nc_u32_e32 v176, s49, v238
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v65, v65
	ds_load_u8 v176, v176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v176, v65, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v176, s49, v230
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v176, v176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v180, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v176, v176, 16, v65
	v_perm_b32 v65, v17, v16, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[152:159], v[176:179], v[168:171], v[152:159] neg_lo:[1,1,0]
	v_perm_b32 v168, v15, v14, 0xc0c0004
	v_perm_b32 v169, v13, v12, 0xc0c0004
	v_perm_b32 v170, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v159, v159
	v_lshl_or_b32 v171, v168, 16, v65
	v_perm_b32 v65, v9, v8, 0xc0c0004
	v_perm_b32 v168, v7, v6, 0xc0c0004
	v_lshl_or_b32 v170, v170, 16, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v169, v168, 16, v65
	v_perm_b32 v65, v5, v4, 0xc0c0004
	v_perm_b32 v168, v3, v2, 0xc0c0004
	v_lshl_or_b32 v168, v168, 16, v65
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[160:167], v[172:175], v[168:171], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[176:179], v[168:171], v[136:143] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v170, v152
	v_cvt_f32_i32_e32 v172, v153
	v_cvt_f32_i32_e32 v173, v154
	v_cvt_f32_i32_e32 v174, v155
	v_cvt_f32_i32_e32 v168, v156
	v_cvt_f32_i32_e32 v169, v157
	v_cvt_f32_i32_e32 v171, v158
	v_cvt_f32_i32_e32 v175, v160
	v_cvt_f32_i32_e32 v176, v161
	v_cvt_f32_i32_e32 v160, v162
	v_cvt_f32_i32_e32 v161, v163
	v_cvt_f32_i32_e32 v157, v164
	v_cvt_f32_i32_e32 v158, v165
	v_cvt_f32_i32_e32 v155, v166
	v_cvt_f32_i32_e32 v156, v167
	v_cvt_f32_i32_e32 v153, v136
	v_cvt_f32_i32_e32 v154, v137
	v_cvt_f32_i32_e32 v152, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v137, v140
	v_cvt_f32_i32_e32 v138, v141
	v_cvt_f32_i32_e32 v136, v142
	v_cvt_f32_i32_e32 v65, v143
	v_cvt_f32_i32_e32 v141, v148
	v_cvt_f32_i32_e32 v142, v149
	v_cvt_f32_i32_e32 v140, v150
	v_cvt_f32_i32_e32 v143, v151
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x1d                           ; 120-byte Folded Spill
	scratch_store_b32 off, v176, off offset:288
	scratch_store_b32 off, v175, off offset:284
	scratch_store_b32 off, v160, off offset:276
	scratch_store_b32 off, v145, off offset:272
	scratch_store_b32 off, v144, off offset:268
	scratch_store_b32 off, v147, off offset:264
	scratch_store_b32 off, v146, off offset:260
	scratch_store_b32 off, v143, off offset:256
	scratch_store_b32 off, v142, off offset:252
	scratch_store_b32 off, v141, off offset:248
	scratch_store_b32 off, v140, off offset:244
	scratch_store_b32 off, v174, off offset:240
	scratch_store_b32 off, v173, off offset:236
	scratch_store_b32 off, v159, off offset:232
	scratch_store_b32 off, v172, off offset:228
	scratch_store_b32 off, v171, off offset:224
	scratch_store_b32 off, v170, off offset:220
	scratch_store_b32 off, v169, off offset:216
	scratch_store_b32 off, v168, off offset:212
	scratch_store_b32 off, v158, off offset:164
	scratch_store_b32 off, v157, off offset:160
	scratch_store_b32 off, v155, off offset:152
	scratch_store_b32 off, v154, off offset:148
	scratch_store_b32 off, v153, off offset:144
	scratch_store_b32 off, v139, off offset:140
	scratch_store_b32 off, v152, off offset:136
	scratch_store_b32 off, v138, off offset:132
	scratch_store_b32 off, v137, off offset:128
	scratch_store_b32 off, v136, off offset:124
	scratch_store_b32 off, v65, off offset:120
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v136, 0
	v_mov_b32_e32 v65, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v61, v61, v62, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v62, v63, v64, 0xc0c0004
	v_perm_b32 v37, v37, v38, 0xc0c0004
	v_perm_b32 v38, v39, v40, 0xc0c0004
	s_mov_b32 s12, 0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v39, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v64, v62, 16, v61
	s_mov_b32 s13, s12
	v_lshl_or_b32 v61, v38, 16, v37
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:84
	scratch_load_b32 v38, off, off offset:80
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_perm_b32 v41, v41, v42, 0xc0c0004
	v_perm_b32 v42, v43, v44, 0xc0c0004
	v_perm_b32 v18, v18, v22, 0xc0c0004
	v_perm_b32 v22, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v28, v28, v29, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v30, v30, v31, 0xc0c0004
	v_lshl_or_b32 v62, v42, 16, v41
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v31, s48, v229
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v152, v22, 16, v18
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v18, v50, v51, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v22, v52, v131, 0xc0c0004
	v_lshl_or_b32 v28, v30, 16, v28
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v30, s48, v252
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v36, v49, v36, 0xc0c0004
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_lshl_or_b32 v29, v22, 16, v18
	v_perm_b32 v18, v24, v25, 0xc0c0004
	v_perm_b32 v22, v26, v27, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v25, s48, v235
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v45, v45, v46, 0xc0c0004
	v_perm_b32 v46, v47, v48, 0xc0c0004
	v_lshl_or_b32 v153, v34, 16, v36
	v_lshl_or_b32 v27, v22, 16, v18
	v_perm_b32 v18, v19, v20, 0xc0c0004
	v_perm_b32 v19, v21, v23, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v20, s48, v226
	v_add_nc_u32_e32 v22, s48, v254
	v_add_nc_u32_e32 v21, s48, v209
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v63, v46, 16, v45
	v_lshl_or_b32 v26, v19, 16, v18
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v18, s48, v227
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v12, v13, v12, 0xc0c0004
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v18, v18
	ds_load_u8 v20, v20
	ds_load_u8 v22, v22
	ds_load_u8 v31, v31
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v41, off, off offset:72
	scratch_load_b32 v40, off, off offset:64
	scratch_load_b32 v24, off, off offset:100
	scratch_load_b32 v19, off, off
	scratch_load_b32 v23, off, off offset:56
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v8, v9, v8, 0xc0c0004
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_perm_b32 v4, v5, v4, 0xc0c0004
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_lshl_or_b32 v11, v14, 16, v16
	v_lshl_or_b32 v10, v10, 16, v12
	v_lshl_or_b32 v9, v6, 16, v8
	ds_load_u8 v21, v21
	ds_load_u8 v25, v25
	v_lshl_or_b32 v8, v2, 16, v4
	ds_load_u8 v30, v30
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v39, s48, v39
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v37, s48, v37
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v38, s48, v38
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v38, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v41, s48, v41
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v40, s48, v40
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v24, s48, v24
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v19, s48, v19
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v23, s48, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v41, v41
	ds_load_u8 v40, v40
	ds_load_u8 v24, v24
	ds_load_u8 v19, v19
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v19, s48, v225
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v20, s48, v253
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v20, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v21, s48, v255
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v22, v21, 0xc0c0004
	v_lshl_or_b32 v21, v19, 16, v18
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v18, s48, v251
	v_add_nc_u32_e32 v19, s48, v250
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v20, v22, 16, v20
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v22, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v18, v18
	ds_load_u8 v19, v19
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s48, v38
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v39, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v147, v38, 16, v37
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v37, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v22, s48, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v19, s48, v208
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v22, v19, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v22, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v19, v19, 16, v18
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v18, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v39, s48, v39
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v40, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v22, s48, v22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v18, s48, v18
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v22, v18, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v22, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v40, s48, v40
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v41, s48, v246
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v146, v40, 16, v39
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:40
	scratch_load_b32 v38, off, off offset:32
	v_add_nc_u32_e32 v37, s48, v37
	v_add_nc_u32_e32 v40, s48, v248
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v41, v41
	ds_load_u8 v37, v37
	ds_load_u8 v40, v40
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v22, s48, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v23, s48, v220
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v18, v22, 16, v18
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v22, s48, v221
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v23, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v39, s48, v39
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s48, v38
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v38, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v23, s48, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v24, s48, v236
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v25, s48, v219
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v30, v25, 0xc0c0004
	v_lshl_or_b32 v25, v23, 16, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v22, s48, v232
	v_add_nc_u32_e32 v23, s48, v231
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v24, v30, 16, v24
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v30, s48, v233
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	ds_load_u8 v23, v23
	ds_load_u8 v30, v30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v23, s48, v234
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v30, v23, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v30, s48, v238
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v23, v23, 16, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v22, s48, v237
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v30, v30
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v30, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v30, s48, v230
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v30, v30
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s48, v38
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v30, 16, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v39, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v145, v38, 16, v37
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v37, off, off offset:20 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v38, s48, v135
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, s48, v39
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s48, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v38, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s48, v38
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v39, s48, v240
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v144, v38, 16, v37
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v37, s48, v241
	v_add_nc_u32_e32 v38, s48, v244
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v38, s48, v239
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v39, s48, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v151, v38, 16, v37
	ds_load_u8 v39, v39
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v37, s48, v223
	v_add_nc_u32_e32 v38, s48, v224
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v40, s48, v245
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v40, v40
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v38, s48, v249
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v40, 16, v39
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v39, s48, v222
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v40, v54, v53, 0xc0c0004
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v39, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v149, v38, 16, v37
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:8
	scratch_load_b32 v38, off, off offset:4
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v39, s48, v39
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s48, v37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s48, v38
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v38, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s48, v38
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	v_perm_b32 v39, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v148, v38, 16, v37
	v_perm_b32 v37, v60, v59, 0xc0c0004
	v_perm_b32 v38, v58, v57, 0xc0c0004
	v_lshl_or_b32 v154, v40, 16, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v155, v38, 16, v37
	v_dual_mov_b32 v39, s19 :: v_dual_mov_b32 v38, s18
	v_dual_mov_b32 v37, s17 :: v_dual_mov_b32 v36, s16
	v_dual_mov_b32 v35, s15 :: v_dual_mov_b32 v34, s14
	v_dual_mov_b32 v33, s13 :: v_dual_mov_b32 v32, s12
	v_wmma_i32_16x16x16_iu8 v[40:47], v[144:147], v[61:64], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[148:151], v[61:64], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[144:147], v[152:155], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[32:39], v[148:151], v[152:155], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[40:47], v[18:21], v[26:29], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[22:25], v[26:29], v[53:60] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[136:143], v[18:21], v[8:11], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[32:39], v[22:25], v[8:11], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v158, v42
	v_cvt_f32_i32_e32 v159, v43
	v_cvt_f32_i32_e32 v154, v44
	v_cvt_f32_i32_e32 v155, v45
	v_cvt_f32_i32_e32 v147, v46
	v_cvt_f32_i32_e32 v150, v47
	v_cvt_f32_i32_e32 v166, v136
	v_cvt_f32_i32_e32 v167, v137
	v_cvt_f32_i32_e32 v164, v138
	v_cvt_f32_i32_e32 v165, v139
	v_cvt_f32_i32_e32 v162, v140
	v_cvt_f32_i32_e32 v163, v141
	v_cvt_f32_i32_e32 v144, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v185, v40
	v_cvt_f32_i32_e32 v160, v41
	v_cvt_f32_i32_e32 v148, v53
	v_cvt_f32_i32_e32 v151, v54
	v_cvt_f32_i32_e32 v153, v55
	v_cvt_f32_i32_e32 v157, v56
	v_cvt_f32_i32_e32 v145, v57
	v_cvt_f32_i32_e32 v146, v58
	v_cvt_f32_i32_e32 v149, v59
	v_cvt_f32_i32_e32 v152, v60
	v_cvt_f32_i32_e32 v141, v32
	v_cvt_f32_i32_e32 v142, v33
	v_cvt_f32_i32_e32 v139, v34
	v_cvt_f32_i32_e32 v140, v35
	v_cvt_f32_i32_e32 v137, v36
	v_cvt_f32_i32_e32 v138, v37
	v_cvt_f32_i32_e32 v65, v38
	v_cvt_f32_i32_e32 v136, v39
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s22, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 26
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s22, s0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v167, off offset:404
	scratch_store_b32 off, v166, off offset:400
	scratch_store_b32 off, v165, off offset:396
	scratch_store_b32 off, v164, off offset:392
	scratch_store_b32 off, v163, off offset:388
	scratch_store_b32 off, v162, off offset:384
	scratch_store_b32 off, v160, off offset:380
	scratch_store_b32 off, v159, off offset:372
	scratch_store_b32 off, v158, off offset:368
	scratch_store_b32 off, v157, off offset:360
	scratch_store_b32 off, v155, off offset:356
	scratch_store_b32 off, v154, off offset:352
	scratch_store_b32 off, v153, off offset:348
	scratch_store_b32 off, v152, off offset:344
	scratch_store_b32 off, v151, off offset:340
	scratch_store_b32 off, v150, off offset:336
	scratch_store_b32 off, v149, off offset:332
	scratch_store_b32 off, v148, off offset:328
	scratch_store_b32 off, v147, off offset:324
	scratch_store_b32 off, v146, off offset:320
	scratch_store_b32 off, v145, off offset:316
	scratch_store_b32 off, v161, off offset:280
	scratch_store_b32 off, v185, off offset:208
	scratch_store_b32 off, v143, off offset:204
	scratch_store_b32 off, v144, off offset:200
	scratch_store_b32 off, v142, off offset:196
	scratch_store_b32 off, v141, off offset:192
	scratch_store_b32 off, v140, off offset:188
	scratch_store_b32 off, v139, off offset:184
	scratch_store_b32 off, v138, off offset:180
	scratch_store_b32 off, v137, off offset:176
	scratch_store_b32 off, v136, off offset:172
	scratch_store_b32 off, v65, off offset:168 ; 4-byte Folded Spill
	s_ashr_i32 s0, s0, 6
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	v_add3_u32 v155, s33, s27, v0
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(27)
	v_add_lshl_u32 v2, v134, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s0, s35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt lgkmcnt(26)
	v_add_lshl_u32 v3, v133, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_and_b32 s9, s9, 0xffff
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt lgkmcnt(18)
	v_add_lshl_u32 v7, v155, s4, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_and_b32 v4, 32, v184
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	v_add_lshl_u32 v6, v132, s0, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_and_b32_e32 v5, 28, v183
	v_add3_u32 v4, 0, v182, v4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_and_b32 s21, s21, 0xffff
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v243, v4, v5
	buffer_load_u16 v3, v3, s[20:23], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v4, 0x80000000, v6 :: v_dual_cndmask_b32 v5, 0x80000000, v7
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v242, 0, v181
	s_waitcnt lgkmcnt(8)
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v13, s47, v130
	s_waitcnt lgkmcnt(3)
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v14, s47, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v1, 0, 1, s3
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v158, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v1
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v64, 0
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v62, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v61, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s12, 0
	v_mov_b32_e32 v144, 0
	v_mov_b32_e32 v140, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v2, off offset:448 ; 4-byte Folded Spill
	buffer_load_u16 v2, v4, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v243, v3 offset:34816
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v2, off offset:452 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v2, v5, s[20:23], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[21:24], v242 offset:34816
	ds_load_b128 v[9:12], v242 offset:34832
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[5:8], v242 offset:35328
	ds_load_b128 v[1:4], v242 offset:35344
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v243, v15 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v33, v13
	ds_load_u8_d16 v167, v13 offset:16
	ds_load_u8_d16 v34, v13 offset:32
	ds_load_u8_d16 v170, v13 offset:48
	ds_load_u8_d16 v35, v13 offset:64
	ds_load_u8_d16 v36, v13 offset:96
	ds_load_u8_d16 v171, v13 offset:112
	ds_load_u8_d16 v172, v13 offset:80
	ds_load_u8_d16 v46, v13 offset:128
	ds_load_u8_d16 v37, v13 offset:160
	ds_load_u8_d16 v47, v13 offset:192
	ds_load_u8_d16 v48, v13 offset:224
	ds_load_u8_d16 v175, v13 offset:240
	ds_load_u8_d16 v177, v13 offset:208
	ds_load_u8_d16 v179, v13 offset:176
	ds_load_u8_d16 v181, v13 offset:144
	ds_load_u8_d16 v38, v13 offset:256
	ds_load_u8_d16 v39, v13 offset:288
	ds_load_u8_d16 v40, v13 offset:320
	ds_load_u8_d16 v41, v13 offset:352
	ds_load_u8_d16 v183, v13 offset:368
	ds_load_u8_d16 v185, v13 offset:336
	ds_load_u8_d16 v187, v13 offset:304
	ds_load_u8_d16 v189, v13 offset:272
	ds_load_u8_d16 v42, v13 offset:384
	ds_load_u8_d16 v43, v13 offset:416
	ds_load_u8_d16 v44, v13 offset:448
	ds_load_u8_d16 v45, v13 offset:480
	ds_load_u8_d16 v191, v13 offset:496
	ds_load_u8_d16 v192, v13 offset:464
	ds_load_u8_d16 v193, v13 offset:432
	ds_load_u8_d16 v194, v13 offset:400
	ds_load_u8_d16 v195, v13 offset:512
	ds_load_u8_d16 v196, v13 offset:544
	ds_load_u8_d16 v197, v13 offset:576
	ds_load_u8_d16 v198, v13 offset:608
	ds_load_u8_d16 v163, v13 offset:624
	ds_load_u8_d16 v164, v13 offset:592
	ds_load_u8_d16 v165, v13 offset:560
	ds_load_u8_d16 v166, v13 offset:528
	ds_load_u8_d16 v49, v13 offset:640
	ds_load_u8_d16 v50, v13 offset:672
	ds_load_u8_d16 v51, v13 offset:704
	ds_load_u8_d16 v52, v13 offset:736
	ds_load_u8_d16 v168, v13 offset:752
	ds_load_u8_d16 v169, v13 offset:720
	ds_load_u8_d16 v173, v13 offset:688
	ds_load_u8_d16 v174, v13 offset:656
	ds_load_u8_d16 v53, v13 offset:768
	ds_load_u8_d16 v54, v13 offset:800
	ds_load_u8_d16 v55, v13 offset:832
	ds_load_u8_d16 v56, v13 offset:864
	ds_load_u8_d16 v176, v13 offset:880
	ds_load_u8_d16 v178, v13 offset:848
	ds_load_u8_d16 v180, v13 offset:816
	ds_load_u8_d16 v182, v13 offset:784
	ds_load_u8_d16 v57, v13 offset:896
	ds_load_u8_d16 v58, v13 offset:928
	ds_load_u8_d16 v59, v13 offset:960
	ds_load_u8_d16 v60, v13 offset:992
	ds_load_u8_d16 v184, v14
	ds_load_u8_d16 v186, v13 offset:976
	ds_load_u8_d16 v188, v13 offset:944
	ds_load_u8_d16 v190, v13 offset:912
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v13, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v13, v42, v43, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v14, v44, v45, 0xc0c0004
	v_perm_b32 v15, v38, v39, 0xc0c0004
	v_perm_b32 v16, v40, v41, 0xc0c0004
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	v_lshl_or_b32 v64, v14, 16, v13
	v_perm_b32 v13, v46, v37, 0xc0c0004
	v_perm_b32 v14, v47, v48, 0xc0c0004
	v_lshl_or_b32 v63, v16, 16, v15
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	v_lshl_or_b32 v62, v14, 16, v13
	v_perm_b32 v13, v33, v34, 0xc0c0004
	v_perm_b32 v14, v35, v36, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v15, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v65, v55, v56, 0xc0c0004
	v_lshl_or_b32 v61, v14, 16, v13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v13, off, off offset:84
	scratch_load_b32 v14, off, off offset:80
	scratch_load_b32 v17, off, off offset:72
	scratch_load_b32 v16, off, off offset:64
	scratch_load_b32 v131, off, off
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v15, s46, v15
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v13, s46, v13
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v14, s46, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v16, s46, v16
	v_add_nc_u32_e32 v17, s46, v17
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	ds_load_u8 v16, v16
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v14, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s46, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v15, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v139, v14, 16, v13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v13, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v15, s46, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v16, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, s46, v16
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v17, s46, v246
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v138, v16, 16, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:40
	scratch_load_b32 v14, off, off offset:32
	v_add_nc_u32_e32 v13, s46, v13
	v_add_nc_u32_e32 v16, s46, v248
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v17, v17
	ds_load_u8 v13, v13
	ds_load_u8 v16, v16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v15, s46, v15
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s46, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v14, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s46, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v15, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v137, v14, 16, v13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v13, off, off offset:20 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v14, s46, v135
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v15, s46, v15
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s46, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	ds_load_u8 v13, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v14, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s46, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s46, v240
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v136, v14, 16, v13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v13, s46, v241
	v_add_nc_u32_e32 v14, s46, v244
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s46, v239
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s46, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v153, v14, 16, v13
	ds_load_u8 v15, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v13, s46, v223
	v_add_nc_u32_e32 v14, s46, v224
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, s46, v245
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v16
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v14, s46, v249
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v16, 16, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s46, v222
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v16, v185, v183, 0xc0c0004
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v15, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v151, v14, 16, v13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:8
	scratch_load_b32 v14, off, off offset:4
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v15, s46, v15
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v13, s46, v13
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s46, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v15
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v14, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s46, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v15, v189, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v150, v14, 16, v13
	v_perm_b32 v13, v194, v193, 0xc0c0004
	v_perm_b32 v14, v192, v191, 0xc0c0004
	v_lshl_or_b32 v159, v16, 16, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v160, v14, 16, v13
	v_perm_b32 v13, v181, v179, 0xc0c0004
	v_perm_b32 v14, v177, v175, 0xc0c0004
	v_lshl_or_b32 v158, v14, 16, v13
	v_perm_b32 v13, v167, v170, 0xc0c0004
	v_perm_b32 v14, v172, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v157, v14, 16, v13
	v_dual_mov_b32 v20, s19 :: v_dual_mov_b32 v19, s18
	v_dual_mov_b32 v18, s17 :: v_dual_mov_b32 v17, s16
	v_dual_mov_b32 v16, s15 :: v_dual_mov_b32 v15, s14
	v_dual_mov_b32 v14, s13 :: v_dual_mov_b32 v13, s12
	v_wmma_i32_16x16x16_iu8 v[25:32], v[136:139], v[61:64], v[13:20] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[150:153], v[61:64], v[13:20] neg_lo:[1,1,0]
	v_perm_b32 v61, v57, v58, 0xc0c0004
	v_perm_b32 v62, v59, v60, 0xc0c0004
	v_perm_b32 v63, v53, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v64, v62, 16, v61
	v_perm_b32 v61, v49, v50, 0xc0c0004
	v_perm_b32 v62, v51, v52, 0xc0c0004
	v_lshl_or_b32 v63, v65, 16, v63
	v_perm_b32 v65, v197, v198, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	v_perm_b32 v61, v195, v196, 0xc0c0004
	v_lshl_or_b32 v61, v65, 16, v61
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v65, s46, v227
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[199:206], v[136:139], v[157:160], v[13:20] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v136, s46, v131
	scratch_load_b32 v131, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v65, v65
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v137, s46, v226
	v_add_nc_u32_e32 v139, s46, v254
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v136, v136
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v138, s46, v209
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[13:20], v[150:153], v[157:160], v[13:20] neg_lo:[1,1,0]
	ds_load_u8 v137, v137
	ds_load_u8 v139, v139
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v151, s46, v235
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v138, v138
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v152, s46, v252
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	ds_load_u8 v152, v152
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v65, v136, v65, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v136, s46, v225
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v137, s46, v253
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v137, v137
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v138, s46, v255
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v138, v138
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	v_lshl_or_b32 v139, v136, 16, v65
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v65, s46, v251
	v_add_nc_u32_e32 v136, s46, v250
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v138, v138, 16, v137
	ds_load_u8 v65, v65
	ds_load_u8 v136, v136
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v137, s46, v131
	scratch_load_b32 v131, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v137, v137
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v65, v136, v65, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v136, s46, v208
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v136, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v136, 16, v65
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v65, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v136, s46, v131
	scratch_load_b32 v131, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v136, v136
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v65, s46, v65
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v65, v65
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v136, v65, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v136, s46, v131
	scratch_load_b32 v131, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v136, v136
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v140, s46, v131
	scratch_load_b32 v131, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v140, v140
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v140, v136, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v140, s46, v220
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v136, v136, 16, v65
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v65, s46, v221
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v140, v140
	v_wmma_i32_16x16x16_iu8 v[25:32], v[136:139], v[61:64], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v65, v65
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v140, v65, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v140, s46, v131
	scratch_load_b32 v131, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v140, v140
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v150, s46, v131
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v150, v150
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v150, v140, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v150, s46, v236
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v153, v140, 16, v65
	ds_load_u8 v150, v150
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v65, s46, v232
	v_add_nc_u32_e32 v140, s46, v231
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v65, v65
	ds_load_u8 v140, v140
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v151, s46, v219
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v151, v151
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v65, v140, v65, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v140, s46, v234
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v140, v140
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v151, 16, v150
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v150, s46, v233
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v150, v150
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v150, v140, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v150, s46, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v151, v140, 16, v65
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v65, s46, v237
	v_add_nc_u32_e32 v140, s46, v238
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v150, v150
	ds_load_u8 v65, v65
	ds_load_u8 v140, v140
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v140, v65, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v140, s46, v230
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v140, v140
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v150, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v150, v140, 16, v65
	v_perm_b32 v65, v178, v176, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[142:149], v[150:153], v[61:64], v[142:149] neg_lo:[1,1,0]
	v_perm_b32 v61, v190, v188, 0xc0c0004
	v_perm_b32 v62, v186, v184, 0xc0c0004
	v_perm_b32 v63, v182, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v157, v142
	v_cvt_f32_i32_e32 v158, v143
	v_lshl_or_b32 v64, v62, 16, v61
	v_perm_b32 v61, v174, v173, 0xc0c0004
	v_perm_b32 v62, v169, v168, 0xc0c0004
	v_lshl_or_b32 v63, v65, 16, v63
	v_perm_b32 v65, v164, v163, 0xc0c0004
	v_cvt_f32_i32_e32 v159, v146
	v_cvt_f32_i32_e32 v160, v147
	v_lshl_or_b32 v62, v62, 16, v61
	v_perm_b32 v61, v166, v165, 0xc0c0004
	v_cvt_f32_i32_e32 v146, v28
	v_cvt_f32_i32_e32 v143, v29
	v_cvt_f32_i32_e32 v147, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v65, 16, v61
	v_wmma_i32_16x16x16_iu8 v[199:206], v[136:139], v[61:64], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[13:20], v[150:153], v[61:64], v[13:20] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v136, v144
	v_cvt_f32_i32_e32 v137, v145
	v_cvt_f32_i32_e32 v138, v148
	v_cvt_f32_i32_e32 v139, v149
	v_cvt_f32_i32_e32 v151, v199
	v_cvt_f32_i32_e32 v152, v200
	v_cvt_f32_i32_e32 v154, v201
	v_cvt_f32_i32_e32 v153, v202
	v_cvt_f32_i32_e32 v142, v203
	v_cvt_f32_i32_e32 v140, v204
	v_cvt_f32_i32_e32 v131, v205
	v_cvt_f32_i32_e32 v65, v206
	v_cvt_f32_i32_e32 v64, v13
	v_cvt_f32_i32_e32 v63, v14
	v_cvt_f32_i32_e32 v61, v15
	v_cvt_f32_i32_e32 v62, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v14, v19
	v_cvt_f32_i32_e32 v13, v20
	v_cvt_f32_i32_e32 v145, v27
	v_cvt_f32_i32_e32 v144, v30
	v_cvt_f32_i32_e32 v148, v32
	v_cvt_f32_i32_e32 v149, v25
	v_cvt_f32_i32_e32 v150, v26
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x12                           ; 76-byte Folded Spill
	scratch_store_b32 off, v160, off offset:444
	scratch_store_b32 off, v159, off offset:440
	scratch_store_b32 off, v158, off offset:436
	scratch_store_b32 off, v157, off offset:432
	scratch_store_b32 off, v154, off offset:428
	scratch_store_b32 off, v153, off offset:424
	scratch_store_b32 off, v142, off offset:420
	scratch_store_b32 off, v140, off offset:416
	scratch_store_b32 off, v131, off offset:412
	scratch_store_b32 off, v65, off offset:408
	scratch_store_b32 off, v64, off offset:376
	scratch_store_b32 off, v63, off offset:364
	scratch_store_b32 off, v62, off offset:312
	scratch_store_b32 off, v61, off offset:308
	scratch_store_b32 off, v16, off offset:304
	scratch_store_b32 off, v15, off offset:300
	scratch_store_b32 off, v14, off offset:296
	scratch_store_b32 off, v13, off offset:292
	scratch_store_b32 off, v156, off offset:156
	ds_load_b128 v[29:32], v242 offset:34816
	ds_load_b128 v[25:28], v242 offset:34832
	ds_load_b128 v[17:20], v242 offset:35328
	ds_load_b128 v[13:16], v242 offset:35344
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v217, 0
	v_mov_b32_e32 v218, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v131, off, off offset:16
	scratch_load_b32 v211, off, off offset:60
	v_add_nc_u32_e32 v63, s45, v237
	v_add_nc_u32_e32 v64, s45, v238
	v_add_nc_u32_e32 v215, s45, v239
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v140, s45, v233
	v_add_nc_u32_e32 v233, s45, v208
	v_add_nc_u32_e32 v141, s45, v232
	v_add_nc_u32_e32 v232, s45, v209
	v_add_nc_u32_e32 v216, s45, v240
	v_add_nc_u32_e32 v217, s45, v241
	v_add_nc_u32_e32 v218, s45, v244
	v_add_nc_u32_e32 v156, s45, v245
	v_add_nc_u32_e32 v154, s45, v252
	v_add_nc_u32_e32 v252, s45, v246
	scratch_load_b32 v61, off, off offset:104 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v153, s45, v219
	v_add_nc_u32_e32 v219, s45, v247
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v42, v42, v43, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v43, v44, v45, 0xc0c0004
	v_perm_b32 v37, v46, v37, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v45, v57, v58, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v46, v59, v60, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v227, s45, v227
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v33, v33, v34, 0xc0c0004
	v_perm_b32 v34, v35, v36, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v161, s45, v221
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v57, v46, 16, v45
	v_perm_b32 v45, v53, v54, 0xc0c0004
	v_perm_b32 v46, v55, v56, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v221, s45, v249
	v_add_nc_u32_e32 v225, s45, v225
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v38, v38, v39, 0xc0c0004
	v_perm_b32 v39, v40, v41, 0xc0c0004
	v_lshl_or_b32 v56, v46, 16, v45
	v_perm_b32 v45, v49, v50, 0xc0c0004
	v_perm_b32 v46, v51, v52, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v226, s45, v226
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v201, v39, 16, v38
	v_perm_b32 v38, v47, v48, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v142, s45, v231
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v55, v46, 16, v45
	v_perm_b32 v45, v195, v196, 0xc0c0004
	v_perm_b32 v46, v197, v198, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v231, s45, v253
	v_add_nc_u32_e32 v62, s45, v229
	v_add_nc_u32_e32 v229, s45, v255
	v_add_nc_u32_e32 v158, s45, v235
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v54, v46, 16, v45
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v235, s45, v251
	v_add_nc_u32_e32 v157, s45, v236
	v_add_nc_u32_e32 v236, s45, v250
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v200, v38, 16, v37
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v135, s45, v135
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v202, v43, 16, v42
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v223, s45, v223
	v_add_nc_u32_e32 v224, s45, v224
	v_add_nc_u32_e32 v222, s45, v222
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v203, s45, v131
	scratch_load_b32 v131, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v237, s45, v211
	scratch_load_b32 v211, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v204, s45, v131
	scratch_load_b32 v131, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v238, s45, v211
	scratch_load_b32 v211, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v205, s45, v131
	scratch_load_b32 v131, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v239, s45, v211
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v211, off, off offset:48
	scratch_load_b32 v199, off, off
	v_add_nc_u32_e32 v162, s45, v220
	v_add_nc_u32_e32 v220, s45, v248
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v206, s45, v131
	v_mov_b32_e32 v131, v228
	v_add_nc_u32_e32 v65, s45, v234
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v228, s45, v199
	scratch_load_b32 v199, off, off offset:96 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v240, s45, v211
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v45, v227
	ds_load_u8 v46, v228
	v_mov_b32_e32 v228, v131
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v225
	ds_load_u8 v47, v226
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v198, v46, 16, v45
	ds_load_u8 v45, v231
	ds_load_u8 v46, v232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v234, s45, v199
	scratch_load_b32 v199, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v207, s45, v199
	scratch_load_b32 v199, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v208, s45, v199
	scratch_load_b32 v199, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v209, s45, v199
	scratch_load_b32 v199, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v210, s45, v199
	scratch_load_b32 v199, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v211, s45, v199
	scratch_load_b32 v199, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v212, s45, v199
	scratch_load_b32 v199, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v213, s45, v199
	scratch_load_b32 v199, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v214, s45, v199
	scratch_load_b32 v199, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v241, s45, v199
	scratch_load_b32 v199, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v244, s45, v199
	scratch_load_b32 v199, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v245, s45, v199
	scratch_load_b32 v199, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v246, s45, v199
	scratch_load_b32 v199, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v247, s45, v199
	scratch_load_b32 v199, off, off offset:24 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v159, s45, v61
	scratch_load_b32 v61, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v248, s45, v199
	scratch_load_b32 v199, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v160, s45, v61
	v_add_nc_u32_e32 v61, s45, v230
	v_add_nc_u32_e32 v230, s45, v254
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v46, v229
	ds_load_u8 v47, v230
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v197, v46, 16, v45
	ds_load_u8 v45, v235
	ds_load_u8 v46, v236
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v233
	ds_load_u8 v47, v234
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v196, v46, 16, v45
	ds_load_u8 v45, v239
	ds_load_u8 v46, v240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v237
	ds_load_u8 v47, v238
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v195, v46, 16, v45
	ds_load_u8 v45, v217
	ds_load_u8 v46, v218
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v215
	ds_load_u8 v47, v216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v218, v46, 16, v45
	ds_load_u8 v45, v219
	ds_load_u8 v46, v220
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v156
	ds_load_u8 v47, v252
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v217, v46, 16, v45
	ds_load_u8 v45, v223
	ds_load_u8 v46, v224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v221
	ds_load_u8 v47, v222
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v216, v46, 16, v45
	ds_load_u8 v45, v205
	ds_load_u8 v46, v206
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v203
	ds_load_u8 v47, v204
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v215, v46, 16, v45
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v249, s45, v199
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v199, v34, 16, v33
	ds_load_u8 v33, v209
	ds_load_u8 v34, v210
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v207
	ds_load_u8 v35, v208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v34, 16, v33
	ds_load_u8 v33, v213
	ds_load_u8 v34, v214
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v211
	ds_load_u8 v35, v212
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v34, 16, v33
	ds_load_u8 v33, v245
	ds_load_u8 v34, v246
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v241
	ds_load_u8 v37, v244
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v37, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v249
	ds_load_u8 v37, v135
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v37, v33, 0xc0c0004
	ds_load_u8 v37, v247
	ds_load_u8 v38, v248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v37, 16, v33
	v_mov_b32_e32 v44, s19
	v_mov_b32_e32 v42, s17
	ds_load_u8 v53, v161
	ds_load_u8 v58, v162
	v_mov_b32_e32 v43, s18
	v_dual_mov_b32 v39, s14 :: v_dual_mov_b32 v38, s13
	v_dual_mov_b32 v41, s16 :: v_dual_mov_b32 v40, s15
	v_mov_b32_e32 v37, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[207:214], v[33:36], v[199:202], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[215:218], v[199:202], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[207:214], v[195:198], v[54:57], v[207:214] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v58, v53, 0xc0c0004
	ds_load_u8 v58, v159
	ds_load_u8 v59, v160
	v_cvt_f32_i32_e32 v203, v213
	v_cvt_f32_i32_e32 v204, v214
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v58, 16, v53
	ds_load_u8 v53, v157
	ds_load_u8 v58, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v58, v53, 0xc0c0004
	ds_load_u8 v58, v153
	ds_load_u8 v59, v154
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v159, v58, 16, v53
	ds_load_u8 v53, v141
	ds_load_u8 v58, v142
	v_cvt_f32_i32_e32 v141, v207
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v58, v53, 0xc0c0004
	ds_load_u8 v58, v65
	ds_load_u8 v59, v140
	v_perm_b32 v65, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v158, v58, 16, v53
	ds_load_u8 v53, v63
	ds_load_u8 v58, v64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v58, v53, 0xc0c0004
	ds_load_u8 v58, v61
	ds_load_u8 v59, v62
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v157, v58, 16, v53
	v_perm_b32 v53, v194, v193, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[45:52], v[157:160], v[54:57], v[45:52] neg_lo:[1,1,0]
	v_perm_b32 v54, v192, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v205, v45
	v_lshl_or_b32 v64, v54, 16, v53
	v_perm_b32 v53, v189, v187, 0xc0c0004
	v_perm_b32 v54, v185, v183, 0xc0c0004
	v_cvt_f32_i32_e32 v206, v46
	v_cvt_f32_i32_e32 v200, v47
	v_cvt_f32_i32_e32 v207, v49
	v_cvt_f32_i32_e32 v199, v50
	v_lshl_or_b32 v63, v54, 16, v53
	v_perm_b32 v53, v181, v179, 0xc0c0004
	v_perm_b32 v54, v177, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v54, 16, v53
	v_perm_b32 v53, v167, v170, 0xc0c0004
	v_perm_b32 v54, v172, v171, 0xc0c0004
	v_lshl_or_b32 v61, v54, 16, v53
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[53:60], v[33:36], v[61:64], v[37:44] neg_lo:[1,1,0]
	v_perm_b32 v33, v190, v188, 0xc0c0004
	v_perm_b32 v34, v186, v184, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[37:44], v[215:218], v[61:64], v[37:44] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v61, v208
	v_cvt_f32_i32_e32 v64, v209
	v_cvt_f32_i32_e32 v62, v211
	v_lshl_or_b32 v36, v34, 16, v33
	v_perm_b32 v33, v182, v180, 0xc0c0004
	v_perm_b32 v34, v178, v176, 0xc0c0004
	v_cvt_f32_i32_e32 v63, v212
	v_cvt_f32_i32_e32 v211, v51
	v_cvt_f32_i32_e32 v212, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v35, v34, 16, v33
	v_perm_b32 v33, v174, v173, 0xc0c0004
	v_perm_b32 v34, v169, v168, 0xc0c0004
	v_lshl_or_b32 v34, v34, 16, v33
	v_perm_b32 v33, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v33, v65, 16, v33
	v_cvt_f32_i32_e32 v65, v210
	v_cvt_f32_i32_e32 v210, v48
	v_wmma_i32_16x16x16_iu8 v[53:60], v[195:198], v[33:36], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[157:160], v[33:36], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v213, v53
	v_cvt_f32_i32_e32 v214, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v215, v55
	v_cvt_f32_i32_e32 v216, v56
	v_cvt_f32_i32_e32 v161, v57
	v_cvt_f32_i32_e32 v162, v58
	v_cvt_f32_i32_e32 v159, v59
	v_cvt_f32_i32_e32 v160, v60
	v_cvt_f32_i32_e32 v157, v37
	v_cvt_f32_i32_e32 v158, v38
	v_cvt_f32_i32_e32 v153, v39
	v_cvt_f32_i32_e32 v154, v40
	v_cvt_f32_i32_e32 v140, v41
	v_cvt_f32_i32_e32 v142, v42
	v_cvt_f32_i32_e32 v217, v43
	v_cvt_f32_i32_e32 v218, v44
.LBB0_16:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s44, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s44, s0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s34, s34, s27
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 6
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v131, s27, v130
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s0, s35
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(62)
	v_add_lshl_u32 v33, v134, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v34, v133, s1, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v35, v132, s0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v132.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(26)
	v_mov_b16_e64 v50.h, v132.l
	s_waitcnt lgkmcnt(24)
	v_mov_b16_e64 v52.h, v132.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v34, v34, s[20:23], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v133.h, v132.l
	v_mov_b16_e64 v134.h, v132.l
	v_mov_b16_e64 v49.h, v132.l
	v_mov_b16_e64 v51.h, v132.l
	s_waitcnt lgkmcnt(19)
	v_mov_b16_e64 v53.h, v132.l
	v_and_b32_e32 v0, 16, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v39, v33, s[8:11], 0 offen
	buffer_load_u16 v38, v35, s[8:11], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v33, v155, s1, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v243, v34 offset:34816
	s_waitcnt lgkmcnt(0)
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_barrier
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v165, off, off offset:372
	scratch_load_b32 v55, off, off offset:392
	scratch_load_b32 v57, off, off offset:276
	scratch_load_b32 v168, off, off offset:352
	scratch_load_b32 v171, off, off offset:252
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v37, v33, s[20:23], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x10                           ; 68-byte Folded Reload
	scratch_load_b32 v33, off, off offset:452
	scratch_load_b32 v155, off, off offset:380
	scratch_load_b32 v167, off, off offset:264
	scratch_load_b32 v172, off, off offset:324
	scratch_load_b32 v54, off, off offset:288
	scratch_load_b32 v164, off, off offset:368
	scratch_load_b32 v166, off, off offset:260
	scratch_load_b32 v135, off, off offset:208
	scratch_load_b32 v60, off, off offset:388
	scratch_load_b32 v156, off, off offset:268
	scratch_load_b32 v56, off, off offset:396
	scratch_load_b32 v58, off, off offset:280
	scratch_load_b32 v169, off, off offset:356
	scratch_load_b32 v170, off, off offset:248
	scratch_load_b32 v59, off, off offset:384
	scratch_load_b32 v163, off, off offset:272
	scratch_load_b32 v48, off, off offset:284
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v34, 1, v228
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v47, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v130, s34, s33, v34
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(17)
	v_mov_b16_e64 v132.h, v33.l
	scratch_load_b32 v33, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v46, v25, v132
	v_mul_f32_e32 v45, v26, v132
	v_mul_f32_e32 v34, v30, v132
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v33.h, v33.l
	v_mov_b16_e64 v33.l, v132.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v42, v31, v132
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v40, v21, v132
	v_mul_f32_e32 v36, v22, v132
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v35, v29, v132 :: v_dual_mul_f32 v30, v30, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v21, v21, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v42, v42, v55, v124
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v55, v27, v33
	v_mul_f32_e32 v29, v29, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v36, v36, v54, v127
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v54, v28, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v44, v23, v132 :: v_dual_mul_f32 v25, v25, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v55, v55, v172, v107
	scratch_load_b32 v172, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v23, v23, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v44, v57, v122
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v11, v33
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v41, v32, v132 :: v_dual_mul_f32 v22, v22, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v43, v24, v132 :: v_dual_mul_f32 v26, v26, v33
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v32, v33
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v41, v41, v56, v125
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v56, v12, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v45, v45, v60, v121
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v60, v6, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v30, v30, v155, v119
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v155, v20, v33
	v_mul_f32_e32 v31, v31, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v25, v168, v111
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v168, v1, v33
	v_mul_f32_e32 v24, v24, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v26, v26, v169, v112
	v_fma_f32 v31, v31, v164, v115
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v164, v7, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v111, v111, v25, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v25, 16, v38
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v169, v16, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v125, v125, v41, s2
	v_cndmask_b32_e64 v124, v124, v42, s2
	v_cndmask_b32_e64 v119, v119, v30, s2
	v_cndmask_b32_e64 v115, v115, v31, s2
	v_cndmask_b32_e64 v127, v127, v36, s2
	v_cndmask_b32_e64 v26, v112, v26, s2
	v_cndmask_b32_e64 v107, v107, v55, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v28, v132
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v12, v132
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v27, v27, v132
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v11, v11, v132
	v_mul_f32_e32 v6, v6, v132
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v20, v20, v132
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v7, v132
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v54, v54, v172, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v172, off, off offset:244 ; 4-byte Folded Reload
	v_fma_f32 v21, v21, v156, v117
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v156, v19, v33
	v_mul_f32_e32 v19, v19, v132
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v108, v108, v54, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v172, v57, v172, v105
	scratch_load_b32 v57, off, off offset:256 ; 4-byte Folded Reload
	v_fma_f32 v43, v43, v58, v123
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v58, v18, v33
	v_mul_f32_e32 v18, v18, v132
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v105, v172, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v56, v56, v57, v106
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v57, off, off offset:328 ; 4-byte Folded Reload
	v_fma_f32 v46, v46, v59, v120
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v59, v17, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v106, v56, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v173, v59, v57, v103
	scratch_load_b32 v57, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v120, v46, s2
	v_cndmask_b32_e64 v103, v103, v173, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v174, v58, v57, v104
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v57, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v29, v29, v135, v88
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v135, v5, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v23, v23, v166, v113
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v166, v13, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v123, v43, s2
	v_cndmask_b32_e64 v120, v88, v29, s2
	v_cndmask_b32_e64 v104, v104, v174, s2
	v_cndmask_b32_e64 v113, v113, v23, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v13, v13, v132
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v135, v135, v57, v101
	scratch_load_b32 v57, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v101, v101, v135, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v175, v60, v57, v102
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v57, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v121, v45, s2
	v_cndmask_b32_e64 v45, v117, v21, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v117, 16, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v24, v24, v167, v114
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v167, v2, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v102, v175, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v2, v132
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v114, v24, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v156, v156, v57, v99
	scratch_load_b32 v57, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v99, v99, v156, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v155, v155, v57, v100
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v57, off, off offset:236 ; 4-byte Folded Reload
	v_fma_f32 v22, v22, v163, v118
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v163, v8, v33
	v_mul_f32_e32 v8, v8, v132
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v100, v100, v155, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v164, v164, v57, v97
	scratch_load_b32 v57, off, off offset:240 ; 4-byte Folded Reload
	v_fma_f32 v40, v40, v48, v126
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v9, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v97, v97, v164, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v126, v126, v40, s2
	v_cndmask_b32_e64 v40, v118, v22, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[21:24], v242 offset:35344
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v155, v21, v117
	v_mul_f32_e32 v135, v22, v117
	v_mul_f32_e32 v22, v22, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v163, v163, v57, v98
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v57, off, off offset:316 ; 4-byte Folded Reload
	v_fma_f32 v32, v32, v165, v116
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v165, v14, v33
	v_mul_f32_e32 v14, v14, v132
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v98, v98, v163, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v163, v23, v117
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v116, v116, v32, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[29:32], v242 offset:34816
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v166, v166, v57, v95
	scratch_load_b32 v57, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v105, v95, v166, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v165, v165, v57, v96
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v57, off, off offset:212 ; 4-byte Folded Reload
	v_fma_f32 v48, v48, v170, v109
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v170, v15, v33
	v_mul_f32_e32 v15, v15, v132
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v102, v96, v165, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v109, v109, v48, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v168, v168, v57, v93
	scratch_load_b32 v57, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v167, v167, v57, v94
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v57, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v106, v94, v167, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v170, v170, v57, v91
	scratch_load_b32 v57, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v114, v91, v170, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v169, v169, v57, v92
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v57, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v35, v35, v47, v128
	scratch_load_b32 v47, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v112, v92, v169, s2
	v_cndmask_b32_e64 v128, v128, v35, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v34, v34, v47, v129
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v47, v10, v33
	v_mul_f32_e32 v10, v10, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v129, v129, v34, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v47, v47, v171, v110
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v171, v4, v33
	v_dual_mul_f32 v33, v3, v33 :: v_dual_mul_f32 v4, v4, v132
	v_mul_f32_e32 v3, v3, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v110, v47, s2
	v_cndmask_b32_e64 v110, v93, v168, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v176, v33, v57, v89
	scratch_load_b32 v33, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v122, v44, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[41:44], v242 offset:34832
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v38, v30, v117
	v_mul_f32_e32 v91, v31, v117
	v_mul_f32_e32 v48, v32, v117
	v_mul_f32_e32 v88, v32, v25
	v_mul_f32_e32 v39, v29, v117
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v32, v38, v150, v40
	v_fma_f32 v38, v91, v145, v113
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v118, v89, v176, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v89, v31, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v39, v149, v45
	v_fma_f32 v39, v48, v146, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v146, v40, v32, s3
	v_cndmask_b32_e64 v113, v113, v38, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v29, v29, v25
	v_mul_f32_e32 v30, v30, v25
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v93, v41, v117
	v_mul_f32_e32 v92, v42, v117
	v_mul_f32_e32 v94, v44, v117
	v_mul_f32_e32 v95, v43, v117
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v145, v30, v152, v127
	v_fma_f32 v91, v93, v143, v109
	v_fma_f32 v48, v92, v144, v47
	v_fma_f32 v143, v94, v148, v54
	v_fma_f32 v92, v95, v147, v55
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v147, v45, v31, s3
	v_cndmask_b32_e64 v148, v46, v39, s3
	v_cndmask_b32_e64 v149, v47, v48, s3
	v_cndmask_b32_e64 v143, v54, v143, s3
	v_cndmask_b32_e64 v150, v55, v92, s3
	v_cndmask_b32_e64 v55, v127, v145, s3
	v_cndmask_b32_e64 v109, v109, v91, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v42, v42, v25
	v_mul_f32_e32 v41, v41, v25
	v_mul_f32_e32 v44, v44, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v171, v171, v33, v90
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[33:36], v242 offset:35328
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v93, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_store_b32 v243, v37 offset:34816
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v90, v90, v171, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v17, v17, v132
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v121, v33, v117
	v_mul_f32_e32 v96, v34, v117
	v_mul_f32_e32 v123, v35, v117
	v_mul_f32_e32 v122, v36, v117
	v_mul_f32_e32 v34, v34, v25
	v_mul_f32_e32 v33, v33, v25
	v_mul_f32_e32 v36, v36, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v123, v123, v136, v97
	v_fma_f32 v122, v122, v137, v98
	v_fma_f32 v137, v163, v138, v118
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v35, v35, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v97, v97, v123, s3
	v_cndmask_b32_e64 v98, v98, v122, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v121, v121, v93, v101
	scratch_load_b32 v93, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v101, v101, v121, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v144, v96, v93, v56
	scratch_load_b32 v93, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v144, v56, v144, s3
	v_cndmask_b32_e64 v56, v118, v137, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v136, v155, v93, v110
	scratch_load_b32 v93, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v242 offset:34832
	ds_load_b128 v[37:40], v242 offset:35328
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v91, v110, v136, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v123, v45, v117
	v_mul_f32_e32 v127, v47, v117
	v_mul_f32_e32 v45, v45, v25
	v_mul_f32_e32 v47, v47, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v62, v123, v62, v111
	v_fma_f32 v45, v45, v161, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v111, v111, v62, s3
	v_cndmask_b32_e64 v45, v59, v45, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v135, v135, v93, v106
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_load_b128 v[93:96], v242 offset:34816
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v92, v106, v135, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v106, v94, v117
	v_mul_f32_e32 v94, v94, v25
	v_mul_f32_e32 v118, v96, v117
	v_mul_f32_e32 v121, v95, v117
	v_mul_f32_e32 v95, v95, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v94, v94, v214, v129
	v_fma_f32 v65, v118, v65, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v64, v121, v64, v115
	v_fma_f32 v95, v95, v215, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v94, v129, v94, s3
	v_cndmask_b32_e64 v65, v116, v65, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v64, v115, v64, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v115, 0xbfb8aa3b, v111
	v_mul_f32_e32 v129, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v115
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v115, 0, 0x42800000, s6
	v_cndmask_b32_e64 v129, 0, 0x42800000, s17
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v156, v24, v117
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v170, 0, 0xffffffc0, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v115, 0xbfb8aa3b, v111
	v_fmac_f32_e32 v129, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v138, v156, v139, v90
	v_fma_f32 v139, v29, v151, v126
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_load_b128 v[29:32], v242 offset:35344
	v_mul_f32_e32 v137, v40, v117
	v_mul_f32_e32 v135, v38, v117
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v90, v90, v138, s3
	v_cndmask_b32_e64 v54, v126, v139, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v126, v48, v117
	v_mul_f32_e32 v138, v39, v117
	v_mul_f32_e32 v136, v37, v117
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v115, v115
	v_exp_f32_e32 v129, v129
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v118, v126, v204, v108
	v_fma_f32 v126, v137, v210, v100
	v_fma_f32 v123, v138, v200, v99
	v_fma_f32 v121, v136, v205, v103
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v48, v48, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v108, v108, v118, s3
	v_cndmask_b32_e64 v100, v100, v126, s3
	v_cndmask_b32_e64 v99, v99, v123, s3
	v_cndmask_b32_e64 v103, v103, v121, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v129, v129, v170
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v145, v29, v117
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v123, 0xbfb8aa3b, v100
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v151, v32, v117 :: v_dual_mul_f32 v118, 0xbfb8aa3b, v108
	v_mul_f32_e32 v38, v38, v25
	v_mul_f32_e32 v37, v37, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v123
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v136, v151, v212, v112
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v151, 0, 0xffffffc0, s6
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v118
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v39, v39, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v123, 0, 0x42800000, s11
	v_cndmask_b32_e64 v164, 0, 0xffffffc0, s11
	v_ldexp_f32 v115, v115, v151
	v_cndmask_b32_e64 v118, 0, 0x42800000, s7
	v_cndmask_b32_e64 v152, 0, 0xffffffc0, s7
	v_dual_fmac_f32 v123, 0xbfb8aa3b, v100 :: v_dual_mul_f32 v40, v40, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v115, 1.0, v115 :: v_dual_fmac_f32 v118, 0xbfb8aa3b, v108
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v123, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v118, v118
	v_ldexp_f32 v123, v123, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v164, null, v115, v115, v111
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v118, v118, v152
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v123, 1.0, v123
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v61, v106, v61, v119
	v_fma_f32 v106, v127, v203, v107
	v_fma_f32 v127, v145, v207, v105
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v192, v164
	v_div_scale_f32 v174, null, v123, v123, v100
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v119, v119, v61, s3
	v_cndmask_b32_e64 v61, v124, v95, s3
	v_cndmask_b32_e64 v106, v107, v106, s3
	v_cndmask_b32_e64 v107, v112, v136, s3
	v_cndmask_b32_e64 v105, v105, v127, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v95, 0xbfb8aa3b, v119
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v197, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v118, 1.0, v118 :: v_dual_mul_f32 v127, 0xbfb8aa3b, v107
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v127
	v_cndmask_b32_e64 v95, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v137, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v127, 0, 0x42800000, s15
	v_cndmask_b32_e64 v168, 0, 0xffffffc0, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v95, 0xbfb8aa3b, v119
	v_fmac_f32_e32 v127, 0xbfb8aa3b, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v95, v95
	v_exp_f32_e32 v127, v127
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v95, v95, v137
	v_ldexp_f32 v127, v127, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v110, v93, v117 :: v_dual_add_f32 v95, 1.0, v95
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v127, 1.0, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v110, v110, v141, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v137, null, v95, v95, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v181, null, v127, v127, v107
	v_rcp_f32_e32 v187, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v110, v120, v110, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v120, 0xbfb8aa3b, v103
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v201, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v207, -v137, v187, 1.0
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v122, v46, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v120, 0, 0x42800000, s10
	v_cndmask_b32_e64 v163, 0, 0xffffffc0, s10
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v187, v207, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v63, v122, v63, v26
	v_fma_f32 v122, v135, v206, v104
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v207, -v164, v192, 1.0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v139, v30, v117 :: v_dual_fmac_f32 v120, 0xbfb8aa3b, v103
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v63, v26, v63, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v104, v104, v122, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v122, 0xbfb8aa3b, v99
	v_mul_f32_e32 v26, 0xbfb8aa3b, v110
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v192, v207, v192
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v135, v139, v199, v102
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v121, 0xbfb8aa3b, v104
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v122
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v26
	v_mul_f32_e32 v116, 0xbfb8aa3b, v63
	v_exp_f32_e32 v120, v120
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v121
	v_cndmask_b32_e64 v122, 0, 0x42800000, s12
	v_cndmask_b32_e64 v165, 0, 0xffffffc0, s12
	v_cndmask_b32_e64 v26, 0, 0x42800000, s0
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v121, 0, 0x42800000, s9
	v_fmac_f32_e32 v122, 0xbfb8aa3b, v99
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v116
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v110
	v_cndmask_b32_e64 v156, 0, 0xffffffc0, s9
	v_fmac_f32_e32 v121, 0xbfb8aa3b, v104
	v_exp_f32_e32 v122, v122
	v_cndmask_b32_e64 v116, 0, 0x42800000, s5
	v_exp_f32_e32 v26, v26
	v_cndmask_b32_e64 v145, 0, 0xffffffc0, s5
	v_exp_f32_e32 v121, v121
	v_ldexp_f32 v120, v120, v163
	v_fmac_f32_e32 v116, 0xbfb8aa3b, v63
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v207, -v174, v197, 1.0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v102, v102, v135, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v30, v30, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v122, v122, v165
	v_exp_f32_e32 v116, v116
	v_ldexp_f32 v26, v26, v138
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v120, 1.0, v120
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v121, v121, v156
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v122, 1.0, v122
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v138, vcc_lo, v119, v95, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v26, 1.0, v26 :: v_dual_add_f32 v121, 1.0, v121
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v176, null, v122, v122, v99
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v116, v116, v145
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v197, v207, v197
	v_div_scale_f32 v170, null, v121, v121, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v198, v176
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v117, v31, v117 :: v_dual_add_f32 v116, 1.0, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v195, v170
	v_div_scale_f32 v165, s9, v111, v115, v111
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v117, v117, v211, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v156, null, v116, v116, v63
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v112, v114, v117, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v117, 0xbfb8aa3b, v106 :: v_dual_mul_f32 v114, 0xbfb8aa3b, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v191, v156
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v126, 0xbfb8aa3b, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v117
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v126
	v_cndmask_b32_e64 v117, 0, 0x42800000, s8
	v_cndmask_b32_e64 v155, 0, 0xffffffc0, s8
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v114, 0, 0x42800000, s1
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v126, 0, 0x42800000, s16
	v_fmac_f32_e32 v117, 0xbfb8aa3b, v106
	v_cndmask_b32_e64 v169, 0, 0xffffffc0, s16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v211, -v156, v191, 1.0
	v_div_scale_f32 v163, s8, v63, v116, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v117, v117
	v_dual_fmac_f32 v126, 0xbfb8aa3b, v112 :: v_dual_fmac_f32 v191, v211, v191
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v177, s1, v99, v122, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v126, v126
	v_ldexp_f32 v117, v117, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v117, 1.0, v117
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v126, v126, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v169, s11, v106, v117, v106
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v114, 0xbfb8aa3b, v65
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v126, 1.0, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v114, v114
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v182, null, v126, v126, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v202, v182
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v114, v114, v139
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v139, null, v26, v26, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v114, 1.0, v114
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v188, v139
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v207, -v182, v202, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v135, 0xbfb8aa3b, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v145, null, v114, v114, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v202, v207, v202
	v_div_scale_f32 v151, s6, v65, v114, v65
	v_rcp_f32_e32 v189, v145
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v208, -v139, v188, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v135
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v188, v208, v188
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v96, v96, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v135, 0, 0x42800000, s20
	v_cndmask_b32_e64 v173, 0, 0xffffffc0, s20
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v209, -v145, v189, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v96, v96, v216, v125
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v125, v96, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v96, 0xbfb8aa3b, v64 :: v_dual_mul_f32 v125, 0xbfb8aa3b, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v136, 0xbfb8aa3b, v62
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v125
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v96, 0, 0x42800000, s4
	v_cndmask_b32_e64 v141, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v125, 0, 0x42800000, s13
	v_cndmask_b32_e64 v166, 0, 0xffffffc0, s13
	v_cndmask_b32_e64 v136, 0, 0x42800000, s19
	v_fmac_f32_e32 v96, 0xbfb8aa3b, v64
	v_cndmask_b32_e64 v172, 0, 0xffffffc0, s19
	v_fmac_f32_e32 v125, 0xbfb8aa3b, v102
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v175, s4, v100, v123, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v96, v96
	v_fmac_f32_e32 v136, 0xbfb8aa3b, v62
	v_exp_f32_e32 v125, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v136, v136
	v_ldexp_f32 v96, v96, v141
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v141, s5, v110, v26, v110
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v125, v125, v166
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v166, null, v118, v118, v108
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v96, 1.0, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v136, v136, v172
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v172, null, v120, v120, v103
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v125, 1.0, v125
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v152, null, v96, v96, v64
	v_div_scale_f32 v155, s7, v64, v96, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v196, v172
	v_rcp_f32_e32 v190, v152
	v_div_scale_f32 v178, null, v125, v125, v102
	v_rcp_f32_e32 v193, v166
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v136, 1.0, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v199, v178
	v_fma_f32 v211, -v172, v196, 1.0
	v_fma_f32 v210, -v152, v190, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v185, null, v136, v136, v62
	v_fma_f32 v208, -v166, v193, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v196, v211, v196
	v_fmac_f32_e32 v190, v210, v190
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v124, 0xbfb8aa3b, v105
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v210, -v170, v195, 1.0
	v_rcp_f32_e32 v205, v185
	v_fma_f32 v211, -v181, v201, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v124
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v195, v210, v195
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v124, 0, 0x42800000, s14
	v_cndmask_b32_e64 v167, 0, 0xffffffc0, s14
	v_fmac_f32_e32 v124, 0xbfb8aa3b, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v124, v124
	v_ldexp_f32 v124, v124, v167
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v167, s10, v108, v118, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v124, 1.0, v124
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v180, null, v124, v124, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v200, v180
	v_fma_f32 v210, -v180, v200, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v93, v93, v25 :: v_dual_fmac_f32 v200, v210, v200
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v210, v138, v187 :: v_dual_fmac_f32 v189, v209, v189
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v93, v93, v213, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v207, -v137, v210, v138
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v93, v128, v93, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v210, v207, v187
	v_div_scale_f32 v168, null, v117, v117, v106
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v128, 0xbfb8aa3b, v93 :: v_dual_mul_f32 v207, v141, v188
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v137, -v137, v210, v138
	v_mul_f32_e32 v138, v151, v189
	v_rcp_f32_e32 v194, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v137, v137, v187, v210
	v_fma_f32 v187, -v145, v138, v151
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v210, s16, v112, v126, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v95, v137, v95, v119
	v_fmac_f32_e32 v138, v187, v189
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v209, -v168, v194, 1.0
	v_fma_f32 v145, -v145, v138, v151
	v_mul_f32_e32 v151, v163, v191
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v194, v209, v194
	v_fma_f32 v209, -v178, v199, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v128, 0, 0x42800000, s18
	v_cndmask_b32_e64 v171, 0, 0xffffffc0, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v199, v209, v199 :: v_dual_fmac_f32 v128, 0xbfb8aa3b, v93
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v128, v128
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v128, v128, v171
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v128, 1.0, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v184, null, v128, v128, v93
	v_div_scale_f32 v187, s18, v93, v128, v93
	v_rcp_f32_e32 v204, v184
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v209, -v184, v204, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v135, 0xbfb8aa3b, v61 :: v_dual_fmac_f32 v204, v209, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v135, v135
	v_ldexp_f32 v135, v135, v173
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v173, s13, v103, v120, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v135, 1.0, v135
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v137, v173, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v186, null, v135, v135, v61
	v_rcp_f32_e32 v206, v186
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v209, -v186, v206, 1.0
	v_fmac_f32_e32 v206, v209, v206
	v_fma_f32 v209, -v139, v207, v141
	v_div_scale_f32 v171, s12, v104, v121, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v207, v209, v188
	v_mul_f32_e32 v119, v171, v195
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v139, -v139, v207, v141
	v_mul_f32_e32 v141, v155, v190
	v_div_fmas_f32 v139, v139, v188, v207
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v207, -v152, v141, v155
	v_mul_f32_e32 v188, v165, v192
	v_div_scale_f32 v179, s0, v102, v125, v102
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v129, 1.0, v129
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v141, v207, v190
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v207, -v156, v151, v163
	v_div_fmas_f32 v138, v145, v189, v138
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v152, -v152, v141, v155
	v_mul_f32_e32 v189, v169, v194
	v_fmac_f32_e32 v151, v207, v191
	v_div_fixup_f32 v110, v139, v26, v110
	v_fma_f32 v26, -v164, v188, v165
	v_div_fmas_f32 v141, v152, v190, v141
	v_mul_f32_e32 v152, v179, v199
	v_div_scale_f32 v183, null, v129, v129, v94
	v_div_scale_f32 v209, s17, v94, v129, v94
	v_fmac_f32_e32 v193, v208, v193
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v203, v183
	v_fma_f32 v208, -v176, v198, 1.0
	v_fma_f32 v156, -v156, v151, v163
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v139, v210, v202
	v_div_fixup_f32 v65, v138, v114, v65
	v_fmac_f32_e32 v198, v208, v198
	v_div_fmas_f32 v151, v156, v191, v151
	v_mul_f32_e32 v114, v187, v204
	v_fma_f32 v138, -v168, v189, v169
	v_fma_f32 v208, -v183, v203, 1.0
	v_dual_fmac_f32 v188, v26, v192 :: v_dual_mul_f32 v155, v175, v197
	v_div_fixup_f32 v64, v141, v96, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v189, v138, v194
	v_fmac_f32_e32 v203, v208, v203
	v_div_scale_f32 v208, s14, v105, v124, v105
	v_fma_f32 v138, -v174, v155, v175
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v65, v148, v65 :: v_dual_mul_f32 v212, v209, v203
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v145, v167, v193 :: v_dual_mul_f32 v190, v208, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v155, v138, v197
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v50.l, v65.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v164, -v164, v188, v165
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v156, -v166, v145, v167
	v_fma_f32 v138, -v180, v190, v208
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v96, v147, v110
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v26, -v170, v119, v171
	v_fmac_f32_e32 v145, v156, v193
	v_fma_f32 v156, -v172, v137, v173
	v_fmac_f32_e32 v190, v138, v200
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v64, v113, v64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v168, -v168, v189, v169
	v_fma_f32 v166, -v166, v145, v167
	v_dual_fmac_f32 v137, v156, v196 :: v_dual_and_b32 v50, 1, v50
	v_fma_f32 v156, -v178, v152, v179
	v_fmac_f32_e32 v201, v211, v201
	v_fma_f32 v211, -v185, v205, 1.0
	v_fma_f32 v180, -v180, v190, v208
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v208, v46, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v152, v156, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v46, v146, v95 :: v_dual_fmac_f32 v205, v211, v205
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v211, s15, v107, v127, v107
	v_div_fmas_f32 v95, v164, v192, v188
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v207, v177, v198
	v_mul_f32_e32 v163, v211, v201
	v_div_fmas_f32 v110, v166, v193, v145
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v63, v151, v116, v63
	v_div_fmas_f32 v116, v168, v194, v189
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v108, v110, v118, v108
	v_fmac_f32_e32 v119, v26, v195
	v_div_fixup_f32 v95, v95, v115, v111
	v_fma_f32 v26, -v176, v207, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v63, v149, v63 :: v_dual_mul_f32 v108, v143, v108
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v170, -v170, v119, v171
	v_fma_f32 v138, -v183, v212, v209
	v_fma_f32 v172, -v172, v137, v173
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v52.l, v63.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v207, v26, v198
	v_div_fmas_f32 v111, v170, v195, v119
	s_mov_b32 vcc_lo, s13
	v_fmac_f32_e32 v212, v138, v203
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v133.l, v96.h
	v_and_b32_e32 v52, 1, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v104, v111, v121, v104
	v_fma_f32 v176, -v176, v207, v177
	v_div_fmas_f32 v110, v172, v196, v137
	s_mov_b32 vcc_lo, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v169.h, v132.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v104, v144, v104
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v174, -v174, v155, v175
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v95, v109, v95
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v134.l, v46.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v181, v163, v211
	v_fma_f32 v183, -v183, v212, v209
	v_div_fmas_f32 v109, v174, v197, v155
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v209, s6, v61, v135, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v111, 1, v133
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v115, v176, v198, v207
	v_fma_f32 v156, -v182, v139, v210
	v_fma_f32 v178, -v178, v152, v179
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v113, 1, v134
	v_cmp_o_f32_e64 s8, v96, v96
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v96, v96, v111, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v99, v115, v122, v99
	v_fmac_f32_e32 v163, v26, v201
	v_div_fixup_f32 v103, v110, v120, v103
	v_div_fmas_f32 v110, v178, v199, v152
	v_div_fixup_f32 v100, v109, v123, v100
	v_fmac_f32_e32 v139, v156, v202
	s_mov_b32 vcc_lo, s14
	v_fma_f32 v26, -v184, v114, v187
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s7, v46, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v106, v116, v117, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v49.l, v64.h
	v_add3_u32 v46, v46, v113, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v109, v180, v200, v190
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v46.l, 0x7fff, v96.h, s8
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v96, v97, v99
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v181, -v181, v163, v211
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v98, v98, v100
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v182, -v182, v139, v210
	s_mov_b32 vcc_lo, s15
	v_fmac_f32_e32 v114, v26, v204
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v106, v150, v106
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s9, v65, v65
	v_mov_b16_e32 v51.l, v95.h
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v50, v65, v50, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v65, v110, v125, v102
	v_div_fixup_f32 v102, v109, v124, v105
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v173.h, v132.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v101, v101, v103
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v103, v181, v201, v163
	s_mov_b32 vcc_lo, s16
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v138.h, v132.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v100, v182, v202, v139
	s_mov_b32 vcc_lo, s17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v175.h, v132.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v210, s5, v62, v136, v62
	v_fma_f32 v184, -v184, v114, v187
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v64, v64
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v64, v64, v49, 0x7fff
	v_mov_b16_e64 v138.l, v104.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v97, v183, v203, v212
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v91, v91, v102
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s18
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v171.h, v132.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v187, v210, v205
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v95, v95
	v_mov_b16_e32 v53.l, v108.h
	v_add3_u32 v51, v95, v51, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v95, v100, v126, v112
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v49.l, 0x7fff, v64.h, s4
	v_and_b32_e32 v64, 1, v138
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v94, v97, v129, v94
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v171.l, v91.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v65, v92, v65
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v92, v184, v204, v114
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v156.h, v132.l
	v_mov_b16_e64 v156.l, v106.h
	v_and_b32_e32 v53, 1, v53
	v_mov_b16_e64 v167.h, v132.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v92, v92, v128, v93
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v93, v56, v95
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v56, v104, v64, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v64, v55, v94
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v63, v63
	v_add3_u32 v52, v63, v52, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v63, v103, v127, v107
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s10, v108, v108
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s7
	v_cmp_o_f32_e64 s7, v104, v104
	v_and_b32_e32 v99, 1, v156
	v_add3_u32 v53, v108, v53, 0x7fff
	v_mov_b16_e64 v167.l, v96.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v63, v90, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v165.h, v132.l
	v_mov_b16_e64 v165.l, v98.h
	v_cmp_o_f32_e64 s11, v106, v106
	v_cndmask_b16 v49.h, 0x7fff, v50.h, s9
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s1
	v_add3_u32 v90, v106, v99, 0x7fff
	v_cndmask_b16 v52.h, 0x7fff, v53.h, s10
	v_and_b32_e32 v53, 1, v167
	v_mov_b16_e64 v173.l, v63.h
	v_cndmask_b16 v55.h, 0x7fff, v56.h, s7
	v_and_b32_e32 v56, 1, v171
	v_mov_b16_e64 v169.l, v65.h
	v_cndmask_b16 v50.l, 0x7fff, v51.h, s0
	v_and_b32_e32 v51, 1, v165
	v_mov_b16_e64 v191.h, v132.l
	v_mov_b16_e64 v177.h, v132.l
	v_cmp_o_f32_e64 s4, v96, v96
	v_cndmask_b16 v52.l, 0x7fff, v90.h, s11
	v_and_b32_e32 v90, 1, v169
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v54, v54, v92
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v53, v96, v53, 0x7fff
	v_mov_b16_e64 v177.l, v64.h
	v_and_b32_e32 v92, 1, v173
	v_mov_b16_e64 v191.l, v101.h
	v_add3_u32 v51, v98, v51, 0x7fff
	v_mov_b16_e64 v179.h, v132.l
	v_cmp_o_f32_e64 s1, v65, v65
	v_mov_b16_e64 v175.l, v93.h
	v_and_b32_e32 v97, 1, v191
	v_add3_u32 v65, v65, v90, 0x7fff
	v_mov_b16_e64 v179.l, v54.h
	v_cndmask_b16 v51.l, 0x7fff, v53.h, s4
	v_and_b32_e32 v53, 1, v177
	v_cmp_o_f32_e64 s8, v101, v101
	v_add3_u32 v94, v101, v97, 0x7fff
	v_cmp_o_f32_e64 s9, v63, v63
	v_cmp_o_f32_e64 s7, v64, v64
	v_and_b32_e32 v90, 1, v175
	v_cmp_o_f32_e64 s0, v91, v91
	v_add3_u32 v91, v91, v56, 0x7fff
	v_add3_u32 v63, v63, v92, 0x7fff
	v_cndmask_b16 v56.h, 0x7fff, v65.h, s1
	v_and_b32_e32 v65, 1, v179
	v_add3_u32 v64, v64, v53, 0x7fff
	v_cndmask_b16 v55.l, 0x7fff, v94.h, s8
	v_cmp_o_f32_e64 s8, v54, v54
	v_cndmask_b16 v53.h, 0x7fff, v63.h, s9
	v_add3_u32 v63, v54, v65, 0x7fff
	v_cndmask_b16 v54.h, 0x7fff, v64.h, s7
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v64, v208, v162, v60
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v65, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s10, v93, v93
	v_add3_u32 v90, v93, v90, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v60, v64, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v64, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v56.l, 0x7fff, v91.h, s0
	v_cndmask_b16 v53.l, 0x7fff, v90.h, s10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v90, v209, v206
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v51.h, 0x7fff, v51.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s5
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v59, 0xbfb8aa3b, v60
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v54.l, 0x7fff, v63.h, s8
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v1, v1, v132
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v26, s27, 4, v131
	s_mov_b32 s27, 0x31027000
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v59, 0, 0x42800000, s0
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v60
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v59, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v65, v89, v65, v57
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v89, -v185, v187, v210
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v64, v88, v64, v58
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v187, v89, v205
	v_fma_f32 v88, -v186, v90, v209
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v57, v65, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v9, v132
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v58, v64, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v64, -v185, v187, v210
	v_fmac_f32_e32 v90, v88, v206
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v88, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v64, v64, v205, v187
	v_fma_f32 v89, -v186, v90, v209
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v88
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v62, v64, v136, v62
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v89, v89, v206, v90
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v90, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v88, 0, 0x42800000, s1
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s0
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v58, v58, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v61, v89, v135, v61
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v45
	v_ldexp_f32 v59, v59, v64
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v57, v57, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v61.l, v58.h
	v_mov_b16_e64 v61.h, v132.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v62, v88
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v64.h, v132.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v61, 1, v61
	v_add3_u32 v61, v58, v61, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v62, v62, v63
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v63, null, v59, v59, v60
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.h, 0x7fff, v61.h, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v61, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v58, 1.0, v62
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v62, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v88, null, v58, v58, v45
	v_fma_f32 v89, -v63, v62, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v62, v89, v62
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v89, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v10, v10, v61, v87
	scratch_load_b32 v61, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v87, v10, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v42, v42, v90, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v10, v42, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v27, v27, v89, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v84, v27, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v47, v47, v159, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v47, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v61, v65, v61, v86
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v65, v88
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v86, v61, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v86, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v87, -v88, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v87, v65
	v_div_scale_f32 v87, s0, v45, v58, v45
	v_mul_f32_e32 v84, v87, v65
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v28, v28, v86, v85
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v86, vcc_lo, v60, v59, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v85, v28, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v85, v86, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v48, v48, v160, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v48, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v48, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v41, v41, v48, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v63, v85, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v61, v41, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v85, v48, v62
	v_fma_f32 v48, -v88, v84, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v63, v85, v86
	v_fmac_f32_e32 v84, v48, v65
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v63, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v89, 0xbfb8aa3b, v28 :: v_dual_mul_f32 v48, 0xbfb8aa3b, v27
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v42, v42, v62, v85
	v_fma_f32 v62, -v88, v84, v87
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v89
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v42, v42, v59, v60
	v_div_fmas_f32 v62, v62, v65, v84
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v60, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	v_cndmask_b32_e64 v48, 0, 0x42800000, s4
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s1
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v45, v62, v58, v45
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	scratch_load_b32 v62, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v47, 0xbfb8aa3b, v28 :: v_dual_fmac_f32 v48, 0xbfb8aa3b, v27
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v10, v42
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v57.h
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v42, v48
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v64, 1, v64
	v_cmp_o_f32_e64 s0, v10, v10
	v_add3_u32 v64, v57, v64, 0x7fff
	v_mov_b16_e64 v57.h, v132.l
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v47, v47, v59
	v_ldexp_f32 v42, v42, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.l, 0x7fff, v64.h, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v47, 1.0, v47 :: v_dual_add_f32 v42, 1.0, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v47, v47, v28
	v_div_scale_f32 v59, null, v42, v42, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v58, v48
	v_fma_f32 v61, -v48, v58, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v58, v61, v58
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v17, v17, v63, v80
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v63, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v80, v17, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v12, v12, v60, v83
	scratch_load_b32 v60, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v37, v37, v157, v17
	s_waitcnt vmcnt(2)
	v_fma_f32 v18, v18, v62, v81
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v62, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v17, v37, s3
	v_cndmask_b32_e64 v18, v81, v18, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v38, v38, v158, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v38, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v41, v41, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.l, v10.h
	v_mov_b16_e64 v45.h, v132.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v45, v10, v45, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v83, v12, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v43, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, v44, v63, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v10, v44, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v57.l, v41.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v11, v11, v60, v82
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v60, v59
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v82, v11, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v12, v12, v62, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v61, -v59, v60, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v18
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v12, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, s1, v27, v42, v27
	v_mul_f32_e32 v64, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v59, v64, v61
	v_fmac_f32_e32 v64, v38, v60
	v_div_scale_f32 v43, vcc_lo, v28, v47, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v59, v64, v61
	v_mul_f32_e32 v62, v43, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v48, v62, v43
	v_fmac_f32_e32 v62, v63, v58
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v12, -v48, v62, v43
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v17
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v48, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v12, v12, v58, v62
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v38, v38, v60, v64
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v43, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v12, v47, v28
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v47, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v28, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v27, v38, v42, v27
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v10, v12
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v10.h, 0x7fff, v45.h, s0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v45, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v41, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v28, v28, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v57, 1, v57
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v37, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v38.h, v132.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v57, v41, v57, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, null, v28, v28, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v37, v37, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v10.l, 0x7fff, v57.h, s0
	v_cmp_o_f32_e64 s0, v12, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v41, v42
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v21, v21, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v6, v6, v43, v79
	scratch_load_b32 v43, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v19, v19, v47, v76
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v79, v6, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v19, v76, v19, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v20, v20, v45, v77
	v_fma_f32 v39, v39, v153, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v77, v20, s2
	v_cndmask_b32_e64 v19, v19, v39, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v39, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v5, v132
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v40, v40, v154, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v20, v40, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v5, v5, v43, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v43, -v42, v41, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v78, v5, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v41, v43, v41
	v_div_scale_f32 v43, vcc_lo, v18, v28, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v33, v33, v48, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v47, v43, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v33, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v42, v47, v43
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v34, v34, v39, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v47, v48, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v34, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v19
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, s1, v17, v37, v17
	v_fma_f32 v34, -v42, v47, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v34, v41, v47
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v18, v34, v28, v18
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v11, v27
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.l, v12.h
	v_mov_b16_e64 v27.h, v132.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v19
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v18
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v18.h, v132.l
	v_mov_b16_e32 v38.l, v11.h
	v_and_b32_e32 v27, 1, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v6.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v42, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v27, v12, v27, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v12, null, v37, v37, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v38, v11, v38, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v44, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v6, v6
	v_add3_u32 v18, v6, v18, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v6, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v28.h, v132.l
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v12, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v45, v44
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v57, v40, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v12, v57, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v57, v39, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v12, -v12, v57, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v45
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v12, v12, v44, v57
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v12, v37, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v39, v40
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v39, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v27.l, 0x7fff, v38.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v5, v12
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v12, v41, v17
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v5.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, null, v11, v11, v20
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v33, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v34, null, v12, v12, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v5, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v37, v34
	v_fma_f32 v38, -v17, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v38, v33
	v_div_scale_f32 v38, vcc_lo, v20, v11, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v6, v7, v6, v74
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v74, v6, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v8, v8, v39, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v34, v37, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v75, v8, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v8, v38, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s1, v19, v12, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v36, v36, v42, v7
	scratch_load_b32 v42, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v17, v8, v38
	v_mul_f32_e32 v41, v39, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v36, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v36, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v8, v40, v33
	v_fma_f32 v40, -v34, v41, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v17, v8, v38
	v_fmac_f32_e32 v41, v40, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v8, v17, v33, v8
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v33, off, off offset:176 ; 4-byte Folded Reload
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
	scratch_load_b32 v17, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v18.l, 0x7fff, v28.h, vcc_lo
	v_cmp_o_f32_e64 s4, v7, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v28, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_fma_f32 v35, v35, v42, v6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v35, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v35, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v7.h
	v_mov_b16_e64 v12.h, v132.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(3)
	v_fma_f32 v13, v13, v33, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v12, 1, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v72, v13, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v13, v29, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v12, v7, v12, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v5, v13, v140, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.l, v6.h
	v_mov_b16_e64 v13.h, v132.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v1, v1, v28, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v11, v5, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v13, 1, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v68, v1, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v6, v13, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v13, v16, v132
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v14, v14, v35, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v73, v14, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v20, v30, v142, v14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v14, v20, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v14, 0xbfb8aa3b, v5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v20, off, off offset:132 ; 4-byte Folded Reload
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
	scratch_load_b32 v16, off, off offset:168 ; 4-byte Folded Reload
	v_fma_f32 v13, v13, v17, v71
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v71, v13, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v14, v14, v17
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v17, v31, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v19, null, v11, v11, v8
	v_div_scale_f32 v31, s1, v8, v11, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v2, v2, v20, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v14, v14, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v69, v2, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v28, v20
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v15, v15, v16, v70
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v32, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, s4, v5, v14, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v70, v15, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v16, v218, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, v17, v217, v15
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
	v_fma_f32 v30, -v20, v28, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, s0
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v33, v31, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v28, v30, v28 :: v_dual_fmac_f32 v29, 0xbfb8aa3b, v15
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
	v_mul_f32_e32 v30, v32, v28
	v_fma_f32 v19, -v19, v33, v31
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v29, v34
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v34, off, off offset:304 ; 4-byte Folded Reload
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
	scratch_load_b32 v16, off, off offset:124 ; 4-byte Folded Reload
	v_fma_f32 v22, v22, v36, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v22, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v21, v21, v34, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v20, v30, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v21, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v30, v34, v28
	v_div_scale_f32 v34, null, v29, v29, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v30, v32
	v_rcp_f32_e32 v31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v20, v28, v30
	v_fma_f32 v20, -v35, v36, 1.0
	v_div_fixup_f32 v5, v19, v14, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v36, v20, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v20, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v14, vcc_lo, v13, v17, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v3, v3, v16, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v21, -v34, v31, 1.0
	v_div_scale_f32 v19, s0, v15, v29, v15
	v_mul_f32_e32 v11, v14, v36
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v31, v21, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v67, v3, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v16, -v35, v11, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v5, v19, v31
	v_dual_fmac_f32 v11, v16, v36 :: v_dual_mul_f32 v16, v23, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v8, -v34, v5, v19
	v_fma_f32 v14, -v35, v11, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v5, v8, v31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v24, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v11, v14, v36, v11
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v34, v5, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v14, off, off offset:292 ; 4-byte Folded Reload
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
	v_fma_f32 v4, v4, v20, v66
	scratch_load_b32 v20, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v66, v4, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v8, v8, v14, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.l, v2.h
	v_mov_b16_e64 v14.h, v132.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v8, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v11, v17, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v1.h
	v_mov_b16_e64 v11.h, v132.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v13, 0x7632 :: v_dual_mul_f32 v4, v4, v8
	v_mov_b16_e64 v8.h, v132.l
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
	v_dual_cndmask_b32 v2, v46, v50 :: v_dual_cndmask_b32 v5, v49, v52
	v_cndmask_b32_e32 v7, v55, v56, vcc_lo
	v_dual_cndmask_b32 v14, v51, v53 :: v_dual_cndmask_b32 v15, v10, v54
	v_cndmask_b32_e32 v10, v54, v10, vcc_lo
	v_dual_cndmask_b32 v16, v27, v9 :: v_dual_cndmask_b32 v9, v9, v27
	v_cndmask_b32_e32 v17, v3, v18, vcc_lo
	v_cndmask_b32_e32 v3, v18, v3, vcc_lo
	v_dual_cndmask_b32 v1, v50, v46 :: v_dual_cndmask_b32 v4, v52, v49
	v_cndmask_b32_e32 v6, v56, v55, vcc_lo
	v_cndmask_b32_e32 v8, v53, v51, vcc_lo
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
	v_add_lshl_u32 v16, v130, v131, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v12, v20, v17, v14
	v_perm_b32 v13, v20, v17, v19
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v17, v130, v26, 1
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 460
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 460
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 32876
; TotalNumSgprs: 55
; NumVgprs: 256
; ScratchSize: 460
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 460
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 144
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
