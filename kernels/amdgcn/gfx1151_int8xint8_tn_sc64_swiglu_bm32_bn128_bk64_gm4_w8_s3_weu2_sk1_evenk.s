	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v161, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v160, 3, v0
	v_and_b32_e32 v83, 15, v0
	v_or_b32_e32 v163, 0x3f0, v0
	v_or_b32_e32 v164, 0x7f0, v0
	s_mov_b32 s49, 0
	v_and_b32_e32 v4, 24, v160
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v49, 0, v160
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v12, 16, v83
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, v49, v160
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s22, 31
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
	s_lshr_b32 s9, s9, 27
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
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s13, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v2, s22, v2
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s13
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
	s_xor_b32 s8, s2, s13
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
	s_mul_i32 s14, s14, s13
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
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v161
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s31, s7
	s_mov_b64 s[24:25], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s17
	s_mul_i32 s18, s18, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s13, s6, s18
	s_xor_b32 s18, s2, s16
	s_add_i32 s13, s6, s13
	s_ashr_i32 s18, s18, 31
	s_mul_hi_u32 s13, s14, s13
	s_mov_b32 s6, 0x7ffffffe
	s_mul_i32 s19, s13, s17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s30, s6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s13, 1
	s_sub_i32 s20, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s13, s19, s13
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s13, s19, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s14, s12, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s12, s13, s18
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s26, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s12, s18
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s35, s23, 1
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s13, s3, s16
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[41:42], null, s35, v3, v[1:2]
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s13
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s12, s14, 31
.Ltmp15:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s3, 7
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s2, 5
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s2, s12, 26
.Ltmp17:
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v42, v2, v4, s34
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s12, s14, s2
.Ltmp19:
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s13, s35, s26
	v_lshl_add_u32 v162, s23, 6, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s14, 63
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s16, s22, s26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s13, s33, s13
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0x7f
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v1, s16, v42
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s13, v41
	v_add_nc_u32_e32 v3, s13, v162
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s17, s23, 7
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s15, s22, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s13, s13, s17
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 346 30 is_stmt 0              ; generate_amdgcn.py:346:30
	v_add3_u32 v4, s16, s15, v42
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s3
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v7, s23, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v9, s13, v41
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v6, 0x80000000, v3, s3
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v8, s23, v3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v10, s13, v162
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[2:3], v1, s[4:7], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v4, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v5, s[28:31], 0 offen
	buffer_load_b128 v[17:20], v6, s[28:31], 0 offen
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v4, 0x80000000, v7, s3
	.loc	1 358 39 is_stmt 0              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v6, s23, v9
	v_add3_u32 v11, s13, s23, v162
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v5, 0x80000000, v8, s3
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v7, 0x80000000, v9, s2
	v_cndmask_b32_e64 v8, 0x80000000, v10, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[21:24], v4, s[28:31], 0 offen
	buffer_load_b128 v[25:28], v5, s[28:31], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s2
	v_cndmask_b32_e64 v5, 0x80000000, v11, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[47:48], v1, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[29:32], v7, s[28:31], 0 offen
	buffer_load_b128 v[33:36], v8, s[28:31], 0 offen
	buffer_load_b128 v[37:40], v4, s[28:31], 0 offen
	buffer_load_b128 v[43:46], v5, s[28:31], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 1, v0
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0xbf
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(9)
	ds_store_b64 v49, v[2:3] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v50, v[13:16]
	s_waitcnt vmcnt(7)
	ds_store_b128 v50, v[17:20] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v50, v[21:24] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v50, v[25:28] offset:20480
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v49, v[47:48] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v50, v[29:32] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v50, v[33:36] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v50, v[37:40] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v50, v[43:46] offset:28672
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v7, v4, 1, v1
	v_or_b32_e32 v165, v1, v83
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v8, 2, v7
	v_or_b32_e32 v9, 4, v7
	v_or_b32_e32 v10, 6, v7
	v_or_b32_e32 v11, 8, v7
	v_or_b32_e32 v4, 10, v7
	v_or_b32_e32 v5, 12, v7
	v_or_b32_e32 v6, 14, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v1, v1, v83
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v3, 0x3f0, v0
	v_or_b32_e32 v2, 0x7f0, v0
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v13, 0x80, v1
	v_or_b32_e32 v158, 0x180, v1
	v_or_b32_e32 v159, 0x200, v1
	v_or_b32_e32 v219, 0x400, v1
	v_or_b32_e32 v220, 0x480, v1
	scratch_store_b32 off, v13, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x100, v1
	v_or_b32_e32 v221, 0x500, v1
	v_or_b32_e32 v222, 0x580, v1
	v_or_b32_e32 v223, 0x600, v1
	v_or_b32_e32 v224, 0x680, v1
	scratch_store_b32 off, v13, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x280, v1
	v_or_b32_e32 v225, 0x700, v1
	v_or_b32_e32 v170, 0x780, v1
	v_or_b32_e32 v171, 0x800, v1
	v_or_b32_e32 v228, 0x880, v1
	scratch_store_b32 off, v13, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x300, v1
	v_or_b32_e32 v229, 0x900, v1
	v_or_b32_e32 v230, 0x980, v1
	v_or_b32_e32 v231, 0xa00, v1
	v_or_b32_e32 v232, 0xa80, v1
	scratch_store_b32 off, v13, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x380, v1
	v_or_b32_e32 v233, 0xb00, v1
	v_or_b32_e32 v234, 0xb80, v1
	v_or_b32_e32 v235, 0xc00, v1
	v_or_b32_e32 v236, 0xc80, v1
	scratch_store_b32 off, v13, off         ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1680, v1
	v_or_b32_e32 v237, 0xd00, v1
	v_or_b32_e32 v238, 0xd80, v1
	v_or_b32_e32 v239, 0xe00, v1
	v_or_b32_e32 v169, 0xe80, v1
	scratch_store_b32 off, v13, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1700, v1
	v_or_b32_e32 v241, 0xf00, v1
	v_or_b32_e32 v242, 0xf80, v1
	v_or_b32_e32 v243, 0x1000, v1
	v_or_b32_e32 v244, 0x1080, v1
	scratch_store_b32 off, v13, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1780, v1
	v_or_b32_e32 v245, 0x1100, v1
	v_or_b32_e32 v246, 0x1180, v1
	v_or_b32_e32 v247, 0x1200, v1
	v_or_b32_e32 v248, 0x1280, v1
	scratch_store_b32 off, v13, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1800, v1
	v_or_b32_e32 v249, 0x1300, v1
	v_or_b32_e32 v250, 0x1380, v1
	v_or_b32_e32 v251, 0x1400, v1
	v_or_b32_e32 v252, 0x1480, v1
	scratch_store_b32 off, v13, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1880, v1
	v_or_b32_e32 v253, 0x1500, v1
	v_or_b32_e32 v254, 0x1580, v1
	v_or_b32_e32 v255, 0x1600, v1
	scratch_store_b32 off, v13, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1900, v1
	scratch_store_b32 off, v13, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1980, v1
	scratch_store_b32 off, v13, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1a00, v1
	scratch_store_b32 off, v13, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1a80, v1
	scratch_store_b32 off, v13, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1b00, v1
	scratch_store_b32 off, v13, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1b80, v1
	scratch_store_b32 off, v13, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1c00, v1
	scratch_store_b32 off, v13, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1c80, v1
	scratch_store_b32 off, v13, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1d00, v1
	scratch_store_b32 off, v13, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1d80, v1
	scratch_store_b32 off, v13, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1e00, v1
	scratch_store_b32 off, v13, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1e80, v1
	scratch_store_b32 off, v13, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1f00, v1
	scratch_store_b32 off, v13, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1f80, v1
	scratch_store_b32 off, v13, off offset:84 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr158
                                        ; implicit-def: $vgpr159
                                        ; implicit-def: $vgpr219
                                        ; implicit-def: $vgpr220
                                        ; implicit-def: $vgpr221
                                        ; implicit-def: $vgpr222
                                        ; implicit-def: $vgpr223
                                        ; implicit-def: $vgpr224
                                        ; implicit-def: $vgpr225
                                        ; implicit-def: $vgpr170
                                        ; implicit-def: $vgpr171
                                        ; implicit-def: $vgpr228
                                        ; implicit-def: $vgpr229
                                        ; implicit-def: $vgpr230
                                        ; implicit-def: $vgpr231
                                        ; implicit-def: $vgpr232
                                        ; implicit-def: $vgpr233
                                        ; implicit-def: $vgpr234
                                        ; implicit-def: $vgpr235
                                        ; implicit-def: $vgpr236
                                        ; implicit-def: $vgpr237
                                        ; implicit-def: $vgpr238
                                        ; implicit-def: $vgpr239
                                        ; implicit-def: $vgpr169
                                        ; implicit-def: $vgpr241
                                        ; implicit-def: $vgpr242
                                        ; implicit-def: $vgpr243
                                        ; implicit-def: $vgpr244
                                        ; implicit-def: $vgpr245
                                        ; implicit-def: $vgpr246
                                        ; implicit-def: $vgpr247
                                        ; implicit-def: $vgpr248
                                        ; implicit-def: $vgpr249
                                        ; implicit-def: $vgpr250
                                        ; implicit-def: $vgpr251
                                        ; implicit-def: $vgpr252
                                        ; implicit-def: $vgpr253
                                        ; implicit-def: $vgpr254
                                        ; implicit-def: $vgpr255
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
.LBB0_3:                                ; %Flow291
	s_load_b64 s[20:21], s[0:1], 0x20
	v_or_b32_e32 v13, s34, v83
	v_or_b32_e32 v12, s34, v12
	s_ashr_i32 s1, s12, 6
	v_or_b32_e32 v94, s33, v7
	v_or_b32_e32 v93, s33, v8
	v_mul_lo_u32 v95, v13, s1
	v_mul_lo_u32 v96, v12, s1
	v_or_b32_e32 v92, s33, v9
	v_or_b32_e32 v91, s33, v10
	v_or_b32_e32 v59, s33, v11
	v_or_b32_e32 v60, s33, v4
	v_or_b32_e32 v61, s33, v5
	v_or_b32_e32 v62, s33, v6
	v_add_nc_u32_e32 v90, s23, v7
	v_add_nc_u32_e32 v89, s23, v8
	v_add_nc_u32_e32 v88, s23, v9
	v_add_nc_u32_e32 v86, s23, v10
	v_add_nc_u32_e32 v85, s23, v11
	v_add_nc_u32_e32 v87, s23, v4
	v_add_nc_u32_e32 v57, s23, v5
	v_add_nc_u32_e32 v58, s23, v6
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_add_i32 s44, s26, 64
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_or_b32_e32 v1, 0x80, v165
	v_or_b32_e32 v158, 0x180, v165
	v_or_b32_e32 v159, 0x200, v165
	v_or_b32_e32 v219, 0x400, v165
	v_or_b32_e32 v220, 0x480, v165
	scratch_store_b32 off, v1, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x100, v165
	v_or_b32_e32 v221, 0x500, v165
	v_or_b32_e32 v222, 0x580, v165
	v_or_b32_e32 v223, 0x600, v165
	v_or_b32_e32 v224, 0x680, v165
	scratch_store_b32 off, v1, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x280, v165
	v_or_b32_e32 v225, 0x700, v165
	v_or_b32_e32 v170, 0x780, v165
	v_or_b32_e32 v171, 0x800, v165
	v_or_b32_e32 v228, 0x880, v165
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x300, v165
	v_or_b32_e32 v229, 0x900, v165
	v_or_b32_e32 v230, 0x980, v165
	v_or_b32_e32 v231, 0xa00, v165
	v_or_b32_e32 v232, 0xa80, v165
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x380, v165
	v_or_b32_e32 v233, 0xb00, v165
	v_or_b32_e32 v234, 0xb80, v165
	v_or_b32_e32 v235, 0xc00, v165
	v_or_b32_e32 v236, 0xc80, v165
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1680, v165
	v_or_b32_e32 v237, 0xd00, v165
	v_or_b32_e32 v238, 0xd80, v165
	v_or_b32_e32 v239, 0xe00, v165
	v_or_b32_e32 v169, 0xe80, v165
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1700, v165
	v_or_b32_e32 v241, 0xf00, v165
	v_or_b32_e32 v242, 0xf80, v165
	v_or_b32_e32 v243, 0x1000, v165
	v_or_b32_e32 v244, 0x1080, v165
	scratch_store_b32 off, v1, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1780, v165
	v_or_b32_e32 v245, 0x1100, v165
	v_or_b32_e32 v246, 0x1180, v165
	v_or_b32_e32 v247, 0x1200, v165
	v_or_b32_e32 v248, 0x1280, v165
	scratch_store_b32 off, v1, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1800, v165
	v_or_b32_e32 v249, 0x1300, v165
	v_or_b32_e32 v250, 0x1380, v165
	v_or_b32_e32 v251, 0x1400, v165
	v_or_b32_e32 v252, 0x1480, v165
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1880, v165
	v_or_b32_e32 v253, 0x1500, v165
	v_or_b32_e32 v254, 0x1580, v165
	v_or_b32_e32 v255, 0x1600, v165
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v78, 0
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1900, v165
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1980, v165
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1a00, v165
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1a80, v165
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1b00, v165
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1b80, v165
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1c00, v165
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1c80, v165
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	scratch_store_b32 off, v1, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1d00, v165
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s10, s1, 3
	s_mov_b32 s12, 0
	s_add_i32 s0, s44, 64
	s_and_b32 s37, s9, 0xffff
	scratch_store_b32 off, v1, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1d80, v165
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_add_i32 s50, 0, 0x8000
	scratch_store_b32 off, v1, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1e00, v165
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s11, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	scratch_store_b32 off, v1, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1e80, v165
	s_add_i32 s10, s10, -3
	s_mov_b32 s27, 1
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	scratch_store_b32 off, v1, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1f00, v165
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	scratch_store_b32 off, v1, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1f80, v165
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s49, s12
	s_mov_b32 s48, s12
	scratch_store_b32 off, v1, off offset:84 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s51, s49
	s_mov_b32 s49, s11
	s_mov_b32 s11, s26
	s_mov_b32 s26, s44
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s44, s48, 6
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v84, s50, v83
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s44, s0, s44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v97, s51, v165
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[1:2], null, s44, s22, v[42:43]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v98, s49, v165
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v40, s19 :: v_dual_mov_b32 v39, s18
	v_dual_mov_b32 v38, s17 :: v_dual_mov_b32 v37, s16
	v_dual_mov_b32 v36, s15 :: v_dual_mov_b32 v35, s14
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[43:44], v1, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v84 offset:416
	ds_load_u8 v2, v84 offset:384
	ds_load_u8 v3, v84 offset:480
	ds_load_u8 v4, v84 offset:448
	ds_load_u8 v5, v84 offset:288
	ds_load_u8 v6, v84 offset:256
	ds_load_u8 v7, v84 offset:352
	ds_load_u8 v8, v84 offset:320
	ds_load_u8 v9, v84 offset:160
	ds_load_u8 v10, v84 offset:128
	ds_load_u8 v11, v84 offset:224
	ds_load_u8 v12, v84 offset:192
	ds_load_u8 v13, v84 offset:96
	ds_load_u8 v14, v84 offset:64
	ds_load_u8 v15, v84
	ds_load_u8 v16, v84 offset:16
	ds_load_u8 v17, v84 offset:32
	ds_load_u8 v18, v97 offset:1664
	ds_load_u8 v19, v97 offset:1536
	ds_load_u8 v20, v97 offset:1920
	ds_load_u8 v21, v97 offset:1792
	ds_load_u8 v22, v97 offset:1152
	ds_load_u8 v23, v97 offset:1024
	ds_load_u8 v24, v97 offset:1408
	ds_load_u8 v25, v97 offset:1280
	ds_load_u8 v26, v97 offset:640
	ds_load_u8 v29, v97 offset:512
	ds_load_u8 v30, v97 offset:896
	ds_load_u8 v31, v97 offset:768
	ds_load_u8 v32, v97 offset:128
	ds_load_u8 v99, v97
	ds_load_u8 v100, v97 offset:384
	ds_load_u8 v101, v97 offset:256
	ds_load_u8 v102, v84 offset:432
	ds_load_u8 v103, v84 offset:400
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v2, v84 offset:496
	ds_load_u8 v108, v84 offset:896
	ds_load_u8 v109, v84 offset:992
	ds_load_u8 v4, v84 offset:464
	v_lshl_or_b32 v28, v3, 16, v1
	ds_load_u8 v1, v84 offset:304
	ds_load_u8 v3, v84 offset:272
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v7, v12, v11, 0xc0c0004
	ds_load_u8 v8, v84 offset:336
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v11, v15, v17, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v15, v21, v20, 0xc0c0004
	v_lshl_or_b32 v27, v6, 16, v5
	v_perm_b32 v5, v10, v9, 0xc0c0004
	ds_load_u8 v6, v84 offset:368
	v_perm_b32 v9, v14, v13, 0xc0c0004
	ds_load_u8 v10, v84 offset:176
	ds_load_u8 v14, v84 offset:240
	ds_load_u8 v17, v84 offset:208
	ds_load_u8 v12, v84 offset:144
	ds_load_u8 v21, v84 offset:80
	v_perm_b32 v13, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v18, v23, v22, 0xc0c0004
	ds_load_u8 v19, v84 offset:112
	ds_load_u8 v23, v84 offset:48
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v20, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v22, v29, v26, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v24, v31, v30, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v98 offset:1664
	ds_load_u8 v31, v98 offset:1920
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v29, v99, v32, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v30, v101, v100, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v99, v98 offset:1792
	ds_load_u8 v26, v98 offset:1536
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v100, v4, v2, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v98 offset:1152
	ds_load_u8 v4, v98 offset:1280
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v101, v3, v1, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v98 offset:1024
	ds_load_u8 v3, v98 offset:1408
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v32, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v6, v8, v6, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v8, v12, v10, 0xc0c0004
	v_perm_b32 v10, v17, v14, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v12, v98 offset:640
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v14, v21, v19, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v16, v16, v23, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v19, v98 offset:896
	ds_load_u8 v23, v98 offset:768
	ds_load_u8 v17, v98 offset:512
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v34, s13 :: v_dual_mov_b32 v33, s12
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v31, v99, v31, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v21, v26, v25, 0xc0c0004
	ds_load_u8 v25, v98 offset:128
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v26, v7, 16, v5
	v_lshl_or_b32 v102, v100, 16, v32
	v_lshl_or_b32 v101, v6, 16, v101
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v103, v1, v2, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v104, v4, v3, 0xc0c0004
	ds_load_u8 v2, v98 offset:384
	ds_load_u8 v3, v98 offset:256
	ds_load_u8 v1, v98
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v4, v15, 16, v13
	v_lshl_or_b32 v100, v10, 16, v8
	v_lshl_or_b32 v99, v14, 16, v16
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v106, v31, 16, v21
	v_lshl_or_b32 v105, v104, 16, v103
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v107, v84 offset:928
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v12, v17, v12, 0xc0c0004
	v_perm_b32 v17, v23, v19, 0xc0c0004
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s49, s11, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_lshr_b32 s49, s49, 26
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v104, v17, 16, v12
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s49, s11, s49
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v23, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v19, v1, v25, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v25, v9, 16, v11
	v_lshl_or_b32 v3, v20, 16, v18
	v_lshl_or_b32 v2, v24, 16, v22
	v_lshl_or_b32 v1, v30, 16, v29
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v103, v23, 16, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[1:4], v[25:28], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[1:4], v[99:102], v[33:40] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[103:106], v[25:28], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[103:106], v[99:102], v[33:40] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v84 offset:960
	ds_load_u8 v34, v84 offset:800
	ds_load_u8 v35, v84 offset:768
	ds_load_u8 v36, v84 offset:864
	ds_load_u8 v37, v84 offset:832
	ds_load_u8 v38, v84 offset:672
	ds_load_u8 v39, v84 offset:640
	ds_load_u8 v40, v84 offset:736
	ds_load_u8 v100, v84 offset:704
	ds_load_u8 v101, v84 offset:544
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v99, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v33, v33, v109, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v35, v37, v36, 0xc0c0004
	v_lshl_or_b32 v36, v33, 16, v99
	ds_load_u8 v33, v84 offset:512
	ds_load_u8 v37, v84 offset:608
	v_lshl_or_b32 v35, v35, 16, v34
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v34, v39, v38, 0xc0c0004
	ds_load_u8 v38, v84 offset:576
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v39, v100, v40, 0xc0c0004
	ds_load_u8 v40, v97 offset:3712
	ds_load_u8 v100, v97 offset:3840
	v_lshl_or_b32 v34, v39, 16, v34
	ds_load_u8 v39, v97 offset:3584
	ds_load_u8 v99, v97 offset:3968
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v33, v33, v101, 0xc0c0004
	ds_load_u8 v101, v97 offset:2688
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v97 offset:3200
	v_lshl_or_b32 v33, v37, 16, v33
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v97 offset:3456
	v_perm_b32 v39, v39, v40, 0xc0c0004
	ds_load_u8 v40, v97 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v40, v38, 0xc0c0004
	ds_load_u8 v40, v97 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v40, v100, 0xc0c0004
	v_lshl_or_b32 v40, v99, 16, v39
	ds_load_u8 v99, v97 offset:2816
	v_lshl_or_b32 v39, v100, 16, v38
	ds_load_u8 v37, v97 offset:2560
	ds_load_u8 v38, v97 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v99, v38, 0xc0c0004
	ds_load_u8 v99, v97 offset:2176
	v_perm_b32 v37, v37, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v97 offset:2048
	ds_load_u8 v100, v97 offset:2432
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v37, v99, 0xc0c0004
	ds_load_u8 v99, v97 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v99, v100, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v100, s50, v163
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v37, v99, 16, v37
	ds_load_u8 v99, v84 offset:944
	ds_load_u8 v101, v84 offset:912
	ds_load_u8 v100, v100
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[33:36], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v99, v101, v99, 0xc0c0004
	ds_load_u8 v101, v84 offset:976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v84 offset:816
	ds_load_u8 v102, v84 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v84 offset:880
	ds_load_u8 v103, v84 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v103, v102, 0xc0c0004
	v_lshl_or_b32 v102, v100, 16, v99
	ds_load_u8 v99, v84 offset:688
	ds_load_u8 v100, v84 offset:656
	v_lshl_or_b32 v101, v103, 16, v101
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v84 offset:752
	ds_load_u8 v103, v84 offset:720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v103, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v100, 16, v99
	ds_load_u8 v99, v84 offset:560
	ds_load_u8 v103, v84 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v103, v99, 0xc0c0004
	ds_load_u8 v103, v84 offset:624
	ds_load_u8 v104, v84 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v99, v103, 16, v99
	v_wmma_i32_16x16x16_iu8 v[17:24], v[37:40], v[99:102], v[17:24] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v98 offset:3712
	ds_load_u8 v38, v98 offset:3584
	ds_load_u8 v39, v98 offset:3968
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v98 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	ds_load_u8 v39, v98 offset:3200
	ds_load_u8 v40, v98 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v98 offset:3456
	ds_load_u8 v103, v98 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v103, v40, 0xc0c0004
	v_lshl_or_b32 v40, v38, 16, v37
	ds_load_u8 v37, v98 offset:2688
	ds_load_u8 v38, v98 offset:2560
	v_lshl_or_b32 v39, v103, 16, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v98 offset:2944
	ds_load_u8 v103, v98 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v103, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v98 offset:2176
	ds_load_u8 v103, v98 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v103, v37, 0xc0c0004
	ds_load_u8 v103, v98 offset:2432
	ds_load_u8 v104, v98 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v103, 16, v37
	v_wmma_i32_16x16x16_iu8 v[1:8], v[37:40], v[33:36], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v84 offset:1440
	ds_load_u8 v34, v84 offset:1408
	ds_load_u8 v35, v84 offset:1504
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[25:32], v[37:40], v[99:102], v[25:32] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v36, v84 offset:1472
	ds_load_u8 v37, v84 offset:1312
	ds_load_u8 v38, v84 offset:1280
	ds_load_u8 v39, v84 offset:1376
	ds_load_u8 v40, v84 offset:1344
	ds_load_u8 v99, v84 offset:1184
	ds_load_u8 v100, v84 offset:1152
	ds_load_u8 v101, v84 offset:1248
	ds_load_u8 v102, v84 offset:1056
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v84 offset:1216
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v38, v40, v39, 0xc0c0004
	ds_load_u8 v39, v84 offset:1088
	ds_load_u8 v40, v97 offset:5760
	v_lshl_or_b32 v36, v35, 16, v33
	v_lshl_or_b32 v35, v38, 16, v37
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v38, v100, v99, 0xc0c0004
	ds_load_u8 v33, v84 offset:1024
	ds_load_u8 v37, v84 offset:1120
	ds_load_u8 v100, v97 offset:5888
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v34, v34, v101, 0xc0c0004
	ds_load_u8 v101, v97 offset:4736
	v_lshl_or_b32 v34, v34, 16, v38
	ds_load_u8 v38, v97 offset:5632
	ds_load_u8 v99, v97 offset:6016
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v33, v33, v102, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v37, v39, v37, 0xc0c0004
	ds_load_u8 v39, v97 offset:5248
	v_lshl_or_b32 v33, v37, 16, v33
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v97 offset:5504
	v_perm_b32 v38, v38, v40, 0xc0c0004
	ds_load_u8 v40, v97 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v97 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v40, v100, 0xc0c0004
	v_lshl_or_b32 v40, v99, 16, v38
	ds_load_u8 v37, v97 offset:4608
	ds_load_u8 v38, v97 offset:4992
	ds_load_u8 v99, v97 offset:4864
	v_lshl_or_b32 v39, v100, 16, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v99, v38, 0xc0c0004
	ds_load_u8 v99, v97 offset:4224
	v_perm_b32 v37, v37, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v97 offset:4096
	ds_load_u8 v100, v97 offset:4480
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v37, v99, 0xc0c0004
	ds_load_u8 v99, v97 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v99, v100, 0xc0c0004
	ds_load_u8 v100, v84 offset:1456
	v_lshl_or_b32 v37, v99, 16, v37
	ds_load_u8 v99, v84 offset:1424
	ds_load_u8 v101, v84 offset:1520
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[33:36], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v99, v99, v100, 0xc0c0004
	ds_load_u8 v100, v84 offset:1488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v100, v101, 0xc0c0004
	ds_load_u8 v101, v84 offset:1328
	ds_load_u8 v102, v84 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v84 offset:1392
	ds_load_u8 v103, v84 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v103, v102, 0xc0c0004
	v_lshl_or_b32 v102, v100, 16, v99
	ds_load_u8 v99, v84 offset:1200
	ds_load_u8 v100, v84 offset:1168
	v_lshl_or_b32 v101, v103, 16, v101
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v84 offset:1264
	ds_load_u8 v103, v84 offset:1232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v103, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v100, 16, v99
	ds_load_u8 v99, v84 offset:1072
	ds_load_u8 v103, v84 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v103, v99, 0xc0c0004
	ds_load_u8 v103, v84 offset:1136
	ds_load_u8 v104, v84 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v99, v103, 16, v99
	v_wmma_i32_16x16x16_iu8 v[17:24], v[37:40], v[99:102], v[17:24] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v98 offset:5760
	ds_load_u8 v38, v98 offset:5632
	ds_load_u8 v39, v98 offset:6016
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v98 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	ds_load_u8 v39, v98 offset:5248
	ds_load_u8 v40, v98 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v98 offset:5504
	ds_load_u8 v103, v98 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v103, v40, 0xc0c0004
	v_lshl_or_b32 v40, v38, 16, v37
	ds_load_u8 v37, v98 offset:4736
	ds_load_u8 v38, v98 offset:4608
	v_lshl_or_b32 v39, v103, 16, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v98 offset:4992
	ds_load_u8 v103, v98 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v103, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v98 offset:4224
	ds_load_u8 v103, v98 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v103, v37, 0xc0c0004
	ds_load_u8 v103, v98 offset:4480
	ds_load_u8 v104, v98 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v103, 16, v37
	v_wmma_i32_16x16x16_iu8 v[1:8], v[37:40], v[33:36], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v84 offset:1952
	ds_load_u8 v34, v84 offset:1920
	ds_load_u8 v35, v84 offset:2016
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[25:32], v[37:40], v[99:102], v[25:32] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v36, v84 offset:1984
	ds_load_u8 v37, v84 offset:1824
	ds_load_u8 v38, v84 offset:1792
	ds_load_u8 v39, v84 offset:1888
	ds_load_u8 v40, v84 offset:1856
	ds_load_u8 v99, v84 offset:1696
	ds_load_u8 v100, v84 offset:1664
	ds_load_u8 v101, v84 offset:1760
	ds_load_u8 v102, v84 offset:1568
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v84 offset:1728
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v36, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v37, v40, v39, 0xc0c0004
	ds_load_u8 v39, v84 offset:1600
	ds_load_u8 v40, v97 offset:7808
	v_lshl_or_b32 v38, v35, 16, v33
	ds_load_u8 v33, v84 offset:1536
	ds_load_u8 v35, v84 offset:1632
	v_lshl_or_b32 v37, v37, 16, v36
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v36, v100, v99, 0xc0c0004
	ds_load_u8 v100, v97 offset:7936
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v34, v34, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v34, 16, v36
	ds_load_u8 v34, v97 offset:7680
	ds_load_u8 v99, v97 offset:8064
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v35, v39, v35, 0xc0c0004
	ds_load_u8 v39, v97 offset:7296
	v_perm_b32 v33, v33, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v35, 16, v33
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v97 offset:7552
	v_perm_b32 v34, v34, v40, 0xc0c0004
	ds_load_u8 v40, v97 offset:7168
	v_lshl_or_b32 v102, v99, 16, v34
	ds_load_u8 v33, v97 offset:6656
	ds_load_u8 v34, v97 offset:7040
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v97 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v40, v100, 0xc0c0004
	ds_load_u8 v100, v97 offset:6784
	v_lshl_or_b32 v101, v40, 16, v39
	ds_load_u8 v39, v97 offset:6912
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v33, v100, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v39, v34, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v39, s50, v164
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s50, s44, s35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_add_i32 s11, s50, s33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v100, v34, 16, v33
	ds_load_u8 v33, v97 offset:6272
	ds_load_u8 v34, v97 offset:6144
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s50, s49, 6
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s49, s11, s23
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s50, s1
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s27, s27, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v97 offset:6528
	ds_load_u8 v40, v97 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v40, v34, 0xc0c0004
	ds_load_u8 v40, v84 offset:1968
	v_lshl_or_b32 v99, v34, 16, v33
	ds_load_u8 v33, v84 offset:1936
	ds_load_u8 v34, v39
	ds_load_u8 v39, v84 offset:2000
	v_wmma_i32_16x16x16_iu8 v[9:16], v[99:102], v[35:38], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v33, v40, 0xc0c0004
	ds_load_u8 v40, v84 offset:1840
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v34, v39, v34, 0xc0c0004
	ds_load_u8 v39, v84 offset:1808
	v_lshl_or_b32 v106, v34, 16, v33
	ds_load_u8 v33, v84 offset:1712
	ds_load_u8 v34, v84 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v39, v39, v40, 0xc0c0004
	ds_load_u8 v40, v84 offset:1904
	ds_load_u8 v97, v84 offset:1872
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v97, v40, 0xc0c0004
	v_cvt_f32_i32_e32 v97, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v105, v40, 16, v39
	ds_load_u8 v34, v84 offset:1776
	ds_load_u8 v39, v84 offset:1744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v39, v34, 0xc0c0004
	v_lshl_or_b32 v104, v34, 16, v33
	ds_load_u8 v33, v84 offset:1584
	ds_load_u8 v34, v84 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v84 offset:1648
	ds_load_u8 v39, v84 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v39, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v34, 16, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v98 offset:7808
	ds_load_u8 v34, v98 offset:7680
	ds_load_u8 v39, v98 offset:8064
	ds_load_u8 v40, v98 offset:7936
	ds_load_u8 v84, v98 offset:7296
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[99:102], v[103:106], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v102, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v98 offset:7168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v98 offset:7552
	v_lshl_or_b32 v101, v39, 16, v33
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v34, v34, v84, 0xc0c0004
	ds_load_u8 v84, v98 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v84, v40, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v84, v9
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v100, v40, 16, v34
	ds_load_u8 v33, v98 offset:6784
	ds_load_u8 v34, v98 offset:6656
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v40, v10
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v98 offset:7040
	ds_load_u8 v39, v98 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v39, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v34, 16, v33
	ds_load_u8 v33, v98 offset:6272
	ds_load_u8 v34, v98 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v98 offset:6528
	ds_load_u8 v39, v98 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v39, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v98, v34, 16, v33
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v33, v95, s50, 1
	v_add_lshl_u32 v34, v96, s50, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s50, s50, s35
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[98:101], v[35:38], v[1:8] neg_lo:[1,1,0]
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v35, v94, s50, 1
	v_add_lshl_u32 v36, v93, s50, 1
	v_add_lshl_u32 v37, v92, s50, 1
	v_add_lshl_u32 v38, v91, s50, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[25:32], v[98:101], v[103:106], v[25:32] neg_lo:[1,1,0]
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v39, v59, s50, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v103, v2
	v_cvt_f32_i32_e32 v104, v1
	v_cvt_f32_i32_e32 v106, v3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v1, v60, s50, 1
	v_add_lshl_u32 v2, v61, s50, 1
	v_add_lshl_u32 v3, v62, s50, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s50, s50, s33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v109, v8
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v8, 0x80000000, v33 :: v_dual_cndmask_b32 v9, 0x80000000, v34
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v33, v57, s50, 1
	v_add_lshl_u32 v34, v58, s50, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v101, v16
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v105, v4
	v_cvt_f32_i32_e32 v107, v6
	v_cvt_f32_i32_e32 v108, v5
	v_cvt_f32_i32_e32 v110, v7
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v4, v90, s50, 1
	v_add_lshl_u32 v5, v89, s50, 1
	v_add_lshl_u32 v6, v88, s50, 1
	v_add_lshl_u32 v7, v86, s50, 1
	v_add_lshl_u32 v15, v85, s50, 1
	v_add_lshl_u32 v16, v87, s50, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v10, 0x80000000, v35, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v98, v11
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v11, 0x80000000, v36 :: v_dual_cndmask_b32 v12, 0x80000000, v37
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v99, v14
	v_cvt_f32_i32_e32 v100, v13
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v13, 0x80000000, v38 :: v_dual_cndmask_b32 v14, 0x80000000, v39
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_dual_cndmask_b32 v15, 0x80000000, v15 :: v_dual_cndmask_b32 v16, 0x80000000, v16
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v35, v8, s[36:39], 0 offen
	buffer_load_u16 v36, v9, s[36:39], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v37, v10, s[40:43], 0 offen
	buffer_load_u16 v38, v11, s[40:43], 0 offen
	buffer_load_u16 v39, v12, s[40:43], 0 offen
	buffer_load_u16 v111, v13, s[40:43], 0 offen
	buffer_load_u16 v112, v14, s[40:43], 0 offen
	buffer_load_u16 v113, v1, s[40:43], 0 offen
	buffer_load_u16 v114, v2, s[40:43], 0 offen
	buffer_load_u16 v115, v3, s[40:43], 0 offen
	buffer_load_u16 v116, v4, s[40:43], 0 offen
	buffer_load_u16 v117, v5, s[40:43], 0 offen
	buffer_load_u16 v118, v6, s[40:43], 0 offen
	buffer_load_u16 v119, v7, s[40:43], 0 offen
	buffer_load_u16 v120, v15, s[40:43], 0 offen
	buffer_load_u16 v121, v16, s[40:43], 0 offen
	buffer_load_u16 v33, v33, s[40:43], 0 offen
	buffer_load_u16 v34, v34, s[40:43], 0 offen
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v13, s49, v162
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s27, 2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s27, s27, 0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s50, s27, 11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s51, s50, 0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v122, s51, v160
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s52, s48, 1
	s_mov_b32 s50, s47
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s47, s51, 0x8000
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s11, v162
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v9, s49, v41
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v37, 16, v37
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s11, v41
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[28:31], 0 offen
	buffer_load_b128 v[5:8], v5, s[28:31], 0 offen
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	buffer_load_b128 v[13:16], v13, s[28:31], 0 offen
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v122, v[43:44] offset:32768
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v43, v35, v37 :: v_dual_lshlrev_b32 v38, 16, v38
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v34, 16, v34
	s_mov_b32 s11, s45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v76, v43, v84
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v43, v35, v38
	v_mul_f32_e32 v37, v36, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s45, s27, 13
	s_mov_b32 s49, s46
	s_add_i32 s46, s45, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v77, v43, v40
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v40, v35, v39 :: v_dual_fmac_f32 v79, v37, v17
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s45, s46, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s48, s10
	s_mov_b32 s48, s52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v68, v40, v98
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v40, 16, v111
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v43, v35, v40
	v_mul_f32_e32 v17, v36, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v69, v43, v97
	v_dual_fmac_f32 v80, v17, v18 :: v_dual_lshlrev_b32 v43, 16, v112
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v18, 16, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v44, v35, v43
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v53, v44, v100 :: v_dual_lshlrev_b32 v44, 16, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v84, v35, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v54, v84, v99
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v84, 16, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v97, v35, v84
	v_dual_mul_f32 v38, v36, v84 :: v_dual_fmac_f32 v45, v97, v102
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v97, 16, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v47, v38, v23 :: v_dual_mul_f32 v98, v35, v97
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v17, v36, v39 :: v_dual_fmac_f32 v46, v98, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v72, v17, v19 :: v_dual_mul_f32 v17, v36, v40
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v19, 16, v117
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v23, v35, v18
	v_dual_mul_f32 v18, v36, v18 :: v_dual_fmac_f32 v73, v17, v20
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v17, v36, v43
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v43, v35, v34
	v_mul_f32_e32 v34, v36, v34
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v20, 16, v118
	v_lshlrev_b32_e32 v37, 16, v121
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v55, v17, v21
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v17, v36, v44 :: v_dual_fmac_f32 v50, v43, v109
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v21, 16, v119
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v63, v23, v104
	v_fmac_f32_e32 v52, v34, v32
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v56, v17, v22
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v22, 16, v120
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v17, s46, v161
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v81, v18, v25
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v17, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v17, v[5:8] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v17, v[9:12] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v17, v[13:16] offset:20480
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v23, v35, v22
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v39, v36, v97
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v22, v36, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v64, v23, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v48, v39, v24
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v40, v35, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v19, v36, v19 :: v_dual_fmac_f32 v66, v22, v29
	v_mul_f32_e32 v24, v35, v20
	v_mul_f32_e32 v38, v35, v21
	v_dual_mul_f32 v21, v36, v21 :: v_dual_fmac_f32 v82, v19, v26
	v_dual_mul_f32 v20, v36, v20 :: v_dual_mul_f32 v39, v35, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v70, v24, v106
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v37, v36, v37
	v_mul_f32_e32 v35, v35, v33
	v_mul_f32_e32 v33, v36, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v78, v40, v103 :: v_dual_fmac_f32 v71, v38, v105
	v_fmac_f32_e32 v65, v39, v107
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v49, v35, v110 :: v_dual_fmac_f32 v74, v20, v27
	v_fmac_f32_e32 v75, v21, v28
	v_fmac_f32_e32 v67, v37, v30
	v_fmac_f32_e32 v51, v33, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v3, v163 :: v_dual_mov_b32 v2, v164
	v_mov_b32_e32 v1, v165
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s50, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v63, 0
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s11, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v21, s50, v83
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v22, s50, v3
	ds_load_u8_d16 v205, v21
	ds_load_u8_d16 v129, v21 offset:16
	ds_load_u8_d16 v206, v21 offset:32
	ds_load_u8_d16 v172, v21 offset:48
	ds_load_u8_d16 v207, v21 offset:64
	ds_load_u8_d16 v208, v21 offset:96
	ds_load_u8_d16 v198, v21 offset:112
	ds_load_u8_d16 v199, v21 offset:80
	ds_load_u8_d16 v209, v21 offset:128
	ds_load_u8_d16 v210, v21 offset:160
	ds_load_u8_d16 v211, v21 offset:192
	ds_load_u8_d16 v212, v21 offset:224
	ds_load_u8_d16 v200, v21 offset:240
	ds_load_u8_d16 v201, v21 offset:208
	ds_load_u8_d16 v202, v21 offset:176
	ds_load_u8_d16 v142, v21 offset:144
	ds_load_u8_d16 v154, v21 offset:256
	ds_load_u8_d16 v155, v21 offset:288
	ds_load_u8_d16 v213, v21 offset:320
	ds_load_u8_d16 v214, v21 offset:352
	ds_load_u8_d16 v147, v21 offset:368
	ds_load_u8_d16 v148, v21 offset:336
	ds_load_u8_d16 v149, v21 offset:304
	ds_load_u8_d16 v150, v21 offset:272
	ds_load_u8_d16 v215, v21 offset:384
	ds_load_u8_d16 v216, v21 offset:416
	ds_load_u8_d16 v217, v21 offset:448
	ds_load_u8_d16 v218, v21 offset:480
	ds_load_u8_d16 v151, v21 offset:496
	ds_load_u8_d16 v152, v21 offset:464
	ds_load_u8_d16 v153, v21 offset:432
	ds_load_u8_d16 v203, v21 offset:400
	ds_load_u8_d16 v187, v21 offset:512
	ds_load_u8_d16 v190, v21 offset:544
	ds_load_u8_d16 v191, v21 offset:576
	ds_load_u8_d16 v193, v21 offset:608
	ds_load_u8_d16 v122, v21 offset:624
	ds_load_u8_d16 v123, v21 offset:592
	ds_load_u8_d16 v126, v21 offset:560
	ds_load_u8_d16 v128, v21 offset:528
	ds_load_u8_d16 v194, v21 offset:640
	ds_load_u8_d16 v195, v21 offset:672
	ds_load_u8_d16 v196, v21 offset:704
	ds_load_u8_d16 v197, v21 offset:736
	ds_load_u8_d16 v134, v21 offset:752
	ds_load_u8_d16 v135, v21 offset:720
	ds_load_u8_d16 v136, v21 offset:688
	ds_load_u8_d16 v137, v21 offset:656
	ds_load_u8_d16 v138, v21 offset:768
	ds_load_u8_d16 v139, v21 offset:800
	ds_load_u8_d16 v140, v21 offset:832
	ds_load_u8_d16 v141, v21 offset:864
	ds_load_u8_d16 v177, v21 offset:880
	ds_load_u8_d16 v178, v21 offset:848
	ds_load_u8_d16 v179, v21 offset:816
	ds_load_u8_d16 v180, v21 offset:784
	ds_load_u8_d16 v143, v21 offset:896
	ds_load_u8_d16 v144, v21 offset:928
	ds_load_u8_d16 v145, v21 offset:960
	ds_load_u8_d16 v146, v21 offset:992
	ds_load_u8_d16 v112, v21 offset:1024
	ds_load_u8_d16 v184, v21 offset:976
	ds_load_u8_d16 v185, v21 offset:944
	ds_load_u8_d16 v186, v21 offset:912
	ds_load_u8_d16 v116, v21 offset:1056
	ds_load_u8_d16 v117, v21 offset:1088
	ds_load_u8_d16 v119, v21 offset:1120
	ds_load_u8_d16 v120, v21 offset:1152
	ds_load_u8_d16 v4, v21 offset:1136
	ds_load_u8_d16 v5, v21 offset:1104
	ds_load_u8_d16 v6, v21 offset:1072
	ds_load_u8_d16 v7, v21 offset:1040
	ds_load_u8_d16 v130, v21 offset:1184
	ds_load_u8_d16 v131, v21 offset:1216
	ds_load_u8_d16 v132, v21 offset:1248
	ds_load_u8_d16 v133, v21 offset:1280
	ds_load_u8_d16 v12, v21 offset:1264
	ds_load_u8_d16 v13, v21 offset:1232
	ds_load_u8_d16 v14, v21 offset:1200
	ds_load_u8_d16 v15, v21 offset:1168
	ds_load_u8_d16 v173, v21 offset:1312
	ds_load_u8_d16 v174, v21 offset:1344
	ds_load_u8_d16 v175, v21 offset:1376
	ds_load_u8_d16 v176, v21 offset:1408
	ds_load_u8_d16 v20, v21 offset:1392
	ds_load_u8_d16 v42, v21 offset:1360
	ds_load_u8_d16 v43, v21 offset:1328
	ds_load_u8_d16 v44, v21 offset:1296
	ds_load_u8_d16 v181, v21 offset:1440
	ds_load_u8_d16 v182, v21 offset:1472
	ds_load_u8_d16 v183, v21 offset:1504
	ds_load_u8_d16 v104, v21 offset:1536
	ds_load_u8_d16 v98, v21 offset:1520
	ds_load_u8_d16 v100, v21 offset:1488
	ds_load_u8_d16 v102, v21 offset:1456
	ds_load_u8_d16 v103, v21 offset:1424
	ds_load_u8_d16 v107, v21 offset:1568
	ds_load_u8_d16 v108, v21 offset:1600
	ds_load_u8_d16 v109, v21 offset:1632
	ds_load_u8_d16 v113, v21 offset:1664
	ds_load_u8_d16 v8, v21 offset:1648
	ds_load_u8_d16 v9, v21 offset:1616
	ds_load_u8_d16 v10, v21 offset:1584
	ds_load_u8_d16 v11, v21 offset:1552
	ds_load_u8_d16 v114, v21 offset:1696
	ds_load_u8_d16 v115, v21 offset:1728
	ds_load_u8_d16 v118, v21 offset:1760
	ds_load_u8_d16 v121, v21 offset:1792
	ds_load_u8_d16 v16, v21 offset:1776
	ds_load_u8_d16 v17, v21 offset:1744
	ds_load_u8_d16 v18, v21 offset:1712
	ds_load_u8_d16 v19, v21 offset:1680
	ds_load_u8_d16 v124, v21 offset:1824
	ds_load_u8_d16 v125, v21 offset:1856
	ds_load_u8_d16 v127, v21 offset:1888
	ds_load_u8_d16 v160, v21 offset:1920
	ds_load_u8_d16 v84, v21 offset:1904
	ds_load_u8_d16 v97, v21 offset:1872
	ds_load_u8_d16 v99, v21 offset:1840
	ds_load_u8_d16 v101, v21 offset:1808
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v23, s50, v2
	ds_load_u8_d16 v188, v21 offset:1952
	ds_load_u8_d16 v189, v21 offset:1984
	ds_load_u8_d16 v192, v21 offset:2016
	ds_load_u8_d16 v204, v22
	ds_load_u8_d16 v105, v23
	ds_load_u8_d16 v106, v21 offset:2000
	ds_load_u8_d16 v110, v21 offset:1968
	ds_load_u8_d16 v111, v21 offset:1936
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v24, 0, 1, s3
	v_mov_b32_e32 v21, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	scratch_store_b32 off, v21, off offset:96 ; 4-byte Folded Spill
	v_cmp_ne_u32_e64 s0, 1, v24
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v24, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v23, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v21, v215, v216, 0xc0c0004
	v_perm_b32 v22, v217, v218, 0xc0c0004
	s_mov_b32 s12, 0
	v_perm_b32 v23, v154, v155, 0xc0c0004
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	v_lshl_or_b32 v32, v22, 16, v21
	v_perm_b32 v21, v209, v210, 0xc0c0004
	v_perm_b32 v22, v211, v212, 0xc0c0004
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_lshl_or_b32 v30, v22, 16, v21
	v_perm_b32 v21, v205, v206, 0xc0c0004
	v_perm_b32 v22, v207, v208, 0xc0c0004
	s_mov_b32 s19, s12
	v_perm_b32 v24, v213, v214, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v25, s49, v221
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v29, v22, 16, v21
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v21, s49, v224
	v_add_nc_u32_e32 v22, s49, v223
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v31, v24, 16, v23
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v23, s49, v225
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v25, v25
	ds_load_u8 v21, v21
	ds_load_u8 v22, v22
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v24, s49, v219
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v23, v23
	ds_load_u8 v24, v24
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v22, s49, v170
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v23, s49, v220
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v36, v22, 16, v21
	scratch_load_b32 v21, off, off offset:4 ; 4-byte Folded Reload
	ds_load_u8 v23, v23
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v22, s49, v159
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v24, s49, v222
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v24, 16, v23
	scratch_load_b32 v23, off, off offset:8 ; 4-byte Folded Reload
	v_perm_b32 v24, v148, v147, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, s49, v21
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	scratch_load_b32 v22, off, off          ; 4-byte Folded Reload
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v23, s49, v23
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v23, v23
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s49, v22
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v23, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v34, v22, 16, v21
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v21, off, off offset:88 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v22, s49, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v22, v22
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v23, s49, v23
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s49, v21
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v23, v23
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v22, s49, v158
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	v_perm_b32 v23, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v33, v22, 16, v21
	v_perm_b32 v21, v203, v153, 0xc0c0004
	v_perm_b32 v22, v152, v151, 0xc0c0004
	v_lshl_or_b32 v39, v24, 16, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v40, v22, 16, v21
	v_perm_b32 v21, v142, v202, 0xc0c0004
	v_perm_b32 v22, v201, v200, 0xc0c0004
	v_lshl_or_b32 v38, v22, 16, v21
	v_perm_b32 v21, v129, v172, 0xc0c0004
	v_perm_b32 v22, v199, v198, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v22, 16, v21
	v_dual_mov_b32 v28, s19 :: v_dual_mov_b32 v27, s18
	v_dual_mov_b32 v26, s17 :: v_dual_mov_b32 v25, s16
	v_dual_mov_b32 v24, s15 :: v_dual_mov_b32 v23, s14
	v_dual_mov_b32 v22, s13 :: v_dual_mov_b32 v21, s12
	v_wmma_i32_16x16x16_iu8 v[161:168], v[33:36], v[29:32], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v29, v143, v144, 0xc0c0004
	v_perm_b32 v30, v145, v146, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[21:28], v[33:36], v[37:40], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v31, v138, v139, 0xc0c0004
	v_perm_b32 v33, v140, v141, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v34, s49, v239
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v194, v195, 0xc0c0004
	v_perm_b32 v30, v196, v197, 0xc0c0004
	v_lshl_or_b32 v31, v33, 16, v31
	v_perm_b32 v33, v191, v193, 0xc0c0004
	ds_load_u8 v34, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v35, s49, v241
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v187, v190, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v37, s49, v237
	v_add_nc_u32_e32 v36, s49, v235
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v35, v35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v38, s49, v229
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v29, v33, 16, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, s49, v169
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	ds_load_u8 v36, v36
	ds_load_u8 v38, v38
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v34, s49, v242
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v35, s49, v236
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v36, s49, v238
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v36, 0xc0c0004
	v_lshl_or_b32 v36, v34, 16, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, s49, v232
	v_add_nc_u32_e32 v34, s49, v231
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v35, v37, 16, v35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v37, s49, v233
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v34, s49, v234
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v37, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v37, s49, v171
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v34, v34, 16, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, s49, v228
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v37, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v37, s49, v230
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v38, s49, v245
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v33, v37, 16, v33
	v_perm_b32 v37, v178, v177, 0xc0c0004
	ds_load_u8 v38, v38
	v_wmma_i32_16x16x16_iu8 v[161:168], v[33:36], v[29:32], v[161:168] neg_lo:[1,1,0]
	v_perm_b32 v29, v186, v185, 0xc0c0004
	v_perm_b32 v30, v184, v204, 0xc0c0004
	v_perm_b32 v31, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v137, v136, 0xc0c0004
	v_perm_b32 v30, v135, v134, 0xc0c0004
	v_lshl_or_b32 v31, v37, 16, v31
	v_perm_b32 v37, v123, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v128, v126, 0xc0c0004
	v_lshl_or_b32 v29, v37, 16, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v37, s49, v253
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[21:28], v[33:36], v[29:32], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v29, v176, v181, 0xc0c0004
	v_perm_b32 v30, v182, v183, 0xc0c0004
	v_perm_b32 v31, v133, v173, 0xc0c0004
	v_perm_b32 v33, v174, v175, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v35, off, off offset:16 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v34, s49, v255
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v120, v130, 0xc0c0004
	v_perm_b32 v30, v131, v132, 0xc0c0004
	v_lshl_or_b32 v31, v33, 16, v31
	v_perm_b32 v33, v117, v119, 0xc0c0004
	ds_load_u8 v34, v34
	ds_load_u8 v37, v37
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v112, v116, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v36, s49, v251
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v29, v33, 16, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v36, v36
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v35, s49, v35
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v35, v35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s49, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s49, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v35, s49, v252
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v36, s49, v254
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v36, 0xc0c0004
	v_lshl_or_b32 v36, v34, 16, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, s49, v248
	v_add_nc_u32_e32 v34, s49, v247
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v35, v37, 16, v35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v37, s49, v249
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v34, s49, v250
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v37, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v37, s49, v243
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v34, v34, 16, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, s49, v244
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v37, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v37, s49, v246
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v33, v37, 16, v33
	v_perm_b32 v37, v42, v20, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[161:168], v[33:36], v[29:32], v[161:168] neg_lo:[1,1,0]
	v_perm_b32 v29, v103, v102, 0xc0c0004
	v_perm_b32 v30, v100, v98, 0xc0c0004
	v_perm_b32 v31, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v15, v14, 0xc0c0004
	v_perm_b32 v30, v13, v12, 0xc0c0004
	v_lshl_or_b32 v31, v37, 16, v31
	v_perm_b32 v37, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v7, v6, 0xc0c0004
	v_lshl_or_b32 v29, v37, 16, v29
	v_perm_b32 v37, v97, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[33:36], v[29:32], v[21:28] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v29, off, off offset:76
	scratch_load_b32 v31, off, off offset:80
	scratch_load_b32 v30, off, off offset:72
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v35, v101, v99, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v33, off, off offset:64
	scratch_load_b32 v32, off, off offset:56
	scratch_load_b32 v34, off, off offset:32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v35, v37, 16, v35
	v_perm_b32 v37, v9, v8, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v29, s49, v29
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v31, s49, v31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v30, s49, v30
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v33, s49, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v29, v29
	ds_load_u8 v31, v31
	ds_load_u8 v30, v30
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v32, s49, v32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s49, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v32, v32
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v30, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v30, s49, v30
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v30, v30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v31, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v31, s49, v31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v31, v31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v32, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, s49, v32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v32, v32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v33, v32, 0xc0c0004
	v_lshl_or_b32 v32, v30, 16, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v29, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v31, v33, 16, v31
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:48
	scratch_load_b32 v30, off, off offset:40
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v29, s49, v29
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v33, s49, v33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v30, s49, v30
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v29, v29
	ds_load_u8 v33, v33
	ds_load_u8 v30, v30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v30, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v30, s49, v30
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v30, v30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v33, v30, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v30, v30, 16, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v29, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v33, s49, v33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v29, s49, v29
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	ds_load_u8 v29, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v29, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s49, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_perm_b32 v34, v106, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v33, 16, v29
	v_perm_b32 v33, v111, v110, 0xc0c0004
	v_lshl_or_b32 v36, v34, 16, v33
	v_perm_b32 v33, v19, v18, 0xc0c0004
	v_perm_b32 v34, v17, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	v_perm_b32 v33, v11, v10, 0xc0c0004
	v_lshl_or_b32 v33, v37, 16, v33
	v_perm_b32 v37, v125, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[29:32], v[33:36], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v33, v160, v188, 0xc0c0004
	v_perm_b32 v34, v189, v192, 0xc0c0004
	v_perm_b32 v35, v121, v124, 0xc0c0004
	v_lshl_or_b32 v36, v34, 16, v33
	v_perm_b32 v33, v113, v114, 0xc0c0004
	v_perm_b32 v34, v115, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v35, v37, 16, v35
	v_perm_b32 v37, v108, v109, 0xc0c0004
	v_lshl_or_b32 v34, v34, 16, v33
	v_perm_b32 v33, v104, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v37, 16, v33
	v_wmma_i32_16x16x16_iu8 v[161:168], v[29:32], v[33:36], v[161:168] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v33, v21
	v_cvt_f32_i32_e32 v34, v22
	v_cvt_f32_i32_e32 v31, v23
	v_cvt_f32_i32_e32 v32, v24
	v_cvt_f32_i32_e32 v29, v25
	v_cvt_f32_i32_e32 v30, v26
	v_cvt_f32_i32_e32 v23, v27
	v_cvt_f32_i32_e32 v24, v28
	v_cvt_f32_i32_e32 v27, v163
	v_cvt_f32_i32_e32 v28, v164
	v_cvt_f32_i32_e32 v25, v165
	v_cvt_f32_i32_e32 v26, v166
	v_cvt_f32_i32_e32 v21, v167
	v_cvt_f32_i32_e32 v22, v168
	v_cvt_f32_i32_e32 v35, v161
	v_cvt_f32_i32_e32 v36, v162
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0xf                            ; 64-byte Folded Spill
	scratch_store_b32 off, v36, off offset:160
	scratch_store_b32 off, v35, off offset:156
	scratch_store_b32 off, v34, off offset:152
	scratch_store_b32 off, v33, off offset:148
	scratch_store_b32 off, v32, off offset:144
	scratch_store_b32 off, v31, off offset:140
	scratch_store_b32 off, v28, off offset:136
	scratch_store_b32 off, v27, off offset:132
	scratch_store_b32 off, v30, off offset:128
	scratch_store_b32 off, v29, off offset:124
	scratch_store_b32 off, v26, off offset:120
	scratch_store_b32 off, v25, off offset:116
	scratch_store_b32 off, v24, off offset:112
	scratch_store_b32 off, v23, off offset:108
	scratch_store_b32 off, v22, off offset:104
	scratch_store_b32 off, v21, off offset:100
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v22, 0
	v_mov_b32_e32 v21, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v21, v215, v216, 0xc0c0004
	v_perm_b32 v22, v217, v218, 0xc0c0004
	s_mov_b32 s12, 0
	v_perm_b32 v23, v154, v155, 0xc0c0004
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	v_lshl_or_b32 v32, v22, 16, v21
	v_perm_b32 v21, v209, v210, 0xc0c0004
	v_perm_b32 v22, v211, v212, 0xc0c0004
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_lshl_or_b32 v30, v22, 16, v21
	v_perm_b32 v21, v205, v206, 0xc0c0004
	v_perm_b32 v22, v207, v208, 0xc0c0004
	s_mov_b32 s19, s12
	v_perm_b32 v24, v213, v214, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v25, s11, v221
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	v_lshl_or_b32 v29, v22, 16, v21
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v21, s11, v224
	v_add_nc_u32_e32 v22, s11, v223
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v31, v24, 16, v23
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v23, s11, v225
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	ds_load_u8 v21, v21
	ds_load_u8 v22, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v24, s11, v219
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	v_perm_b32 v98, v100, v98, 0xc0c0004
	v_perm_b32 v43, v44, v43, 0xc0c0004
	v_perm_b32 v20, v42, v20, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v12, v13, v12, 0xc0c0004
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v5, v106, v105, 0xc0c0004
	v_perm_b32 v13, v19, v18, 0xc0c0004
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v24, v24
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v37, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v22, s11, v170
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v23, s11, v220
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v36, v22, 16, v21
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v22, s11, v159
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v24, s11, v222
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v24, 16, v23
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v23, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v24, v148, v147, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, s11, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v22, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v23, s11, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s11, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v23, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v34, v22, 16, v21
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:88 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v22, s11, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v23, s11, v23
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s11, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v22, s11, v158
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	v_perm_b32 v23, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v33, v22, 16, v21
	v_perm_b32 v21, v203, v153, 0xc0c0004
	v_perm_b32 v22, v152, v151, 0xc0c0004
	v_lshl_or_b32 v40, v24, 16, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v22, 16, v21
	v_perm_b32 v21, v142, v202, 0xc0c0004
	v_perm_b32 v22, v201, v200, 0xc0c0004
	v_lshl_or_b32 v39, v22, 16, v21
	v_perm_b32 v21, v129, v172, 0xc0c0004
	v_perm_b32 v22, v199, v198, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v38, v22, 16, v21
	v_dual_mov_b32 v28, s19 :: v_dual_mov_b32 v27, s18
	v_dual_mov_b32 v26, s17 :: v_dual_mov_b32 v25, s16
	v_dual_mov_b32 v24, s15 :: v_dual_mov_b32 v23, s14
	v_dual_mov_b32 v22, s13 :: v_dual_mov_b32 v21, s12
	v_wmma_i32_16x16x16_iu8 v[147:154], v[33:36], v[29:32], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v29, v143, v144, 0xc0c0004
	v_perm_b32 v30, v145, v146, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[21:28], v[33:36], v[38:41], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v31, v138, v139, 0xc0c0004
	v_perm_b32 v33, v140, v141, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s11, v239
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v194, v195, 0xc0c0004
	v_perm_b32 v30, v196, v197, 0xc0c0004
	v_lshl_or_b32 v31, v33, 16, v31
	v_perm_b32 v33, v191, v193, 0xc0c0004
	ds_load_u8 v34, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v35, s11, v241
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v187, v190, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v38, s11, v237
	v_add_nc_u32_e32 v36, s11, v235
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v35, v35
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v39, s11, v229
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v29, v33, 16, v29
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s11, v169
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	ds_load_u8 v36, v36
	ds_load_u8 v39, v39
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s11, v242
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v35, s11, v236
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v36, s11, v238
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v36, 0xc0c0004
	v_lshl_or_b32 v36, v34, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s11, v232
	v_add_nc_u32_e32 v34, s11, v231
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v35, v38, 16, v35
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v38, s11, v233
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s11, v234
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v38, v34, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v38, s11, v171
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v34, v34, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s11, v228
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v38, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v38, s11, v230
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v39, s11, v245
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v33, v38, 16, v33
	v_perm_b32 v38, v178, v177, 0xc0c0004
	ds_load_u8 v39, v39
	v_wmma_i32_16x16x16_iu8 v[147:154], v[33:36], v[29:32], v[147:154] neg_lo:[1,1,0]
	v_perm_b32 v29, v186, v185, 0xc0c0004
	v_perm_b32 v30, v184, v204, 0xc0c0004
	v_perm_b32 v31, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v137, v136, 0xc0c0004
	v_perm_b32 v30, v135, v134, 0xc0c0004
	v_lshl_or_b32 v31, v38, 16, v31
	v_perm_b32 v38, v123, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v128, v126, 0xc0c0004
	v_lshl_or_b32 v29, v38, 16, v29
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v38, s11, v253
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[21:28], v[33:36], v[29:32], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v29, v176, v181, 0xc0c0004
	v_perm_b32 v30, v182, v183, 0xc0c0004
	v_perm_b32 v31, v133, v173, 0xc0c0004
	v_perm_b32 v33, v174, v175, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v35, off, off offset:16 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v34, s11, v255
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v120, v130, 0xc0c0004
	v_perm_b32 v30, v131, v132, 0xc0c0004
	v_lshl_or_b32 v31, v33, 16, v31
	v_perm_b32 v33, v117, v119, 0xc0c0004
	ds_load_u8 v34, v34
	ds_load_u8 v38, v38
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v112, v116, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v36, s11, v251
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v112, v4, 16, v6
	v_perm_b32 v4, v111, v110, 0xc0c0004
	v_perm_b32 v6, v101, v99, 0xc0c0004
	v_lshl_or_b32 v29, v33, 16, v29
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v33, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v36, v36
	v_lshl_or_b32 v7, v5, 16, v4
	v_lshl_or_b32 v4, v8, 16, v10
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v35, s11, v35
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v35, v35
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s11, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v34, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s11, v34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v35, s11, v252
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v36, s11, v254
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v36, 0xc0c0004
	v_lshl_or_b32 v36, v34, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s11, v248
	v_add_nc_u32_e32 v34, s11, v247
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v35, v38, 16, v35
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v38, s11, v249
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s11, v250
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v38, v34, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v38, s11, v243
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v34, v34, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s11, v244
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v38, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v38, s11, v246
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v33, v38, 16, v33
	v_perm_b32 v38, v125, v127, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[147:154], v[33:36], v[29:32], v[147:154] neg_lo:[1,1,0]
	v_perm_b32 v29, v160, v188, 0xc0c0004
	v_perm_b32 v30, v189, v192, 0xc0c0004
	v_perm_b32 v31, v121, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v113, v114, 0xc0c0004
	v_perm_b32 v30, v115, v118, 0xc0c0004
	v_lshl_or_b32 v31, v38, 16, v31
	v_perm_b32 v38, v108, v109, 0xc0c0004
	v_lshl_or_b32 v115, v98, 16, v102
	v_lshl_or_b32 v114, v20, 16, v43
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v104, v107, 0xc0c0004
	v_lshl_or_b32 v113, v12, 16, v14
	v_perm_b32 v12, v97, v84, 0xc0c0004
	v_perm_b32 v14, v17, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v29, v38, 16, v29
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v38, s11, v37
	scratch_load_b32 v37, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[21:28], v[33:36], v[112:115], v[21:28] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v12, 16, v6
	v_lshl_or_b32 v5, v14, 16, v13
	ds_load_u8 v38, v38
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s11, v37
	scratch_load_b32 v37, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s11, v37
	scratch_load_b32 v37, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s11, v37
	scratch_load_b32 v37, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s11, v37
	scratch_load_b32 v37, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v40, v40
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s11, v37
	scratch_load_b32 v37, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v41, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s11, v37
	scratch_load_b32 v37, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v41, v41
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v104, s11, v37
	scratch_load_b32 v37, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v104, v104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v104, v41, 0xc0c0004
	v_lshl_or_b32 v41, v39, 16, v38
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v40, v104, 16, v40
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s11, v37
	scratch_load_b32 v37, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s11, v37
	scratch_load_b32 v37, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s11, v37
	scratch_load_b32 v37, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v39, v39
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v104, s11, v37
	scratch_load_b32 v37, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v104, v104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v104, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v39, 16, v38
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s11, v37
	scratch_load_b32 v37, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v38, v38
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v104, s11, v37
	scratch_load_b32 v37, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v104, v104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v104, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v104, s11, v37
	scratch_load_b32 v37, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v104, v104
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v107, s11, v37
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v107, v107
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v107, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v38, v104, 16, v38
	v_wmma_i32_16x16x16_iu8 v[147:154], v[38:41], v[29:32], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[21:28], v[38:41], v[4:7], v[21:28] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v33, v149
	v_cvt_f32_i32_e32 v34, v150
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v31, v151
	v_cvt_f32_i32_e32 v32, v152
	v_cvt_f32_i32_e32 v29, v153
	v_cvt_f32_i32_e32 v30, v154
	v_cvt_f32_i32_e32 v37, v21
	v_cvt_f32_i32_e32 v38, v22
	v_cvt_f32_i32_e32 v35, v23
	v_cvt_f32_i32_e32 v36, v24
	v_cvt_f32_i32_e32 v23, v25
	v_cvt_f32_i32_e32 v24, v26
	v_cvt_f32_i32_e32 v21, v27
	v_cvt_f32_i32_e32 v22, v28
	v_cvt_f32_i32_e32 v4, v147
	v_cvt_f32_i32_e32 v25, v148
	scratch_store_b32 off, v4, off offset:96 ; 4-byte Folded Spill
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 26
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s26, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(59)
	v_add_lshl_u32 v4, v95, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v220, off offset:240
	scratch_store_b32 off, v219, off offset:236
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v3, s47, v3
	s_waitcnt lgkmcnt(26)
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v9, s47, v83
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v217, v4, s[8:11], 0 offen
	v_add_lshl_u32 v4, v96, s0, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s35
	s_clause 0xe                            ; 60-byte Folded Spill
	scratch_store_b32 off, v0, off offset:244
	scratch_store_b32 off, v37, off offset:216
	scratch_store_b32 off, v36, off offset:212
	scratch_store_b32 off, v35, off offset:208
	scratch_store_b32 off, v25, off offset:204
	scratch_store_b32 off, v24, off offset:200
	scratch_store_b32 off, v23, off offset:196
	scratch_store_b32 off, v34, off offset:192
	scratch_store_b32 off, v33, off offset:188
	scratch_store_b32 off, v32, off offset:184
	scratch_store_b32 off, v31, off offset:180
	scratch_store_b32 off, v22, off offset:176
	scratch_store_b32 off, v21, off offset:172
	scratch_store_b32 off, v30, off offset:168
	scratch_store_b32 off, v29, off offset:164
	v_dual_mov_b32 v40, v255 :: v_dual_mov_b32 v41, v254
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v172, v253 :: v_dual_mov_b32 v173, v252
	v_dual_mov_b32 v174, v251 :: v_dual_mov_b32 v175, v250
	buffer_load_u16 v218, v4, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v94, s0, 1
	v_dual_mov_b32 v176, v249 :: v_dual_mov_b32 v177, v248
	v_dual_mov_b32 v178, v247 :: v_dual_mov_b32 v185, v246
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_dual_mov_b32 v180, v243 :: v_dual_mov_b32 v167, v242
	v_dual_mov_b32 v166, v241 :: v_dual_mov_b32 v193, v239
	buffer_load_u16 v219, v4, s[24:27], 0 offen
	v_add_lshl_u32 v4, v93, s0, 1
	v_mov_b32_e32 v131, 0
	v_dual_mov_b32 v181, v238 :: v_dual_mov_b32 v182, v237
	v_dual_mov_b32 v183, v236 :: v_dual_mov_b32 v162, v234
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_mov_b32 v163, v233
	s_waitcnt lgkmcnt(5)
	v_dual_mov_b32 v192, v230 :: v_dual_mov_b32 v165, v231
	v_mov_b32_e32 v168, v228
	buffer_load_u16 v220, v4, s[24:27], 0 offen
	v_add_lshl_u32 v4, v92, s0, 1
	v_mov_b32_e32 v187, 0
	v_dual_mov_b32 v191, v229 :: v_dual_mov_b32 v196, v224
	v_dual_mov_b32 v197, v225 :: v_dual_mov_b32 v194, v222
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_mov_b32 v195, v223
	v_dual_mov_b32 v184, v221 :: v_dual_mov_b32 v133, 0
	v_mov_b32_e32 v22, 0
	buffer_load_u16 v213, v4, s[24:27], 0 offen
	v_add_lshl_u32 v4, v91, s0, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v127, v3
	ds_load_u8_d16 v202, v9 offset:1040
	ds_load_u8_d16 v239, v9 offset:1072
	ds_load_u8_d16 v201, v9 offset:1104
	ds_load_u8_d16 v203, v9 offset:1136
	ds_load_u8_d16 v250, v9 offset:1168
	ds_load_u8_d16 v252, v9 offset:1200
	ds_load_u8_d16 v249, v9 offset:1232
	ds_load_u8_d16 v251, v9 offset:1264
	ds_load_u8_d16 v84, v9 offset:1296
	ds_load_u8_d16 v97, v9 offset:1328
	ds_load_u8_d16 v253, v9 offset:1360
	ds_load_u8_d16 v254, v9 offset:1392
	ds_load_u8_d16 v107, v9 offset:1424
	ds_load_u8_d16 v109, v9 offset:1456
	s_waitcnt lgkmcnt(17)
	ds_load_u8_d16 v106, v9 offset:1488
	ds_load_u8_d16 v108, v9 offset:1520
	ds_load_u8_d16 v199, v9 offset:1552
	ds_load_u8_d16 v200, v9 offset:1584
	ds_load_u8_d16 v223, v9 offset:1616
	ds_load_u8_d16 v224, v9 offset:1648
	ds_load_u8_d16 v228, v9 offset:1680
	ds_load_u8_d16 v230, v9 offset:1712
	ds_load_u8_d16 v225, v9 offset:1744
	ds_load_u8_d16 v229, v9 offset:1776
	ds_load_u8_d16 v234, v9 offset:1808
	ds_load_u8_d16 v238, v9 offset:1840
	ds_load_u8_d16 v231, v9 offset:1872
	ds_load_u8_d16 v237, v9 offset:1904
	ds_load_u8_d16 v205, v9 offset:1936
	ds_load_u8_d16 v247, v9 offset:1968
	ds_load_u8_d16 v243, v9 offset:2000
	v_dual_mov_b32 v190, v245 :: v_dual_mov_b32 v179, v244
	v_add_nc_u32_e32 v2, s47, v2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_mov_b32 v161, v235
	v_dual_mov_b32 v164, v232 :: v_dual_mov_b32 v3, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v233, v9 offset:1536
	ds_load_u8_d16 v145, v9 offset:1568
	ds_load_u8_d16 v235, v9 offset:1600
	ds_load_u8_d16 v236, v9 offset:1632
	ds_load_u8_d16 v146, v9 offset:1664
	ds_load_u8_d16 v147, v9 offset:1696
	ds_load_u8_d16 v148, v9 offset:1728
	ds_load_u8_d16 v149, v9 offset:1760
	ds_load_u8_d16 v150, v9 offset:1792
	ds_load_u8_d16 v151, v9 offset:1824
	ds_load_u8_d16 v152, v9 offset:1856
	ds_load_u8_d16 v153, v9 offset:1888
	ds_load_u8_d16 v240, v9 offset:1920
	ds_load_u8_d16 v198, v9 offset:1952
	ds_load_u8_d16 v241, v9 offset:1984
	ds_load_u8_d16 v242, v9 offset:2016
	ds_load_u8_d16 v122, v9 offset:80
	ds_load_u8_d16 v123, v9 offset:112
	ds_load_u8_d16 v129, v9 offset:144
	ds_load_u8_d16 v210, v9 offset:176
	ds_load_u8_d16 v128, v9 offset:208
	ds_load_u8_d16 v255, v9 offset:240
	ds_load_u8_d16 v141, v9 offset:272
	ds_load_u8_d16 v226, v9 offset:304
	ds_load_u8_d16 v140, v9 offset:336
	ds_load_u8_d16 v232, v9 offset:368
	ds_load_u8_d16 v142, v9 offset:400
	ds_load_u8_d16 v144, v9 offset:432
	ds_load_u8_d16 v227, v9 offset:464
	ds_load_u8_d16 v143, v9 offset:496
	ds_load_u8_d16 v103, v9 offset:528
	ds_load_u8_d16 v105, v9 offset:560
	ds_load_u8_d16 v102, v9 offset:592
	ds_load_u8_d16 v104, v9 offset:624
	s_waitcnt lgkmcnt(62)
	ds_load_u8_d16 v111, v9 offset:656
	ds_load_u8_d16 v113, v9 offset:688
	ds_load_u8_d16 v110, v9 offset:720
	ds_load_u8_d16 v112, v9 offset:752
	ds_load_u8_d16 v119, v9 offset:784
	ds_load_u8_d16 v121, v9 offset:816
	ds_load_u8_d16 v118, v9 offset:848
	ds_load_u8_d16 v120, v9 offset:880
	ds_load_u8_d16 v125, v9 offset:912
	ds_load_u8_d16 v126, v9 offset:944
	ds_load_u8_d16 v124, v9 offset:976
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v214, v4, s[24:27], 0 offen
	v_add_lshl_u32 v4, v59, s0, 1
	v_mov_b32_e32 v130, 0
	v_mov_b32_e32 v188, 0
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v134, 0
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_mov_b32 v135, 0
	v_mov_b32_e32 v186, 0
	s_mov_b32 s12, 0
	v_mov_b32_e32 v189, 0
	buffer_load_u16 v39, v4, s[24:27], 0 offen
	v_add_lshl_u32 v4, v60, s0, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v248, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v2, 0, 1, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v209, v4, s[24:27], 0 offen
	v_add_lshl_u32 v4, v61, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v160, v4, s[24:27], 0 offen
	v_add_lshl_u32 v4, v62, s0, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s0, s33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v206, v4, s[24:27], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v4, s0, v90, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v221, v4, s[24:27], 0 offen
	v_add_lshl_u32 v4, s0, v89, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v222, v4, s[24:27], 0 offen
	v_add_lshl_u32 v4, s0, v88, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v215, v4, s[24:27], 0 offen
	v_add_lshl_u32 v4, s0, v86, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v216, v4, s[24:27], 0 offen
	v_add_lshl_u32 v4, s0, v85, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v211, v4, s[24:27], 0 offen
	v_add_lshl_u32 v4, s0, v87, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v212, v4, s[24:27], 0 offen
	v_add_lshl_u32 v4, s0, v57, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v207, v4, s[24:27], 0 offen
	v_add_lshl_u32 v4, s0, v58, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v2
	v_mov_b32_e32 v2, 0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v208, v4, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v4, v9
	ds_load_u8_d16 v204, v9 offset:16
	ds_load_u8_d16 v5, v9 offset:32
	ds_load_u8_d16 v244, v9 offset:48
	ds_load_u8_d16 v6, v9 offset:64
	ds_load_u8_d16 v7, v9 offset:96
	ds_load_u8_d16 v8, v9 offset:128
	ds_load_u8_d16 v10, v9 offset:160
	ds_load_u8_d16 v11, v9 offset:192
	ds_load_u8_d16 v12, v9 offset:224
	ds_load_u8_d16 v13, v9 offset:256
	ds_load_u8_d16 v14, v9 offset:288
	ds_load_u8_d16 v15, v9 offset:320
	ds_load_u8_d16 v16, v9 offset:352
	ds_load_u8_d16 v17, v9 offset:384
	ds_load_u8_d16 v18, v9 offset:416
	ds_load_u8_d16 v19, v9 offset:448
	ds_load_u8_d16 v20, v9 offset:480
	ds_load_u8_d16 v0, v9 offset:512
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v9 offset:544
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v9 offset:576
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v9 offset:608
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v9 offset:640
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	ds_load_u8_d16 v117, v9 offset:672
	ds_load_u8_d16 v0, v9 offset:704
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	ds_load_u8_d16 v99, v9 offset:736
	ds_load_u8_d16 v100, v9 offset:768
	ds_load_u8_d16 v101, v9 offset:800
	ds_load_u8_d16 v138, v9 offset:832
	ds_load_u8_d16 v114, v9 offset:864
	ds_load_u8_d16 v139, v9 offset:896
	ds_load_u8_d16 v115, v9 offset:928
	ds_load_u8_d16 v116, v9 offset:960
	ds_load_u8_d16 v98, v9 offset:992
	ds_load_u8_d16 v245, v9 offset:1024
	ds_load_u8_d16 v246, v9 offset:1056
	ds_load_u8_d16 v0, v9 offset:1088
	ds_load_u8_d16 v21, v9 offset:1120
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:252 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1152
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:256 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:260 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1216
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:264 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1248
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:268 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1280
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:272 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1312
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:276 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1344
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:280 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1376
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:284 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1408
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:288 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1440
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:292 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1472
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:296 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1504
	v_mov_b32_e32 v9, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:300 ; 4-byte Folded Spill
	v_mov_b32_e32 v21, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	v_perm_b32 v2, v17, v18, 0xc0c0004
	v_perm_b32 v3, v19, v20, 0xc0c0004
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	v_lshl_or_b32 v133, v3, 16, v2
	v_perm_b32 v2, v8, v10, 0xc0c0004
	v_perm_b32 v3, v11, v12, 0xc0c0004
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_perm_b32 v21, v13, v14, 0xc0c0004
	v_lshl_or_b32 v131, v3, 16, v2
	v_perm_b32 v2, v4, v5, 0xc0c0004
	v_perm_b32 v3, v6, v7, 0xc0c0004
	v_perm_b32 v22, v15, v16, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v23, s46, v184
	v_add_nc_u32_e32 v44, s46, v182
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v42, v100, v101, 0xc0c0004
	v_lshl_or_b32 v130, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s46, v196
	v_add_nc_u32_e32 v3, s46, v195
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v132, v22, 16, v21
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v21, s46, v197
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v43, v138, v114, 0xc0c0004
	ds_load_u8 v2, v2
	ds_load_u8 v3, v3
	ds_load_u8 v23, v23
	ds_load_u8 v21, v21
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v22, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s46, v170
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v21, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v21, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v137, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:4  ; 4-byte Folded Reload
	v_add_nc_u32_e32 v3, s46, v159
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v22, s46, v22
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v22, v22
	ds_load_u8 v3, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, s46, v21
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v21, v21
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s46, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v22, s46, v194
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off           ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v22, 16, v21
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v21, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v22, v140, v232, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s46, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s46, v21
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v21, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v21, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v135, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:88 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v3, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, s46, v21
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s46, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v21, v21
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s46, v158
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v21, v3, 0xc0c0004
	v_perm_b32 v21, v141, v226, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v134, v3, 16, v2
	v_perm_b32 v2, v142, v144, 0xc0c0004
	v_perm_b32 v3, v227, v143, 0xc0c0004
	v_lshl_or_b32 v156, v22, 16, v21
	v_dual_mov_b32 v28, s19 :: v_dual_mov_b32 v27, s18
	v_mov_b32_e32 v26, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v157, v3, 16, v2
	v_perm_b32 v2, v129, v210, 0xc0c0004
	v_perm_b32 v3, v128, v255, 0xc0c0004
	v_dual_mov_b32 v25, s16 :: v_dual_mov_b32 v24, s15
	v_dual_mov_b32 v23, s14 :: v_dual_mov_b32 v22, s13
	v_lshl_or_b32 v155, v3, 16, v2
	v_perm_b32 v2, v204, v244, 0xc0c0004
	v_perm_b32 v3, v122, v123, 0xc0c0004
	v_mov_b32_e32 v21, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v154, v3, 16, v2
	v_perm_b32 v2, v139, v115, 0xc0c0004
	v_perm_b32 v3, v116, v98, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[29:36], v[134:137], v[130:133], v[21:28] neg_lo:[1,1,0]
	v_lshl_or_b32 v132, v43, 16, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v42, s46, v166
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v133, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:320
	scratch_load_b32 v3, off, off offset:324
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v43, s46, v161
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[21:28], v[134:137], v[154:157], v[21:28] neg_lo:[1,1,0]
	ds_load_u8 v42, v42
	ds_load_u8 v43, v43
	s_waitcnt vmcnt(1)
	v_perm_b32 v2, v2, v117, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:304
	scratch_load_b32 v3, off, off offset:308
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:312
	scratch_load_b32 v37, off, off offset:316
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s46, v169
	v_add_nc_u32_e32 v3, s46, v193
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s46, v167
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v42, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v42, s46, v183
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v137, v3, 16, v2
	ds_load_u8 v42, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s46, v164
	v_add_nc_u32_e32 v3, s46, v165
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v43, s46, v181
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s46, v162
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v44, s46, v172
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v136, v43, 16, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v42, s46, v163
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v43, v118, v120, 0xc0c0004
	ds_load_u8 v44, v44
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v42, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v42, s46, v191
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v135, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s46, v168
	v_add_nc_u32_e32 v3, s46, v171
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	ds_load_u8 v2, v2
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s46, v192
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v42, v3, 0xc0c0004
	v_perm_b32 v42, v119, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v134, v3, 16, v2
	v_perm_b32 v2, v125, v126, 0xc0c0004
	v_perm_b32 v3, v124, v127, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[29:36], v[134:137], v[130:133], v[29:36] neg_lo:[1,1,0]
	v_lshl_or_b32 v132, v43, 16, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v133, v3, 16, v2
	v_perm_b32 v2, v111, v113, 0xc0c0004
	v_perm_b32 v3, v110, v112, 0xc0c0004
	v_lshl_or_b32 v131, v3, 16, v2
	v_perm_b32 v2, v103, v105, 0xc0c0004
	v_perm_b32 v3, v102, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:288
	scratch_load_b32 v3, off, off offset:292
	v_wmma_i32_16x16x16_iu8 v[21:28], v[134:137], v[130:133], v[21:28] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:296
	scratch_load_b32 v37, off, off offset:300
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v37, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:272
	scratch_load_b32 v42, off, off offset:276
	v_lshl_or_b32 v133, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:256
	scratch_load_b32 v3, off, off offset:260
	s_waitcnt vmcnt(2)
	v_perm_b32 v42, v37, v42, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:280
	scratch_load_b32 v43, off, off offset:284
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v43, v37, v43, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:264
	scratch_load_b32 v37, off, off offset:268
	v_lshl_or_b32 v132, v43, 16, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v43, s46, v174
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v131, v3, 16, v2
	scratch_load_b32 v3, off, off offset:252 ; 4-byte Folded Reload
	v_perm_b32 v2, v245, v246, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v42, s46, v37
	scratch_load_b32 v37, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt vmcnt(1)
	v_perm_b32 v3, v0, v3, 0xc0c0004
	ds_load_u8 v42, v42
	v_lshl_or_b32 v130, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:12 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v3, s46, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s46, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s46, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v42, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v42, s46, v173
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v137, v3, 16, v2
	ds_load_u8 v42, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s46, v177
	v_add_nc_u32_e32 v3, s46, v178
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v43, s46, v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s46, v175
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v43, 16, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v42, s46, v176
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v43, v253, v254, 0xc0c0004
	ds_load_u8 v42, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v42, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v42, s46, v190
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v135, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s46, v179
	v_add_nc_u32_e32 v3, s46, v180
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	ds_load_u8 v2, v2
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s46, v185
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v42, v3, 0xc0c0004
	v_perm_b32 v42, v84, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v134, v3, 16, v2
	v_perm_b32 v2, v107, v109, 0xc0c0004
	v_perm_b32 v3, v106, v108, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[29:36], v[134:137], v[130:133], v[29:36] neg_lo:[1,1,0]
	v_lshl_or_b32 v132, v43, 16, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v133, v3, 16, v2
	v_perm_b32 v2, v250, v252, 0xc0c0004
	v_perm_b32 v3, v249, v251, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v42, s46, v37
	scratch_load_b32 v37, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v131, v3, 16, v2
	v_perm_b32 v2, v202, v239, 0xc0c0004
	v_perm_b32 v3, v201, v203, 0xc0c0004
	ds_load_u8 v42, v42
	v_lshl_or_b32 v130, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:76
	scratch_load_b32 v3, off, off offset:72
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[21:28], v[134:137], v[130:133], v[21:28] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s46, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s46, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s46, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v42, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v42, s46, v37
	scratch_load_b32 v37, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v133, v3, 16, v2
	ds_load_u8 v42, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v43, s46, v37
	scratch_load_b32 v37, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v43, s46, v37
	scratch_load_b32 v37, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v43, v43
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s46, v37
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:48
	scratch_load_b32 v3, off, off offset:40
	v_add_nc_u32_e32 v2, s46, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v44, v44
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v132, v43, 16, v42
	v_perm_b32 v43, v231, v237, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v42, s46, v37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s46, v3
	scratch_load_b32 v37, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s46, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v42, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v42, s46, v37
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v131, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:24
	scratch_load_b32 v3, off, off offset:28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v42, v42
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s46, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s46, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s46, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v42, v3, 0xc0c0004
	v_perm_b32 v42, v234, v238, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v130, v3, 16, v2
	v_perm_b32 v2, v205, v247, 0xc0c0004
	v_perm_b32 v3, v243, v248, 0xc0c0004
	v_lshl_or_b32 v136, v43, 16, v42
	v_perm_b32 v42, v150, v151, 0xc0c0004
	v_perm_b32 v43, v152, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v137, v3, 16, v2
	v_perm_b32 v2, v228, v230, 0xc0c0004
	v_perm_b32 v3, v225, v229, 0xc0c0004
	v_lshl_or_b32 v135, v3, 16, v2
	v_perm_b32 v2, v199, v200, 0xc0c0004
	v_perm_b32 v3, v223, v224, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v134, v3, 16, v2
	v_perm_b32 v2, v240, v198, 0xc0c0004
	v_perm_b32 v3, v241, v242, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[21:28], v[130:133], v[134:137], v[21:28] neg_lo:[1,1,0]
	v_lshl_or_b32 v136, v43, 16, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v137, v3, 16, v2
	v_perm_b32 v2, v146, v147, 0xc0c0004
	v_perm_b32 v3, v148, v149, 0xc0c0004
	v_cvt_f32_i32_e32 v189, v27
	v_cvt_f32_i32_e32 v186, v28
	v_lshl_or_b32 v135, v3, 16, v2
	v_perm_b32 v2, v233, v145, 0xc0c0004
	v_perm_b32 v3, v235, v236, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v134, v3, 16, v2
	v_cvt_f32_i32_e32 v2, v25
	v_cvt_f32_i32_e32 v3, v26
	v_wmma_i32_16x16x16_iu8 v[29:36], v[130:133], v[134:137], v[29:36] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v132, v21
	v_cvt_f32_i32_e32 v133, v22
	v_cvt_f32_i32_e32 v134, v23
	v_cvt_f32_i32_e32 v135, v24
	v_cvt_f32_i32_e32 v130, v31
	v_cvt_f32_i32_e32 v131, v32
	v_cvt_f32_i32_e32 v21, v33
	v_cvt_f32_i32_e32 v22, v34
	v_cvt_f32_i32_e32 v187, v35
	v_cvt_f32_i32_e32 v188, v36
	v_cvt_f32_i32_e32 v136, v29
	v_cvt_f32_i32_e32 v137, v30
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v22, off offset:232
	scratch_store_b32 off, v21, off offset:228
	scratch_store_b32 off, v3, off offset:224
	scratch_store_b32 off, v2, off offset:220
	scratch_store_b32 off, v38, off offset:248
	v_dual_mov_b32 v32, v159 :: v_dual_mov_b32 v31, v158
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v156, 0
	v_mov_b32_e32 v3, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v2, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v27, s45, v185
	v_add_nc_u32_e32 v28, s45, v190
	v_add_nc_u32_e32 v33, s45, v167
	v_add_nc_u32_e32 v167, s45, v191
	v_add_nc_u32_e32 v34, s45, v166
	v_add_nc_u32_e32 v166, s45, v192
	v_add_nc_u32_e32 v36, s45, v193
	v_add_nc_u32_e32 v9, s45, v196
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v4, v4, v5, 0xc0c0004
	v_perm_b32 v5, v6, v7, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v3, s45, v197
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v17, v17, v18, 0xc0c0004
	v_perm_b32 v18, v19, v20, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v35, s45, v169
	v_add_nc_u32_e32 v169, s45, v171
	v_add_nc_u32_e32 v171, s45, v194
	v_add_nc_u32_e32 v184, s45, v184
	v_add_nc_u32_e32 v194, s45, v32
	v_add_nc_u32_e32 v1, s45, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v32, v18, 16, v17
	v_perm_b32 v8, v8, v10, 0xc0c0004
	v_perm_b32 v10, v11, v12, 0xc0c0004
	v_perm_b32 v13, v13, v14, 0xc0c0004
	v_perm_b32 v14, v15, v16, 0xc0c0004
	ds_load_u8 v35, v35
	ds_load_u8 v36, v36
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	v_lshl_or_b32 v30, v10, 16, v8
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v183, s45, v183
	v_add_nc_u32_e32 v161, s45, v161
	v_add_nc_u32_e32 v181, s45, v181
	v_add_nc_u32_e32 v182, s45, v182
	v_add_nc_u32_e32 v164, s45, v164
	v_add_nc_u32_e32 v165, s45, v165
	v_add_nc_u32_e32 v162, s45, v162
	v_add_nc_u32_e32 v163, s45, v163
	v_add_nc_u32_e32 v168, s45, v168
	v_add_nc_u32_e32 v40, s45, v40
	v_add_nc_u32_e32 v173, s45, v173
	v_add_nc_u32_e32 v174, s45, v174
	v_add_nc_u32_e32 v41, s45, v41
	v_add_nc_u32_e32 v172, s45, v172
	v_add_nc_u32_e32 v177, s45, v177
	v_add_nc_u32_e32 v178, s45, v178
	v_add_nc_u32_e32 v175, s45, v175
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v176, s45, v176
	v_add_nc_u32_e32 v179, s45, v179
	v_add_nc_u32_e32 v180, s45, v180
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v27, v27
	ds_load_u8 v28, v28
	v_lshl_or_b32 v36, v33, 16, v35
	ds_load_u8 v33, v183
	ds_load_u8 v34, v161
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v29, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_perm_b32 v28, v241, v242, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v181
	ds_load_u8 v35, v182
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v34, 16, v33
	ds_load_u8 v33, v164
	ds_load_u8 v34, v165
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v158, s45, v2
	scratch_load_b32 v2, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v185, s45, v29
	scratch_load_b32 v29, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v159, s45, v2
	scratch_load_b32 v2, off, off offset:76 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v200, off offset:76
	scratch_store_b32 off, v224, off offset:80
	v_mov_b16_e64 v200.l, v223.l
	v_mov_b16_e64 v223.l, v221.l
	v_mov_b16_e64 v221.l, v219.l
	v_mov_b16_e64 v219.l, v217.l
	v_mov_b16_e64 v217.l, v215.l
	v_mov_b16_e64 v215.l, v213.l
	v_mov_b16_e64 v213.l, v211.l
	v_mov_b16_e64 v211.l, v39.l
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v190, s45, v29
	scratch_load_b32 v29, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v44, s45, v2
	scratch_load_b32 v2, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v191, s45, v29
	scratch_load_b32 v29, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v224, s45, v2
	scratch_load_b32 v2, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v192, s45, v29
	scratch_load_b32 v29, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v154, s45, v2
	scratch_load_b32 v2, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v193, s45, v29
	scratch_load_b32 v29, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v155, s45, v2
	scratch_load_b32 v2, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v196, s45, v29
	scratch_load_b32 v29, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v156, s45, v2
	scratch_load_b32 v2, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v197, s45, v29
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v29, v5, 16, v4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v157, s45, v2
	scratch_load_b32 v2, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s45, v2
	scratch_load_b32 v2, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s45, v2
	scratch_load_b32 v2, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, s45, v2
	scratch_load_b32 v2, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v43, s45, v2
	scratch_load_b32 v2, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s45, v2
	scratch_load_b32 v2, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s45, v2
	scratch_load_b32 v2, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	v_perm_b32 v22, v227, v143, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v24, s45, v2
	scratch_load_b32 v2, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s45, v2
	scratch_load_b32 v2, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v24, v24
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v23, v24, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s45, v2
	scratch_load_b32 v2, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s45, v2
	scratch_load_b32 v2, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s45, v2
	v_add_nc_u32_e32 v2, s45, v170
	v_add_nc_u32_e32 v170, s45, v195
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v4, v9
	ds_load_u8 v5, v170
	ds_load_u8 v2, v2
	ds_load_u8 v3, v3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v195, s45, v31
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v31, v14, 16, v13
	ds_load_u8 v39, v39
	ds_load_u8 v40, v40
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v20, v2, 16, v4
	ds_load_u8 v2, v185
	ds_load_u8 v3, v190
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v171
	ds_load_u8 v4, v184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v3, 16, v2
	ds_load_u8 v2, v193
	ds_load_u8 v3, v194
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v191
	ds_load_u8 v4, v192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v3, 16, v2
	ds_load_u8 v2, v197
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	ds_load_u8 v2, v195
	ds_load_u8 v3, v196
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v2, 16, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	ds_load_u8 v25, v25
	ds_load_u8 v26, v26
	v_wmma_i32_16x16x16_iu8 v[9:16], v[17:20], v[29:32], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v29, v139, v115, 0xc0c0004
	v_perm_b32 v30, v116, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v100, v101, 0xc0c0004
	v_perm_b32 v30, v138, v114, 0xc0c0004
	v_lshl_or_b32 v31, v30, 16, v29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:320
	scratch_load_b32 v30, off, off offset:324
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v29, v29, v117, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v30, v30, v99, 0xc0c0004
	v_lshl_or_b32 v117, v37, 16, v39
	ds_load_u8 v37, v173
	ds_load_u8 v38, v174
	v_lshl_or_b32 v30, v30, 16, v29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:304
	scratch_load_b32 v98, off, off offset:308
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v41
	ds_load_u8 v39, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v38, 16, v37
	ds_load_u8 v37, v177
	ds_load_u8 v38, v178
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v175
	ds_load_u8 v39, v176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	v_mov_b16_e64 v39.l, v211.l
	v_mov_b16_e64 v211.l, v213.l
	v_mov_b16_e64 v213.l, v215.l
	v_mov_b16_e64 v215.l, v217.l
	v_mov_b16_e64 v217.l, v219.l
	v_mov_b16_e64 v219.l, v221.l
	v_mov_b16_e64 v221.l, v223.l
	v_lshl_or_b32 v115, v38, 16, v37
	ds_load_u8 v37, v179
	ds_load_u8 v38, v180
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v29, v98, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v98, off, off offset:312
	scratch_load_b32 v99, off, off offset:316
	s_waitcnt vmcnt(0)
	v_perm_b32 v138, v98, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v138, 16, v29
	ds_load_u8 v34, v162
	ds_load_u8 v138, v163
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v138, v34, 0xc0c0004
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v168
	ds_load_u8 v138, v169
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v138, v33, 0xc0c0004
	ds_load_u8 v138, v166
	ds_load_u8 v139, v167
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v138, 16, v33
	v_wmma_i32_16x16x16_iu8 v[9:16], v[33:36], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:288
	scratch_load_b32 v30, off, off offset:292
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v29, v30, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v30, off, off offset:296
	scratch_load_b32 v31, off, off offset:300
	s_waitcnt vmcnt(0)
	v_perm_b32 v30, v30, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v30, 16, v29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:272
	scratch_load_b32 v30, off, off offset:276
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v29, v30, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v30, off, off offset:280
	scratch_load_b32 v31, off, off offset:284
	s_waitcnt vmcnt(0)
	v_perm_b32 v30, v30, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v30, 16, v29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:256
	scratch_load_b32 v30, off, off offset:260
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v29, v30, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v30, off, off offset:264
	scratch_load_b32 v98, off, off offset:268
	s_waitcnt vmcnt(0)
	v_perm_b32 v30, v30, v98, 0xc0c0004
	scratch_load_b32 v98, off, off offset:252 ; 4-byte Folded Reload
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v245, v246, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v114, v0, v98, 0xc0c0004
	scratch_load_b32 v0, off, off offset:76 ; 4-byte Folded Reload
	v_lshl_or_b32 v98, v21, 16, v23
	v_perm_b32 v21, v142, v144, 0xc0c0004
	v_lshl_or_b32 v29, v114, 16, v29
	v_lshl_or_b32 v114, v27, 16, v37
	v_perm_b32 v27, v240, v198, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v24, v22, 16, v21
	v_perm_b32 v21, v141, v226, 0xc0c0004
	v_perm_b32 v22, v140, v232, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[114:117], v[29:32], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v30, v28, 16, v27
	v_perm_b32 v27, v150, v151, 0xc0c0004
	v_perm_b32 v28, v152, v153, 0xc0c0004
	v_perm_b32 v31, v235, v236, 0xc0c0004
	v_lshl_or_b32 v23, v22, 16, v21
	v_perm_b32 v21, v129, v210, 0xc0c0004
	v_perm_b32 v22, v128, v255, 0xc0c0004
	v_lshl_or_b32 v29, v28, 16, v27
	v_perm_b32 v27, v146, v147, 0xc0c0004
	v_perm_b32 v28, v148, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v22, v22, 16, v21
	v_perm_b32 v21, v204, v244, 0xc0c0004
	v_lshl_or_b32 v28, v28, 16, v27
	v_perm_b32 v27, v233, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v31, 16, v27
	ds_load_u8 v31, v44
	ds_load_u8 v32, v224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v158
	ds_load_u8 v37, v159
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v37, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v101, v32, 16, v31
	ds_load_u8 v31, v156
	ds_load_u8 v32, v157
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v154
	ds_load_u8 v37, v155
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v37, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v100, v32, 16, v31
	ds_load_u8 v31, v42
	ds_load_u8 v32, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	v_lshl_or_b32 v99, v25, 16, v31
	v_perm_b32 v25, v122, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[98:101], v[27:30], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v21, v25, 16, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v9, v9
	v_wmma_i32_16x16x16_iu8 v[1:8], v[17:20], v[21:24], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v17, v125, v126, 0xc0c0004
	v_perm_b32 v18, v124, v127, 0xc0c0004
	v_perm_b32 v21, v102, v104, 0xc0c0004
	v_cvt_f32_i32_e32 v159, v10
	v_cvt_f32_i32_e32 v22, v12
	v_cvt_f32_i32_e32 v157, v13
	v_cvt_f32_i32_e32 v158, v14
	v_cvt_f32_i32_e32 v154, v15
	v_cvt_f32_i32_e32 v155, v16
	v_lshl_or_b32 v20, v18, 16, v17
	v_perm_b32 v17, v119, v121, 0xc0c0004
	v_perm_b32 v18, v118, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v18, 16, v17
	v_perm_b32 v17, v111, v113, 0xc0c0004
	v_perm_b32 v18, v110, v112, 0xc0c0004
	v_lshl_or_b32 v18, v18, 16, v17
	v_perm_b32 v17, v103, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v17, v21, 16, v17
	v_perm_b32 v21, v201, v203, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[33:36], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v17, v107, v109, 0xc0c0004
	v_perm_b32 v18, v106, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v20, v18, 16, v17
	v_perm_b32 v17, v84, v97, 0xc0c0004
	v_perm_b32 v18, v253, v254, 0xc0c0004
	v_lshl_or_b32 v19, v18, 16, v17
	v_perm_b32 v17, v250, v252, 0xc0c0004
	v_perm_b32 v18, v249, v251, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	v_perm_b32 v17, v202, v239, 0xc0c0004
	v_lshl_or_b32 v17, v21, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[114:117], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v17, v205, v247, 0xc0c0004
	v_perm_b32 v18, v243, v248, 0xc0c0004
	v_lshl_or_b32 v20, v18, 16, v17
	v_perm_b32 v17, v234, v238, 0xc0c0004
	v_perm_b32 v18, v231, v237, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v18, 16, v17
	v_perm_b32 v17, v228, v230, 0xc0c0004
	v_perm_b32 v18, v225, v229, 0xc0c0004
	v_lshl_or_b32 v18, v18, 16, v17
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v199, v0, 0xc0c0004
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v21, v200, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v17, v21, 16, v17
	v_cvt_f32_i32_e32 v21, v11
	v_wmma_i32_16x16x16_iu8 v[1:8], v[98:101], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v25, v1
	v_cvt_f32_i32_e32 v26, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v42, v3
	v_cvt_f32_i32_e32 v43, v4
	v_cvt_f32_i32_e32 v23, v5
	v_cvt_f32_i32_e32 v24, v6
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v156, v8
.LBB0_16:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	scratch_load_b32 v112, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 362 29 is_stmt 1              ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s44, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s44, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v27.h, v222.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v20.h, v39.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v95, s0, 1
	v_add_lshl_u32 v2, v96, s0, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s0, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v94, s1, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v7, v93, s1, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v8, v92, s1, 1
	v_add_lshl_u32 v10, v91, s1, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v5, v1, s[8:11], 0 offen
	buffer_load_u16 v6, v2, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v1, 0x80000000, v7, vcc_lo
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s1, s33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v2, 0x80000000, v8 :: v_dual_cndmask_b32 v7, 0x80000000, v10
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v8, s0, v90, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x3
	buffer_load_u16 v10, v4, s[24:27], 0 offen
	buffer_load_u16 v11, v1, s[24:27], 0 offen
	buffer_load_u16 v12, v2, s[24:27], 0 offen
	buffer_load_u16 v13, v7, s[24:27], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v2, s0, v89, 1
	v_add_lshl_u32 v4, s0, v88, 1
	v_add_lshl_u32 v7, s0, v86, 1
	v_cndmask_b32_e32 v1, 0x80000000, v8, vcc_lo
	v_add_lshl_u32 v8, s0, v85, 1
	v_add_lshl_u32 v14, s0, v87, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v19, 0x80000000, v14
	s_clause 0x5
	buffer_load_u16 v14, v1, s[24:27], 0 offen
	buffer_load_u16 v15, v2, s[24:27], 0 offen
	buffer_load_u16 v16, v4, s[24:27], 0 offen
	buffer_load_u16 v17, v7, s[24:27], 0 offen
	buffer_load_u16 v18, v8, s[24:27], 0 offen
	buffer_load_u16 v19, v19, s[24:27], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, 0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v7, s23, v83
	.loc	1 364 22 is_stmt 1              ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v1.h, v218.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v59, v59, s1, 1
	v_add_lshl_u32 v60, v60, s1, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v27.l, v1.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v20.l, v1.l
	v_add_lshl_u32 v61, v61, s1, 1
	v_add_lshl_u32 v62, v62, s1, 1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s4, s34, s23
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v8.h, v221.l
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s4, s4, s33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v96, v1, v20
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v8.l, v1.l
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v2.h, v217.l
	v_mov_b16_e32 v2.l, v1.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v28.h, v219.l
	v_mov_b16_e32 v28.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v86, v1, v8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v29.h, v220.l
	v_mov_b16_e32 v29.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v8, v2, v8
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v88, v1, v28
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v0, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(18)
	v_mov_b16_e64 v31.h, v216.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v87, v1, v29
	v_mul_f32_e32 v29, v2, v29
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v31.l, v1.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v28, v2, v28
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v30.h, v215.l
	v_mov_b16_e32 v30.l, v1.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v32.h, v213.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v89, v1, v31
	v_mul_f32_e32 v31, v2, v31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v32.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v90, v1, v30
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v33.h, v214.l
	v_mov_b16_e32 v33.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v30, v2, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v92, v1, v32
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(16)
	v_mov_b16_e64 v35.h, v212.l
	v_mov_b16_e32 v35.l, v1.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v91, v1, v33
	v_mul_f32_e32 v33, v2, v33
	v_mul_f32_e32 v32, v2, v32
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v34.h, v211.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v93, v1, v35
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v34.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v35, v2, v35
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v44.h, v209.l
	v_mov_b16_e32 v44.l, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v57, s0, v57, 1
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v94, v1, v34
	v_mul_f32_e32 v34, v2, v34
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v58, s0, v58, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v95, v1, v44
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.h, v1.l
	v_mov_b16_e32 v37.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.h, v1.l
	v_mov_b16_e32 v36.h, v1.l
	v_mov_b16_e32 v83.h, v1.l
	v_mov_b16_e32 v84.h, v1.l
	v_mov_b16_e32 v41.h, v1.l
	v_mov_b16_e32 v40.h, v1.l
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_lshl_b32 s12, s23, 4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v85, v1, v27
	v_mul_f32_e32 v27, v2, v27
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v20, v2, v20
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(13)
	v_lshrrev_b32_e32 v4, 1, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v4, 0x78, v4
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v4, s4, v4, v7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v7, 0x80000000, v59, vcc_lo
	v_dual_cndmask_b32 v59, 0x80000000, v60 :: v_dual_cndmask_b32 v60, 0x80000000, v61
	v_cndmask_b32_e32 v61, 0x80000000, v62, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v62, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v6, 16, v6
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v62, v86, v62, v81
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v86, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v86, v88, v86, v79
	scratch_load_b32 v88, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v79, v86, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v87, v87, v88, v80
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v88, off, off offset:96 ; 4-byte Folded Reload
	v_fma_f32 v85, v85, v0, v82
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v112
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v88, v8, v88, v63
	scratch_load_b32 v8, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v63, v63, v88, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v27, v27, v8, v78
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v8, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v78, v27, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_clause 0x1
	buffer_load_u16 v27, v57, s[24:27], 0 offen
	buffer_load_u16 v57, v58, s[24:27], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v58, v6, v11 :: v_dual_lshlrev_b32 v13, 16, v13
	v_dual_mul_f32 v11, v5, v11 :: v_dual_lshlrev_b32 v10, 16, v10
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v15, 16, v15
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v28, v28, v8, v76
	scratch_load_b32 v8, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v76, v28, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v29, v29, v8, v77
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v8, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v77, v29, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v11, v137, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v29, v11, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v90, v90, v8, v74
	scratch_load_b32 v8, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v74, v90, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v89, v89, v8, v75
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v8, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v75, v89, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v92, v92, v8, v72
	scratch_load_b32 v8, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v72, v92, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v91, v91, v8, v73
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v8, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v73, v91, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v30, v30, v8, v70
	scratch_load_b32 v8, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v70, v30, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v31, v31, v8, v71
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v8, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v71, v31, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v32, v32, v8, v68
	scratch_load_b32 v8, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v68, v32, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v6, v12
	v_mul_f32_e32 v12, v5, v12
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v71, v6, v17 :: v_dual_lshlrev_b32 v18, 16, v18
	v_mul_f32_e32 v17, v5, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v12, v130, v32
	v_fma_f32 v68, v68, v134, v72
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v17, v17, v22, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v32, v12, s2
	v_cndmask_b32_e64 v29, v72, v68, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v17, v31, v17, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v33, v33, v8, v69
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v8, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v69, v33, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v69, v6, v15
	v_dual_mul_f32 v15, v5, v15 :: v_dual_mul_f32 v76, v6, v16
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v94, v94, v8, v66
	scratch_load_b32 v8, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v66, v94, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v93, v93, v8, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v8, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v67, v93, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v96, v96, v8, v55
	scratch_load_b32 v8, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v95, v95, v8, v56
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v8, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v34, v34, v8, v64
	scratch_load_b32 v8, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v64, v34, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v35, v35, v8, v65
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x3
	buffer_load_u16 v97, v7, s[24:27], 0 offen
	buffer_load_u16 v59, v59, s[24:27], 0 offen
	buffer_load_u16 v8, v60, s[24:27], 0 offen
	buffer_load_u16 v7, v61, s[24:27], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v82, v85, s3
	v_cndmask_b32_e64 v61, v81, v62, s3
	v_cndmask_b32_e64 v62, v80, v87, s3
	v_cndmask_b32_e64 v35, v65, v35, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v6, v13
	v_mul_f32_e32 v64, v6, v10
	v_mul_f32_e32 v10, v5, v10
	v_dual_mul_f32 v13, v5, v13 :: v_dual_lshlrev_b32 v14, 16, v14
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v26, v69, v26, v60
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v58, v58, v133, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v70, v6, v14
	v_mul_f32_e32 v14, v5, v14
	v_dual_mul_f32 v16, v5, v16 :: v_dual_mul_f32 v77, v6, v19
	v_dual_mul_f32 v80, v6, v18 :: v_dual_mul_f32 v19, v5, v19
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v9, v14, v9, v63
	v_fma_f32 v25, v70, v25, v61
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v13, v131, v33
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v14, v15, v159, v78
	v_fma_f32 v16, v16, v21, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v63, v9, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v18, v5, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v60, v26, s2
	v_cndmask_b32_e64 v25, v61, v25, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v15, v76, v42, v74
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v33, v13, s2
	v_cndmask_b32_e64 v14, v78, v14, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v9
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v18, v18, v157, v34
	v_fma_f32 v42, v71, v43, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v30, v16, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v30, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v26
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v19, v19, v158, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v74, v15, s2
	v_cndmask_b32_e64 v18, v34, v18, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v14
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v22, v77, v24, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v75, v42, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v35, v19, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v34
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v21, v80, v23, v66
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v67, v22, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v32
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v33
	v_cndmask_b32_e64 v30, 0, 0x42800000, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v62, v58, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v43, 0xbfb8aa3b, v16 :: v_dual_mul_f32 v58, 0xbfb8aa3b, v17
	v_cndmask_b32_e64 v34, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v66, v21, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v61, 0xbfb8aa3b, v22
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v42
	v_dual_fmac_f32 v31, 0xbfb8aa3b, v26 :: v_dual_fmac_f32 v30, 0xbfb8aa3b, v25
	v_cndmask_b32_e64 v33, 0, 0x42800000, s4
	v_cndmask_b32_e64 v35, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v58
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v132, v79
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v60, 0xbfb8aa3b, v21 :: v_dual_mul_f32 v63, 0xbfb8aa3b, v19
	v_cndmask_b32_e64 v42, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v43
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v61
	v_exp_f32_e32 v31, v31
	v_dual_mul_f32 v62, 0xbfb8aa3b, v18 :: v_dual_fmac_f32 v33, 0xbfb8aa3b, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v10, v136, v28
	v_fma_f32 v65, v65, v135, v73
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v30, v30
	v_cndmask_b32_e64 v58, 0, 0x42800000, s7
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v15
	v_exp_f32_e32 v34, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v79, v64, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, s8
	v_cndmask_b32_e64 v61, 0, 0x42800000, s9
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v60
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v32
	v_exp_f32_e32 v33, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v28, v10, s2
	v_cndmask_b32_e64 v28, v73, v65, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s1
	v_dual_fmac_f32 v58, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v43, 0xbfb8aa3b, v16
	v_exp_f32_e32 v35, v35
	v_cndmask_b32_e64 v60, 0, 0x42800000, s10
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v22
	v_exp_f32_e32 v42, v42
	v_ldexp_f32 v31, v31, v64
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s4
	v_ldexp_f32 v30, v30, v65
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s6
	v_exp_f32_e32 v58, v58
	v_ldexp_f32 v34, v34, v66
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s5
	v_dual_fmac_f32 v60, 0xbfb8aa3b, v21 :: v_dual_add_f32 v31, 1.0, v31
	v_exp_f32_e32 v43, v43
	v_ldexp_f32 v33, v33, v67
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s7
	v_exp_f32_e32 v61, v61
	v_ldexp_f32 v35, v35, v69
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s8
	v_ldexp_f32 v42, v42, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v31, v31, v26
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v30, v30, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s9
	v_ldexp_f32 v58, v58, v70
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v68, null, v34, v34, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v43, v43, v71
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v81, v64
	v_div_scale_f32 v70, null, v33, v33, v9
	v_rcp_f32_e32 v82, v66
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v61, v61, v72
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v58, 1.0, v58
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v85, v68
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v42, v42, v32
	v_rcp_f32_e32 v86, v70
	v_div_scale_f32 v75, null, v35, v35, v15
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v77, null, v58, v58, v17
	v_rcp_f32_e32 v87, v72
	v_fma_f32 v93, -v64, v81, 1.0
	v_div_scale_f32 v79, null, v43, v43, v16
	v_rcp_f32_e32 v88, v75
	v_fma_f32 v94, -v66, v82, 1.0
	v_rcp_f32_e32 v89, v77
	v_fma_f32 v98, -v68, v85, 1.0
	v_div_scale_f32 v65, vcc_lo, v26, v31, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v81, v93, v81 :: v_dual_fmac_f32 v82, v94, v82
	v_rcp_f32_e32 v90, v79
	v_fma_f32 v99, -v70, v86, 1.0
	v_div_scale_f32 v67, s0, v25, v30, v25
	v_div_scale_f32 v69, s1, v14, v34, v14
	v_dual_fmac_f32 v85, v98, v85 :: v_dual_fmac_f32 v86, v99, v86
	v_fma_f32 v100, -v72, v87, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v93, v65, v81 :: v_dual_mul_f32 v94, v67, v82
	v_div_scale_f32 v71, s4, v9, v33, v9
	v_fma_f32 v101, -v75, v88, 1.0
	v_fma_f32 v102, -v77, v89, 1.0
	v_dual_mul_f32 v98, v69, v85 :: v_dual_mul_f32 v99, v71, v86
	v_div_scale_f32 v74, s5, v32, v42, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v87, v100, v87 :: v_dual_fmac_f32 v88, v101, v88
	v_fma_f32 v104, -v64, v93, v65
	v_fma_f32 v103, -v79, v90, 1.0
	v_div_scale_f32 v76, s6, v15, v35, v15
	v_fma_f32 v105, -v66, v94, v67
	v_div_scale_f32 v78, s7, v17, v58, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v89, v102, v89 :: v_dual_fmac_f32 v90, v103, v90
	v_fma_f32 v106, -v68, v98, v69
	v_dual_mul_f32 v100, v74, v87 :: v_dual_mul_f32 v101, v76, v88
	v_dual_fmac_f32 v93, v104, v81 :: v_dual_fmac_f32 v94, v105, v82
	v_div_scale_f32 v91, s8, v16, v43, v16
	v_fma_f32 v107, -v70, v99, v71
	v_mul_f32_e32 v102, v78, v89
	v_fmac_f32_e32 v98, v106, v85
	v_fma_f32 v108, -v72, v100, v74
	v_fma_f32 v64, -v64, v93, v65
	v_mul_f32_e32 v103, v91, v90
	v_fmac_f32_e32 v99, v107, v86
	v_fma_f32 v109, -v75, v101, v76
	v_fma_f32 v65, -v66, v94, v67
	v_fma_f32 v110, -v77, v102, v78
	v_fma_f32 v66, -v68, v98, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v100, v108, v87 :: v_dual_fmac_f32 v101, v109, v88
	v_div_fmas_f32 v64, v64, v81, v93
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v111, -v79, v103, v91
	v_fma_f32 v67, -v70, v99, v71
	v_div_fmas_f32 v65, v65, v82, v94
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v102, v110, v89 :: v_dual_fmac_f32 v103, v111, v90
	v_div_fmas_f32 v66, v66, v85, v98
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v68, -v72, v100, v74
	v_div_fixup_f32 v26, v64, v31, v26
	v_div_fmas_f32 v31, v67, v86, v99
	v_fma_f32 v69, -v75, v101, v76
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v70, -v77, v102, v78
	v_div_fixup_f32 v25, v65, v30, v25
	v_div_fmas_f32 v30, v68, v87, v100
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v71, -v79, v103, v91
	v_div_fixup_f32 v14, v66, v34, v14
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v23, v23, v26 :: v_dual_mul_f32 v24, v24, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v31, v33, v9
	v_div_fmas_f32 v26, v69, v88, v101
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v30, v30, v42, v32
	v_div_fmas_f32 v25, v70, v89, v102
	s_mov_b32 vcc_lo, s8
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v11, v11, v14 :: v_dual_mul_f32 v10, v10, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v14, v71, v90, v103
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v23.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v15, v26, v35, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v24.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v25, v58, v17
	v_div_fixup_f32 v14, v14, v43, v16
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v15, v29, v15 :: v_dual_and_b32 v16, 1, v38
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v10.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v17, v28, v30
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v63
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, v11.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v12, v12, v14 :: v_dual_and_b32 v25, 1, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v14, v23, v16, 0x7fff
	v_and_b32_e32 v16, 1, v37
	v_mov_b16_e32 v83.l, v17.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v63, 0, 0x42800000, s11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_cmp_o_f32_e64 s0, v24, v24
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v13, v13, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v9, 1, v36
	v_mov_b16_e32 v84.l, v15.h
	v_add3_u32 v23, v24, v25, 0x7fff
	v_and_b32_e32 v24, 1, v83
	v_cmp_o_f32_e64 s1, v11, v11
	v_cmp_o_f32_e64 s4, v10, v10
	v_cmp_o_f32_e64 s5, v17, v17
	v_add3_u32 v11, v11, v9, 0x7fff
	v_mov_b16_e32 v41.l, v12.h
	v_cndmask_b16 v9.h, 0x7fff, v14.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v63, 0xbfb8aa3b, v19 :: v_dual_and_b32 v14, 1, v84
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v10, v16, 0x7fff
	v_add3_u32 v17, v17, v24, 0x7fff
	v_and_b32_e32 v25, 1, v41
	v_mov_b16_e32 v40.l, v13.h
	v_cmp_o_f32_e64 s8, v12, v12
	v_cndmask_b16 v11.l, 0x7fff, v10.h, s4
	v_cndmask_b16 v10.h, 0x7fff, v17.h, s5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v12, v12, v25, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s11
	v_exp_f32_e32 v60, v60
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v80, null, v61, v61, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s10
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s7, v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v92, v80
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v17, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v16, 1, v40
	v_cndmask_b16 v9.l, 0x7fff, v23.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s1
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v13, v13, v16, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v12.h, s8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v16, v60, v73
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v23, -v80, v92, 1.0
	v_div_scale_f32 v30, null, v17, v17, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v18
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v92, v23, v92
	v_rcp_f32_e32 v34, v30
	v_div_scale_f32 v26, vcc_lo, v22, v61, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v12, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v23, null, v16, v16, v21
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v55, v96, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v15, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v28, v23
	v_fma_f32 v39, -v30, v34, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v56, v95, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v29, 16, v97
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v12, v12, v25
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v25, v26, v92 :: v_dual_fmac_f32 v34, v39, v34
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v31, 16, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v37, v6, v29 :: v_dual_add_f32 v12, 1.0, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v80, v25, v26
	v_fma_f32 v33, -v23, v28, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v36, v6, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, s1, v19, v17, v19
	v_fmac_f32_e32 v25, v32, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v28, v33, v28
	v_div_scale_f32 v32, s0, v21, v16, v21
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v5, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v80, v25, v26
	v_div_scale_f32 v35, null, v12, v12, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v38, v32, v28 :: v_dual_mul_f32 v29, v5, v29
	v_div_fmas_f32 v25, v26, v92, v25
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v33, v35
	v_fma_f32 v26, -v23, v38, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v10.l, 0x7fff, v14.h, s6
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v38, v26, v28 :: v_dual_lshlrev_b32 v7, 16, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v26, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v35, v33, 1.0
	v_fma_f32 v23, -v23, v38, v32
	v_fmac_f32_e32 v33, v40, v33
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v23, v23, v28, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v28, off, off offset:228
	scratch_load_b32 v43, off, off offset:116
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, s4, v18, v12, v18
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v41, v2, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v16, v23, v16, v21
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v42, v40, v33
	v_div_fixup_f32 v21, v25, v61, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v23.h, v1.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v25.l, v1.l
	v_mov_b16_e64 v25.h, v160.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v26, v41, v26, v54
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v41, v39, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v54, v26, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v30, v41, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v20, v20, v43, v53
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v43, -v35, v42, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v32, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v32, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v53, v20, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v43, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v29, v28, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v30, v41, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v30, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v29, v29, v34, v41
	s_mov_b32 vcc_lo, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v41, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v29, v17, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v20, v28, s2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v20.l, v1.l
	v_mov_b16_e64 v20.h, v208.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v28, off, off offset:164
	scratch_load_b32 v29, off, off offset:112
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v30, v31, v30, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v35, v42, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v30, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v31, v33, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v30, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v14, v26, v17
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v31, v12, v18
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v18, off, off offset:220 ; 4-byte Folded Reload
	v_fma_f32 v32, v36, v32, v15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v26.l, v1.l
	v_mov_b16_e64 v26.h, v206.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v19, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.h, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v15, v32, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.l, v12.h
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v19, v12, v19, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v18, v37, v18, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v24, v18, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v24.l, v1.l
	v_mov_b16_e64 v24.h, v207.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v16, v17, v16
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v17, v1, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v14.h
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_mov_b16_e32 v23.l, v16.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v18, v14, v18, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v14, v15, v21
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v15, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.h, v1.l
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v19, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v15, v17, v15, v52
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v17, 16, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v52, v15, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v22, v6, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v22, v22, v156, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v15, v22, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v15
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v17, v5, v17 :: v_dual_and_b32 v12, 1, v23
	v_mul_f32_e32 v23, v1, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v12, v16, v12, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v19, v23, v19, v51
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v23, 16, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.l, v14.h
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v22, v6, v23 :: v_dual_and_b32 v21, 1, v21
	v_mul_f32_e32 v23, v5, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v21, v14, v21, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v51, v19, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.h, 0x7fff, v21.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v3, v22, v3, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v19, 0xbfb8aa3b, v15 :: v_dual_mul_f32 v22, v2, v24
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v14, v3, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v14, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v20, v2, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v19, v19
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v22, v22, v28, v49
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v27, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v49, v22, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v19, v19, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v27, v1, v25
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v3
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v27, v27, v30, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v47, v27, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v14, v20, v14, v50
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v20, v1, v26
	v_mul_f32_e32 v26, v2, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v50, v14, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v20, v29, v48
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v17, v17, v155, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v48, v20, s3
	v_cndmask_b32_e64 v14, v14, v17, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v17, v23, v154, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v23, null, v19, v19, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v22, v17, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v22, v24
	v_mul_f32_e32 v28, 0xbfb8aa3b, v14
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v24, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v29, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_ldexp_f32 v22, v22, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v28, 0, 0x42800000, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v23, v24, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v24, v30, v24 :: v_dual_fmac_f32 v29, 0xbfb8aa3b, v17
	v_div_scale_f32 v30, null, v22, v22, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v28, v28
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v33, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v28, v28, v31
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, vcc_lo, v15, v19, v15
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v37, -v30, v33, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v29, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v33, v37, v33 :: v_dual_lshlrev_b32 v8, 16, v8
	v_mul_f32_e32 v31, v32, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v35, v6, v8
	v_mul_f32_e32 v6, v6, v7
	v_mul_f32_e32 v7, v5, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v23, v31, v32
	v_div_scale_f32 v39, null, v29, v29, v17
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v5, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v6, v186, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v31, v36, v24
	v_div_scale_f32 v36, s0, v3, v22, v3
	v_rcp_f32_e32 v37, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v20, v6, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v23, -v23, v31, v32
	v_mul_f32_e32 v32, v36, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v35, v35, v189, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v23, v23, v24, v31
	v_fma_f32 v24, -v30, v32, v36
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v31, -v39, v37, 1.0
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e64 s0, 0, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v32, v24, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v24, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v37, v31, v37
	v_div_scale_f32 v34, null, v28, v28, v14
	v_div_scale_f32 v31, s4, v17, v29, v17
	v_fma_f32 v30, -v30, v32, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v0, 0x5410
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v8, v30, v33, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v8, v22, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v34, v38, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.h, v1.l
	v_lshl_or_b32 v0, v0, 8, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v40, v38
	v_div_scale_f32 v40, s1, v14, v28, v14
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v2, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_dual_mul_f32 v25, v40, v38 :: v_dual_and_b32 v0, 0x540054, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v2, v41, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v0, v0, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v34, v25, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v45, v2, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v25, v36, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v187, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v34, v25, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v5, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v25, v30, v38, v25
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v14, v25, v28, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v24, v26, v24, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v26, v31, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v46, v24, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v39, v26, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v7, v188, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v24, v7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v26, v41, v37 :: v_dual_mul_f32 v7, v7, v14
	v_fma_f32 v31, -v39, v26, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v27, v35, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.l, v7.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v26, v31, v37, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v26, v29, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v12.h, vcc_lo
	v_mov_b16_e32 v12.h, v1.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v14, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.h, v1.l
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v14.l, v3.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v5
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v23, v19, v15
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v15.h, v1.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v5, v6, v5 :: v_dual_and_b32 v6, 1, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v5.h
	v_add3_u32 v1, v7, v6, 0x7fff
	v_and_b32_e32 v7, 1, v14
	v_mov_b16_e32 v15.l, v2.h
	v_cmp_o_f32_e64 s1, v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v1.h, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_and_b32_e32 v8, 1, v15
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v6, v2, v8, 0x7fff
	v_and_b32_e32 v8, 1, v12
	v_add3_u32 v2, v3, v7, 0x7fff
	v_cmp_o_f32_e64 s2, v3, v3
	v_cndmask_b32_e64 v3, v18, v11, s0
	v_cndmask_b16 v1.l, 0x7fff, v6.h, vcc_lo
	v_add3_u32 v7, v5, v8, 0x7fff
	v_mov_b32_e32 v8, 0x7632
	v_cndmask_b16 v6.l, 0x7fff, v2.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s1
	v_cndmask_b32_e64 v5, 0x3276, v8, s0
	v_cndmask_b32_e64 v7, v1, v13, s0
	v_cndmask_b32_e64 v1, v13, v1, s0
	v_cndmask_b32_e64 v8, v21, v9, s0
	v_cndmask_b32_e64 v9, v9, v21, s0
	v_lshl_or_b32 v2, v5, 8, v5
	v_cndmask_b32_e64 v5, v11, v18, s0
	v_cndmask_b32_e64 v11, v6, v10, s0
	v_cndmask_b32_e64 v6, v10, v6, s0
	s_mov_b32 s1, 0x76543210
	v_and_b32_e32 v2, 0x760076, v2
	v_permlanex16_b32 v5, v5, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x5040504, v0
	v_permlanex16_b32 v13, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v2, 4, v2
	v_permlanex16_b32 v14, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v5, v3, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v12, 0x7060706, v2
	v_perm_b32 v2, v13, v7, v10
	v_perm_b32 v1, v5, v3, v12
	v_perm_b32 v3, v13, v7, v12
	v_perm_b32 v5, v9, v8, v10
	v_perm_b32 v6, v9, v8, v12
	v_lshlrev_b32_e32 v9, 1, v4
	v_perm_b32 v7, v14, v11, v10
	v_perm_b32 v8, v14, v11, v12
	v_add_lshl_u32 v4, v4, s12, 1
	s_clause 0x1
	buffer_store_b128 v[0:3], v9, s[20:23], 0 offen
	buffer_store_b128 v[5:8], v4, s[20:23], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 332
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 332
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 31688
; TotalNumSgprs: 55
; NumVgprs: 256
; ScratchSize: 332
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 332
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 109
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
