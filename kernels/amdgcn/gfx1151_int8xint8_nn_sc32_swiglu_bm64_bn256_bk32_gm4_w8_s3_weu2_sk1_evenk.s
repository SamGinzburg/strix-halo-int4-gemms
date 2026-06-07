	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
	v_mov_b32_e32 v133, v0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	s_mov_b32 s49, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v2, 4, v133
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 2, v133
	v_and_b32_e32 v43, 15, v133
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
	s_lshl_b32 s13, s4, 2
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_mul_lo_u32 v1, s12, v1
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s13
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
	v_rcp_iflag_f32_e32 v0, s18
	v_readfirstlane_b32 s18, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
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
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
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
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s34, s23, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s13, s13, s18
	.loc	1 312 26                        ; generate_amdgcn.py:312:26
	s_lshl_b32 s26, s3, 5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s13, s13, s18
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_mul_lo_u32 v2, s34, v2
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s3, s13, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s14, s12, 31
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s3
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s3, s14, 31
.Ltmp15:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s22, s13, 8
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 6
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s2, s3, 27
.Ltmp17:
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_mul_i32 s3, s33, s12
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_lshl_add_u32 v45, v43, 4, v2
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s12, s14, s2
.Ltmp19:
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s15, s34, s26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s14, 31
	s_cselect_b32 s2, -1, 0
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s13, s22, s15
	v_lshl_add_u32 v46, s23, 5, v45
	v_add_nc_u32_e32 v2, s13, v45
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v0, 3, v133
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s14, 63
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v5, 0x80000000, v2, s2
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_and_b32_e32 v3, 24, v0
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v2, s23, v2
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v0, 0x778, v0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_lshlrev_b32_e32 v79, 4, v133
	v_lshlrev_b32_e32 v44, 5, v133
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add3_u32 v125, v1, v3, s3
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v3, s13, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_lshl_b32 s15, s23, 6
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s35, s26, 32
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v1, s26, v125
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s13, s13, s15
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v4, s35, v125
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v14, s13, v45
	.loc	1 322 26 is_stmt 0              ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v10, 0x80000000, v3, s2
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v3, s23, v3
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v15, s13, v46
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 328 43 is_stmt 0              ; generate_amdgcn.py:328:43
	v_add3_u32 v22, s13, s23, v46
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	buffer_load_b64 v[38:39], v1, s[4:7], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v4, s3
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v4, s23, v14
	.loc	1 328 35 is_stmt 0              ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 322 26 is_stmt 1              ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[6:9], v5, s[28:31], 0 offen
	buffer_load_b128 v[10:13], v10, s[28:31], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v14, s3
	v_cndmask_b32_e64 v26, 0x80000000, v15, s3
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x1
	buffer_load_b128 v[14:17], v2, s[28:31], 0 offen
	buffer_load_b128 v[18:21], v3, s[28:31], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v4, s3
	v_cndmask_b32_e64 v3, 0x80000000, v22, s3
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[40:41], v1, s[4:7], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[22:25], v5, s[28:31], 0 offen
	buffer_load_b128 v[26:29], v26, s[28:31], 0 offen
	buffer_load_b128 v[30:33], v2, s[28:31], 0 offen
	buffer_load_b128 v[34:37], v3, s[28:31], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_bfe_i32 v1, v133, 4, 1
	v_and_b32_e32 v2, 16, v133
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v3, 16, v43
	v_or_b32_e32 v4, 32, v43
	v_or_b32_e32 v5, 48, v43
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v1, 0x90, v1
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v42, 0, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0x5f
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_xor_b32_e32 v195, v1, v0
	v_lshrrev_b32_e32 v1, 1, v133
	v_add_nc_u32_e32 v0, 0, v195
	s_waitcnt vmcnt(9)
	ds_store_b64 v0, v[38:39] offset:32768
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(8)
	ds_store_b128 v42, v[6:9]
	s_waitcnt vmcnt(7)
	ds_store_b128 v42, v[10:13] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(6)
	ds_store_b128 v42, v[14:17] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v42, v[18:21] offset:20480
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v0, v[40:41] offset:34816
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v42, v[22:25] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v42, v[26:29] offset:12288
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(1)
	ds_store_b128 v42, v[30:33] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v42, v[34:37] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_and_or_b32 v245, 0x70, v1, v43
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_lshlrev_b32_e32 v33, 5, v133
	v_and_b32_e32 v0, 4, v133
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_or_b32_e32 v6, 0x600, v245
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v11, 0x160, v33
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_or_b32_e32 v134, 0x100, v245
	v_or_b32_e32 v174, 0x200, v245
	v_or_b32_e32 v230, 0x300, v245
	scratch_store_b32 off, v6, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x700, v245
	v_or_b32_e32 v8, 0x400, v245
	v_or_b32_e32 v186, 0x500, v245
	v_or_b32_e32 v173, 0x1000, v245
	v_or_b32_e32 v176, 0x1100, v245
	scratch_store_b32 off, v6, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x800, v245
	v_or_b32_e32 v184, 0x1200, v245
	v_or_b32_e32 v166, 0x1300, v245
	v_or_b32_e32 v247, 0x680, v245
	v_or_b32_e32 v252, 0x780, v245
	scratch_store_b32 off, v6, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x900, v245
	v_or_b32_e32 v9, 0x880, v245
	v_or_b32_e32 v10, 0x980, v245
	scratch_store_b32 off, v6, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xa00, v245
	scratch_store_b32 off, v6, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xb00, v245
	scratch_store_b32 off, v6, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xc00, v245
	scratch_store_b32 off, v6, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xd00, v245
	scratch_store_b32 off, v6, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xe00, v245
	scratch_store_b32 off, v6, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xf00, v245
	scratch_store_b32 off, v6, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1400, v245
	scratch_store_b32 off, v6, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1500, v245
	scratch_store_b32 off, v6, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1600, v245
	scratch_store_b32 off, v6, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1700, v245
	scratch_store_b32 off, v6, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1800, v245
	scratch_store_b32 off, v6, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1900, v245
	scratch_store_b32 off, v6, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1a00, v245
	scratch_store_b32 off, v6, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1b00, v245
	scratch_store_b32 off, v6, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1c00, v245
	scratch_store_b32 off, v6, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1d00, v245
	scratch_store_b32 off, v6, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1e00, v245
	scratch_store_b32 off, v6, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1f00, v245
	scratch_store_b32 off, v6, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x80, v245
	scratch_store_b32 off, v6, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x180, v245
	scratch_store_b32 off, v6, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x280, v245
	scratch_store_b32 off, v6, off offset:324 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x380, v245
	scratch_store_b32 off, v6, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x480, v245
	scratch_store_b32 off, v6, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x580, v245
	scratch_store_b32 off, v6, off offset:336 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xa80, v245
	scratch_store_b32 off, v6, off offset:340 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xb80, v245
	scratch_store_b32 off, v6, off offset:344 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xc80, v245
	scratch_store_b32 off, v6, off offset:348 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xd80, v245
	scratch_store_b32 off, v6, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xe80, v245
	scratch_store_b32 off, v6, off offset:356 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0xf80, v245
	scratch_store_b32 off, v6, off offset:360 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1080, v245
	scratch_store_b32 off, v6, off offset:364 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1180, v245
	scratch_store_b32 off, v6, off offset:368 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1280, v245
	scratch_store_b32 off, v6, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1380, v245
	scratch_store_b32 off, v6, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1480, v245
	scratch_store_b32 off, v6, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1580, v245
	scratch_store_b32 off, v6, off offset:384 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1680, v245
	scratch_store_b32 off, v6, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1780, v245
	scratch_store_b32 off, v6, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1880, v245
	scratch_store_b32 off, v6, off offset:396 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1980, v245
	scratch_store_b32 off, v6, off offset:400 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1a80, v245
	scratch_store_b32 off, v6, off offset:404 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1b80, v245
	scratch_store_b32 off, v6, off offset:408 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1c80, v245
	scratch_store_b32 off, v6, off offset:412 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1d80, v245
	scratch_store_b32 off, v6, off offset:416 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1e80, v245
	scratch_store_b32 off, v6, off offset:420 ; 4-byte Folded Spill
	v_or_b32_e32 v6, 0x1f80, v245
	scratch_store_b32 off, v6, off offset:424 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr6
                                        ; kill: killed $vgpr6
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr11
                                        ; implicit-def: $vgpr0
                                        ; implicit-def: $vgpr245
                                        ; implicit-def: $vgpr134
                                        ; implicit-def: $vgpr174
                                        ; implicit-def: $vgpr230
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr186
                                        ; implicit-def: $vgpr173
                                        ; implicit-def: $vgpr176
                                        ; implicit-def: $vgpr184
                                        ; implicit-def: $vgpr166
                                        ; implicit-def: $vgpr247
                                        ; implicit-def: $vgpr252
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr10
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
.LBB0_3:                                ; %Flow821
	s_load_b64 s[20:21], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v2
	v_or_b32_e32 v2, s33, v43
	v_or_b32_e32 v3, s33, v3
	s_ashr_i32 s44, s12, 5
	v_or_b32_e32 v4, s33, v4
	v_or_b32_e32 v5, s33, v5
	v_mul_lo_u32 v162, v2, s44
	v_mul_lo_u32 v2, v3, s44
	v_or_b32_e32 v7, s22, v133
	v_and_b32_e32 v6, 0xf0, v133
	v_mul_lo_u32 v156, v5, s44
	v_lshlrev_b32_e32 v217, 1, v133
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v7, off offset:196
	scratch_store_b32 off, v43, off offset:428
	scratch_store_b32 off, v2, off offset:200
	v_mul_lo_u32 v2, v4, s44
	v_lshlrev_b32_e32 v216, 2, v6
	v_lshlrev_b32_e32 v215, 1, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:432
	scratch_store_b32 off, v2, off offset:204
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v153, 0 :: v_dual_and_b32 v2, 0x160, v44
	v_bfe_i32 v0, v133, 2, 1
	v_and_or_b32 v245, 0x70, v1, v43
	v_dual_mov_b32 v126, 0 :: v_dual_and_b32 v1, 28, v217
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v146, 0, v215
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v0, 0x90, v0, v2
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v177, 0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v46, off offset:220
	scratch_store_b32 off, v245, off offset:208
	scratch_store_b32 off, v0, off offset:212
	scratch_store_b32 off, v45, off offset:224
	v_or_b32_e32 v0, 0x100, v245
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v113, 0
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x200, v245
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v201, 0
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v245
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v149, 0
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v245
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v147, 0
	scratch_store_b32 off, v0, off offset:780 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x500, v245
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v199, 0
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x600, v245
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:232
	scratch_store_b32 off, v216, off offset:484
	v_or_b32_e32 v0, 0x700, v245
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:492
	scratch_store_b32 off, v44, off offset:496
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v211, 0
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x800, v245
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v187, 0
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x900, v245
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v163, 0
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v245
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v19, 0
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb00, v245
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v123, 0
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v245
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v108, 0
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd00, v245
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v140, 0
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v245
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v18, 0
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf00, v245
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v142, 0
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1000, v245
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v157, 0
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1100, v245
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v77, 0
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1200, v245
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v171, 0
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1300, v245
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1400, v245
	scratch_store_b32 off, v133, off offset:476 ; 4-byte Folded Spill
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v59, 0
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1500, v245
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v141, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:236
	scratch_store_b32 off, v217, off offset:488
	v_or_b32_e32 v0, 0x1600, v245
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v185, 0
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1700, v245
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1800, v245
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1900, v245
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v47, 0
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a00, v245
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v181, 0
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b00, v245
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v175, 0
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c00, v245
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v45, 0
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d00, v245
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v43, 0
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e00, v245
	v_mov_b32_e32 v124, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v122, 0
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f00, v245
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s12, 0
	s_max_i32 s11, s44, 3
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x80, v245
	s_add_i32 s1, s35, 32
	s_mov_b32 s10, 1
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x180, v245
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_add_i32 s50, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x280, v245
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s27, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s11, s11, -3
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x380, v245
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x480, v245
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x580, v245
	s_mov_b32 s19, s12
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s49, s12
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x680, v245
	s_mov_b32 s48, s12
	v_mov_b32_e32 v165, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v130, 0
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x780, v245
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x880, v245
	scratch_store_b32 off, v0, off offset:792 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x980, v245
	scratch_store_b32 off, v0, off offset:796 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa80, v245
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb80, v245
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc80, v245
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd80, v245
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe80, v245
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf80, v245
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1080, v245
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1180, v245
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1280, v245
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1380, v245
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1480, v245
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1580, v245
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1680, v245
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1780, v245
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1880, v245
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1980, v245
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a80, v245
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b80, v245
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c80, v245
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d80, v245
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e80, v245
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f80, v245
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_and_b32_e32 v0, 32, v44
	v_mov_b32_e32 v44, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v0, 0, v216, v0
	v_add_nc_u32_e32 v0, v0, v1
	v_mov_b32_e32 v1, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:216
	scratch_store_b32 off, v215, off offset:480
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s52, s48, 5
	s_mov_b32 s51, s49
	s_mov_b32 s49, s26
	s_mov_b32 s26, s35
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s35, s1, s52
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v179, off offset:184
	scratch_store_b32 off, v199, off offset:180
	scratch_store_b32 off, v59, off offset:64
	scratch_store_b32 off, v168, off offset:176
	scratch_store_b32 off, v197, off offset:172
	scratch_store_b32 off, v42, off offset:20
	scratch_store_b32 off, v163, off offset:168
	scratch_store_b32 off, v44, off offset:28
	scratch_store_b32 off, v127, off offset:164
	scratch_store_b32 off, v43, off offset:24
	scratch_store_b32 off, v41, off
	scratch_store_b32 off, v200, off offset:160
	scratch_store_b32 off, v177, off offset:156
	scratch_store_b32 off, v180, off offset:152
	scratch_store_b32 off, v201, off offset:148
	scratch_store_b32 off, v178, off offset:144
	scratch_store_b32 off, v45, off offset:32
	scratch_store_b32 off, v46, off offset:36
	scratch_store_b32 off, v47, off offset:40
	scratch_store_b32 off, v48, off offset:44
	scratch_store_b32 off, v182, off offset:140
	scratch_store_b32 off, v52, off offset:60
	scratch_store_b32 off, v143, off offset:136
	scratch_store_b32 off, v165, off offset:132
	scratch_store_b32 off, v210, off offset:128
	scratch_store_b32 off, v136, off offset:124
	scratch_store_b32 off, v126, off offset:120
	scratch_store_b32 off, v167, off offset:116
	scratch_store_b32 off, v135, off offset:112
	scratch_store_b32 off, v188, off offset:108
	scratch_store_b32 off, v206, off offset:104
	scratch_store_b32 off, v204, off offset:100
	s_clause 0xe                            ; 60-byte Folded Spill
	scratch_store_b32 off, v170, off offset:96
	scratch_store_b32 off, v169, off offset:92
	scratch_store_b32 off, v187, off offset:88
	scratch_store_b32 off, v51, off offset:56
	scratch_store_b32 off, v49, off offset:48
	scratch_store_b32 off, v50, off offset:52
	scratch_store_b32 off, v23, off offset:84
	scratch_store_b32 off, v22, off offset:80
	scratch_store_b32 off, v21, off offset:76
	scratch_store_b32 off, v20, off offset:72
	scratch_store_b32 off, v19, off offset:68
	scratch_store_b32 off, v18, off offset:16
	scratch_store_b32 off, v17, off offset:12
	scratch_store_b32 off, v16, off offset:8
	scratch_store_b32 off, v1, off offset:4
	v_dual_mov_b32 v165, v79 :: v_dual_add_nc_u32 v0, s35, v125
	v_dual_mov_b32 v199, v175 :: v_dual_mov_b32 v178, v157
	v_dual_mov_b32 v175, v183 :: v_dual_mov_b32 v136, v128
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[0:1], v0, s[4:7], 0 offen
	v_mov_b32_e32 v183, v152
	v_dual_mov_b32 v128, v209 :: v_dual_add_nc_u32 v67, s27, v245
	v_dual_mov_b32 v157, v172 :: v_dual_mov_b32 v210, v109
	v_mov_b32_e32 v161, v110
	v_dual_mov_b32 v209, v108 :: v_dual_mov_b32 v126, v191
	v_dual_mov_b32 v65, v154 :: v_dual_mov_b32 v154, v100
	v_mov_b32_e32 v191, v155
	v_dual_mov_b32 v155, v101 :: v_dual_mov_b32 v170, v102
	v_mov_b32_e32 v143, v181
	v_mov_b32_e32 v181, v164
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v75, s19 :: v_dual_mov_b32 v68, s12
	v_dual_mov_b32 v74, s18 :: v_dual_mov_b32 v73, s17
	v_dual_mov_b32 v71, s15 :: v_dual_mov_b32 v182, v61
	v_dual_mov_b32 v69, s13 :: v_dual_mov_b32 v196, v62
	v_dual_mov_b32 v193, v144 :: v_dual_mov_b32 v180, v53
	v_dual_mov_b32 v144, v57 :: v_dual_mov_b32 v179, v123
	v_dual_mov_b32 v123, v60 :: v_dual_mov_b32 v188, v55
	v_dual_mov_b32 v197, v63 :: v_dual_mov_b32 v200, v104
	v_dual_mov_b32 v187, v54 :: v_dual_mov_b32 v206, v107
	v_dual_mov_b32 v201, v105 :: v_dual_mov_b32 v204, v106
	v_dual_mov_b32 v163, v112 :: v_dual_mov_b32 v168, v114
	v_mov_b32_e32 v167, v113
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s27, s49, 31
	v_mov_b32_e32 v135, v225
	v_dual_mov_b32 v225, v153 :: v_dual_mov_b32 v172, v162
	v_dual_mov_b32 v153, v78 :: v_dual_mov_b32 v152, v77
	v_mov_b32_e32 v162, v111
	s_lshr_b32 s27, s27, 27
	v_mov_b32_e32 v164, v160
	v_dual_mov_b32 v160, v159 :: v_dual_mov_b32 v159, v158
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_mov_b32_e32 v72, s16
	v_mov_b32_e32 v158, v192
	v_dual_mov_b32 v192, v141 :: v_dual_mov_b32 v141, v198
	v_mov_b32_e32 v70, s14
	v_dual_mov_b32 v198, v64 :: v_dual_mov_b32 v177, v115
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_add_i32 s49, s49, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s49, s49, 5
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s27, s49, s34
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[0:1], off offset:188 ; 8-byte Folded Spill
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v0, s51, v245
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v1, v0 offset:3328
	ds_load_u8 v2, v0 offset:3072
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v121, off, off offset:212
	scratch_load_b32 v169, off, off offset:200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v0 offset:3840
	ds_load_u8 v3, v0 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v0 offset:2304
	ds_load_u8 v4, v0 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v0 offset:2816
	ds_load_u8 v5, v0 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v4, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v1
	ds_load_u8 v1, v0 offset:1280
	ds_load_u8 v2, v0 offset:1024
	v_lshl_or_b32 v3, v5, 16, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v0 offset:1792
	ds_load_u8 v5, v0 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v5, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v0 offset:256
	ds_load_u8 v5, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v5, v1, 0xc0c0004
	ds_load_u8 v5, v0 offset:768
	ds_load_u8 v6, v0 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v0 offset:3456
	ds_load_u8 v6, v0 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v0 offset:3968
	ds_load_u8 v7, v0 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v0 offset:2432
	ds_load_u8 v8, v0 offset:2176
	v_lshl_or_b32 v79, v6, 16, v5
	ds_load_u8 v5, v0 offset:1408
	ds_load_u8 v6, v0 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v0 offset:2944
	ds_load_u8 v9, v0 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v78, v8, 16, v7
	ds_load_u8 v6, v0 offset:1920
	ds_load_u8 v7, v0 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v77, v6, 16, v5
	ds_load_u8 v5, v0 offset:384
	ds_load_u8 v6, v0 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v0 offset:896
	ds_load_u8 v7, v0 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v6, 16, v5
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v5, v67 offset:3328
	ds_load_u8 v6, v67 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v67 offset:3840
	ds_load_u8 v7, v67 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v67 offset:2304
	ds_load_u8 v8, v67 offset:2048
	v_lshl_or_b32 v111, v6, 16, v5
	ds_load_u8 v5, v67 offset:1280
	ds_load_u8 v6, v67 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v67 offset:2816
	ds_load_u8 v9, v67 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v110, v8, 16, v7
	ds_load_u8 v6, v67 offset:1792
	ds_load_u8 v7, v67 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v109, v6, 16, v5
	ds_load_u8 v5, v67 offset:256
	ds_load_u8 v6, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v67 offset:768
	ds_load_u8 v7, v67 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v6, 16, v5
	ds_load_u8 v5, v67 offset:3456
	ds_load_u8 v6, v67 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v67 offset:3968
	ds_load_u8 v7, v67 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v67 offset:2432
	ds_load_u8 v8, v67 offset:2176
	v_lshl_or_b32 v120, v6, 16, v5
	ds_load_u8 v5, v67 offset:1408
	ds_load_u8 v6, v67 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v67 offset:2944
	ds_load_u8 v9, v67 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v119, v8, 16, v7
	ds_load_u8 v6, v67 offset:1920
	ds_load_u8 v7, v67 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v118, v6, 16, v5
	ds_load_u8 v5, v67 offset:384
	ds_load_u8 v6, v67 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v67 offset:896
	ds_load_u8 v7, v67 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v6, 16, v5
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v5, s50, v121
	ds_load_b128 v[80:83], v5
	ds_load_b128 v[84:87], v5 offset:512
	ds_load_b128 v[100:103], v5 offset:1024
	ds_load_b128 v[220:223], v5 offset:1536
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[1:4], v[80:83], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[1:4], v[84:87], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[1:4], v[100:103], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[1:4], v[220:223], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[76:79], v[80:83], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[76:79], v[84:87], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[76:79], v[100:103], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[76:79], v[220:223], v[68:75] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[212:219], v[108:111], v[80:83], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[228:235], v[117:120], v[80:83], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[236:243], v[108:111], v[84:87], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[117:120], v[84:87], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[108:111], v[100:103], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[117:120], v[100:103], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[108:111], v[220:223], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[117:120], v[220:223], v[68:75] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v68, v0 offset:7424
	ds_load_u8 v69, v0 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v0 offset:7936
	ds_load_u8 v70, v0 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v0 offset:6400
	ds_load_u8 v71, v0 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v0 offset:6912
	ds_load_u8 v72, v0 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v72, v71, 0xc0c0004
	v_lshl_or_b32 v71, v69, 16, v68
	ds_load_u8 v68, v0 offset:5376
	ds_load_u8 v69, v0 offset:5120
	v_lshl_or_b32 v70, v72, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v0 offset:5888
	ds_load_u8 v72, v0 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v72, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v68
	ds_load_u8 v68, v0 offset:4352
	ds_load_u8 v72, v0 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v72, v68, 0xc0c0004
	ds_load_u8 v72, v0 offset:4864
	ds_load_u8 v73, v0 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v68, v72, 16, v68
	v_xor_b32_e32 v72, 16, v121
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v121, s50, v72
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s50, s35, s34
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s50, s50, s22
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[72:75], v121
	ds_load_b128 v[117:120], v121 offset:512
	ds_load_b128 v[220:223], v121 offset:1024
	ds_load_b128 v[244:247], v121 offset:1536
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	s_add_i32 s51, s50, s23
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s49, s44
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s10, s10, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s10, 2
	s_cselect_b32 s10, s10, 0
	s_add_i32 s52, s48, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[68:71], v[72:75], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[68:71], v[117:120], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[68:71], v[220:223], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[68:71], v[244:247], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v68, v0 offset:7552
	ds_load_u8 v69, v0 offset:7296
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v0 offset:8064
	ds_load_u8 v70, v0 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v0 offset:6528
	ds_load_u8 v71, v0 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v0 offset:7040
	ds_load_u8 v121, v0 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v121, v71, 0xc0c0004
	v_lshl_or_b32 v71, v69, 16, v68
	ds_load_u8 v68, v0 offset:5504
	ds_load_u8 v69, v0 offset:5248
	v_lshl_or_b32 v70, v121, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v0 offset:6016
	ds_load_u8 v121, v0 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v121, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v68
	ds_load_u8 v68, v0 offset:4480
	ds_load_u8 v121, v0 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v121, v68, 0xc0c0004
	ds_load_u8 v121, v0 offset:4992
	ds_load_u8 v0, v0 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v68, v0, 16, v68
	v_wmma_i32_16x16x16_iu8 v[49:56], v[68:71], v[72:75], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[68:71], v[117:120], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[68:71], v[220:223], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[68:71], v[244:247], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v0, v67 offset:7424
	ds_load_u8 v68, v67 offset:7168
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v68, v0, 0xc0c0004
	ds_load_u8 v68, v67 offset:7936
	ds_load_u8 v69, v67 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v67 offset:6400
	ds_load_u8 v70, v67 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v67 offset:6912
	ds_load_u8 v71, v67 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	v_lshl_or_b32 v71, v68, 16, v0
	ds_load_u8 v0, v67 offset:5376
	ds_load_u8 v68, v67 offset:5120
	v_lshl_or_b32 v70, v70, 16, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v68, v0, 0xc0c0004
	ds_load_u8 v68, v67 offset:5888
	ds_load_u8 v69, v67 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v68, 16, v0
	ds_load_u8 v0, v67 offset:4352
	ds_load_u8 v68, v67 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v68, v0, 0xc0c0004
	ds_load_u8 v68, v67 offset:4864
	ds_load_u8 v121, v67 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v121, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v68, 16, v0
	ds_load_u8 v0, v67 offset:7552
	ds_load_u8 v121, v67 offset:7296
	v_wmma_i32_16x16x16_iu8 v[236:243], v[68:71], v[117:120], v[236:243] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[68:71], v[244:247], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[212:219], v[68:71], v[72:75], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[68:71], v[220:223], v[84:91] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v133, v242
	v_cvt_f32_i32_e32 v208, v237
	v_cvt_f32_i32_e32 v254, v240
	v_cvt_f32_i32_e32 v71, v84
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v84, v44
	v_cvt_f32_i32_e32 v44, v35
	v_cvt_f32_i32_e32 v35, v40
	v_cvt_f32_i32_e32 v40, v3
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v255, v91
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v91, v28
	v_cvt_f32_i32_e32 v28, v17
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v121, v0, 0xc0c0004
	ds_load_u8 v121, v67 offset:8064
	ds_load_u8 v202, v67 offset:7808
	v_cvt_f32_i32_e32 v237, v89
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v89, v26
	v_cvt_f32_i32_e32 v26, v5
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v253, v241
	v_cvt_f32_i32_e32 v70, v85
	v_cvt_f32_i32_e32 v69, v86
	v_cvt_f32_i32_e32 v68, v87
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v85, v45
	v_cvt_f32_i32_e32 v86, v46
	v_cvt_f32_i32_e32 v87, v47
	v_cvt_f32_i32_e32 v47, v14
	v_cvt_f32_i32_e32 v46, v15
	v_cvt_f32_i32_e32 v45, v16
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v207, v212
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v202, v121, 0xc0c0004
	ds_load_u8 v202, v67 offset:6528
	ds_load_u8 v203, v67 offset:6272
	v_lshl_or_b32 v251, v121, 16, v0
	ds_load_u8 v0, v67 offset:5504
	ds_load_u8 v121, v67 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v202, v203, v202, 0xc0c0004
	ds_load_u8 v203, v67 offset:7040
	ds_load_u8 v205, v67 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v121, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v203, v205, v203, 0xc0c0004
	v_cvt_f32_i32_e32 v205, v236
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v250, v203, 16, v202
	ds_load_u8 v121, v67 offset:6016
	ds_load_u8 v202, v67 offset:5760
	v_cvt_f32_i32_e32 v203, v107
	v_mov_b32_e32 v107, v206
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v202, v121, 0xc0c0004
	v_cvt_f32_i32_e32 v202, v105
	v_mov_b32_e32 v105, v201
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v249, v121, 16, v0
	ds_load_u8 v0, v67 offset:4480
	ds_load_u8 v121, v67 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v121, v0, 0xc0c0004
	ds_load_u8 v121, v67 offset:4992
	ds_load_u8 v67, v67 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v67, v121, 0xc0c0004
	v_cvt_f32_i32_e32 v121, v239
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v248, v67, 16, v0
	v_cvt_f32_i32_e32 v0, v238
	v_cvt_f32_i32_e32 v67, v106
	v_mov_b32_e32 v106, v204
	v_wmma_i32_16x16x16_iu8 v[108:115], v[248:251], v[244:247], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[228:235], v[248:251], v[72:75], v[228:235] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[248:251], v[117:120], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[248:251], v[220:223], v[92:99] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v250, v243
	v_cvt_f32_i32_e32 v75, v101
	v_mov_b32_e32 v101, v155
	v_mov_b32_e32 v155, v191
	v_dual_mov_b32 v191, v126 :: v_dual_mov_b32 v126, v141
	v_dual_mov_b32 v141, v192 :: v_dual_mov_b32 v192, v158
	v_dual_mov_b32 v158, v159 :: v_dual_mov_b32 v159, v160
	v_mov_b32_e32 v160, v164
	v_dual_mov_b32 v164, v181 :: v_dual_mov_b32 v181, v143
	scratch_load_b32 v143, off, off offset:204 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v72, v103
	v_cvt_f32_i32_e32 v243, v110
	v_mov_b32_e32 v110, v161
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v161, off, off offset:216
	scratch_load_b32 v103, off, off offset:196
	v_cvt_f32_i32_e32 v248, v217
	v_cvt_f32_i32_e32 v217, v82
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v82, v42
	v_cvt_f32_i32_e32 v42, v33
	v_cvt_f32_i32_e32 v33, v38
	v_cvt_f32_i32_e32 v38, v1
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v244, v109
	v_mov_b32_e32 v109, v210
	v_cvt_f32_i32_e32 v242, v111
	v_dual_mov_b32 v111, v162 :: v_dual_mov_b32 v162, v172
	v_cvt_f32_i32_e32 v247, v218
	v_cvt_f32_i32_e32 v218, v81
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v81, v61
	v_cvt_f32_i32_e32 v61, v62
	v_cvt_f32_i32_e32 v62, v64
	v_cvt_f32_i32_e32 v64, v41
	v_cvt_f32_i32_e32 v41, v34
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v37, v2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v2, v169, s49, 1
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v246, v219
	v_cvt_f32_i32_e32 v219, v83
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v83, v43
	v_cvt_f32_i32_e32 v43, v36
	v_cvt_f32_i32_e32 v36, v39
	v_cvt_f32_i32_e32 v39, v4
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v4, v156, s49, 1
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v118, v215
	v_cvt_f32_i32_e32 v215, v235
	v_cvt_f32_i32_e32 v73, v102
	v_mov_b32_e32 v102, v170
	v_cvt_f32_i32_e32 v235, v113
	v_dual_mov_b32 v113, v167 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_cvt_f32_i32_e32 v236, v115
	v_dual_mov_b32 v115, v177 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_cvt_f32_i32_e32 v74, v90
	v_cvt_f32_i32_e32 v239, v94
	v_cvt_f32_i32_e32 v238, v95
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v90, v27
	v_cvt_f32_i32_e32 v94, v31
	v_cvt_f32_i32_e32 v95, v32
	v_cvt_f32_i32_e32 v27, v18
	v_cvt_f32_i32_e32 v32, v19
	v_cvt_f32_i32_e32 v31, v20
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v220, v96
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v96, v9
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v120, v213
	v_cvt_f32_i32_e32 v213, v234
	v_cvt_f32_i32_e32 v234, v76
	v_cvt_f32_i32_e32 v76, v100
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v100, v13
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v249, v216
	v_cvt_f32_i32_e32 v227, v229
	v_cvt_f32_i32_e32 v226, v230
	v_cvt_f32_i32_e32 v222, v231
	v_cvt_f32_i32_e32 v231, v77
	v_cvt_f32_i32_e32 v230, v78
	v_cvt_f32_i32_e32 v229, v79
	v_cvt_f32_i32_e32 v216, v80
	v_cvt_f32_i32_e32 v251, v88
	v_cvt_f32_i32_e32 v241, v92
	v_cvt_f32_i32_e32 v240, v93
	v_cvt_f32_i32_e32 v223, v97
	v_cvt_f32_i32_e32 v221, v98
	v_cvt_f32_i32_e32 v224, v99
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v77, v57
	v_cvt_f32_i32_e32 v78, v58
	v_cvt_f32_i32_e32 v79, v59
	v_cvt_f32_i32_e32 v80, v60
	v_cvt_f32_i32_e32 v58, v49
	v_cvt_f32_i32_e32 v57, v50
	v_cvt_f32_i32_e32 v60, v51
	v_cvt_f32_i32_e32 v59, v52
	v_cvt_f32_i32_e32 v52, v53
	v_cvt_f32_i32_e32 v49, v54
	v_cvt_f32_i32_e32 v51, v55
	v_cvt_f32_i32_e32 v50, v56
	v_cvt_f32_i32_e32 v88, v25
	v_cvt_f32_i32_e32 v92, v29
	v_cvt_f32_i32_e32 v93, v30
	v_cvt_f32_i32_e32 v25, v21
	v_cvt_f32_i32_e32 v21, v22
	v_cvt_f32_i32_e32 v22, v24
	v_cvt_f32_i32_e32 v97, v10
	v_cvt_f32_i32_e32 v98, v11
	v_cvt_f32_i32_e32 v99, v12
	v_cvt_f32_i32_e32 v24, v6
	v_cvt_f32_i32_e32 v30, v7
	v_cvt_f32_i32_e32 v29, v8
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v245, v108
	v_dual_mov_b32 v108, v209 :: v_dual_mov_b32 v209, v128
	v_dual_mov_b32 v172, v157 :: v_dual_mov_b32 v157, v178
	v_cvt_f32_i32_e32 v119, v214
	v_cvt_f32_i32_e32 v214, v233
	v_cvt_f32_i32_e32 v233, v114
	v_mov_b32_e32 v114, v168
	v_mov_b32_e32 v128, v136
	v_cvt_f32_i32_e32 v117, v104
	v_mov_b32_e32 v104, v200
	v_cvt_f32_i32_e32 v212, v232
	v_cvt_f32_i32_e32 v232, v112
	v_mov_b32_e32 v112, v163
	v_cvt_f32_i32_e32 v228, v228
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v3, v143, s49, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, v103, s27, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v161, v1 offset:36864
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v1, v162, s49, 1
	s_mov_b32 s49, s46
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x3
	buffer_load_u16 v1, v1, s[36:39], 0 offen
	buffer_load_u16 v18, v2, s[36:39], 0 offen
	buffer_load_u16 v19, v3, s[36:39], 0 offen
	buffer_load_u16 v20, v4, s[36:39], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:224
	scratch_load_b32 v2, off, off offset:220
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v18, 16, v18
	v_lshlrev_b32_e32 v17, 16, v1
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v9, s51, v3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v64, v18, v64 :: v_dual_add_nc_u32 v5, s50, v2
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v1, s50, v3
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v13, s51, v2
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[28:31], 0 offen
	buffer_load_b128 v[5:8], v5, s[28:31], 0 offen
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	buffer_load_b128 v[13:16], v13, s[28:31], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[53:56], v146 offset:36864
	v_mul_f32_e32 v77, v17, v77
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v19, 16, v19
	s_mov_b32 s50, s47
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v186, v64, v53
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v18, v82
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v130, v77, v53
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v77, v17, v78
	v_dual_mov_b32 v78, v153 :: v_dual_mul_f32 v45, v20, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v176, v64, v54
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v18, v83
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v174, v64, v55
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v64, v18, v84 :: v_dual_mov_b32 v153, v225
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v131, v77, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v77, v17, v79 :: v_dual_fmac_f32 v184, v64, v56
	v_mul_f32_e32 v64, v19, v88
	v_dual_mov_b32 v225, v135 :: v_dual_fmac_f32 v166, v64, v53
	v_dual_mul_f32 v64, v19, v89 :: v_dual_mov_b32 v79, v165
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v173, v77, v55
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v77, v17, v80 :: v_dual_fmac_f32 v132, v64, v54
	v_mul_f32_e32 v64, v19, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v225, v64, v55
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v19, v91
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v252, v77, v56 :: v_dual_mov_b32 v77, v152
	v_mov_b32_e32 v152, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v183, v175 :: v_dual_fmac_f32 v134, v64, v56
	v_dual_mov_b32 v175, v199 :: v_dual_mul_f32 v64, v20, v96
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v61, v17, v61 :: v_dual_mul_f32 v48, v18, v48
	v_mul_f32_e32 v42, v18, v42
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v0, v18
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v190, v64, v53
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v53, v20, v97
	v_mul_f32_e32 v64, v17, v81
	v_mul_f32_e32 v28, v19, v28
	v_mul_f32_e32 v27, v19, v27
	v_mul_f32_e32 v25, v19, v25
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v191, v53, v54
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v53, v20, v98
	v_mul_f32_e32 v21, v19, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v183, v53, v55
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v53, v20, v99
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v175, v53, v56
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[53:56], v146 offset:36880
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v47, v20, v47 :: v_dual_fmac_f32 v160, v45, v56
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v158, v61, v54
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v61, v17, v63
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v209, v48, v56
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v48, v19, v92
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v181, v47, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v157, v61, v55
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v61, v17, v62 :: v_dual_fmac_f32 v126, v48, v53
	v_mul_f32_e32 v48, v19, v93
	v_dual_mov_b32 v62, v196 :: v_dual_mul_f32 v41, v18, v41
	v_mov_b32_e32 v63, v197
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v141, v48, v54
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v48, v19, v94
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v185, v48, v55
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v48, v19, v95
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v192, v61, v56 :: v_dual_mul_f32 v61, v18, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v155, v48, v56
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v48, v20, v100
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v128, v61, v53 :: v_dual_mul_f32 v61, v18, v86
	v_fmac_f32_e32 v142, v64, v53
	v_mov_b32_e32 v64, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v164, v48, v53 :: v_dual_mul_f32 v53, v17, v58
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v46, v20, v46
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v172, v61, v54 :: v_dual_mul_f32 v61, v18, v87
	v_mov_b32_e32 v100, v154
	v_dual_mov_b32 v54, v187 :: v_dual_fmac_f32 v159, v46, v55
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[45:48], v146 offset:37376
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v171, v61, v55
	v_mov_b32_e32 v61, v182
	v_dual_mov_b32 v55, v188 :: v_dual_mov_b32 v198, v126
	v_mov_b32_e32 v154, v65
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v61, v41, v46
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v41, v18, v44
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v44, off, off offset:28
	scratch_load_b32 v168, off, off offset:176
	scratch_load_b32 v197, off, off offset:172
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v101, v53, v45
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v53, v17, v57
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v189, v27, v46
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v27, v19, v32 :: v_dual_fmac_f32 v194, v41, v47
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v102, v53, v46
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v53, v17, v60 :: v_dual_mov_b32 v60, v123
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v55, v28, v45
	v_mov_b32_e32 v123, v179
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v179, off, off offset:184
	scratch_load_b32 v199, off, off offset:180
	v_fmac_f32_e32 v78, v53, v47
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v53, v17, v59
	v_mov_b32_e32 v57, v144
	scratch_load_b32 v59, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v60, v42, v45
	scratch_load_b32 v42, off, off offset:20 ; 4-byte Folded Reload
	v_dual_fmac_f32 v100, v53, v48 :: v_dual_mov_b32 v53, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v144, v193 :: v_dual_fmac_f32 v53, v27, v47
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v27, v19, v31
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v54, v27, v48 :: v_dual_mul_f32 v27, v20, v38
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v44, v27, v45
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:32
	scratch_load_b32 v200, off, off offset:160
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v27, v20, v37
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v45, v27, v46
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v27, v20, v40
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v46, off, off offset:36
	scratch_load_b32 v177, off, off offset:156
	scratch_load_b32 v201, off, off offset:148
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v42, v27, v47
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v27, v20, v39
	ds_load_b128 v[37:40], v146 offset:37392
	v_mul_f32_e32 v41, v18, v43
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v43, off, off offset:24
	scratch_load_b32 v163, off, off offset:168
	scratch_load_b32 v47, off, off offset:40
	scratch_load_b32 v180, off, off offset:152
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v59, v41, v48
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off
	scratch_load_b32 v127, off, off offset:164
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v43, v27, v48
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v27, v17, v52
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v52, off, off offset:60
	scratch_load_b32 v182, off, off offset:140
	scratch_load_b32 v48, off, off offset:44
	scratch_load_b32 v178, off, off offset:144
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v64, v27, v37
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v27, v17, v49
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v49, off, off offset:48
	scratch_load_b32 v167, off, off offset:116
	scratch_load_b32 v188, off, off offset:108
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v77, v27, v38
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v27, v17, v51
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v51, off, off offset:56
	scratch_load_b32 v136, off, off offset:124
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v62, v27, v39 :: v_dual_mul_f32 v27, v17, v50
	s_clause 0xa                            ; 44-byte Folded Reload
	scratch_load_b32 v50, off, off offset:52
	scratch_load_b32 v143, off, off offset:136
	scratch_load_b32 v165, off, off offset:132
	scratch_load_b32 v210, off, off offset:128
	scratch_load_b32 v126, off, off offset:120
	scratch_load_b32 v135, off, off offset:112
	scratch_load_b32 v206, off, off offset:104
	scratch_load_b32 v204, off, off offset:100
	scratch_load_b32 v170, off, off offset:96
	scratch_load_b32 v169, off, off offset:92
	scratch_load_b32 v187, off, off offset:88
	v_fmac_f32_e32 v63, v27, v40
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v27, v18, v34
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(19)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v52, v27, v37
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v27, v18, v33
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(17)
	v_fmac_f32_e32 v48, v25, v37
	s_waitcnt vmcnt(15)
	v_fmac_f32_e32 v49, v21, v38
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v19, v23
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v57, v27, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v27, v18, v36 :: v_dual_fmac_f32 v46, v21, v39
	v_mul_f32_e32 v21, v19, v22
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(10)
	v_fmac_f32_e32 v50, v27, v39
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v27, v18, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v47, v21, v40
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v20, v26
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v51, v27, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v21, v37
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v20, v24
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v124, v21, v38
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v20, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v116, v21, v39 :: v_dual_mul_f32 v21, v20, v29
	v_dual_fmac_f32 v122, v21, v40 :: v_dual_add_nc_u32 v21, s23, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v21, v21, s27, 1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_lshl_b32 s27, s10, 11
	s_add_i32 s51, s27, 0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_lshl_b32 s27, s10, 13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_add_i32 s46, s27, 0
	s_mov_b32 s27, s45
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_add_i32 s47, s51, 0x8000
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_add_i32 s45, s46, 0x4000
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v21, v21, s[40:43], 0 offen
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s48, s11
	s_mov_b32 s48, s52
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_store_b32 v161, v21 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	scratch_load_b64 v[38:39], off, off offset:188 ; 8-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[21:24], v146 offset:36864
	ds_load_b128 v[25:28], v146 offset:36880
	ds_load_b128 v[29:32], v146 offset:37376
	ds_load_b128 v[33:36], v146 offset:37392
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(3)
	v_fmac_f32_e32 v170, v0, v23
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v121, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v204, v0, v24
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v71, v19
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v211, v0, v21 :: v_dual_mul_f32 v0, v70, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v169, v0, v22 :: v_dual_mul_f32 v0, v69, v19
	v_fmac_f32_e32 v154, v0, v23
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v68, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v66, v0, v24
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v76, v20
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v179, v0, v21 :: v_dual_mul_f32 v0, v75, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v123, v0, v22 :: v_dual_mul_f32 v0, v73, v20
	v_fmac_f32_e32 v143, v0, v23
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v72, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v167, v0, v24 :: v_dual_mul_f32 v0, v249, v17
	s_waitcnt lgkmcnt(2)
	v_fmac_f32_e32 v104, v0, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v248, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v105, v0, v26 :: v_dual_mul_f32 v0, v247, v17
	v_dual_fmac_f32 v151, v0, v27 :: v_dual_mul_f32 v0, v246, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v177, v0, v28 :: v_dual_mul_f32 v0, v254, v18
	v_dual_fmac_f32 v149, v0, v25 :: v_dual_mul_f32 v0, v253, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v150, v0, v26
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v133, v18
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v145, v0, v27 :: v_dual_mul_f32 v0, v250, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v147, v0, v28 :: v_dual_mul_f32 v0, v251, v19
	v_fmac_f32_e32 v182, v0, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v237, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v144, v0, v26
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v74, v19
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v187, v0, v27
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v255, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v136, v0, v28 :: v_dual_add_nc_u32 v37, s51, v195
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v117, v20
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v108, v0, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v202, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v109, v0, v26 :: v_dual_mul_f32 v0, v67, v20
	v_fmac_f32_e32 v106, v0, v27
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v203, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v107, v0, v28
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v228, v17
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v168, v0, v29
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v227, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v115, v0, v30 :: v_dual_mul_f32 v0, v226, v17
	v_fmac_f32_e32 v148, v0, v31
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v222, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v152, v0, v32
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v234, v18
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v137, v0, v29 :: v_dual_mul_f32 v0, v231, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v178, v0, v30
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v230, v18
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v188, v0, v31
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v229, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v199, v0, v32 :: v_dual_mul_f32 v0, v241, v19
	v_fmac_f32_e32 v129, v0, v29
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v240, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v200, v0, v30
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v239, v19
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v163, v0, v31
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v238, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v180, v0, v32
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v245, v20
	scratch_load_b32 v245, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v139, v0, v29
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v244, v20
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v140, v0, v30
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v243, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v127, v0, v31 :: v_dual_mul_f32 v0, v242, v20
	v_fmac_f32_e32 v138, v0, v32
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v214, v17
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v114, v0, v34
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(1)
	ds_store_b64 v37, v[38:39] offset:32768
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v37, s46, v79
	ds_store_b128 v37, v[1:4]
	ds_store_b128 v37, v[5:8] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	ds_store_b128 v37, v[9:12] offset:16384
	ds_store_b128 v37, v[13:16] offset:20480
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v1, v207, v17 :: v_dual_mul_f32 v4, v218, v18
	v_mul_f32_e32 v6, v219, v18
	v_mul_f32_e32 v2, v215, v17
	v_mul_f32_e32 v3, v213, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v153, v1, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v120, v17
	v_mul_f32_e32 v5, v216, v18
	v_dual_mul_f32 v7, v217, v18 :: v_dual_mul_f32 v8, v223, v19
	v_mul_f32_e32 v9, v220, v19
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v165, v1, v22
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v1, v119, v17 :: v_dual_mul_f32 v10, v224, v19
	v_dual_mul_f32 v11, v221, v19 :: v_dual_mul_f32 v12, v235, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v13, v232, v20 :: v_dual_fmac_f32 v126, v1, v23
	v_mul_f32_e32 v1, v118, v17
	v_mul_f32_e32 v15, v233, v20
	v_dual_mul_f32 v14, v236, v20 :: v_dual_fmac_f32 v197, v3, v35
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v201, v2, v36
	v_fmac_f32_e32 v210, v1, v24
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v205, v18
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v112, v5, v33
	v_dual_fmac_f32 v110, v7, v35 :: v_dual_fmac_f32 v111, v6, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v206, v1, v21 :: v_dual_mul_f32 v1, v208, v18
	v_fmac_f32_e32 v135, v1, v22
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v212, v17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v113, v1, v33
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v23, off, off offset:84
	scratch_load_b32 v22, off, off offset:80
	scratch_load_b32 v21, off, off offset:76
	scratch_load_b32 v20, off, off offset:72
	scratch_load_b32 v19, off, off offset:68
	scratch_load_b32 v18, off, off offset:16
	scratch_load_b32 v17, off, off offset:12
	scratch_load_b32 v16, off, off offset:8
	scratch_load_b32 v1, off, off offset:4
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v23, v4, v34
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v22, v8, v34 :: v_dual_fmac_f32 v21, v9, v33
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v20, v10, v36 :: v_dual_fmac_f32 v19, v11, v35
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v18, v12, v34 :: v_dual_fmac_f32 v17, v13, v33
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v1, v15, v35 :: v_dual_fmac_f32 v16, v14, v36
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v133, off, off offset:476
	scratch_load_b32 v33, off, off offset:496
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v142, off offset:788
	scratch_store_b32 off, v186, off offset:1160
	v_dual_mov_b32 v142, v134 :: v_dual_mov_b32 v237, v132
	v_dual_mov_b32 v238, v174 :: v_dual_mov_b32 v239, v184
	v_dual_mov_b32 v240, v176 :: v_dual_mov_b32 v241, v173
	v_mov_b32_e32 v146, v252
	v_dual_mov_b32 v196, v131 :: v_dual_mov_b32 v235, v166
	s_clause 0xd                            ; 56-byte Folded Reload
	scratch_load_b32 v134, off, off offset:436
	scratch_load_b32 v173, off, off offset:440
	scratch_load_b32 v174, off, off offset:444
	scratch_load_b32 v176, off, off offset:448
	scratch_load_b32 v230, off, off offset:452
	scratch_load_b32 v184, off, off offset:456
	scratch_load_b32 v166, off, off offset:460
	scratch_load_b32 v186, off, off offset:464
	scratch_load_b32 v247, off, off offset:468
	scratch_load_b32 v252, off, off offset:472
	scratch_load_b32 v215, off, off offset:480
	scratch_load_b32 v216, off, off offset:484
	scratch_load_b32 v217, off, off offset:488
	scratch_load_b32 v11, off, off offset:492
	s_waitcnt vmcnt(15)
	v_and_b32_e32 v0, 4, v133
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v41, 0
	scratch_store_b32 off, v1, off offset:1160 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v16, 0
	scratch_store_b32 off, v1, off offset:788 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v126, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v177, 0
	v_mov_b32_e32 v151, 0
	v_mov_b32_e32 v105, 0
	v_mov_b32_e32 v165, 0
	v_mov_b32_e32 v153, 0
	s_add_i32 s50, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s27, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v10, off offset:796
	scratch_store_b32 off, v9, off offset:792
	scratch_store_b32 off, v8, off offset:780
