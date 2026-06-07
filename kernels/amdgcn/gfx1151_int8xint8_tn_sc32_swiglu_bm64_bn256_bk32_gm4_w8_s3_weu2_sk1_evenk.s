	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
	v_mov_b32_e32 v135, v0
	s_mov_b32 s50, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v45, 3, v135
	v_and_b32_e32 v2, 56, v45
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v3, 3, v135
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v131, 15, v135
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_add_nc_u32_e32 v40, 0, v45
	v_or_b32_e32 v46, 0x3f0, v135
	v_or_b32_e32 v190, 0x7f0, v135
	v_lshrrev_b32_e32 v42, 1, v135
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
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_mul_lo_u32 v3, s22, v3
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s13
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v41, v40, v45
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
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
	s_xor_b32 s8, s2, s13
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
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v1, 4, v135
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
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
	s_lshl_b32 s35, s23, 1
	.loc	1 312 26                        ; generate_amdgcn.py:312:26
	s_lshl_b32 s26, s3, 5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s13, s18
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_mul_lo_u32 v1, s35, v1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s14, s12, 31
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s13, s3, s16
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s12, s14, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s13
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s12, s12, 27
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_lshl_add_u32 v168, v131, 4, v1
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s2, 6
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s3, 8
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_add3_u32 v47, v3, v2, s34
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s12, s14, s12
.Ltmp19:
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s13, s35, s26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s14, 31
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_lshl_add_u32 v227, s23, 5, v168
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	s_mul_i32 s16, s22, s26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s13, s33, s13
	.loc	1 322 26 is_stmt 0              ; generate_amdgcn.py:322:26
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s14, 63
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_add_nc_u32_e32 v3, s16, v47
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v1, s13, v168
	v_add_nc_u32_e32 v2, s13, v227
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_lshl_b32 s17, s23, 6
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	s_lshl_b32 s15, s22, 5
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s13, s13, s17
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_cndmask_b32_e64 v5, 0x80000000, v3, s2
	.loc	1 316 34 is_stmt 0              ; generate_amdgcn.py:316:34
	v_add3_u32 v3, s16, s15, v47
	.loc	1 322 26 is_stmt 1              ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v4, 0x80000000, v1, s2
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v1, s23, v1
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v12, s13, v168
	.loc	1 322 26 is_stmt 0              ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v8, 0x80000000, v2, s2
	.loc	1 328 43 is_stmt 1              ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v2, s23, v2
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v13, s13, v227
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_cndmask_b32_e64 v22, 0x80000000, v3, s3
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 328 43 is_stmt 0              ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v3, s23, v12
	v_add3_u32 v20, s13, s23, v227
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 322 26 is_stmt 1              ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v21, 0x80000000, v12, s3
	v_cndmask_b32_e64 v24, 0x80000000, v13, s3
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_clause 0x1
	buffer_load_b128 v[12:15], v1, s[28:31], 0 offen
	buffer_load_b128 v[16:19], v2, s[28:31], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v3, s3
	v_cndmask_b32_e64 v2, 0x80000000, v20, s3
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_b64 v[36:37], v5, s[4:7], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1
	buffer_load_b128 v[4:7], v4, s[28:31], 0 offen
	buffer_load_b128 v[8:11], v8, s[28:31], 0 offen
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_b64 v[38:39], v22, s[4:7], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[20:23], v21, s[28:31], 0 offen
	buffer_load_b128 v[24:27], v24, s[28:31], 0 offen
	buffer_load_b128 v[28:31], v1, s[28:31], 0 offen
	buffer_load_b128 v[32:35], v2, s[28:31], 0 offen
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v1, 16, v131
	v_or_b32_e32 v2, 32, v131
	v_or_b32_e32 v3, 48, v131
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0x5f
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(7)
	ds_store_b64 v40, v[36:37] offset:32768
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(6)
	ds_store_b128 v41, v[4:7]
	s_waitcnt vmcnt(5)
	ds_store_b128 v41, v[8:11] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	ds_store_b128 v41, v[12:15] offset:16384
	ds_store_b128 v41, v[16:19] offset:20480
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v40, v[38:39] offset:34816
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v41, v[20:23] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v41, v[24:27] offset:12288
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(1)
	ds_store_b128 v41, v[28:31] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v41, v[32:35] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_and_or_b32 v14, 0x70, v42, v131
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_or_b32_e32 v224, 0x3f0, v135
	v_or_b32_e32 v225, 0x7f0, v135
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_or_b32_e32 v4, 0x1e00, v14
	v_or_b32_e32 v0, 0x100, v14
	v_or_b32_e32 v7, 0x200, v14
	v_or_b32_e32 v8, 0x300, v14
	v_or_b32_e32 v9, 0x400, v14
	scratch_store_b32 off, v4, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1f00, v14
	v_or_b32_e32 v10, 0x500, v14
	v_or_b32_e32 v11, 0x600, v14
	v_or_b32_e32 v12, 0x700, v14
	v_or_b32_e32 v15, 0x800, v14
	scratch_store_b32 off, v4, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x80, v14
	v_or_b32_e32 v16, 0x900, v14
	v_or_b32_e32 v17, 0xa00, v14
	v_or_b32_e32 v18, 0xb00, v14
	v_or_b32_e32 v19, 0xc00, v14
	scratch_store_b32 off, v4, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x180, v14
	v_or_b32_e32 v20, 0xd00, v14
	v_or_b32_e32 v21, 0xe00, v14
	v_or_b32_e32 v22, 0xf00, v14
	v_or_b32_e32 v23, 0x1000, v14
	scratch_store_b32 off, v4, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x280, v14
	v_or_b32_e32 v24, 0x1100, v14
	v_or_b32_e32 v25, 0x1200, v14
	v_or_b32_e32 v26, 0x1300, v14
	v_or_b32_e32 v27, 0x1400, v14
	scratch_store_b32 off, v4, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x380, v14
	v_or_b32_e32 v28, 0x1500, v14
	v_or_b32_e32 v29, 0x1600, v14
	v_or_b32_e32 v30, 0x1700, v14
	v_or_b32_e32 v31, 0x1800, v14
	scratch_store_b32 off, v4, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x480, v14
	v_or_b32_e32 v32, 0x1900, v14
	v_or_b32_e32 v33, 0x1a00, v14
	v_or_b32_e32 v34, 0x1b00, v14
	v_or_b32_e32 v35, 0x1c00, v14
	scratch_store_b32 off, v4, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x580, v14
	v_or_b32_e32 v36, 0x1d00, v14
	scratch_store_b32 off, v4, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x680, v14
	scratch_store_b32 off, v4, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x780, v14
	scratch_store_b32 off, v4, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x880, v14
	scratch_store_b32 off, v4, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x980, v14
	scratch_store_b32 off, v4, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xa80, v14
	scratch_store_b32 off, v4, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xb80, v14
	scratch_store_b32 off, v4, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xc80, v14
	scratch_store_b32 off, v4, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xd80, v14
	scratch_store_b32 off, v4, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xe80, v14
	scratch_store_b32 off, v4, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0xf80, v14
	scratch_store_b32 off, v4, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1080, v14
	scratch_store_b32 off, v4, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1180, v14
	scratch_store_b32 off, v4, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1280, v14
	scratch_store_b32 off, v4, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1380, v14
	scratch_store_b32 off, v4, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1480, v14
	scratch_store_b32 off, v4, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1580, v14
	scratch_store_b32 off, v4, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1680, v14
	scratch_store_b32 off, v4, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1780, v14
	scratch_store_b32 off, v4, off offset:324 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1880, v14
	scratch_store_b32 off, v4, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1980, v14
	scratch_store_b32 off, v4, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1a80, v14
	scratch_store_b32 off, v4, off offset:336 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1b80, v14
	scratch_store_b32 off, v4, off offset:340 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1c80, v14
	scratch_store_b32 off, v4, off offset:344 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1d80, v14
	scratch_store_b32 off, v4, off offset:348 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1e80, v14
	scratch_store_b32 off, v4, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 0x1f80, v14
	scratch_store_b32 off, v4, off offset:356 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr4
                                        ; kill: killed $vgpr4
                                        ; implicit-def: $vgpr224
                                        ; implicit-def: $vgpr225
                                        ; implicit-def: $vgpr14
                                        ; implicit-def: $vgpr0
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr11
                                        ; implicit-def: $vgpr12
                                        ; implicit-def: $vgpr15
                                        ; implicit-def: $vgpr16
                                        ; implicit-def: $vgpr17
                                        ; implicit-def: $vgpr18
                                        ; implicit-def: $vgpr19
                                        ; implicit-def: $vgpr20
                                        ; implicit-def: $vgpr21
                                        ; implicit-def: $vgpr22
                                        ; implicit-def: $vgpr23
                                        ; implicit-def: $vgpr24
                                        ; implicit-def: $vgpr25
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr27
                                        ; implicit-def: $vgpr28
                                        ; implicit-def: $vgpr29
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr31
                                        ; implicit-def: $vgpr32
                                        ; implicit-def: $vgpr33
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr36
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
.LBB0_3:                                ; %Flow790
	v_or_b32_e32 v4, s34, v131
	v_or_b32_e32 v1, s34, v1
	s_load_b64 s[20:21], s[0:1], 0x20
	s_ashr_i32 s1, s12, 5
	v_or_b32_e32 v3, s34, v3
	v_mul_lo_u32 v4, v4, s1
	v_mul_lo_u32 v1, v1, s1
	v_and_b32_e32 v5, 0xf0, v135
	v_or_b32_e32 v2, s34, v2
	v_or_b32_e32 v6, s33, v135
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_add_i32 s44, s26, 32
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v5, off offset:360
	scratch_store_b32 off, v4, off offset:160
	scratch_store_b32 off, v1, off offset:152
	v_mul_lo_u32 v1, v3, s1
	v_mul_lo_u32 v13, v2, s1
	scratch_store_b32 off, v6, off offset:164 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v3, 2, v5
	v_lshlrev_b32_e32 v4, 5, v135
	v_lshlrev_b32_e32 v2, 1, v5
	scratch_store_b32 off, v1, off offset:156 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v1, 1, v135
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v135, off offset:168
	scratch_store_b32 off, v131, off offset:172
	scratch_store_b32 off, v13, off offset:176
	scratch_store_b32 off, v2, off offset:852
	scratch_store_b32 off, v3, off offset:856
	scratch_store_b32 off, v1, off offset:860
	scratch_store_b32 off, v4, off offset:864
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_and_or_b32 v5, 0x70, v42, v131
	v_dual_mov_b32 v164, 0 :: v_dual_and_b32 v1, 28, v1
	v_mov_b32_e32 v207, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v202, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v0, 0x100, v5
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v246, 0
	scratch_store_b32 off, v0, off offset:604 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x200, v5
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v28, 0
	scratch_store_b32 off, v0, off offset:608 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v5
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v160, 0
	scratch_store_b32 off, v0, off offset:612 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v5
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v148, 0
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x500, v5
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v244, 0
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x600, v5
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x700, v5
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x800, v5
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v155, 0
	scratch_store_b32 off, v0, off offset:616 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x900, v5
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v240, 0
	scratch_store_b32 off, v0, off offset:624 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v5
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	scratch_store_b32 off, v0, off offset:632 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb00, v5
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v170, 0
	scratch_store_b32 off, v0, off offset:636 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v5
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	scratch_store_b32 off, v0, off offset:640 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd00, v5
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v252, 0
	scratch_store_b32 off, v0, off offset:644 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v5
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	scratch_store_b32 off, v0, off offset:648 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf00, v5
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v58, 0
	scratch_store_b32 off, v0, off offset:656 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1000, v5
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v61, 0
	scratch_store_b32 off, v0, off offset:664 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1100, v5
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v219, 0
	scratch_store_b32 off, v0, off offset:668 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1200, v5
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v217, 0
	scratch_store_b32 off, v0, off offset:672 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1300, v5
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v70, 0
	scratch_store_b32 off, v0, off offset:676 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1400, v5
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v214, 0
	scratch_store_b32 off, v0, off offset:684 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1500, v5
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v211, 0
	scratch_store_b32 off, v0, off offset:688 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1600, v5
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v209, 0
	scratch_store_b32 off, v0, off offset:692 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1700, v5
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	scratch_store_b32 off, v0, off offset:696 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1800, v5
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v196, 0
	scratch_store_b32 off, v0, off offset:700 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1900, v5
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v232, 0
	scratch_store_b32 off, v0, off offset:704 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a00, v5
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v192, 0
	scratch_store_b32 off, v0, off offset:712 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b00, v5
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v38, 0
	scratch_store_b32 off, v0, off offset:720 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c00, v5
	v_mov_b32_e32 v185, 0
	v_mov_b32_e32 v191, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	scratch_store_b32 off, v0, off offset:724 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d00, v5
	s_mov_b32 s12, 0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s11, s1, 3
	s_add_i32 s0, s44, 32
	s_mov_b32 s10, 1
	scratch_store_b32 off, v0, off offset:728 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e00, v5
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f00, v5
	s_add_i32 s51, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s48, 0, 0x4000
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x80, v5
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s11, s11, -3
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x180, v5
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x280, v5
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_mov_b32 s42, s38
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x380, v5
	s_mov_b32 s43, s39
	s_mov_b32 s50, s12
	s_mov_b32 s27, s12
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v45, off offset:184
	scratch_store_b32 off, v46, off offset:188
	scratch_store_b64 off, v[47:48], off offset:192
	scratch_store_b32 off, v0, off offset:244
	v_or_b32_e32 v0, 0x480, v5
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v236, 0
	v_mov_b32_e32 v165, 0
	v_mov_b32_e32 v163, 0
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x580, v5
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v230, 0
	v_mov_b32_e32 v194, 0
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x680, v5
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x780, v5
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x880, v5
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x980, v5
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa80, v5
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb80, v5
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc80, v5
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd80, v5
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe80, v5
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf80, v5
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1080, v5
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1180, v5
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1280, v5
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1380, v5
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1480, v5
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1580, v5
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1680, v5
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1780, v5
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1880, v5
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1980, v5
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a80, v5
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b80, v5
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c80, v5
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d80, v5
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e80, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:352
	scratch_store_b32 off, v5, off offset:180
	v_or_b32_e32 v0, 0x1f80, v5
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_and_b32_e32 v0, 32, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v0, 0, v3, v0
	v_dual_mov_b32 v3, 0 :: v_dual_add_nc_u32 v0, v0, v1
	scratch_store_b32 off, v3, off offset:92 ; 4-byte Folded Spill
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v1, 0
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v3, off offset:112 ; 4-byte Folded Spill
	v_mov_b32_e32 v3, 0
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v172, off, off offset:176
	scratch_load_b32 v231, off, off offset:164
	scratch_load_b32 v226, off, off offset:200
	scratch_load_b32 v225, off, off offset:204
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:140
	scratch_store_b32 off, v0, off offset:96
	v_mov_b32_e32 v0, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s52, s27, 5
	s_mov_b32 s49, s26
	s_mov_b32 s26, s44
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s44, s0, s52
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v48, off offset:116
	scratch_store_b32 off, v70, off offset:120
	scratch_store_b32 off, v61, off offset:128
	scratch_store_b32 off, v63, off offset:124
	scratch_store_b32 off, v58, off offset:136
	scratch_store_b32 off, v69, off offset:132
	scratch_store_b32 off, v221, off offset:48
	scratch_store_b32 off, v220, off offset:44
	scratch_store_b32 off, v182, off offset:40
	scratch_store_b32 off, v214, off offset:36
	scratch_store_b32 off, v181, off offset:32
	scratch_store_b32 off, v79, off offset:108
	scratch_store_b32 off, v72, off offset:104
	scratch_store_b32 off, v71, off offset:100
	scratch_store_b32 off, v44, off offset:28
	scratch_store_b32 off, v43, off offset:24
	scratch_store_b32 off, v42, off offset:20
	scratch_store_b32 off, v38, off
	scratch_store_b32 off, v28, off offset:88
	scratch_store_b32 off, v27, off offset:84
	scratch_store_b32 off, v26, off offset:80
	scratch_store_b32 off, v25, off offset:76
	scratch_store_b32 off, v24, off offset:72
	scratch_store_b32 off, v23, off offset:68
	scratch_store_b32 off, v22, off offset:64
	scratch_store_b32 off, v21, off offset:60
	scratch_store_b32 off, v20, off offset:52
	scratch_store_b32 off, v19, off offset:56
	scratch_store_b32 off, v18, off offset:16
	scratch_store_b32 off, v17, off offset:12
	scratch_store_b32 off, v2, off offset:4
	scratch_store_b32 off, v1, off offset:8
	.loc	1 316 34                        ; generate_amdgcn.py:316:34
	v_mad_u64_u32 v[1:2], null, s44, s22, v[47:48]
	.loc	1 316 26 is_stmt 0              ; generate_amdgcn.py:316:26
	v_add_nc_u32_e32 v141, s51, v131
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	v_mov_b32_e32 v136, s19
	v_dual_mov_b32 v132, s15 :: v_dual_mov_b32 v131, s14
	v_dual_mov_b32 v130, s13 :: v_dual_mov_b32 v129, s12
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_b64 v[1:2], v1, s[4:7], 0 offen
	v_mov_b32_e32 v221, v171
	v_dual_mov_b32 v171, v147 :: v_dual_mov_b32 v134, s17
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_mov_b32_e32 v133, s16
	v_mov_b32_e32 v135, s18
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[1:2], off offset:144 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v10, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v1, v141 offset:832
	ds_load_u8 v2, v141 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v141 offset:960
	ds_load_u8 v3, v141 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v141 offset:576
	ds_load_u8 v4, v141 offset:512
	v_lshl_or_b32 v68, v2, 16, v1
	ds_load_u8 v1, v141 offset:320
	ds_load_u8 v2, v141 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v141 offset:704
	ds_load_u8 v5, v141 offset:640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v4, 16, v3
	ds_load_u8 v2, v141 offset:448
	ds_load_u8 v3, v141 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_lshl_or_b32 v66, v2, 16, v1
	ds_load_u8 v1, v141 offset:64
	ds_load_u8 v2, v141
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v141 offset:192
	ds_load_u8 v3, v141 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v2, 16, v1
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v173, s50, v10
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v1, v173 offset:3328
	ds_load_u8 v2, v173 offset:3072
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v174, s48, v10
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_mul_i32 s50, s44, s35
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s48, s49, 31
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	s_add_i32 s50, s50, s33
	v_mov_b32_e32 v147, v41
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_lshr_b32 s48, s48, 27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s49, s49, s48
	s_ashr_i32 s49, s49, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s48, s49, s35
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v173 offset:3840
	ds_load_u8 v3, v173 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v173 offset:2304
	ds_load_u8 v4, v173 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v173 offset:2816
	ds_load_u8 v5, v173 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v4, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v1
	ds_load_u8 v1, v173 offset:1280
	ds_load_u8 v2, v173 offset:1024
	v_lshl_or_b32 v3, v5, 16, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v173 offset:1792
	ds_load_u8 v5, v173 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v5, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v173 offset:256
	ds_load_u8 v5, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v5, v1, 0xc0c0004
	ds_load_u8 v5, v173 offset:768
	ds_load_u8 v6, v173 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v5, 16, v1
	ds_load_u8 v5, v173 offset:3456
	ds_load_u8 v6, v173 offset:3200
	v_wmma_i32_16x16x16_iu8 v[57:64], v[1:4], v[65:68], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v173 offset:3968
	ds_load_u8 v7, v173 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v173 offset:2432
	ds_load_u8 v8, v173 offset:2176
	v_lshl_or_b32 v72, v6, 16, v5
	ds_load_u8 v5, v173 offset:1408
	ds_load_u8 v6, v173 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v173 offset:2944
	ds_load_u8 v9, v173 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v8, 16, v7
	ds_load_u8 v6, v173 offset:1920
	ds_load_u8 v7, v173 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v70, v6, 16, v5
	ds_load_u8 v5, v173 offset:384
	ds_load_u8 v6, v173 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v173 offset:896
	ds_load_u8 v7, v173 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v6, 16, v5
	ds_load_u8 v5, v141 offset:848
	ds_load_u8 v6, v141 offset:784
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[65:68], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v141 offset:976
	ds_load_u8 v7, v141 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v141 offset:592
	ds_load_u8 v8, v141 offset:528
	v_lshl_or_b32 v76, v6, 16, v5
	ds_load_u8 v5, v141 offset:336
	ds_load_u8 v6, v141 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v141 offset:720
	ds_load_u8 v9, v141 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v8, 16, v7
	ds_load_u8 v6, v141 offset:464
	ds_load_u8 v7, v141 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v74, v6, 16, v5
	ds_load_u8 v5, v141 offset:16
	ds_load_u8 v6, v141 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v6, 0xc0c0004
	ds_load_u8 v6, v141 offset:208
	ds_load_u8 v7, v141 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v6, 16, v5
	ds_load_u8 v5, v141 offset:864
	ds_load_u8 v6, v141 offset:800
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[73:76], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v141 offset:992
	ds_load_u8 v7, v141 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v141 offset:608
	ds_load_u8 v8, v141 offset:544
	v_lshl_or_b32 v80, v6, 16, v5
	ds_load_u8 v5, v141 offset:352
	ds_load_u8 v6, v141 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v141 offset:736
	ds_load_u8 v9, v141 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v8, 16, v7
	ds_load_u8 v6, v141 offset:480
	ds_load_u8 v7, v141 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v78, v6, 16, v5
	ds_load_u8 v5, v141 offset:32
	ds_load_u8 v6, v141 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v6, 0xc0c0004
	ds_load_u8 v6, v141 offset:224
	ds_load_u8 v7, v141 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v6, 16, v5
	ds_load_u8 v5, v141 offset:880
	ds_load_u8 v6, v141 offset:816
	v_wmma_i32_16x16x16_iu8 v[25:32], v[1:4], v[77:80], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[69:72], v[77:80], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_add_nc_u32_e32 v6, s51, v46
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v6, v6
	ds_load_u8 v7, v141 offset:944
	v_wmma_i32_16x16x16_iu8 v[41:48], v[1:4], v[73:76], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v141 offset:624
	ds_load_u8 v8, v141 offset:560
	v_lshl_or_b32 v140, v6, 16, v5
	ds_load_u8 v5, v141 offset:368
	ds_load_u8 v6, v141 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v141 offset:752
	ds_load_u8 v9, v141 offset:688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v139, v8, 16, v7
	ds_load_u8 v6, v141 offset:496
	ds_load_u8 v7, v141 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v138, v6, 16, v5
	ds_load_u8 v5, v141 offset:48
	ds_load_u8 v6, v141 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v6, 0xc0c0004
	ds_load_u8 v6, v141 offset:240
	ds_load_u8 v7, v141 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v6, 16, v5
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v5, v174 offset:3328
	ds_load_u8 v6, v174 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v174 offset:3840
	ds_load_u8 v7, v174 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v174 offset:2304
	ds_load_u8 v8, v174 offset:2048
	v_lshl_or_b32 v178, v6, 16, v5
	ds_load_u8 v5, v174 offset:1280
	ds_load_u8 v6, v174 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v174 offset:2816
	ds_load_u8 v9, v174 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v177, v8, 16, v7
	ds_load_u8 v6, v174 offset:1792
	ds_load_u8 v7, v174 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v176, v6, 16, v5
	ds_load_u8 v5, v174 offset:256
	ds_load_u8 v6, v174
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v174 offset:768
	ds_load_u8 v7, v174 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v6, 16, v5
	ds_load_u8 v5, v174 offset:3456
	ds_load_u8 v6, v174 offset:3200
	v_wmma_i32_16x16x16_iu8 v[121:128], v[175:178], v[65:68], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[175:178], v[73:76], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[175:178], v[77:80], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v174 offset:3968
	ds_load_u8 v7, v174 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v174 offset:2432
	ds_load_u8 v8, v174 offset:2176
	v_lshl_or_b32 v182, v6, 16, v5
	ds_load_u8 v5, v174 offset:1408
	ds_load_u8 v6, v174 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v174 offset:2944
	ds_load_u8 v9, v174 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[9:16], v[1:4], v[137:140], v[129:136] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v181, v8, 16, v7
	ds_load_u8 v6, v174 offset:1920
	ds_load_u8 v7, v174 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_lshl_or_b32 v180, v6, 16, v5
	ds_load_u8 v5, v174 offset:384
	ds_load_u8 v6, v174 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v174 offset:896
	ds_load_u8 v7, v174 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v179, v6, 16, v5
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[1:8], v[69:72], v[137:140], v[129:136] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[113:120], v[179:182], v[65:68], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[179:182], v[73:76], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[179:182], v[77:80], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[175:178], v[137:140], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[179:182], v[137:140], v[129:136] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v129, v141 offset:1856
	ds_load_u8 v130, v141 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v141 offset:1984
	ds_load_u8 v131, v141 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v141 offset:1600
	ds_load_u8 v132, v141 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v141 offset:1728
	ds_load_u8 v133, v141 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v133, v132, 0xc0c0004
	v_lshl_or_b32 v132, v130, 16, v129
	ds_load_u8 v129, v141 offset:1344
	ds_load_u8 v130, v141 offset:1280
	v_lshl_or_b32 v131, v133, 16, v131
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v141 offset:1472
	ds_load_u8 v133, v141 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v133, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v130, 16, v129
	ds_load_u8 v129, v141 offset:1088
	ds_load_u8 v133, v141 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v133, v129, 0xc0c0004
	ds_load_u8 v133, v141 offset:1216
	ds_load_u8 v134, v141 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v133, 16, v129
	ds_load_u8 v133, v173 offset:7424
	ds_load_u8 v134, v173 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v173 offset:7936
	ds_load_u8 v135, v173 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v173 offset:6400
	ds_load_u8 v136, v173 offset:6144
	v_lshl_or_b32 v178, v134, 16, v133
	ds_load_u8 v133, v173 offset:5376
	ds_load_u8 v134, v173 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v173 offset:6912
	ds_load_u8 v137, v173 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v177, v136, 16, v135
	ds_load_u8 v134, v173 offset:5888
	ds_load_u8 v135, v173 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	v_lshl_or_b32 v176, v134, 16, v133
	ds_load_u8 v133, v173 offset:4352
	ds_load_u8 v134, v173 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v173 offset:4864
	ds_load_u8 v135, v173 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v175, v134, 16, v133
	ds_load_u8 v133, v141 offset:1872
	ds_load_u8 v134, v141 offset:1808
	v_wmma_i32_16x16x16_iu8 v[57:64], v[175:178], v[129:132], v[57:64] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v63, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v141 offset:2000
	ds_load_u8 v135, v141 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v141 offset:1616
	ds_load_u8 v136, v141 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v141 offset:1744
	ds_load_u8 v137, v141 offset:1680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v137, v136, 0xc0c0004
	v_lshl_or_b32 v136, v134, 16, v133
	ds_load_u8 v133, v141 offset:1360
	ds_load_u8 v134, v141 offset:1296
	v_lshl_or_b32 v135, v137, 16, v135
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v141 offset:1488
	ds_load_u8 v137, v141 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v137, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v134, 16, v133
	ds_load_u8 v133, v141 offset:1104
	ds_load_u8 v137, v141 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v137, v133, 0xc0c0004
	ds_load_u8 v137, v141 offset:1232
	ds_load_u8 v138, v141 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v133, v137, 16, v133
	ds_load_u8 v137, v141 offset:1888
	ds_load_u8 v138, v141 offset:1824
	v_wmma_i32_16x16x16_iu8 v[41:48], v[175:178], v[133:136], v[41:48] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v141 offset:2016
	ds_load_u8 v139, v141 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v141 offset:1632
	ds_load_u8 v140, v141 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v141 offset:1760
	ds_load_u8 v142, v141 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v142, v140, 0xc0c0004
	v_lshl_or_b32 v140, v138, 16, v137
	ds_load_u8 v137, v141 offset:1376
	ds_load_u8 v138, v141 offset:1312
	v_lshl_or_b32 v139, v142, 16, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v141 offset:1504
	ds_load_u8 v142, v141 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v142, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v138, 16, v137
	ds_load_u8 v137, v141 offset:1120
	ds_load_u8 v142, v141 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v142, v137, 0xc0c0004
	ds_load_u8 v142, v141 offset:1248
	ds_load_u8 v143, v141 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v137, v142, 16, v137
	ds_load_u8 v142, v141 offset:1904
	ds_load_u8 v143, v141 offset:1840
	v_wmma_i32_16x16x16_iu8 v[25:32], v[175:178], v[137:140], v[25:32] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_add_nc_u32_e32 v143, s51, v190
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v143, v143
	ds_load_u8 v144, v141 offset:1968
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	s_add_i32 s51, s50, s23
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s49, s1
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s10, s10, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s10, 2
	s_cselect_b32 s10, s10, 0
	s_add_i32 s52, s27, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v141 offset:1648
	ds_load_u8 v179, v141 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v179, v144, 0xc0c0004
	ds_load_u8 v144, v141 offset:1776
	ds_load_u8 v180, v141 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v180, v144, 0xc0c0004
	v_lshl_or_b32 v144, v143, 16, v142
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v143, v180, 16, v179
	ds_load_u8 v142, v141 offset:1392
	ds_load_u8 v179, v141 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v179, v142, 0xc0c0004
	ds_load_u8 v179, v141 offset:1520
	ds_load_u8 v180, v141 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v179, 16, v142
	ds_load_u8 v179, v141 offset:1136
	ds_load_u8 v180, v141 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v141 offset:1264
	ds_load_u8 v141, v141 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v141, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v141, v141, 16, v179
	v_wmma_i32_16x16x16_iu8 v[9:16], v[175:178], v[141:144], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v175, v173 offset:7552
	ds_load_u8 v176, v173 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	ds_load_u8 v176, v173 offset:8064
	ds_load_u8 v177, v173 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	ds_load_u8 v177, v173 offset:6528
	ds_load_u8 v178, v173 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	ds_load_u8 v178, v173 offset:7040
	ds_load_u8 v179, v173 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v179, v178, 0xc0c0004
	v_lshl_or_b32 v178, v176, 16, v175
	ds_load_u8 v175, v173 offset:5504
	ds_load_u8 v176, v173 offset:5248
	v_lshl_or_b32 v177, v179, 16, v177
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	ds_load_u8 v176, v173 offset:6016
	ds_load_u8 v179, v173 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v179, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v176, 16, v175
	ds_load_u8 v175, v173 offset:4480
	ds_load_u8 v179, v173 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v179, v175, 0xc0c0004
	ds_load_u8 v179, v173 offset:4992
	ds_load_u8 v173, v173 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v173, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v175, v173, 16, v175
	v_wmma_i32_16x16x16_iu8 v[49:56], v[175:178], v[129:132], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[175:178], v[133:136], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[175:178], v[137:140], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[175:178], v[141:144], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v173, v174 offset:7424
	ds_load_u8 v175, v174 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v175, v173, 0xc0c0004
	ds_load_u8 v175, v174 offset:7936
	ds_load_u8 v176, v174 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	ds_load_u8 v176, v174 offset:6400
	ds_load_u8 v177, v174 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	ds_load_u8 v177, v174 offset:6912
	ds_load_u8 v178, v174 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	v_lshl_or_b32 v178, v175, 16, v173
	ds_load_u8 v173, v174 offset:5376
	ds_load_u8 v175, v174 offset:5120
	v_lshl_or_b32 v177, v177, 16, v176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v175, v173, 0xc0c0004
	ds_load_u8 v175, v174 offset:5888
	ds_load_u8 v176, v174 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v175, 16, v173
	ds_load_u8 v173, v174 offset:4352
	ds_load_u8 v175, v174 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v175, v173, 0xc0c0004
	ds_load_u8 v175, v174 offset:4864
	ds_load_u8 v179, v174 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v179, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v175, 16, v173
	ds_load_u8 v173, v174 offset:7552
	ds_load_u8 v179, v174 offset:7296
	v_wmma_i32_16x16x16_iu8 v[121:128], v[175:178], v[129:132], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[175:178], v[133:136], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[175:178], v[137:140], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[175:178], v[141:144], v[73:80] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v176, v4
	v_cvt_f32_i32_e32 v175, v3
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v3, v172, s49, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v177, v5
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v5, s51, v227
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v178, v6
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	scratch_load_b32 v4, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v179, v173, 0xc0c0004
	ds_load_u8 v179, v174 offset:8064
	ds_load_u8 v180, v174 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v174 offset:6528
	ds_load_u8 v181, v174 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v174 offset:7040
	ds_load_u8 v182, v174 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	v_lshl_or_b32 v182, v179, 16, v173
	ds_load_u8 v173, v174 offset:5504
	ds_load_u8 v179, v174 offset:5248
	v_lshl_or_b32 v181, v181, 16, v180
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v179, v173, 0xc0c0004
	ds_load_u8 v179, v174 offset:6016
	ds_load_u8 v180, v174 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v179, 16, v173
	ds_load_u8 v173, v174 offset:4480
	ds_load_u8 v179, v174 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v179, v173, 0xc0c0004
	ds_load_u8 v179, v174 offset:4992
	ds_load_u8 v174, v174 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v174, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v174, 16, v173
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v173, v1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v1, v231, s48, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v174, v2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	scratch_load_b32 v2, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[113:120], v[179:182], v[129:132], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[179:182], v[133:136], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[179:182], v[141:144], v[65:72] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v132, v123
	v_wmma_i32_16x16x16_iu8 v[81:88], v[179:182], v[137:140], v[81:88] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v123, v114
	v_cvt_f32_i32_e32 v114, v119
	v_cvt_f32_i32_e32 v119, v108
	v_cvt_f32_i32_e32 v108, v97
	v_cvt_f32_i32_e32 v97, v101
	v_cvt_f32_i32_e32 v101, v94
	v_cvt_f32_i32_e32 v94, v95
	v_cvt_f32_i32_e32 v95, v74
	v_cvt_f32_i32_e32 v74, v67
	v_cvt_f32_i32_e32 v67, v70
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v70, v58
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v129, v126
	v_cvt_f32_i32_e32 v126, v127
	v_cvt_f32_i32_e32 v127, v106
	v_cvt_f32_i32_e32 v106, v99
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v1, v1, s[40:43], 0 offen
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v99, v102
	v_cvt_f32_i32_e32 v102, v93
	v_cvt_f32_i32_e32 v93, v96
	v_cvt_f32_i32_e32 v96, v73
	v_cvt_f32_i32_e32 v73, v68
	v_cvt_f32_i32_e32 v68, v72
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v72, v60
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v133, v122
	v_cvt_f32_i32_e32 v122, v115
	v_cvt_f32_i32_e32 v115, v118
	v_cvt_f32_i32_e32 v118, v109
	v_cvt_f32_i32_e32 v109, v112
	v_cvt_f32_i32_e32 v112, v89
	v_cvt_f32_i32_e32 v89, v84
	v_cvt_f32_i32_e32 v84, v88
	v_cvt_f32_i32_e32 v88, v75
	v_cvt_f32_i32_e32 v75, v66
	v_cvt_f32_i32_e32 v66, v71
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v71, v57
	v_cvt_f32_i32_e32 v58, v62
	v_cvt_f32_i32_e32 v57, v50
	v_cvt_f32_i32_e32 v62, v51
	v_cvt_f32_i32_e32 v60, v52
	v_cvt_f32_i32_e32 v52, v53
	v_cvt_f32_i32_e32 v51, v55
	v_cvt_f32_i32_e32 v50, v56
	v_cvt_f32_i32_e32 v53, v33
	v_cvt_f32_i32_e32 v55, v35
	v_cvt_f32_i32_e32 v56, v36
	v_cvt_f32_i32_e32 v33, v38
	v_cvt_f32_i32_e32 v36, v39
	v_cvt_f32_i32_e32 v35, v40
	v_cvt_f32_i32_e32 v38, v18
	v_cvt_f32_i32_e32 v39, v19
	v_cvt_f32_i32_e32 v40, v20
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v134, v121
	v_cvt_f32_i32_e32 v121, v116
	v_cvt_f32_i32_e32 v116, v120
	v_cvt_f32_i32_e32 v120, v107
	v_cvt_f32_i32_e32 v107, v98
	v_cvt_f32_i32_e32 v98, v103
	v_cvt_f32_i32_e32 v103, v92
	v_cvt_f32_i32_e32 v92, v81
	v_cvt_f32_i32_e32 v81, v85
	v_cvt_f32_i32_e32 v85, v78
	v_cvt_f32_i32_e32 v78, v79
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v79, v59
	v_cvt_f32_i32_e32 v59, v49
	v_cvt_f32_i32_e32 v49, v54
	v_cvt_f32_i32_e32 v54, v34
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v37, v17
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v131, v124
	v_cvt_f32_i32_e32 v130, v125
	v_cvt_f32_i32_e32 v125, v128
	v_cvt_f32_i32_e32 v124, v113
	v_cvt_f32_i32_e32 v113, v117
	v_cvt_f32_i32_e32 v128, v105
	v_cvt_f32_i32_e32 v117, v110
	v_cvt_f32_i32_e32 v110, v111
	v_cvt_f32_i32_e32 v105, v100
	v_cvt_f32_i32_e32 v100, v104
	v_cvt_f32_i32_e32 v111, v90
	v_cvt_f32_i32_e32 v104, v91
	v_cvt_f32_i32_e32 v91, v82
	v_cvt_f32_i32_e32 v90, v83
	v_cvt_f32_i32_e32 v83, v86
	v_cvt_f32_i32_e32 v82, v87
	v_cvt_f32_i32_e32 v87, v76
	v_cvt_f32_i32_e32 v86, v77
	v_cvt_f32_i32_e32 v77, v80
	v_cvt_f32_i32_e32 v76, v65
	v_cvt_f32_i32_e32 v65, v69
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v69, v61
	v_cvt_f32_i32_e32 v61, v64
	v_cvt_f32_i32_e32 v64, v21
	v_cvt_f32_i32_e32 v80, v22
	v_cvt_f32_i32_e32 v135, v23
	v_cvt_f32_i32_e32 v136, v24
	v_cvt_f32_i32_e32 v137, v9
	v_cvt_f32_i32_e32 v138, v10
	v_cvt_f32_i32_e32 v139, v11
	v_cvt_f32_i32_e32 v140, v12
	v_cvt_f32_i32_e32 v141, v13
	v_cvt_f32_i32_e32 v142, v14
	v_cvt_f32_i32_e32 v143, v15
	v_cvt_f32_i32_e32 v144, v16
	v_cvt_f32_i32_e32 v179, v7
	v_cvt_f32_i32_e32 v180, v8
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v4, v4, s49, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v2, v2, s49, 1
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v1, 16, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v226, v1 offset:36864
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	scratch_load_b32 v1, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, v1, s49, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x3
	buffer_load_u16 v1, v1, s[36:39], 0 offen
	buffer_load_u16 v18, v2, s[36:39], 0 offen
	buffer_load_u16 v19, v3, s[36:39], 0 offen
	buffer_load_u16 v20, v4, s[36:39], 0 offen
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v2, s50, v227
	.loc	1 328 43                        ; generate_amdgcn.py:328:43
	v_add_nc_u32_e32 v3, s51, v168
	s_mov_b32 s51, s47
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v17, 16, v1
	.loc	1 322 34                        ; generate_amdgcn.py:322:34
	v_add_nc_u32_e32 v1, s50, v168
	.loc	1 322 26 is_stmt 0              ; generate_amdgcn.py:322:26
	s_clause 0x3
	buffer_load_b128 v[9:12], v1, s[28:31], 0 offen
	buffer_load_b128 v[13:16], v2, s[28:31], 0 offen
	buffer_load_b128 v[1:4], v3, s[28:31], 0 offen
	buffer_load_b128 v[5:8], v5, s[28:31], 0 offen
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v225 offset:36864
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v70, v17, v70 :: v_dual_lshlrev_b32 v19, 16, v19
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v18, 16, v18
	s_mov_b32 s50, s46
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_lshl_b32 s46, s10, 13
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v25, v19, v25 :: v_dual_lshlrev_b32 v20, 16, v20
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_add_i32 s46, s46, 0
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v206, v70, v22
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v70, v17, v79
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v207, v25, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v19, v26
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:96
	scratch_load_b32 v79, off, off offset:108
	v_fmac_f32_e32 v228, v70, v23
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v70, v17, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v224, v228
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v212, v70, v24 :: v_dual_mul_f32 v71, v17, v71
	scratch_load_b32 v70, off, off offset:112 ; 4-byte Folded Reload
	v_dual_mov_b32 v228, v227 :: v_dual_mov_b32 v227, v168
	scratch_load_b32 v168, off, off offset:140 ; 4-byte Folded Reload
	v_fmac_f32_e32 v215, v71, v21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:104
	scratch_load_b32 v71, off, off offset:100
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v26, v25, v22 :: v_dual_mul_f32 v25, v19, v27
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v41, v18, v41
	scratch_store_b32 off, v26, off offset:96 ; 4-byte Folded Spill
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	scratch_load_b32 v26, off, off offset:92 ; 4-byte Folded Reload
	v_fmac_f32_e32 v0, v25, v23
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v79, v41, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v19, v28
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v41, v18, v42 :: v_dual_fmac_f32 v26, v25, v24
	v_mul_f32_e32 v25, v20, v137
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v233, v41, v22
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v41, v18, v43 :: v_dual_fmac_f32 v70, v25, v21
	v_mul_f32_e32 v25, v17, v69
	scratch_load_b32 v69, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v71, v41, v23
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v20, v138
	v_mul_f32_e32 v41, v18, v44
	scratch_store_b32 off, v26, off offset:92 ; 4-byte Folded Spill
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v168, v21, v22
	v_dual_fmac_f32 v72, v41, v24 :: v_dual_mov_b32 v41, v147
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v20, v139
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v70, off offset:112
	scratch_store_b32 off, v168, off offset:140
	scratch_load_b32 v70, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v41, v21, v23
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v20, v140
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v189, v21, v24
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[21:24], v225 offset:36880
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_fmac_f32_e32 v69, v25, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v17, v58
	scratch_load_b32 v58, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v58, v25, v22
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v17, v63
	scratch_load_b32 v63, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v63, v25, v23
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v17, v61
	scratch_load_b32 v61, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v61, v25, v24
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v18, v45
	scratch_load_b32 v45, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v188, v25, v21 :: v_dual_mul_f32 v25, v18, v46
	v_mov_b32_e32 v147, v171
	v_mov_b32_e32 v171, v221
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v221, off, off offset:48
	scratch_load_b32 v220, off, off offset:44
	scratch_load_b32 v182, off, off offset:40
	scratch_load_b32 v214, off, off offset:36
	scratch_load_b32 v181, off, off offset:32
	scratch_load_b32 v44, off, off offset:28
	scratch_load_b32 v43, off, off offset:24
	scratch_load_b32 v42, off, off offset:20
	v_mov_b32_e32 v168, v227
	v_dual_fmac_f32 v70, v25, v22 :: v_dual_mul_f32 v25, v18, v47
	scratch_load_b32 v46, off, off offset:188 ; 4-byte Folded Reload
	v_fmac_f32_e32 v147, v25, v23
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v18, v48
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[47:48], off, off offset:192
	scratch_load_b32 v48, off, off offset:116
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v187, v25, v24
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v19, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v213, v25, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v19, v30
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v146, v25, v22 :: v_dual_mul_f32 v25, v19, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v171, v25, v23
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v19, v32
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v236, v25, v24 :: v_dual_mul_f32 v25, v20, v141
	v_mov_b32_e32 v227, v228
	v_mov_b32_e32 v228, v224
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v48, v25, v21 :: v_dual_mul_f32 v21, v20, v142
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v17, v59
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v232, v21, v22 :: v_dual_mul_f32 v21, v20, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v229, v21, v23
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v20, v144
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v230, v21, v24
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[21:24], v225 offset:37376
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v222, v25, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v17, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v223, v25, v22
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v17, v62
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v220, v25, v23
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v17, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v221, v25, v24
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v18, v53
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v214, v25, v21 :: v_dual_mul_f32 v25, v18, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v182, v25, v22 :: v_dual_mul_f32 v25, v18, v55
	v_dual_fmac_f32 v44, v25, v23 :: v_dual_mul_f32 v25, v18, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v181, v25, v24
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v19, v37
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v42, v25, v21 :: v_dual_mul_f32 v25, v19, v38
	scratch_load_b32 v38, off, off          ; 4-byte Folded Reload
	v_fmac_f32_e32 v43, v25, v22
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v19, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v204, v25, v23 :: v_dual_mul_f32 v25, v19, v40
	v_fmac_f32_e32 v205, v25, v24
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v20, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v193, v25, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v20, v174
	v_mul_f32_e32 v25, v17, v52
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v194, v21, v22 :: v_dual_mul_f32 v21, v20, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v191, v21, v23
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v20, v176
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v192, v21, v24
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[21:24], v225 offset:37392
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v218, v25, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v17, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v219, v25, v22
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v17, v51
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v216, v25, v23
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v17, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v217, v25, v24
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v18, v34
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v210, v25, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v18, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v211, v25, v22
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v18, v36
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v208, v25, v23
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v18, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v209, v25, v24
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v19, v64
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v197, v25, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v19, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v203, v25, v22
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v19, v135
	scratch_load_b32 v135, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v195, v25, v23
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v25, v19, v136
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v196, v25, v24 :: v_dual_mul_f32 v25, v20, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v185, v25, v21
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v20, v178
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v186, v21, v22 :: v_dual_mul_f32 v21, v20, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v184, v21, v23 :: v_dual_mul_f32 v21, v20, v180
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v38, v21, v24 :: v_dual_add_nc_u32 v21, s23, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v21, v21, s48, 1
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_lshl_b32 s48, s10, 11
	s_add_i32 s49, s48, 0
	s_mov_b32 s48, s45
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_add_i32 s47, s49, 0x8000
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_add_i32 s45, s46, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s27, s11
	s_mov_b32 s27, s52
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v21, v21, s[40:43], 0 offen
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_store_b32 v226, v21 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	scratch_load_b64 v[39:40], off, off offset:144 ; 8-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[21:24], v225 offset:36864
	ds_load_b128 v[25:28], v225 offset:36880
	ds_load_b128 v[29:32], v225 offset:37376
	ds_load_b128 v[33:36], v225 offset:37392
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_add_nc_u32_e32 v37, s49, v45
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[39:40] offset:32768
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_lshlrev_b32_e32 v37, 4, v135
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v37, s46, v37
	ds_store_b128 v37, v[9:12]
	ds_store_b128 v37, v[13:16] offset:4096
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	ds_store_b128 v37, v[1:4] offset:16384
	ds_store_b128 v37, v[5:8] offset:20480
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v134, v17
	v_mul_f32_e32 v2, v113, v17
	v_mul_f32_e32 v3, v116, v17
	v_dual_mul_f32 v4, v114, v17 :: v_dual_mul_f32 v5, v99, v18
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(8)
	v_fmac_f32_e32 v153, v1, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v133, v17
	v_mul_f32_e32 v6, v97, v18
	v_mul_f32_e32 v7, v100, v18
	v_dual_mul_f32 v8, v98, v18 :: v_dual_mul_f32 v9, v83, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v165, v1, v22
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v1, v132, v17 :: v_dual_mul_f32 v10, v81, v19
	v_mul_f32_e32 v11, v84, v19
	v_dual_mul_f32 v12, v82, v19 :: v_dual_mul_f32 v13, v67, v20
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v163, v1, v23
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v1, v131, v17 :: v_dual_mul_f32 v14, v65, v20
	v_mul_f32_e32 v15, v68, v20
	v_mul_f32_e32 v16, v66, v20
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(5)
	v_fmac_f32_e32 v234, v2, v33
	v_dual_fmac_f32 v164, v1, v24 :: v_dual_mul_f32 v1, v128, v18
	scratch_load_b32 v131, off, off offset:172 ; 4-byte Folded Reload
	v_fmac_f32_e32 v161, v1, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v127, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v162, v1, v22
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v120, v18
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v159, v1, v23
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v119, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v160, v1, v24 :: v_dual_mul_f32 v1, v112, v19
	v_fmac_f32_e32 v157, v1, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v111, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v158, v1, v22 :: v_dual_mul_f32 v1, v104, v19
	v_fmac_f32_e32 v154, v1, v23
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v103, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v156, v1, v24
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v96, v20
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v169, v1, v21
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v95, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v170, v1, v22 :: v_dual_mul_f32 v1, v88, v20
	v_dual_fmac_f32 v166, v1, v23 :: v_dual_mul_f32 v1, v87, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v167, v1, v24
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v130, v17
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v183, v1, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v129, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v145, v1, v26
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v126, v17
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v201, v1, v27
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v125, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v202, v1, v28 :: v_dual_mul_f32 v1, v118, v18
	v_fmac_f32_e32 v199, v1, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v117, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v200, v1, v26
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v110, v18
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v148, v1, v27
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v109, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v198, v1, v28 :: v_dual_mul_f32 v1, v102, v19
	v_fmac_f32_e32 v255, v1, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v101, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v155, v1, v26
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v94, v19
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v253, v1, v27
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v93, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v254, v1, v28
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v86, v20
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v151, v1, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v85, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v152, v1, v26 :: v_dual_mul_f32 v1, v78, v20
	v_fmac_f32_e32 v149, v1, v27
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v77, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v150, v1, v28 :: v_dual_mul_f32 v1, v124, v17
	v_fmac_f32_e32 v247, v1, v29
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v123, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v248, v1, v30 :: v_dual_mul_f32 v1, v122, v17
	v_fmac_f32_e32 v245, v1, v31
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v121, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v246, v1, v32 :: v_dual_mul_f32 v1, v108, v18
	v_fmac_f32_e32 v243, v1, v29
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v107, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v244, v1, v30
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v106, v18
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v241, v1, v31
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v105, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v242, v1, v32 :: v_dual_mul_f32 v1, v92, v19
	v_fmac_f32_e32 v239, v1, v29
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v91, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v240, v1, v30 :: v_dual_mul_f32 v1, v90, v19
	v_fmac_f32_e32 v237, v1, v31
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v89, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v238, v1, v32
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v76, v20
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v251, v1, v29
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v75, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v252, v1, v30 :: v_dual_mul_f32 v1, v74, v20
	v_fmac_f32_e32 v249, v1, v31
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v73, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v250, v1, v32 :: v_dual_mul_f32 v1, v115, v17
	v_fmac_f32_e32 v235, v1, v34
	s_clause 0xd                            ; 56-byte Folded Reload
	scratch_load_b32 v28, off, off offset:88
	scratch_load_b32 v27, off, off offset:84
	scratch_load_b32 v26, off, off offset:80
	scratch_load_b32 v25, off, off offset:76
	scratch_load_b32 v24, off, off offset:72
	scratch_load_b32 v23, off, off offset:68
	scratch_load_b32 v22, off, off offset:64
	scratch_load_b32 v21, off, off offset:60
	scratch_load_b32 v19, off, off offset:56
	scratch_load_b32 v20, off, off offset:52
	scratch_load_b32 v18, off, off offset:16
	scratch_load_b32 v17, off, off offset:12
	scratch_load_b32 v1, off, off offset:8
	scratch_load_b32 v2, off, off offset:4
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v28, v3, v36 :: v_dual_fmac_f32 v27, v4, v35
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v26, v5, v34 :: v_dual_fmac_f32 v25, v6, v33
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v24, v7, v36 :: v_dual_fmac_f32 v23, v8, v35
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v22, v9, v34 :: v_dual_fmac_f32 v21, v10, v33
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v19, v11, v36 :: v_dual_fmac_f32 v20, v12, v35
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v18, v13, v34 :: v_dual_fmac_f32 v17, v14, v33
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v1, v15, v36 :: v_dual_fmac_f32 v2, v16, v35
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	scratch_load_b32 v14, off, off offset:180 ; 4-byte Folded Reload
	v_dual_mov_b32 v13, v172 :: v_dual_mov_b32 v224, v46
	v_mov_b32_e32 v225, v190
	s_clause 0x9                            ; 40-byte Folded Spill
	scratch_store_b32 off, v70, off offset:120
	scratch_store_b32 off, v63, off offset:124
	scratch_store_b32 off, v61, off offset:128
	scratch_store_b32 off, v69, off offset:132
	scratch_store_b32 off, v58, off offset:136
	scratch_store_b32 off, v229, off offset:1196
	scratch_store_b32 off, v230, off offset:1200
	scratch_store_b32 off, v48, off offset:116
	scratch_store_b32 off, v232, off offset:1212
	scratch_store_b32 off, v228, off offset:1216
	s_branch .LBB0_8