.LBB0_8:                                ; %Flow822
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v66, off offset:784
	scratch_store_b32 off, v23, off offset:84
	scratch_store_b32 off, v22, off offset:80
	scratch_store_b32 off, v21, off offset:76
	scratch_store_b32 off, v20, off offset:72
	scratch_store_b32 off, v19, off offset:68
	scratch_store_b32 off, v64, off offset:436
	scratch_store_b32 off, v63, off offset:224
	scratch_store_b32 off, v62, off offset:220
	scratch_store_b32 off, v61, off offset:216
	scratch_store_b32 off, v60, off offset:212
	scratch_store_b32 off, v59, off offset:64
	scratch_store_b32 off, v194, off offset:208
	scratch_store_b32 off, v57, off offset:188
	scratch_store_b32 off, v52, off offset:60
	scratch_store_b32 off, v51, off offset:56
	scratch_store_b32 off, v50, off offset:52
	scratch_store_b32 off, v189, off offset:184
	scratch_store_b32 off, v55, off offset:180
	scratch_store_b32 off, v54, off offset:176
	scratch_store_b32 off, v53, off offset:172
	scratch_store_b32 off, v49, off offset:48
	scratch_store_b32 off, v48, off offset:44
	scratch_store_b32 off, v47, off offset:40
	scratch_store_b32 off, v46, off offset:36
	scratch_store_b32 off, v45, off offset:32
	scratch_store_b32 off, v44, off offset:28
	scratch_store_b32 off, v43, off offset:24
	scratch_store_b32 off, v42, off offset:20
	scratch_store_b32 off, v18, off offset:16
	scratch_store_b32 off, v17, off offset:12
	scratch_store_b32 off, v16, off offset:8
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v1, off offset:4
	scratch_store_b32 off, v124, off offset:168
	scratch_store_b32 off, v41, off
	scratch_store_b32 off, v122, off offset:164
	scratch_store_b32 off, v116, off offset:160
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v231, off, off offset:780
	scratch_load_b32 v254, off, off offset:792
	scratch_load_b32 v236, off, off offset:796
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v47, 0
	v_cndmask_b32_e64 v0, 0x90, 0, vcc_lo
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v81, 0
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v34, v0, v11
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v0, s50, v34
	v_xor_b32_e32 v35, 16, v34
	ds_load_b128 v[29:32], v0
	ds_load_b128 v[25:28], v0 offset:512
	ds_load_b128 v[21:24], v0 offset:1024
	ds_load_b128 v[17:20], v0 offset:1536
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v0, s50, v35
	ds_load_b128 v[13:16], v0
	ds_load_b128 v[9:12], v0 offset:512
	ds_load_b128 v[5:8], v0 offset:1024
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_b128 v[1:4], v0 offset:1536
	v_cndmask_b32_e64 v0, 0, 1, s2
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v93, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s1, 1, v0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v36, 0
	s_mov_b32 s12, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v0, off, off offset:352
	scratch_load_b32 v37, off, off offset:360
	scratch_load_b32 v38, off, off offset:356
	scratch_load_b32 v36, off, off offset:348
	scratch_load_b32 v41, off, off offset:344
	scratch_load_b32 v42, off, off offset:340
	scratch_load_b32 v43, off, off offset:336
	scratch_load_b32 v44, off, off offset:332
	scratch_load_b32 v47, off, off offset:320
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v39, s49, v236
	v_add_nc_u32_e32 v40, s49, v254
	v_add_nc_u32_e32 v45, s49, v252
	v_add_nc_u32_e32 v46, s49, v247
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v0, s49, v0
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v37, s49, v37
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v38, s49, v38
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v36, s49, v36
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v41, s49, v41
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v0, v0
	ds_load_u8 v36, v36
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v42, s49, v42
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v37, v37
	ds_load_u8 v39, v39
	ds_load_u8 v40, v40
	ds_load_u8 v38, v38
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v43, s49, v43
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	v_perm_b32 v0, v36, v0, 0xc0c0004
	v_perm_b32 v38, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v42, v41, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:416
	scratch_load_b32 v42, off, off offset:424
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v55, v37, 16, v0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:328
	scratch_load_b32 v37, off, off offset:324
	scratch_load_b32 v36, off, off offset:316
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v54, v39, 16, v38
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v39, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v43, v43
	ds_load_u8 v44, v44
	ds_load_u8 v45, v45
	ds_load_u8 v46, v46
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v47, s49, v47
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v41, 16, v38
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:420
	scratch_load_b32 v41, off, off offset:400
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v40, s49, v40
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v0, s49, v0
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v37, s49, v37
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v36, s49, v36
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v47, v47
	ds_load_u8 v36, v36
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v39, s49, v39
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	ds_load_u8 v40, v40
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v36, v47, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:408
	scratch_load_b32 v43, off, off offset:396
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v39, v40, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v40, off, off offset:404 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v42, s49, v42
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v52, v0, 16, v36
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:388
	scratch_load_b32 v36, off, off offset:368
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v38, s49, v38
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v41, s49, v41
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v37, s49, v37
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v43, s49, v43
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v42, v42
	ds_load_u8 v38, v38
	ds_load_u8 v41, v41
	ds_load_u8 v43, v43
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v40, s49, v40
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v37, v37
	ds_load_u8 v40, v40
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s49, v0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v38, v38, v42, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v42, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v43, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v59, v38, 16, v39
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v38, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v40, v37, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v40, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v36, s49, v36
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v58, v37, 16, v41
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v43, s49, v43
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s49, v38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s49, v40
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v39, v40
	ds_load_u8 v0, v0
	ds_load_u8 v36, v36
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v0, v39, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v39, off, off offset:376 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v42, s49, v42
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v38, v36, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v38, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v42, v42
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v0, 16, v37
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v0, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v39, s49, v39
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s49, v38
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
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
	v_cvt_f32_i32_e32 v81, v44
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v82, v45
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:296
	scratch_load_b32 v44, off, off offset:280
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s49, v0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v80, v47
	v_cvt_f32_i32_e32 v79, v46
	v_cvt_f32_i32_e32 v122, v48
	v_cvt_f32_i32_e32 v125, v49
	ds_load_u8 v0, v0
	v_cvt_f32_i32_e32 v118, v50
	v_cvt_f32_i32_e32 v120, v51
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:264
	scratch_load_b32 v46, off, off offset:248
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v45, v45
	ds_load_u8 v44, v44
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v47, s49, v47
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v47, v47
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v44, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v45, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v63, v44, 16, v0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v0, s49, v186
	v_add_nc_u32_e32 v44, s49, v231
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v44, off, off offset:240 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v46, s49, v46
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v46, v46
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s49, v45
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v46, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s49, v46
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v47, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v62, v46, 16, v45
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v45, off, off offset:232 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v44, s49, v44
	scratch_load_b32 v46, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v44, v44
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v47, s49, v47
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s49, v45
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v47, v47
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s49, v46
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v45, v45
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v45, s49, v174
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v61, v44, 16, v0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v0, s49, v134
	v_add_nc_u32_e32 v44, s49, v245
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v45, v45
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v44, s49, v230
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v45, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v60, v44, 16, v0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:304
	scratch_load_b32 v44, off, off offset:292
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s49, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v45, v45
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v44, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v45, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v67, v44, 16, v0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v0, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s49, v45
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v46, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s49, v46
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v46, 16, v45
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:244
	scratch_load_b32 v44, off, off offset:228
	v_add_nc_u32_e32 v0, s49, v0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v0, v0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v45, s49, v45
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v45, v45
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v44, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, s49, v44
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v45, s49, v184
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v65, v44, 16, v0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v0, s49, v176
	v_add_nc_u32_e32 v44, s49, v173
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v45, v45
	ds_load_u8 v0, v0
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v44, s49, v166
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v44, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v64, v44, 16, v0
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[25:28], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[9:12], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v92, v44
	v_cvt_f32_i32_e32 v94, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v91, v46
	v_cvt_f32_i32_e32 v93, v47
	v_cvt_f32_i32_e32 v194, v48
	v_cvt_f32_i32_e32 v246, v49
	v_cvt_f32_i32_e32 v243, v50
	v_cvt_f32_i32_e32 v248, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[25:28], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[56:59], v[9:12], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v124, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v131, v45
	v_cvt_f32_i32_e32 v119, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v121, v47
	v_cvt_f32_i32_e32 v116, v48
	v_cvt_f32_i32_e32 v117, v49
	v_cvt_f32_i32_e32 v76, v50
	v_cvt_f32_i32_e32 v103, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[21:24], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[5:8], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v96, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v97, v45
	v_cvt_f32_i32_e32 v95, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v98, v47
	v_cvt_f32_i32_e32 v83, v48
	v_cvt_f32_i32_e32 v85, v49
	v_cvt_f32_i32_e32 v84, v50
	v_cvt_f32_i32_e32 v86, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[52:55], v[21:24], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[56:59], v[5:8], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v74, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v75, v45
	v_cvt_f32_i32_e32 v72, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v73, v47
	v_cvt_f32_i32_e32 v70, v48
	v_cvt_f32_i32_e32 v71, v49
	v_cvt_f32_i32_e32 v68, v50
	v_cvt_f32_i32_e32 v69, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[17:20], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[1:4], v[44:51] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v99, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v132, v45
	v_cvt_f32_i32_e32 v89, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v90, v47
	v_cvt_f32_i32_e32 v87, v48
	v_cvt_f32_i32_e32 v88, v49
	v_cvt_f32_i32_e32 v189, v50
	v_cvt_f32_i32_e32 v193, v51
	v_wmma_i32_16x16x16_iu8 v[44:51], v[60:63], v[29:32], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[52:55], v[17:20], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[44:51], v[64:67], v[13:16], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[56:59], v[1:4], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v53, v36
	v_cvt_f32_i32_e32 v54, v37
	v_cvt_f32_i32_e32 v52, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v37, v40
	v_cvt_f32_i32_e32 v38, v41
	v_cvt_f32_i32_e32 v0, v42
	v_cvt_f32_i32_e32 v36, v43
	v_cvt_f32_i32_e32 v40, v48
	v_cvt_f32_i32_e32 v41, v49
	v_cvt_f32_i32_e32 v42, v50
	v_cvt_f32_i32_e32 v43, v51
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v132, off offset:900
	scratch_store_b32 off, v99, off offset:896
	scratch_store_b32 off, v47, off offset:892
	scratch_store_b32 off, v46, off offset:888
	scratch_store_b32 off, v45, off offset:884
	scratch_store_b32 off, v98, off offset:880
	scratch_store_b32 off, v44, off offset:876
	scratch_store_b32 off, v97, off offset:872
	scratch_store_b32 off, v96, off offset:868
	scratch_store_b32 off, v95, off offset:864
	scratch_store_b32 off, v94, off offset:860
	scratch_store_b32 off, v93, off offset:856
	scratch_store_b32 off, v92, off offset:852
	scratch_store_b32 off, v91, off offset:848
	scratch_store_b32 off, v90, off offset:844
	scratch_store_b32 off, v89, off offset:840
	scratch_store_b32 off, v88, off offset:836
	scratch_store_b32 off, v87, off offset:832
	scratch_store_b32 off, v43, off offset:828
	scratch_store_b32 off, v42, off offset:824
	scratch_store_b32 off, v41, off offset:820
	scratch_store_b32 off, v40, off offset:816
	scratch_store_b32 off, v86, off offset:812
	scratch_store_b32 off, v85, off offset:808
	scratch_store_b32 off, v84, off offset:804
	scratch_store_b32 off, v83, off offset:800
	scratch_store_b32 off, v82, off offset:584
	scratch_store_b32 off, v81, off offset:580
	scratch_store_b32 off, v80, off offset:576
	scratch_store_b32 off, v79, off offset:572
	scratch_store_b32 off, v76, off offset:524
	scratch_store_b32 off, v75, off offset:520
	s_clause 0x10                           ; 68-byte Folded Spill
	scratch_store_b32 off, v74, off offset:516
	scratch_store_b32 off, v73, off offset:512
	scratch_store_b32 off, v72, off offset:508
	scratch_store_b32 off, v71, off offset:504
	scratch_store_b32 off, v70, off offset:500
	scratch_store_b32 off, v69, off offset:496
	scratch_store_b32 off, v68, off offset:492
	scratch_store_b32 off, v54, off offset:488
	scratch_store_b32 off, v53, off offset:484
	scratch_store_b32 off, v39, off offset:480
	scratch_store_b32 off, v52, off offset:476
	scratch_store_b32 off, v38, off offset:472
	scratch_store_b32 off, v37, off offset:468
	scratch_store_b32 off, v36, off offset:464
	scratch_store_b32 off, v0, off offset:460
	scratch_store_b32 off, v78, off offset:444
	scratch_store_b32 off, v77, off offset:440
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v37, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v36, 0
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v37, off, off offset:288
	scratch_load_b32 v38, off, off offset:280
	scratch_load_b32 v39, off, off offset:272
	scratch_load_b32 v40, off, off offset:264
	scratch_load_b32 v41, off, off offset:256
	scratch_load_b32 v42, off, off offset:248
	scratch_load_b32 v43, off, off offset:240
	scratch_load_b32 v44, off, off offset:232
	scratch_load_b32 v0, off, off offset:300
	scratch_load_b32 v36, off, off offset:296
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v45, s27, v186
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v46, s27, v231
	v_add_nc_u32_e32 v47, s27, v134
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v37, s27, v37
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v38, s27, v38
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v39, s27, v39
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v40, s27, v40
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v41, s27, v41
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v42, s27, v42
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v43, s27, v43
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v36, s27, v36
	v_add_nc_u32_e32 v44, s27, v44
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
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
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v0, v36, v0, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v36, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v42, s27, v230
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v95, v0, 16, v37
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:352
	scratch_load_b32 v37, off, off offset:348
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v94, v39, 16, v41
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v41, off, off offset:356 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v40, s27, v174
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v39, v42
	ds_load_u8 v40, v40
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v38, s27, v245
	v_add_nc_u32_e32 v42, s27, v236
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v47, v47
	ds_load_u8 v38, v38
	v_lshl_or_b32 v93, v43, 16, v45
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v43, s27, v254
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v40, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v39, 16, v38
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v38, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v36, s27, v36
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v37, s27, v37
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v37, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v41, s27, v41
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v36, v36
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	ds_load_u8 v43, v43
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s27, v38
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v41, v36, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v41, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v43, off, off offset:332 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v40, s27, v40
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v99, v36, 16, v0
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v36, off, off offset:320 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s27, v247
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v37, s27, v37
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v40, v40
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v40, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v40, s27, v252
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v43, s27, v43
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v36, s27, v36
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v39, v40
	ds_load_u8 v0, v0
	ds_load_u8 v36, v36
	ds_load_u8 v38, v38
	v_lshl_or_b32 v98, v37, 16, v42
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v0, v39, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v39, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v38, v36, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v38, off, off offset:324 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v41, s27, v41
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v41, v41
	ds_load_u8 v43, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v43, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v0, 16, v37
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v0, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v39, s27, v39
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s27, v38
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v39, v39
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v38, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v96, v38, 16, v36
	v_dual_mov_b32 v43, s19 :: v_dual_mov_b32 v42, s18
	v_dual_mov_b32 v41, s17 :: v_dual_mov_b32 v40, s16
	v_dual_mov_b32 v39, s15 :: v_dual_mov_b32 v38, s14
	v_dual_mov_b32 v37, s13 :: v_dual_mov_b32 v36, s12
	v_wmma_i32_16x16x16_iu8 v[44:51], v[92:95], v[29:32], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[52:59], v[96:99], v[29:32], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[92:95], v[25:28], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[96:99], v[25:28], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[92:95], v[21:24], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[96:99], v[21:24], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[92:95], v[17:20], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[96:99], v[17:20], v[36:43] neg_lo:[1,1,0]
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:308
	scratch_load_b32 v17, off, off offset:292
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s27, v0
	v_add_nc_u32_e32 v21, s27, v184
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v20, off, off offset:276
	scratch_load_b32 v24, off, off offset:404
	scratch_load_b32 v19, off, off offset:260
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v0, v0
	ds_load_u8 v21, v21
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v22, off, off offset:420
	scratch_load_b32 v92, off, off offset:372
	scratch_load_b32 v23, off, off offset:396
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v18, s27, v18
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v17, s27, v17
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v20, s27, v20
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v19, s27, v19
	v_add_nc_u32_e32 v24, s27, v24
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v20, v20
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v92, s27, v92
	v_add_nc_u32_e32 v22, s27, v22
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v19, v19
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s27, v23
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v24, v24
	ds_load_u8 v92, v92
	ds_load_u8 v22, v22
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v17, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s27, v17
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v18, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s27, v18
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v19, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v19, s27, v19
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_lshl_or_b32 v20, v17, 16, v0
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v0, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v19, v19, 16, v18
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:244
	scratch_load_b32 v17, off, off offset:228
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v18, s27, v18
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s27, v17
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v0, v0
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v17, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s27, v17
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v17, 16, v0
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v0, s27, v176
	v_add_nc_u32_e32 v17, s27, v173
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v0, v0
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v17, s27, v166
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v21, v17, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v21, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v17, v17, 16, v0
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v0, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[44:51], v[17:20], v[13:16], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[60:67], v[17:20], v[9:12], v[60:67] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[17:20], v[5:8], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[17:20], v[1:4], v[84:91] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v224, v45
	v_cvt_f32_i32_e32 v223, v60
	v_cvt_f32_i32_e32 v219, v61
	v_cvt_f32_i32_e32 v212, v62
	v_cvt_f32_i32_e32 v220, v63
	v_cvt_f32_i32_e32 v255, v64
	v_cvt_f32_i32_e32 v205, v65
	v_cvt_f32_i32_e32 v202, v66
	v_cvt_f32_i32_e32 v203, v67
	v_cvt_f32_i32_e32 v232, v25
	v_cvt_f32_i32_e32 v65, v26
	v_cvt_f32_i32_e32 v132, v27
	v_cvt_f32_i32_e32 v218, v28
	v_cvt_f32_i32_e32 v208, v29
	v_cvt_f32_i32_e32 v213, v30
	v_cvt_f32_i32_e32 v207, v31
	v_cvt_f32_i32_e32 v214, v32
	v_cvt_f32_i32_e32 v227, v85
	v_cvt_f32_i32_e32 v251, v86
	v_cvt_f32_i32_e32 v249, v87
	v_cvt_f32_i32_e32 v253, v46
	v_cvt_f32_i32_e32 v222, v47
	v_cvt_f32_i32_e32 v250, v49
	v_cvt_f32_i32_e32 v195, v44
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, s27, v21
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s27, v0
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v21, v21
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v21, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s27, v21
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v22, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s27, v22
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v23, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s27, v23
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	v_lshl_or_b32 v24, v21, 16, v0
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v0, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v23, v23, 16, v22
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:388
	scratch_load_b32 v21, off, off offset:380
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v22, s27, v22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s27, v21
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v0, v0
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v21, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s27, v21
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v21, 16, v0
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:368
	scratch_load_b32 v21, off, off offset:364
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s27, v21
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v0, v0
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v21, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s27, v21
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v92, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v21, v21, 16, v0
	v_wmma_i32_16x16x16_iu8 v[52:59], v[21:24], v[13:16], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[68:75], v[21:24], v[9:12], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[21:24], v[5:8], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[21:24], v[1:4], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v96, v52
	v_cvt_f32_i32_e32 v98, v53
	v_cvt_f32_i32_e32 v97, v54
	v_cvt_f32_i32_e32 v99, v55
	v_cvt_f32_i32_e32 v94, v56
	v_cvt_f32_i32_e32 v95, v57
	v_cvt_f32_i32_e32 v92, v58
	v_cvt_f32_i32_e32 v93, v59
	v_cvt_f32_i32_e32 v63, v68
	v_cvt_f32_i32_e32 v66, v69
	v_cvt_f32_i32_e32 v62, v70
	v_cvt_f32_i32_e32 v64, v71
	v_cvt_f32_i32_e32 v58, v72
	v_cvt_f32_i32_e32 v59, v73
	v_cvt_f32_i32_e32 v56, v74
	v_cvt_f32_i32_e32 v57, v75
	v_cvt_f32_i32_e32 v69, v76
	v_cvt_f32_i32_e32 v70, v77
	v_cvt_f32_i32_e32 v68, v78
	v_cvt_f32_i32_e32 v71, v79
	v_cvt_f32_i32_e32 v54, v80
	v_cvt_f32_i32_e32 v55, v81
	v_cvt_f32_i32_e32 v52, v82
	v_cvt_f32_i32_e32 v53, v83
	v_cvt_f32_i32_e32 v76, v84
	v_cvt_f32_i32_e32 v74, v88
	v_cvt_f32_i32_e32 v75, v89
	v_cvt_f32_i32_e32 v72, v90
	v_cvt_f32_i32_e32 v73, v91
	v_cvt_f32_i32_e32 v61, v36
	v_cvt_f32_i32_e32 v67, v37
	v_cvt_f32_i32_e32 v60, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v37, v40
	v_cvt_f32_i32_e32 v38, v41
	v_cvt_f32_i32_e32 v0, v42
	v_cvt_f32_i32_e32 v36, v43
	v_cvt_f32_i32_e32 v40, v48
	v_cvt_f32_i32_e32 v41, v50
	v_cvt_f32_i32_e32 v42, v51