.LBB0_7:
	s_clause 0x1c                           ; 116-byte Folded Spill
	scratch_store_b32 off, v36, off offset:728
	scratch_store_b32 off, v35, off offset:724
	scratch_store_b32 off, v34, off offset:720
	scratch_store_b32 off, v33, off offset:712
	scratch_store_b32 off, v32, off offset:704
	scratch_store_b32 off, v31, off offset:700
	scratch_store_b32 off, v30, off offset:696
	scratch_store_b32 off, v29, off offset:692
	scratch_store_b32 off, v28, off offset:688
	scratch_store_b32 off, v27, off offset:684
	scratch_store_b32 off, v26, off offset:676
	scratch_store_b32 off, v25, off offset:672
	scratch_store_b32 off, v24, off offset:668
	scratch_store_b32 off, v23, off offset:664
	scratch_store_b32 off, v22, off offset:656
	scratch_store_b32 off, v21, off offset:648
	scratch_store_b32 off, v20, off offset:644
	scratch_store_b32 off, v19, off offset:640
	scratch_store_b32 off, v18, off offset:636
	scratch_store_b32 off, v17, off offset:632
	scratch_store_b32 off, v16, off offset:624
	scratch_store_b32 off, v15, off offset:616
	scratch_store_b32 off, v12, off offset:220
	scratch_store_b32 off, v11, off offset:216
	scratch_store_b32 off, v10, off offset:212
	scratch_store_b32 off, v9, off offset:208
	scratch_store_b32 off, v8, off offset:612
	scratch_store_b32 off, v7, off offset:608
	scratch_store_b32 off, v0, off offset:604
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v205, 0
	scratch_store_b32 off, v0, off offset:1200 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v210, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v203, 0
	v_mov_b32_e32 v222, 0
	scratch_store_b32 off, v0, off offset:1196 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v191, 0
	scratch_store_b32 off, v0, off offset:1212 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v193, 0
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v189, 0
	v_mov_b32_e32 v181, 0
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v41, 0
	scratch_store_b32 off, v1, off offset:96 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v213, 0
	scratch_store_b32 off, v1, off offset:120 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v209, 0
	scratch_store_b32 off, v1, off offset:128 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v146, 0
	v_mov_b32_e32 v187, 0
	scratch_store_b32 off, v1, off offset:124 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v71, 0
	scratch_store_b32 off, v1, off offset:1216 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v214, 0
	v_mov_b32_e32 v79, 0
	scratch_store_b32 off, v1, off offset:136 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v223, 0
	scratch_store_b32 off, v1, off offset:132 ; 4-byte Folded Spill
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v164, 0
	v_mov_b32_e32 v183, 0
	v_mov_b32_e32 v163, 0
	v_mov_b32_e32 v165, 0
	v_mov_b32_e32 v153, 0
	s_add_i32 s51, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s48, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