.LBB0_12:
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt lgkmcnt(0)
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:196
	scratch_load_b32 v4, off, off offset:200
	scratch_load_b32 v5, off, off offset:204
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s26, 31
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v76, off offset:1108
	scratch_store_b32 off, v42, off offset:1024
	scratch_store_b32 off, v41, off offset:1020
	scratch_store_b32 off, v40, off offset:1016
	scratch_store_b32 off, v214, off offset:1012
	scratch_store_b32 off, v213, off offset:1008
	scratch_store_b32 off, v208, off offset:1004
	scratch_store_b32 off, v207, off offset:1000
	scratch_store_b32 off, v75, off offset:996
	scratch_store_b32 off, v205, off offset:992
	scratch_store_b32 off, v74, off offset:988
	scratch_store_b32 off, v203, off offset:984
	scratch_store_b32 off, v202, off offset:980
	scratch_store_b32 off, v73, off offset:976
	scratch_store_b32 off, v72, off offset:972
	scratch_store_b32 off, v71, off offset:968
	scratch_store_b32 off, v70, off offset:964
	scratch_store_b32 off, v69, off offset:960
	scratch_store_b32 off, v68, off offset:956
	scratch_store_b32 off, v67, off offset:952
	scratch_store_b32 off, v66, off offset:948
	scratch_store_b32 off, v64, off offset:944
	scratch_store_b32 off, v63, off offset:940
	scratch_store_b32 off, v62, off offset:936
	scratch_store_b32 off, v61, off offset:932
	scratch_store_b32 off, v99, off offset:928
	scratch_store_b32 off, v98, off offset:924
	scratch_store_b32 off, v97, off offset:920
	scratch_store_b32 off, v96, off offset:916
	scratch_store_b32 off, v39, off offset:908
	scratch_store_b32 off, v60, off offset:904
	scratch_store_b32 off, v95, off offset:776
	s_clause 0x10                           ; 68-byte Folded Spill
	scratch_store_b32 off, v94, off offset:772
	scratch_store_b32 off, v93, off offset:768
	scratch_store_b32 off, v92, off offset:764
	scratch_store_b32 off, v59, off offset:744
	scratch_store_b32 off, v58, off offset:724
	scratch_store_b32 off, v57, off offset:704
	scratch_store_b32 off, v56, off offset:692
	scratch_store_b32 off, v55, off offset:648
	scratch_store_b32 off, v54, off offset:636
	scratch_store_b32 off, v53, off offset:632
	scratch_store_b32 off, v52, off offset:628
	scratch_store_b32 off, v38, off offset:600
	scratch_store_b32 off, v37, off offset:596
	scratch_store_b32 off, v36, off offset:592
	scratch_store_b32 off, v0, off offset:588
	scratch_store_b32 off, v124, off offset:560
	scratch_store_b32 off, v122, off offset:556
	s_lshr_b32 s1, s1, 27
	s_mov_b32 s11, 0x31027000
	s_add_i32 s1, s26, s1
	s_mov_b32 s10, 0x7ffffffe
	s_ashr_i32 s1, s1, 5
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s26, s10
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s1, s44
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s4, s1, s34
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s5, -1, 0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v0, v162, s1, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_and_b32_e32 v2, 32, v33
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s27, s11
	s_and_b32 s25, s25, 0xffff
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v6, v156, s1, 1
	s_and_b32 s9, s9, 0xffff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_add3_u32 v2, 0, v216, v2
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	v_add3_u32 v7, s22, s23, v133
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v87, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v79, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v90, 0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_add_nc_u32_e32 v244, 0, v215
	v_mov_b32_e32 v26, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v215, 0
	v_mov_b32_e32 v85, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, v1, s4, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v4, v4, s1, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_and_b32_e32 v3, 28, v217
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v5, v5, s1, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_mov_b32_e32 v217, 0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_add_nc_u32_e32 v229, v2, v3
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v2, 0x80000000, v4, vcc_lo
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v228, v0, s[8:11], 0 offen
	buffer_load_u16 v0, v2, s[8:11], 0 offen
	scratch_store_b32 off, v7, off offset:912 ; 4-byte Folded Spill
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v7, v7, s4, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v3, 0x80000000, v5 :: v_dual_cndmask_b32 v4, 0x80000000, v6
	s_clause 0x1
	buffer_load_u16 v221, v3, s[8:11], 0 offen
	buffer_load_u16 v242, v4, s[8:11], 0 offen
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v5, 0x80000000, v7, vcc_lo
	v_dual_mov_b32 v3, 0 :: v_dual_add_nc_u32 v2, s47, v35
	v_mov_b32_e32 v4, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	scratch_store_b32 off, v0, off offset:1164 ; 4-byte Folded Spill
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v229, v1 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v0, v5, s[24:27], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:88
	scratch_store_b32 off, v4, off offset:92
	v_mov_b32_e32 v4, 0
	v_cndmask_b32_e64 v3, 0, 1, s3
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v1, s47, v34
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[16:19], v244 offset:36864
	ds_load_b128 v[12:15], v244 offset:36880
	ds_load_b128 v[8:11], v244 offset:37392
	scratch_store_b32 off, v4, off offset:96 ; 4-byte Folded Spill
	v_mov_b32_e32 v4, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cmp_ne_u32_e64 s1, 1, v3
	v_mov_b32_e32 v80, 0
	scratch_store_b32 off, v4, off offset:100 ; 4-byte Folded Spill
	v_mov_b32_e32 v4, 0
	scratch_store_b32 off, v4, off offset:104 ; 4-byte Folded Spill
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[3:6], v244 offset:37376
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[8:11], off offset:1112 ; 16-byte Folded Spill
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[3:6], off offset:1128 ; 16-byte Folded Spill
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v3, 0 :: v_dual_lshlrev_b32 v0, 16, v0
	ds_store_b32 v229, v0 offset:36864
	v_mov_b32_e32 v0, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[60:63], v1
	ds_load_b128 v[52:55], v1 offset:512
	ds_load_b128 v[48:51], v1 offset:1024
	ds_load_b128 v[36:39], v1 offset:1536
	ds_load_b128 v[56:59], v2
	ds_load_b128 v[44:47], v2 offset:512
	ds_load_b128 v[40:43], v2 offset:1024
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_b128 v[32:35], v2 offset:1536
	v_mov_b32_e32 v1, 0
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0xb                            ; 48-byte Folded Reload
	scratch_load_b32 v0, off, off offset:352
	scratch_load_b32 v2, off, off offset:360
	scratch_load_b32 v10, off, off offset:344
	scratch_load_b32 v20, off, off offset:336
	scratch_load_b32 v24, off, off offset:320
	scratch_load_b32 v1, off, off offset:348
	scratch_load_b32 v3, off, off offset:356
	scratch_load_b32 v11, off, off offset:340
	scratch_load_b32 v21, off, off offset:332
	scratch_load_b32 v28, off, off offset:288
	scratch_load_b32 v30, off, off offset:296
	scratch_load_b32 v29, off, off offset:280
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v8, s46, v236
	v_add_nc_u32_e32 v9, s46, v254
	v_add_nc_u32_e32 v22, s46, v252
	v_add_nc_u32_e32 v23, s46, v247
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v2, s46, v2
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v10, s46, v10
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v20, s46, v20
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v28, s46, v28
	v_add_nc_u32_e32 v3, s46, v3
	v_add_nc_u32_e32 v11, s46, v11
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v2, v2
	ds_load_u8 v8, v8
	ds_load_u8 v9, v9
	ds_load_u8 v3, v3
	ds_load_u8 v10, v10
	ds_load_u8 v11, v11
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v29, s46, v29
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v28, v28
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v30, s46, v30
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v29, v29
	ds_load_u8 v30, v30
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v1, off, off offset:316 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v21, s46, v21
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v20, v20
	ds_load_u8 v21, v21
	ds_load_u8 v22, v22
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v29, off, off offset:300 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v24, s46, v24
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v24, v24
	ds_load_u8 v25, v1
	v_perm_b32 v1, v3, v2, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v3, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v2, v9, v8, 0xc0c0004
	v_perm_b32 v8, v11, v10, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v10, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v23, v22, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v29, s46, v29
	scratch_load_b32 v23, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v2, v8, 16, v2
	v_perm_b32 v8, v21, v20, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v20, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v29, v29
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v22, v25, v24, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v9, s46, v3
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v3, v1, 16, v0
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:328
	scratch_load_b32 v1, off, off offset:324
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v10, s46, v10
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v23, s46, v23
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v0, v0
	ds_load_u8 v21, v1
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	v_lshl_or_b32 v1, v11, 16, v8
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:420
	scratch_load_b32 v11, off, off offset:400
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v21, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v10, off, off offset:404 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v20, s46, v20
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v0, v0, 16, v22
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v22, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v8, s46, v8
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v11, s46, v11
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v20, v20
	ds_load_u8 v8, v8
	ds_load_u8 v11, v11
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v8, v20, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v20, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v23, v11, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v11, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v10, s46, v10
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v22, s46, v22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v20, s46, v20
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s46, v11
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v20, v20
	ds_load_u8 v24, v11
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v11, off, off offset:392 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v21, s46, v21
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v21, v21
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v24, v20, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v23
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s46, v11
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v11, v8, 16, v9
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:388
	scratch_load_b32 v9, off, off offset:368
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v8, s46, v8
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s46, v9
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v21, v21
	ds_load_u8 v8, v8
	ds_load_u8 v9, v9
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v8, v21, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v21, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v22, v9, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v9, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, s46, v21
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s46, v9
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v21, v21
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v9, v21, 0xc0c0004
	v_lshl_or_b32 v9, v8, 16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v8, v21, 16, v22
	v_dual_mov_b32 v27, s19 :: v_dual_mov_b32 v26, s18
	v_dual_mov_b32 v25, s17 :: v_dual_mov_b32 v24, s16
	v_dual_mov_b32 v23, s15 :: v_dual_mov_b32 v22, s14
	v_dual_mov_b32 v21, s13 :: v_dual_mov_b32 v20, s12
	v_wmma_i32_16x16x16_iu8 v[67:74], v[0:3], v[60:63], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[8:11], v[56:59], v[67:74] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v133, v68
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v68, s46, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v124, v67
	v_cvt_f32_i32_e32 v99, v69
	v_cvt_f32_i32_e32 v122, v70
	v_cvt_f32_i32_e32 v95, v71
	v_cvt_f32_i32_e32 v97, v72
	v_cvt_f32_i32_e32 v91, v73
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v67, off, off offset:264
	scratch_load_b32 v69, off, off offset:308
	scratch_load_b32 v31, off, off offset:248
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v68, v68
	v_perm_b32 v29, v30, v29, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v30, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v93, v74
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:260
	scratch_load_b32 v71, off, off offset:276
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v67, s46, v67
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v69, s46, v69
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v31, s46, v31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v30, s46, v30
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v67, v67
	ds_load_u8 v31, v31
	ds_load_u8 v69, v69
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v70, s46, v70
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v30, v30
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s46, v71
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v31, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v31, s46, v31
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v31, v31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v67, v31, 0xc0c0004
	v_lshl_or_b32 v31, v29, 16, v28
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v28, s46, v186
	v_add_nc_u32_e32 v29, s46, v231
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v30, v67, 16, v30
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v67, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v28, v28
	ds_load_u8 v29, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v29, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v67, s46, v67
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v67, v67
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v29, s46, v29
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v29, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v67, v29, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v67, s46, v245
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v29, v29, 16, v28
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v28, s46, v134
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v67, v67
	ds_load_u8 v28, v28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v67, v28, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v67, s46, v230
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v68, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v28, v67, 16, v28
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v67, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v68, s46, v68
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s46, v67
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v68, v68
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v68, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s46, v68
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v69, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v78, v68, 16, v67
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v67, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v69, s46, v69
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v70, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s46, v70
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v70, 16, v69
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v69, off, off offset:244
	scratch_load_b32 v68, off, off offset:228
	v_add_nc_u32_e32 v67, s46, v67
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v67, v67
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v69, s46, v69
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s46, v68
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v69, v69
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v68, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s46, v68
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v69, s46, v184
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v76, v68, 16, v67
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v67, s46, v176
	v_add_nc_u32_e32 v68, s46, v173
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v69, v69
	ds_load_u8 v67, v67
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v68, s46, v166
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v68, 16, v67
	v_wmma_i32_16x16x16_iu8 v[67:74], v[28:31], v[52:55], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[75:78], v[44:47], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v216, v67
	v_cvt_f32_i32_e32 v217, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v226, v69
	v_cvt_f32_i32_e32 v234, v70
	v_cvt_f32_i32_e32 v202, v71
	v_cvt_f32_i32_e32 v203, v72
	v_cvt_f32_i32_e32 v205, v73
	v_cvt_f32_i32_e32 v207, v74
	v_wmma_i32_16x16x16_iu8 v[67:74], v[0:3], v[52:55], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[8:11], v[44:47], v[67:74] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v96, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v98, v68
	v_cvt_f32_i32_e32 v92, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v94, v70
	v_cvt_f32_i32_e32 v89, v71
	v_cvt_f32_i32_e32 v90, v72
	v_cvt_f32_i32_e32 v87, v73
	v_cvt_f32_i32_e32 v88, v74
	v_wmma_i32_16x16x16_iu8 v[67:74], v[28:31], v[48:51], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[75:78], v[40:43], v[67:74] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v208, v71
	v_cvt_f32_i32_e32 v213, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v214, v73
	v_cvt_f32_i32_e32 v215, v74
	scratch_store_b32 off, v67, off offset:92 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v68
	scratch_store_b32 off, v67, off offset:96 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v69
	scratch_store_b32 off, v67, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v70
	scratch_store_b32 off, v67, off offset:104 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu8 v[67:74], v[0:3], v[48:51], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[8:11], v[40:43], v[67:74] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v85, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v86, v68
	v_cvt_f32_i32_e32 v83, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v84, v70
	v_cvt_f32_i32_e32 v81, v71
	v_cvt_f32_i32_e32 v82, v72
	v_cvt_f32_i32_e32 v79, v73
	v_cvt_f32_i32_e32 v80, v74
	v_wmma_i32_16x16x16_iu8 v[67:74], v[28:31], v[36:39], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[75:78], v[32:35], v[67:74] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v67, v67
	scratch_store_b32 off, v67, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v68
	scratch_store_b32 off, v67, off offset:128 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v69
	scratch_store_b32 off, v67, off offset:136 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v70
	scratch_store_b32 off, v67, off offset:140 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v71
	scratch_store_b32 off, v67, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v72
	scratch_store_b32 off, v67, off offset:112 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v73
	scratch_store_b32 off, v67, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v67, v74
	scratch_store_b32 off, v67, off offset:120 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu8 v[67:74], v[28:31], v[60:63], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[20:27], v[0:3], v[36:39], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[75:78], v[56:59], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[20:27], v[8:11], v[32:35], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v10, v20
	v_cvt_f32_i32_e32 v11, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v8, v22
	v_cvt_f32_i32_e32 v9, v23
	v_cvt_f32_i32_e32 v2, v24
	v_cvt_f32_i32_e32 v3, v25
	v_cvt_f32_i32_e32 v0, v26
	v_cvt_f32_i32_e32 v1, v27
	v_cvt_f32_i32_e32 v24, v69
	v_cvt_f32_i32_e32 v25, v70
	v_cvt_f32_i32_e32 v20, v71
	v_cvt_f32_i32_e32 v21, v72
	v_cvt_f32_i32_e32 v22, v73
	v_cvt_f32_i32_e32 v23, v74
	v_cvt_f32_i32_e32 v26, v67
	v_cvt_f32_i32_e32 v27, v68