.LBB0_8:                                ; %Flow791
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v153, off offset:1308
	scratch_store_b32 off, v165, off offset:1192
	scratch_store_b32 off, v145, off offset:1052
	scratch_store_b32 off, v183, off offset:1048
	scratch_store_b32 off, v198, off offset:992
	scratch_store_b32 off, v148, off offset:988
	scratch_store_b32 off, v189, off offset:932
	scratch_store_b32 off, v202, off offset:928
	scratch_store_b32 off, v201, off offset:924
	scratch_store_b32 off, v200, off offset:908
	scratch_store_b32 off, v199, off offset:904
	scratch_store_b32 off, v41, off offset:900
	scratch_store_b32 off, v155, off offset:888
	scratch_store_b32 off, v244, off offset:872
	scratch_store_b32 off, v243, off offset:868
	scratch_store_b32 off, v241, off offset:848
	scratch_store_b32 off, v240, off offset:844
	scratch_store_b32 off, v239, off offset:840
	scratch_store_b32 off, v238, off offset:836
	scratch_store_b32 off, v237, off offset:832
	scratch_store_b32 off, v255, off offset:788
	scratch_store_b32 off, v254, off offset:784
	scratch_store_b32 off, v253, off offset:780
	scratch_store_b32 off, v188, off offset:764
	scratch_store_b32 off, v187, off offset:760
	scratch_store_b32 off, v248, off offset:740
	scratch_store_b32 off, v247, off offset:736
	scratch_store_b32 off, v246, off offset:732
	scratch_store_b32 off, v245, off offset:716
	scratch_store_b32 off, v242, off offset:708
	scratch_store_b32 off, v79, off offset:108
	scratch_store_b32 off, v72, off offset:104
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v71, off offset:100
	scratch_store_b32 off, v207, off offset:564
	scratch_store_b32 off, v0, off offset:560
	scratch_store_b32 off, v147, off offset:556
	scratch_store_b32 off, v146, off offset:552
	scratch_store_b32 off, v213, off offset:548
	scratch_store_b32 off, v236, off offset:544
	scratch_store_b32 off, v171, off offset:540
	scratch_store_b32 off, v170, off offset:536
	scratch_store_b32 off, v169, off offset:532
	scratch_store_b32 off, v167, off offset:528
	scratch_store_b32 off, v166, off offset:524
	scratch_store_b32 off, v164, off offset:520
	scratch_store_b32 off, v163, off offset:516
	scratch_store_b32 off, v162, off offset:512
	scratch_store_b32 off, v161, off offset:508
	scratch_store_b32 off, v160, off offset:504
	scratch_store_b32 off, v159, off offset:500
	scratch_store_b32 off, v158, off offset:496
	scratch_store_b32 off, v157, off offset:492
	scratch_store_b32 off, v156, off offset:488
	scratch_store_b32 off, v154, off offset:484
	scratch_store_b32 off, v152, off offset:480
	scratch_store_b32 off, v151, off offset:476
	scratch_store_b32 off, v150, off offset:472
	scratch_store_b32 off, v149, off offset:468
	scratch_store_b32 off, v252, off offset:464
	scratch_store_b32 off, v251, off offset:460
	scratch_store_b32 off, v250, off offset:456
	scratch_store_b32 off, v249, off offset:452
	scratch_store_b32 off, v235, off offset:448
	scratch_store_b32 off, v234, off offset:444
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v28, off offset:88
	scratch_store_b32 off, v27, off offset:84
	scratch_store_b32 off, v26, off offset:80
	scratch_store_b32 off, v25, off offset:76
	scratch_store_b32 off, v24, off offset:72
	scratch_store_b32 off, v23, off offset:68
	scratch_store_b32 off, v22, off offset:64
	scratch_store_b32 off, v21, off offset:60
	scratch_store_b32 off, v19, off offset:56
	scratch_store_b32 off, v20, off offset:52
	scratch_store_b32 off, v223, off offset:440
	scratch_store_b32 off, v222, off offset:436
	scratch_store_b32 off, v221, off offset:48
	scratch_store_b32 off, v220, off offset:44
	scratch_store_b32 off, v219, off offset:432
	scratch_store_b32 off, v218, off offset:428
	scratch_store_b32 off, v217, off offset:424
	scratch_store_b32 off, v216, off offset:420
	scratch_store_b32 off, v182, off offset:40
	scratch_store_b32 off, v214, off offset:36
	scratch_store_b32 off, v181, off offset:32
	scratch_store_b32 off, v44, off offset:28
	scratch_store_b32 off, v211, off offset:416
	scratch_store_b32 off, v210, off offset:412
	scratch_store_b32 off, v209, off offset:408
	scratch_store_b32 off, v208, off offset:404
	scratch_store_b32 off, v43, off offset:24
	scratch_store_b32 off, v42, off offset:20
	scratch_store_b32 off, v205, off offset:400
	scratch_store_b32 off, v204, off offset:396
	scratch_store_b32 off, v203, off offset:392
	scratch_store_b32 off, v197, off offset:388
	s_clause 0xd                            ; 56-byte Folded Spill
	scratch_store_b32 off, v196, off offset:384
	scratch_store_b32 off, v195, off offset:380
	scratch_store_b32 off, v194, off offset:376
	scratch_store_b32 off, v193, off offset:372
	scratch_store_b32 off, v192, off offset:368
	scratch_store_b32 off, v191, off offset:364
	scratch_store_b32 off, v18, off offset:16
	scratch_store_b32 off, v17, off offset:12
	scratch_store_b32 off, v1, off offset:8
	scratch_store_b32 off, v2, off offset:4
	scratch_store_b32 off, v186, off offset:204
	scratch_store_b32 off, v185, off offset:200
	scratch_store_b32 off, v184, off offset:192
	scratch_store_b32 off, v38, off
	.loc	1 316 26 is_stmt 1              ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1b                           ; 112-byte Folded Reload
	scratch_load_b32 v151, off, off offset:604
	scratch_load_b32 v152, off, off offset:608
	scratch_load_b32 v154, off, off offset:612
	scratch_load_b32 v160, off, off offset:616
	scratch_load_b32 v161, off, off offset:624
	scratch_load_b32 v162, off, off offset:632
	scratch_load_b32 v163, off, off offset:636
	scratch_load_b32 v164, off, off offset:640
	scratch_load_b32 v165, off, off offset:644
	scratch_load_b32 v168, off, off offset:648
	scratch_load_b32 v191, off, off offset:656
	scratch_load_b32 v192, off, off offset:664
	scratch_load_b32 v193, off, off offset:668
	scratch_load_b32 v194, off, off offset:672
	scratch_load_b32 v195, off, off offset:676
	scratch_load_b32 v196, off, off offset:684
	scratch_load_b32 v197, off, off offset:688
	scratch_load_b32 v203, off, off offset:692
	scratch_load_b32 v204, off, off offset:696
	scratch_load_b32 v205, off, off offset:700
	scratch_load_b32 v208, off, off offset:704
	scratch_load_b32 v209, off, off offset:712
	scratch_load_b32 v210, off, off offset:720
	scratch_load_b32 v219, off, off offset:724
	scratch_load_b32 v235, off, off offset:728
	scratch_load_b32 v184, off, off offset:156
	scratch_load_b32 v185, off, off offset:160
	scratch_load_b32 v186, off, off offset:164
	v_dual_mov_b32 v236, 0 :: v_dual_add_nc_u32 v9, s51, v131
	ds_load_u8_d16 v1, v9
	ds_load_u8_d16 v88, v9 offset:16
	ds_load_u8_d16 v169, v9 offset:32
	ds_load_u8_d16 v234, v9 offset:48
	ds_load_u8_d16 v2, v9 offset:64
	ds_load_u8_d16 v97, v9 offset:80
	ds_load_u8_d16 v81, v9 offset:96
	ds_load_u8_d16 v174, v9 offset:112
	ds_load_u8_d16 v3, v9 offset:128
	ds_load_u8_d16 v4, v9 offset:192
	ds_load_u8_d16 v106, v9 offset:144
	ds_load_u8_d16 v107, v9 offset:208
	ds_load_u8_d16 v91, v9 offset:160
	ds_load_u8_d16 v92, v9 offset:224
	ds_load_u8_d16 v67, v9 offset:240
	ds_load_u8_d16 v68, v9 offset:176
	ds_load_u8_d16 v5, v9 offset:256
	ds_load_u8_d16 v6, v9 offset:320
	ds_load_u8_d16 v110, v9 offset:272
	ds_load_u8_d16 v111, v9 offset:336
	ds_load_u8_d16 v95, v9 offset:288
	ds_load_u8_d16 v96, v9 offset:352
	ds_load_u8_d16 v71, v9 offset:368
	ds_load_u8_d16 v72, v9 offset:304
	ds_load_u8_d16 v123, v9 offset:384
	ds_load_u8_d16 v124, v9 offset:448
	ds_load_u8_d16 v113, v9 offset:400
	ds_load_u8_d16 v114, v9 offset:464
	ds_load_u8_d16 v98, v9 offset:416
	ds_load_u8_d16 v99, v9 offset:480
	ds_load_u8_d16 v75, v9 offset:496
	ds_load_u8_d16 v76, v9 offset:432
	ds_load_u8_d16 v7, v9 offset:512
	ds_load_u8_d16 v8, v9 offset:576
	ds_load_u8_d16 v115, v9 offset:528
	ds_load_u8_d16 v116, v9 offset:592
	ds_load_u8_d16 v100, v9 offset:544
	ds_load_u8_d16 v101, v9 offset:608
	ds_load_u8_d16 v84, v9 offset:624
	ds_load_u8_d16 v85, v9 offset:560
	ds_load_u8_d16 v125, v9 offset:640
	ds_load_u8_d16 v126, v9 offset:704
	ds_load_u8_d16 v117, v9 offset:656
	ds_load_u8_d16 v118, v9 offset:720
	ds_load_u8_d16 v102, v9 offset:672
	ds_load_u8_d16 v103, v9 offset:736
	ds_load_u8_d16 v86, v9 offset:752
	ds_load_u8_d16 v87, v9 offset:688
	ds_load_u8_d16 v129, v9 offset:768
	ds_load_u8_d16 v130, v9 offset:832
	ds_load_u8_d16 v119, v9 offset:784
	ds_load_u8_d16 v120, v9 offset:848
	ds_load_u8_d16 v104, v9 offset:800
	ds_load_u8_d16 v105, v9 offset:864
	ds_load_u8_d16 v89, v9 offset:880
	ds_load_u8_d16 v90, v9 offset:816
	ds_load_u8_d16 v127, v9 offset:896
	ds_load_u8_d16 v128, v9 offset:960
	ds_load_u8_d16 v146, v9 offset:1024
	ds_load_u8_d16 v121, v9 offset:912
	ds_load_u8_d16 v122, v9 offset:976
	ds_load_u8_d16 v108, v9 offset:928
	ds_load_u8_d16 v109, v9 offset:992
	ds_load_u8_d16 v93, v9 offset:944
	ds_load_u8_d16 v172, v9 offset:1088
	ds_load_u8_d16 v173, v9 offset:1152
	ds_load_u8_d16 v222, v9 offset:1040
	ds_load_u8_d16 v226, v9 offset:1104
	ds_load_u8_d16 v211, v9 offset:1056
	ds_load_u8_d16 v213, v9 offset:1120
	ds_load_u8_d16 v190, v9 offset:1136
	ds_load_u8_d16 v199, v9 offset:1072
	ds_load_u8_d16 v65, v9 offset:1216
	ds_load_u8_d16 v66, v9 offset:1280
	ds_load_u8_d16 v229, v9 offset:1168
	ds_load_u8_d16 v230, v9 offset:1232
	ds_load_u8_d16 v218, v9 offset:1184
	ds_load_u8_d16 v220, v9 offset:1248
	ds_load_u8_d16 v201, v9 offset:1264
	ds_load_u8_d16 v202, v9 offset:1200
	ds_load_u8_d16 v69, v9 offset:1344
	ds_load_u8_d16 v70, v9 offset:1408
	ds_load_u8_d16 v241, v9 offset:1296
	ds_load_u8_d16 v243, v9 offset:1360
	ds_load_u8_d16 v231, v9 offset:1312
	ds_load_u8_d16 v232, v9 offset:1376
	ds_load_u8_d16 v221, v9 offset:1392
	ds_load_u8_d16 v223, v9 offset:1328
	ds_load_u8_d16 v73, v9 offset:1472
	ds_load_u8_d16 v74, v9 offset:1536
	ds_load_u8_d16 v247, v9 offset:1424
	ds_load_u8_d16 v248, v9 offset:1488
	ds_load_u8_d16 v237, v9 offset:1440
	ds_load_u8_d16 v238, v9 offset:1504
	ds_load_u8_d16 v227, v9 offset:1520
	ds_load_u8_d16 v228, v9 offset:1456
	ds_load_u8_d16 v77, v9 offset:1600
	ds_load_u8_d16 v78, v9 offset:1664
	ds_load_u8_d16 v255, v9 offset:1552
	ds_load_u8_d16 v147, v9 offset:1616
	ds_load_u8_d16 v249, v9 offset:1568
	ds_load_u8_d16 v250, v9 offset:1632
	ds_load_u8_d16 v239, v9 offset:1648
	ds_load_u8_d16 v240, v9 offset:1584
	ds_load_u8_d16 v79, v9 offset:1728
	ds_load_u8_d16 v80, v9 offset:1792
	ds_load_u8_d16 v166, v9 offset:1680
	ds_load_u8_d16 v183, v9 offset:1744
	ds_load_u8_d16 v252, v9 offset:1696
	ds_load_u8_d16 v254, v9 offset:1760
	ds_load_u8_d16 v244, v9 offset:1776
	ds_load_u8_d16 v246, v9 offset:1712
	ds_load_u8_d16 v82, v9 offset:1856
	ds_load_u8_d16 v83, v9 offset:1920
	ds_load_u8_d16 v187, v9 offset:1808
	ds_load_u8_d16 v188, v9 offset:1872
	ds_load_u8_d16 v153, v9 offset:1824
	ds_load_u8_d16 v167, v9 offset:1888
	ds_load_u8_d16 v251, v9 offset:1904
	ds_load_u8_d16 v253, v9 offset:1840
	v_add_nc_u32_e32 v10, s51, v224
	v_add_nc_u32_e32 v11, s51, v225
	ds_load_u8_d16 v94, v9 offset:1984
	ds_load_u8_d16 v170, v9 offset:1936
	ds_load_u8_d16 v171, v9 offset:2000
	ds_load_u8_d16 v158, v9 offset:1952
	ds_load_u8_d16 v149, v9 offset:2016
	ds_load_u8_d16 v112, v10
	ds_load_u8_d16 v159, v11
	ds_load_u8_d16 v157, v9 offset:1968
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cndmask_b32_e64 v12, 0, 1, s2
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v12
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_mov_b32_e32 v180, v13
	s_waitcnt vmcnt(28)
	v_mov_b32_e32 v150, v14
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v233, off offset:1220
	scratch_store_b32 off, v212, off offset:1224
	scratch_store_b32 off, v215, off offset:1228
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v0, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v9, v129, v130, 0xc0c0004
	v_perm_b32 v10, v127, v128, 0xc0c0004
	s_mov_b32 s12, 0
	v_perm_b32 v11, v7, v8, 0xc0c0004
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	v_lshl_or_b32 v28, v10, 16, v9
	v_perm_b32 v9, v5, v6, 0xc0c0004
	v_perm_b32 v10, v123, v124, 0xc0c0004
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_lshl_or_b32 v26, v10, 16, v9
	v_perm_b32 v9, v1, v2, 0xc0c0004
	v_perm_b32 v10, v3, v4, 0xc0c0004
	s_mov_b32 s19, s12
	v_perm_b32 v12, v125, v126, 0xc0c0004
	v_dual_mov_b32 v138, s19 :: v_dual_mov_b32 v137, s18
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v25, v10, 16, v9
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(20)
	v_add_nc_u32_e32 v9, s50, v165
	v_add_nc_u32_e32 v10, s50, v164
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v27, v12, 16, v11
	s_waitcnt vmcnt(19)
	v_dual_mov_b32 v136, s17 :: v_dual_add_nc_u32 v11, s50, v168
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	v_dual_mov_b32 v132, s13 :: v_dual_add_nc_u32 v13, s50, v162
	ds_load_u8 v11, v11
	v_dual_mov_b32 v133, s14 :: v_dual_add_nc_u32 v12, s50, v160
	ds_load_u8 v13, v13
	v_dual_mov_b32 v135, s16 :: v_dual_mov_b32 v134, s15
	ds_load_u8 v12, v12
	v_mov_b32_e32 v131, s12
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v10, s50, v191
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v11, s50, v161
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v178, v10, 16, v9
	ds_load_u8 v11, v11
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s50, v0
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v9, v9
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s50, v0
	scratch_load_b32 v0, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v12, s50, v163
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v12, 16, v11
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s50, v0
	scratch_load_b32 v0, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v10, v10
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s50, v0
	scratch_load_b32 v0, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v11, s50, v152
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v176, v10, 16, v9
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v9, s50, v151
	v_add_nc_u32_e32 v10, s50, v150
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v11, v11
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v10, s50, v154
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v10, 16, v9
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s50, v0
	scratch_load_b32 v0, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v9, v9
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s50, v0
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s50, v0
	scratch_load_b32 v0, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v10, v10
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s50, v0
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v182, v10, 16, v9
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s50, v0
	scratch_load_b32 v0, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v11, v11
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v12, s50, v0
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v12, s50, v0
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v12, v12
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s50, v0
	scratch_load_b32 v0, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v13, v13
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s50, v0
	scratch_load_b32 v0, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v9, v9
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s50, v0
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v181, v12, 16, v11
	v_perm_b32 v12, v117, v118, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s50, v0
	scratch_load_b32 v0, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v10, v10
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s50, v0
	scratch_load_b32 v0, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v10, 16, v9
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s50, v0
	scratch_load_b32 v0, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v9, v9
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s50, v0
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s50, v0
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v10, v10
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s50, v0
	scratch_load_b32 v0, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_perm_b32 v11, v115, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v179, v10, 16, v9
	v_perm_b32 v9, v119, v120, 0xc0c0004
	v_perm_b32 v10, v121, v122, 0xc0c0004
	v_lshl_or_b32 v43, v12, 16, v11
	v_perm_b32 v11, v100, v101, 0xc0c0004
	v_perm_b32 v12, v102, v103, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[179:182], v[25:28], v[131:138] neg_lo:[1,1,0]
	v_lshl_or_b32 v44, v10, 16, v9
	v_perm_b32 v9, v110, v111, 0xc0c0004
	v_perm_b32 v10, v113, v114, 0xc0c0004
	v_lshl_or_b32 v59, v12, 16, v11
	v_perm_b32 v11, v85, v84, 0xc0c0004
	v_perm_b32 v12, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v42, v10, 16, v9
	v_perm_b32 v9, v88, v97, 0xc0c0004
	v_perm_b32 v10, v106, v107, 0xc0c0004
	v_lshl_or_b32 v141, v12, 16, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v41, v10, 16, v9
	v_perm_b32 v9, v104, v105, 0xc0c0004
	v_perm_b32 v10, v108, v109, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[179:182], v[41:44], v[131:138] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v10, 16, v9
	v_perm_b32 v9, v95, v96, 0xc0c0004
	v_perm_b32 v10, v98, v99, 0xc0c0004
	v_lshl_or_b32 v58, v10, 16, v9
	v_perm_b32 v9, v169, v81, 0xc0c0004
	v_perm_b32 v10, v91, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v57, v10, 16, v9
	v_perm_b32 v9, v90, v89, 0xc0c0004
	v_perm_b32 v10, v93, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[49:56], v[179:182], v[57:60], v[131:138] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v142, v10, 16, v9
	v_perm_b32 v9, v72, v71, 0xc0c0004
	v_perm_b32 v10, v76, v75, 0xc0c0004
	v_lshl_or_b32 v140, v10, 16, v9
	v_perm_b32 v9, v234, v174, 0xc0c0004
	v_perm_b32 v10, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v139, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[175:178], v[25:28], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[175:178], v[41:44], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[175:178], v[57:60], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[175:178], v[139:142], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[179:182], v[139:142], v[131:138] neg_lo:[1,1,0]
	v_perm_b32 v139, v80, v82, 0xc0c0004
	v_perm_b32 v140, v83, v94, 0xc0c0004
	v_perm_b32 v141, v74, v77, 0xc0c0004
	v_perm_b32 v175, v78, v79, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v176, s50, v219
	v_add_nc_u32_e32 v178, s50, v208
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v142, v140, 16, v139
	v_perm_b32 v139, v66, v69, 0xc0c0004
	v_perm_b32 v140, v70, v73, 0xc0c0004
	v_lshl_or_b32 v141, v175, 16, v141
	v_perm_b32 v175, v173, v65, 0xc0c0004
	ds_load_u8 v176, v176
	ds_load_u8 v178, v178
	v_lshl_or_b32 v140, v140, 16, v139
	v_perm_b32 v139, v146, v172, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v179, s50, v209
	v_add_nc_u32_e32 v180, s50, v194
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v139, v175, 16, v139
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v175, s50, v235
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v179, v179
	ds_load_u8 v180, v180
	ds_load_u8 v175, v175
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v176, s50, v0
	scratch_load_b32 v0, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v176, v176
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v177, s50, v0
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v177, v177
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v176, v177, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v177, s50, v205
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v177, v177
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v177, v178, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v178, s50, v210
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v178, v178
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v179, v178, 0xc0c0004
	v_lshl_or_b32 v178, v176, 16, v175
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v175, s50, v197
	v_add_nc_u32_e32 v176, s50, v196
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v177, v179, 16, v177
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v179, s50, v204
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v175, v175
	ds_load_u8 v176, v176
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v176, s50, v203
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v176, v176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v176, v179, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v179, s50, v193
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v176, v176, 16, v175
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v175, s50, v192
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v179, v179
	ds_load_u8 v175, v175
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v175, v179, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v179, s50, v195
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v175, v179, 16, v175
	v_wmma_i32_16x16x16_iu8 v[9:16], v[175:178], v[139:142], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s50, v0
	scratch_load_b32 v0, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v179, v179
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v180, s50, v0
	scratch_load_b32 v0, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v180, v180
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v180, s50, v0
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v180, v180
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v181, s50, v0
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v181, v181
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v180, v181, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v181, s50, v0
	scratch_load_b32 v0, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v181, v181
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v182, s50, v0
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v182, v182
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v181, v182, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v182, s50, v0
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v182, v182
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v143, s50, v0
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v143, v143
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v143, v182, 0xc0c0004
	v_lshl_or_b32 v182, v180, 16, v179
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v181, v143, 16, v181
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v143, s50, v0
	scratch_load_b32 v0, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v143, v143
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s50, v0
	scratch_load_b32 v0, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v179, v143, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s50, v0
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v179, v179
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v180, s50, v0
	scratch_load_b32 v0, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v180, v180
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v179, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v179, 16, v143
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v143, s50, v0
	scratch_load_b32 v0, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v143, v143
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s50, v0
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v143, v179, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s50, v0
	scratch_load_b32 v0, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v179, v179
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v144, s50, v0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v144, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v144, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v179, v144, 16, v143
	v_perm_b32 v143, v166, v183, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[179:182], v[139:142], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v139, v187, v188, 0xc0c0004
	v_perm_b32 v140, v170, v171, 0xc0c0004
	v_perm_b32 v141, v255, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v242, v17
	v_cvt_f32_i32_e32 v245, v18
	v_lshl_or_b32 v142, v140, 16, v139
	v_perm_b32 v139, v241, v243, 0xc0c0004
	v_perm_b32 v140, v247, v248, 0xc0c0004
	v_lshl_or_b32 v141, v143, 16, v141
	v_perm_b32 v143, v229, v230, 0xc0c0004
	v_cvt_f32_i32_e32 v217, v19
	v_cvt_f32_i32_e32 v214, v21
	v_lshl_or_b32 v140, v140, 16, v139
	v_perm_b32 v139, v222, v226, 0xc0c0004
	v_cvt_f32_i32_e32 v216, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v139, v143, 16, v139
	v_perm_b32 v143, v252, v254, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[175:178], v[139:142], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[179:182], v[139:142], v[33:40] neg_lo:[1,1,0]
	v_perm_b32 v139, v153, v167, 0xc0c0004
	v_perm_b32 v140, v158, v149, 0xc0c0004
	v_perm_b32 v141, v249, v250, 0xc0c0004
	v_cvt_f32_i32_e32 v0, v30
	v_cvt_f32_i32_e32 v144, v31
	v_cvt_f32_i32_e32 v31, v32
	v_lshl_or_b32 v142, v140, 16, v139
	v_perm_b32 v139, v231, v232, 0xc0c0004
	v_perm_b32 v140, v237, v238, 0xc0c0004
	v_lshl_or_b32 v141, v143, 16, v141
	v_perm_b32 v143, v218, v220, 0xc0c0004
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v37
	v_lshl_or_b32 v140, v140, 16, v139
	v_perm_b32 v139, v211, v213, 0xc0c0004
	v_cvt_f32_i32_e32 v0, v38
	v_cvt_f32_i32_e32 v21, v39
	v_cvt_f32_i32_e32 v22, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v139, v143, 16, v139
	v_perm_b32 v143, v246, v244, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[175:178], v[139:142], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[179:182], v[139:142], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v139, v253, v251, 0xc0c0004
	v_perm_b32 v140, v157, v159, 0xc0c0004
	v_perm_b32 v141, v240, v239, 0xc0c0004
	v_cvt_f32_i32_e32 v155, v41
	v_cvt_f32_i32_e32 v145, v43
	v_cvt_f32_i32_e32 v148, v44
	v_lshl_or_b32 v142, v140, 16, v139
	v_perm_b32 v139, v223, v221, 0xc0c0004
	v_perm_b32 v140, v228, v227, 0xc0c0004
	v_lshl_or_b32 v141, v143, 16, v141
	v_perm_b32 v143, v202, v201, 0xc0c0004
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_lshl_or_b32 v140, v140, 16, v139
	v_perm_b32 v139, v199, v190, 0xc0c0004
	v_cvt_f32_i32_e32 v43, v47
	v_cvt_f32_i32_e32 v44, v48
	v_cvt_f32_i32_e32 v19, v49
	v_cvt_f32_i32_e32 v40, v51
	v_lshl_or_b32 v139, v143, 16, v139
	v_cvt_f32_i32_e32 v18, v52
	v_cvt_f32_i32_e32 v38, v53
	v_cvt_f32_i32_e32 v39, v54
	v_cvt_f32_i32_e32 v37, v56
	v_wmma_i32_16x16x16_iu8 v[131:138], v[179:182], v[139:142], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[175:178], v[139:142], v[57:64] neg_lo:[1,1,0]
	scratch_load_b32 v180, off, off offset:176 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v140, v24
	v_cvt_f32_i32_e32 v142, v29
	v_cvt_f32_i32_e32 v24, v34
	v_cvt_f32_i32_e32 v34, v131
	scratch_load_b32 v131, off, off offset:172 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v29, v135
	scratch_load_b32 v135, off, off offset:168 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v141, v20
	v_cvt_f32_i32_e32 v139, v23
	v_cvt_f32_i32_e32 v178, v25
	v_cvt_f32_i32_e32 v179, v26
	v_cvt_f32_i32_e32 v176, v27
	v_cvt_f32_i32_e32 v177, v28
	v_cvt_f32_i32_e32 v23, v33
	v_cvt_f32_i32_e32 v25, v35
	v_cvt_f32_i32_e32 v26, v36
	v_cvt_f32_i32_e32 v175, v42
	v_cvt_f32_i32_e32 v20, v50
	v_cvt_f32_i32_e32 v36, v55
	v_cvt_f32_i32_e32 v50, v57
	v_cvt_f32_i32_e32 v51, v58
	v_cvt_f32_i32_e32 v55, v59
	v_cvt_f32_i32_e32 v49, v60
	v_cvt_f32_i32_e32 v41, v61
	v_cvt_f32_i32_e32 v42, v62
	v_cvt_f32_i32_e32 v52, v63
	v_cvt_f32_i32_e32 v48, v64
	v_cvt_f32_i32_e32 v35, v132
	v_cvt_f32_i32_e32 v32, v133
	v_cvt_f32_i32_e32 v33, v134
	v_cvt_f32_i32_e32 v30, v136
	v_cvt_f32_i32_e32 v28, v137
	v_cvt_f32_i32_e32 v27, v138
	v_cvt_f32_i32_e32 v53, v11
	v_cvt_f32_i32_e32 v54, v12
	v_cvt_f32_i32_e32 v47, v13
	v_cvt_f32_i32_e32 v11, v14
	v_cvt_f32_i32_e32 v12, v15
	v_cvt_f32_i32_e32 v15, v16
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_waitcnt lgkmcnt(12)
	v_mov_b16_e64 v156.l, v188.l
	v_mov_b16_e64 v143.l, v187.l
	v_mov_b16_e64 v233.l, v183.l
	s_waitcnt lgkmcnt(10)
	v_mov_b16_e64 v215.l, v167.l
	v_mov_b16_e64 v212.l, v166.l
	v_mov_b16_e64 v182.l, v153.l
	v_mov_b16_e64 v181.l, v147.l
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v55, off offset:1208
	scratch_store_b32 off, v10, off offset:1168
	scratch_store_b32 off, v9, off offset:1124
	scratch_store_b32 off, v54, off offset:1120
	scratch_store_b32 off, v53, off offset:1112
	scratch_store_b32 off, v179, off offset:1104
	scratch_store_b32 off, v52, off offset:1100
	scratch_store_b32 off, v178, off offset:1092
	scratch_store_b32 off, v177, off offset:1088
	scratch_store_b32 off, v176, off offset:1084
	scratch_store_b32 off, v175, off offset:1080
	scratch_store_b32 off, v155, off offset:1076
	scratch_store_b32 off, v148, off offset:1072
	scratch_store_b32 off, v145, off offset:1068
	scratch_store_b32 off, v51, off offset:1064
	scratch_store_b32 off, v50, off offset:1060
	scratch_store_b32 off, v49, off offset:1056
	scratch_store_b32 off, v144, off offset:1044
	scratch_store_b32 off, v48, off offset:1040
	scratch_store_b32 off, v47, off offset:1004
	scratch_store_b32 off, v11, off offset:984
	scratch_store_b32 off, v15, off offset:980
	scratch_store_b32 off, v12, off offset:976
	scratch_store_b32 off, v31, off offset:972
	scratch_store_b32 off, v46, off offset:964
	scratch_store_b32 off, v45, off offset:960
	scratch_store_b32 off, v44, off offset:956
	scratch_store_b32 off, v43, off offset:952
	scratch_store_b32 off, v42, off offset:940
	scratch_store_b32 off, v41, off offset:936
	scratch_store_b32 off, v40, off offset:828
	scratch_store_b32 off, v39, off offset:824
	s_clause 0x15                           ; 88-byte Folded Spill
	scratch_store_b32 off, v38, off offset:820
	scratch_store_b32 off, v37, off offset:816
	scratch_store_b32 off, v36, off offset:812
	scratch_store_b32 off, v35, off offset:808
	scratch_store_b32 off, v34, off offset:804
	scratch_store_b32 off, v33, off offset:800
	scratch_store_b32 off, v32, off offset:796
	scratch_store_b32 off, v30, off offset:776
	scratch_store_b32 off, v29, off offset:680
	scratch_store_b32 off, v28, off offset:660
	scratch_store_b32 off, v27, off offset:652
	scratch_store_b32 off, v24, off offset:628
	scratch_store_b32 off, v23, off offset:620
	scratch_store_b32 off, v26, off offset:600
	scratch_store_b32 off, v25, off offset:596
	scratch_store_b32 off, v0, off offset:592
	scratch_store_b32 off, v17, off offset:588
	scratch_store_b32 off, v22, off offset:584
	scratch_store_b32 off, v21, off offset:580
	scratch_store_b32 off, v20, off offset:576
	scratch_store_b32 off, v19, off offset:572
	scratch_store_b32 off, v18, off offset:568
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v9, 0
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s0
	scratch_store_b32 off, v206, off offset:1232 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v0, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v5, v5, v6, 0xc0c0004
	v_perm_b32 v6, v123, v124, 0xc0c0004
	v_perm_b32 v1, v1, v2, 0xc0c0004
	v_perm_b32 v2, v3, v4, 0xc0c0004
	s_mov_b32 s12, 0
	v_perm_b32 v9, v129, v130, 0xc0c0004
	v_lshl_or_b32 v6, v6, 16, v5
	s_mov_b32 s13, s12
	v_lshl_or_b32 v5, v2, 16, v1
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(20)
	v_add_nc_u32_e32 v1, s48, v165
	v_add_nc_u32_e32 v2, s48, v164
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v10, v127, v128, 0xc0c0004
	v_perm_b32 v7, v7, v8, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(19)
	v_add_nc_u32_e32 v3, s48, v168
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	v_lshl_or_b32 v8, v10, 16, v9
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v9, s48, v162
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v3, v3
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v4, s48, v160
	v_add_nc_u32_e32 v10, s48, v152
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v11, v125, v126, 0xc0c0004
	ds_load_u8 v9, v9
	ds_load_u8 v4, v4
	ds_load_u8 v10, v10
	v_lshl_or_b32 v7, v11, 16, v7
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v2, s48, v191
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v3, s48, v161
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v4, s48, v163
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v4, v4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v4, 0xc0c0004
	v_lshl_or_b32 v4, v2, 16, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v3, v9, 16, v3
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s48, v0
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v1, v1
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s48, v0
	scratch_load_b32 v0, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s48, v0
	scratch_load_b32 v0, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v2, v2
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s48, v0
	scratch_load_b32 v0, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v9, v2, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v9, s48, v150
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v2, v2, 16, v1
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v1, s48, v151
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v9, v9
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v9, v1, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v9, s48, v154
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v9, 16, v1
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s48, v0
	scratch_load_b32 v0, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v9, v9
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s48, v0
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s48, v0
	scratch_load_b32 v0, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v10, v10
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s48, v0
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v126, v10, 16, v9
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s48, v0
	scratch_load_b32 v0, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v11, v11
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v12, s48, v0
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v12, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v12, s48, v0
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v12, v12
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s48, v0
	scratch_load_b32 v0, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v13, v13
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s48, v0
	scratch_load_b32 v0, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v9, v9
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s48, v0
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v125, v12, 16, v11
	v_perm_b32 v12, v117, v118, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s48, v0
	scratch_load_b32 v0, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v10, v10
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s48, v0
	scratch_load_b32 v0, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v124, v10, 16, v9
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s48, v0
	scratch_load_b32 v0, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v9, v9
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s48, v0
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s48, v0
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v10, v10
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s48, v0
	scratch_load_b32 v0, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_perm_b32 v11, v115, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v123, v10, 16, v9
	v_perm_b32 v9, v119, v120, 0xc0c0004
	v_perm_b32 v10, v121, v122, 0xc0c0004
	v_lshl_or_b32 v51, v12, 16, v11
	v_perm_b32 v11, v100, v101, 0xc0c0004
	v_perm_b32 v12, v102, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v52, v10, 16, v9
	v_perm_b32 v9, v110, v111, 0xc0c0004
	v_perm_b32 v10, v113, v114, 0xc0c0004
	v_lshl_or_b32 v100, v12, 16, v11
	v_perm_b32 v11, v85, v84, 0xc0c0004
	v_perm_b32 v12, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v10, 16, v9
	v_perm_b32 v9, v88, v97, 0xc0c0004
	v_perm_b32 v10, v106, v107, 0xc0c0004
	v_lshl_or_b32 v49, v10, 16, v9
	v_perm_b32 v9, v104, v105, 0xc0c0004
	v_perm_b32 v10, v108, v109, 0xc0c0004
	v_lshl_or_b32 v104, v12, 16, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v101, v10, 16, v9
	v_perm_b32 v9, v95, v96, 0xc0c0004
	v_perm_b32 v10, v98, v99, 0xc0c0004
	v_lshl_or_b32 v99, v10, 16, v9
	v_perm_b32 v9, v169, v81, 0xc0c0004
	v_perm_b32 v10, v91, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v98, v10, 16, v9
	v_perm_b32 v9, v90, v89, 0xc0c0004
	v_perm_b32 v10, v93, v112, 0xc0c0004
	v_lshl_or_b32 v105, v10, 16, v9
	v_perm_b32 v9, v72, v71, 0xc0c0004
	v_perm_b32 v10, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v103, v10, 16, v9
	v_perm_b32 v9, v234, v174, 0xc0c0004
	v_perm_b32 v10, v68, v67, 0xc0c0004
	v_lshl_or_b32 v102, v10, 16, v9
	v_dual_mov_b32 v9, s12 :: v_dual_mov_b32 v10, s13
	v_dual_mov_b32 v11, s14 :: v_dual_mov_b32 v12, s15
	v_dual_mov_b32 v13, s16 :: v_dual_mov_b32 v14, s17
	v_dual_mov_b32 v15, s18 :: v_dual_mov_b32 v16, s19
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[1:4], v[5:8], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[1:4], v[49:52], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[123:126], v[49:52], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[1:4], v[98:101], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[1:4], v[102:105], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v1, v80, v82, 0xc0c0004
	v_perm_b32 v2, v83, v94, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[123:126], v[5:8], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v3, v74, v77, 0xc0c0004
	v_perm_b32 v5, v78, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v66, v69, 0xc0c0004
	v_perm_b32 v2, v70, v73, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v6, s48, v219
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v3, v5, 16, v3
	v_perm_b32 v5, v173, v65, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v8, s48, v205
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v146, v172, 0xc0c0004
	ds_load_u8 v6, v6
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v65, s48, v209
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v8, v8
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v66, s48, v194
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v1, v5, 16, v1
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v5, s48, v235
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[57:64], v[123:126], v[98:101], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[123:126], v[102:105], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v65, v65
	ds_load_u8 v5, v5
	ds_load_u8 v66, v66
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v6, s48, v0
	scratch_load_b32 v0, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v6, v6
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v7, s48, v0
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v7, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v7, s48, v208
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v7, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v8, s48, v210
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v8, v8
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v65, v8, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v5, s48, v197
	v_add_nc_u32_e32 v6, s48, v196
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v7, v65, 16, v7
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v65, s48, v203
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v5, v5
	ds_load_u8 v6, v6
	ds_load_u8 v65, v65
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v6, s48, v204
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v65, v6, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v65, s48, v192
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v6, v6, 16, v5
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v5, s48, v193
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v65, v65
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v65, v5, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v65, s48, v195
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v65, v65
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v5, v65, 16, v5
	v_wmma_i32_16x16x16_iu8 v[17:24], v[5:8], v[1:4], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v145, v22
	v_cvt_f32_i32_e32 v236, v17
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v65, s48, v0
	scratch_load_b32 v0, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v65, v65
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s48, v0
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v66, v66
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s48, v0
	scratch_load_b32 v0, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v66, v66
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s48, v0
	scratch_load_b32 v0, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s48, v0
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v67, v67
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s48, v0
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s48, v0
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v68, v68
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s48, v0
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v67, v69, 16, v67
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v65, s48, v0
	scratch_load_b32 v0, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v65, v65
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s48, v0
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v66, v66
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s48, v0
	scratch_load_b32 v0, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v66, v66
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s48, v0
	scratch_load_b32 v0, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v69, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v65, s48, v0
	scratch_load_b32 v0, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v65, v65
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s48, v0
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v69, v65, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s48, v0
	scratch_load_b32 v0, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v69, v69
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s48, v0
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v65, v69, 16, v65
	v_perm_b32 v69, v212, v233, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[65:68], v[1:4], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v1, v143, v156, 0xc0c0004
	v_perm_b32 v2, v170, v171, 0xc0c0004
	v_perm_b32 v3, v255, v181, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v175, v25
	v_cvt_f32_i32_e32 v176, v26
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v241, v243, 0xc0c0004
	v_perm_b32 v2, v247, v248, 0xc0c0004
	v_lshl_or_b32 v3, v69, 16, v3
	v_perm_b32 v69, v229, v230, 0xc0c0004
	v_cvt_f32_i32_e32 v144, v27
	v_cvt_f32_i32_e32 v155, v28
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v222, v226, 0xc0c0004
	v_cvt_f32_i32_e32 v134, v29
	v_cvt_f32_i32_e32 v136, v30
	v_cvt_f32_i32_e32 v132, v31
	v_cvt_f32_i32_e32 v133, v32
	v_lshl_or_b32 v1, v69, 16, v1
	v_perm_b32 v69, v252, v254, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[5:8], v[1:4], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[65:68], v[1:4], v[41:48] neg_lo:[1,1,0]
	v_perm_b32 v1, v182, v215, 0xc0c0004
	v_perm_b32 v2, v158, v149, 0xc0c0004
	v_perm_b32 v3, v249, v250, 0xc0c0004
	v_cvt_f32_i32_e32 v153, v33
	v_cvt_f32_i32_e32 v166, v34
	v_cvt_f32_i32_e32 v147, v35
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v231, v232, 0xc0c0004
	v_perm_b32 v2, v237, v238, 0xc0c0004
	v_lshl_or_b32 v3, v69, 16, v3
	v_perm_b32 v69, v218, v220, 0xc0c0004
	v_cvt_f32_i32_e32 v167, v36
	v_cvt_f32_i32_e32 v183, v37
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v211, v213, 0xc0c0004
	v_cvt_f32_i32_e32 v187, v38
	v_cvt_f32_i32_e32 v148, v39
	v_cvt_f32_i32_e32 v207, v40
	v_cvt_f32_i32_e32 v137, v41
	v_lshl_or_b32 v1, v69, 16, v1
	v_perm_b32 v69, v246, v244, 0xc0c0004
	v_cvt_f32_i32_e32 v138, v42
	v_cvt_f32_i32_e32 v41, v43
	v_cvt_f32_i32_e32 v42, v44
	v_wmma_i32_16x16x16_iu8 v[49:56], v[5:8], v[1:4], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[65:68], v[1:4], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v1, v253, v251, 0xc0c0004
	v_perm_b32 v2, v157, v159, 0xc0c0004
	v_perm_b32 v3, v240, v239, 0xc0c0004
	v_cvt_f32_i32_e32 v31, v45
	v_cvt_f32_i32_e32 v32, v46
	v_cvt_f32_i32_e32 v29, v47
	v_lshl_or_b32 v4, v2, 16, v1
	v_perm_b32 v1, v223, v221, 0xc0c0004
	v_perm_b32 v2, v228, v227, 0xc0c0004
	v_lshl_or_b32 v3, v69, 16, v3
	v_perm_b32 v69, v202, v201, 0xc0c0004
	v_cvt_f32_i32_e32 v30, v48
	v_cvt_f32_i32_e32 v177, v49
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v199, v190, 0xc0c0004
	v_cvt_f32_i32_e32 v178, v50
	v_cvt_f32_i32_e32 v50, v51
	v_cvt_f32_i32_e32 v51, v52
	v_cvt_f32_i32_e32 v188, v53
	v_lshl_or_b32 v1, v69, 16, v1
	v_cvt_f32_i32_e32 v189, v54
	v_cvt_f32_i32_e32 v47, v55
	v_cvt_f32_i32_e32 v200, v56
	v_cvt_f32_i32_e32 v39, v57
	v_wmma_i32_16x16x16_iu8 v[84:91], v[5:8], v[1:4], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[65:68], v[1:4], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v40, v58
	v_cvt_f32_i32_e32 v38, v59
	v_cvt_f32_i32_e32 v33, v60
	v_cvt_f32_i32_e32 v27, v61
	v_cvt_f32_i32_e32 v28, v62
	v_cvt_f32_i32_e32 v25, v63
	v_cvt_f32_i32_e32 v26, v64
	v_cvt_f32_i32_e32 v43, v84
	v_cvt_f32_i32_e32 v44, v85
	v_cvt_f32_i32_e32 v48, v86
	v_cvt_f32_i32_e32 v49, v87
	v_cvt_f32_i32_e32 v45, v88
	v_cvt_f32_i32_e32 v46, v89
	v_cvt_f32_i32_e32 v198, v90
	v_cvt_f32_i32_e32 v35, v91
	v_cvt_f32_i32_e32 v36, v9
	v_cvt_f32_i32_e32 v37, v10
	v_cvt_f32_i32_e32 v34, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v11, v13
	v_cvt_f32_i32_e32 v0, v14
	v_cvt_f32_i32_e32 v9, v15
	v_cvt_f32_i32_e32 v10, v16
	v_cvt_f32_i32_e32 v16, v18
	v_cvt_f32_i32_e32 v15, v19
	v_cvt_f32_i32_e32 v18, v20
	v_cvt_f32_i32_e32 v19, v21
	v_cvt_f32_i32_e32 v13, v23
	v_cvt_f32_i32_e32 v14, v24