.LBB0_14:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v27, off offset:1104
	scratch_store_b32 off, v26, off offset:1100
	scratch_store_b32 off, v25, off offset:1096
	scratch_store_b32 off, v24, off offset:1092
	scratch_store_b32 off, v23, off offset:1088
	scratch_store_b32 off, v234, off offset:1084
	scratch_store_b32 off, v22, off offset:1080
	scratch_store_b32 off, v226, off offset:1076
	scratch_store_b32 off, v21, off offset:1072
	scratch_store_b32 off, v217, off offset:1068
	scratch_store_b32 off, v20, off offset:1064
	scratch_store_b32 off, v216, off offset:1060
	scratch_store_b32 off, v215, off offset:1056
	scratch_store_b32 off, v214, off offset:1052
	scratch_store_b32 off, v213, off offset:1048
	scratch_store_b32 off, v208, off offset:1044
	scratch_store_b32 off, v207, off offset:1040
	scratch_store_b32 off, v205, off offset:1036
	scratch_store_b32 off, v203, off offset:1032
	scratch_store_b32 off, v202, off offset:1028
	scratch_store_b32 off, v133, off offset:760
	scratch_store_b32 off, v124, off offset:756
	scratch_store_b32 off, v122, off offset:752
	scratch_store_b32 off, v99, off offset:748
	scratch_store_b32 off, v98, off offset:740
	scratch_store_b32 off, v97, off offset:736
	scratch_store_b32 off, v96, off offset:732
	scratch_store_b32 off, v95, off offset:728
	scratch_store_b32 off, v94, off offset:720
	scratch_store_b32 off, v93, off offset:716
	scratch_store_b32 off, v92, off offset:712
	scratch_store_b32 off, v91, off offset:708
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v90, off offset:700
	scratch_store_b32 off, v89, off offset:696
	scratch_store_b32 off, v88, off offset:688
	scratch_store_b32 off, v87, off offset:684
	scratch_store_b32 off, v86, off offset:680
	scratch_store_b32 off, v85, off offset:676
	scratch_store_b32 off, v84, off offset:672
	scratch_store_b32 off, v83, off offset:668
	scratch_store_b32 off, v82, off offset:664
	scratch_store_b32 off, v81, off offset:660
	scratch_store_b32 off, v80, off offset:656
	scratch_store_b32 off, v79, off offset:652
	scratch_store_b32 off, v11, off offset:644
	scratch_store_b32 off, v10, off offset:640
	scratch_store_b32 off, v9, off offset:624
	scratch_store_b32 off, v8, off offset:620
	scratch_store_b32 off, v3, off offset:616
	scratch_store_b32 off, v2, off offset:612
	scratch_store_b32 off, v1, off offset:608
	scratch_store_b32 off, v0, off offset:604
	scratch_store_b32 off, v131, off offset:568
	scratch_store_b32 off, v125, off offset:564
	scratch_store_b32 off, v121, off offset:552
	scratch_store_b32 off, v120, off offset:548
	scratch_store_b32 off, v119, off offset:544
	scratch_store_b32 off, v118, off offset:540
	scratch_store_b32 off, v117, off offset:536
	scratch_store_b32 off, v116, off offset:532
	scratch_store_b32 off, v103, off offset:528
	scratch_store_b32 off, v102, off offset:456
	scratch_store_b32 off, v101, off offset:452
	scratch_store_b32 off, v100, off offset:448
	ds_load_b128 v[28:31], v244 offset:36864
	ds_load_b128 v[24:27], v244 offset:36880
	ds_load_b128 v[20:23], v244 offset:37376
	ds_load_b128 v[0:3], v244 offset:37392
	v_dual_mov_b32 v76, v186 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v234, v166 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v85, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[0:3], off offset:1144 ; 16-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v88, 0
	v_mov_b32_e32 v11, 0
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v95, 0
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v69, 0
	v_mov_b32_e32 v83, 0
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v99, 0
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v101, 0
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v208, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v0, 0
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v0, off, off offset:424 ; 4-byte Folded Reload
	v_dual_mov_b32 v133, v123 :: v_dual_mov_b32 v4, v141
	v_dual_mov_b32 v123, v112 :: v_dual_mov_b32 v166, v173
	v_mov_b32_e32 v7, v175
	v_mov_b32_e32 v125, v114
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v72, off, off offset:256
	scratch_load_b32 v73, off, off offset:248
	scratch_load_b32 v74, off, off offset:240
	scratch_load_b32 v75, off, off offset:232
	scratch_load_b32 v120, off, off offset:252
	scratch_load_b32 v121, off, off offset:244
	scratch_load_b32 v68, off, off offset:288
	scratch_load_b32 v69, off, off offset:280
	scratch_load_b32 v70, off, off offset:272
	scratch_load_b32 v71, off, off offset:264
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_mov_b32_e32 v80, v134
	v_dual_mov_b32 v134, v190 :: v_dual_add_nc_u32 v81, s45, v245
	v_mov_b32_e32 v190, v172
	v_dual_mov_b32 v172, v206 :: v_dual_add_nc_u32 v77, s45, v231
	v_dual_mov_b32 v226, v251 :: v_dual_mov_b32 v251, v250
	v_dual_mov_b32 v205, v176 :: v_dual_mov_b32 v250, v255
	v_mov_b32_e32 v255, v249
	v_mov_b32_e32 v249, v189
	v_dual_mov_b32 v189, v128 :: v_dual_add_nc_u32 v80, s45, v80
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v78, s45, v230
	v_mov_b32_e32 v128, v104
	v_dual_mov_b32 v6, v195 :: v_dual_mov_b32 v195, v160
	v_mov_b32_e32 v173, v135
	v_dual_mov_b32 v135, v184 :: v_dual_mov_b32 v124, v113
	v_mov_b32_e32 v160, v153
	v_mov_b32_e32 v153, v105
	v_add_nc_u32_e32 v105, s45, v236
	v_dual_mov_b32 v217, v191 :: v_dual_mov_b32 v236, v196
	v_dual_mov_b32 v191, v157 :: v_dual_mov_b32 v196, v164
	v_mov_b32_e32 v164, v154
	v_mov_b32_e32 v154, v106
	v_dual_mov_b32 v79, v174 :: v_dual_add_nc_u32 v106, s45, v254
	v_mov_b32_e32 v174, v126
	v_dual_mov_b32 v254, v108 :: v_dual_mov_b32 v175, v210
	v_dual_mov_b32 v131, v183 :: v_dual_add_nc_u32 v108, s45, v247
	v_mov_b32_e32 v247, v109
	v_add_nc_u32_e32 v79, s45, v79
	v_mov_b32_e32 v157, v107
	v_dual_mov_b32 v116, v110 :: v_dual_add_nc_u32 v107, s45, v252
	v_mov_b32_e32 v183, v171
	v_mov_b32_e32 v126, v115
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v115, off, off offset:284
	scratch_load_b32 v117, off, off offset:276
	scratch_load_b32 v118, off, off offset:268
	scratch_load_b32 v119, off, off offset:260
	v_add_nc_u32_e32 v76, s45, v76
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v1, off, off offset:308
	scratch_load_b32 v2, off, off offset:304
	scratch_load_b32 v3, off, off offset:300
	scratch_load_b32 v67, off, off offset:296
	scratch_load_b32 v82, off, off offset:292
	s_waitcnt vmcnt(19)
	v_add_nc_u32_e32 v83, s45, v0
	scratch_load_b32 v0, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(19)
	v_add_nc_u32_e32 v72, s45, v72
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v73, s45, v73
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v120, s45, v120
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v121, s45, v121
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v68, s45, v68
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v69, s45, v69
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v70, s45, v70
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v71, s45, v71
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v115, s45, v115
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v117, s45, v117
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v118, s45, v118
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v119, s45, v119
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v1, s45, v1
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v2, s45, v2
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v3, s45, v3
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v67, s45, v67
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v82, s45, v82
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v68, v68
	ds_load_u8 v69, v69
	ds_load_u8 v3, v3
	ds_load_u8 v72, v72
	ds_load_u8 v73, v73
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v69, s45, v135
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v67, v3, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v67, s45, v234
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v3, v3, 16, v68
	v_perm_b32 v68, v73, v72, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v84, s45, v0
	scratch_load_b32 v0, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v85, s45, v0
	scratch_load_b32 v0, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v86, s45, v0
	scratch_load_b32 v0, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v87, s45, v0
	scratch_load_b32 v0, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v88, s45, v0
	scratch_load_b32 v0, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v89, s45, v0
	scratch_load_b32 v0, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v90, s45, v0
	scratch_load_b32 v0, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v91, s45, v0
	scratch_load_b32 v0, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v92, s45, v0
	scratch_load_b32 v0, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v93, s45, v0
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v94, s45, v0
	scratch_load_b32 v0, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v95, s45, v0
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v96, s45, v0
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v97, s45, v0
	scratch_load_b32 v0, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v98, s45, v0
	scratch_load_b32 v0, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, s45, v0
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v100, s45, v0
	scratch_load_b32 v0, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v101, s45, v0
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v102, s45, v0
	scratch_load_b32 v0, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v103, s45, v0
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v104, s45, v0
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v109, s45, v0
	scratch_load_b32 v0, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v110, s45, v0
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v122, v111 :: v_dual_add_nc_u32 v111, s45, v0
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	v_dual_mov_b32 v171, v204 :: v_dual_add_nc_u32 v204, s45, v205
	v_add_nc_u32_e32 v205, s45, v166
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v112, s45, v0
	scratch_load_b32 v0, off, off offset:320 ; 4-byte Folded Reload
	v_mov_b32_e32 v135, v173
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v113, s45, v0
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v114, s45, v0
	scratch_load_b32 v0, off, off offset:312 ; 4-byte Folded Reload
	v_mov_b32_e32 v141, v155
	scratch_load_b32 v155, off, off offset:236 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v74, s45, v74
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v101, v101
	ds_load_u8 v102, v102
	ds_load_u8 v99, v99
	ds_load_u8 v105, v105
	ds_load_u8 v106, v106
	ds_load_u8 v103, v103
	ds_load_u8 v104, v104
	ds_load_u8 v100, v100
	ds_load_u8 v109, v109
	ds_load_u8 v110, v110
	ds_load_u8 v107, v107
	ds_load_u8 v113, v113
	ds_load_u8 v114, v114
	ds_load_u8 v111, v111
	ds_load_u8 v112, v112
	ds_load_u8 v108, v108
	ds_load_u8 v85, v85
	ds_load_u8 v86, v86
	ds_load_u8 v83, v83
	ds_load_u8 v89, v89
	ds_load_u8 v90, v90
	ds_load_u8 v87, v87
	ds_load_u8 v88, v88
	ds_load_u8 v84, v84
	ds_load_u8 v93, v93
	ds_load_u8 v94, v94
	ds_load_u8 v91, v91
	ds_load_u8 v97, v97
	ds_load_u8 v98, v98
	ds_load_u8 v95, v95
	ds_load_u8 v96, v96
	ds_load_u8 v92, v92
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	v_perm_b32 v100, v106, v105, 0xc0c0004
	v_perm_b32 v102, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v103, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v104, v108, v107, 0xc0c0004
	v_perm_b32 v105, v114, v113, 0xc0c0004
	v_perm_b32 v106, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v94, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	v_perm_b32 v92, v98, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v214, v91, 16, v93
	v_lshl_or_b32 v213, v94, 16, v92
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s45, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v202, s45, v155
	scratch_load_b32 v155, off, off offset:228 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v75, s45, v75
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v76, v76
	ds_load_u8 v77, v77
	ds_load_u8 v74, v74
	ds_load_u8 v80, v80
	ds_load_u8 v81, v81
	ds_load_u8 v78, v78
	ds_load_u8 v79, v79
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v71, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v74, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v203, s45, v155
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v73, v2
	ds_load_u8 v74, v82
	ds_load_u8 v206, v0
	ds_load_u8 v118, v118
	ds_load_u8 v119, v119
	ds_load_u8 v115, v115
	ds_load_u8 v117, v117
	ds_load_u8 v207, v1
	ds_load_u8 v202, v202
	ds_load_u8 v203, v203
	ds_load_u8 v120, v120
	ds_load_u8 v204, v204
	ds_load_u8 v205, v205
	ds_load_u8 v208, v67
	ds_load_u8 v210, v69
	ds_load_u8 v67, v121
	v_lshl_or_b32 v2, v70, 16, v68
	v_perm_b32 v0, v81, v80, 0xc0c0004
	v_perm_b32 v68, v79, v78, 0xc0c0004
	v_mov_b32_e32 v82, s19
	v_lshl_or_b32 v1, v72, 16, v71
	v_dual_mov_b32 v81, s18 :: v_dual_mov_b32 v80, s17
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v0, v68, 16, v0
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	v_mov_b32_e32 v79, s16
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v115, v117, v115, 0xc0c0004
	v_dual_mov_b32 v78, s15 :: v_dual_mov_b32 v77, s14
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v117, v203, v202, 0xc0c0004
	v_dual_mov_b32 v76, s13 :: v_dual_mov_b32 v75, s12
	v_perm_b32 v121, v74, v73, 0xc0c0004
	v_perm_b32 v206, v207, v206, 0xc0c0004
	v_lshl_or_b32 v119, v115, 16, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v202, v67, v120, 0xc0c0004
	v_perm_b32 v115, v205, v204, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[67:74], v[0:3], v[60:63], v[75:82] neg_lo:[1,1,0]
	v_lshl_or_b32 v120, v206, 16, v121
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v118, v202, 16, v117
	v_perm_b32 v117, v210, v208, 0xc0c0004
	v_lshl_or_b32 v205, v99, 16, v101
	v_lshl_or_b32 v204, v102, 16, v100
	v_lshl_or_b32 v203, v104, 16, v103
	v_lshl_or_b32 v202, v106, 16, v105
	v_lshl_or_b32 v117, v117, 16, v115
	v_perm_b32 v99, v86, v85, 0xc0c0004
	v_perm_b32 v100, v84, v83, 0xc0c0004
	v_perm_b32 v101, v90, v89, 0xc0c0004
	v_perm_b32 v102, v88, v87, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[83:90], v[202:205], v[60:63], v[75:82] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v216, v100, 16, v99
	v_wmma_i32_16x16x16_iu8 v[67:74], v[117:120], v[56:59], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v215, v102, 16, v101
	v_wmma_i32_16x16x16_iu8 v[91:98], v[0:3], v[52:55], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[0:3], v[48:51], v[75:82] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[213:216], v[56:59], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[202:205], v[52:55], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[202:205], v[48:51], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[0:3], v[36:39], v[75:82] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v67
	v_wmma_i32_16x16x16_iu8 v[91:98], v[117:120], v[44:47], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[202:205], v[36:39], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[213:216], v[44:47], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[117:120], v[40:43], v[99:106] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v83
	v_wmma_i32_16x16x16_iu8 v[107:114], v[213:216], v[40:43], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[117:120], v[32:35], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[213:216], v[32:35], v[75:82] neg_lo:[1,1,0]
	v_mov_b32_e32 v115, v126
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v85
	v_cvt_f32_i32_e32 v207, v68
	v_cvt_f32_i32_e32 v66, v69
	v_cvt_f32_i32_e32 v205, v70
	v_cvt_f32_i32_e32 v121, v71
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v86
	v_cvt_f32_i32_e32 v186, v72
	v_cvt_f32_i32_e32 v203, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v118, v84
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v89
	v_cvt_f32_i32_e32 v86, v87
	v_cvt_f32_i32_e32 v87, v88
	v_cvt_f32_i32_e32 v85, v90
	v_cvt_f32_i32_e32 v215, v91
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v92
	v_cvt_f32_i32_e32 v214, v93
	v_cvt_f32_i32_e32 v216, v94
	v_cvt_f32_i32_e32 v93, v95
	v_cvt_f32_i32_e32 v96, v96
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v5, v98
	v_cvt_f32_i32_e32 v88, v56
	v_cvt_f32_i32_e32 v89, v57
	v_cvt_f32_i32_e32 v90, v58
	v_cvt_f32_i32_e32 v91, v59
	v_cvt_f32_i32_e32 v83, v60
	v_cvt_f32_i32_e32 v84, v61
	v_cvt_f32_i32_e32 v72, v62
	v_cvt_f32_i32_e32 v73, v63
	v_cvt_f32_i32_e32 v233, v99
	v_cvt_f32_i32_e32 v166, v100
	v_cvt_f32_i32_e32 v64, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v8, v103
	v_cvt_f32_i32_e32 v10, v104
	v_mov_b32_e32 v104, v128
	v_mov_b32_e32 v128, v189
	v_mov_b32_e32 v189, v249
	v_mov_b32_e32 v249, v255
	v_dual_mov_b32 v255, v250 :: v_dual_mov_b32 v250, v251
	v_dual_mov_b32 v251, v226 :: v_dual_mov_b32 v206, v172
	v_mov_b32_e32 v172, v190
	v_mov_b32_e32 v190, v134
	v_cvt_f32_i32_e32 v11, v105
	v_mov_b32_e32 v105, v153
	v_dual_mov_b32 v153, v160 :: v_dual_mov_b32 v160, v195
	v_mov_b32_e32 v195, v6
	v_cvt_f32_i32_e32 v98, v106
	v_mov_b32_e32 v106, v154
	v_mov_b32_e32 v154, v164
	v_mov_b32_e32 v164, v196
	v_mov_b32_e32 v196, v236
	v_cvt_f32_i32_e32 v92, v107
	v_mov_b32_e32 v107, v157
	v_mov_b32_e32 v157, v191
	v_mov_b32_e32 v191, v217
	v_cvt_f32_i32_e32 v94, v108
	v_mov_b32_e32 v108, v254
	v_mov_b32_e32 v126, v174
	v_cvt_f32_i32_e32 v95, v109
	v_mov_b32_e32 v109, v247
	v_mov_b32_e32 v210, v175
	v_mov_b32_e32 v175, v7
	v_cvt_f32_i32_e32 v6, v110
	v_mov_b32_e32 v110, v116
	v_cvt_f32_i32_e32 v70, v111
	v_mov_b32_e32 v111, v122
	v_cvt_f32_i32_e32 v71, v112
	v_dual_mov_b32 v112, v123 :: v_dual_mov_b32 v123, v133
	v_mov_b32_e32 v204, v171
	v_mov_b32_e32 v171, v183
	v_mov_b32_e32 v183, v131
	v_cvt_f32_i32_e32 v68, v113
	v_mov_b32_e32 v113, v124
	v_cvt_f32_i32_e32 v69, v114
	v_mov_b32_e32 v114, v125
	v_mov_b32_e32 v155, v141
	v_mov_b32_e32 v141, v4
	v_cvt_f32_i32_e32 v103, v48
	v_cvt_f32_i32_e32 v208, v49
	v_cvt_f32_i32_e32 v120, v50
	v_cvt_f32_i32_e32 v119, v51
	v_cvt_f32_i32_e32 v99, v52
	v_cvt_f32_i32_e32 v100, v53
	v_cvt_f32_i32_e32 v101, v54
	v_cvt_f32_i32_e32 v67, v55
	v_cvt_f32_i32_e32 v9, v75
	v_cvt_f32_i32_e32 v4, v76
	v_cvt_f32_i32_e32 v7, v77
	v_cvt_f32_i32_e32 v75, v78
	v_cvt_f32_i32_e32 v2, v79
	v_cvt_f32_i32_e32 v3, v80
	v_cvt_f32_i32_e32 v0, v81
	v_cvt_f32_i32_e32 v1, v82