.LBB0_12:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v16, off offset:1544
	scratch_store_b32 off, v19, off offset:1412
	scratch_store_b32 off, v18, off offset:1332
	scratch_store_b32 off, v15, off offset:1328
	scratch_store_b32 off, v166, off offset:1324
	scratch_store_b32 off, v51, off offset:1320
	scratch_store_b32 off, v50, off offset:1316
	scratch_store_b32 off, v167, off offset:1312
	scratch_store_b32 off, v44, off offset:1304
	scratch_store_b32 off, v43, off offset:1300
	scratch_store_b32 off, v49, off offset:1264
	scratch_store_b32 off, v48, off offset:1260
	scratch_store_b32 off, v14, off offset:1256
	scratch_store_b32 off, v13, off offset:1252
	scratch_store_b32 off, v47, off offset:1248
	scratch_store_b32 off, v46, off offset:1244
	scratch_store_b32 off, v45, off offset:1240
	scratch_store_b32 off, v35, off offset:1236
	scratch_store_b32 off, v176, off offset:1184
	scratch_store_b32 off, v175, off offset:1180
	scratch_store_b32 off, v155, off offset:1176
	scratch_store_b32 off, v144, off offset:1172
	scratch_store_b32 off, v138, off offset:1164
	scratch_store_b32 off, v137, off offset:1160
	scratch_store_b32 off, v42, off offset:1156
	scratch_store_b32 off, v41, off offset:1152
	scratch_store_b32 off, v40, off offset:1148
	scratch_store_b32 off, v39, off offset:1144
	scratch_store_b32 off, v38, off offset:1140
	scratch_store_b32 off, v37, off offset:1136
	scratch_store_b32 off, v36, off offset:1132
	scratch_store_b32 off, v12, off offset:1128
	s_clause 0x1a                           ; 108-byte Folded Spill
	scratch_store_b32 off, v34, off offset:1116
	scratch_store_b32 off, v33, off offset:1108
	scratch_store_b32 off, v136, off offset:1020
	scratch_store_b32 off, v134, off offset:1016
	scratch_store_b32 off, v133, off offset:1012
	scratch_store_b32 off, v132, off offset:1008
	scratch_store_b32 off, v32, off offset:1000
	scratch_store_b32 off, v31, off offset:996
	scratch_store_b32 off, v30, off offset:968
	scratch_store_b32 off, v29, off offset:948
	scratch_store_b32 off, v28, off offset:944
	scratch_store_b32 off, v27, off offset:920
	scratch_store_b32 off, v26, off offset:916
	scratch_store_b32 off, v25, off offset:912
	scratch_store_b32 off, v142, off offset:1188
	scratch_store_b32 off, v11, off offset:756
	scratch_store_b32 off, v10, off offset:752
	scratch_store_b32 off, v9, off offset:748
	scratch_store_b32 off, v0, off offset:744
	scratch_store_b32 off, v245, off offset:896
	scratch_store_b32 off, v242, off offset:892
	scratch_store_b32 off, v141, off offset:792
	scratch_store_b32 off, v217, off offset:884
	scratch_store_b32 off, v216, off offset:880
	scratch_store_b32 off, v214, off offset:876
	scratch_store_b32 off, v140, off offset:772
	scratch_store_b32 off, v139, off offset:768
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v0, off, off offset:864 ; 4-byte Folded Reload
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 27
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s26, s0
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_waitcnt vmcnt(1)
	v_add3_u32 v8, s33, s23, v135
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s0, 5
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s26, s10
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v6, v180, s0, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s5, -1, 0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v1, v185, s0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s4, s0, s35
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v2, v186, s4, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_add_lshl_u32 v7, v184, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s27, s11
	s_and_b32 s25, s25, 0xffff
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v14, s47, v131
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v15, s47, v224
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v2, v2, s[24:27], 0 offen
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v25, s47, v225
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v140, 0
	s_waitcnt lgkmcnt(7)
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v38, 0
	v_mov_b32_e32 v61, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v37, 0
	s_mov_b32 s12, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v24, 0
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v58, 0 :: v_dual_and_b32 v3, 32, v0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v0, off, off offset:860 ; 4-byte Folded Reload
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	scratch_store_b32 off, v1, off offset:1356 ; 4-byte Folded Spill
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v4, 28, v0
	scratch_load_b32 v0, off, off offset:856 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v3, 0, v0, v3
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	scratch_load_b32 v0, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_add_nc_u32_e32 v9, v3, v4
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v9, v2 offset:36864
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v5, v0, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v0, 0 :: v_dual_cndmask_b32 v3, 0x80000000, v5
	buffer_load_u16 v1, v3, s[8:11], 0 offen
	scratch_store_b32 off, v8, off offset:1096 ; 4-byte Folded Spill
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v8, v8, s4, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v5, 0x80000000, v7, vcc_lo
	v_dual_mov_b32 v3, 0 :: v_dual_cndmask_b32 v6, 0x80000000, v8
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:1352 ; 4-byte Folded Spill
	buffer_load_u16 v1, v4, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:1548 ; 4-byte Folded Spill
	buffer_load_u16 v1, v5, s[8:11], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v1, off offset:1360 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v2, off, off offset:852 ; 4-byte Folded Reload
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v1, v6, s[24:27], 0 offen
	scratch_store_b32 off, v3, off offset:180 ; 4-byte Folded Spill
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v79, 0, v2
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v2, 0 :: v_dual_lshlrev_b32 v1, 16, v1
	ds_load_b128 v[33:36], v79 offset:36864
	ds_load_b128 v[29:32], v79 offset:36880
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:144
	scratch_store_b32 off, v0, off offset:184
	v_cndmask_b32_e64 v2, 0, 1, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[2:5], v79 offset:37376
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[2:5], off offset:1476 ; 16-byte Folded Spill
	ds_load_b128 v[2:5], v79 offset:37392
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[2:5], off offset:1460 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_store_b32 off, v9, off offset:1204 ; 4-byte Folded Spill
	ds_store_b32 v9, v1 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	ds_load_u8_d16 v1, v14
	ds_load_u8_d16 v0, v14 offset:16
	ds_load_u8_d16 v206, v15
	ds_load_u8_d16 v214, v25
	ds_load_u8_d16 v223, v14 offset:1968
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v25, 0
	s_waitcnt lgkmcnt(3)
	scratch_store_b32 off, v0, off offset:1612 ; 4-byte Folded Spill
	ds_load_u8_d16 v224, v14 offset:32
	ds_load_u8_d16 v185, v14 offset:48
	ds_load_u8_d16 v2, v14 offset:64
	ds_load_u8_d16 v0, v14 offset:80
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1616 ; 4-byte Folded Spill
	ds_load_u8_d16 v230, v14 offset:96
	ds_load_u8_d16 v201, v14 offset:112
	ds_load_u8_d16 v3, v14 offset:128
	ds_load_u8_d16 v4, v14 offset:192
	ds_load_u8_d16 v0, v14 offset:144
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1620 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v14 offset:208
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1624 ; 4-byte Folded Spill
	ds_load_u8_d16 v231, v14 offset:160
	ds_load_u8_d16 v228, v14 offset:224
	ds_load_u8_d16 v215, v14 offset:240
	ds_load_u8_d16 v216, v14 offset:176
	ds_load_u8_d16 v5, v14 offset:256
	ds_load_u8_d16 v6, v14 offset:320
	ds_load_u8_d16 v76, v14 offset:272
	ds_load_u8_d16 v171, v14 offset:336
	ds_load_u8_d16 v238, v14 offset:288
	ds_load_u8_d16 v212, v14 offset:352
	ds_load_u8_d16 v222, v14 offset:368
	ds_load_u8_d16 v225, v14 offset:304
	ds_load_u8_d16 v7, v14 offset:384
	ds_load_u8_d16 v8, v14 offset:448
	ds_load_u8_d16 v78, v14 offset:400
	ds_load_u8_d16 v80, v14 offset:464
	ds_load_u8_d16 v239, v14 offset:416
	ds_load_u8_d16 v240, v14 offset:480
	ds_load_u8_d16 v226, v14 offset:496
	ds_load_u8_d16 v227, v14 offset:432
	ds_load_u8_d16 v10, v14 offset:512
	ds_load_u8_d16 v9, v14 offset:576
	ds_load_u8_d16 v144, v14 offset:528
	ds_load_u8_d16 v146, v14 offset:592
	ds_load_u8_d16 v244, v14 offset:544
	ds_load_u8_d16 v0, v14 offset:608
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1552 ; 4-byte Folded Spill
	ds_load_u8_d16 v246, v14 offset:624
	ds_load_u8_d16 v247, v14 offset:560
	ds_load_u8_d16 v11, v14 offset:640
	ds_load_u8_d16 v16, v14 offset:704
	ds_load_u8_d16 v66, v14 offset:656
	ds_load_u8_d16 v67, v14 offset:720
	ds_load_u8_d16 v0, v14 offset:672
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1556 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v14 offset:736
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1560 ; 4-byte Folded Spill
	ds_load_u8_d16 v248, v14 offset:752
	ds_load_u8_d16 v249, v14 offset:688
	ds_load_u8_d16 v49, v14 offset:768
	ds_load_u8_d16 v12, v14 offset:832
	ds_load_u8_d16 v70, v14 offset:784
	ds_load_u8_d16 v74, v14 offset:848
	ds_load_u8_d16 v0, v14 offset:800
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1580 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v14 offset:864
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1584 ; 4-byte Folded Spill
	ds_load_u8_d16 v255, v14 offset:880
	ds_load_u8_d16 v184, v14 offset:816
	ds_load_u8_d16 v52, v14 offset:896
	ds_load_u8_d16 v13, v14 offset:960
	ds_load_u8_d16 v173, v14 offset:1024
	ds_load_u8_d16 v117, v14 offset:912
	ds_load_u8_d16 v118, v14 offset:976
	ds_load_u8_d16 v0, v14 offset:928
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1588 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v14 offset:992
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1592 ; 4-byte Folded Spill
	ds_load_u8_d16 v186, v14 offset:944
	ds_load_u8_d16 v56, v14 offset:1088
	ds_load_u8_d16 v53, v14 offset:1152
	ds_load_u8_d16 v0, v14 offset:1040
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:1628 ; 4-byte Folded Spill
	ds_load_u8_d16 v75, v14 offset:1104
	ds_load_u8_d16 v232, v14 offset:1056
	ds_load_u8_d16 v202, v14 offset:1120
	ds_load_u8_d16 v217, v14 offset:1136
	ds_load_u8_d16 v218, v14 offset:1072
	ds_load_u8_d16 v54, v14 offset:1216
	ds_load_u8_d16 v55, v14 offset:1280
	ds_load_u8_d16 v172, v14 offset:1168
	ds_load_u8_d16 v77, v14 offset:1232
	ds_load_u8_d16 v233, v14 offset:1184
	ds_load_u8_d16 v237, v14 offset:1248
	ds_load_u8_d16 v220, v14 offset:1264
	ds_load_u8_d16 v221, v14 offset:1200
	ds_load_u8_d16 v73, v14 offset:1344
	ds_load_u8_d16 v119, v14 offset:1408
	ds_load_u8_d16 v81, v14 offset:1296
	ds_load_u8_d16 v82, v14 offset:1360
	ds_load_u8_d16 v190, v14 offset:1312
	ds_load_u8_d16 v0, v14 offset:1376
	ds_load_u8_d16 v229, v14 offset:1392
	ds_load_u8_d16 v234, v14 offset:1328
	ds_load_u8_d16 v120, v14 offset:1472
	ds_load_u8_d16 v121, v14 offset:1536
	ds_load_u8_d16 v149, v14 offset:1424
	ds_load_u8_d16 v65, v14 offset:1488
	ds_load_u8_d16 v242, v14 offset:1440
	ds_load_u8_d16 v243, v14 offset:1504
	ds_load_u8_d16 v241, v14 offset:1520
	ds_load_u8_d16 v245, v14 offset:1456
	ds_load_u8_d16 v122, v14 offset:1600
	ds_load_u8_d16 v123, v14 offset:1664
	ds_load_u8_d16 v68, v14 offset:1552
	ds_load_u8_d16 v69, v14 offset:1616
	ds_load_u8_d16 v20, v14 offset:1568
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v20, off offset:1564 ; 4-byte Folded Spill
	ds_load_u8_d16 v20, v14 offset:1632
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v20, off offset:1568 ; 4-byte Folded Spill
	ds_load_u8_d16 v250, v14 offset:1648
	ds_load_u8_d16 v251, v14 offset:1584
	ds_load_u8_d16 v174, v14 offset:1728
	ds_load_u8_d16 v124, v14 offset:1792
	ds_load_u8_d16 v71, v14 offset:1680
	ds_load_u8_d16 v116, v14 offset:1744
	ds_load_u8_d16 v20, v14 offset:1696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v20, off offset:1572 ; 4-byte Folded Spill
	ds_load_u8_d16 v20, v14 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v20, off offset:1576 ; 4-byte Folded Spill
	ds_load_u8_d16 v252, v14 offset:1776
	ds_load_u8_d16 v253, v14 offset:1712
	ds_load_u8_d16 v125, v14 offset:1856
	ds_load_u8_d16 v126, v14 offset:1920
	ds_load_u8_d16 v83, v14 offset:1808
	ds_load_u8_d16 v169, v14 offset:1872
	ds_load_u8_d16 v20, v14 offset:1824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v20, off offset:1596 ; 4-byte Folded Spill
	ds_load_u8_d16 v20, v14 offset:1888
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v20, off offset:1600 ; 4-byte Folded Spill
	ds_load_u8_d16 v155, v14 offset:1904
	ds_load_u8_d16 v213, v14 offset:1840
	ds_load_u8_d16 v127, v14 offset:1984
	ds_load_u8_d16 v170, v14 offset:1936
	ds_load_u8_d16 v72, v14 offset:2000
	ds_load_u8_d16 v20, v14 offset:1952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v20, off offset:1604 ; 4-byte Folded Spill
	ds_load_u8_d16 v20, v14 offset:2016
	v_mov_b32_e32 v14, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v20, off offset:1608 ; 4-byte Folded Spill
	v_mov_b32_e32 v20, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v14, v49, v12, 0xc0c0004
	v_perm_b32 v15, v52, v13, 0xc0c0004
	v_perm_b32 v25, v10, v9, 0xc0c0004
	v_perm_b32 v26, v11, v16, 0xc0c0004
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	v_lshl_or_b32 v28, v15, 16, v14
	v_perm_b32 v14, v5, v6, 0xc0c0004
	v_perm_b32 v15, v7, v8, 0xc0c0004
	v_lshl_or_b32 v27, v26, 16, v25
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	v_lshl_or_b32 v26, v15, 16, v14
	v_perm_b32 v14, v1, v2, 0xc0c0004
	v_perm_b32 v15, v3, v4, 0xc0c0004
	v_dual_mov_b32 v167, v178 :: v_dual_mov_b32 v166, v177
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v25, v15, 16, v14
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v14, s46, v165
	v_add_nc_u32_e32 v15, s46, v164
	v_add_nc_u32_e32 v37, s46, v168
	v_add_nc_u32_e32 v39, s46, v162
	v_add_nc_u32_e32 v38, s46, v160
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	ds_load_u8 v37, v37
	ds_load_u8 v39, v39
	ds_load_u8 v38, v38
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v17, off, off offset:216
	scratch_load_b32 v50, off, off offset:356
	scratch_load_b32 v51, off, off offset:332
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v15, s46, v191
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v37, v15, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v37, s46, v161
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v48, v15, 16, v14
	ds_load_u8 v37, v37
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v14, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v38, s46, v163
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v39, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v47, v38, 16, v37
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:264
	scratch_load_b32 v15, off, off offset:208
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v37, s46, v17
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v50, s46, v50
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v51, s46, v51
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v37, v37
	ds_load_u8 v50, v50
	ds_load_u8 v51, v51
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v14, s46, v14
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v14, v14
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v39, s46, v39
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s46, v38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s46, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v39, v39
	ds_load_u8 v38, v38
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v15, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s46, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v37, v15, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v37, s46, v152
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v46, v15, 16, v14
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v14, s46, v151
	v_add_nc_u32_e32 v15, s46, v150
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v37, v37
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v15, s46, v154
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v37, v15, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v37, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v45, v15, 16, v14
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:284
	scratch_load_b32 v15, off, off offset:280
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v37, s46, v37
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v14, s46, v14
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s46, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v37, v37
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v15, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s46, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v37, v15, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v37, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v178, v15, 16, v14
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v14, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s46, v37
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v38, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s46, v38
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v38, 16, v37
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:256
	scratch_load_b32 v15, off, off offset:248
	v_add_nc_u32_e32 v14, s46, v14
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v38, v66, v67, 0xc0c0004
	ds_load_u8 v14, v14
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s46, v37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s46, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v37, v37
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v15, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s46, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v37, v15, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v37, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v176, v15, 16, v14
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:236
	scratch_load_b32 v15, off, off offset:232
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v37, s46, v37
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v14, s46, v14
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s46, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v37, v37
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v15, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s46, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v37, v15, 0xc0c0004
	v_perm_b32 v37, v144, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v175, v15, 16, v14
	v_perm_b32 v14, v70, v74, 0xc0c0004
	v_perm_b32 v15, v117, v118, 0xc0c0004
	v_lshl_or_b32 v94, v38, 16, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v95, v15, 16, v14
	v_perm_b32 v14, v76, v171, 0xc0c0004
	v_perm_b32 v15, v78, v80, 0xc0c0004
	v_lshl_or_b32 v93, v15, 16, v14
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:1612
	scratch_load_b32 v15, off, off offset:1616
	s_waitcnt vmcnt(0)
	v_perm_b32 v14, v14, v15, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:1620
	scratch_load_b32 v17, off, off offset:1624
	s_waitcnt vmcnt(0)
	v_perm_b32 v15, v15, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v15, 16, v14
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:1580
	scratch_load_b32 v15, off, off offset:1584
	s_waitcnt vmcnt(0)
	v_perm_b32 v14, v14, v15, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:1588
	scratch_load_b32 v17, off, off offset:1592
	s_waitcnt vmcnt(0)
	v_perm_b32 v15, v15, v17, 0xc0c0004
	scratch_load_b32 v17, off, off offset:1552 ; 4-byte Folded Reload
	v_lshl_or_b32 v111, v15, 16, v14
	v_perm_b32 v14, v238, v212, 0xc0c0004
	v_perm_b32 v15, v239, v240, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v109, v15, 16, v14
	v_perm_b32 v14, v224, v230, 0xc0c0004
	v_perm_b32 v15, v231, v228, 0xc0c0004
	v_lshl_or_b32 v108, v15, 16, v14
	v_perm_b32 v14, v184, v255, 0xc0c0004
	v_perm_b32 v15, v186, v206, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v182, v15, 16, v14
	v_perm_b32 v14, v225, v222, 0xc0c0004
	v_perm_b32 v15, v227, v226, 0xc0c0004
	v_lshl_or_b32 v180, v15, 16, v14
	v_perm_b32 v14, v185, v201, 0xc0c0004
	v_perm_b32 v15, v216, v215, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v15, 16, v14
	v_perm_b32 v14, v124, v125, 0xc0c0004
	v_perm_b32 v15, v126, v127, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v37, v244, v17, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:1556
	scratch_load_b32 v18, off, off offset:1560
	s_waitcnt vmcnt(0)
	v_perm_b32 v38, v17, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v110, v38, 16, v37
	v_perm_b32 v37, v247, v246, 0xc0c0004
	v_perm_b32 v38, v249, v248, 0xc0c0004
	v_lshl_or_b32 v181, v38, 16, v37
	v_dual_mov_b32 v44, s19 :: v_dual_mov_b32 v43, s18
	v_dual_mov_b32 v42, s17 :: v_dual_mov_b32 v41, s16
	v_dual_mov_b32 v40, s15 :: v_dual_mov_b32 v39, s14
	v_dual_mov_b32 v38, s13 :: v_dual_mov_b32 v37, s12
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[128:135], v[45:48], v[25:28], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[175:178], v[25:28], v[37:44] neg_lo:[1,1,0]
	v_perm_b32 v25, v121, v122, 0xc0c0004
	v_perm_b32 v26, v123, v174, 0xc0c0004
	v_lshl_or_b32 v28, v15, 16, v14
	v_perm_b32 v14, v55, v73, 0xc0c0004
	v_perm_b32 v15, v119, v120, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[57:64], v[45:48], v[92:95], v[37:44] neg_lo:[1,1,0]
	v_lshl_or_b32 v27, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[84:91], v[175:178], v[92:95], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v26, v15, 16, v14
	v_perm_b32 v14, v173, v56, 0xc0c0004
	v_perm_b32 v15, v53, v54, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[92:99], v[45:48], v[108:111], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[175:178], v[108:111], v[37:44] neg_lo:[1,1,0]
	v_lshl_or_b32 v25, v15, 16, v14
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v14, s46, v235
	v_add_nc_u32_e32 v15, s46, v219
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[108:115], v[45:48], v[179:182], v[37:44] neg_lo:[1,1,0]
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v46, s46, v208
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	v_wmma_i32_16x16x16_iu8 v[37:44], v[175:178], v[179:182], v[37:44] neg_lo:[1,1,0]
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v180, off, off offset:176
	scratch_load_b32 v45, off, off offset:228
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v46, v46
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v47, s46, v209
	scratch_load_b32 v175, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v47, v47
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v15, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v45, s46, v45
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v175, s46, v175
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v45, v45
	ds_load_u8 v175, v175
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s46, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v15, v45, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v45, s46, v205
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v48, v15, 16, v14
	ds_load_u8 v45, v45
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v14, s46, v197
	v_add_nc_u32_e32 v15, s46, v196
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v45, v46, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v46, s46, v210
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v46, v46
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v15, s46, v203
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v46, 16, v45
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v45, s46, v204
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v45, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v15, v45, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v45, s46, v194
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v46, v15, 16, v14
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v14, s46, v192
	v_add_nc_u32_e32 v15, s46, v193
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v45, v45
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v14, v15, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_add_nc_u32_e32 v15, s46, v195
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v45, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v15, 16, v14
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:348
	scratch_load_b32 v15, off, off offset:344
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[128:135], v[45:48], v[25:28], v[128:135] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v199, v133
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v24, v134
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v14, s46, v14
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s46, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v15, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s46, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v15, v50, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v50, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v178, v15, 16, v14
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v14, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v50, s46, v50
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v50, v51, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v51, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s46, v51
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v175, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v51, 16, v50
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:324
	scratch_load_b32 v15, off, off offset:312
	v_add_nc_u32_e32 v14, s46, v14
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v14, v14
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v50, s46, v50
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s46, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v50, v50
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v15, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s46, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v15, v50, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v50, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_lshl_or_b32 v176, v15, 16, v14
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:296
	scratch_load_b32 v15, off, off offset:300
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v50, s46, v50
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v14, s46, v14
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s46, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v50, v50
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v14, v15, 0xc0c0004
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	scratch_load_b32 v15, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s46, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v15, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v50, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v175, v15, 16, v14
	v_perm_b32 v14, v83, v169, 0xc0c0004
	v_perm_b32 v15, v170, v72, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[136:143], v[175:178], v[25:28], v[136:143] neg_lo:[1,1,0]
	v_perm_b32 v25, v68, v69, 0xc0c0004
	v_perm_b32 v26, v71, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v28, v15, 16, v14
	v_perm_b32 v14, v81, v82, 0xc0c0004
	v_perm_b32 v15, v149, v65, 0xc0c0004
	v_cvt_f32_i32_e32 v50, v136
	v_lshl_or_b32 v27, v26, 16, v25
	v_cvt_f32_i32_e32 v51, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v15, 16, v14
	scratch_load_b32 v14, off, off offset:1628 ; 4-byte Folded Reload
	v_perm_b32 v15, v172, v77, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v14, v14, v75, 0xc0c0004
	v_lshl_or_b32 v25, v15, 16, v14
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:1596
	scratch_load_b32 v15, off, off offset:1600
	v_wmma_i32_16x16x16_iu8 v[57:64], v[45:48], v[25:28], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[175:178], v[25:28], v[84:91] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v211, v58
	v_cvt_f32_i32_e32 v22, v61
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v23, v62
	v_cvt_f32_i32_e32 v21, v64
	v_cvt_f32_i32_e32 v19, v84
	v_cvt_f32_i32_e32 v136, v88
	v_cvt_f32_i32_e32 v137, v89
	v_cvt_f32_i32_e32 v89, v90
	v_cvt_f32_i32_e32 v90, v91
	s_waitcnt vmcnt(0)
	v_perm_b32 v14, v14, v15, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v15, off, off offset:1604
	scratch_load_b32 v17, off, off offset:1608
	s_waitcnt vmcnt(0)
	v_perm_b32 v15, v15, v17, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:1564
	scratch_load_b32 v18, off, off offset:1568
	v_lshl_or_b32 v28, v15, 16, v14
	v_perm_b32 v14, v190, v0, 0xc0c0004
	v_perm_b32 v15, v242, v243, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v25, v17, v18, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:1572
	scratch_load_b32 v18, off, off offset:1576
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v17, v18, 0xc0c0004
	v_cvt_f32_i32_e32 v17, v86
	v_cvt_f32_i32_e32 v18, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v26, 16, v25
	v_lshl_or_b32 v26, v15, 16, v14
	v_perm_b32 v14, v232, v202, 0xc0c0004
	v_perm_b32 v15, v233, v237, 0xc0c0004
	v_lshl_or_b32 v25, v15, 16, v14
	v_perm_b32 v14, v213, v155, 0xc0c0004
	v_perm_b32 v15, v223, v214, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[92:99], v[45:48], v[25:28], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[175:178], v[25:28], v[100:107] neg_lo:[1,1,0]
	v_perm_b32 v25, v251, v250, 0xc0c0004
	v_perm_b32 v26, v253, v252, 0xc0c0004
	v_lshl_or_b32 v28, v15, 16, v14
	v_perm_b32 v14, v234, v229, 0xc0c0004
	v_perm_b32 v15, v245, v241, 0xc0c0004
	v_cvt_f32_i32_e32 v87, v100
	v_lshl_or_b32 v27, v26, 16, v25
	v_cvt_f32_i32_e32 v88, v101
	v_cvt_f32_i32_e32 v86, v103
	v_lshl_or_b32 v26, v15, 16, v14
	v_perm_b32 v14, v218, v217, 0xc0c0004
	v_perm_b32 v15, v221, v220, 0xc0c0004
	v_cvt_f32_i32_e32 v64, v104
	v_cvt_f32_i32_e32 v84, v105
	v_cvt_f32_i32_e32 v62, v106
	v_cvt_f32_i32_e32 v103, v130
	v_lshl_or_b32 v25, v15, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[175:178], v[25:28], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[45:48], v[25:28], v[108:115] neg_lo:[1,1,0]
	v_dual_mov_b32 v178, v167 :: v_dual_mov_b32 v177, v166
	v_cvt_f32_i32_e32 v47, v138
	v_cvt_f32_i32_e32 v58, v39
	v_cvt_f32_i32_e32 v39, v41
	v_cvt_f32_i32_e32 v41, v131
	v_cvt_f32_i32_e32 v48, v139
	v_cvt_f32_i32_e32 v45, v140
	v_cvt_f32_i32_e32 v46, v141
	v_cvt_f32_i32_e32 v27, v142
	v_cvt_f32_i32_e32 v28, v143
	v_cvt_f32_i32_e32 v167, v57
	v_cvt_f32_i32_e32 v166, v59
	v_cvt_f32_i32_e32 v175, v60
	v_cvt_f32_i32_e32 v138, v63
	v_cvt_f32_i32_e32 v26, v85
	v_cvt_f32_i32_e32 v141, v92
	v_cvt_f32_i32_e32 v142, v93
	v_cvt_f32_i32_e32 v139, v94
	v_cvt_f32_i32_e32 v140, v95
	v_cvt_f32_i32_e32 v95, v96
	v_cvt_f32_i32_e32 v96, v97
	v_cvt_f32_i32_e32 v93, v98
	v_cvt_f32_i32_e32 v94, v99
	v_cvt_f32_i32_e32 v85, v102
	v_cvt_f32_i32_e32 v63, v107
	v_cvt_f32_i32_e32 v15, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v25, v110
	v_cvt_f32_i32_e32 v57, v111
	v_cvt_f32_i32_e32 v91, v112
	v_cvt_f32_i32_e32 v92, v113
	v_cvt_f32_i32_e32 v20, v114
	v_cvt_f32_i32_e32 v14, v115
	v_cvt_f32_i32_e32 v60, v37
	v_cvt_f32_i32_e32 v61, v38
	v_cvt_f32_i32_e32 v59, v40
	v_cvt_f32_i32_e32 v40, v42
	v_cvt_f32_i32_e32 v38, v43
	v_cvt_f32_i32_e32 v37, v44
	v_cvt_f32_i32_e32 v42, v132
	v_cvt_f32_i32_e32 v43, v128
	scratch_store_b32 off, v41, off offset:180 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v41, v135
	v_cvt_f32_i32_e32 v108, v129
	scratch_store_b32 off, v43, off offset:184 ; 4-byte Folded Spill
.LBB0_14:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	v_mov_b32_e32 v179, v154
	v_dual_mov_b32 v181, v151 :: v_dual_mov_b32 v128, 0
	v_mov_b16_e64 v182.l, v206.l
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v167, off offset:1540
	scratch_store_b32 off, v175, off offset:1536
	scratch_store_b32 off, v166, off offset:1532
	scratch_store_b32 off, v142, off offset:1528
	scratch_store_b32 off, v141, off offset:1524
	v_mov_b16_e64 v151.l, v233.l
	v_mov_b16_e64 v154.l, v232.l
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v42, off offset:1512
	scratch_store_b32 off, v41, off offset:1508
	v_mov_b16_e64 v166.l, v231.l
	v_mov_b16_e64 v206.l, v230.l
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v137, off offset:1408
	scratch_store_b32 off, v136, off offset:1404
	scratch_store_b32 off, v90, off offset:1400
	scratch_store_b32 off, v89, off offset:1396
	scratch_store_b32 off, v88, off offset:1392
	scratch_store_b32 off, v87, off offset:1388
	scratch_store_b32 off, v86, off offset:1384
	scratch_store_b32 off, v85, off offset:1380
	scratch_store_b32 off, v84, off offset:1376
	scratch_store_b32 off, v64, off offset:1372
	scratch_store_b32 off, v63, off offset:1368
	scratch_store_b32 off, v62, off offset:1364
	scratch_store_b32 off, v61, off offset:1348
	scratch_store_b32 off, v60, off offset:1344
	scratch_store_b32 off, v59, off offset:1340
	scratch_store_b32 off, v58, off offset:1336
	scratch_store_b32 off, v40, off offset:1296
	scratch_store_b32 off, v39, off offset:1292
	scratch_store_b32 off, v38, off offset:1288
	scratch_store_b32 off, v37, off offset:1284
	scratch_store_b32 off, v57, off offset:1280
	scratch_store_b32 off, v25, off offset:1276
	scratch_store_b32 off, v15, off offset:1272
	scratch_store_b32 off, v14, off offset:1268
	scratch_store_b32 off, v51, off offset:1036
	scratch_store_b32 off, v50, off offset:1032
	scratch_store_b32 off, v48, off offset:1028
	scratch_store_b32 off, v47, off offset:1024
	scratch_store_b32 off, v46, off offset:864
	scratch_store_b32 off, v45, off offset:860
	scratch_store_b32 off, v28, off offset:856
	scratch_store_b32 off, v27, off offset:852
	scratch_store_b32 off, v26, off offset:176 ; 4-byte Folded Spill
	ds_load_b128 v[45:48], v79 offset:36864
	ds_load_b128 v[41:44], v79 offset:36880
	ds_load_b128 v[37:40], v79 offset:37376
	ds_load_b128 v[230:233], v79 offset:37392
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v140, off offset:1520
	scratch_store_b32 off, v139, off offset:1516
	v_mov_b16_e64 v254.l, v155.l
	s_clause 0xe                            ; 60-byte Folded Spill
	scratch_store_b32 off, v24, off offset:1504
	scratch_store_b32 off, v23, off offset:1500
	scratch_store_b32 off, v22, off offset:1496
	scratch_store_b32 off, v21, off offset:1492
	scratch_store_b32 off, v138, off offset:1456
	scratch_store_b32 off, v96, off offset:1452
	scratch_store_b32 off, v95, off offset:1448
	scratch_store_b32 off, v94, off offset:1444
	scratch_store_b32 off, v93, off offset:1440
	scratch_store_b32 off, v92, off offset:1436
	scratch_store_b32 off, v91, off offset:1432
	scratch_store_b32 off, v20, off offset:1428
	scratch_store_b32 off, v19, off offset:1424
	scratch_store_b32 off, v18, off offset:1420
	scratch_store_b32 off, v17, off offset:1416
	v_dual_mov_b32 v155, v180 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v129, 0
	v_mov_b32_e32 v24, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v104, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v105, 0
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	scratch_load_b32 v14, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_mov_b16_e64 v17.l, v184.l
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v50, s45, v165
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v1, v1, v2, 0xc0c0004
	v_perm_b32 v2, v3, v4, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v51, s45, v164
	v_add_nc_u32_e32 v15, s45, v168
	v_add_nc_u32_e32 v90, s45, v161
	v_add_nc_u32_e32 v91, s45, v160
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_lshl_or_b32 v84, v2, 16, v1
	ds_load_u8 v1, v50
	ds_load_u8 v2, v51
	v_perm_b32 v13, v52, v13, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v88, s45, v163
	v_add_nc_u32_e32 v89, s45, v162
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v55, v55, v73, 0xc0c0004
	v_perm_b32 v73, v119, v120, 0xc0c0004
	v_perm_b32 v53, v53, v54, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v112, s45, v208
	v_add_nc_u32_e32 v113, s45, v205
	v_add_nc_u32_e32 v110, s45, v210
	v_add_nc_u32_e32 v111, s45, v209
	v_add_nc_u32_e32 v138, s45, v197
	v_add_nc_u32_e32 v139, s45, v196
	v_add_nc_u32_e32 v114, s45, v204
	v_add_nc_u32_e32 v115, s45, v203
	v_add_nc_u32_e32 v181, s45, v181
	v_add_nc_u32_e32 v168, s45, v150
	v_add_nc_u32_e32 v142, s45, v193
	v_add_nc_u32_e32 v143, s45, v192
	v_add_nc_u32_e32 v179, s45, v179
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v180, s45, v152
	v_add_nc_u32_e32 v140, s45, v195
	v_add_nc_u32_e32 v141, s45, v194
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_perm_b32 v5, v5, v6, 0xc0c0004
	v_perm_b32 v6, v7, v8, 0xc0c0004
	v_perm_b32 v12, v49, v12, 0xc0c0004
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_perm_b32 v10, v11, v16, 0xc0c0004
	v_perm_b32 v70, v70, v74, 0xc0c0004
	v_lshl_or_b32 v85, v6, 16, v5
	v_lshl_or_b32 v87, v13, 16, v12
	v_perm_b32 v66, v66, v67, 0xc0c0004
	v_lshl_or_b32 v86, v10, 16, v9
	v_perm_b32 v67, v78, v80, 0xc0c0004
	v_perm_b32 v65, v149, v65, 0xc0c0004
	v_mov_b16_e64 v18.l, v186.l
	v_dual_mov_b32 v184, v103 :: v_dual_mov_b32 v157, v178
	v_mov_b32_e32 v26, v108
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	v_add_nc_u32_e32 v108, s45, v235
	v_mov_b32_e32 v235, v109
	v_dual_mov_b32 v158, v177 :: v_dual_add_nc_u32 v109, s45, v219
	scratch_load_b32 v19, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v92, s45, v14
	scratch_load_b32 v14, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v175, s45, v19
	scratch_load_b32 v19, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v93, s45, v14
	scratch_load_b32 v14, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v176, s45, v19
	scratch_load_b32 v19, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v94, s45, v14
	scratch_load_b32 v14, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v177, s45, v19
	scratch_load_b32 v19, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v95, s45, v14
	scratch_load_b32 v14, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v178, s45, v19
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:1612
	scratch_load_b32 v20, off, off offset:1616
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v136, s45, v14
	scratch_load_b32 v14, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v137, s45, v14
	scratch_load_b32 v14, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v96, s45, v14
	scratch_load_b32 v14, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v97, s45, v14
	scratch_load_b32 v14, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v132, s45, v14
	scratch_load_b32 v14, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v133, s45, v14
	scratch_load_b32 v14, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v134, s45, v14
	scratch_load_b32 v14, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v135, s45, v14
	scratch_load_b32 v14, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v128, s45, v14
	scratch_load_b32 v14, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v129, s45, v14
	scratch_load_b32 v14, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v130, s45, v14
	scratch_load_b32 v14, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v131, s45, v14
	scratch_load_b32 v14, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v57, s45, v14
	scratch_load_b32 v14, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v58, s45, v14
	scratch_load_b32 v14, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v57, v57
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v59, s45, v14
	scratch_load_b32 v14, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v60, s45, v14
	scratch_load_b32 v14, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v59, v59
	ds_load_u8 v60, v60
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	.loc	1 328 35                        ; generate_amdgcn.py:328:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v61, s45, v14
	scratch_load_b32 v14, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v62, s45, v14
	scratch_load_b32 v14, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v63, s45, v14
	scratch_load_b32 v14, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v64, s45, v14
	scratch_load_b32 v14, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v98, s45, v14
	scratch_load_b32 v14, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, s45, v14
	scratch_load_b32 v14, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v100, s45, v14
	scratch_load_b32 v14, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v101, s45, v14
	scratch_load_b32 v14, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v102, s45, v14
	scratch_load_b32 v14, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v103, s45, v14
	scratch_load_b32 v14, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v104, s45, v14
	scratch_load_b32 v14, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v105, s45, v14
	scratch_load_b32 v14, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v106, s45, v14
	scratch_load_b32 v14, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v107, s45, v14
	v_add_nc_u32_e32 v14, s45, v191
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	ds_load_u8 v2, v14
	ds_load_u8 v3, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v2, 16, v1
	ds_load_u8 v1, v90
	ds_load_u8 v2, v91
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v88
	ds_load_u8 v3, v89
	v_perm_b32 v88, v124, v125, 0xc0c0004
	v_perm_b32 v89, v126, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v89, 16, v88
	v_perm_b32 v88, v121, v122, 0xc0c0004
	v_perm_b32 v89, v123, v174, 0xc0c0004
	v_lshl_or_b32 v122, v57, 16, v59
	ds_load_u8 v57, v63
	ds_load_u8 v58, v64
	v_lshl_or_b32 v90, v89, 16, v88
	v_lshl_or_b32 v89, v73, 16, v55
	v_perm_b32 v55, v173, v56, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v88, v53, 16, v55
	ds_load_u8 v53, v108
	ds_load_u8 v54, v109
	v_lshl_or_b32 v51, v2, 16, v1
	ds_load_u8 v1, v177
	ds_load_u8 v2, v178
	v_dual_mov_b32 v177, v158 :: v_dual_mov_b32 v178, v157
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v61
	ds_load_u8 v59, v62
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v106
	ds_load_u8 v55, v107
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v175
	ds_load_u8 v3, v176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v121, v58, 16, v57
	ds_load_u8 v57, v100
	ds_load_u8 v58, v101
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	v_lshl_or_b32 v56, v54, 16, v53
	ds_load_u8 v53, v112
	ds_load_u8 v54, v113
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v2, 16, v1
	ds_load_u8 v1, v181
	ds_load_u8 v2, v168
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v98
	ds_load_u8 v59, v99
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v110
	ds_load_u8 v55, v111
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v179
	ds_load_u8 v3, v180
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v120, v58, 16, v57
	ds_load_u8 v57, v104
	ds_load_u8 v58, v105
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	v_lshl_or_b32 v55, v54, 16, v53
	ds_load_u8 v53, v138
	ds_load_u8 v54, v139
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v2, 16, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v102
	ds_load_u8 v59, v103
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v114
	ds_load_u8 v73, v115
	v_wmma_i32_16x16x16_iu8 v[9:16], v[49:52], v[84:87], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v119, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[119:122], v[84:87], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v73, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v142
	ds_load_u8 v73, v143
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v73, v53, 0xc0c0004
	ds_load_u8 v73, v140
	ds_load_u8 v106, v141
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v106, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v73, 16, v53
	ds_load_u8 v73, v94
	ds_load_u8 v84, v95
	v_wmma_i32_16x16x16_iu8 v[9:16], v[53:56], v[88:91], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v22, v10
	v_cvt_f32_i32_e32 v24, v12
	scratch_store_b32 off, v9, off offset:144 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v92
	ds_load_u8 v85, v93
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v126, v84, 16, v73
	ds_load_u8 v73, v96
	ds_load_u8 v84, v97
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v136
	ds_load_u8 v85, v137
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v125, v84, 16, v73
	ds_load_u8 v73, v134
	ds_load_u8 v84, v135
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v132
	ds_load_u8 v85, v133
	v_cvt_f32_i32_e32 v132, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v124, v84, 16, v73
	ds_load_u8 v73, v130
	ds_load_u8 v84, v131
	v_cvt_f32_i32_e32 v130, v15
	v_cvt_f32_i32_e32 v131, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v84, v73, 0xc0c0004
	ds_load_u8 v84, v128
	ds_load_u8 v85, v129
	v_cvt_f32_i32_e32 v128, v13
	v_cvt_f32_i32_e32 v129, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v123, v84, 16, v73
	v_perm_b32 v73, v117, v118, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[57:64], v[123:126], v[88:91], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v95, v73, 16, v70
	v_perm_b32 v70, v144, v146, 0xc0c0004
	v_cvt_f32_i32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v58, v58
	v_lshl_or_b32 v94, v66, 16, v70
	v_perm_b32 v66, v76, v171, 0xc0c0004
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v175, v61
	v_cvt_f32_i32_e32 v140, v62
	v_lshl_or_b32 v93, v67, 16, v66
	v_perm_b32 v66, v19, v20, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:1620
	scratch_load_b32 v20, off, off offset:1624
	v_cvt_f32_i32_e32 v167, v63
	v_cvt_f32_i32_e32 v134, v64
	s_waitcnt vmcnt(0)
	v_perm_b32 v67, v19, v20, 0xc0c0004
	scratch_load_b32 v19, off, off offset:1628 ; 4-byte Folded Reload
	v_lshl_or_b32 v92, v67, 16, v66
	v_perm_b32 v66, v83, v169, 0xc0c0004
	v_perm_b32 v67, v170, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[84:91], v[49:52], v[92:95], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v99, v67, 16, v66
	v_perm_b32 v66, v68, v69, 0xc0c0004
	v_perm_b32 v67, v71, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v98, v67, 16, v66
	v_perm_b32 v66, v81, v82, 0xc0c0004
	v_lshl_or_b32 v97, v65, 16, v66
	v_perm_b32 v66, v172, v77, 0xc0c0004
	v_perm_b32 v77, v166, v228, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v65, v19, v75, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:1580
	scratch_load_b32 v20, off, off offset:1584
	v_lshl_or_b32 v96, v66, 16, v65
	v_wmma_i32_16x16x16_iu8 v[65:72], v[119:122], v[92:95], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[84:91], v[53:56], v[96:99], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[123:126], v[96:99], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v21, v84
	v_cvt_f32_i32_e32 v25, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v27, v86
	v_cvt_f32_i32_e32 v133, v87
	v_cvt_f32_i32_e32 v85, v88
	v_cvt_f32_i32_e32 v86, v89
	v_cvt_f32_i32_e32 v87, v90
	v_cvt_f32_i32_e32 v88, v91
	v_cvt_f32_i32_e32 v61, v65
	v_cvt_f32_i32_e32 v62, v66
	v_cvt_f32_i32_e32 v63, v67
	v_cvt_f32_i32_e32 v64, v68
	v_cvt_f32_i32_e32 v142, v70
	v_cvt_f32_i32_e32 v139, v71
	v_cvt_f32_i32_e32 v141, v72
	s_waitcnt vmcnt(0)
	v_perm_b32 v73, v19, v20, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:1588
	scratch_load_b32 v20, off, off offset:1592
	s_waitcnt vmcnt(0)
	v_perm_b32 v74, v19, v20, 0xc0c0004
	scratch_load_b32 v19, off, off offset:1552 ; 4-byte Folded Reload
	v_lshl_or_b32 v76, v74, 16, v73
	s_waitcnt vmcnt(0)
	v_perm_b32 v73, v244, v19, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:1556
	scratch_load_b32 v20, off, off offset:1560
	s_waitcnt vmcnt(0)
	v_perm_b32 v74, v19, v20, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:1596
	scratch_load_b32 v20, off, off offset:1600
	v_lshl_or_b32 v75, v74, 16, v73
	v_perm_b32 v73, v238, v212, 0xc0c0004
	v_perm_b32 v74, v239, v240, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	v_perm_b32 v73, v224, v206, 0xc0c0004
	v_lshl_or_b32 v73, v77, 16, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[92:99], v[49:52], v[73:76], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[119:122], v[73:76], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v73, v17, v255, 0xc0c0004
	v_perm_b32 v74, v18, v182, 0xc0c0004
	v_lshl_or_b32 v76, v74, 16, v73
	v_perm_b32 v73, v247, v246, 0xc0c0004
	v_perm_b32 v74, v249, v248, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v74, 16, v73
	v_perm_b32 v73, v225, v222, 0xc0c0004
	v_perm_b32 v74, v227, v226, 0xc0c0004
	v_lshl_or_b32 v74, v74, 16, v73
	v_perm_b32 v73, v185, v201, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v77, v19, v20, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:1604
	scratch_load_b32 v20, off, off offset:1608
	s_waitcnt vmcnt(0)
	v_perm_b32 v78, v19, v20, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:1564
	scratch_load_b32 v20, off, off offset:1568
	v_lshl_or_b32 v83, v78, 16, v77
	s_waitcnt vmcnt(0)
	v_perm_b32 v77, v19, v20, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:1572
	scratch_load_b32 v20, off, off offset:1576
	s_waitcnt vmcnt(0)
	v_perm_b32 v78, v19, v20, 0xc0c0004
	v_cvt_f32_i32_e32 v20, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v82, v78, 16, v77
	v_perm_b32 v77, v190, v0, 0xc0c0004
	v_perm_b32 v78, v242, v243, 0xc0c0004
	v_lshl_or_b32 v81, v78, 16, v77
	v_perm_b32 v77, v154, v202, 0xc0c0004
	v_perm_b32 v78, v151, v237, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v80, v78, 16, v77
	v_perm_b32 v77, v216, v215, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[92:99], v[53:56], v[80:83], v[92:99] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v73, v77, 16, v73
	v_perm_b32 v77, v221, v220, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[100:107], v[123:126], v[80:83], v[100:107] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v135, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[108:115], v[49:52], v[73:76], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v49, v213, v254, 0xc0c0004
	v_perm_b32 v50, v223, v214, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[119:122], v[73:76], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v136, v93
	v_cvt_f32_i32_e32 v137, v94
	v_cvt_f32_i32_e32 v138, v95
	v_lshl_or_b32 v52, v50, 16, v49
	v_perm_b32 v49, v251, v250, 0xc0c0004
	v_perm_b32 v50, v253, v252, 0xc0c0004
	v_cvt_f32_i32_e32 v93, v96
	v_cvt_f32_i32_e32 v94, v97
	v_cvt_f32_i32_e32 v95, v98
	v_cvt_f32_i32_e32 v23, v99
	v_lshl_or_b32 v51, v50, 16, v49
	v_perm_b32 v49, v234, v229, 0xc0c0004
	v_perm_b32 v50, v245, v241, 0xc0c0004
	v_cvt_f32_i32_e32 v84, v100
	v_cvt_f32_i32_e32 v17, v101
	v_cvt_f32_i32_e32 v18, v102
	v_cvt_f32_i32_e32 v19, v103
	v_lshl_or_b32 v50, v50, 16, v49
	v_perm_b32 v49, v218, v217, 0xc0c0004
	v_mov_b32_e32 v103, v184
	v_cvt_f32_i32_e32 v99, v104
	v_cvt_f32_i32_e32 v28, v105
	v_cvt_f32_i32_e32 v100, v106
	v_lshl_or_b32 v49, v77, 16, v49
	v_cvt_f32_i32_e32 v102, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[108:115], v[53:56], v[49:52], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[123:126], v[49:52], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v50, v108
	v_mov_b32_e32 v108, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v51, v109
	v_mov_b32_e32 v109, v235
	v_cvt_f32_i32_e32 v14, v110
	v_cvt_f32_i32_e32 v15, v111
	v_cvt_f32_i32_e32 v96, v112
	v_cvt_f32_i32_e32 v97, v113
	v_cvt_f32_i32_e32 v98, v114
	v_cvt_f32_i32_e32 v101, v115
	v_cvt_f32_i32_e32 v89, v1
	v_cvt_f32_i32_e32 v90, v2
	v_cvt_f32_i32_e32 v91, v3
	v_cvt_f32_i32_e32 v92, v4
	v_cvt_f32_i32_e32 v106, v5
	v_cvt_f32_i32_e32 v26, v6
	v_cvt_f32_i32_e32 v104, v7
	v_cvt_f32_i32_e32 v105, v8