.LBB0_16:
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v71, off offset:256
	scratch_store_b32 off, v70, off offset:252
	scratch_store_b32 off, v69, off offset:248
	scratch_store_b32 off, v68, off offset:244
	scratch_store_b32 off, v3, off offset:240
	scratch_store_b32 off, v2, off offset:236
	scratch_store_b32 off, v1, off offset:232
	scratch_store_b32 off, v0, off offset:228
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1164
	scratch_load_b32 v60, off, off offset:1160
	scratch_load_b32 v116, off, off offset:784
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, 0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_mov_b16_e64 v35.h, v228.l
	v_mov_b16_e64 v32.h, v242.l
	v_mov_b16_e64 v33.h, v221.l
	v_dual_mov_b32 v59, v75 :: v_dual_mov_b32 v134, v118
	v_mov_b16_e32 v35.l, v32.l
	v_mov_b16_e32 v34.l, v32.l
	v_mov_b16_e32 v33.l, v32.l
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v48, v251, v32
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v57, v193, v32
	v_mov_b32_e32 v133, v86
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s35, 31
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v46, v218, v33
	v_mul_f32_e32 v47, v132, v33
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v71, v48, v30, v143
	.loc	1 330 29 is_stmt 1              ; generate_amdgcn.py:330:29
	s_lshr_b32 s1, s1, 27
	v_mov_b32_e32 v131, v85
	s_add_i32 s1, s35, s1
	v_mov_b32_e32 v231, v94
	s_ashr_i32 s1, s1, 5
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s26, s10
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s1, s44
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s4, s1, s34
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s5, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s27, s11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	v_mov_b32_e32 v217, v91
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s33, s33, s23
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	v_mov_b32_e32 v176, v211
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:844
	scratch_load_b32 v118, off, off offset:788
	v_mov_b32_e32 v58, v67
	v_dual_mov_b32 v132, v121 :: v_dual_mov_b32 v121, v198
	v_mov_b32_e32 v230, v92
	v_mov_b32_e32 v122, v87
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v87, v57, v15, v160
	v_mov_b32_e32 v124, v90
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v34.h, v0.l
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v224, v35
	v_mul_f32_e32 v1, v195, v35
	v_mul_f32_e32 v2, v222, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v3, v253, v35 :: v_dual_mul_f32 v40, v219, v34
	v_mul_f32_e32 v41, v223, v34
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v36, v0, v29, v165
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v220, v34
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v37, v1, v28, v153
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v212, v34
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v38, v2, v31, v210
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v2, v65, v33
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v42, v0, v31, v204
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v0, off, off offset:1108 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v43, v1, v30, v170
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v227, v32
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v39, v3, v30, v126
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v3, v232, v33
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v44, v2, v29, v169
	v_fma_f32 v40, v40, v29, v135
	v_fma_f32 v68, v1, v29, v123
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v1, off, off offset:884 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v45, v3, v28, v176
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v3, v249, v32
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v41, v41, v28, v206
	v_mov_b32_e32 v117, v130
	s_waitcnt vmcnt(4)
	v_fma_f32 v46, v46, v31, v116
	v_mov_b32_e32 v65, v225
	v_fma_f32 v70, v3, v31, v167
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:888
	scratch_load_b32 v29, off, off offset:860
	v_dual_mov_b32 v212, v88 :: v_dual_mov_b32 v219, v95
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v55, v54, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v167, v167, v70, s2
	v_cndmask_b32_e64 v70, v153, v37, s2
	v_cndmask_b32_e64 v227, v170, v43, s2
	v_cndmask_b32_e64 v234, v206, v41, s2
	v_cndmask_b32_e64 v161, v169, v44, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v2, v0, v32
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v0, v47, v30, v154
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v1, v1, v35
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v69, v2, v28, v179
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v2, off, off offset:892 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v28, v1, v17, v196
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v1, off, off offset:876 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v3, v3, v35
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v47, v29, v34
	scratch_load_b32 v29, off, off offset:852 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v30, v3, v18, v241
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:872
	scratch_load_b32 v54, off, off offset:840
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v198, v241, v30, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v1, v1, v35
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v49, v29, v34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v29, v1, v16, v117
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v1, off, off offset:856 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v3, v3, v33 :: v_dual_mul_f32 v56, v54, v32
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v48, v47, v17, v240
	v_fma_f32 v47, v49, v16, v60
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v49, off, off offset:868 ; 4-byte Folded Reload
	v_mul_f32_e32 v2, v2, v35
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v52, v3, v17, v237
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v3, off, off offset:896 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v211, v240, v48, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v31, v2, v19, v146
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v2, off, off offset:848 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v195, v146, v31, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v1, v1, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v50, v1, v19, v239
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v51, v49, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:880
	scratch_load_b32 v1, off, off offset:864
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v3, v3, v32
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v173, v239, v50, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v51, v51, v16, v235
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v2, v2, v34
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v16, v3, v16, v190
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v3, off, off offset:1020 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v53, v49, v33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v1, v1, v33
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v49, v2, v18, v238
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v2, off, off offset:900 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v53, v53, v19, v142
	v_fma_f32 v54, v1, v18, v225
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v1, v250, v35 :: v_dual_mov_b32 v250, v72
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v19, v55, v19, v175
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v55, off, off offset:992 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v3, v3, v35
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v72, v1, v25, v105
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v1, off, off offset:1016 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v18, v56, v18, v183
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v56, v255, v34
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v76, v3, v26, v151
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v3, off, off offset:1008 ; 4-byte Folded Reload
	v_mov_b32_e32 v255, v73
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v245, v117, v29, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v67, v56, v24, v149
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v56, off, off offset:1012 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v174, v183, v18, s2
	v_cndmask_b32_e64 v175, v175, v19, s2
	v_cndmask_b32_e64 v53, v142, v53, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v1, v1, v35
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v3, v3, v33
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v73, v1, v24, v104
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v1, off, off offset:984 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v55, v55, v34 :: v_dual_mul_f32 v56, v56, v33
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v224, v3, v25, v144
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v3, off, off offset:988 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v202, v55, v25, v150
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v55, off, off offset:1004 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v226, v56, v27, v136
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v56, off, off offset:972 ; 4-byte Folded Reload
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v2, v2, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v142, v136, v226, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v17, v2, v17, v191
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v2, off, off offset:1024 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v117, v191, v17, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v1, v1, v34
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v3, v3, v32
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v222, v1, v27, v147
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v1, off, off offset:1000 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v56, v56, v32
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v2, v2, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v75, v2, v27, v177
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v2, off, off offset:980 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v1, v1, v33
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v228, v1, v26, v187
	v_fma_f32 v1, v3, v24, v108
	v_fma_f32 v3, v56, v26, v106
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v2, v2, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v223, v2, v26, v145
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v2, off, off offset:996 ; 4-byte Folded Reload
	v_mul_f32_e32 v55, v55, v33
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:824 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v225, v55, v24, v182
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v55, off, off offset:976
	scratch_load_b32 v24, off, off offset:820
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v2, v2, v32
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v26, v26, v35
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v236, v2, v25, v109
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v25, off, off offset:816 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v55, v55, v32 :: v_dual_mul_f32 v24, v24, v35
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v62, v26, v14, v157
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:808 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v153, v109, v236, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v2, v55, v27, v107
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v55, v24, v13, v158
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v24, off, off offset:828 ; 4-byte Folded Reload
	v_mul_f32_e32 v27, v246, v34
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v184, v158, v55, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v63, v27, v13, v172
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v27, off, off offset:800 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v24, v24, v35
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v61, v24, v15, v192
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v24, v248, v34
	v_mov_b32_e32 v248, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v78, v24, v15, v209
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v24, off, off offset:812 ; 4-byte Folded Reload
	v_mul_f32_e32 v25, v25, v35
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v240, v209, v78, s2
	v_cndmask_b32_e64 v209, v123, v68, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v56, v25, v12, v118
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v194, v34
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v194, v238, v49, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v183, v118, v56, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v77, v25, v12, v128
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v243, v34
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v243, v196, v28, s2
	v_cndmask_b32_e64 v196, v60, v47, s2
	v_cndmask_b32_e64 v28, v235, v51, s2
	v_cndmask_b32_e64 v60, v237, v52, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v79, v25, v14, v171
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v25, off, off offset:804 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v27, v27, v33
	v_mul_f32_e32 v26, v26, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v241, v128, v77, s2
	v_cndmask_b32_e64 v239, v171, v79, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v81, v27, v12, v121
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v27, v189, v32
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v80, v26, v13, v141
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:832 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v86, v27, v14, v159
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v118, v141, v80, s2
	v_cndmask_b32_e64 v141, v187, v228, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v24, v24, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v82, v24, v15, v155
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v24, off, off offset:836
	scratch_load_b32 v15, off, off offset:948
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v25, v25, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v83, v25, v14, v185
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v14, off, off offset:920 ; 4-byte Folded Reload
	v_mov_b32_e32 v25, v7
	v_mov_b32_e32 v7, v4
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v15, v15, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v92, v15, v21, v178
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v15, off, off offset:960 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v14, v14, v35
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v91, v14, v22, v148
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v14, off, off offset:964 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v125, v14, v21, v200
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v14, off, off offset:932 ; 4-byte Folded Reload
	v_mul_f32_e32 v15, v15, v33
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v4, v15, v20, v129
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v15, off, off offset:908 ; 4-byte Folded Reload
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v26, v26, v32 :: v_dual_mov_b32 v251, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v65, v54, s2
	v_cndmask_b32_e64 v54, v190, v16, s2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v16, v156, s1, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v156, v154, v0, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v85, v26, v12, v164
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v12, off, off offset:924 ; 4-byte Folded Reload
	v_mov_b32_e32 v26, v89
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v129, v129, v4, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v14, v14, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v220, v14, v20, v139
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	scratch_load_b32 v14, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v15, v15, v32
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v130, v15, v23, v138
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	scratch_load_b32 v15, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v24, v24, v32
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v12, v12, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v84, v24, v13, v181
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v88, v12, v21, v115
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v12, off, off offset:928
	scratch_load_b32 v13, off, off offset:916
	scratch_load_b32 v24, off, off offset:904
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v14, v14, s1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v15, v15, s1, 1
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v12, v12, v35
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v24, v24, v32
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v90, v12, v23, v152
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v12, off, off offset:944 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v221, v24, v22, v127
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v172, v63, s2
	v_cndmask_b32_e64 v63, v121, v81, s2
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v81, v179 :: v_dual_mul_f32 v12, v12, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v94, v12, v23, v199
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v12, off, off offset:968 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v12, v12, v33
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v253, v12, v23, v180
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v12, off, off offset:952 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v12, v12, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v242, v12, v21, v140
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	scratch_load_b32 v12, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v12, v12, s4, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v13, v13, v35 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v89, v13, v20, v168
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v13, off, off offset:940 ; 4-byte Folded Reload
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	buffer_load_u16 v12, v12, s[24:27], 0 offen
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v13, v13, v34 :: v_dual_lshlrev_b32 v12, 16, v12
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v232, v13, v20, v137
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v13, off, off offset:936 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v137, v137, v232, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v13, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v95, v13, v22, v188
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v13, off, off offset:956 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v136, v188, v95, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v13, v33
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v218, v13, v22, v163
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v13, v162, s1, 1
	v_mov_b32_e32 v162, v215
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v123, v163, v218, s2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x3
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v229, v12 offset:36864
	scratch_load_b32 v12, off, off offset:1104 ; 4-byte Folded Reload
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v27, 16, v16
	v_lshlrev_b32_e32 v189, 16, v13
	v_lshlrev_b32_e32 v65, 16, v14
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v16, v12, v189 :: v_dual_lshlrev_b32 v49, 16, v15
	scratch_load_b32 v12, off, off offset:1100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v12, v189
	scratch_load_b32 v12, off, off offset:1096 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v12, v189
	scratch_load_b32 v12, off, off offset:1092 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v12, v189
	scratch_load_b32 v12, off, off offset:1068 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v12, v65
	scratch_load_b32 v12, off, off offset:1060 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v12, v65
	scratch_load_b32 v12, off, off offset:1084 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v12, v65
	scratch_load_b32 v12, off, off offset:1076 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v23, v12, v65
	scratch_load_b32 v12, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v29, v12, v49
	scratch_load_b32 v12, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v30, v12, v49
	scratch_load_b32 v12, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v12, v49
	scratch_load_b32 v12, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v12, v49
	scratch_load_b32 v12, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v48, v12, v27
	scratch_load_b32 v12, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v50, v12, v27
	scratch_load_b32 v12, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v51, v12, v27
	scratch_load_b32 v12, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v52, v12, v27
	ds_load_b128 v[12:15], v244 offset:36864
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v190, v17, v12, v245
	v_fma_f32 v213, v21, v12, v196
	v_fma_f32 v247, v30, v12, v28
	v_fma_f32 v12, v50, v12, v54
	v_fma_f32 v235, v16, v13, v243
	v_mov_b32_e32 v16, v192
	v_fma_f32 v193, v18, v15, v195
	v_fma_f32 v192, v19, v14, v198
	scratch_store_b32 off, v12, off offset:124 ; 4-byte Folded Spill
	v_fma_f32 v12, v48, v13, v117
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v215, v16, v61, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v191, v20, v13, v211
	v_fma_f32 v237, v22, v15, v173
	v_fma_f32 v246, v23, v14, v194
	scratch_store_b32 off, v12, off offset:128 ; 4-byte Folded Spill
	v_fma_f32 v12, v51, v14, v174
	v_fma_f32 v252, v29, v13, v60
	v_fma_f32 v249, v31, v15, v53
	v_fma_f32 v254, v47, v14, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v164, v85, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	scratch_store_b32 off, v12, off offset:100 ; 4-byte Folded Spill
	v_fma_f32 v12, v52, v15, v175
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v181, v84, s2
	v_cndmask_b32_e64 v29, v159, v86, s2
	v_cndmask_b32_e64 v181, v157, v62, s2
	v_cndmask_b32_e64 v62, v155, v82, s2
	scratch_store_b32 off, v12, off offset:104 ; 4-byte Folded Spill
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v12, off, off offset:1072 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v155, v143, v71, s2
	v_cndmask_b32_e64 v71, v210, v38, s2
	v_cndmask_b32_e64 v30, v160, v87, s2
	v_cndmask_b32_e64 v61, v185, v83, s2
	v_cndmask_b32_e64 v157, v116, v46, s2
	v_cndmask_b32_e64 v164, v147, v222, s2
	v_cndmask_b32_e64 v147, v144, v224, s2
	v_cndmask_b32_e64 v144, v182, v225, s2
	v_cndmask_b32_e64 v60, v60, v252, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v16, v12, v189
	scratch_load_b32 v12, off, off offset:1064 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v41, v216, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v12, v189
	scratch_load_b32 v12, off, off offset:1088 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v12, v189
	scratch_load_b32 v12, off, off offset:1080 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v43, v166, v49
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v12, v189
	scratch_load_b32 v12, off, off offset:1032 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v12, v65
	scratch_load_b32 v12, off, off offset:1028 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v44, v233, v49
	v_dual_mul_f32 v46, v64, v49 :: v_dual_mul_f32 v95, v59, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v28, v247, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v68, v208, v27
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v12, v65
	scratch_load_b32 v12, off, off offset:1040 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v12, v65
	scratch_load_b32 v12, off, off offset:1036 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v23, v12, v65
	scratch_load_b32 v12, off, off offset:1048 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v48, v12, v49
	scratch_load_b32 v12, off, off offset:1044 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v50, v12, v49
	scratch_load_b32 v12, off, off offset:1056 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v55, v12, v49
	scratch_load_b32 v12, off, off offset:1052 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v56, v12, v49
	scratch_load_b32 v12, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v77, v12, v27
	scratch_load_b32 v12, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v78, v12, v27
	scratch_load_b32 v12, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v38, v66, v189
	v_mul_f32_e32 v37, v205, v189
	v_mul_f32_e32 v0, v207, v189
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v207, v150, v202, s2
	v_cndmask_b32_e64 v202, v149, v67, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v67, v98, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v150, v145, v223, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v79, v12, v27
	scratch_load_b32 v12, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v80, v12, v27
	ds_load_b128 v[12:15], v244 offset:36880
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v52, v17, v12, v183
	v_fma_f32 v179, v21, v12, v241
	v_fma_f32 v50, v50, v12, v63
	v_fma_f32 v12, v78, v12, v47
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v135, v40, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v40, v162, v65
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v171, v20, v13, v24
	v_fma_f32 v51, v16, v13, v184
	scratch_store_b32 off, v12, off offset:108 ; 4-byte Folded Spill
	v_fma_f32 v12, v77, v13, v31
	v_fma_f32 v121, v18, v15, v215
	v_fma_f32 v185, v19, v14, v181
	v_fma_f32 v172, v22, v15, v240
	v_fma_f32 v238, v23, v14, v239
	scratch_store_b32 off, v12, off offset:112 ; 4-byte Folded Spill
	v_fma_f32 v12, v79, v14, v29
	v_fma_f32 v55, v55, v15, v62
	v_fma_f32 v56, v56, v14, v61
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v79, v103, v27
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v48, v48, v13, v118
	scratch_store_b32 off, v12, off offset:92 ; 4-byte Folded Spill
	v_fma_f32 v12, v80, v15, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v126, v39, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v80, v119, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v135, v178, v92, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v92, v219, v49
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	scratch_store_b32 off, v12, off offset:96 ; 4-byte Folded Spill
	scratch_load_b32 v12, off, off offset:912 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v63, v63, v50, s3
	v_cndmask_b32_e64 v62, v62, v55, s3
	v_cndmask_b32_e64 v61, v61, v56, s3
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v12, v12, s4, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v12
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[16:19], v244 offset:37376
	ds_load_b128 v[12:15], v244 offset:37392
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v229, v20 offset:36864
	v_mov_b32_e32 v20, v176
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v176, v81, v69, s2
	v_cndmask_b32_e64 v69, v165, v36, s2
	v_cndmask_b32_e64 v229, v204, v42, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v42, v214, v65 :: v_dual_mul_f32 v81, v120, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v159, v20, v45, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v20, off, off offset:88 ; 4-byte Folded Reload
	v_mul_f32_e32 v45, v102, v49
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v36, v20, v189
	scratch_load_b32 v20, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v4, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v39, v20, v65
	ds_load_b128 v[20:23], v244 offset:36864
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v82, v0, v21, v69
	v_fma_f32 v84, v37, v23, v71
	v_fma_f32 v85, v38, v22, v77
	v_fma_f32 v86, v39, v21, v78
	v_fma_f32 v87, v40, v20, v234
	v_fma_f32 v210, v41, v23, v229
	v_fma_f32 v208, v42, v22, v227
	v_fma_f32 v170, v43, v21, v161
	v_fma_f32 v160, v45, v23, v157
	v_fma_f32 v158, v46, v22, v156
	v_fma_f32 v68, v68, v21, v209
	v_fma_f32 v0, v79, v20, v176
	v_fma_f32 v169, v80, v23, v167
	v_fma_f32 v154, v81, v22, v155
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v39, v93, v65
	v_mul_f32_e32 v79, v100, v27
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v162, v44, v20, v159
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v93, v7, v27
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v83, v36, v20, v70
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[20:23], v244 offset:36880
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v107, v2, s2
	v_cndmask_b32_e64 v44, v106, v3, s2
	v_cndmask_b32_e64 v3, v105, v72, s2
	v_cndmask_b32_e64 v72, v104, v73, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v2, v132, v189
	v_mul_f32_e32 v40, v5, v65
	v_mul_f32_e32 v38, v96, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v108, v1, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v186, v189
	v_mul_f32_e32 v42, v10, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v177, v75, s2
	v_cndmask_b32_e64 v75, v151, v76, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v36, v74, v189
	v_mul_f32_e32 v37, v203, v189
	v_mul_f32_e32 v41, v97, v65
	v_mul_f32_e32 v43, v8, v49
	v_mul_f32_e32 v76, v11, v49
	v_mul_f32_e32 v80, v99, v27
	v_mul_f32_e32 v81, v58, v27
	v_mul_f32_e32 v104, v101, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v132, v200, v125, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v74, v231, v49
	v_mul_f32_e32 v96, v25, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v125, v180, v253, s2
	v_cndmask_b32_e64 v58, v53, v249, s3
	v_cndmask_b32_e64 v78, v78, v86, s3
	v_cndmask_b32_e64 v68, v209, v68, s3
	v_cndmask_b32_e64 v0, v176, v0, s3
	v_cndmask_b32_e64 v64, v155, v154, s3
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v106, v2, v20, v72
	v_mov_b32_e32 v2, v139
	v_fma_f32 v204, v40, v23, v164
	v_fma_f32 v109, v38, v21, v207
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v38, v4, v189
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v105, v1, v21, v3
	v_fma_f32 v151, v42, v21, v147
	v_fma_f32 v145, v67, v23, v142
	v_fma_f32 v67, v79, v21, v153
	v_mov_b32_e32 v21, v140
	v_fma_f32 v107, v36, v23, v73
	v_fma_f32 v108, v37, v22, v75
	v_fma_f32 v206, v39, v20, v202
	v_fma_f32 v166, v41, v22, v150
	v_fma_f32 v149, v43, v20, v144
	v_fma_f32 v143, v76, v22, v141
	v_fma_f32 v140, v80, v20, v46
	v_fma_f32 v139, v81, v23, v45
	v_mov_b32_e32 v1, v138
	v_fma_f32 v138, v104, v22, v44
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v115, v88, s2
	v_cndmask_b32_e64 v79, v168, v89, s2
	v_cndmask_b32_e64 v81, v148, v91, s2
	v_cndmask_b32_e64 v148, v199, v94, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v94, v9, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v152, v90, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v42, v26, v65
	v_mul_f32_e32 v43, v212, v65
	v_mul_f32_e32 v90, v230, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v127, v221, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v89, v124, v65
	v_mul_f32_e32 v88, v217, v65
	v_mul_f32_e32 v91, v6, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v2, v220, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b32 v2, off, off offset:144
	scratch_load_b32 v4, off, off offset:148
	scratch_load_b128 v[8:11], off, off offset:1144
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v21, v242, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[20:23], v244 offset:37376
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v1, v130, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v134, v189
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v153, v67, s3
	v_cndmask_b32_e64 v46, v46, v140, s3
	scratch_load_b32 v25, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v97, v1, v21, v76
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v69, v82, s3
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v205, v42, v21, v135
	v_fma_f32 v203, v43, v20, v137
	v_fma_f32 v134, v90, v20, v129
	v_fma_f32 v42, v94, v20, v40
	v_fma_f32 v146, v74, v21, v132
	v_fma_f32 v43, v93, v21, v41
	v_fma_f32 v99, v38, v23, v80
	v_fma_f32 v152, v89, v22, v136
	v_fma_f32 v127, v92, v22, v123
	v_fma_f32 v38, v96, v22, v36
	v_fma_f32 v165, v88, v23, v148
	v_fma_f32 v130, v91, v23, v125
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v80, v99, s3
	v_cndmask_b32_e64 v43, v41, v43, s3
	v_cndmask_b32_e64 v40, v40, v42, s3
	v_cndmask_b32_e64 v36, v36, v38, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.h, v32.l
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v2, v2, v189
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v39, v4, v189
	scratch_load_b32 v4, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v98, v2, v20, v79
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v2, 0xbfb8aa3b, v1
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v100, v39, v22, v81
	v_fma_f32 v39, v95, v23, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v25, v174, v25, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v39, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v2, v2, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v2, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v1, v2, v1
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v20, v23, v22
	v_fmac_f32_e32 v23, v69, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v23, v22
	v_div_fmas_f32 v20, v20, v21, v23
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v70, v83, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v1, v20, v2, v1
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v77, v85, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_mul_f32_e32 v2, 0xbfb8aa3b, v20
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v23
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v23, null, v22, v22, v21
	v_rcp_f32_e32 v69, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v23, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v21, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v70, v69
	v_fma_f32 v82, -v23, v74, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v82, v69
	v_fma_f32 v23, -v23, v74, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v23, v23, v69, v74
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v71, v84, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v70, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v74, v71
	v_fma_f32 v82, -v71, v74, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v82, v74
	v_div_scale_f32 v82, vcc_lo, v69, v70, v69
	v_mul_f32_e32 v83, v82, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v71, v83, v82
	v_fmac_f32_e32 v83, v84, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v83, v82
	v_div_fmas_f32 v71, v71, v74, v83
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v20
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v74
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v74, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v74, v74, v20
	v_rcp_f32_e32 v77, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v2, v77, 1.0
	v_fmac_f32_e32 v77, v82, v77
	v_div_scale_f32 v82, vcc_lo, v20, v74, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v83, v82, v77
	v_fma_f32 v84, -v2, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v77
	v_fma_f32 v2, -v2, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v77, v2, v77, v83
	v_div_fixup_f32 v2, v23, v22, v21
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v3, v105, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v3, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v3, v3
	v_ldexp_f32 v3, v3, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v3, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v3
	v_fma_f32 v82, -v3, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v82, v23
	v_div_scale_f32 v82, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v83, v82, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v3, v83, v82
	v_fmac_f32_e32 v83, v84, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v3, -v3, v83, v82
	v_div_fmas_f32 v23, v3, v23, v83
	v_div_fixup_f32 v3, v71, v70, v69
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v72, v106, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v71
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v71
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v69, v69, v70
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v72, 1.0, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v72, v72, v71
	v_rcp_f32_e32 v70, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v69, v70, 1.0
	v_fmac_f32_e32 v70, v82, v70
	v_div_scale_f32 v82, vcc_lo, v71, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v83, v82, v70
	v_fma_f32 v84, -v69, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v70
	v_fma_f32 v69, -v69, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v82, v69, v70, v83
	v_div_fixup_f32 v69, v77, v74, v20
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v73, v107, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v71, v82, v72, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v70, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v20
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v70, v70, v73
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v73, 1.0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v73, v73, v20
	v_rcp_f32_e32 v74, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v70, v74, 1.0
	v_fmac_f32_e32 v74, v77, v74
	v_div_scale_f32 v77, vcc_lo, v20, v73, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v83, v77, v74
	v_fma_f32 v84, -v70, v83, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v74
	v_fma_f32 v70, -v70, v83, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v74, v70, v74, v83
	v_div_fixup_f32 v70, v23, v22, v21
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v75, v108, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v23, null, v22, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v75, v23
	v_fma_f32 v77, -v23, v75, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v77, v75
	v_div_scale_f32 v77, vcc_lo, v21, v22, v21
	v_mul_f32_e32 v83, v77, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v23, v83, v77
	v_fmac_f32_e32 v83, v84, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v23, v83, v77
	v_div_fmas_f32 v23, v23, v75, v83
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v76, v97, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v72, 0xbfb8aa3b, v75
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v72
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v75
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v72, v72, v76
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v76, 1.0, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v76, v76, v75
	v_rcp_f32_e32 v77, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v72, v77, 1.0
	v_fmac_f32_e32 v77, v82, v77
	v_div_scale_f32 v82, vcc_lo, v75, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v83, v82, v77
	v_fma_f32 v84, -v72, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v77
	v_fma_f32 v72, -v72, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v77, v72, v77, v83
	v_div_fixup_f32 v72, v74, v73, v20
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v79, v98, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v73, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v73, v73
	v_ldexp_f32 v73, v73, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v79, 1.0, v73
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, null, v79, v79, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v74, v73
	v_fma_f32 v82, -v73, v74, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v82, v74
	v_div_scale_f32 v82, vcc_lo, v20, v79, v20
	v_mul_f32_e32 v83, v82, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v73, v83, v82
	v_fmac_f32_e32 v83, v84, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v73, v83, v82
	v_div_fmas_f32 v82, v73, v74, v83
	v_div_fixup_f32 v73, v23, v22, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v83, 1.0, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v21, null, v83, v83, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v21
	v_fma_f32 v23, -v21, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v80, v83, v80
	v_mul_f32_e32 v74, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v21, v74, v23
	v_fmac_f32_e32 v74, v84, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v21, v74, v23
	v_div_fmas_f32 v84, v21, v22, v74
	v_div_fixup_f32 v74, v77, v76, v75
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v81, v100, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v76
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v76
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v77, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v21, null, v77, v77, v76
	v_rcp_f32_e32 v22, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v21, v22, 1.0
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v76, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v23, v22
	v_fma_f32 v81, -v21, v75, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v81, v22
	v_fma_f32 v21, -v21, v75, v23
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v81, v21, v22, v75
	v_div_fixup_f32 v75, v82, v79, v20
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v20, off, off offset:776 ; 4-byte Folded Reload
	v_mul_f32_e32 v82, v122, v189
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v76, v81, v77, v76
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v77, off, off offset:768 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v81, v131, v189 :: v_dual_mul_f32 v20, v20, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v20, v20, v9, v114
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v114, v20, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[20:23], v244 offset:37392
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v66, v82, v21, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v79, v66, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v66, v66
	v_ldexp_f32 v66, v66, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v82, 1.0, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v82, v82, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v85, v66
	v_fma_f32 v88, -v66, v85, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, vcc_lo, v79, v82, v79
	v_mul_f32_e32 v89, v88, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v66, v89, v88
	v_fmac_f32_e32 v89, v90, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v89, v88
	v_div_fmas_f32 v85, v66, v85, v89
	v_div_fixup_f32 v66, v84, v83, v80
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v80, off, off offset:772 ; 4-byte Folded Reload
	v_mul_f32_e32 v83, v133, v189
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v114, v85, v82, v79
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:764
	scratch_load_b32 v82, off, off offset:132
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v77, v77, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v77, v77, v11, v201
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v201, v77, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v81, v81, v23, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v77, v81, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v81, 0xbfb8aa3b, v77 :: v_dual_mul_f32 v80, v80, v35
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v79, v79, v35
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v80, v80, v8, v113
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v82, v82, v189
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v79, v79, v10, v197
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v113, v80, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v79, v197, v79, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v83, v83, v20, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v82, v82, v22, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v80, v83, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v79, v79, v82, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v83, 0xbfb8aa3b, v80 :: v_dual_mul_f32 v82, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v83
	v_cndmask_b32_e64 v83, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v84, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v83, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v83, v83
	v_ldexp_f32 v83, v83, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v83, 1.0, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v84, null, v83, v83, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v88, v84
	v_fma_f32 v89, -v84, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v80, v83, v80
	v_mul_f32_e32 v90, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v84, v90, v89
	v_fmac_f32_e32 v90, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v84, v90, v89
	v_div_fmas_f32 v84, v84, v88, v90
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v115, v84, v83, v80
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v80, 0xbfb8aa3b, v78 :: v_dual_fmac_f32 v81, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v81, v81
	v_ldexp_f32 v81, v81, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v81, 1.0, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v88, null, v81, v81, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v90, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v77, v81, v77
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v88, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v91, v90
	v_div_fmas_f32 v88, v88, v89, v91
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v113, v88, v81, v77
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v234, v87, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v82, 0xbfb8aa3b, v79 :: v_dual_mul_f32 v81, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v82, v82
	v_ldexp_f32 v82, v82, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v82, 1.0, v82
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v82, v82, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v85
	v_fma_f32 v90, -v85, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v79, v82, v79
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v85, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v85, v91, v90
	v_div_fmas_f32 v85, v85, v89, v91
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v116, v85, v82, v79
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v83, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v229, v210, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v82, 0xbfb8aa3b, v79
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v80, v80, v83
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v80, 1.0, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v83, null, v80, v80, v78
	v_rcp_f32_e32 v84, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v83, v84, 1.0
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, vcc_lo, v78, v80, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v89, v86, v84
	v_fma_f32 v90, -v83, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v84
	v_fma_f32 v83, -v83, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v83, v83, v84, v89
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v122, v83, v80, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v84, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v227, v208, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v81, 0xbfb8aa3b, v77 :: v_dual_mul_f32 v80, 0xbfb8aa3b, v78
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v81, v81, v84
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v81, 1.0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v84, null, v81, v81, v77
	v_rcp_f32_e32 v86, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v84, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v77, v81, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v84, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v84, -v84, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v84, v84, v86, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v82
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v124, v84, v81, v77
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v207, v109, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v82, 0xbfb8aa3b, v79 :: v_dual_mul_f32 v81, 0xbfb8aa3b, v77
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v82, v82, v85
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v82, 1.0, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v82, v82, v79
	v_rcp_f32_e32 v86, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v85, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v79, v82, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v85, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v85, -v85, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v85, v85, v86, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v80
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v126, v85, v82, v79
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v83, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v202, v206, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v78
	v_mul_f32_e32 v82, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v80, v80
	v_ldexp_f32 v80, v80, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v80, 1.0, v80
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v83, null, v80, v80, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v83
	v_fma_f32 v87, -v83, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v78, v80, v78
	v_mul_f32_e32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v83, v88, v87
	v_fmac_f32_e32 v88, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v83, v88, v87
	v_div_fmas_f32 v83, v83, v86, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v128, v83, v80, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v84, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v164, v204, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v81, v81
	v_ldexp_f32 v81, v81, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v81, 1.0, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v84, null, v81, v81, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v87, -v84, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v77, v81, v77
	v_mul_f32_e32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v84, v88, v87
	v_fmac_f32_e32 v88, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v84, v88, v87
	v_div_fmas_f32 v84, v84, v86, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v82
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v79
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v82, v82, v85
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v82, 1.0, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v82, v82, v79
	v_rcp_f32_e32 v86, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v85, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v79, v82, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v88, v87, v86
	v_div_fixup_f32 v131, v84, v81, v77
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v150, v166, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v80, 0xbfb8aa3b, v78
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v89, -v85, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v81, 0xbfb8aa3b, v77 :: v_dual_fmac_f32 v88, v89, v86
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v85, -v85, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v85, v85, v86, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v80
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v133, v85, v82, v79
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v83, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v135, v205, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v78
	v_mul_f32_e32 v82, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v80, v80
	v_ldexp_f32 v80, v80, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v80, 1.0, v80
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v83, null, v80, v80, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v83
	v_fma_f32 v87, -v83, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v78, v80, v78
	v_mul_f32_e32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v83, v88, v87
	v_fmac_f32_e32 v88, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v83, v88, v87
	v_div_fmas_f32 v83, v83, v86, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v135, v83, v80, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v84, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v137, v203, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v81, 0xbfb8aa3b, v77 :: v_dual_mul_f32 v80, 0xbfb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v81, v81
	v_ldexp_f32 v81, v81, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v81, 1.0, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v84, null, v81, v81, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v87, -v84, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v77, v81, v77
	v_mul_f32_e32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v84, v88, v87
	v_fmac_f32_e32 v88, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v84, v88, v87
	v_div_fmas_f32 v84, v84, v86, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v137, v84, v81, v77
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v148, v165, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v82, 0xbfb8aa3b, v79 :: v_dual_mul_f32 v81, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v82, v82
	v_ldexp_f32 v82, v82, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v82, 1.0, v82
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v82, v82, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v85
	v_fma_f32 v87, -v85, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v79, v82, v79
	v_mul_f32_e32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v85, v88, v87
	v_fmac_f32_e32 v88, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v85, v88, v87
	v_div_fmas_f32 v85, v85, v86, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v148, v85, v82, v79
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v83, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v136, v152, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v82, 0xbfb8aa3b, v79
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v80, v80, v83
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v80, 1.0, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v83, null, v80, v80, v78
	v_rcp_f32_e32 v86, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v83, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v78, v80, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v83, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v83, -v83, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v83, v83, v86, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v150, v83, v80, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v84, 0, 0xffffffc0, vcc_lo
	scratch_load_b32 v78, off, off offset:84 ; 4-byte Folded Reload
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v81, v81
	v_ldexp_f32 v81, v81, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v81, 1.0, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v84, null, v81, v81, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v87, -v84, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v77, v81, v77
	v_mul_f32_e32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v84, v88, v87
	v_fmac_f32_e32 v88, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v84, v88, v87
	v_div_fmas_f32 v84, v84, v86, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v136, v84, v81, v77
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v77, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v82, v82
	v_ldexp_f32 v82, v82, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v82, 1.0, v82
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v82, v82, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v85
	v_fma_f32 v87, -v85, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v79, v82, v79
	v_mul_f32_e32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v85, v88, v87
	v_fmac_f32_e32 v88, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v85, v88, v87
	v_div_fmas_f32 v85, v85, v86, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v152, v85, v82, v79
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v77, v77, v34
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v77, v77, v9, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v78, v77, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v78, v251, v65
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v78, v78, v21, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v77, v78, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v78, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v78
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v78, v78
	v_ldexp_f32 v78, v78, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v78, 1.0, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v80, null, v78, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v81, v80
	v_fma_f32 v83, -v80, v81, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v83, v81
	v_div_scale_f32 v83, vcc_lo, v77, v78, v77
	v_mul_f32_e32 v84, v83, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v80, v84, v83
	v_fmac_f32_e32 v84, v86, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v80, v84, v83
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v83, v248, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v80, v80, v81, v84
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v81, off, off offset:724 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v81, v81, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v81, v81, v8, v112
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v81, v112, v81, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v112, v80, v78, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v161, v170, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v83, v83, v20, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v78, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v81, v81, v83, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v83, 0xbfb8aa3b, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v83
	v_cndmask_b32_e64 v83, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v84, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v83, 0xbfb8aa3b, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v83, v83
	v_ldexp_f32 v83, v83, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v83, 1.0, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v84, null, v83, v83, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v87, -v84, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v81, v83, v81
	v_mul_f32_e32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v84, v88, v87
	v_fmac_f32_e32 v88, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v84, -v84, v88, v87
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v87, v255, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v84, v84, v86, v88
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v86, off, off offset:704 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v86, v86, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v86, v86, v11, v111
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v111, v86, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v111, v84, v83, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v87, v87, v23, v86
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v86, v87, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v87, 0xbfb8aa3b, v86
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v86
	v_exp_f32_e32 v87, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v87, v87, v88
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v87, 1.0, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v88, null, v87, v87, v86
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v88, v89, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v86, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v88, -v88, v91, v90
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v90, v250, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v88, v88, v89, v91
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v89, off, off offset:692 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v89, v89, v34
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v89, v89, v10, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v110, v89, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v110, v88, v87, v86
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v90, v90, v22, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v89, v90, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v90, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v90
	v_cndmask_b32_e64 v90, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v90, v90
	v_ldexp_f32 v90, v90, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v90, 1.0, v90
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v91, null, v90, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v91
	v_fma_f32 v93, -v91, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v89, v90, v89
	v_mul_f32_e32 v94, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v91, v94, v93
	v_fmac_f32_e32 v94, v95, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v94, v93
	v_div_fmas_f32 v91, v91, v92, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v109, v91, v90, v89
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v78, v78
	v_ldexp_f32 v78, v78, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v78, 1.0, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v79, null, v78, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v80, v79
	v_fma_f32 v81, -v79, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v80
	v_div_scale_f32 v81, vcc_lo, v77, v78, v77
	v_mul_f32_e32 v82, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v79, v82, v81
	v_fmac_f32_e32 v82, v83, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v79, v82, v81
	v_div_fmas_f32 v79, v79, v80, v82
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v159, v162, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v81, 0xbfb8aa3b, v80
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v80
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v81, v81, v82
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v81, 1.0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v81, v81, v80
	v_rcp_f32_e32 v83, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v82, v83, 1.0
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v80, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v84, v83
	v_fma_f32 v86, -v82, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v86, v83
	v_fma_f32 v82, -v82, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v82, v83, v85
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v157, v160, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v157, v82, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v84, 0xbfb8aa3b, v83 :: v_dual_mul_f32 v59, v59, v157
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v84
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v83
	v_exp_f32_e32 v84, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v84, v84, v85
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v84, 1.0, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v84, v84, v83
	v_rcp_f32_e32 v86, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v85, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v83, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v85, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v85, -v85, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v85, v85, v86, v88
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v156, v158, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v158, v79, v78, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v144, v149, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v156, v85, v84, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v87, 0xbfb8aa3b, v86
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v60, v60, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v78, 0xbfb8aa3b, v77
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v58, v58, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v87, v87
	v_ldexp_f32 v87, v87, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v87, 1.0, v87
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v88, null, v87, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v90, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v86, v87, v86
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v88, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v91, v90
	v_div_fmas_f32 v88, v88, v89, v91
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v147, v151, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v151, v88, v87, v86
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v90, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v90
	v_cndmask_b32_e64 v90, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v90, v90
	v_ldexp_f32 v90, v90, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v90, 1.0, v90
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v91, null, v90, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v91
	v_fma_f32 v93, -v91, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v89, v90, v89
	v_mul_f32_e32 v94, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v91, v94, v93
	v_fmac_f32_e32 v94, v95, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v94, v93
	v_div_fmas_f32 v91, v91, v92, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v147, v91, v90, v89
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v78, v78
	v_ldexp_f32 v78, v78, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v78, 1.0, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v79, null, v78, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v80, v79
	v_fma_f32 v81, -v79, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v80
	v_div_scale_f32 v81, vcc_lo, v77, v78, v77
	v_mul_f32_e32 v82, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v79, v82, v81
	v_fmac_f32_e32 v82, v83, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v79, v82, v81
	v_div_fmas_f32 v79, v79, v80, v82
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v142, v145, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v142, v79, v78, v77
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v81, 0xbfb8aa3b, v80
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v125, v130, s3
	v_cndmask_b32_e64 v130, v44, v138, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_mul_f32_e32 v78, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v44, 0xbfb8aa3b, v130
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v81, v81
	v_ldexp_f32 v81, v81, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v81, 1.0, v81
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v81, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v83, v82
	v_fma_f32 v84, -v82, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v80, v81, v80
	v_mul_f32_e32 v85, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v82, v85, v84
	v_fmac_f32_e32 v85, v86, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v82, v85, v84
	v_div_fmas_f32 v82, v82, v83, v85
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v141, v143, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v141, v82, v81, v80
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v84, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v62, v62, v141
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v84
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v83
	v_exp_f32_e32 v84, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v84, v84, v85
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v84, 1.0, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v84, v84, v83
	v_rcp_f32_e32 v86, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v85, v86, 1.0
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v83, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v85, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v85, -v85, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v85, v85, v86, v88
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v132, v146, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v87, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v87, v87
	v_ldexp_f32 v87, v87, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v87, 1.0, v87
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v88, null, v87, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v90, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v86, v87, v86
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v88, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v91, v90
	v_div_fmas_f32 v88, v88, v89, v91
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v129, v134, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v134, v85, v84, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v132, v88, v87, v86
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v90, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v90
	v_cndmask_b32_e64 v90, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v90, v90
	v_ldexp_f32 v90, v90, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v90, 1.0, v90
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v91, null, v90, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v91
	v_fma_f32 v93, -v91, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v89, v90, v89
	v_mul_f32_e32 v94, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v91, v94, v93
	v_fmac_f32_e32 v94, v95, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v94, v93
	v_div_fmas_f32 v91, v91, v92, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v129, v91, v90, v89
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v78, v78
	v_ldexp_f32 v78, v78, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v78, 1.0, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v79, null, v78, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v80, v79
	v_fma_f32 v81, -v79, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v81, v80
	v_div_scale_f32 v81, vcc_lo, v77, v78, v77
	v_mul_f32_e32 v82, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v79, v82, v81
	v_fmac_f32_e32 v82, v83, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v79, v82, v81
	v_div_fmas_f32 v79, v79, v80, v82
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v123, v127, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v123, v79, v78, v77
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v77, off, off offset:648
	scratch_load_b32 v78, off, off offset:80
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v81, 0xbfb8aa3b, v80
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v80
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v81, v81, v82
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v81, 1.0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v81, v81, v80
	v_rcp_f32_e32 v83, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v82, v83, 1.0
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v80, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v84, v83
	v_fma_f32 v86, -v82, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v86, v83
	v_fma_f32 v82, -v82, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v82, v82, v83, v85
	v_div_fixup_f32 v127, v82, v81, v80
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v77, v77, v33
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, v77, v9, v78
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v78, v77, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v78, v4, v49
	scratch_load_b32 v4, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v78, v78, v21, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v77, v78, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v78, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v78
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v78, v78
	v_ldexp_f32 v78, v78, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v78, 1.0, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v79, null, v78, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v83, v79
	v_fma_f32 v84, -v79, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v77, v78, v77
	v_mul_f32_e32 v85, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v79, v85, v84
	v_fmac_f32_e32 v85, v86, v83
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v79, -v79, v85, v84
	scratch_load_b32 v84, off, off offset:76 ; 4-byte Folded Reload
	v_div_fmas_f32 v79, v79, v83, v85
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v83, off, off offset:636 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v108, v79, v78, v77
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v77, 0xbfb8aa3b, v68
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v83, v83, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v83, v83, v8, v84
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v84, v83, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v84, v4, v49
	scratch_load_b32 v4, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v84, v84, v20, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v83, v84, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v84, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v84
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v85, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v84, v84
	v_ldexp_f32 v84, v84, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v84, 1.0, v84
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v85, null, v84, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v85
	v_fma_f32 v87, -v85, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v83, v84, v83
	v_mul_f32_e32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v85, v88, v87
	v_fmac_f32_e32 v88, v89, v86
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v85, -v85, v88, v87
	scratch_load_b32 v87, off, off offset:72 ; 4-byte Folded Reload
	v_div_fmas_f32 v85, v85, v86, v88
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v86, off, off offset:632 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v107, v85, v84, v83
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v86, v86, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v86, v86, v11, v87
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v87, v86, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v87, v4, v49
	scratch_load_b32 v4, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v87, v87, v23, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v86, v87, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v87, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v87, v87
	v_ldexp_f32 v87, v87, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v87, 1.0, v87
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v88, null, v87, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v90, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v86, v87, v86
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v88, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v88, -v88, v91, v90
	scratch_load_b32 v90, off, off offset:68 ; 4-byte Folded Reload
	v_div_fmas_f32 v88, v88, v89, v91
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v89, off, off offset:628 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v106, v88, v87, v86
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v89, v89, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v89, v89, v10, v90
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v90, v89, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v90, v4, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v90, v90, v22, v89
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v89, v90, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v90, 0xbfb8aa3b, v89
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v90
	v_cndmask_b32_e64 v90, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v91, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v89
	v_exp_f32_e32 v90, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v90, v90, v91
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v90, 1.0, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v91, null, v90, v90, v89
	v_rcp_f32_e32 v92, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v91, v92, 1.0
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v89, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v94, v93, v92
	v_fma_f32 v95, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v95, v92
	v_fma_f32 v91, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v91, v91, v92, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v77
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v105, v91, v90, v89
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v68
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v77, v77, v78
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v77, 1.0, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v78, null, v77, v77, v68
	v_rcp_f32_e32 v79, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v78, v79, 1.0
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v80, vcc_lo, v68, v77, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v80, v79
	v_fma_f32 v82, -v78, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v79
	v_fma_f32 v78, -v78, v81, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v78, v78, v79, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v79, 0xbfb8aa3b, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v125, v78, v77, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v79
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v167, v169, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v77, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v0
	v_exp_f32_e32 v79, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v79, v79, v80
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v79, 1.0, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v80, null, v79, v79, v0
	v_rcp_f32_e32 v81, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v80, v81, 1.0
	v_fmac_f32_e32 v81, v82, v81
	v_div_scale_f32 v82, vcc_lo, v0, v79, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v83, v82, v81
	v_fma_f32 v84, -v80, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v81
	v_fma_f32 v80, -v80, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v80, v81, v83
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v77
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v149, v80, v79, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v45, v139, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v68
	v_mul_f32_e32 v45, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v77, v77
	v_ldexp_f32 v77, v77, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v77, 1.0, v77
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v78, null, v77, v77, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v81, v78
	v_fma_f32 v82, -v78, v81, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v81
	v_div_scale_f32 v82, vcc_lo, v68, v77, v68
	v_mul_f32_e32 v83, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v78, v83, v82
	v_fmac_f32_e32 v83, v84, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v78, v83, v82
	v_div_fmas_f32 v78, v78, v81, v83
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v81, 0xbfb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v145, v78, v77, v68
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v81
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v64
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v81, v81, v82
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v81, 1.0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v82, null, v81, v81, v64
	v_rcp_f32_e32 v83, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v82, v83, 1.0
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v64, v81, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v84, v83
	v_fma_f32 v86, -v82, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v86, v83
	v_fma_f32 v82, -v82, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v82, v83, v85
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v83, 0xbfb8aa3b, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v146, v82, v81, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v83
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v25, v146
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v83, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v84, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, 0xbfb8aa3b, v67
	v_exp_f32_e32 v83, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v83, v83, v84
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v83, 1.0, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v84, null, v83, v83, v67
	v_rcp_f32_e32 v85, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v84, v85, 1.0
	v_fmac_f32_e32 v85, v86, v85
	v_div_scale_f32 v86, vcc_lo, v67, v83, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v87, v86, v85
	v_fma_f32 v88, -v84, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v88, v85
	v_fma_f32 v84, -v84, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v84, v84, v85, v87
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v85, 0xbfb8aa3b, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v143, v84, v83, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v85
	v_cndmask_b32_e64 v85, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v86, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v85, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v85, v85
	v_ldexp_f32 v85, v85, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v85, 1.0, v85
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v86, null, v85, v85, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v87, v86
	v_fma_f32 v88, -v86, v87, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, vcc_lo, v46, v85, v46
	v_mul_f32_e32 v89, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v86, v89, v88
	v_fmac_f32_e32 v89, v90, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v86, v89, v88
	v_div_fmas_f32 v86, v86, v87, v89
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v140, v86, v85, v46
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v45, v45
	v_ldexp_f32 v45, v45, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, null, v45, v45, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v64, v46
	v_fma_f32 v67, -v46, v64, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v67, v64
	v_div_scale_f32 v67, vcc_lo, v0, v45, v0
	v_mul_f32_e32 v68, v67, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v46, v68, v67
	v_fmac_f32_e32 v68, v77, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v46, v68, v67
	v_div_fmas_f32 v46, v46, v64, v68
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v139, v46, v45, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v243, v235, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.h, v32.l
	v_mov_b16_e32 v46.h, v32.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v44, v44, v64
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v138, 1.0, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, null, v138, v138, v130
	v_rcp_f32_e32 v64, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v44, v64, 1.0
	v_fmac_f32_e32 v64, v67, v64
	v_div_scale_f32 v67, vcc_lo, v130, v138, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v64
	v_fma_f32 v77, -v44, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v77, v64
	v_fma_f32 v44, -v44, v68, v67
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v144, v44, v64, v68
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v245, v190, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v181, v185, s3
	scratch_load_b32 v68, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v44, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v0.h
	v_mov_b16_e32 v2.h, v32.l
	v_mov_b16_e32 v44.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v44.l, v1.h
	v_cmp_o_f32_e64 s1, v1, v1
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v195, v193, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v1, v44, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v198, v192, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v0, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v0.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v0.l, 0x7fff, v44.h, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.h, v32.l
	v_mov_b16_e32 v44.l, v3.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v184, v51, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_mov_b16_e32 v45.l, v1.h
	v_cmp_o_f32_e64 s1, v1, v1
	v_and_b32_e32 v44, 1, v44
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v70
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v69, off, off offset:708 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v194, v246, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v3, v44, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v183, v52, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v2, v2
	v_add3_u32 v45, v1, v45, 0x7fff
	v_mov_b16_e32 v51.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v3, v71
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v2.h
	v_mov_b16_e32 v3.h, v32.l
	v_mov_b16_e32 v46.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s5, v1, v1
	v_and_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v46, 1, v46
	v_add3_u32 v3, v2, v3, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v215, v121, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v46, v1, v46, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v45.h, s1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v45, off, off offset:584 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v2, v72
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s4
	v_cndmask_b16 v2.l, 0x7fff, v46.h, s5
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v46, off, off offset:456
	scratch_load_b128 v[4:7], off, off offset:1128
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v64, v73
	scratch_load_b32 v64, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v1.h, 0x7fff, v44.h, vcc_lo
	v_mov_b16_e32 v44.l, v67.h
	v_mov_b16_e32 v44.h, v32.l
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_cmp_o_f32_e64 s1, v3, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v239, v238, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v44, v67, v44, 0x7fff
	scratch_load_b32 v67, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v69, v69, v189
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v45, v45, v35
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, v45, v5, v46
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v46, v45, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v46, off, off offset:580 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v46, v46, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v46, v46, v4, v64
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v64, v46, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v64, off, off offset:760 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v64, v64, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v64, v64, v17, v45
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v45, v64, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v64, off, off offset:756 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v45, v45, v74
	scratch_load_b32 v74, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v45, v45
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v64, v64, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v64, v64, v16, v46
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v46, v64, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v3.h
	v_mov_b16_e32 v64.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v64, 1, v64
	v_add3_u32 v64, v3, v64, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v46, v75
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.l, v45.h
	v_mov_b16_e32 v46.h, v32.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v75, off, off offset:524 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v3, v3
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v46, v45, v46, 0x7fff
	v_mov_b16_e32 v45.l, v3.h
	v_mov_b16_e32 v45.h, v32.l
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v3, v45, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v3, off, off offset:576 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s5
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v3, v3, v35
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v3, v3, v7, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v67, v3, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v67, off, off offset:572 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v67, v67, v35
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v67, v67, v6, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v68, v67, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v68, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v68, v68, v189
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v68, v68, v19, v3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v68, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v68, off, off offset:748 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v3, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v3.h, 0x7fff, v44.h, vcc_lo
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s4
	v_mov_b16_e32 v46.h, v32.l
	v_cndmask_b16 v3.l, 0x7fff, v64.h, s1
	v_mov_b16_e32 v46.l, v66.h
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v64, off, off offset:564 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v46, v66, v46, 0x7fff
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v66, off, off offset:440
	scratch_load_b128 v[77:80], off, off offset:1112
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v64, v64, v35
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, v64, v78, v66
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v66, v64, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v66, off, off offset:556 ; 4-byte Folded Reload
	v_mul_f32_e32 v68, v68, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v68, v68, v18, v67
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v67, v68, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v68, off, off offset:540 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v45, v67, v76
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:436
	scratch_load_b32 v76, off, off offset:684
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v45, v45
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v66, v66, v35
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, v66, v77, v67
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v67, v66, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v67, off, off offset:736 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v67, v67, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v67, v67, v13, v64
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v64, v67, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v67, off, off offset:728 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v64, v64, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v64, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v67, v67, v189
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v67, v67, v12, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v66, v67, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v45.h
	v_mov_b16_e32 v67.h, v32.l
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v67, v45, v67, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v45, v66, v115
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v64.h
	v_mov_b16_e32 v66.h, v32.l
	v_cmp_o_f32_e64 s5, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v66, v64, v66, 0x7fff
	v_mov_b16_e32 v64.l, v45.h
	v_mov_b16_e32 v64.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v64, 1, v64
	v_add3_u32 v64, v45, v64, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v45, off, off offset:548 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v45, v35
	v_mul_f32_e32 v35, v68, v35
	scratch_load_b32 v68, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v45, v45, v80, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v68, v45, s2
	scratch_load_b32 v68, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v35, v35, v79, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v68, v35, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v68, off, off offset:716 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v68, v68, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v68, v68, v15, v45
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v45, v68, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v68, v69, v14, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v69, v45, v113
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v35, v68, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v35.h, 0x7fff, v46.h, vcc_lo
	v_cndmask_b16 v35.l, 0x7fff, v67.h, s1
	v_cndmask_b16 v45.h, 0x7fff, v66.h, s4
	v_cndmask_b16 v45.l, 0x7fff, v64.h, s5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v46, v68, v116
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.h, v32.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v211, v191, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v69.h
	v_mov_b16_e32 v66.h, v32.l
	v_mov_b16_e32 v68.l, v46.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v196, v213, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v64, v64, v122
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v46, v46
	v_and_b32_e32 v66, 1, v66
	v_and_b32_e32 v68, 1, v68
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_cmp_o_f32_e64 s4, v64, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v66, v69, v66, 0x7fff
	v_add3_u32 v68, v46, v68, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v46, v67, v124
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v64.h
	v_mov_b16_e32 v67.h, v32.l
	v_mov_b16_e32 v69.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v69.l, v46.h
	v_cmp_o_f32_e64 s5, v46, v46
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v67, v64, v67, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v173, v237, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v69, v46, v69, 0x7fff
	v_cndmask_b16 v46.h, 0x7fff, v66.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v66, v70, v128 :: v_dual_mul_f32 v71, v64, v126
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.h, v32.l
	v_cndmask_b16 v46.l, 0x7fff, v68.h, s1
	v_cndmask_b16 v64.h, 0x7fff, v67.h, s4
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v70.l, v66.h
	v_cndmask_b16 v64.l, 0x7fff, v69.h, s5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v24, v171, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v71.h
	v_mov_b16_e32 v68.h, v32.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v241, v179, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v67, v67, v131 :: v_dual_and_b32 v70, 1, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v66, v66
	v_and_b32_e32 v68, 1, v68
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v70, v66, v70, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v69, v133
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v67.h
	v_add3_u32 v68, v71, v68, 0x7fff
	v_mov_b16_e32 v69.h, v32.l
	v_mov_b16_e32 v71.h, v32.l
	v_mov_b16_e32 v71.l, v66.h
	v_cmp_o_f32_e64 s4, v67, v67
	v_cmp_o_f32_e64 s5, v66, v66
	v_and_b32_e32 v69, 1, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v24, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v69, v67, v69, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v240, v172, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v71, v66, v71, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v70.h, s1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v70, off, off offset:568 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v66.h, 0x7fff, v68.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v73, v67, v135
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v67.l, 0x7fff, v71.h, s5
	scratch_load_b32 v71, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v68, v72, v137
	scratch_load_b32 v72, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v67.h, 0x7fff, v69.h, s4
	v_mov_b16_e32 v69.l, v73.h
	v_mov_b16_e32 v69.h, v32.l
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_cmp_o_f32_e64 s1, v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v69, v73, v69, 0x7fff
	scratch_load_b32 v73, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v26, v117, v24, s3
	scratch_load_b32 v24, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v26, v26, v125
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v70, v70, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v51.l, v26.h
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(3)
	v_fma_f32 v70, v70, v5, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v51, 1, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v71, v70, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v71, off, off offset:560 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v51, v26, v51, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v28, v54, v24, s3
	scratch_load_b32 v24, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v28, v28, v149 :: v_dual_mul_f32 v71, v71, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v71, v71, v4, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v72, v71, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v72, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v24, v175, v24, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v24, v24, v145
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v72, v65
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v72, v72, v17, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v70, v72, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v72, off, off offset:732 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v70, v70, v148
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v70, v70
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v72, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v72, v72, v16, v71
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v71, v72, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v72.l, v68.h
	v_mov_b16_e32 v72.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v72, 1, v72
	v_add3_u32 v72, v68, v72, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v68, v71, v150
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v71.l, v70.h
	v_mov_b16_e32 v71.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s5, v68, v68
	v_and_b32_e32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v70, v71, 0x7fff
	v_mov_b16_e32 v70.l, v68.h
	v_mov_b16_e32 v70.h, v32.l
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v70, v68, v70, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v68, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v69.l, 0x7fff, v70.h, s5
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v68, v68, v34
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v68, v68, v7, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v73, v68, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v73, off, off offset:544 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v73, v73, v34
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v73, v73, v6, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v74, v73, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v74, off, off offset:720 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v74, v74, v65
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v74, v74, v19, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v74, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v74, off, off offset:712 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v74, v74, v65
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v74, v74, v18, v73
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v73, v74, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v74, v68, v136
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v68.l, 0x7fff, v72.h, s1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v72, off, off offset:536 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v68.h, 0x7fff, v69.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v70, v73, v152
	scratch_load_b32 v73, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v69.h, 0x7fff, v71.h, s4
	v_mov_b16_e32 v71.l, v74.h
	v_mov_b16_e32 v71.h, v32.l
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_cmp_o_f32_e64 s1, v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v71, v74, v71, 0x7fff
	scratch_load_b32 v74, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v72, v72, v34
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, v72, v78, v73
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v73, v72, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v73, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v73, v73, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v73, v73, v77, v74
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v74, v73, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v74, off, off offset:700 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v74, v74, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v74, v74, v13, v72
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v72, v74, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v74, off, off offset:696 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v72, v72, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v72, v72
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v74, v74, v65
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v74, v74, v12, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v73, v74, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v74.l, v70.h
	v_mov_b16_e32 v74.h, v32.l
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v74, v70, v74, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v70, v73, v111
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v73.l, v72.h
	v_mov_b16_e32 v73.h, v32.l
	v_cmp_o_f32_e64 s5, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v73, v72, v73, 0x7fff
	v_mov_b16_e32 v72.l, v70.h
	v_mov_b16_e32 v72.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v72, 1, v72
	v_add3_u32 v72, v70, v72, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v70, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v70, v70, v34
	v_mul_f32_e32 v34, v75, v34
	scratch_load_b32 v75, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v70, v70, v80, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v75, v70, s2
	scratch_load_b32 v75, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v34, v34, v79, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v75, v34, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v75, off, off offset:688 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v75, v75, v65
	v_mul_f32_e32 v65, v76, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v75, v75, v15, v70
	v_fma_f32 v65, v65, v14, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v70, v75, s3
	v_cndmask_b32_e64 v75, v34, v65, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v65.l, 0x7fff, v72.h, s5
	v_mov_b16_e32 v72.h, v32.l
	v_cndmask_b16 v34.h, 0x7fff, v71.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v70, v70, v110 :: v_dual_mul_f32 v71, v75, v109
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v34.l, 0x7fff, v74.h, s1
	v_cndmask_b16 v65.h, 0x7fff, v73.h, s4
	v_cmp_o_f32_e64 s4, v60, v60
	v_mov_b16_e32 v72.l, v70.h
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_cmp_o_f32_e64 s1, v71, v71
	v_cmp_o_f32_e64 s5, v59, v59
	scratch_load_b32 v74, off, off offset:44 ; 4-byte Folded Reload
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v72, v70, v72, 0x7fff
	v_mov_b16_e32 v70.l, v71.h
	v_mov_b16_e32 v70.h, v32.l
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v70, v71, v70, 0x7fff
	v_mov_b16_e32 v71.l, v60.h
	v_mov_b16_e32 v71.h, v32.l
	v_and_b32_e32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v60, v71, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v57, v254, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v57.l, v59.h
	v_mov_b16_e32 v57.h, v32.l
	v_and_b32_e32 v57, 1, v57
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v73, v59, v57, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v59, v60, v151
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v60.l, v58.h
	v_mov_b16_e32 v60.h, v32.l
	v_cndmask_b16 v57.h, 0x7fff, v72.h, vcc_lo
	v_cndmask_b16 v57.l, 0x7fff, v70.h, s1
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v118, v48, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v60, 1, v60
	v_cmp_o_f32_e64 s1, v59, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v70, v70, v147
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v60, v58, v60, 0x7fff
	v_mov_b16_e32 v58.l, v59.h
	v_mov_b16_e32 v58.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v58, 1, v58
	v_add3_u32 v72, v59, v58, 0x7fff
	v_cndmask_b16 v59.h, 0x7fff, v60.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v60, v63, v142
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v63.l, v70.h
	v_mov_b16_e32 v63.h, v32.l
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_cndmask_b16 v59.l, 0x7fff, v72.h, s1
	v_cmp_o_f32_e64 s1, v60, v60
	v_cndmask_b16 v58.h, 0x7fff, v71.h, s4
	v_and_b32_e32 v63, 1, v63
	v_cmp_o_f32_e64 s4, v62, v62
	v_cndmask_b16 v58.l, 0x7fff, v73.h, s5
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:184
	scratch_load_b32 v72, off, off offset:180
	v_add3_u32 v63, v70, v63, 0x7fff
	v_mov_b16_e32 v70.l, v60.h
	v_mov_b16_e32 v70.h, v32.l
	scratch_load_b32 v73, off, off offset:48 ; 4-byte Folded Reload
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v70, v60, v70, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v60, v61, v134
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v61.l, v62.h
	v_mov_b16_e32 v61.h, v32.l
	v_cmp_o_f32_e64 s5, v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v61, 1, v61
	v_add3_u32 v61, v62, v61, 0x7fff
	v_mov_b16_e32 v62.l, v60.h
	v_mov_b16_e32 v62.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s4
	v_and_b32_e32 v62, 1, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v62, v60, v62, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v60, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v61.l, 0x7fff, v62.h, s5
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v60, v60, v33
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v60, v60, v5, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v71, v60, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v71, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v71, v71, v33
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v71, v71, v4, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v72, v71, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v72, off, off offset:680 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v72, v49
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v72, v72, v17, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v60, v72, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v72, off, off offset:676 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v72, v49
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v72, v72, v16, v71
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v71, v72, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v72, v60, v132
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v60.l, 0x7fff, v70.h, s1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v70, off, off offset:512 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v60.h, 0x7fff, v63.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v62, v71, v129
	scratch_load_b32 v71, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v63.l, v72.h
	v_mov_b16_e32 v63.h, v32.l
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_cmp_o_f32_e64 s1, v62, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v63, 1, v63
	v_add3_u32 v63, v72, v63, 0x7fff
	scratch_load_b32 v72, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v70, v70, v33
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, v70, v7, v71
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v71, v70, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v71, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v71, v71, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v71, v71, v6, v72
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v72, v71, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v72, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v72, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v72, v72, v19, v70
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v70, v72, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v72, off, off offset:668 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v70, v70, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v70, v70
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v72, v72, v49
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v72, v72, v18, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v71, v72, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v72.l, v62.h
	v_mov_b16_e32 v72.h, v32.l
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v62, v72, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v62, v71, v127
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v71.l, v70.h
	v_mov_b16_e32 v71.h, v32.l
	v_cmp_o_f32_e64 s5, v62, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v71, v70, v71, 0x7fff
	v_mov_b16_e32 v70.l, v62.h
	v_mov_b16_e32 v70.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v70, v62, v70, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v62, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v63.l, 0x7fff, v70.h, s5
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v62, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v62, v62, v78, v73
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v73, v62, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v73, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v73, v73, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v73, v73, v77, v74
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v74, v73, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v74, off, off offset:664 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v74, v74, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v74, v74, v13, v62
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v62, v74, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v74, off, off offset:660 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v74, v74, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v74, v74, v12, v73
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v73, v74, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v74, v62, v108
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v62.l, 0x7fff, v72.h, s1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v72, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v62.h, 0x7fff, v63.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v70, v73, v107
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v73, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v63.h, 0x7fff, v71.h, s4
	v_mov_b16_e32 v71.l, v74.h
	v_mov_b16_e32 v71.h, v32.l
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_cmp_o_f32_e64 s1, v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v71, v74, v71, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v74, off, off offset:652 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v72, v72, v33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v33, v73, v33
	scratch_load_b32 v73, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v72, v72, v80, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v73, v72, s2
	scratch_load_b32 v73, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v33, v33, v79, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v73, v33, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v73, off, off offset:656 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v73, v73, v49
	v_mul_f32_e32 v49, v74, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v73, v73, v15, v72
	v_fma_f32 v49, v49, v14, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v72, v73, s3
	v_cndmask_b32_e64 v33, v33, v49, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v49, v72, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v72.l, v70.h
	v_mov_b16_e32 v72.h, v32.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v33, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v49, v49
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s5, v33, v33
	v_add3_u32 v72, v70, v72, 0x7fff
	v_mov_b16_e32 v70.l, v49.h
	v_mov_b16_e32 v70.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v70, v49, v70, 0x7fff
	v_mov_b16_e32 v49.l, v33.h
	v_mov_b16_e32 v49.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v53, v33, v49, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v71.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_mov_b16_e32 v26.l, v28.h
	v_mov_b16_e32 v26.h, v32.l
	v_cndmask_b16 v33.l, 0x7fff, v72.h, s1
	v_cmp_o_f32_e64 s1, v28, v28
	v_cndmask_b16 v49.h, 0x7fff, v70.h, s4
	v_cmp_o_f32_e64 s4, v24, v24
	v_and_b32_e32 v26, 1, v26
	v_cndmask_b16 v41.h, 0x7fff, v51.h, vcc_lo
	v_cndmask_b16 v49.l, 0x7fff, v53.h, s5
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:640
	scratch_load_b32 v72, off, off offset:624
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v26, v28, v26, 0x7fff
	v_mov_b16_e32 v28.l, v24.h
	v_mov_b16_e32 v28.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b16 v41.l, 0x7fff, v26.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v26, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v28
	v_cmp_o_f32_e64 s1, v25, v25
	v_add3_u32 v28, v24, v28, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v24, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v70, v70, v27
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v72, v72, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v26, v47, v26, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v42, v26, v140
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v40
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v24, v31, v24, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v31, 0xbfb8aa3b, v43
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v24, v24, v143
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v25.h
	v_mov_b16_e32 v31.h, v32.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v47, v25, v31, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.h, 0x7fff, v28.h, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0x42800000, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.l, 0x7fff, v47.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v40
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v25, v25, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v26.l, v24.h
	v_mov_b16_e32 v26.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v51, 1.0, v25 :: v_dual_and_b32 v26, 1, v26
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v51, v51, v43
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v47, v24, v26, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v26, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v47.h, 0x7fff, v47.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v24, v28, v24
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v28, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v50, 1.0, v24
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	scratch_load_b32 v24, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v25, v28, 1.0
	v_fmac_f32_e32 v28, v48, v28
	v_div_scale_f32 v48, vcc_lo, v43, v51, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v26, v30, v26, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v50, v50, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v53, v26, v139
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v52, v30
	v_mul_f32_e32 v26, v48, v28
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v24, v29, v24, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v144, v138, v130
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v53.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v54, v24, v29
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v30, v52, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v52, v24, v52
	v_fma_f32 v24, -v25, v26, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v53, v38, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v26, v24, v28
	v_div_scale_f32 v24, s4, v40, v50, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v25, v26, v48
	v_mul_f32_e32 v48, v24, v52
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v55, v25, v28, v26
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:428
	scratch_load_b32 v28, off, off offset:432
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v30, v48, v24
	s_mov_b32 vcc_lo, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v53, v53
	scratch_load_b32 v53, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v43, v55, v51, v43
	v_fmac_f32_e32 v48, v25, v52
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.l, v42.h
	v_mov_b16_e32 v25.h, v32.l
	scratch_load_b32 v55, off, off offset:24 ; 4-byte Folded Reload
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v30, v48, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v39, v24, v52, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_add3_u32 v30, v42, v30, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v47.l, 0x7fff, v30.h, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v30, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v42
	v_mul_f32_e32 v42, 0xbfb8aa3b, v36
	v_cndmask_b32_e64 v52, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v42, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v37
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_waitcnt vmcnt(5)
	v_mul_lo_u32 v26, s23, v26
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(4)
	v_lshrrev_b32_e32 v56, 1, v28
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[24:25], null, s23, 48, v[26:27]
	v_lshl_add_u32 v29, s23, 4, v26
	v_lshl_add_u32 v28, s23, 5, v26
	s_mov_b32 s23, 0x31027000
	v_add3_u32 v25, s33, s22, v56
	scratch_load_b32 v56, off, off offset:32 ; 4-byte Folded Reload
	s_mov_b32 s22, 0x7ffffffe
	v_add_lshl_u32 v26, v25, v26, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v48, v30, v32
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v30, 0x80, v25
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v42, v42, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v4, v42, v4, v53
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v52
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v52.l, v54.h
	v_mov_b16_e32 v52.h, v32.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v53, v4, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v52, 1, v52
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v16, v70, v16, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v42, v42, v53
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v52, v54, v52, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v70, off, off offset:620 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v16, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v5, v48, v5, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v54, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v56, v5, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v56, off, off offset:644 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v38.l, 0x7fff, v52.h, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v52, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v48, v48
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v70, v70, v27
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v56, v56, v27
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v52, v52, v32
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v17, v56, v17, v5
	scratch_load_b32 v56, off, off offset:20 ; 4-byte Folded Reload
	v_fma_f32 v7, v52, v7, v55
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v17, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v48, v53
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v42, v42, v37
	v_div_scale_f32 v53, vcc_lo, v37, v42, v37
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v55, v7, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v16, 1.0, v17
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v39, v50, v40
	v_rcp_f32_e32 v39, v48
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v5, v43
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v19, v72, v19, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v50.h, v32.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v16, v16, v36
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v19, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.l, v5.h
	v_mov_b16_e32 v17.h, v32.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v48, v39, 1.0
	v_rcp_f32_e32 v43, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v50.l, v4.h
	scratch_load_b32 v19, off, off offset:12 ; 4-byte Folded Reload
	v_and_b32_e32 v17, 1, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v39, v51, v39 :: v_dual_and_b32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v17, v5, v17, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v52, v53, v39
	v_fma_f32 v51, -v40, v43, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v50, v4, v50, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v48, v52, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v51, v43
	v_div_scale_f32 v51, s1, v36, v16, v36
	v_fmac_f32_e32 v52, v55, v39
	scratch_load_b32 v55, off, off offset:16 ; 4-byte Folded Reload
	v_fma_f32 v48, -v48, v52, v53
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v53, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v54, v54, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v39, v48, v39, v52
	s_mov_b32 vcc_lo, s1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v6, v54, v6, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v54, v51, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v56, v6, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v56, off, off offset:600 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v71, -v40, v54, v51
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v18, v70, v18, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v54, v71, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v18, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v18, v39, v42, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v40, -v40, v54, v51
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v42, off, off offset:616
	scratch_load_b32 v37, off, off offset:168
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v7, v18
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v40, v40, v43, v54
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:596
	scratch_load_b32 v18, off, off offset:236
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v40, v16, v36
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v36, off, off offset:8
	scratch_load_b32 v40, off, off
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v16
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.l, v7.h
	v_mov_b16_e32 v16.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v16, v7, v16, 0x7fff
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v53, v53, v27 :: v_dual_mul_f32 v56, v56, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v9, v56, v9, v55
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v55, v9, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v42, v42, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v21, v53, v21, v9
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v43, v43, v32 :: v_dual_mul_f32 v18, v18, v27
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v9, v21, s3
	scratch_load_b32 v21, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v8, v43, v8, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v5, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v19, v8, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.h, 0x7fff, v17.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v17, v18, v20, v8
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v20, off, off offset:588 ; 4-byte Folded Reload
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v6.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.h, v32.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v8, v17, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v19, 0xbfb8aa3b, v9 :: v_dual_and_b32 v4, 1, v18
	v_mul_f32_e32 v17, 0xbfb8aa3b, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.l, 0x7fff, v50.h, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v50, off, off offset:612 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v18, v19
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v19, off, off offset:592 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v7, v7
	v_add3_u32 v4, v6, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v18, v17
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v18, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	s_waitcnt vmcnt(3)
	v_dual_add_f32 v7, 1.0, v17 :: v_dual_mul_f32 v20, v20, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v10, v20, v10, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v21, v10, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:472
	scratch_load_b32 v20, off, off offset:228
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v19, v19, v32 :: v_dual_mul_f32 v50, v50, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v11, v19, v11, v36
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v36, v11, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v18, v18, v27 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v8
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v17, v18, v23, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v19, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v17, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v11
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v21, v21, v32 :: v_dual_mul_f32 v20, v20, v27
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v21, v21, v78, v37
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v18, v20, v22, v10
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v22, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v7, v7, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v37, v21, s2
	v_cndmask_b32_e64 v10, v10, v18, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v17, v20
	v_div_scale_f32 v37, s5, v9, v7, v9
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v36, 0xbfb8aa3b, v10
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v18, v19, v18
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v13, v42, v13, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v23, 0xbfb8aa3b, v11 :: v_dual_add_f32 v18, 1.0, v18
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s5
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v21, v13, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, s4
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v10
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v23, v23, v43
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, s4, v8, v18, v8
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v36, v36, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v23, v23, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v42, v48
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v22, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v19, v22, v77, v40
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v20, v17, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v40, v19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v17, v22, v17
	v_div_scale_f32 v22, null, v18, v18, v8
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v12, v50, v12, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v40, v37, v17
	v_rcp_f32_e32 v39, v22
	v_div_scale_f32 v50, null, v36, v36, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v19, v12, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v20, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v40, v51, v17
	v_fma_f32 v52, -v22, v39, 1.0
	v_rcp_f32_e32 v51, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v20, v40, v37
	v_fmac_f32_e32 v39, v52, v39
	scratch_load_b32 v52, off, off offset:164 ; 4-byte Folded Reload
	v_div_fmas_f32 v17, v20, v17, v40
	v_mul_f32_e32 v37, v43, v39
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v19, -v50, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v7, v17, v7, v9
	v_fma_f32 v20, -v22, v37, v43
	v_fma_f32 v9, -v48, v42, 1.0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v17, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v51, v19, v51
	v_div_scale_f32 v19, s5, v10, v36, v10
	v_dual_fmac_f32 v37, v20, v39 :: v_dual_fmac_f32 v42, v9, v42
	v_div_scale_f32 v9, s1, v11, v23, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v40, v19, v51
	v_fma_f32 v21, -v22, v37, v43
	scratch_load_b32 v43, off, off offset:160 ; 4-byte Folded Reload
	v_mul_f32_e32 v22, v9, v42
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v13, v7
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.h, v32.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v21, v21, v39, v37
	v_fma_f32 v39, -v50, v40, v19
	v_fma_f32 v37, -v48, v22, v9
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v7, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v21, v18, v8
	v_fmac_f32_e32 v40, v39, v51
	v_fmac_f32_e32 v22, v37, v42
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:608
	scratch_load_b32 v20, off, off offset:460
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v21, v58, v60, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v18, -v50, v40, v19
	v_fma_f32 v9, -v48, v22, v9
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v12, v8
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v19, v34, v57, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v9, v9, v42, v22
	s_mov_b32 vcc_lo, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v22, v61, v59, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v18, v18, v51, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b32_e32 v40, 0x7632
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v9, v23, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v8.h
	v_mov_b16_e32 v11.h, v32.l
	v_cndmask_b32_e64 v23, v59, v61, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v18, v36, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v16.l, 0x7fff, v4.h, vcc_lo
	v_cndmask_b32_e64 v36, v41, v47, s0
	v_cndmask_b32_e64 v18, v57, v34, s0
	v_cndmask_b32_e64 v34, v63, v49, s0
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v6, v8, v11, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v17, v17, v32
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v17, v17, v80, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v52, v17, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v20, v32
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v20, v20, v79, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v43, v20, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v43, off, off offset:604 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v8, v8
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v27
	v_mul_f32_e32 v27, v37, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v37, v38, v31, s0
	v_cndmask_b32_e64 v31, v31, v38, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v14, v43, v14, v20
	v_fma_f32 v15, v27, v15, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v27, v33, v62, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v20, v14, s3
	v_cndmask_b32_e64 v12, v17, v15, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v17, v69, v65, s0
	v_cndmask_b32_e64 v15, v65, v69, s0
	v_cndmask_b32_e64 v20, v60, v58, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v10, v14, v10 :: v_dual_mul_f32 v9, v12, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v7.h
	v_mov_b16_e32 v12.h, v32.l
	v_mov_b16_e32 v14.h, v32.l
	v_cndmask_b32_e64 v32, v62, v33, s0
	v_cndmask_b32_e64 v33, v49, v63, s0
	v_mov_b16_e32 v13.l, v9.h
	v_mov_b16_e32 v14.l, v10.h
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e64 s3, v9, v9
	v_cmp_o_f32_e64 s4, v10, v10
	v_and_b32_e32 v13, 1, v13
	v_and_b32_e32 v11, 1, v14
	v_add3_u32 v12, v7, v12, 0x7fff
	v_cndmask_b32_e64 v14, v66, v68, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v8, v9, v13, 0x7fff
	v_add3_u32 v7, v10, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v4.h, 0x7fff, v12.h, s1
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v12, v64, v67, s0
	v_cndmask_b32_e64 v9, v45, v44, s0
	v_cndmask_b32_e64 v10, v46, v35, s0
	v_cndmask_b32_e64 v11, v67, v64, s0
	v_cndmask_b32_e64 v13, v68, v66, s0
	v_permlanex16_b32 v14, v14, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v17, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v21, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v19, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v36, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v6.h, 0x7fff, v8.h, s3
	v_cndmask_b16 v6.l, 0x7fff, v7.h, s4
	v_cndmask_b32_e64 v7, v2, v0, s0
	v_cndmask_b32_e64 v0, v0, v2, s0
	v_cndmask_b32_e64 v38, v4, v5, s0
	v_cndmask_b32_e64 v4, v5, v4, s0
	v_mov_b32_e32 v5, 0x5410
	v_cndmask_b32_e64 v8, v3, v1, s0
	v_cndmask_b32_e64 v1, v1, v3, s0
	v_cndmask_b32_e64 v2, v44, v45, s0
	v_cndmask_b32_e64 v3, v35, v46, s0
	v_cndmask_b32_e64 v35, v47, v41, s0
	v_permlanex16_b32 v12, v12, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v31, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v39, v6, v16, s0
	v_cndmask_b32_e64 v6, v16, v6, s0
	v_permlanex16_b32 v16, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v0, 0x1054, v5, s0
	v_cndmask_b32_e64 v5, 0x3276, v40, s0
	v_permlanex16_b32 v40, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v3, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v1, v5, 8, v5
	v_permlanex16_b32 v47, v6, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v1, 0x760076, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v1, v1, 4, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v43, 0x5040504, v0
	v_and_b32_e32 v44, 0x7060706, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v0, v16, v7, v43
	v_perm_b32 v1, v16, v7, v44
	v_perm_b32 v2, v40, v8, v43
	v_perm_b32 v3, v40, v8, v44
	v_perm_b32 v4, v41, v9, v43
	v_perm_b32 v5, v41, v9, v44
	v_perm_b32 v6, v42, v10, v43
	v_perm_b32 v7, v42, v10, v44
	v_perm_b32 v8, v12, v11, v43
	v_perm_b32 v9, v12, v11, v44
	v_perm_b32 v10, v14, v13, v43
	v_perm_b32 v11, v14, v13, v44
	v_perm_b32 v12, v17, v15, v43
	v_perm_b32 v13, v17, v15, v44
	v_perm_b32 v16, v21, v20, v43
	v_perm_b32 v17, v21, v20, v44
	v_perm_b32 v20, v32, v27, v43
	v_perm_b32 v21, v32, v27, v44
	v_add_lshl_u32 v27, v25, v29, 1
	v_perm_b32 v14, v19, v18, v43
	v_perm_b32 v15, v19, v18, v44
	v_perm_b32 v18, v23, v22, v43
	v_perm_b32 v19, v23, v22, v44
	v_perm_b32 v22, v34, v33, v43
	v_perm_b32 v23, v34, v33, v44
	v_perm_b32 v31, v36, v35, v43
	v_perm_b32 v32, v36, v35, v44
	v_perm_b32 v33, v45, v37, v43
	v_perm_b32 v34, v45, v37, v44
	v_perm_b32 v35, v46, v38, v43
	v_perm_b32 v36, v46, v38, v44
	v_perm_b32 v37, v47, v39, v43
	v_perm_b32 v38, v47, v39, v44
	s_clause 0x2
	buffer_store_b128 v[0:3], v26, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v26, s[20:23], 0 offen offset:256
	buffer_store_b128 v[8:11], v27, s[20:23], 0 offen
	v_add_lshl_u32 v0, v30, v29, 1
	v_add_lshl_u32 v1, v25, v28, 1
	v_add_lshl_u32 v2, v30, v28, 1
	v_add_lshl_u32 v3, v25, v24, 1
	v_add_lshl_u32 v4, v30, v24, 1
	s_clause 0x4
	buffer_store_b128 v[12:15], v0, s[20:23], 0 offen
	buffer_store_b128 v[16:19], v1, s[20:23], 0 offen
	buffer_store_b128 v[20:23], v2, s[20:23], 0 offen
	buffer_store_b128 v[31:34], v3, s[20:23], 0 offen
	buffer_store_b128 v[35:38], v4, s[20:23], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1172
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 1172
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 49208
; TotalNumSgprs: 55
; NumVgprs: 256
; ScratchSize: 1172
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 1172
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 450
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