.LBB0_16:
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	scratch_load_b32 v1, off, off offset:1360 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v73.l, 0
	v_dual_mov_b32 v184, v63 :: v_dual_mov_b32 v241, v137
	v_dual_mov_b32 v201, v135 :: v_dual_mov_b32 v234, v64
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_mov_b16_e64 v168.l, v73.l
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v135, off, off offset:504
	scratch_load_b32 v137, off, off offset:500
	scratch_load_b32 v154, off, off offset:492
	scratch_load_b32 v149, off, off offset:484
	scratch_load_b32 v151, off, off offset:476
	scratch_load_b32 v204, off, off offset:452
	scratch_load_b32 v3, off, off offset:1332
	scratch_load_b32 v4, off, off offset:1328
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_mov_b16_e32 v72.l, v73.l
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v139, off offset:236
	scratch_store_b32 off, v99, off offset:232
	scratch_store_b32 off, v102, off offset:228
	scratch_store_b32 off, v100, off offset:224
	scratch_store_b32 off, v26, off offset:220
	scratch_store_b32 off, v106, off offset:216
	scratch_store_b32 off, v105, off offset:212
	scratch_store_b32 off, v104, off offset:208
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1324
	scratch_load_b32 v161, off, off offset:1192
	v_mov_b32_e32 v223, v142
	v_dual_mov_b32 v26, v58 :: v_dual_mov_b32 v255, v61
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v235, off, off offset:520
	scratch_load_b32 v158, off, off offset:512
	scratch_load_b32 v165, off, off offset:536
	scratch_load_b32 v164, off, off offset:532
	scratch_load_b32 v163, off, off offset:528
	scratch_load_b32 v162, off, off offset:524
	scratch_load_b32 v159, off, off offset:516
	scratch_load_b32 v157, off, off offset:508
	v_mov_b32_e32 v224, v167
	v_mov_b32_e32 v186, v20
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_mov_b16_e32 v63.l, v73.l
	v_mov_b32_e32 v254, v57
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v156, off, off offset:496
	scratch_load_b32 v152, off, off offset:480
	scratch_load_b32 v150, off, off offset:472
	scratch_load_b32 v0, off, off offset:188
	scratch_load_b32 v206, off, off offset:460
	v_dual_mov_b32 v253, v28 :: v_dual_mov_b32 v214, v141
	v_mov_b32_e32 v185, v134
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v100, off, off offset:1228
	scratch_load_b32 v53, off, off offset:1208
	scratch_load_b32 v99, off, off offset:1224
	scratch_load_b32 v107, off, off offset:1200
	scratch_load_b32 v104, off, off offset:1196
	scratch_load_b32 v8, off, off offset:1084
	v_dual_mov_b32 v245, v18 :: v_dual_mov_b32 v18, v84
	v_mov_b32_e32 v221, v91
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v84, off, off offset:108
	scratch_load_b32 v119, off, off offset:120
	scratch_load_b32 v110, off, off offset:116
	scratch_load_b32 v82, off, off offset:100
	scratch_load_b32 v91, off, off offset:96
	v_mov_b32_e32 v246, v85
	v_mov_b32_e32 v250, v89
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v89, off, off offset:112
	scratch_load_b32 v83, off, off offset:104
	scratch_load_b32 v85, off, off offset:92
	scratch_load_b32 v49, off, off offset:1060
	scratch_load_b32 v52, off, off offset:1056
	scratch_load_b32 v75, off, off offset:932
	scratch_load_b32 v70, off, off offset:900
	scratch_load_b32 v209, off, off offset:924
	scratch_load_b32 v139, off, off offset:908
	scratch_load_b32 v142, off, off offset:904
	scratch_load_b32 v146, off, off offset:992
	scratch_load_b32 v210, off, off offset:928
	scratch_load_b32 v208, off, off offset:888
	scratch_load_b32 v192, off, off offset:708
	scratch_load_b32 v77, off, off offset:560
	scratch_load_b32 v115, off, off offset:556
	scratch_load_b32 v114, off, off offset:552
	scratch_load_b32 v113, off, off offset:548
	scratch_load_b32 v112, off, off offset:544
	scratch_load_b32 v111, off, off offset:540
	scratch_load_b32 v102, off, off offset:140
	scratch_load_b32 v205, off, off offset:456
	scratch_load_b32 v172, off, off offset:132
	scratch_load_b32 v169, off, off offset:128
	scratch_load_b32 v134, off, off offset:124
	scratch_load_b32 v141, off, off offset:780
	scratch_load_b32 v117, off, off offset:764
	scratch_load_b32 v116, off, off offset:760
	scratch_load_b32 v203, off, off offset:740
	scratch_load_b32 v197, off, off offset:736
	scratch_load_b32 v196, off, off offset:732
	scratch_load_b32 v195, off, off offset:716
	v_mov_b32_e32 v106, v130
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v174, off, off offset:788
	scratch_load_b32 v194, off, off offset:872
	scratch_load_b32 v193, off, off offset:868
	scratch_load_b32 v191, off, off offset:848
	scratch_load_b32 v190, off, off offset:844
	v_dual_mov_b32 v160, v131 :: v_dual_mov_b32 v217, v94
	v_mov_b32_e32 v228, v97
	scratch_load_b32 v118, off, off offset:1212 ; 4-byte Folded Reload
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s44, 31
	v_dual_mov_b32 v242, v175 :: v_dual_mov_b32 v213, v140
	s_lshr_b32 s0, s0, 27
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s26, s10
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_add_i32 s0, s44, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s27, s11
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s0, 5
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s34, s34, s23
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s4, s0, s35
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s1, -1, 0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s1
	s_mov_b32 s22, 0x7ffffffe
	v_mov_b32_e32 v105, v129
	v_dual_mov_b32 v225, v23 :: v_dual_mov_b32 v220, v90
	v_mov_b32_e32 v248, v87
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(62)
	v_mov_b16_e32 v73.h, v1.l
	scratch_load_b32 v1, off, off offset:1356 ; 4-byte Folded Reload
	v_mov_b32_e32 v229, v98
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(48)
	v_mul_f32_e32 v55, v53, v73
	s_waitcnt vmcnt(35)
	v_mul_f32_e32 v49, v49, v73
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v168.h, v1.l
	scratch_load_b32 v1, off, off offset:1352 ; 4-byte Folded Reload
	v_mov_b32_e32 v167, v101
	scratch_load_b32 v101, off, off offset:1232 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v2, v236, v168
	scratch_load_b32 v236, off, off offset:1308 ; 4-byte Folded Reload
	v_mul_f32_e32 v4, v4, v168
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v72.h, v1.l
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v1, off, off offset:1544 ; 4-byte Folded Reload
	v_mov_b32_e32 v216, v93
	scratch_load_b32 v93, off, off offset:1216 ; 4-byte Folded Reload
	v_dual_mov_b32 v249, v88 :: v_dual_mul_f32 v56, v187, v72
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(2) lgkmcnt(3)
	v_fma_f32 v58, v2, v45, v236
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v2, v147, v72
	v_mul_f32_e32 v6, v153, v72
	scratch_load_b32 v153, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v16, v8, v72
	scratch_load_b32 v8, off, off offset:1080 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v65, v2, v47, v137
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v2, off, off offset:1304 ; 4-byte Folded Reload
	v_mul_f32_e32 v5, v5, v72
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v88, off, off offset:564
	scratch_load_b32 v147, off, off offset:784
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v121, v56, v42, v139
	v_mov_b32_e32 v219, v128
	v_fma_f32 v61, v5, v46, v158
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1320
	scratch_load_b32 v187, off, off offset:832
	v_mov_b32_e32 v227, v96
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v202, v236, v58, s2
	v_cndmask_b32_e64 v243, v158, v61, s2
	v_cndmask_b32_e64 v137, v137, v65, s2
	v_cndmask_b32_e64 v139, v139, v121, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v1, v1, v168 :: v_dual_mul_f32 v2, v2, v73
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v10, v2, v46, v165
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v2, off, off offset:1124 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v57, v1, v46, v161
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	scratch_load_b32 v1, off, off offset:1548 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v182, v161, v57, s2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v63.h, v1.l
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v1, off, off offset:1312 ; 4-byte Folded Reload
	v_mul_f32_e32 v3, v3, v168
	v_mov_b32_e32 v28, v59
	v_mov_b32_e32 v218, v95
	scratch_load_b32 v95, off, off offset:1220 ; 4-byte Folded Reload
	v_dual_mul_f32 v69, v183, v72 :: v_dual_mul_f32 v56, v188, v63
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v59, v3, v48, v235
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v3, v178, v63
	scratch_load_b32 v183, off, off offset:1048 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v122, v69, v41, v142
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v69, v200, v63
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v126, v56, v41, v174
	v_fma_f32 v66, v3, v46, v156
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v3, off, off offset:1300 ; 4-byte Folded Reload
	v_dual_mov_b32 v222, v60 :: v_dual_mul_f32 v5, v5, v63
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v60, v4, v47, v159
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v4, v177, v63
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v127, v69, v44, v147
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v69, v198, v73
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v68, v5, v48, v153
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v5, off, off offset:1260
	scratch_load_b32 v198, off, off offset:468
	scratch_load_b32 v56, off, off offset:1236
	scratch_load_b32 v188, off, off offset:836
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v244, v159, v60, s2
	v_cndmask_b32_e64 v166, v156, v66, s2
	v_cndmask_b32_e64 v235, v235, v59, s2
	v_cndmask_b32_e64 v142, v142, v122, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(7)
	v_mul_f32_e32 v1, v1, v72
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v64, v1, v48, v135
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v1, off, off offset:1316 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v135, v135, v64, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v3, v3, v73
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v67, v4, v45, v154
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v4, off, off offset:1264 ; 4-byte Folded Reload
	v_mov_b32_e32 v20, v62
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v62, v6, v45, v157
	v_fma_f32 v11, v3, v45, v164
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v3, off, off offset:1120 ; 4-byte Folded Reload
	v_mul_f32_e32 v45, v8, v63
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v5, v5, v73
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v8, off, off offset:1076 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(6)
	v_fma_f32 v23, v69, v43, v198
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v46, v45, v34, v91
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v13, v5, v47, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v91, v46, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v1, v1, v63
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v9, v1, v47, v149
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v1, off, off offset:1168 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v4, v4, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v149, v149, v9, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v12, v4, v48, v163
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v4, off, off offset:1112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v47, v8, v63
	scratch_load_b32 v8, off, off offset:1072 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v45, v47, v33, v88
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v5, v4, v168
	scratch_load_b32 v4, off, off offset:1104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v48, v8, v63 :: v_dual_mul_f32 v1, v1, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v47, v48, v36, v85
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v48, off, off offset:1064 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v1, v1, v34, v101
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v101, v101, v1, s2
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:164
	scratch_load_b32 v200, off, off offset:136
	v_mov_b32_e32 v215, v92
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v6, v4, v72
	scratch_load_b32 v4, off, off offset:1092 ; 4-byte Folded Reload
	v_mul_f32_e32 v3, v3, v168
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v6, v6, v34, v95
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v48, v48, v73
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v54, v48, v34, v102
	v_fma_f32 v34, v49, v33, v89
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:1256
	scratch_load_b32 v49, off, off offset:1252
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v1, v1, s4, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v7, v4, v72
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v4, v3, v36, v99
	v_fma_f32 v3, v5, v35, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v5, v7, v33, v84
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v7, off, off offset:1088 ; 4-byte Folded Reload
	v_mul_f32_e32 v2, v2, v168
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v84, v84, v5, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v2, v2, v33, v100
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v33, off, off offset:1412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v48, v48, v168
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v7, v7, v72
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v8, v7, v36, v83
	v_fma_f32 v7, v16, v35, v82
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v16, off, off offset:1068 ; 4-byte Folded Reload
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v33, v33, v168
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v83, v8, s2
	v_cndmask_b32_e64 v82, v82, v7, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v16, v16, v63
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v53, v16, v35, v77
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v16, v145, v168
	scratch_load_b32 v145, off, off offset:1052 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v52, v52, v73
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v35, v55, v35, v70
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v55, v49, v168
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v77, v53, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v36, v52, v36, v75
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v120, v55, v43, v209
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v55, v189, v63
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v52, v48, v44, v210
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v48, v148, v72
	scratch_load_b32 v148, off, off offset:988 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v49, v33, v41, v183
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v33, v207, v72
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v125, v55, v42, v208
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v55, off, off offset:1240
	scratch_load_b32 v189, off, off offset:840
	scratch_load_b32 v207, off, off offset:464
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v123, v33, v44, v146
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v33, off, off offset:1248 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v159, v208, v125, s2
	v_cndmask_b32_e64 v146, v146, v123, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(5)
	v_fma_f32 v16, v16, v42, v145
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v33, v63
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v128, v33, v43, v141
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:984 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v124, v48, v43, v148
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v48, off, off offset:1244 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v141, v141, v128, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v33, v33, v168 :: v_dual_mul_f32 v48, v48, v73
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v129, v48, v42, v152
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v48, off, off offset:1188 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v56, v56, v73
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v42, off, off offset:976 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v131, v56, v44, v150
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v44, v33, v30, v200
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:980 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v33, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v71, v33, v32, v169
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:972 ; 4-byte Folded Reload
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v55, v55, v73 :: v_dual_mul_f32 v42, v42, v168
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v130, v55, v41, v151
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v74, v42, v31, v134
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v42, off, off offset:1044
	scratch_load_b32 v55, off, off offset:1100
	scratch_load_b32 v41, off, off offset:1004
	v_mul_f32_e32 v48, v48, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v78, v48, v29, v117
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v48, off, off offset:960 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v33, v33, v72
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v80, v33, v32, v116
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:956 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v55, v55, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v92, v55, v31, v104
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v48, v48, v63
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v96, v48, v29, v113
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v48, off, off offset:1040 ; 4-byte Folded Reload
	v_mul_f32_e32 v42, v42, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v81, v42, v31, v115
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v42, off, off offset:952 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v33, v33, v63
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v97, v33, v32, v112
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:940 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v48, v48, v73
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v90, v48, v32, v107
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v88, v45, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v42, v42, v63
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v32, off, off offset:1164 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v98, v42, v31, v111
	v_mov_b32_e32 v42, v102
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v102, v100, v2, s2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	scratch_load_b32 v2, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v43, v0, v72
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	scratch_load_b32 v0, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v100, v99, v4, s2
	v_cndmask_b32_e64 v99, v93, v3, s2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v4, v155, s0, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v76, v43, v30, v119
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v43, off, off offset:964 ; 4-byte Folded Reload
	v_mul_f32_e32 v41, v41, v168
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v31, off, off offset:1172 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v41, v41, v29, v172
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v2, v2, s0, 1
	v_mov_b32_e32 v247, v86
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v3, v0, s0, 1
	scratch_load_b32 v0, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_mul_f32 v43, v43, v63
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v94, v43, v30, v114
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v43, off, off offset:936 ; 4-byte Folded Reload
	v_mul_f32_e32 v33, v33, v73
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v5, v0, s0, 1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x3
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v43, v43, v73
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v87, v43, v29, v110
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v29, off, off offset:1184 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v86, v33, v30, v118
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v30, off, off offset:1180
	scratch_load_b32 v33, off, off offset:1116
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v56, 16, v3
	v_lshlrev_b32_e32 v91, 16, v2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v31, v31, v168
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v60, v25, v56 :: v_dual_lshlrev_b32 v1, 16, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v8, v103, v91
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v140, v31, v39, v195
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v31, off, off offset:1148 ; 4-byte Folded Reload
	v_mul_f32_e32 v58, v24, v91
	v_mul_f32_e32 v64, v27, v56
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v29, v29, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v226, v29, v38, v203
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v29, off, off offset:1176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v30, v30, v168
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v128, v203, v226, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v251, v30, v37, v197
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v30, off, off offset:1160 ; 4-byte Folded Reload
	v_mul_f32_e32 v32, v32, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v143, v32, v38, v194
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v32, off, off offset:1144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v31, v31, v63
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v175, v31, v38, v190
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v31, off, off offset:1132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v29, v29, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v252, v29, v40, v196
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v29, off, off offset:1156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v30, v30, v72
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v144, v30, v37, v193
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v30, off, off offset:1152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v29, v29, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v170, v29, v40, v192
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v29, off, off offset:1108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v30, v30, v72
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v173, v30, v39, v191
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v30, off, off offset:1140 ; 4-byte Folded Reload
	v_mul_f32_e32 v32, v32, v63
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v156, v191, v173, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v176, v32, v37, v189
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v32, off, off offset:1128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v29, v29, v63
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v30, v30, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v178, v30, v39, v187
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v70, v35, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v32, v73
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v180, v32, v40, v205
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v89, v34, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v34, v211, v56
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v177, v29, v40, v188
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v29, off, off offset:1136 ; 4-byte Folded Reload
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:184
	scratch_load_b32 v155, off, off offset:1204
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v29, v29, v73
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v171, v29, v38, v207
	v_mov_b32_e32 v29, v85
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v85, v95, v6, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v6, v0, v91
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v31, v31, v73 :: v_dual_lshlrev_b32 v38, 16, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v29, v47, s2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v29, 16, v5
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v33, v33, v73
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	ds_store_b32 v155, v1 offset:36864
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v179, v31, v37, v206
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v75, v36, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v5, v108, v91
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v181, v33, v39, v204
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v42, v54, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v66, v201, v38
	v_mul_f32_e32 v61, v21, v56
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v7, v0, v91
	scratch_load_b32 v0, off, off offset:1540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v35, v0, v56
	scratch_load_b32 v0, off, off offset:1536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v36, v0, v56
	scratch_load_b32 v0, off, off offset:1532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v37, v0, v56
	scratch_load_b32 v0, off, off offset:1528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v39, v0, v38
	scratch_load_b32 v0, off, off offset:1524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v40, v0, v38
	scratch_load_b32 v0, off, off offset:1520 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v42, v0, v38
	scratch_load_b32 v0, off, off offset:1516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v0, v38
	scratch_load_b32 v0, off, off offset:1272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v53, v0, v29
	scratch_load_b32 v0, off, off offset:1280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v54, v0, v29
	scratch_load_b32 v0, off, off offset:1276 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v79 offset:36864
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v108, v6, v1, v102
	v_fma_f32 v93, v35, v1, v84
	v_fma_f32 v75, v40, v1, v48
	v_fma_f32 v70, v42, v4, v47
	v_fma_f32 v42, v53, v1, v32
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v1, off, off offset:1512 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v212, v7, v4, v100
	v_fma_f32 v211, v8, v3, v99
	v_fma_f32 v77, v39, v2, v69
	v_fma_f32 v95, v34, v2, v85
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v107, v90, s2
	v_cndmask_b32_e64 v107, v172, v41, s2
	v_cndmask_b32_e64 v35, v110, v87, s2
	v_cndmask_b32_e64 v110, v200, v44, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v55, v43, v3, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v90, v117, v78, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v89, v36, v4, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v118, v86, s2
	v_cndmask_b32_e64 v86, v115, v81, s2
	v_cndmask_b32_e64 v87, v116, v80, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v40, v54, v4, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v112, v97, s2
	v_cndmask_b32_e64 v53, v111, v98, s2
	v_cndmask_b32_e64 v47, v47, v70, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.h, v73.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v48, v75, s3
	v_cndmask_b32_e64 v69, v69, v77, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v77.h, v73.l
	v_mov_b16_e32 v75.h, v73.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v42, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.h, v73.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v40, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.h, v73.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v6, v1, v91
	scratch_load_b32 v1, off, off offset:1508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v7, v1, v91
	scratch_load_b32 v1, off, off offset:1504 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v8, v1, v91
	scratch_load_b32 v1, off, off offset:1500 ; 4-byte Folded Reload
	v_mul_f32_e32 v45, v109, v29
	v_mul_f32_e32 v103, v0, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v104, v92, s2
	v_cndmask_b32_e64 v92, v119, v76, s2
	v_cndmask_b32_e64 v104, v169, v71, s2
	v_cndmask_b32_e64 v71, v113, v96, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v14, v14, v29 :: v_dual_mul_f32 v65, v136, v38
	v_mul_f32_e32 v51, v51, v29
	v_mul_f32_e32 v15, v15, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v136, v187, v178, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v178, v250, v29
	v_mul_f32_e32 v121, v227, v29
	v_mul_f32_e32 v123, v229, v29
	v_mul_f32_e32 v203, v221, v29
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v43, v45, v2, v33
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v50, v50, v29
	v_mul_f32_e32 v122, v167, v29
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v43, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v43.h, v73.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v39, v1, v56
	scratch_load_b32 v1, off, off offset:1496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v41, v1, v56
	scratch_load_b32 v1, off, off offset:1492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v44, v1, v56
	scratch_load_b32 v1, off, off offset:1456 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v59, v132, v91
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v132, v209, v120, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v120, v228, v29 :: v_dual_mul_f32 v45, v1, v56
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v1, off, off offset:1452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v76, v1, v38
	scratch_load_b32 v1, off, off offset:1448 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v109, v5, v2, v101
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v5, v199, v91 :: v_dual_mul_f32 v78, v1, v38
	scratch_load_b32 v1, off, off offset:1444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v115, v1, v38
	scratch_load_b32 v1, off, off offset:1440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v116, v1, v38
	scratch_load_b32 v1, off, off offset:1436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v117, v1, v29
	scratch_load_b32 v1, off, off offset:1432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v118, v1, v29
	scratch_load_b32 v1, off, off offset:1428 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v88, v37, v3, v82
	v_fma_f32 v37, v103, v3, v30
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v103, v134, v74, s2
	v_cndmask_b32_e64 v74, v114, v94, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v82, v82, v88, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v119, v1, v29
	scratch_load_b32 v1, off, off offset:1268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v134, v1, v29
	ds_load_b128 v[1:4], v79 offset:36880
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v113, v6, v1, v107
	v_fma_f32 v97, v41, v1, v90
	v_fma_f32 v96, v44, v4, v87
	v_fma_f32 v80, v78, v1, v71
	v_fma_f32 v44, v118, v1, v35
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	scratch_load_b32 v1, off, off offset:1096 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v114, v5, v2, v110
	v_fma_f32 v112, v7, v4, v104
	v_fma_f32 v111, v8, v3, v103
	v_fma_f32 v98, v39, v2, v92
	v_fma_f32 v94, v45, v3, v86
	v_fma_f32 v81, v76, v2, v74
	v_fma_f32 v78, v115, v4, v54
	v_fma_f32 v76, v116, v3, v53
	v_fma_f32 v45, v117, v2, v36
	v_fma_f32 v39, v119, v3, v0
	v_fma_f32 v41, v134, v4, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v118, v165, v10, s2
	v_cndmask_b32_e64 v117, v164, v11, s2
	v_cndmask_b32_e64 v116, v163, v12, s2
	v_cndmask_b32_e64 v134, v157, v62, s2
	v_cndmask_b32_e64 v163, v154, v67, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v62, v133, v56 :: v_dual_mul_f32 v67, v138, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v157, v193, v144, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v144, v18, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v133, v197, v251, s2
	v_cndmask_b32_e64 v138, v188, v177, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v177, v220, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v54, v78, s3
	v_cndmask_b32_e64 v34, v34, v41, s3
	v_cndmask_b32_e64 v35, v35, v44, s3
	v_cndmask_b32_e64 v0, v0, v39, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.h, v73.l
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, v1, s4, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v115, 16, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[5:8], v79 offset:37376
	ds_load_b128 v[1:4], v79 offset:37392
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:144 ; 4-byte Folded Reload
	ds_store_b32 v155, v115 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v115, v162, v13, s2
	v_cndmask_b32_e64 v155, v153, v68, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v13, v22, v91 :: v_dual_mul_f32 v68, v241, v38
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v88, off, off offset:580 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v57, v9, v91
	ds_load_b128 v[9:12], v79 offset:36864
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v236, v13, v10, v182
	v_fma_f32 v237, v57, v9, v202
	v_fma_f32 v238, v58, v12, v235
	v_fma_f32 v239, v59, v11, v244
	v_fma_f32 v240, v60, v10, v243
	v_fma_f32 v241, v61, v9, v134
	v_fma_f32 v201, v62, v12, v135
	v_fma_f32 v199, v64, v11, v137
	v_fma_f32 v172, v65, v10, v166
	v_fma_f32 v169, v66, v9, v163
	v_fma_f32 v165, v67, v12, v155
	v_fma_f32 v161, v68, v11, v149
	v_fma_f32 v119, v51, v10, v118
	v_fma_f32 v68, v50, v9, v117
	v_fma_f32 v66, v15, v12, v116
	v_fma_f32 v64, v14, v11, v115
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[9:12], v79 offset:36880
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v152, v129, s2
	v_cndmask_b32_e64 v59, v151, v130, s2
	v_cndmask_b32_e64 v58, v150, v131, s2
	v_cndmask_b32_e64 v57, v198, v23, s2
	v_cndmask_b32_e64 v129, v145, v16, s2
	v_cndmask_b32_e64 v130, v183, v49, s2
	v_cndmask_b32_e64 v131, v210, v52, s2
	v_cndmask_b32_e64 v150, v148, v124, s2
	v_cndmask_b32_e64 v151, v174, v126, s2
	v_cndmask_b32_e64 v145, v147, v127, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v13, v105, v91
	v_mul_f32_e32 v14, v219, v91
	v_mul_f32_e32 v15, v160, v91
	v_dual_mul_f32 v16, v106, v91 :: v_dual_mul_f32 v49, v247, v56
	v_mul_f32_e32 v50, v246, v56
	v_mul_f32_e32 v51, v249, v56
	v_mul_f32_e32 v52, v248, v56
	v_mul_f32_e32 v60, v217, v38
	v_mul_f32_e32 v62, v216, v38
	v_mul_f32_e32 v65, v225, v38
	v_mul_f32_e32 v67, v218, v38
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v124, v13, v10, v129
	v_fma_f32 v125, v14, v9, v130
	v_fma_f32 v126, v15, v12, v131
	v_fma_f32 v127, v16, v11, v132
	v_fma_f32 v219, v49, v10, v139
	v_fma_f32 v200, v50, v9, v142
	v_fma_f32 v174, v51, v12, v146
	v_fma_f32 v153, v52, v11, v150
	v_fma_f32 v167, v60, v10, v159
	v_fma_f32 v162, v62, v9, v151
	v_fma_f32 v154, v65, v12, v145
	v_fma_f32 v147, v67, v11, v141
	v_fma_f32 v67, v120, v10, v61
	v_fma_f32 v65, v121, v9, v59
	v_fma_f32 v62, v122, v12, v58
	v_fma_f32 v60, v123, v11, v57
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[9:12], v79 offset:37376
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v207, v171, s2
	v_cndmask_b32_e64 v13, v206, v179, s2
	v_cndmask_b32_e64 v179, v196, v252, s2
	v_cndmask_b32_e64 v171, v194, v143, s2
	v_cndmask_b32_e64 v143, v189, v176, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v49, v254, v91
	v_mul_f32_e32 v51, v222, v91
	v_mul_f32_e32 v121, v255, v56
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v205, v180, s2
	v_cndmask_b32_e64 v180, v195, v140, s2
	v_cndmask_b32_e64 v148, v190, v175, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v16, v26, v91
	v_mul_f32_e32 v52, v28, v91
	v_mul_f32_e32 v120, v20, v56
	v_mul_f32_e32 v140, v17, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v204, v181, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v123, v184, v56 :: v_dual_mul_f32 v176, v245, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v160, v192, v170, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v205, v49, v9, v133
	v_fma_f32 v206, v51, v12, v179
	v_fma_f32 v173, v121, v9, v157
	v_fma_f32 v152, v144, v9, v143
	v_fma_f32 v51, v178, v9, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v182, v236, s3
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v204, v16, v10, v128
	v_fma_f32 v207, v52, v11, v180
	v_fma_f32 v198, v120, v10, v171
	v_fma_f32 v158, v140, v10, v148
	v_fma_f32 v52, v177, v10, v50
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v10, 0xbfb8aa3b, v9
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v164, v123, v11, v156
	v_fma_f32 v140, v176, v11, v136
	v_fma_f32 v16, v203, v11, v14
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v122, v234, v56
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v175, v19, v38
	v_mul_f32_e32 v181, v215, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v125, v130, v125, s3
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v170, v122, v12, v160
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v144, v175, v12, v138
	v_fma_f32 v49, v181, v12, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v128, v128, v204, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v171, v171, v198, s3
	v_cndmask_b32_e64 v173, v157, v173, s3
	v_cndmask_b32_e64 v174, v146, v174, s3
	v_cndmask_b32_e64 v170, v160, v170, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v10, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v169, v163, v169, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v157, 0xbfb8aa3b, v173 :: v_dual_mul_f32 v146, 0xbfb8aa3b, v174
	v_mul_f32_e32 v160, 0xbfb8aa3b, v170
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v155, v155, v165, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v163, 0xbfb8aa3b, v169
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v183, off, off offset:948
	scratch_load_b32 v17, off, off offset:236
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v149, v149, v161, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v10, v10, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v166, v166, v172, s3
	v_cndmask_b32_e64 v167, v159, v167, s3
	v_cndmask_b32_e64 v141, v141, v147, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v161, 0xbfb8aa3b, v149 :: v_dual_add_f32 v10, 1.0, v10
	v_dual_mul_f32 v172, 0xbfb8aa3b, v166 :: v_dual_mul_f32 v159, 0xbfb8aa3b, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v147, 0xbfb8aa3b, v141
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v151, v151, v162, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v11, null, v10, v10, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v145, v145, v154, s3
	v_cndmask_b32_e64 v158, v148, v158, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v162, 0xbfb8aa3b, v151
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v12, v11
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v152, v143, v152, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v154, 0xbfb8aa3b, v145
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v138, v138, v144, s3
	v_cndmask_b32_e64 v140, v136, v140, s3
	v_cndmask_b32_e64 v118, v118, v119, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v143, 0xbfb8aa3b, v152
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v117, v68, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v144, 0xbfb8aa3b, v138
	v_mul_f32_e32 v136, 0xbfb8aa3b, v140
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v120, -v11, v12, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v119, 0xbfb8aa3b, v118
	v_mul_f32_e32 v117, 0xbfb8aa3b, v68
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v115, v64, s3
	v_cndmask_b32_e64 v61, v61, v67, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v12, v120, v12
	v_div_scale_f32 v120, vcc_lo, v9, v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v115, 0xbfb8aa3b, v64
	v_mul_f32_e32 v67, 0xbfb8aa3b, v61
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v59, v65, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v121, v120, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v116, v66, s3
	v_cndmask_b32_e64 v58, v58, v62, s3
	v_cndmask_b32_e64 v16, v14, v16, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v59
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v122, -v11, v121, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v116, 0xbfb8aa3b, v66 :: v_dual_fmac_f32 v121, v122, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v11, -v11, v121, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v11, v11, v12, v121
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v202, v237, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v120, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v120
	v_cndmask_b32_e64 v120, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v121, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v120, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v120, v120
	v_ldexp_f32 v120, v120, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v121, 1.0, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v120, null, v121, v121, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v122, v120
	v_fma_f32 v123, -v120, v122, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v122, v123, v122
	v_div_scale_f32 v123, vcc_lo, v12, v121, v12
	v_mul_f32_e32 v175, v123, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v176, -v120, v175, v123
	v_fmac_f32_e32 v175, v176, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v120, -v120, v175, v123
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v123, v235, v238, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v122, v120, v122, v175
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v120, 0xbfb8aa3b, v123
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v121, v122, v121, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v120
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v129, v124, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v120, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v175, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v122, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v120, 0xbfb8aa3b, v123
	v_exp_f32_e32 v120, v120
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v120, v120, v175
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v175, 1.0, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v120, null, v175, v175, v123
	v_rcp_f32_e32 v176, v120
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v177, -v120, v176, 1.0
	v_fmac_f32_e32 v176, v177, v176
	v_div_scale_f32 v177, vcc_lo, v123, v175, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v178, v177, v176
	v_fma_f32 v181, -v120, v178, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v178, v181, v176
	v_fma_f32 v120, -v120, v178, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v176, v120, v176, v178
	v_div_fixup_f32 v120, v11, v10, v9
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v244, v239, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v10, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v10, v10
	v_ldexp_f32 v10, v10, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v11, null, v10, v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v177, v11
	v_fma_f32 v178, -v11, v177, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v177, v178, v177
	v_div_scale_f32 v178, vcc_lo, v9, v10, v9
	v_mul_f32_e32 v181, v178, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v182, -v11, v181, v178
	v_fmac_f32_e32 v181, v182, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v11, v181, v178
	v_div_fmas_f32 v11, v11, v177, v181
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v122
	v_cndmask_b32_e64 v122, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v124, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v122, 0xbfb8aa3b, v12
	v_exp_f32_e32 v122, v122
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v122, v122, v124
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v124, 1.0, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v122, null, v124, v124, v12
	v_rcp_f32_e32 v129, v122
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v177, -v122, v129, 1.0
	v_fmac_f32_e32 v129, v177, v129
	v_div_scale_f32 v177, vcc_lo, v12, v124, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v178, v177, v129
	v_fma_f32 v181, -v122, v178, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v178, v181, v129
	v_fma_f32 v122, -v122, v178, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v129, v122, v129, v178
	v_div_fixup_f32 v122, v176, v175, v123
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v123, 0xbfb8aa3b, v125
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v124, v129, v124, v12
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v132, v127, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v123
	v_cndmask_b32_e64 v123, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v130, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v123, 0xbfb8aa3b, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v123, v123
	v_ldexp_f32 v123, v123, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v130, 1.0, v123
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v123, null, v130, v130, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v175, v123
	v_fma_f32 v176, -v123, v175, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v175, v176, v175
	v_div_scale_f32 v176, vcc_lo, v125, v130, v125
	v_mul_f32_e32 v177, v176, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v178, -v123, v177, v176
	v_fmac_f32_e32 v177, v178, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v123, -v123, v177, v176
	v_div_fmas_f32 v175, v123, v175, v177
	v_div_fixup_f32 v123, v11, v10, v9
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v131, v126, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v125, v175, v130, v125
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v10, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v10, v10
	v_ldexp_f32 v10, v10, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v11, null, v10, v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v126, v11
	v_fma_f32 v131, -v11, v126, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v126, v131, v126
	v_div_scale_f32 v131, vcc_lo, v9, v10, v9
	v_mul_f32_e32 v176, v131, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v177, -v11, v176, v131
	v_fmac_f32_e32 v176, v177, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v11, v176, v131
	v_div_fmas_f32 v11, v11, v126, v176
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v126, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v126
	v_cndmask_b32_e64 v126, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v126, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v126, v126
	v_ldexp_f32 v126, v126, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v127, 1.0, v126
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v126, null, v127, v127, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v129, v126
	v_fma_f32 v131, -v126, v129, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v129, v131, v129
	v_div_scale_f32 v131, vcc_lo, v12, v127, v12
	v_mul_f32_e32 v132, v131, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v176, -v126, v132, v131
	v_fmac_f32_e32 v132, v176, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v126, -v126, v132, v131
	v_div_fmas_f32 v129, v126, v129, v132
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v126, 0xbfb8aa3b, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v127, v129, v127, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v126
	v_cndmask_b32_e64 v126, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v130, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v126, 0xbfb8aa3b, v128
	v_exp_f32_e32 v126, v126
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v126, v126, v130
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v130, 1.0, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v126, null, v130, v130, v128
	v_rcp_f32_e32 v131, v126
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v132, -v126, v131, 1.0
	v_fmac_f32_e32 v131, v132, v131
	v_div_scale_f32 v132, vcc_lo, v128, v130, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v175, v132, v131
	v_fma_f32 v176, -v126, v175, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v175, v176, v131
	v_fma_f32 v126, -v126, v175, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v131, v126, v131, v175
	v_div_fixup_f32 v126, v11, v10, v9
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v133, v205, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v128, v131, v130, v128
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v130, v180, v207, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v10, 0xbfb8aa3b, v9
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v9
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v10, v10, v11
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v10, 1.0, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v11, null, v10, v10, v9
	v_rcp_f32_e32 v132, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v11, v132, 1.0
	v_fmac_f32_e32 v132, v133, v132
	v_div_scale_f32 v133, vcc_lo, v9, v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v175, v133, v132
	v_fma_f32 v176, -v11, v175, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v175, v176, v132
	v_fma_f32 v11, -v11, v175, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v11, v11, v132, v175
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v132, v179, v206, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v12, 0xbfb8aa3b, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v129, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v133, 1.0, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v12, null, v133, v133, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v129, v12
	v_fma_f32 v175, -v12, v129, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v129, v175, v129
	v_div_scale_f32 v175, vcc_lo, v132, v133, v132
	v_mul_f32_e32 v176, v175, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v177, -v12, v176, v175
	v_fmac_f32_e32 v176, v177, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v176, v175
	v_div_fmas_f32 v175, v12, v129, v176
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v12, 0xbfb8aa3b, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v129, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v131, 1.0, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v12, null, v131, v131, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v129, v12
	v_fma_f32 v176, -v12, v129, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v129, v176, v129
	v_div_scale_f32 v176, vcc_lo, v130, v131, v130
	v_mul_f32_e32 v177, v176, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v178, -v12, v177, v176
	v_dual_fmac_f32 v177, v178, v129 :: v_dual_mul_f32 v178, v213, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v177, v176
	v_div_fmas_f32 v176, v12, v129, v177
	v_div_fixup_f32 v129, v11, v10, v9
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:1020
	scratch_load_b32 v10, off, off offset:448
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v130, v176, v131, v130
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v131, off, off offset:1012
	scratch_load_b32 v176, off, off offset:88
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v9, v9, v168
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v131, v131, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v9, v9, v231, v10
	s_waitcnt vmcnt(0)
	v_fma_f32 v131, v131, v233, v176
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v177, v10, v9, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[9:12], v79 offset:37392
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v131, v176, v131, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v176, v185, v91
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v79, v178, v10, v177
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v176, v176, v12, v131
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v177, v177, v79, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v176, v131, v176, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v79, 0xbfb8aa3b, v177
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v131, 0xbfb8aa3b, v176
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v79
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v178, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v177
	v_exp_f32_e32 v79, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v79, v79, v178
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v178, 1.0, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v79, null, v178, v178, v177
	v_rcp_f32_e32 v179, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v180, -v79, v179, 1.0
	v_fmac_f32_e32 v179, v180, v179
	v_div_scale_f32 v180, vcc_lo, v177, v178, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v181, v180, v179
	v_fma_f32 v182, -v79, v181, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v181, v182, v179
	v_fma_f32 v79, -v79, v181, v180
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v179, v79, v179, v181
	v_div_fixup_f32 v79, v175, v133, v132
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v132, off, off offset:1016
	scratch_load_b32 v133, off, off offset:444
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v132, v132, v168
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v132, v132, v230, v133
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v132, v133, v132, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v133, v242, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v133, v133, v9, v132
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v132, v132, v133, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v133, 0xbfb8aa3b, v132
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v133
	v_cndmask_b32_e64 v133, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v175, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v133, 0xbfb8aa3b, v132
	v_exp_f32_e32 v133, v133
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v133, v133, v175
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v133, 1.0, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v175, null, v133, v133, v132
	v_rcp_f32_e32 v180, v175
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v181, -v175, v180, 1.0
	v_fmac_f32_e32 v180, v181, v180
	v_div_scale_f32 v181, vcc_lo, v132, v133, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v182, v181, v180
	v_fma_f32 v196, -v175, v182, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v182, v196, v180
	v_fma_f32 v175, -v175, v182, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v175, v175, v180, v182
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v131
	v_cndmask_b32_e64 v131, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v180, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v131, 0xbfb8aa3b, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v131, v131
	v_ldexp_f32 v131, v131, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v180, 1.0, v131
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v133, v175, v133, v132
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v175, v243, v240, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v131, null, v180, v180, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v132, 0xbfb8aa3b, v175
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v181, v131
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v182, -v131, v181, 1.0
	v_fmac_f32_e32 v181, v182, v181
	v_div_scale_f32 v182, vcc_lo, v176, v180, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v195, v182, v181
	v_fma_f32 v196, -v131, v195, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v195, v196, v181
	v_fma_f32 v131, -v131, v195, v182
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v181, v131, v181, v195
	v_div_fixup_f32 v131, v179, v178, v177
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v177, off, off offset:1008
	scratch_load_b32 v178, off, off offset:84
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v177, v177, v168
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v177, v177, v232, v178
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v177, v178, v177, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v178, v224, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v178, v178, v11, v177
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v177, v177, v178, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v178, 0xbfb8aa3b, v177
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v178
	v_cndmask_b32_e64 v178, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v179, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v178, 0xbfb8aa3b, v177
	v_exp_f32_e32 v178, v178
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v178, v178, v179
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v178, 1.0, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v179, null, v178, v178, v177
	v_rcp_f32_e32 v182, v179
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v194, -v179, v182, 1.0
	v_fmac_f32_e32 v182, v194, v182
	v_div_scale_f32 v194, vcc_lo, v177, v178, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v195, v194, v182
	v_fma_f32 v196, -v179, v195, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v195, v196, v182
	v_fma_f32 v179, -v179, v195, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v179, v179, v182, v195
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v132
	v_cndmask_b32_e64 v132, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v182, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v132, 0xbfb8aa3b, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v132, v132
	v_ldexp_f32 v132, v132, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v182, 1.0, v132
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v132, null, v182, v182, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v194, v132
	v_fma_f32 v195, -v132, v194, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v194, v195, v194
	v_div_scale_f32 v195, vcc_lo, v175, v182, v175
	v_mul_f32_e32 v196, v195, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v197, -v132, v196, v195
	v_fmac_f32_e32 v196, v197, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v132, -v132, v196, v195
	v_div_fmas_f32 v194, v132, v194, v196
	v_div_fixup_f32 v132, v181, v180, v176
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v176, v134, v241, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v134, 0xbfb8aa3b, v176
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v134
	v_cndmask_b32_e64 v134, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v180, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, 0xbfb8aa3b, v176
	v_exp_f32_e32 v134, v134
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v134, v134, v180
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v180, 1.0, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v134, null, v180, v180, v176
	v_rcp_f32_e32 v181, v134
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v195, -v134, v181, 1.0
	v_fmac_f32_e32 v181, v195, v181
	v_div_scale_f32 v195, vcc_lo, v176, v180, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v196, v195, v181
	v_fma_f32 v197, -v134, v196, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v196, v197, v181
	v_fma_f32 v134, -v134, v196, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v181, v134, v181, v196
	v_div_fixup_f32 v134, v179, v178, v177
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v177, v135, v201, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v135, 0xbfb8aa3b, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v135
	v_cndmask_b32_e64 v135, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v178, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v135, 0xbfb8aa3b, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v135, v135
	v_ldexp_f32 v135, v135, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v178, 1.0, v135
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v135, null, v178, v178, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v179, v135
	v_fma_f32 v195, -v135, v179, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v179, v195, v179
	v_div_scale_f32 v195, vcc_lo, v177, v178, v177
	v_mul_f32_e32 v196, v195, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v197, -v135, v196, v195
	v_fmac_f32_e32 v196, v197, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v135, -v135, v196, v195
	v_div_fmas_f32 v179, v135, v179, v196
	v_div_fixup_f32 v135, v194, v182, v175
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v175, v137, v199, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v137, 0xbfb8aa3b, v175
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v137
	v_cndmask_b32_e64 v137, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v182, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v137, 0xbfb8aa3b, v175
	v_exp_f32_e32 v137, v137
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v137, v137, v182
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v182, 1.0, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v137, null, v182, v182, v175
	v_rcp_f32_e32 v194, v137
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v195, -v137, v194, 1.0
	v_fmac_f32_e32 v194, v195, v194
	v_div_scale_f32 v195, vcc_lo, v175, v182, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v196, v195, v194
	v_fma_f32 v197, -v137, v196, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v196, v197, v194
	v_fma_f32 v137, -v137, v196, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v194, v137, v194, v196
	v_div_fixup_f32 v137, v181, v180, v176
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v176, v139, v219, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v139, 0xbfb8aa3b, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v139
	v_cndmask_b32_e64 v139, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v180, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v139, 0xbfb8aa3b, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v139, v139
	v_ldexp_f32 v139, v139, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v180, 1.0, v139
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v139, null, v180, v180, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v181, v139
	v_fma_f32 v195, -v139, v181, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v181, v195, v181
	v_div_scale_f32 v195, vcc_lo, v176, v180, v176
	v_mul_f32_e32 v196, v195, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v197, -v139, v196, v195
	v_fmac_f32_e32 v196, v197, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v139, v196, v195
	v_div_fmas_f32 v181, v139, v181, v196
	v_div_fixup_f32 v139, v179, v178, v177
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v177, v142, v200, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v142, 0xbfb8aa3b, v177
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v142
	v_cndmask_b32_e64 v142, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v178, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, 0xbfb8aa3b, v177
	v_exp_f32_e32 v142, v142
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v142, v142, v178
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v178, 1.0, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v142, null, v178, v178, v177
	v_rcp_f32_e32 v179, v142
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v195, -v142, v179, 1.0
	v_fmac_f32_e32 v179, v195, v179
	v_div_scale_f32 v195, vcc_lo, v177, v178, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v196, v195, v179
	v_fma_f32 v197, -v142, v196, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v196, v197, v179
	v_fma_f32 v142, -v142, v196, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v179, v142, v179, v196
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v146
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v142, v194, v182, v175
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v146, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v175, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v146, 0xbfb8aa3b, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v146, v146
	v_ldexp_f32 v146, v146, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v175, 1.0, v146
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v146, null, v175, v175, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v182, v146
	v_fma_f32 v194, -v146, v182, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v182, v194, v182
	v_div_scale_f32 v194, vcc_lo, v174, v175, v174
	v_mul_f32_e32 v195, v194, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v196, -v146, v195, v194
	v_fmac_f32_e32 v195, v196, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v146, -v146, v195, v194
	v_div_fmas_f32 v182, v146, v182, v195
	v_div_fixup_f32 v146, v181, v180, v176
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v176, v150, v153, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v150, 0xbfb8aa3b, v176
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v150
	v_cndmask_b32_e64 v150, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v153, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v150, 0xbfb8aa3b, v176
	v_exp_f32_e32 v150, v150
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v150, v150, v153
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v180, 1.0, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v150, null, v180, v180, v176
	v_rcp_f32_e32 v153, v150
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v181, -v150, v153, 1.0
	v_fmac_f32_e32 v153, v181, v153
	v_div_scale_f32 v181, vcc_lo, v176, v180, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v194, v181, v153
	v_fma_f32 v195, -v150, v194, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v194, v195, v153
	v_fma_f32 v150, -v150, v194, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v181, v150, v153, v194
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v153, 0xbfb8aa3b, v171
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v150, v179, v178, v177
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v153
	v_cndmask_b32_e64 v153, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v177, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v153, 0xbfb8aa3b, v171
	v_exp_f32_e32 v153, v153
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v153, v153, v177
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v177, 1.0, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v153, null, v177, v177, v171
	v_rcp_f32_e32 v178, v153
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v179, -v153, v178, 1.0
	v_fmac_f32_e32 v178, v179, v178
	v_div_scale_f32 v179, vcc_lo, v171, v177, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v194, v179, v178
	v_fma_f32 v195, -v153, v194, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v194, v195, v178
	v_fma_f32 v153, -v153, v194, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v178, v153, v178, v194
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v157
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v153, v182, v175, v174
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v157, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v174, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v157, 0xbfb8aa3b, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v157, v157
	v_ldexp_f32 v157, v157, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v174, 1.0, v157
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v157, null, v174, v174, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v175, v157
	v_fma_f32 v179, -v157, v175, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v175, v179, v175
	v_div_scale_f32 v179, vcc_lo, v173, v174, v173
	v_mul_f32_e32 v182, v179, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v194, -v157, v182, v179
	v_fmac_f32_e32 v182, v194, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v157, -v157, v182, v179
	v_div_fmas_f32 v175, v157, v175, v182
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v160
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v157, v181, v180, v176
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v160, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v176, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v160, 0xbfb8aa3b, v170
	v_exp_f32_e32 v160, v160
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v160, v160, v176
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v176, 1.0, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v160, null, v176, v176, v170
	v_rcp_f32_e32 v179, v160
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v180, -v160, v179, 1.0
	v_fmac_f32_e32 v179, v180, v179
	v_div_scale_f32 v180, vcc_lo, v170, v176, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v181, v180, v179
	v_fma_f32 v182, -v160, v181, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v181, v182, v179
	v_fma_f32 v160, -v160, v181, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v179, v160, v179, v181
	v_div_fixup_f32 v160, v178, v177, v171
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v171, v156, v164, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v156, 0xbfb8aa3b, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v156
	v_cndmask_b32_e64 v156, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v164, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v156, 0xbfb8aa3b, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v156, v156
	v_ldexp_f32 v156, v156, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v177, 1.0, v156
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v156, null, v177, v177, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v164, v156
	v_fma_f32 v178, -v156, v164, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v164, v178, v164
	v_div_scale_f32 v178, vcc_lo, v171, v177, v171
	v_mul_f32_e32 v180, v178, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v181, -v156, v180, v178
	v_fmac_f32_e32 v180, v181, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v156, -v156, v180, v178
	v_div_fmas_f32 v178, v156, v164, v180
	v_div_fixup_f32 v156, v179, v176, v170
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v170, off, off offset:1000 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v164, v175, v174, v173
	scratch_load_b32 v173, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v170, v170, v72
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v170, v170, v231, v173
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v170, v173, v170, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v173, v223, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v173, v173, v10, v170
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v170, v170, v173, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v173, 0xbfb8aa3b, v170
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v173
	v_cndmask_b32_e64 v173, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v174, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v173, 0xbfb8aa3b, v170
	v_exp_f32_e32 v173, v173
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v173, v173, v174
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v173, 1.0, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v174, null, v173, v173, v170
	v_rcp_f32_e32 v175, v174
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v176, -v174, v175, 1.0
	v_fmac_f32_e32 v175, v176, v175
	v_div_scale_f32 v176, vcc_lo, v170, v173, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v179, v176, v175
	v_fma_f32 v180, -v174, v179, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v179, v180, v175
	v_fma_f32 v174, -v174, v179, v176
	scratch_load_b32 v176, off, off offset:76 ; 4-byte Folded Reload
	v_div_fmas_f32 v174, v174, v175, v179
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v175, off, off offset:996 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v174, v174, v173, v170
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v175, v175, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v175, v175, v230, v176
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v175, v176, v175, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v176, v186, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v176, v176, v9, v175
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v175, v175, v176, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v176, 0xbfb8aa3b, v175
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v176
	v_cndmask_b32_e64 v176, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v179, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v176, 0xbfb8aa3b, v175
	v_exp_f32_e32 v176, v176
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v176, v176, v179
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v176, 1.0, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v179, null, v176, v176, v175
	v_rcp_f32_e32 v180, v179
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v181, -v179, v180, 1.0
	v_fmac_f32_e32 v180, v181, v180
	v_div_scale_f32 v181, vcc_lo, v175, v176, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v182, v181, v180
	v_fma_f32 v192, -v179, v182, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v182, v192, v180
	v_fma_f32 v179, -v179, v182, v181
	scratch_load_b32 v181, off, off offset:72 ; 4-byte Folded Reload
	v_div_fmas_f32 v179, v179, v180, v182
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v180, off, off offset:968 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v173, v179, v176, v175
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v180, v180, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v180, v180, v233, v181
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v180, v181, v180, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v181, v214, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v181, v181, v12, v180
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v180, v180, v181, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v181, 0xbfb8aa3b, v180
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	v_cndmask_b32_e64 v181, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v182, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v181, 0xbfb8aa3b, v180
	v_exp_f32_e32 v181, v181
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v181, v181, v182
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v181, 1.0, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v182, null, v181, v181, v180
	v_rcp_f32_e32 v191, v182
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v192, -v182, v191, 1.0
	v_fmac_f32_e32 v191, v192, v191
	v_div_scale_f32 v192, vcc_lo, v180, v181, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v193, v192, v191
	v_fma_f32 v194, -v182, v193, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v193, v194, v191
	v_fma_f32 v182, -v182, v193, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v182, v182, v191, v193
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v191, v183, v72
	scratch_load_b32 v183, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(0)
	v_fma_f32 v191, v191, v232, v183
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v190, v183, v191, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v191, v17, v56
	scratch_load_b32 v17, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v191, v191, v11, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v191, v190, v191, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v190, 0xbfb8aa3b, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v190
	v_cndmask_b32_e64 v190, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v192, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v190, 0xbfb8aa3b, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v190, v190
	v_ldexp_f32 v190, v190, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v192, 1.0, v190
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v190, null, v192, v192, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v193, v190
	v_fma_f32 v194, -v190, v193, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v193, v194, v193
	v_div_scale_f32 v194, vcc_lo, v191, v192, v191
	v_mul_f32_e32 v195, v194, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v196, -v190, v195, v194
	v_fmac_f32_e32 v195, v196, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v190, -v190, v195, v194
	v_div_fmas_f32 v193, v190, v193, v195
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v172
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v190, v178, v177, v171
	v_div_fixup_f32 v171, v182, v181, v180
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v172, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v175, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v172, 0xbfb8aa3b, v166
	v_exp_f32_e32 v172, v172
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v172, v172, v175
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v172, 1.0, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v175, null, v172, v172, v166
	v_rcp_f32_e32 v176, v175
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v177, -v175, v176, 1.0
	v_fmac_f32_e32 v176, v177, v176
	v_div_scale_f32 v177, vcc_lo, v166, v172, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v178, v177, v176
	v_fma_f32 v179, -v175, v178, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v178, v179, v176
	v_fma_f32 v175, -v175, v178, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v175, v175, v176, v178
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v163
	v_cndmask_b32_e64 v163, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v176, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v163, 0xbfb8aa3b, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v163, v163
	v_ldexp_f32 v163, v163, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v176, 1.0, v163
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v163, null, v176, v176, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v177, v163
	v_fma_f32 v178, -v163, v177, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v177, v178, v177
	v_div_scale_f32 v178, vcc_lo, v169, v176, v169
	v_mul_f32_e32 v179, v178, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v180, -v163, v179, v178
	v_fmac_f32_e32 v179, v180, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v163, -v163, v179, v178
	v_div_fmas_f32 v177, v163, v177, v179
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v163, 0xbfb8aa3b, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v163
	v_cndmask_b32_e64 v163, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v165, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v163, 0xbfb8aa3b, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v163, v163
	v_ldexp_f32 v163, v163, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v165, 1.0, v163
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v170, v193, v192, v191
	v_div_scale_f32 v163, null, v165, v165, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v178, v163
	v_fma_f32 v179, -v163, v178, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v178, v179, v178
	v_div_scale_f32 v179, vcc_lo, v155, v165, v155
	v_mul_f32_e32 v180, v179, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v181, -v163, v180, v179
	v_fmac_f32_e32 v180, v181, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v163, -v163, v180, v179
	v_div_fmas_f32 v178, v163, v178, v180
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v161
	v_cndmask_b32_e64 v161, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v163, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v161, 0xbfb8aa3b, v149
	v_exp_f32_e32 v161, v161
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v161, v161, v163
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v179, 1.0, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v161, null, v179, v179, v149
	v_rcp_f32_e32 v163, v161
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v180, -v161, v163, 1.0
	v_fmac_f32_e32 v163, v180, v163
	v_div_scale_f32 v180, vcc_lo, v149, v179, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v181, v180, v163
	v_fma_f32 v182, -v161, v181, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v181, v182, v163
	v_fma_f32 v161, -v161, v181, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v180, v161, v163, v181
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v159
	v_cndmask_b32_e64 v159, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v161, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v159, 0xbfb8aa3b, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v159, v159
	v_ldexp_f32 v159, v159, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v181, 1.0, v159
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v159, null, v181, v181, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v161, v159
	v_fma_f32 v163, -v159, v161, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v161, v163, v161
	v_div_scale_f32 v163, vcc_lo, v167, v181, v167
	v_mul_f32_e32 v182, v163, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v191, -v159, v182, v163
	v_fmac_f32_e32 v182, v191, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v159, -v159, v182, v163
	v_div_fixup_f32 v163, v175, v172, v166
	v_div_fmas_f32 v182, v159, v161, v182
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v162
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v159, v178, v165, v155
	v_div_fixup_f32 v155, v180, v179, v149
	v_div_fixup_f32 v161, v177, v176, v169
	v_div_fixup_f32 v149, v182, v181, v167
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v162, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v165, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v69, v69, v163 :: v_dual_mul_f32 v48, v48, v161
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v162, 0xbfb8aa3b, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v162, v162
	v_ldexp_f32 v162, v162, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v162, 1.0, v162
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v165, null, v162, v162, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v166, v165
	v_fma_f32 v167, -v165, v166, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v166, v167, v166
	v_div_scale_f32 v167, vcc_lo, v151, v162, v151
	v_mul_f32_e32 v169, v167, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v172, -v165, v169, v167
	v_fmac_f32_e32 v169, v172, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v165, -v165, v169, v167
	v_div_fmas_f32 v165, v165, v166, v169
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v154
	v_cndmask_b32_e64 v154, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v166, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v154, 0xbfb8aa3b, v145
	v_exp_f32_e32 v154, v154
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v154, v154, v166
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v154, 1.0, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v166, null, v154, v154, v145
	v_rcp_f32_e32 v167, v166
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v169, -v166, v167, 1.0
	v_fmac_f32_e32 v167, v169, v167
	v_div_scale_f32 v169, vcc_lo, v145, v154, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v172, v169, v167
	v_fma_f32 v175, -v166, v172, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v172, v175, v167
	v_fma_f32 v166, -v166, v172, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v166, v166, v167, v172
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v147
	v_cndmask_b32_e64 v147, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v167, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v147, 0xbfb8aa3b, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v147, v147
	v_ldexp_f32 v147, v147, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v167, 1.0, v147
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v147, null, v167, v167, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v169, v147
	v_fma_f32 v172, -v147, v169, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v169, v172, v169
	v_div_scale_f32 v172, vcc_lo, v141, v167, v141
	v_mul_f32_e32 v175, v172, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v176, -v147, v175, v172
	v_fmac_f32_e32 v175, v176, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v147, -v147, v175, v172
	v_div_fmas_f32 v169, v147, v169, v175
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v147, 0xbfb8aa3b, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v147
	v_cndmask_b32_e64 v147, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v148, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v147, 0xbfb8aa3b, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v147, v147
	v_ldexp_f32 v147, v147, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v172, 1.0, v147
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v147, null, v172, v172, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v148, v147
	v_fma_f32 v175, -v147, v148, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v148, v175, v148
	v_div_scale_f32 v175, vcc_lo, v158, v172, v158
	v_mul_f32_e32 v176, v175, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v177, -v147, v176, v175
	v_fmac_f32_e32 v176, v177, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v147, -v147, v176, v175
	v_div_fmas_f32 v175, v147, v148, v176
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v143
	v_cndmask_b32_e64 v143, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v147, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v143, 0xbfb8aa3b, v152
	v_exp_f32_e32 v143, v143
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v143, v143, v147
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v176, 1.0, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v143, null, v176, v176, v152
	v_rcp_f32_e32 v147, v143
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v148, -v143, v147, 1.0
	v_fmac_f32_e32 v147, v148, v147
	v_div_scale_f32 v148, vcc_lo, v152, v176, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v177, v148, v147
	v_fma_f32 v178, -v143, v177, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v177, v178, v147
	v_fma_f32 v143, -v143, v177, v148
	v_div_fixup_f32 v148, v165, v162, v151
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v177, v143, v147, v177
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v144
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v147, v166, v154, v145
	v_div_fixup_f32 v145, v169, v167, v141
	v_div_fixup_f32 v143, v175, v172, v158
	v_div_fixup_f32 v141, v177, v176, v152
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v144, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v151, 0, 0xffffffc0, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v54, v54, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v144, 0xbfb8aa3b, v138
	v_exp_f32_e32 v144, v144
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v144, v144, v151
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v144, 1.0, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v151, null, v144, v144, v138
	v_rcp_f32_e32 v152, v151
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v154, -v151, v152, 1.0
	v_fmac_f32_e32 v152, v154, v152
	v_div_scale_f32 v154, vcc_lo, v138, v144, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v158, v154, v152
	v_fma_f32 v162, -v151, v158, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v158, v162, v152
	v_fma_f32 v151, -v151, v158, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v151, v151, v152, v158
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v136
	v_cndmask_b32_e64 v136, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v152, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v136, 0xbfb8aa3b, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v136, v136
	v_ldexp_f32 v136, v136, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v152, 1.0, v136
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v136, null, v152, v152, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v154, v136
	v_fma_f32 v158, -v136, v154, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v154, v158, v154
	v_div_scale_f32 v158, vcc_lo, v140, v152, v140
	v_mul_f32_e32 v162, v158, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v165, -v136, v162, v158
	v_fmac_f32_e32 v162, v165, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v136, -v136, v162, v158
	v_div_fmas_f32 v154, v136, v154, v162
	v_div_fixup_f32 v136, v151, v144, v138
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v138, off, off offset:944
	scratch_load_b32 v144, off, off offset:64
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v138, v138, v63
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v138, v138, v231, v144
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v138, v144, v138, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v144, v253, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v144, v144, v10, v138
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v138, v138, v144, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v144, 0xbfb8aa3b, v138
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v144
	v_cndmask_b32_e64 v144, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v151, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v144, 0xbfb8aa3b, v138
	v_exp_f32_e32 v144, v144
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v144, v144, v151
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v144, 1.0, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v151, null, v144, v144, v138
	v_rcp_f32_e32 v158, v151
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v162, -v151, v158, 1.0
	v_fmac_f32_e32 v158, v162, v158
	v_div_scale_f32 v162, vcc_lo, v138, v144, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v165, v162, v158
	v_fma_f32 v166, -v151, v165, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v165, v166, v158
	v_fma_f32 v151, -v151, v165, v162
	scratch_load_b32 v162, off, off offset:60 ; 4-byte Folded Reload
	v_div_fmas_f32 v151, v151, v158, v165
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v158, off, off offset:920 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v158, v158, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v158, v158, v230, v162
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v158, v162, v158, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v162, v17, v38
	scratch_load_b32 v17, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v162, v162, v9, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v158, v158, v162, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v162, 0xbfb8aa3b, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v162
	v_cndmask_b32_e64 v162, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v165, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v162, 0xbfb8aa3b, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v162, v162
	v_ldexp_f32 v162, v162, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v162, 1.0, v162
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v165, null, v162, v162, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v166, v165
	v_fma_f32 v167, -v165, v166, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v166, v167, v166
	v_div_scale_f32 v167, vcc_lo, v158, v162, v158
	v_mul_f32_e32 v169, v167, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v172, -v165, v169, v167
	v_fmac_f32_e32 v169, v172, v166
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v165, -v165, v169, v167
	scratch_load_b32 v167, off, off offset:56 ; 4-byte Folded Reload
	v_div_fmas_f32 v165, v165, v166, v169
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v166, off, off offset:916 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v166, v166, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v166, v166, v233, v167
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v166, v167, v166, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v167, v17, v38
	scratch_load_b32 v17, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v167, v167, v12, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v166, v166, v167, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v167, 0xbfb8aa3b, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v167
	v_cndmask_b32_e64 v167, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v169, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v167, 0xbfb8aa3b, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v167, v167
	v_ldexp_f32 v167, v167, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v167, 1.0, v167
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v169, null, v167, v167, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v172, v169
	v_fma_f32 v175, -v169, v172, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v172, v175, v172
	v_div_scale_f32 v175, vcc_lo, v166, v167, v166
	v_mul_f32_e32 v176, v175, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v177, -v169, v176, v175
	v_fmac_f32_e32 v176, v177, v172
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v169, -v169, v176, v175
	scratch_load_b32 v175, off, off offset:52 ; 4-byte Folded Reload
	v_div_fmas_f32 v169, v169, v172, v176
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v172, off, off offset:912 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v172, v172, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v172, v172, v232, v175
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v172, v175, v172, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v175, v17, v38
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v17, off, off offset:1424 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v175, v175, v11, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v172, v172, v175, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v175, 0xbfb8aa3b, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v175
	v_cndmask_b32_e64 v175, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v176, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v175, 0xbfb8aa3b, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v175, v175
	v_ldexp_f32 v175, v175, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v175, 1.0, v175
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v152, v154, v152, v140
	v_div_fixup_f32 v140, v169, v167, v166
	v_div_scale_f32 v176, null, v175, v175, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v177, v176
	v_fma_f32 v178, -v176, v177, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v177, v178, v177
	v_div_scale_f32 v178, vcc_lo, v172, v175, v172
	v_mul_f32_e32 v179, v178, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v180, -v176, v179, v178
	v_fmac_f32_e32 v179, v180, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v176, -v176, v179, v178
	v_div_fmas_f32 v176, v176, v177, v179
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v119
	v_cndmask_b32_e64 v119, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v154, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v119, 0xbfb8aa3b, v118
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v151, v151, v144, v138
	v_div_fixup_f32 v144, v165, v162, v158
	v_div_fixup_f32 v138, v176, v175, v172
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v119, v119
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v119, v119, v154
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v119, 1.0, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v154, null, v119, v119, v118
	v_rcp_f32_e32 v158, v154
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v162, -v154, v158, 1.0
	v_fmac_f32_e32 v158, v162, v158
	v_div_scale_f32 v162, vcc_lo, v118, v119, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v165, v162, v158
	v_fma_f32 v166, -v154, v165, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v165, v166, v158
	v_fma_f32 v154, -v154, v165, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v154, v154, v158, v165
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v117
	v_cndmask_b32_e64 v117, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v158, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v117, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v117, v117
	v_ldexp_f32 v117, v117, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v158, 1.0, v117
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v117, null, v158, v158, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v162, v117
	v_fma_f32 v165, -v117, v162, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v162, v165, v162
	v_div_scale_f32 v165, vcc_lo, v68, v158, v68
	v_mul_f32_e32 v166, v165, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v167, -v117, v166, v165
	v_fmac_f32_e32 v166, v167, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v117, -v117, v166, v165
	v_div_fmas_f32 v162, v117, v162, v166
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v116
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v117, v154, v119, v118
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v116, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v118, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v33, v33, v117 :: v_dual_fmac_f32 v116, 0xbfb8aa3b, v66
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v116, v116
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v116, v116, v118
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v116, 1.0, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v118, null, v116, v116, v66
	v_rcp_f32_e32 v119, v118
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v154, -v118, v119, 1.0
	v_fmac_f32_e32 v119, v154, v119
	v_div_scale_f32 v154, vcc_lo, v66, v116, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v165, v154, v119
	v_fma_f32 v166, -v118, v165, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v165, v166, v119
	v_fma_f32 v118, -v118, v165, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v118, v118, v119, v165
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v115
	v_cndmask_b32_e64 v115, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v119, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v115, 0xbfb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v115, v115
	v_ldexp_f32 v115, v115, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v115, 1.0, v115
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v119, null, v115, v115, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v154, v119
	v_fma_f32 v165, -v119, v154, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v154, v165, v154
	v_div_scale_f32 v165, vcc_lo, v64, v115, v64
	v_mul_f32_e32 v166, v165, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v167, -v119, v166, v165
	v_fmac_f32_e32 v166, v167, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v119, -v119, v166, v165
	v_div_fmas_f32 v119, v119, v154, v166
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v154, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v154
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v154, null, v67, v67, v61
	v_rcp_f32_e32 v165, v154
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v166, -v154, v165, 1.0
	v_fmac_f32_e32 v165, v166, v165
	v_div_scale_f32 v166, vcc_lo, v61, v67, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v167, v166, v165
	v_fma_f32 v169, -v154, v167, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v167, v169, v165
	v_fma_f32 v154, -v154, v167, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v154, v154, v165, v167
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v154, v154, v67, v61
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v165, 0, 0xffffffc0, vcc_lo
	scratch_load_b32 v67, off, off offset:44 ; 4-byte Folded Reload
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v65, v65, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v165, null, v65, v65, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v166, v165
	v_fma_f32 v167, -v165, v166, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v166, v167, v166
	v_div_scale_f32 v167, vcc_lo, v59, v65, v59
	v_mul_f32_e32 v169, v167, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v172, -v165, v169, v167
	v_fmac_f32_e32 v169, v172, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v165, -v165, v169, v167
	v_div_fmas_f32 v165, v165, v166, v169
	v_div_fixup_f32 v166, v162, v158, v68
	v_div_fixup_f32 v162, v118, v116, v66
	v_div_fixup_f32 v158, v119, v115, v64
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v115, v57, v60, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v118, v165, v65, v59
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v59, 0xbfb8aa3b, v58
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v68, off, off offset:768 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v32, v32, v166 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v115
	v_mul_f32_e32 v35, v35, v118
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.l, v35.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v41, v35, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v59, v59
	v_ldexp_f32 v59, v59, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v61, null, v59, v59, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v62, v61
	v_fma_f32 v64, -v61, v62, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, v64, v62
	v_div_scale_f32 v64, vcc_lo, v58, v59, v58
	v_mul_f32_e32 v65, v64, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v61, v65, v64
	v_fmac_f32_e32 v65, v66, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v61, v65, v64
	v_div_fmas_f32 v61, v61, v62, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v165, v61, v59, v58
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v102, v108, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v59.h, v73.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v34, v34, v165 :: v_dual_fmac_f32 v57, 0xbfb8aa3b, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v58, v58, v121
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v58, v58
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v57, v57, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v116, 1.0, v57
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v57, null, v116, v116, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v60, v57
	v_fma_f32 v62, -v57, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v62, v60
	v_div_scale_f32 v62, vcc_lo, v115, v116, v115
	v_mul_f32_e32 v64, v62, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v57, v64, v62
	v_fmac_f32_e32 v64, v65, v60
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v103, v111, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v57, v64, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v62.h, v73.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v119, v57, v60, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v101, v109, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v60.l, v58.h
	v_mov_b16_e32 v60.h, v73.l
	v_mov_b16_e32 v64.h, v73.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v44, v119, v116, v115
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v57, v57, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v60, 1, v60
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v44, v0, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v59.l, v57.h
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add3_u32 v60, v58, v60, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v99, v211, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v99, off, off offset:852 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v59, 1, v59
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v58, v58, v123
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v59, v57, v59, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v100, v212, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v62.l, v58.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v61, v57, v122
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v57.l, 0x7fff, v60.h, s0
	v_mov_b16_e32 v60.h, v73.l
	v_cndmask_b16 v57.h, 0x7fff, v59.h, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v110, v114, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v60.l, v61.h
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_and_b32_e32 v62, 1, v62
	v_cmp_o_f32_e64 s0, v58, v58
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v59, v59, v124
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v60, 1, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v62, v58, v62, 0x7fff
	v_cmp_o_f32_e64 s1, v59, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v60, v61, v60, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v107, v113, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v58, v61, v125
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v61.l, v59.h
	v_mov_b16_e32 v61.h, v73.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v64.l, v58.h
	v_cmp_o_f32_e64 s4, v58, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v61, 1, v61
	v_and_b32_e32 v64, 1, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v61, v59, v61, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v104, v112, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v64, v58, v64, 0x7fff
	v_cndmask_b16 v58.l, 0x7fff, v62.h, s0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v62, off, off offset:896 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v59, v126
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v58.h, 0x7fff, v60.h, vcc_lo
	v_cndmask_b16 v59.l, 0x7fff, v64.h, s4
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v64, off, off offset:440
	scratch_load_b128 v[21:24], off, off offset:1476
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v60, v65, v127
	scratch_load_b32 v65, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v59.h, 0x7fff, v61.h, s1
	v_mov_b16_e32 v61.l, v66.h
	v_mov_b16_e32 v61.h, v73.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v61, 1, v61
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_add3_u32 v61, v66, v61, 0x7fff
	scratch_load_b32 v66, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v62, v62, v168
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, v62, v22, v64
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v64, v62, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v64, off, off offset:892 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v64, v64, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v64, v64, v21, v65
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v65, v64, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v65, off, off offset:1036 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v65, v65, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v65, v65, v6, v62
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v62, v65, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v65, off, off offset:1032 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v62, v62, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v62, v62
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v65, v65, v91
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v65, v65, v5, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v64, v65, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v65.l, v60.h
	v_mov_b16_e32 v65.h, v73.l
	v_and_b32_e32 v65, 1, v65
	v_cmp_o_f32_e64 s0, v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v60, v65, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v60, v64, v129
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v62.h
	v_mov_b16_e32 v64.h, v73.l
	v_cmp_o_f32_e64 s4, v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v64, 1, v64
	v_add3_u32 v64, v62, v64, 0x7fff
	v_mov_b16_e32 v62.l, v60.h
	v_mov_b16_e32 v62.h, v73.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v62, 1, v62
	v_add3_u32 v62, v60, v62, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v60, off, off offset:792 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v61.l, 0x7fff, v62.h, s4
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v60, v60, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v60, v60, v24, v66
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v66, v60, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v66, off, off offset:884 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v66, v66, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v66, v66, v23, v67
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v67, v66, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v67, off, off offset:1028 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v67, v67, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v67, v67, v8, v60
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v60, v67, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v67, off, off offset:1024 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v67, v67, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v67, v67, v7, v66
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v66, v67, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v60, v79
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v60.l, 0x7fff, v65.h, s0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v65, off, off offset:880 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v60.h, 0x7fff, v61.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v62, v66, v130
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v66, off, off offset:432
	scratch_load_b128 v[100:103], off, off offset:1460
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v61.h, 0x7fff, v64.h, s1
	v_mov_b16_e32 v64.l, v67.h
	v_mov_b16_e32 v64.h, v73.l
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	scratch_load_b32 v79, off, off offset:424 ; 4-byte Folded Reload
	v_cmp_o_f32_e64 s0, v62, v62
	v_and_b32_e32 v64, 1, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v64, v67, v64, 0x7fff
	scratch_load_b32 v67, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v65, v65, v168
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v65, v65, v101, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v66, v65, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v66, off, off offset:876 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v66, v66, v168
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v66, v66, v100, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v67, v66, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v67, off, off offset:864 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v67, v67, v91
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v67, v67, v2, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v65, v67, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v67, off, off offset:860 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v65, v65, v131
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v65, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v67, v67, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v67, v67, v1, v66
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v66, v67, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v62.h
	v_mov_b16_e32 v67.h, v73.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v67, v62, v67, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v62, v66, v133
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.l, v65.h
	v_mov_b16_e32 v66.h, v73.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v62, v62
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v65, v66, 0x7fff
	v_mov_b16_e32 v65.l, v62.h
	v_mov_b16_e32 v65.h, v73.l
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v62, v65, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v62, off, off offset:772 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v64.l, 0x7fff, v65.h, s4
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v62, v168
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v62, v62, v103, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v79, v62, s2
	scratch_load_b32 v79, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v68, v168
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v68, v68, v102, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v79, v68, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v79, off, off offset:856 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v79, v79, v91
	v_mul_f32_e32 v91, v99, v91
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v79, v79, v4, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v62, v79, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v79, v91, v3, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v68, v79, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v79, v62, v132
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v62.l, 0x7fff, v67.h, s0
	v_mov_b16_e32 v67.h, v73.l
	v_cndmask_b16 v62.h, 0x7fff, v64.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v65, v68, v134
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v79.h
	v_cndmask_b16 v64.h, 0x7fff, v66.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v85, v95, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v84, v93, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v67, 1, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v85, v86, v94, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v66, v135
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v65, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v67, v79, v67, 0x7fff
	v_mov_b16_e32 v79.l, v65.h
	v_mov_b16_e32 v79.h, v73.l
	v_cmp_o_f32_e64 s1, v66, v66
	v_and_b32_e32 v79, 1, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v79, v65, v79, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v65, v68, v137
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v66.h
	v_mov_b16_e32 v68.h, v73.l
	v_cmp_o_f32_e64 s4, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v68, v66, v68, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v83, v89, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v83.l, v65.h
	v_mov_b16_e32 v83.h, v73.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v89, off, off offset:1396 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v84, v66, v139
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v66.h, 0x7fff, v68.h, s1
	v_and_b32_e32 v83, 1, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v92, v98, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v79.l, v84.h
	v_add3_u32 v83, v65, v83, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v67.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v82, v142
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v65.l, 0x7fff, v79.h, s0
	v_mov_b16_e32 v79.h, v73.l
	v_cndmask_b16 v66.l, 0x7fff, v83.h, s4
	v_mov_b16_e32 v83.h, v73.l
	v_mov_b16_e32 v83.l, v67.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v82, v90, v97, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v68, v68, v146 :: v_dual_and_b32 v79, 1, v79
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v83, 1, v83
	v_cmp_o_f32_e64 s0, v67, v67
	v_add3_u32 v79, v84, v79, 0x7fff
	v_mov_b16_e32 v84.h, v73.l
	v_cmp_o_f32_e64 s1, v68, v68
	v_add3_u32 v83, v67, v83, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v67, v82, v150
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v82.l, v68.h
	v_mov_b16_e32 v82.h, v73.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v84.l, v67.h
	v_and_b32_e32 v82, 1, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v84, 1, v84
	v_cmp_o_f32_e64 s4, v67, v67
	v_add3_u32 v82, v68, v82, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v87, v96, s3
	scratch_load_b32 v87, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v84, v67, v84, 0x7fff
	v_cndmask_b16 v67.l, 0x7fff, v83.h, s0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v83, off, off offset:628 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v86, v68, v153
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v67.h, 0x7fff, v79.h, vcc_lo
	v_cndmask_b16 v68.l, 0x7fff, v84.h, s4
	scratch_load_b32 v84, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v79, v85, v157
	scratch_load_b32 v85, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v68.h, 0x7fff, v82.h, s1
	v_mov_b16_e32 v82.l, v86.h
	v_mov_b16_e32 v82.h, v73.l
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_cmp_o_f32_e64 s0, v79, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v82, 1, v82
	v_add3_u32 v82, v86, v82, 0x7fff
	scratch_load_b32 v86, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v83, v83, v72
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, v83, v22, v84
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v84, v83, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v84, off, off offset:620 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v84, v84, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v84, v84, v21, v85
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v84, v85, v84, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v85, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v85, v85, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v85, v85, v6, v83
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v83, v85, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v85, v17, v56
	scratch_load_b32 v17, off, off offset:1420 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v83, v83, v160
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v85, v85, v5, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v83, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v84, v84, v85, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v85.l, v79.h
	v_mov_b16_e32 v85.h, v73.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v85, 1, v85
	v_add3_u32 v85, v79, v85, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v79, v84, v164
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v84.l, v83.h
	v_mov_b16_e32 v84.h, v73.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v79, v79
	v_and_b32_e32 v84, 1, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v84, v83, v84, 0x7fff
	v_mov_b16_e32 v83.l, v79.h
	v_mov_b16_e32 v83.h, v73.l
	v_and_b32_e32 v83, 1, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v83, v79, v83, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v79, off, off offset:600 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v82.l, 0x7fff, v83.h, s4
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v79, v79, v72
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v79, v79, v24, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v86, v79, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v86, off, off offset:596 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v86, v86, v72
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v86, v86, v23, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v87, v86, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v87, v17, v56
	scratch_load_b32 v17, off, off offset:1416 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v87, v87, v8, v79
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v79, v87, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v87, v17, v56
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v17, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v87, v87, v7, v86
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v86, v87, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v87, v79, v156
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v79.l, 0x7fff, v85.h, s0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v85, off, off offset:592 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v79.h, 0x7fff, v82.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v83, v86, v190
	scratch_load_b32 v86, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v82.h, 0x7fff, v84.h, s1
	v_mov_b16_e32 v84.l, v87.h
	v_mov_b16_e32 v84.h, v73.l
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	v_cmp_o_f32_e64 s0, v83, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v84, 1, v84
	v_add3_u32 v84, v87, v84, 0x7fff
	scratch_load_b32 v87, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v85, v85, v72
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, v85, v101, v86
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v85, v86, v85, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v86, off, off offset:588 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v86, v86, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v86, v86, v100, v87
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v87, v86, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v87, off, off offset:1408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v87, v87, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v87, v87, v2, v85
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v85, v85, v87, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v87, off, off offset:1404 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v85, v85, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v85, v85
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v87, v87, v56
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v87, v87, v1, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v86, v87, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v87.l, v83.h
	v_mov_b16_e32 v87.h, v73.l
	v_and_b32_e32 v87, 1, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v87, v83, v87, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v83, v86, v173
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v86.l, v85.h
	v_mov_b16_e32 v86.h, v73.l
	v_cmp_o_f32_e64 s4, v83, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v86, 1, v86
	v_add3_u32 v86, v85, v86, 0x7fff
	v_mov_b16_e32 v85.l, v83.h
	v_mov_b16_e32 v85.h, v73.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v85, 1, v85
	v_add3_u32 v85, v83, v85, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v83, off, off offset:584 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v83, v83, v72
	v_mul_f32_e32 v72, v88, v72
	scratch_load_b32 v88, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v83, v83, v103, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v88, v83, s2
	scratch_load_b32 v88, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v72, v72, v102, v88
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v88, v72, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v88, off, off offset:1400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v88, v88, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v88, v88, v4, v83
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v83, v88, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v56, v89, v56 :: v_dual_mul_f32 v83, v83, v171
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v56, v56, v3, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v77.l, v83.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v88, v72, v56, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v56.h, 0x7fff, v84.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	v_cndmask_b16 v72.h, 0x7fff, v86.h, s1
	v_and_b32_e32 v77, 1, v77
	v_cmp_o_f32_e64 s1, v69, v69
	v_cndmask_b16 v72.l, 0x7fff, v85.h, s4
	v_cmp_o_f32_e64 s4, v48, v48
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v84, v88, v170
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v77, v83, v77, 0x7fff
	v_mov_b16_e32 v83.l, v69.h
	v_mov_b16_e32 v83.h, v73.l
	v_cndmask_b16 v56.l, 0x7fff, v87.h, s0
	v_mov_b16_e32 v75.l, v84.h
	v_cmp_o_f32_e64 s0, v84, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v83, 1, v83
	v_and_b32_e32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v83, v69, v83, 0x7fff
	v_mov_b16_e32 v69.l, v48.h
	v_mov_b16_e32 v69.h, v73.l
	v_add3_u32 v75, v84, v75, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v69, v48, v69, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v46, v55, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v55, v47, v159
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v46.h, 0x7fff, v77.h, vcc_lo
	v_cndmask_b16 v46.l, 0x7fff, v75.h, s0
	v_cndmask_b16 v47.l, 0x7fff, v69.h, s4
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v48, v48, v155
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.l, v55.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v74, v81, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_cndmask_b16 v47.h, 0x7fff, v83.h, s1
	v_cmp_o_f32_e64 s0, v48, v48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v69, v69, v149 :: v_dual_and_b32 v70, 1, v70
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v53, v76, s3
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v75, off, off offset:396
	scratch_load_b32 v77, off, off offset:384
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v70, v55, v70, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v71, v80, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v71.l, v48.h
	v_mov_b16_e32 v71.h, v73.l
	v_cmp_o_f32_e64 s1, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v71, v48, v71, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v48, v55, v148
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v55.l, v69.h
	v_mov_b16_e32 v55.h, v73.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v48, v48
	v_and_b32_e32 v55, 1, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v55, v69, v55, 0x7fff
	v_mov_b16_e32 v69.l, v48.h
	v_mov_b16_e32 v69.h, v73.l
	v_cndmask_b16 v53.h, 0x7fff, v55.h, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v55, v74, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v69, v48, v69, 0x7fff
	v_mov_b16_e32 v69.l, v54.h
	v_cndmask_b16 v48.h, 0x7fff, v70.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	scratch_load_b32 v70, off, off offset:24 ; 4-byte Folded Reload
	v_cndmask_b16 v53.l, 0x7fff, v69.h, s4
	v_mov_b16_e32 v69.h, v73.l
	v_cndmask_b16 v48.l, 0x7fff, v71.h, s0
	scratch_load_b32 v71, off, off offset:20 ; 4-byte Folded Reload
	v_cmp_o_f32_e64 s0, v55, v55
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v54, v69, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v54, off, off offset:576 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v54, v54, v63
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v54, v54, v22, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v70, v54, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v70, off, off offset:572 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v70, v70, v63
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v70, v70, v21, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v71, v70, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v71, off, off offset:1392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v71, v71, v38
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v71, v71, v6, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v54, v71, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v71, off, off offset:1388 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v54, v54, v143
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v54, v54
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v71, v71, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v71, v71, v5, v70
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v70, v71, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v71.l, v55.h
	v_mov_b16_e32 v71.h, v73.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v71, v55, v71, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v55, v70, v141
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.l, v54.h
	v_mov_b16_e32 v70.h, v73.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v55, v55
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v70, v54, v70, 0x7fff
	v_mov_b16_e32 v54.l, v55.h
	v_mov_b16_e32 v54.h, v73.l
	v_and_b32_e32 v54, 1, v54
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v74, v55, v54, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:568
	scratch_load_b32 v55, off, off offset:400
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v54, v54, v63
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, v54, v24, v55
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v55, v54, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v55, off, off offset:828 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v55, v55, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v55, v55, v23, v75
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v75, v55, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v75, off, off offset:1384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v75, v75, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v75, v75, v8, v54
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v54, v75, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v75, off, off offset:1380 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v76, v54, v136
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v54.l, 0x7fff, v71.h, s0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v71, off, off offset:824 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v54.h, 0x7fff, v69.h, vcc_lo
	v_mov_b16_e32 v70.l, v76.h
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v75, v75, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v75, v75, v7, v55
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v55, v75, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v55.l, 0x7fff, v74.h, s4
	scratch_load_b32 v74, off, off offset:392 ; 4-byte Folded Reload
	v_cndmask_b16 v55.h, 0x7fff, v70.h, s1
	v_mov_b16_e32 v70.h, v73.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v69, v75, v152 :: v_dual_and_b32 v70, 1, v70
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v69, v69
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v70, v76, v70, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v76, off, off offset:812
	scratch_load_b32 v75, off, off offset:388
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v71, v71, v63
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, v71, v101, v74
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v74, v71, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v74, off, off offset:820 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v74, v74, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v74, v74, v100, v75
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v75, v74, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v75, off, off offset:1376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v75, v75, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v75, v75, v2, v71
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v71, v75, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v75, off, off offset:1372 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v71, v71, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v71, v71
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v75, v75, v38
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v75, v75, v1, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v74, v75, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v75.l, v69.h
	v_mov_b16_e32 v75.h, v73.l
	v_and_b32_e32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v75, v69, v75, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v69, v74, v144
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v74.l, v71.h
	v_mov_b16_e32 v74.h, v73.l
	v_cmp_o_f32_e64 s4, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v74, 1, v74
	v_add3_u32 v74, v71, v74, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v71, off, off offset:816 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v71, v71, v63
	v_mul_f32_e32 v63, v76, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v76.l, v69.h
	v_mov_b16_e32 v76.h, v73.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v76, 1, v76
	v_add3_u32 v76, v69, v76, 0x7fff
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v69, v71, v103, v77
	scratch_load_b32 v71, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v77, v69, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v77, off, off offset:1364 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v63, v63, v102, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v63, v71, v63, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v71, off, off offset:1368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v71, v71, v38
	v_mul_f32_e32 v38, v77, v38
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v71, v71, v4, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, v38, v3, v63
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v71, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v71, v63, v38, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v38.h, 0x7fff, v70.h, vcc_lo
	v_cndmask_b16 v63.h, 0x7fff, v74.h, s1
	v_cmp_o_f32_e64 s1, v33, v33
	v_cndmask_b16 v63.l, 0x7fff, v76.h, s4
	v_cmp_o_f32_e64 s4, v32, v32
	v_cndmask_b16 v38.l, 0x7fff, v75.h, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v69, v69, v140 :: v_dual_mul_f32 v70, v71, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v43.l, v69.h
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v42.l, v70.h
	v_cmp_o_f32_e64 s0, v70, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v43, 1, v43
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v43, v69, v43, 0x7fff
	v_mov_b16_e32 v69.l, v33.h
	v_mov_b16_e32 v69.h, v73.l
	v_add3_u32 v42, v70, v42, 0x7fff
	scratch_load_b32 v70, off, off offset:376 ; 4-byte Folded Reload
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v33, v69, 0x7fff
	v_mov_b16_e32 v33.l, v32.h
	v_mov_b16_e32 v33.h, v73.l
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v33, v32, v33, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v30, v37, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v37, v31, v162
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v30.h, 0x7fff, v43.h, vcc_lo
	v_cndmask_b16 v30.l, 0x7fff, v42.h, s0
	v_cndmask_b16 v31.l, 0x7fff, v33.h, s4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v36, v45, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, v37.h
	v_mov_b16_e32 v36.h, v73.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v32, v32, v158
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v33, v154
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v13, v51, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v36, 1, v36
	v_mov_b16_e32 v40.l, v32.h
	v_cndmask_b16 v31.h, 0x7fff, v69.h, s1
	v_cmp_o_f32_e64 s0, v32, v32
	v_mov_b16_e32 v45.l, v34.h
	v_add3_u32 v36, v37, v36, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v50, v52, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v40, 1, v40
	v_mov_b16_e32 v36.l, v33.h
	v_mov_b16_e32 v45.h, v73.l
	scratch_load_b32 v69, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v13, 0xbfb8aa3b, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v40, v32, v40, 0x7fff
	v_cndmask_b16 v32.h, 0x7fff, v36.h, vcc_lo
	v_mov_b16_e32 v36.h, v73.l
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	scratch_load_b32 v43, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v13
	v_mul_f32_e32 v13, 0xbfb8aa3b, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v32.l, 0x7fff, v40.h, s0
	v_and_b32_e32 v36, 1, v36
	v_cmp_o_f32_e64 s0, v33, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v36, v33, v36, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_ldexp_f32 v40, v13, v40
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	scratch_load_b32 v13, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v33, v39
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v40, 1.0, v40 :: v_dual_add_f32 v51, 1.0, v33
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v33.h, 0x7fff, v36.h, s0
	v_and_b32_e32 v36, 1, v45
	v_cmp_o_f32_e64 s0, v34, v34
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v45, off, off offset:804 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, null, v40, v40, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v36, v34, v36, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v34, off, off offset:808 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v51, v51, v42
	v_rcp_f32_e32 v50, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v33.l, 0x7fff, v41.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v52, vcc_lo, v37, v40, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v41, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v0, -v39, v50, 1.0
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v50, v0, v50 :: v_dual_mul_f32 v45, v45, v73
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v34, v34, v73
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v21, v45, v21, v69
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v0, v34, v22, v70
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v15, v49, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v35, v41, 1.0
	v_mul_f32_e32 v15, v52, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v69, v21, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v21, off, off offset:1348 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, s1, v42, v51, v42
	v_fmac_f32_e32 v41, v22, v41
	v_fma_f32 v22, -v39, v15, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v70, v0, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v0, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v15, v22, v50 :: v_dual_mul_f32 v22, v69, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v14, -v39, v15, v52
	v_fma_f32 v39, -v35, v22, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v50, v14, v50, v15
	v_fmac_f32_e32 v22, v39, v41
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v44.h
	v_mov_b16_e32 v39.h, v73.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v35, -v35, v22, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v22, v35, v41, v22
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_add3_u32 v39, v44, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v22, v22, v51, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.h, v73.l
	scratch_load_b32 v51, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v43, 1, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v36.l, 0x7fff, v39.h, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v70, v21, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v6, v70, v6, v45
	scratch_load_b32 v70, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v13, s23, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v45, v6, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v6, 0xbfb8aa3b, v16
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[14:15], null, s23, 48, v[13:14]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v6
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v6, off, off offset:1344 ; 4-byte Folded Reload
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v21, s23, 4, v13
	v_lshl_add_u32 v0, s23, 5, v13
	s_mov_b32 s23, 0x31027000
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v69, 0, 0x42800000, s5
	v_cndmask_b32_e64 v15, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v16
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v41, v69
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v15, v15, v35
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v35, v50, v40, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s5
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v50, off, off offset:796 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v35, v45, v35
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v45, off, off offset:800 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v37, v41, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.h, v73.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v15, v15, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.l, v35.h
	v_cmp_o_f32_e64 s0, v35, v35
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v41, 1, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, null, v37, v37, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v41, v35, v41, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v52, v6, v29
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v6, s34, s33, v43
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v43, v52, v5, v49
	scratch_load_b32 v52, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v49, v43, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v22, v43, v22
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v43, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.l, v22.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v39, 1, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v49, -v40, v43, 1.0
	v_rcp_f32_e32 v42, v44
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v50, v50, v73
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v22, v39, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v43, v49, v43
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v45, v45, v73
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v23, v50, v23, v51
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v50, off, off offset:1340 ; 4-byte Folded Reload
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fma_f32 v49, -v44, v42, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v51, v23, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v51, off, off offset:1336 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, s1, v16, v37, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v69, v49, v42
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v24, v45, v24, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v45, vcc_lo, v34, v15, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v52, v24, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v35, v45, v43
	v_fma_f32 v52, -v40, v35, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v52, v43
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v52, off, off offset:756 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v50, v50, v29
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v8, v50, v8, v24
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v50, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v51, v51, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v24, v8, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v40, v35, v45
	scratch_load_b32 v45, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v40, v17, v29
	scratch_load_b32 v17, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v7, v51, v7, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v44, v69, v49
	v_div_fmas_f32 v24, v24, v43, v35
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v22, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v23, v7, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v69, v51, v42
	v_div_fixup_f32 v15, v24, v15, v34
	scratch_load_b32 v34, off, off offset:4 ; 4-byte Folded Reload
	v_fma_f32 v35, -v44, v69, v49
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v8, v15
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v15.h, 0x7fff, v41.h, s0
	v_cndmask_b16 v15.l, 0x7fff, v39.h, s1
	scratch_load_b32 v39, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v35, v35, v42, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v8, v8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v35, v37, v16
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:8
	scratch_load_b32 v37, off, off offset:200
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v7, v16
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.l, v8.h
	v_mov_b16_e32 v16.h, v73.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v16, v8, v16, 0x7fff
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v8, off, off offset:752 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s4
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(8)
	v_mul_f32_e32 v52, v52, v73
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v25, v52, v230, v45
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v43, v17, v29
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v45, v25, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v9, v43, v9, v25
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:1292
	scratch_load_b32 v17, off, off offset:212
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v25, v9, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v25, off, off offset:748 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v24
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v8, v8, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v8, v8, v233, v35
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v35, v8, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v43, v43, v29
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v27, v17, v29
	scratch_load_b32 v17, off, off offset:208 ; 4-byte Folded Reload
	v_mul_f32_e32 v50, v50, v73
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v25, v73
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v12, v27, v12, v8
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v27, off, off offset:776 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v26, v50, v231, v70
	v_fma_f32 v25, v25, v232, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v8, v12, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v26, v70, v26, s2
	v_cndmask_b32_e64 v25, v34, v25, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v10, v40, v10, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v26, v10, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v10
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v23.l, v7.h
	v_mov_b16_e32 v23.h, v73.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v22, 1, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v22, v7, v22, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v24, v24
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v24, v24, v26
	v_ldexp_f32 v23, v23, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_add_f32 v23, 1.0, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v12, null, v24, v24, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v34, null, v23, v23, v9
	v_div_scale_f32 v40, s4, v9, v23, v9
	v_rcp_f32_e32 v28, v12
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v26, v17, v29
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v11, v26, v11, v25
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:680 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v27, v27, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v25, v11, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v25, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v18, v27, v101, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v12, v28, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v35, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v25, v34
	v_fmac_f32_e32 v28, v27, v28
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v39, v18, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, s1, v10, v24, v10
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v41, v39, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0x42800000, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v34, v25, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v12, v41, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v25, v27, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v44, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v27, v35
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v12, -v12, v41, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v27, v27, v42
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v27, 1.0, v27 :: v_dual_mul_f32 v26, v26, v73
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v17, v26, v100, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v12, v12, v28, v41
	s_mov_b32 vcc_lo, s4
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v37, v17, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v37, off, off offset:1296 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v8
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v12, v24, v10
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v24, off, off offset:652
	scratch_load_b32 v12, off, off offset:660
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v1, v43, v1, v17
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v17, v1, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v26, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v35, v40, v25 :: v_dual_add_f32 v26, 1.0, v26
	v_fma_f32 v42, -v34, v35, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v43, null, v26, v26, v8
	v_fmac_f32_e32 v35, v42, v25
	v_div_scale_f32 v42, null, v27, v27, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v34, v35, v40
	v_rcp_f32_e32 v39, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v25, v34, v25, v35
	v_div_fixup_f32 v9, v25, v23, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v42, v39, 1.0
	scratch_load_b32 v25, off, off          ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v39, v17, v39
	v_div_scale_f32 v17, s0, v11, v27, v11
	v_mul_f32_e32 v9, v17, v39
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v37, v37, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v2, v37, v2, v18
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v37, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v18, v2, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v18, vcc_lo, v8, v26, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v43, v37, 1.0
	v_fma_f32 v10, -v42, v9, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v28, v37
	v_fmac_f32_e32 v9, v10, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v23, v18, v37
	v_fma_f32 v17, -v42, v9, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v43, v23, v18
	v_fmac_f32_e32 v23, v19, v37
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:1288
	scratch_load_b32 v28, off, off offset:192
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v24, v24, v73
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v18, -v43, v23, v18
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, v24, v103, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v18, v18, v37, v23
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v9, v17, v39, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.l, v2.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v18, v26, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.h, v73.l
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v9, v27, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v25, v20, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v20, off, off offset:1284 ; 4-byte Folded Reload
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v5, 0x80, v6
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v7, 1, v17
	v_cndmask_b16 v16.l, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v7, v2, v7, 0x7fff
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v19, v19, v29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v20, v20, v29
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v4, v20, v4, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v10, v4, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v1.h
	v_mov_b16_e32 v10.h, v73.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v8, 1, v10
	v_mov_b16_e32 v10.l, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s1, v4, v4
	v_add3_u32 v8, v1, v8, 0x7fff
	scratch_load_b32 v1, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v12, v12, v73
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v12, v12, v102, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v28, v12, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v3, v19, v3, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v12, v3, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.h, v73.l
	v_mov_b16_e32 v9.l, v3.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v3, v3
	v_and_b32_e32 v9, 1, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v2, v3, v9, 0x7fff
	v_add3_u32 v9, v4, v10, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v3.h, 0x7fff, v9.h, s1
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v1, 16, v1
	v_cmp_eq_u32_e64 s3, 0, v1
	v_cndmask_b16 v1.h, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v1.l, 0x7fff, v8.h, s0
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e64 v37, v30, v38, s3
	v_cndmask_b32_e64 v30, v38, v30, s3
	v_cndmask_b32_e64 v38, v33, v31, s3
	v_cndmask_b32_e64 v31, v31, v33, s3
	v_cndmask_b32_e64 v40, v1, v15, s3
	v_cndmask_b32_e64 v1, v15, v1, s3
	v_mov_b32_e32 v15, 0x5410
	v_mov_b32_e32 v33, 0x7632
	v_cndmask_b32_e64 v41, v3, v16, s3
	v_cndmask_b32_e64 v3, v16, v3, s3
	v_cndmask_b32_e64 v4, v57, v59, s3
	v_cndmask_b32_e64 v8, v58, v60, s3
	v_cndmask_b32_e64 v10, v61, v64, s3
	v_cndmask_b32_e64 v12, v62, v65, s3
	v_cndmask_b32_e64 v18, v66, v68, s3
	v_cndmask_b32_e64 v20, v67, v79, s3
	v_cndmask_b32_e64 v2, v59, v57, s3
	v_cndmask_b32_e64 v7, v60, v58, s3
	v_cndmask_b32_e64 v9, v64, v61, s3
	v_cndmask_b32_e64 v11, v65, v62, s3
	v_cndmask_b32_e64 v22, v82, v72, s3
	v_cndmask_b32_e64 v25, v46, v56, s3
	v_cndmask_b32_e64 v24, v56, v46, s3
	v_cndmask_b32_e64 v27, v53, v47, s3
	v_cndmask_b32_e64 v26, v47, v53, s3
	v_cndmask_b32_e64 v28, v48, v54, s3
	v_cndmask_b32_e64 v17, v68, v66, s3
	v_cndmask_b32_e64 v19, v79, v67, s3
	v_cndmask_b32_e64 v35, v55, v63, s3
	v_cndmask_b32_e64 v39, v36, v32, s3
	v_cndmask_b32_e64 v32, v32, v36, s3
	v_cndmask_b32_e64 v23, v72, v82, s3
	v_cndmask_b32_e64 v29, v54, v48, s3
	v_cndmask_b32_e64 v34, v63, v55, s3
	v_cndmask_b32_e64 v15, 0x1054, v15, s3
	v_cndmask_b32_e64 v16, 0x3276, v33, s3
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v15, v15, 8, v15
	v_lshl_or_b32 v16, v16, 8, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v15, 0x540054, v15
	v_and_b32_e32 v16, 0x760076, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v15, v15, 4, v15
	v_lshl_or_b32 v16, v16, 4, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v46, 0x5040504, v15
	v_and_b32_e32 v47, 0x7060706, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v1, v4, v2, v46
	v_perm_b32 v2, v4, v2, v47
	v_perm_b32 v3, v8, v7, v46
	v_perm_b32 v4, v8, v7, v47
	v_perm_b32 v7, v10, v9, v46
	v_perm_b32 v8, v10, v9, v47
	v_perm_b32 v9, v12, v11, v46
	v_perm_b32 v10, v12, v11, v47
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v11, v6, v13, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v15, v18, v17, v46
	v_perm_b32 v16, v18, v17, v47
	v_perm_b32 v17, v20, v19, v46
	v_perm_b32 v18, v20, v19, v47
	v_add_lshl_u32 v12, v6, v21, 1
	v_perm_b32 v22, v33, v23, v46
	v_perm_b32 v23, v33, v23, v47
	v_perm_b32 v24, v36, v25, v46
	v_perm_b32 v25, v36, v25, v47
	v_perm_b32 v26, v42, v27, v46
	v_perm_b32 v27, v42, v27, v47
	v_perm_b32 v28, v43, v29, v46
	v_perm_b32 v29, v43, v29, v47
	v_perm_b32 v30, v35, v34, v46
	v_perm_b32 v31, v35, v34, v47
	v_perm_b32 v32, v44, v37, v46
	v_perm_b32 v33, v44, v37, v47
	v_perm_b32 v34, v45, v38, v46
	v_perm_b32 v35, v45, v38, v47
	v_perm_b32 v36, v48, v39, v46
	v_perm_b32 v37, v48, v39, v47
	v_perm_b32 v38, v49, v40, v46
	v_perm_b32 v39, v49, v40, v47
	v_perm_b32 v40, v50, v41, v46
	v_perm_b32 v41, v50, v41, v47
	s_clause 0x2
	buffer_store_b128 v[1:4], v11, s[20:23], 0 offen
	buffer_store_b128 v[7:10], v11, s[20:23], 0 offen offset:256
	buffer_store_b128 v[15:18], v12, s[20:23], 0 offen
	v_add_lshl_u32 v1, v5, v21, 1
	v_add_lshl_u32 v2, v6, v0, 1
	v_add_lshl_u32 v0, v5, v0, 1
	v_add_lshl_u32 v3, v6, v14, 1
	v_add_lshl_u32 v4, v5, v14, 1
	s_clause 0x4
	buffer_store_b128 v[22:25], v1, s[20:23], 0 offen
	buffer_store_b128 v[26:29], v2, s[20:23], 0 offen
	buffer_store_b128 v[30:33], v0, s[20:23], 0 offen
	buffer_store_b128 v[34:37], v3, s[20:23], 0 offen
	buffer_store_b128 v[38:41], v4, s[20:23], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1636
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 1636
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 58676
; TotalNumSgprs: 55
; NumVgprs: 256
; ScratchSize: 1636
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 1636
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 545
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
