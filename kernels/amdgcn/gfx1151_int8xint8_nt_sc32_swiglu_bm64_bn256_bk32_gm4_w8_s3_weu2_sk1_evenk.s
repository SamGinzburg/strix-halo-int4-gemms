	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
	v_mov_b32_e32 v205, v0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v4, 3, v205
	v_and_b32_e32 v3, 24, v4
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v4, 0x778, v4
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s26, 63
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s13
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s5
	v_readfirstlane_b32 s5, v0
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
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s14, s2
	s_abs_i32 s17, s16
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s18, s17
	s_sub_i32 s19, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s18
	v_readfirstlane_b32 s18, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v0, 2, v205
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_mul_lo_u32 v0, s12, v0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s18, s18
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_mov_b32 s23, s7
	s_mov_b64 s[28:29], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s19, s19, s18
	s_mul_hi_u32 s13, s18, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s18, s18, s13
	s_mul_hi_u32 s13, s14, s18
	s_xor_b32 s18, s2, s16
	s_mul_i32 s19, s13, s17
	s_ashr_i32 s18, s18, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s13, 1
	s_sub_i32 s22, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s13, s19, s13
	s_cselect_b32 s14, s22, s14
	s_add_i32 s19, s13, 1
	s_cmp_ge_u32 s14, s17
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_mov_b32 s22, s6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s13, s19, s13
	.loc	1 312 26                        ; generate_amdgcn.py:312:26
	s_lshl_b32 s30, s3, 5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s13, s13, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s14, s12, 31
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s13, s13, s18
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s3, s14, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s16, s13, s16
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s16
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s26, s13, 8
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s13, s14, s3
.Ltmp19:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 6
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	s_add_i32 s46, s26, s27
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_mul_i32 s2, s33, s12
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	s_mul_i32 s31, s26, s12
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add3_u32 v49, v0, v3, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s14, 31
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	s_mul_i32 s49, s46, s12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	s_add_i32 s3, s31, s30
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v0, s30, v49
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 1, v205
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_and_b32_e32 v2, 1, v205
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_and_b32 s21, s21, 0xffff
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_mul_lo_u32 v1, s12, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v27, 15, v205
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_lshl_add_u32 v29, v2, 4, v1
	v_lshl_add_u32 v30, s12, 7, v29
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	s_add_i32 s12, s49, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s14, 63
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v1, s3, v29
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	v_add_nc_u32_e32 v5, s12, v29
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v3, s3, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s34, s30, 32
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	v_add_nc_u32_e32 v6, s12, v30
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v7, s34, v49
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e64 v8, 0x80000000, v1, s2
	.loc	1 320 34 is_stmt 0              ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v25, 32, v1
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e64 v13, 0x80000000, v3, s2
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v3, 32, v3
	.loc	1 326 35 is_stmt 1              ; generate_amdgcn.py:326:35
	v_cndmask_b32_e64 v17, 0x80000000, v5, s2
	.loc	1 326 43 is_stmt 0              ; generate_amdgcn.py:326:43
	v_add_nc_u32_e32 v5, 32, v5
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_cndmask_b32_e64 v21, 0x80000000, v6, s2
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	v_add_nc_u32_e32 v6, 32, v6
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x3
	buffer_load_b128 v[9:12], v8, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	buffer_load_b128 v[17:20], v17, s[20:23], 0 offen
	buffer_load_b128 v[21:24], v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v8, 0x80000000, v25, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_clause 0x1
	buffer_load_b64 v[0:1], v0, s[4:7], 0 offen
	buffer_load_b64 v[25:26], v7, s[4:7], 0 offen
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x3
	buffer_load_b128 v[33:36], v8, s[20:23], 0 offen
	buffer_load_b128 v[37:40], v3, s[20:23], 0 offen
	buffer_load_b128 v[41:44], v5, s[20:23], 0 offen
	buffer_load_b128 v[45:48], v6, s[20:23], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_bfe_i32 v5, v205, 4, 1
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_lshlrev_b32_e32 v3, 4, v205
	v_bfe_i32 v6, v205, 3, 1
	s_mov_b32 s12, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0x5f
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v7, 0x90, v5
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_and_b32_e32 v8, 0xf70, v3
	v_and_b32_e32 v6, 0x90, v6
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v5, 16, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v92, v7, v4
	v_lshlrev_b32_e32 v4, 5, v205
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_xor_b32_e32 v68, v6, v8
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v6, 16, v27
	v_or_b32_e32 v7, 32, v27
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v28, 0, v92
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v8, 48, v27
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v31, 0, v68
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(5)
	ds_store_b64 v28, v[0:1] offset:32768
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_store_b128 v31, v[9:12]
	ds_store_b128 v31, v[13:16] offset:4096
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_store_b128 v31, v[17:20] offset:16384
	ds_store_b128 v31, v[21:24] offset:20480
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v28, v[25:26] offset:34816
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v31, v[33:36] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v31, v[37:40] offset:12288
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	s_waitcnt vmcnt(1)
	ds_store_b128 v31, v[41:44] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v31, v[45:48] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v12, 0x160, v4
	v_and_b32_e32 v1, 4, v205
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_and_or_b32 v11, 0xe00, v3, v12
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr12
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr11
.LBB0_3:                                ; %Flow821
	s_load_b64 s[24:25], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v5
	v_or_b32_e32 v0, s33, v27
	v_or_b32_e32 v5, s33, v6
	v_or_b32_e32 v6, s33, v7
	v_or_b32_e32 v7, s33, v8
	v_and_b32_e32 v9, 0xf0, v205
	s_ashr_i32 s35, s13, 5
	v_or_b32_e32 v8, s26, v205
	v_mul_lo_u32 v217, v0, s35
	v_mul_lo_u32 v203, v5, s35
	v_mul_lo_u32 v247, v6, s35
	v_mul_lo_u32 v248, v7, s35
	v_lshlrev_b32_e32 v173, 2, v9
	v_lshlrev_b32_e32 v206, 1, v205
	v_lshlrev_b32_e32 v208, 5, v2
	v_lshlrev_b32_e32 v166, 1, v9
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_lshl_b32 s44, s27, 1
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v8, off offset:176
	scratch_store_b32 off, v27, off offset:232
	scratch_store_b32 off, v9, off offset:236
	scratch_store_b32 off, v203, off offset:180
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v0, v205, 2, 1
	v_dual_mov_b32 v39, 0 :: v_dual_and_b32 v2, 0x160, v4
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_delay_alu instid0(VALU_DEP_1)
	v_and_or_b32 v1, 0xe00, v3, v2
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v0, 0x90, v0
	scratch_store_b32 off, v1, off offset:260 ; 4-byte Folded Spill
	v_dual_mov_b32 v40, 0 :: v_dual_and_b32 v9, 28, v206
	v_mov_b32_e32 v11, 0
	v_or_b32_e32 v1, v1, v0
	v_or_b32_e32 v0, v0, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:208
	scratch_store_b32 off, v1, off offset:204
	v_xor_b32_e32 v0, 16, v1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:212
	scratch_store_b32 off, v173, off offset:248
	scratch_store_b32 off, v208, off offset:256
	v_add3_u32 v0, 0, v173, v208
	v_mov_b32_e32 v167, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v168, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v187, 0 :: v_dual_add_nc_u32 v0, v0, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:216
	scratch_store_b32 off, v166, off offset:244
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v0, 0, v166
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v200, 0
	v_mov_b32_e32 v157, 0
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v155, 0
	v_mov_b32_e32 v175, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:120
	scratch_store_b32 off, v30, off offset:228
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v158, 0
	v_mov_b32_e32 v255, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:116
	scratch_store_b32 off, v29, off offset:224
	scratch_store_b32 off, v11, off offset:112
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v205, off offset:240 ; 4-byte Folded Spill
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v185, 0
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v206, off offset:252 ; 4-byte Folded Spill
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v153, 0
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v2, off offset:264 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v87, 0
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v69, 0
	v_mov_b32_e32 v212, 0
	v_mov_b32_e32 v130, 0
	v_mov_b32_e32 v148, 0
	v_mov_b32_e32 v154, 0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v84, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s11, s35, 3
	s_add_i32 s1, s34, 32
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s10, 1
	s_add_i32 s51, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s48, 0, 0x2000
	s_add_i32 s50, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s11, s11, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v247, off offset:184
	scratch_store_b32 off, v248, off offset:188
	scratch_store_b32 off, v217, off offset:192
	scratch_store_b32 off, v49, off offset:196
	scratch_store_b32 off, v92, off offset:200
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s15, s13, 5
	s_mov_b32 s14, s12
	s_mov_b32 s12, s30
	s_mov_b32 s30, s34
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s34, s1, s15
	s_clause 0x1e                           ; 124-byte Folded Spill
	scratch_store_b32 off, v230, off offset:144
	scratch_store_b32 off, v97, off offset:52
	scratch_store_b32 off, v231, off offset:140
	scratch_store_b32 off, v71, off offset:56
	scratch_store_b32 off, v61, off offset:60
	scratch_store_b32 off, v46, off
	scratch_store_b32 off, v36, off offset:4
	scratch_store_b32 off, v85, off offset:40
	scratch_store_b32 off, v86, off offset:44
	scratch_store_b32 off, v87, off offset:48
	scratch_store_b32 off, v0, off offset:24
	scratch_store_b32 off, v40, off offset:28
	scratch_store_b32 off, v31, off offset:32
	scratch_store_b32 off, v251, off offset:136
	scratch_store_b32 off, v240, off offset:36
	scratch_store_b32 off, v70, off offset:108
	scratch_store_b32 off, v28, off offset:104
	scratch_store_b32 off, v45, off offset:100
	scratch_store_b32 off, v44, off offset:96
	scratch_store_b32 off, v43, off offset:92
	scratch_store_b32 off, v42, off offset:88
	scratch_store_b32 off, v41, off offset:84
	scratch_store_b32 off, v38, off offset:80
	scratch_store_b32 off, v37, off offset:76
	scratch_store_b32 off, v34, off offset:72
	scratch_store_b32 off, v30, off offset:68
	scratch_store_b32 off, v29, off offset:64
	scratch_store_b32 off, v26, off offset:20
	scratch_store_b32 off, v25, off offset:16
	scratch_store_b32 off, v10, off offset:12
	scratch_store_b32 off, v9, off offset:8
	v_dual_mov_b32 v40, v112 :: v_dual_add_nc_u32 v9, s34, v49
	v_dual_mov_b32 v28, v229 :: v_dual_mov_b32 v31, v32
	v_mov_b32_e32 v34, v162
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[9:10], v9, s[4:7], 0 offen
	v_dual_mov_b32 v32, v84 :: v_dual_mov_b32 v61, v195
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	s_add_i32 s15, s34, s31
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	s_add_i32 s16, s34, s49
	v_dual_mov_b32 v70, v35 :: v_dual_mov_b32 v35, v33
	v_mov_b32_e32 v33, v27
	v_dual_mov_b32 v27, v102 :: v_dual_mov_b32 v230, v139
	v_mov_b32_e32 v159, v96
	v_dual_mov_b32 v195, v179 :: v_dual_mov_b32 v30, v89
	v_dual_mov_b32 v179, v149 :: v_dual_mov_b32 v36, v90
	v_dual_mov_b32 v149, v88 :: v_dual_mov_b32 v38, v161
	v_dual_mov_b32 v71, v91 :: v_dual_mov_b32 v26, v101
	v_dual_mov_b32 v161, v216 :: v_dual_mov_b32 v242, v69
	v_mov_b32_e32 v42, v194
	v_mov_b32_e32 v194, v178
	v_dual_mov_b32 v178, v163 :: v_dual_mov_b32 v29, v130
	v_dual_mov_b32 v41, v164 :: v_dual_mov_b32 v164, v129
	v_mov_b32_e32 v229, v131
	v_dual_mov_b32 v163, v128 :: v_dual_mov_b32 v162, v127
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[9:10], off offset:168 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v10, off, off offset:208
	scratch_load_b32 v62, off, off offset:212
	scratch_load_b32 v0, off, off offset:204
	v_mov_b32_e32 v25, v100
	scratch_load_b32 v240, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v9, s51, v10
	v_xor_b32_e32 v10, 16, v10
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v59, s14, v0
	v_add_nc_u32_e32 v60, s14, v62
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s14, s12, 31
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v10, s51, v10
	ds_load_b128 v[112:115], v9 offset:512
	ds_load_b128 v[116:119], v10 offset:512
	ds_load_b128 v[128:131], v9 offset:1024
	ds_load_b128 v[132:135], v10 offset:1024
	ds_load_b128 v[203:206], v9 offset:1536
	ds_load_b128 v[207:210], v10 offset:1536
	ds_load_b128 v[51:54], v9
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[43:46], v59
	ds_load_b128 v[47:50], v60
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[55:58], v10
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_lshr_b32 s14, s14, 27
	s_mov_b32 s51, s47
	s_add_i32 s12, s12, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s14, s12, 5
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s14, s35
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s12, s14, s44
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	v_mov_b32_e32 v251, v138
	v_mov_b32_e32 v37, v103
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s10, s10, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s10, 2
	s_cselect_b32 s10, s10, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[43:46], v[51:54], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[72:79], v[43:46], v[112:115], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[43:46], v[128:131], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[43:46], v[203:206], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[47:50], v[55:58], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[72:79], v[47:50], v[116:119], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[47:50], v[132:135], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[47:50], v[207:210], v[9:16] neg_lo:[1,1,0]
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[43:46], v59 offset:4096
	ds_load_b128 v[47:50], v60 offset:4096
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_add_nc_u32_e32 v59, s50, v0
	v_add_nc_u32_e32 v60, s50, v62
	ds_load_b128 v[221:224], v59 offset:4096
	ds_load_b128 v[225:228], v60 offset:4096
	ds_load_b128 v[136:139], v59
	v_mov_b32_e32 v0, v143
	ds_load_b128 v[140:143], v60
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[243:250], v[43:46], v[51:54], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[88:95], v[43:46], v[112:115], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[43:46], v[128:131], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[43:46], v[203:206], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[243:250], v[47:50], v[55:58], v[243:250] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[88:95], v[47:50], v[116:119], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[47:50], v[132:135], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[47:50], v[207:210], v[104:111] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[136:139], v[51:54], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[213:220], v[221:224], v[51:54], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[232:239], v[136:139], v[112:115], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v51, v68
	v_wmma_i32_16x16x16_iu8 v[62:69], v[221:224], v[112:115], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[232:239], v[140:143], v[116:119], v[232:239] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[221:224], v[128:131], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[62:69], v[225:228], v[116:119], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[136:139], v[128:131], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[120:127], v[225:228], v[132:135], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[140:143], v[55:58], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[213:220], v[225:228], v[55:58], v[213:220] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[140:143], v[132:135], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[136:139], v[203:206], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v54, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v53, v216
	v_cvt_f32_i32_e32 v216, v236
	v_wmma_i32_16x16x16_iu8 v[128:135], v[140:143], v[207:210], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[221:224], v[203:206], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v205, v47
	v_cvt_f32_i32_e32 v47, v66
	v_cvt_f32_i32_e32 v206, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[136:143], v[225:228], v[207:210], v[136:143] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v228, v43
	v_cvt_f32_i32_e32 v43, v217
	v_cvt_f32_i32_e32 v48, v68
	v_cvt_f32_i32_e32 v223, v133
	v_cvt_f32_i32_e32 v208, v136
	v_cvt_f32_i32_e32 v136, v137
	scratch_load_b32 v137, off, off offset:176 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v43, off offset:148
	scratch_store_b32 off, v47, off offset:164
	v_cvt_f32_i32_e32 v43, v218
	v_cvt_f32_i32_e32 v222, v134
	v_cvt_f32_i32_e32 v133, v138
	v_mov_b32_e32 v138, v251
	v_cvt_f32_i32_e32 v134, v140
	scratch_store_b32 off, v43, off offset:156 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v43, v219
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v68, v18
	v_cvt_f32_i32_e32 v251, v249
	v_cvt_f32_i32_e32 v249, v100
	v_cvt_f32_i32_e32 v100, v9
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	scratch_store_b32 off, v43, off offset:152 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v43, v220
	scratch_load_b32 v140, off, off offset:216 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v236, v112
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v112, v20
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v226, v45
	scratch_store_b32 off, v43, off offset:160 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v43, v233
	v_cvt_f32_i32_e32 v233, v115
	v_cvt_f32_i32_e32 v115, v143
	v_mov_b32_e32 v143, v0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:192
	scratch_load_b32 v231, off, off offset:128
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v45, v62
	v_cvt_f32_i32_e32 v62, v123
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v123, v247
	v_cvt_f32_i32_e32 v247, v101
	v_cvt_f32_i32_e32 v101, v10
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v225, v46
	v_cvt_f32_i32_e32 v46, v63
	v_cvt_f32_i32_e32 v63, v122
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v122, v246
	v_cvt_f32_i32_e32 v246, v102
	v_cvt_f32_i32_e32 v102, v11
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v203, v121
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v121, v245
	v_cvt_f32_i32_e32 v245, v103
	v_cvt_f32_i32_e32 v103, v12
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v209, v50
	v_cvt_f32_i32_e32 v50, v69
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v69, v19
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v58, v213
	v_cvt_f32_i32_e32 v57, v214
	v_cvt_f32_i32_e32 v207, v234
	v_cvt_f32_i32_e32 v214, v238
	v_cvt_f32_i32_e32 v213, v239
	v_cvt_f32_i32_e32 v234, v114
	v_cvt_f32_i32_e32 v114, v128
	v_cvt_f32_i32_e32 v239, v129
	v_cvt_f32_i32_e32 v238, v130
	v_cvt_f32_i32_e32 v47, v124
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v124, v13
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v56, v215
	v_cvt_f32_i32_e32 v215, v237
	v_cvt_f32_i32_e32 v237, v131
	v_cvt_f32_i32_e32 v227, v44
	v_cvt_f32_i32_e32 v44, v235
	v_cvt_f32_i32_e32 v235, v113
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v113, v21
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v220, v116
	v_cvt_f32_i32_e32 v219, v117
	v_cvt_f32_i32_e32 v218, v118
	v_cvt_f32_i32_e32 v52, v126
	v_cvt_f32_i32_e32 v55, v127
	v_cvt_f32_i32_e32 v224, v132
	v_cvt_f32_i32_e32 v221, v135
	v_cvt_f32_i32_e32 v132, v139
	v_cvt_f32_i32_e32 v135, v142
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v116, v22
	v_cvt_f32_i32_e32 v117, v23
	v_cvt_f32_i32_e32 v118, v24
	v_cvt_f32_i32_e32 v125, v14
	v_cvt_f32_i32_e32 v126, v15
	v_cvt_f32_i32_e32 v127, v16
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v210, v49
	v_cvt_f32_i32_e32 v60, v64
	v_cvt_f32_i32_e32 v59, v65
	v_cvt_f32_i32_e32 v49, v67
	v_cvt_f32_i32_e32 v217, v119
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v119, v243
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v204, v120
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v120, v244
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v232, v232
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v248, v248
	v_cvt_f32_i32_e32 v250, v250
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v141, v141
	s_mov_b32 s50, s45
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v9, v137, s12, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_u16 v9, v9, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v140, v9 offset:36864
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v9, v0, s14, 1
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v10, v0, s14, 1
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v11, v0, s14, 1
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v12, v0, s14, 1
	scratch_load_b32 v0, off, off offset:224 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x3
	buffer_load_u16 v9, v9, s[36:39], 0 offen
	buffer_load_u16 v128, v10, s[36:39], 0 offen
	buffer_load_u16 v129, v11, s[36:39], 0 offen
	buffer_load_u16 v130, v12, s[36:39], 0 offen
	scratch_load_b32 v10, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v241, 16, v9
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v9, s15, v0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v244, 16, v130
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s15, v10
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v131, v241, v17
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	v_add_nc_u32_e32 v17, s16, v0
	v_add_nc_u32_e32 v21, s16, v10
	v_mov_b32_e32 v139, v230
	scratch_load_b32 v230, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x3
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	buffer_load_b128 v[17:20], v17, s[20:23], 0 offen
	buffer_load_b128 v[21:24], v21, s[20:23], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v142, off, off offset:220 ; 4-byte Folded Reload
	v_mul_f32_e32 v68, v241, v68
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_lshl_b32 s15, s10, 13
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	ds_load_b128 v[64:67], v142 offset:36864
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v243, 16, v129
	v_dual_mov_b32 v129, v164 :: v_dual_mov_b32 v164, v41
	v_mov_b32_e32 v41, v161
	v_mov_b32_e32 v161, v38
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v199, v68, v65
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v68, v241, v69 :: v_dual_mov_b32 v69, v242
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v242, 16, v128
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v184, v131, v64
	v_mov_b32_e32 v128, v163
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v160, v68, v66
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v68, v241, v112 :: v_dual_mov_b32 v163, v178
	v_mov_b32_e32 v112, v40
	v_mov_b32_e32 v178, v194
	v_mov_b32_e32 v194, v42
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v150, v68, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v68, v242, v72 :: v_dual_mov_b32 v131, v229
	v_mov_b32_e32 v229, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v144, v68, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v242, v73
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v151, v68, v65 :: v_dual_mul_f32 v68, v242, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v176, v68, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v242, v75
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v175, v68, v67 :: v_dual_mul_f32 v68, v243, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v146, v68, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v243, v81
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v145, v68, v65 :: v_dual_mul_f32 v68, v243, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v254, v68, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v243, v83
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v147, v68, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v244, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v130, v29 :: v_dual_fmac_f32 v229, v68, v64
	v_mul_f32_e32 v64, v244, v101
	v_dual_mul_f32 v68, v241, v113 :: v_dual_mov_b32 v101, v26
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v252, v64, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v244, v102
	v_dual_mov_b32 v102, v27 :: v_dual_mov_b32 v27, v33
	v_mov_b32_e32 v33, v35
	v_mov_b32_e32 v35, v70
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v253, v64, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v64, v244, v103 :: v_dual_mov_b32 v103, v37
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:116
	scratch_load_b32 v37, off, off offset:120
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v130, v64, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[64:67], v142 offset:36880
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v112, v68, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v241, v116
	v_mov_b32_e32 v100, v25
	scratch_load_b32 v25, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v143, v68, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v241, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v230, v68, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v241, v118
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v231, v68, v67 :: v_dual_mul_f32 v68, v242, v76
	scratch_store_b32 off, v231, off offset:128 ; 4-byte Folded Spill
	v_fmac_f32_e32 v138, v68, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v242, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v139, v68, v65 :: v_dual_mul_f32 v68, v242, v78
	v_dual_fmac_f32 v131, v68, v66 :: v_dual_mul_f32 v68, v242, v79
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v240, v68, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v243, v84
	v_mov_b32_e32 v84, v32
	v_mov_b32_e32 v32, v31
	scratch_store_b32 off, v240, off offset:132 ; 4-byte Folded Spill
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v201, v68, v64 :: v_dual_mul_f32 v68, v243, v85
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v85, off, off offset:40
	scratch_load_b32 v0, off, off offset:24
	scratch_load_b32 v40, off, off offset:28
	scratch_load_b32 v31, off, off offset:32
	scratch_load_b32 v26, off, off offset:136
	scratch_load_b32 v240, off, off offset:36
	scratch_load_b32 v70, off, off offset:108
	scratch_load_b32 v28, off, off offset:104
	v_fmac_f32_e32 v202, v68, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v243, v86
	scratch_load_b32 v86, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v173, v68, v66 :: v_dual_mul_f32 v68, v243, v87
	scratch_load_b32 v87, off, off offset:48 ; 4-byte Folded Reload
	v_fmac_f32_e32 v174, v68, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v244, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v211, v68, v64 :: v_dual_mul_f32 v68, v241, v119
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v244, v125
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v212, v64, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v244, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v148, v64, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v64, v244, v127 :: v_dual_mov_b32 v127, v162
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v154, v64, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[64:67], v142 offset:37376
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v128, v68, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v241, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v129, v68, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v241, v121
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v103, v68, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v241, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v127, v68, v67 :: v_dual_mul_f32 v68, v242, v88
	v_dual_mov_b32 v88, v149 :: v_dual_mov_b32 v149, v179
	v_mov_b32_e32 v179, v195
	v_mov_b32_e32 v195, v61
	v_dual_fmac_f32 v101, v68, v64 :: v_dual_mul_f32 v68, v242, v89
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v61, off, off offset:60
	scratch_load_b32 v231, off, off offset:140
	v_dual_mov_b32 v89, v30 :: v_dual_fmac_f32 v102, v68, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v242, v90
	v_mov_b32_e32 v90, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v100, v68, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v68, v242, v91 :: v_dual_mov_b32 v91, v71
	v_dual_mov_b32 v162, v34 :: v_dual_fmac_f32 v91, v68, v67
	v_mul_f32_e32 v68, v243, v96
	s_waitcnt vmcnt(11)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v96, v159 :: v_dual_fmac_f32 v85, v68, v64
	v_mul_f32_e32 v68, v243, v97
	scratch_load_b32 v97, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v86, v68, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v243, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v70, v68, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v243, v99
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v28, v68, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v244, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v35, v68, v64 :: v_dual_mul_f32 v68, v241, v123
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v244, v105
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v0, v64, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v244, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v33, v64, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v244, v107
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v25, v64, v67
	scratch_store_b32 off, v230, off offset:124 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:56
	scratch_load_b32 v230, off, off offset:144
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[64:67], v142 offset:37392
	scratch_store_b32 off, v25, off offset:112 ; 4-byte Folded Spill
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_fmac_f32_e32 v71, v68, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v241, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v61, v68, v65 :: v_dual_mul_f32 v68, v241, v251
	v_fmac_f32_e32 v96, v68, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v241, v250
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v97, v68, v67 :: v_dual_mul_f32 v68, v242, v92
	scratch_load_b32 v92, off, off offset:200 ; 4-byte Folded Reload
	v_dual_fmac_f32 v89, v68, v64 :: v_dual_mul_f32 v68, v242, v93
	v_fmac_f32_e32 v90, v68, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v242, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v87, v68, v66 :: v_dual_mul_f32 v68, v242, v95
	v_fmac_f32_e32 v88, v68, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v243, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v26, v68, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v68, v243, v247 :: v_dual_mov_b32 v251, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v240, v68, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v243, v246
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v40, v68, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v243, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v31, v68, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v244, v108
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v32, v68, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v244, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v27, v64, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v244, v110
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v69, v64, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v244, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v84, v64, v67
	v_add_nc_u32_e32 v64, s27, v137
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v64, v64, s12, 1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_lshl_b32 s12, s10, 11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s14, s12, 0
	s_mov_b32 s12, s48
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_add_i32 s48, s15, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s15, s13, 1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_add_i32 s47, s14, 0x8000
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	s_add_i32 s45, s48, 0x4000
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v64, v64, s[40:43], 0 offen
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s13, s11
	s_mov_b32 s13, s15
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v68, s14, v92
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v64, 16, v64
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_store_b32 v140, v64 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	scratch_load_b64 v[25:26], off, off offset:168 ; 8-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[64:67], v142 offset:36864
	ds_load_b128 v[72:75], v142 offset:36880
	ds_load_b128 v[76:79], v142 offset:37376
	ds_load_b128 v[80:83], v142 offset:37392
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v68, v[25:26] offset:32768
	v_mov_b32_e32 v68, v51
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v25, s48, v68
	ds_store_b128 v25, v[9:12]
	ds_store_b128 v25, v[13:16] offset:4096
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_store_b128 v25, v[17:20] offset:16384
	ds_store_b128 v25, v[21:24] offset:20480
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v13, v49, v242 :: v_dual_mul_f32 v20, v52, v243
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:196
	scratch_load_b32 v14, off, off offset:164
	v_mul_f32_e32 v9, v228, v241
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v10, off, off offset:148
	scratch_load_b32 v11, off, off offset:160
	scratch_load_b32 v12, off, off offset:152
	scratch_load_b32 v25, off, off
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(8)
	v_fmac_f32_e32 v39, v9, v64
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v9, v227, v241 :: v_dual_mul_f32 v22, v134, v244
	v_dual_mul_f32 v15, v50, v242 :: v_dual_mul_f32 v24, v135, v244
	v_mul_f32_e32 v16, v48, v242
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v168, v9, v65
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v226, v241
	v_mul_f32_e32 v19, v55, v243
	v_mul_f32_e32 v18, v47, v243
	v_mul_f32_e32 v23, v115, v244
	v_dual_mul_f32 v17, v54, v243 :: v_dual_fmac_f32 v200, v9, v66
	v_mul_f32_e32 v9, v225, v241
	v_mul_f32_e32 v21, v141, v244
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v167, v9, v67
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v232, v242
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v166, v9, v64 :: v_dual_mul_f32 v9, v43, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v255, v9, v65
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v207, v242
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v198, v9, v66
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v44, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v165, v9, v67
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v236, v243
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v196, v9, v64 :: v_dual_mul_f32 v9, v235, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v197, v9, v65
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v234, v243
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v194, v9, v66
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v233, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v195, v9, v67
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v114, v244
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v171, v9, v64
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v239, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v172, v9, v65 :: v_dual_mul_f32 v9, v238, v244
	v_fmac_f32_e32 v169, v9, v66
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v237, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v170, v9, v67
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v205, v241
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(7)
	v_fmac_f32_e32 v189, v9, v72
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v206, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v190, v9, v73
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v210, v241
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v187, v9, v74
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v209, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v188, v9, v75 :: v_dual_mul_f32 v9, v216, v242
	v_fmac_f32_e32 v185, v9, v72
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v215, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v186, v9, v73 :: v_dual_mul_f32 v9, v214, v242
	v_fmac_f32_e32 v183, v9, v74
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v213, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v37, v9, v75
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v220, v243
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v180, v9, v72 :: v_dual_mul_f32 v9, v219, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v182, v9, v73 :: v_dual_mul_f32 v9, v218, v243
	v_fmac_f32_e32 v178, v9, v74
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v217, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v179, v9, v75
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v224, v244
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v193, v9, v72
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v223, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v181, v9, v73
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v222, v244
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v191, v9, v74
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v221, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v192, v9, v75 :: v_dual_mul_f32 v9, v58, v241
	s_waitcnt lgkmcnt(6)
	v_fmac_f32_e32 v157, v9, v76
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v57, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v158, v9, v77
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v56, v241
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v155, v9, v78
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v9, v53, v241 :: v_dual_mul_f32 v14, v14, v242
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v156, v9, v79
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v9, v45, v242 :: v_dual_mul_f32 v10, v10, v241
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v11, v11, v241
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v12, v12, v241 :: v_dual_fmac_f32 v29, v9, v76
	v_mul_f32_e32 v9, v46, v242
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_fmac_f32_e32 v25, v10, v80
	scratch_store_b32 off, v29, off offset:116 ; 4-byte Folded Spill
	v_fmac_f32_e32 v153, v9, v77
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v60, v242
	scratch_store_b32 off, v25, off         ; 4-byte Folded Spill
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v46, off, off
	scratch_load_b32 v10, off, off offset:4
	v_fmac_f32_e32 v41, v9, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v9, v59, v242 :: v_dual_mov_b32 v216, v41
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v152, v9, v79
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v204, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v149, v9, v76
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v203, v243
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v162, v9, v77 :: v_dual_mul_f32 v9, v63, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v161, v9, v78
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v62, v243
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v163, v9, v79
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v208, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v164, v9, v76
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v136, v244
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v177, v9, v77
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v133, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v230, v9, v78 :: v_dual_mul_f32 v9, v132, v244
	v_fmac_f32_e32 v231, v9, v79
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v9, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v9, v241
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v10, v9, v81
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v37, off offset:120
	scratch_store_b32 off, v10, off offset:4
	s_clause 0xe                            ; 60-byte Folded Reload
	scratch_load_b32 v36, off, off offset:4
	scratch_load_b32 v45, off, off offset:100
	scratch_load_b32 v44, off, off offset:96
	scratch_load_b32 v43, off, off offset:92
	scratch_load_b32 v42, off, off offset:88
	scratch_load_b32 v41, off, off offset:84
	scratch_load_b32 v38, off, off offset:80
	scratch_load_b32 v37, off, off offset:76
	scratch_load_b32 v34, off, off offset:72
	scratch_load_b32 v30, off, off offset:68
	scratch_load_b32 v29, off, off offset:64
	scratch_load_b32 v26, off, off offset:20
	scratch_load_b32 v25, off, off offset:16
	scratch_load_b32 v10, off, off offset:12
	scratch_load_b32 v9, off, off offset:8
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v45, v11, v83 :: v_dual_fmac_f32 v44, v12, v82
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v43, v13, v81 :: v_dual_fmac_f32 v42, v14, v80
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v41, v15, v83 :: v_dual_fmac_f32 v38, v16, v82
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v37, v17, v81 :: v_dual_fmac_f32 v34, v18, v80
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v30, v19, v83 :: v_dual_fmac_f32 v29, v20, v82
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v26, v21, v81 :: v_dual_fmac_f32 v25, v22, v80
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v10, v23, v83 :: v_dual_fmac_f32 v9, v24, v82
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v165, off offset:880
	scratch_store_b32 off, v173, off offset:572
	v_mov_b32_e32 v165, v166
	s_clause 0xa                            ; 44-byte Folded Reload
	scratch_load_b32 v166, off, off offset:244
	scratch_load_b32 v173, off, off offset:248
	scratch_load_b32 v206, off, off offset:252
	scratch_load_b32 v208, off, off offset:256
	scratch_load_b32 v11, off, off offset:260
	scratch_load_b32 v12, off, off offset:264
	scratch_load_b32 v203, off, off offset:180
	scratch_load_b32 v247, off, off offset:184
	scratch_load_b32 v248, off, off offset:188
	scratch_load_b32 v217, off, off offset:192
	scratch_load_b32 v205, off, off offset:240
	v_dual_mov_b32 v159, v150 :: v_dual_mov_b32 v244, v176
	v_dual_mov_b32 v245, v175 :: v_dual_mov_b32 v214, v174
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v184, off offset:900
	scratch_store_b32 off, v199, off offset:912
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v174, v253 :: v_dual_and_b32 v1, 4, v205
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v69, 0
	scratch_store_b32 off, v2, off offset:572 ; 4-byte Folded Spill
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_mov_b32_e32 v231, 0
	scratch_store_b32 off, v2, off offset:132 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v148, 0
	v_mov_b32_e32 v229, 0
	scratch_store_b32 off, v2, off offset:128 ; 4-byte Folded Spill
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v251, 0
	scratch_store_b32 off, v2, off offset:124 ; 4-byte Folded Spill
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v85, 0
	v_mov_b32_e32 v187, 0
	scratch_store_b32 off, v2, off offset:912 ; 4-byte Folded Spill
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v201, 0
	scratch_store_b32 off, v2, off offset:900 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v145, 0
	scratch_store_b32 off, v2, off offset:116 ; 4-byte Folded Spill
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v157, 0
	scratch_store_b32 off, v2, off offset:120 ; 4-byte Folded Spill
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v198, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v156, 0
	v_mov_b32_e32 v158, 0
	v_mov_b32_e32 v188, 0
	v_mov_b32_e32 v190, 0
	v_mov_b32_e32 v200, 0
	v_mov_b32_e32 v168, 0
	s_add_i32 s51, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s48, 0, 0x2000
	s_add_i32 s50, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	scratch_store_b32 off, v2, off offset:880 ; 4-byte Folded Spill
.LBB0_8:                                ; %Flow822
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v36, off offset:4
	scratch_store_b32 off, v46, off
	scratch_store_b32 off, v45, off offset:100
	scratch_store_b32 off, v44, off offset:96
	scratch_store_b32 off, v43, off offset:92
	scratch_store_b32 off, v42, off offset:88
	scratch_store_b32 off, v41, off offset:84
	scratch_store_b32 off, v38, off offset:80
	scratch_store_b32 off, v37, off offset:76
	scratch_store_b32 off, v34, off offset:72
	scratch_store_b32 off, v30, off offset:68
	scratch_store_b32 off, v29, off offset:64
	scratch_store_b32 off, v91, off offset:192
	scratch_store_b32 off, v90, off offset:184
	scratch_store_b32 off, v89, off offset:168
	scratch_store_b32 off, v88, off offset:164
	scratch_store_b32 off, v87, off offset:48
	scratch_store_b32 off, v26, off offset:20
	scratch_store_b32 off, v25, off offset:16
	scratch_store_b32 off, v10, off offset:12
	scratch_store_b32 off, v9, off offset:8
	scratch_store_b32 off, v144, off offset:264
	scratch_store_b32 off, v147, off offset:260
	scratch_store_b32 off, v254, off offset:256
	scratch_store_b32 off, v229, off offset:248
	scratch_store_b32 off, v103, off offset:208
	scratch_store_b32 off, v61, off offset:60
	scratch_store_b32 off, v71, off offset:56
	scratch_store_b32 off, v97, off offset:52
	scratch_store_b32 off, v96, off offset:204
	scratch_store_b32 off, v102, off offset:200
	scratch_store_b32 off, v101, off offset:196
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v100, off offset:188
	scratch_store_b32 off, v86, off offset:44
	scratch_store_b32 off, v85, off offset:40
	scratch_store_b32 off, v84, off offset:144
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v34, off, off offset:176 ; 4-byte Folded Reload
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cndmask_b32_e64 v2, 0, 1, s2
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v144, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e64 v1, 0x90, 0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cmp_ne_u32_e64 s1, 1, v2
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v126, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_or_b32_e32 v25, v1, v12
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_or_b32_e32 v238, v11, v1
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v125, 0
	v_mov_b32_e32 v122, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_xor_b32_e32 v38, 16, v25
	v_add_nc_u32_e32 v1, s51, v25
	v_mov_b32_e32 v249, 0
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_xor_b32_e32 v239, 16, v238
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v2, s51, v38
	ds_load_b128 v[41:44], v1
	ds_load_b128 v[17:20], v1 offset:512
	ds_load_b128 v[9:12], v1 offset:1024
	ds_load_b128 v[5:8], v1 offset:1536
	ds_load_b128 v[45:48], v2
	ds_load_b128 v[21:24], v2 offset:512
	ds_load_b128 v[13:16], v2 offset:1024
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[1:4], v2 offset:1536
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v26, 0
	v_mov_b32_e32 v29, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s16, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v26, s12, v238
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v56, s23 :: v_dual_mov_b32 v51, s18
	v_mov_b32_e32 v55, s22
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[65:68], v26
	ds_load_b128 v[119:122], v26 offset:4096
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v53, s20 :: v_dual_add_nc_u32 v26, s12, v239
	v_dual_mov_b32 v54, s21 :: v_dual_mov_b32 v49, s16
	v_dual_mov_b32 v52, s19 :: v_dual_mov_b32 v29, v112
	v_mov_b32_e32 v50, s17
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[123:126], v26
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[65:68], v[41:44], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[65:68], v[17:20], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[65:68], v[9:12], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[65:68], v[5:8], v[49:56] neg_lo:[1,1,0]
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[65:68], v26 offset:4096
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[71:78], v[119:122], v[41:44], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[119:122], v[17:20], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[119:122], v[9:12], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[119:122], v[5:8], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[123:126], v[45:48], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[123:126], v[21:24], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[123:126], v[13:16], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[123:126], v[1:4], v[111:118] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v133, v59
	v_cvt_f32_i32_e32 v144, v60
	v_cvt_f32_i32_e32 v175, v61
	v_cvt_f32_i32_e32 v132, v62
	v_cvt_f32_i32_e32 v135, v79
	v_cvt_f32_i32_e32 v141, v80
	v_cvt_f32_i32_e32 v134, v81
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[71:78], v[65:68], v[45:48], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[65:68], v[21:24], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[65:68], v[13:16], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[65:68], v[1:4], v[49:56] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v136, v82
	v_cvt_f32_i32_e32 v125, v71
	v_cvt_f32_i32_e32 v126, v72
	v_cvt_f32_i32_e32 v123, v73
	v_cvt_f32_i32_e32 v124, v74
	v_cvt_f32_i32_e32 v121, v75
	v_cvt_f32_i32_e32 v122, v76
	v_cvt_f32_i32_e32 v119, v77
	v_cvt_f32_i32_e32 v120, v78
	v_cvt_f32_i32_e32 v82, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v83, v85
	v_cvt_f32_i32_e32 v85, v86
	v_cvt_f32_i32_e32 v78, v87
	v_cvt_f32_i32_e32 v79, v88
	v_cvt_f32_i32_e32 v76, v89
	v_cvt_f32_i32_e32 v77, v90
	v_cvt_f32_i32_e32 v74, v91
	v_cvt_f32_i32_e32 v75, v92
	v_cvt_f32_i32_e32 v72, v93
	v_cvt_f32_i32_e32 v73, v94
	v_cvt_f32_i32_e32 v94, v95
	v_cvt_f32_i32_e32 v95, v96
	v_cvt_f32_i32_e32 v93, v97
	v_cvt_f32_i32_e32 v96, v98
	v_cvt_f32_i32_e32 v86, v99
	v_cvt_f32_i32_e32 v88, v100
	v_cvt_f32_i32_e32 v87, v101
	v_cvt_f32_i32_e32 v89, v102
	v_cvt_f32_i32_e32 v68, v103
	v_cvt_f32_i32_e32 v71, v104
	v_cvt_f32_i32_e32 v66, v105
	v_cvt_f32_i32_e32 v67, v106
	v_cvt_f32_i32_e32 v62, v107
	v_cvt_f32_i32_e32 v65, v108
	v_cvt_f32_i32_e32 v60, v109
	v_cvt_f32_i32_e32 v61, v110
	v_cvt_f32_i32_e32 v97, v111
	v_cvt_f32_i32_e32 v98, v112
	v_mov_b32_e32 v112, v29
	v_cvt_f32_i32_e32 v99, v113
	v_cvt_f32_i32_e32 v92, v114
	v_cvt_f32_i32_e32 v90, v115
	v_cvt_f32_i32_e32 v91, v116
	v_cvt_f32_i32_e32 v80, v117
	v_cvt_f32_i32_e32 v81, v118
	v_cvt_f32_i32_e32 v59, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v36, v51
	v_cvt_f32_i32_e32 v49, v52
	v_cvt_f32_i32_e32 v30, v53
	v_cvt_f32_i32_e32 v37, v54
	v_cvt_f32_i32_e32 v26, v55
	v_cvt_f32_i32_e32 v29, v56
	v_cvt_f32_i32_e32 v51, v63
	v_cvt_f32_i32_e32 v52, v64
	v_cvt_f32_i32_e32 v53, v57
	v_cvt_f32_i32_e32 v54, v58
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v144, off offset:844
	scratch_store_b32 off, v99, off offset:840
	scratch_store_b32 off, v98, off offset:796
	scratch_store_b32 off, v97, off offset:792
	scratch_store_b32 off, v54, off offset:788
	scratch_store_b32 off, v53, off offset:784
	scratch_store_b32 off, v96, off offset:772
	scratch_store_b32 off, v95, off offset:756
	scratch_store_b32 off, v94, off offset:748
	scratch_store_b32 off, v93, off offset:744
	scratch_store_b32 off, v141, off offset:740
	scratch_store_b32 off, v136, off offset:732
	scratch_store_b32 off, v134, off offset:724
	scratch_store_b32 off, v92, off offset:712
	scratch_store_b32 off, v91, off offset:636
	scratch_store_b32 off, v90, off offset:632
	scratch_store_b32 off, v52, off offset:628
	scratch_store_b32 off, v51, off offset:624
	scratch_store_b32 off, v89, off offset:620
	scratch_store_b32 off, v88, off offset:616
	scratch_store_b32 off, v87, off offset:612
	scratch_store_b32 off, v86, off offset:608
	scratch_store_b32 off, v85, off offset:604
	scratch_store_b32 off, v84, off offset:600
	scratch_store_b32 off, v83, off offset:596
	scratch_store_b32 off, v82, off offset:592
	scratch_store_b32 off, v81, off offset:584
	scratch_store_b32 off, v80, off offset:580
	scratch_store_b32 off, v121, off offset:380
	scratch_store_b32 off, v120, off offset:376
	scratch_store_b32 off, v79, off offset:360
	scratch_store_b32 off, v78, off offset:356
	s_clause 0x13                           ; 80-byte Folded Spill
	scratch_store_b32 off, v77, off offset:352
	scratch_store_b32 off, v76, off offset:348
	scratch_store_b32 off, v75, off offset:344
	scratch_store_b32 off, v74, off offset:340
	scratch_store_b32 off, v73, off offset:336
	scratch_store_b32 off, v72, off offset:332
	scratch_store_b32 off, v71, off offset:324
	scratch_store_b32 off, v68, off offset:320
	scratch_store_b32 off, v67, off offset:312
	scratch_store_b32 off, v66, off offset:308
	scratch_store_b32 off, v65, off offset:304
	scratch_store_b32 off, v62, off offset:300
	scratch_store_b32 off, v61, off offset:296
	scratch_store_b32 off, v60, off offset:292
	scratch_store_b32 off, v50, off offset:280
	scratch_store_b32 off, v59, off offset:276
	scratch_store_b32 off, v49, off offset:272
	scratch_store_b32 off, v36, off offset:268
	scratch_store_b32 off, v252, off offset:708
	scratch_store_b32 off, v26, off offset:224
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v147, v146
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v26, 0
	v_mov_b32_e32 v184, v151
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 326 35 is_stmt 1              ; generate_amdgcn.py:326:35
	v_add_nc_u32_e32 v26, s50, v239
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_dual_mov_b32 v56, s19 :: v_dual_mov_b32 v51, s14
	v_mov_b32_e32 v55, s18
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[65:68], v26 offset:4096
	ds_load_b128 v[95:98], v26
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_dual_mov_b32 v53, s16 :: v_dual_add_nc_u32 v26, s50, v238
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[99:102], v26 offset:4096
	ds_load_b128 v[103:106], v26
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_dual_mov_b32 v54, s17 :: v_dual_mov_b32 v49, s12
	v_mov_b32_e32 v52, s15
	v_mov_b32_e32 v50, s13
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[71:78], v[99:102], v[41:44], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[103:106], v[41:44], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[99:102], v[17:20], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[65:68], v[45:48], v[71:78] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[95:98], v[45:48], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[103:106], v[17:20], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[65:68], v[21:24], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[99:102], v[9:12], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[95:98], v[21:24], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[103:106], v[9:12], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[65:68], v[13:16], v[87:94] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v223, v58
	v_cvt_f32_i32_e32 v218, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[95:98], v[13:16], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[103:106], v[5:8], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[99:102], v[5:8], v[49:56] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v224, v60
	v_cvt_f32_i32_e32 v150, v61
	v_wmma_i32_16x16x16_iu8 v[9:16], v[95:98], v[1:4], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v99, v62
	v_wmma_i32_16x16x16_iu8 v[49:56], v[65:68], v[1:4], v[49:56] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v98, v63
	v_cvt_f32_i32_e32 v100, v64
	v_cvt_f32_i32_e32 v95, v71
	v_cvt_f32_i32_e32 v97, v72
	v_cvt_f32_i32_e32 v96, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v68, v75
	v_cvt_f32_i32_e32 v72, v76
	v_cvt_f32_i32_e32 v66, v77
	v_cvt_f32_i32_e32 v67, v78
	v_cvt_f32_i32_e32 v227, v41
	v_cvt_f32_i32_e32 v228, v42
	v_cvt_f32_i32_e32 v225, v43
	v_cvt_f32_i32_e32 v226, v44
	v_cvt_f32_i32_e32 v101, v45
	v_cvt_f32_i32_e32 v103, v46
	v_cvt_f32_i32_e32 v204, v47
	v_cvt_f32_i32_e32 v102, v48
	v_cvt_f32_i32_e32 v77, v79
	v_cvt_f32_i32_e32 v79, v80
	v_cvt_f32_i32_e32 v76, v81
	v_cvt_f32_i32_e32 v78, v82
	v_cvt_f32_i32_e32 v64, v83
	v_cvt_f32_i32_e32 v65, v84
	v_cvt_f32_i32_e32 v62, v85
	v_cvt_f32_i32_e32 v63, v86
	v_cvt_f32_i32_e32 v36, v17
	v_cvt_f32_i32_e32 v232, v18
	v_cvt_f32_i32_e32 v229, v19
	v_cvt_f32_i32_e32 v233, v20
	v_cvt_f32_i32_e32 v209, v21
	v_cvt_f32_i32_e32 v104, v22
	v_cvt_f32_i32_e32 v207, v23
	v_cvt_f32_i32_e32 v105, v24
	v_cvt_f32_i32_e32 v82, v87
	v_cvt_f32_i32_e32 v83, v88
	v_cvt_f32_i32_e32 v81, v89
	v_cvt_f32_i32_e32 v84, v90
	v_cvt_f32_i32_e32 v60, v91
	v_cvt_f32_i32_e32 v61, v92
	v_cvt_f32_i32_e32 v58, v93
	v_cvt_f32_i32_e32 v59, v94
	v_cvt_f32_i32_e32 v213, v9
	v_cvt_f32_i32_e32 v246, v10
	v_cvt_f32_i32_e32 v199, v11
	v_cvt_f32_i32_e32 v215, v12
	v_cvt_f32_i32_e32 v85, v13
	v_cvt_f32_i32_e32 v86, v14
	v_cvt_f32_i32_e32 v252, v15
	v_cvt_f32_i32_e32 v176, v16
	v_cvt_f32_i32_e32 v75, v49
	v_cvt_f32_i32_e32 v80, v50
	v_cvt_f32_i32_e32 v73, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v50, v53
	v_cvt_f32_i32_e32 v51, v54
	v_cvt_f32_i32_e32 v26, v55
	v_cvt_f32_i32_e32 v49, v56
	v_cvt_f32_i32_e32 v249, v57
.LBB0_12:
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s30, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s1, s1, 27
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s1, s30, s1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s30, s10
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s1, 5
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s31, s11
	.loc	1 334 40 is_stmt 0              ; generate_amdgcn.py:334:40
	s_mul_i32 s4, s1, s44
	.loc	1 331 34 is_stmt 1              ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s1, s35
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v217, s1, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v2, v34, s4, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s5, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v105, off offset:908
	scratch_store_b32 off, v104, off offset:904
	scratch_store_b32 off, v86, off offset:896
	scratch_store_b32 off, v85, off offset:888
	scratch_store_b32 off, v101, off offset:884
	scratch_store_b32 off, v100, off offset:876
	scratch_store_b32 off, v99, off offset:872
	scratch_store_b32 off, v98, off offset:868
	scratch_store_b32 off, v84, off offset:692
	scratch_store_b32 off, v83, off offset:688
	scratch_store_b32 off, v82, off offset:684
	scratch_store_b32 off, v81, off offset:680
	scratch_store_b32 off, v80, off offset:676
	scratch_store_b32 off, v79, off offset:672
	scratch_store_b32 off, v78, off offset:668
	scratch_store_b32 off, v77, off offset:664
	scratch_store_b32 off, v76, off offset:660
	scratch_store_b32 off, v75, off offset:656
	scratch_store_b32 off, v74, off offset:652
	scratch_store_b32 off, v95, off offset:648
	scratch_store_b32 off, v52, off offset:644
	scratch_store_b32 off, v73, off offset:640
	scratch_store_b32 off, v132, off offset:864
	scratch_store_b32 off, v72, off offset:568
	scratch_store_b32 off, v68, off offset:564
	scratch_store_b32 off, v67, off offset:560
	scratch_store_b32 off, v66, off offset:556
	scratch_store_b32 off, v65, off offset:552
	scratch_store_b32 off, v64, off offset:548
	scratch_store_b32 off, v63, off offset:544
	scratch_store_b32 off, v62, off offset:540
	scratch_store_b32 off, v61, off offset:528
	s_clause 0x15                           ; 88-byte Folded Spill
	scratch_store_b32 off, v60, off offset:512
	scratch_store_b32 off, v59, off offset:504
	scratch_store_b32 off, v58, off offset:492
	scratch_store_b32 off, v126, off offset:408
	scratch_store_b32 off, v125, off offset:404
	scratch_store_b32 off, v124, off offset:396
	scratch_store_b32 off, v123, off offset:388
	scratch_store_b32 off, v122, off offset:384
	scratch_store_b32 off, v119, off offset:372
	scratch_store_b32 off, v51, off offset:328
	scratch_store_b32 off, v50, off offset:316
	scratch_store_b32 off, v49, off offset:288
	scratch_store_b32 off, v26, off offset:284
	scratch_store_b32 off, v212, off offset:704
	scratch_store_b32 off, v211, off offset:588
	scratch_store_b32 off, v154, off offset:252
	scratch_store_b32 off, v148, off offset:576
	scratch_store_b32 off, v112, off offset:892
	scratch_store_b32 off, v129, off offset:220
	scratch_store_b32 off, v128, off offset:216
	scratch_store_b32 off, v127, off offset:212
	scratch_store_b32 off, v27, off offset:152
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_and_b32_e32 v3, 28, v206
	v_add3_u32 v4, 0, v173, v208
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v5, v248, s1, 1
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	v_add_nc_u32_e32 v73, s46, v205
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_and_b32 s9, s9, 0xffff
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_add_nc_u32 v72, v4, v3
	v_add_lshl_u32 v3, v203, s1, 1
	v_add_lshl_u32 v4, v247, s1, 1
	v_dual_mov_b32 v241, 0 :: v_dual_add_nc_u32 v254, 0, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v42, 0 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x3
	buffer_load_u16 v236, v1, s[8:11], 0 offen
	buffer_load_u16 v235, v3, s[8:11], 0 offen
	buffer_load_u16 v234, v4, s[8:11], 0 offen
	buffer_load_u16 v237, v5, s[8:11], 0 offen
	v_mov_b32_e32 v4, 0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v6, v73, s4, 1
	v_dual_mov_b32 v242, 0 :: v_dual_add_nc_u32 v3, s47, v38
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v124, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v211, 0 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v19, 0
	v_mov_b32_e32 v118, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v123, 0
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v136, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v71, v160
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v146, v145
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s12, 0
	v_mov_b32_e32 v43, 0
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v2, 16, v2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v72, v2 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v1, v6, s[28:31], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	scratch_store_b32 off, v4, off offset:136 ; 4-byte Folded Spill
	v_cndmask_b32_e64 v4, 0, 1, s3
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v2, s47, v25
	v_mov_b32_e32 v114, 0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[20:23], v254 offset:36864
	ds_load_b128 v[12:15], v254 offset:36880
	v_mov_b32_e32 v25, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cmp_ne_u32_e64 s1, 1, v4
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[4:7], v254 offset:37376
	ds_load_b128 v[8:11], v254 offset:37392
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[8:11], off offset:916 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_store_b32 v72, v1 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[56:59], v2
	ds_load_b128 v[48:51], v2 offset:512
	ds_load_b128 v[88:91], v2 offset:1024
	ds_load_b128 v[76:79], v2 offset:1536
	ds_load_b128 v[60:63], v3
	ds_load_b128 v[52:55], v3 offset:512
	ds_load_b128 v[44:47], v3 offset:1024
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_b128 v[92:95], v3 offset:1536
	v_mov_b32_e32 v3, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v1, s48, v238
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v87, s19 :: v_dual_mov_b32 v82, s14
	v_mov_b32_e32 v86, s18
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[8:11], v1
	ds_load_b128 v[16:19], v1 offset:4096
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v84, s16 :: v_dual_add_nc_u32 v1, s48, v239
	v_dual_mov_b32 v85, s17 :: v_dual_mov_b32 v80, s12
	v_dual_mov_b32 v83, s15 :: v_dual_mov_b32 v160, v97
	v_dual_mov_b32 v81, s13 :: v_dual_mov_b32 v68, v103
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[24:27], v1
	v_dual_mov_b32 v145, v96 :: v_dual_mov_b32 v2, v131
	v_dual_mov_b32 v253, v102 :: v_dual_mov_b32 v250, v135
	v_dual_mov_b32 v65, v130 :: v_dual_mov_b32 v64, v143
	v_dual_mov_b32 v243, v133 :: v_dual_mov_b32 v38, v138
	v_dual_mov_b32 v41, v139 :: v_dual_mov_b32 v166, v204
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[8:11], v[56:59], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[8:11], v[48:51], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[8:11], v[88:91], v[80:87] neg_lo:[1,1,0]
	v_dual_mov_b32 v173, v207 :: v_dual_mov_b32 v144, v209
	v_wmma_i32_16x16x16_iu8 v[203:210], v[8:11], v[76:79], v[80:87] neg_lo:[1,1,0]
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[8:11], v1 offset:4096
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[16:19], v[56:59], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[16:19], v[48:51], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[16:19], v[88:91], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[16:19], v[76:79], v[80:87] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[24:27], v[60:63], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[24:27], v[52:55], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[24:27], v[44:47], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[203:210], v[24:27], v[92:95], v[203:210] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v98
	v_cvt_f32_i32_e32 v16, v115
	v_cvt_f32_i32_e32 v241, v100
	v_cvt_f32_i32_e32 v242, v101
	v_cvt_f32_i32_e32 v115, v135
	v_mov_b32_e32 v135, v250
	v_cvt_f32_i32_e32 v42, v96
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[8:11], v[60:63], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[8:11], v[52:55], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[8:11], v[44:47], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[8:11], v[92:95], v[80:87] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v8, v99
	v_cvt_f32_i32_e32 v9, v112
	v_cvt_f32_i32_e32 v10, v113
	v_cvt_f32_i32_e32 v11, v114
	v_cvt_f32_i32_e32 v211, v104
	v_cvt_f32_i32_e32 v212, v105
	v_cvt_f32_i32_e32 v148, v106
	v_cvt_f32_i32_e32 v154, v107
	v_cvt_f32_i32_e32 v106, v108
	v_cvt_f32_i32_e32 v107, v109
	v_cvt_f32_i32_e32 v104, v110
	v_cvt_f32_i32_e32 v105, v111
	v_cvt_f32_i32_e32 v108, v116
	v_cvt_f32_i32_e32 v109, v117
	v_cvt_f32_i32_e32 v110, v118
	v_cvt_f32_i32_e32 v111, v119
	v_mov_b32_e32 v119, v1
	v_cvt_f32_i32_e32 v100, v120
	v_cvt_f32_i32_e32 v101, v121
	v_cvt_f32_i32_e32 v98, v122
	v_cvt_f32_i32_e32 v99, v123
	v_cvt_f32_i32_e32 v74, v124
	v_mov_b32_e32 v124, v8
	v_cvt_f32_i32_e32 v75, v125
	v_mov_b32_e32 v125, v9
	v_cvt_f32_i32_e32 v66, v126
	v_mov_b32_e32 v126, v10
	v_cvt_f32_i32_e32 v67, v127
	v_cvt_f32_i32_e32 v116, v128
	v_mov_b32_e32 v128, v11
	v_cvt_f32_i32_e32 v117, v129
	v_mov_b32_e32 v129, v16
	v_cvt_f32_i32_e32 v118, v130
	v_mov_b32_e32 v130, v65
	v_cvt_f32_i32_e32 v120, v131
	v_mov_b32_e32 v131, v2
	v_cvt_f32_i32_e32 v112, v132
	v_cvt_f32_i32_e32 v113, v133
	v_mov_b32_e32 v133, v243
	v_cvt_f32_i32_e32 v114, v134
	v_cvt_f32_i32_e32 v27, v136
	v_cvt_f32_i32_e32 v65, v137
	v_cvt_f32_i32_e32 v25, v138
	v_mov_b32_e32 v138, v38
	v_cvt_f32_i32_e32 v26, v139
	v_mov_b32_e32 v139, v41
	v_cvt_f32_i32_e32 v19, v140
	v_cvt_f32_i32_e32 v24, v141
	v_cvt_f32_i32_e32 v17, v142
	v_cvt_f32_i32_e32 v18, v143
	v_dual_mov_b32 v143, v64 :: v_dual_mov_b32 v96, v145
	v_cvt_f32_i32_e32 v127, v203
	v_cvt_f32_i32_e32 v132, v204
	v_mov_b32_e32 v204, v166
	v_cvt_f32_i32_e32 v134, v205
	v_cvt_f32_i32_e32 v136, v206
	v_cvt_f32_i32_e32 v64, v207
	v_mov_b32_e32 v207, v173
	v_cvt_f32_i32_e32 v121, v208
	v_cvt_f32_i32_e32 v122, v209
	v_mov_b32_e32 v209, v144
	v_cvt_f32_i32_e32 v123, v210
	v_cvt_f32_i32_e32 v11, v80
	v_cvt_f32_i32_e32 v16, v81
	v_cvt_f32_i32_e32 v9, v82
	v_cvt_f32_i32_e32 v10, v83
	v_cvt_f32_i32_e32 v3, v84
	v_cvt_f32_i32_e32 v8, v85
	v_cvt_f32_i32_e32 v1, v86
	v_cvt_f32_i32_e32 v2, v87
	v_cvt_f32_i32_e32 v38, v102
	v_mov_b32_e32 v102, v253
	v_cvt_f32_i32_e32 v41, v103
	v_mov_b32_e32 v103, v68
	v_cvt_f32_i32_e32 v43, v97
	v_mov_b32_e32 v97, v160
.LBB0_14:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v136, off offset:860
	scratch_store_b32 off, v134, off offset:856
	scratch_store_b32 off, v132, off offset:852
	scratch_store_b32 off, v127, off offset:848
	scratch_store_b32 off, v123, off offset:836
	scratch_store_b32 off, v122, off offset:832
	scratch_store_b32 off, v121, off offset:828
	scratch_store_b32 off, v64, off offset:824
	scratch_store_b32 off, v43, off offset:820
	scratch_store_b32 off, v42, off offset:816
	scratch_store_b32 off, v120, off offset:812
	scratch_store_b32 off, v118, off offset:808
	scratch_store_b32 off, v117, off offset:804
	scratch_store_b32 off, v116, off offset:800
	scratch_store_b32 off, v41, off offset:780
	scratch_store_b32 off, v115, off offset:776
	scratch_store_b32 off, v38, off offset:768
	scratch_store_b32 off, v114, off offset:764
	scratch_store_b32 off, v113, off offset:760
	scratch_store_b32 off, v112, off offset:752
	scratch_store_b32 off, v111, off offset:736
	scratch_store_b32 off, v110, off offset:728
	scratch_store_b32 off, v109, off offset:720
	scratch_store_b32 off, v108, off offset:716
	scratch_store_b32 off, v242, off offset:700
	scratch_store_b32 off, v241, off offset:696
	scratch_store_b32 off, v212, off offset:536
	scratch_store_b32 off, v211, off offset:532
	scratch_store_b32 off, v154, off offset:524
	scratch_store_b32 off, v148, off offset:520
	scratch_store_b32 off, v107, off offset:516
	scratch_store_b32 off, v106, off offset:508
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v105, off offset:500
	scratch_store_b32 off, v104, off offset:496
	scratch_store_b32 off, v101, off offset:488
	scratch_store_b32 off, v100, off offset:484
	scratch_store_b32 off, v99, off offset:480
	scratch_store_b32 off, v98, off offset:476
	scratch_store_b32 off, v75, off offset:472
	scratch_store_b32 off, v74, off offset:468
	scratch_store_b32 off, v67, off offset:464
	scratch_store_b32 off, v66, off offset:460
	scratch_store_b32 off, v65, off offset:456
	scratch_store_b32 off, v27, off offset:452
	scratch_store_b32 off, v26, off offset:448
	scratch_store_b32 off, v25, off offset:444
	scratch_store_b32 off, v24, off offset:440
	scratch_store_b32 off, v19, off offset:436
	scratch_store_b32 off, v18, off offset:432
	scratch_store_b32 off, v17, off offset:428
	scratch_store_b32 off, v16, off offset:424
	scratch_store_b32 off, v11, off offset:420
	scratch_store_b32 off, v10, off offset:416
	scratch_store_b32 off, v9, off offset:412
	scratch_store_b32 off, v8, off offset:400
	scratch_store_b32 off, v3, off offset:392
	scratch_store_b32 off, v2, off offset:368
	scratch_store_b32 off, v1, off offset:364
	scratch_store_b32 off, v37, off offset:244
	scratch_store_b32 off, v30, off offset:240
	scratch_store_b32 off, v29, off offset:228
	scratch_store_b32 off, v28, off offset:104
	scratch_store_b32 off, v70, off offset:108
	scratch_store_b32 off, v240, off offset:36
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v31, off offset:32
	scratch_store_b32 off, v40, off offset:28
	scratch_store_b32 off, v0, off offset:24
	scratch_store_b32 off, v35, off offset:160
	scratch_store_b32 off, v33, off offset:156
	scratch_store_b32 off, v32, off offset:148
	scratch_store_b32 off, v69, off offset:140
	ds_load_b128 v[80:83], v254 offset:36864
	ds_load_b128 v[240:243], v254 offset:36880
	ds_load_b128 v[16:19], v254 offset:37376
	ds_load_b128 v[8:11], v254 offset:37392
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v145, v245
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v70, v244
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v28, v139 :: v_dual_add_nc_u32 v1, s45, v239
	v_mov_b32_e32 v3, v138
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	.loc	1 326 35 is_stmt 1              ; generate_amdgcn.py:326:35
	ds_load_b128 v[24:27], v1 offset:4096
	ds_load_b128 v[64:67], v1
	v_dual_mov_b32 v166, v102 :: v_dual_add_nc_u32 v1, s45, v238
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[136:139], v1 offset:4096
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_mov_b32_e32 v31, v143
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[140:143], v1
	v_mov_b32_e32 v35, v96
	v_dual_mov_b32 v37, v97 :: v_dual_mov_b32 v238, v103
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_dual_mov_b32 v103, s19 :: v_dual_mov_b32 v96, s12
	v_dual_mov_b32 v102, s18 :: v_dual_mov_b32 v101, s17
	v_mov_b32_e32 v32, v119
	v_dual_mov_b32 v100, s16 :: v_dual_mov_b32 v99, s15
	v_mov_b32_e32 v148, v126
	v_dual_mov_b32 v98, s14 :: v_dual_mov_b32 v97, s13
	v_dual_mov_b32 v0, v131 :: v_dual_mov_b32 v69, v124
	v_mov_b32_e32 v42, v133
	v_dual_mov_b32 v75, v125 :: v_dual_mov_b32 v160, v128
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[112:119], v[136:139], v[56:59], v[96:103] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[140:143], v[56:59], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[136:139], v[48:51], v[96:103] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[112:119], v[24:27], v[60:63], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[64:67], v[60:63], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[140:143], v[48:51], v[96:103] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[120:127], v[24:27], v[52:55], v[120:127] neg_lo:[1,1,0]
	v_dual_mov_b32 v1, v130 :: v_dual_mov_b32 v206, v129
	v_wmma_i32_16x16x16_iu8 v[56:63], v[64:67], v[52:55], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[140:143], v[88:91], v[96:103] neg_lo:[1,1,0]
	v_mov_b32_e32 v43, v135
	v_wmma_i32_16x16x16_iu8 v[128:135], v[136:139], v[88:91], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[140:143], v[76:79], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[136:139], v[76:79], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[64:67], v[44:47], v[48:55] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[128:135], v[24:27], v[44:47], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[64:67], v[92:95], v[84:91] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v104
	v_wmma_i32_16x16x16_iu8 v[96:103], v[24:27], v[92:95], v[96:103] neg_lo:[1,1,0]
	v_mov_b32_e32 v143, v31
	v_dual_mov_b32 v139, v28 :: v_dual_mov_b32 v138, v3
	scratch_store_b32 off, v2, off offset:136 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v144, v105
	v_cvt_f32_i32_e32 v136, v106
	v_cvt_f32_i32_e32 v74, v107
	v_cvt_f32_i32_e32 v104, v108
	v_cvt_f32_i32_e32 v105, v109
	v_cvt_f32_i32_e32 v106, v110
	v_cvt_f32_i32_e32 v107, v111
	v_cvt_f32_i32_e32 v64, v112
	v_cvt_f32_i32_e32 v2, v113
	v_cvt_f32_i32_e32 v3, v114
	v_cvt_f32_i32_e32 v65, v115
	v_cvt_f32_i32_e32 v40, v116
	v_cvt_f32_i32_e32 v41, v117
	v_cvt_f32_i32_e32 v33, v118
	v_cvt_f32_i32_e32 v38, v119
	v_mov_b32_e32 v119, v32
	v_cvt_f32_i32_e32 v212, v56
	v_cvt_f32_i32_e32 v154, v57
	v_cvt_f32_i32_e32 v151, v58
	v_cvt_f32_i32_e32 v173, v59
	v_cvt_f32_i32_e32 v110, v60
	v_cvt_f32_i32_e32 v111, v61
	v_cvt_f32_i32_e32 v112, v62
	v_cvt_f32_i32_e32 v113, v63
	v_cvt_f32_i32_e32 v66, v120
	v_cvt_f32_i32_e32 v67, v121
	v_cvt_f32_i32_e32 v68, v122
	v_cvt_f32_i32_e32 v34, v123
	v_cvt_f32_i32_e32 v31, v124
	v_mov_b32_e32 v124, v69
	v_cvt_f32_i32_e32 v32, v125
	v_mov_b32_e32 v125, v75
	v_cvt_f32_i32_e32 v203, v126
	v_mov_b32_e32 v126, v148
	v_cvt_f32_i32_e32 v30, v127
	v_cvt_f32_i32_e32 v222, v48
	v_cvt_f32_i32_e32 v221, v49
	v_cvt_f32_i32_e32 v127, v50
	v_cvt_f32_i32_e32 v118, v51
	v_cvt_f32_i32_e32 v75, v52
	v_cvt_f32_i32_e32 v115, v53
	v_cvt_f32_i32_e32 v114, v54
	v_cvt_f32_i32_e32 v116, v55
	v_cvt_f32_i32_e32 v69, v128
	v_mov_b32_e32 v128, v160
	v_cvt_f32_i32_e32 v108, v129
	v_mov_b32_e32 v129, v206
	v_cvt_f32_i32_e32 v219, v130
	v_mov_b32_e32 v130, v1
	v_cvt_f32_i32_e32 v205, v131
	v_mov_b32_e32 v131, v0
	v_cvt_f32_i32_e32 v28, v132
	v_cvt_f32_i32_e32 v29, v133
	v_mov_b32_e32 v133, v42
	v_cvt_f32_i32_e32 v132, v134
	v_cvt_f32_i32_e32 v27, v135
	v_mov_b32_e32 v135, v43
	v_cvt_f32_i32_e32 v120, v84
	v_cvt_f32_i32_e32 v121, v85
	v_cvt_f32_i32_e32 v210, v86
	v_cvt_f32_i32_e32 v141, v87
	v_cvt_f32_i32_e32 v84, v88
	v_cvt_f32_i32_e32 v86, v89
	v_cvt_f32_i32_e32 v85, v90
	v_cvt_f32_i32_e32 v87, v91
	v_cvt_f32_i32_e32 v42, v96
	v_mov_b32_e32 v96, v35
	v_cvt_f32_i32_e32 v35, v97
	v_mov_b32_e32 v97, v37
	v_cvt_f32_i32_e32 v37, v98
	v_cvt_f32_i32_e32 v43, v99
	v_cvt_f32_i32_e32 v25, v100
	v_cvt_f32_i32_e32 v26, v101
	v_cvt_f32_i32_e32 v0, v102
	v_mov_b32_e32 v102, v166
	v_cvt_f32_i32_e32 v24, v103
	v_mov_b32_e32 v103, v238
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_clause 0x10                           ; 68-byte Folded Spill
	scratch_store_b32 off, v84, off offset:996
	scratch_store_b32 off, v86, off offset:992
	scratch_store_b32 off, v85, off offset:988
	scratch_store_b32 off, v42, off offset:984
	scratch_store_b32 off, v43, off offset:980
	scratch_store_b32 off, v35, off offset:976
	scratch_store_b32 off, v41, off offset:972
	scratch_store_b32 off, v38, off offset:968
	scratch_store_b32 off, v0, off offset:964
	scratch_store_b32 off, v32, off offset:960
	scratch_store_b32 off, v30, off offset:956
	scratch_store_b32 off, v203, off offset:952
	scratch_store_b32 off, v29, off offset:948
	scratch_store_b32 off, v27, off offset:944
	scratch_store_b32 off, v132, off offset:940
	scratch_store_b32 off, v26, off offset:936
	scratch_store_b32 off, v25, off offset:932
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, 0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_mov_b16_e64 v86.h, v236.l
	v_mov_b16_e64 v85.h, v235.l
	v_mov_b16_e64 v84.h, v234.l
	v_mov_b16_e64 v32.h, v237.l
	v_mov_b16_e32 v86.l, v32.l
	v_mov_b16_e32 v85.l, v32.l
	v_mov_b32_e32 v220, v24
	v_mov_b16_e32 v84.l, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v35, v39 :: v_dual_mul_f32 v26, v224, v86
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v24, v223, v86 :: v_dual_mul_f32 v29, v228, v85
	v_mul_f32_e32 v25, v249, v86
	v_dual_mul_f32 v27, v218, v86 :: v_dual_mul_f32 v30, v227, v85
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v244, v24, v81, v168
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v24, v226, v85
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v211, v25, v80, v39
	v_fma_f32 v39, v27, v82, v200
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v27, v36, v84
	v_mov_b32_e32 v79, v34
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:900
	scratch_load_b32 v36, off, off offset:756
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v25, v225, v85
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v38, v26, v83, v167
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v26, v232, v84
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v88, v29, v81, v255
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v29, v233, v84
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v43, v25, v82, v198
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v25, v213, v32
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v44, v26, v81, v197
	scratch_load_b32 v78, off, off offset:912 ; 4-byte Folded Reload
	v_fma_f32 v46, v29, v83, v195
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v29, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v225, v25, v80, v171
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v25, off, off offset:784 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v26, v215, v32
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v41, v30, v80, v165
	v_mov_b32_e32 v166, v165
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:880
	scratch_load_b32 v60, off, off offset:264
	v_fma_f32 v226, v26, v83, v170
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:844 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v45, v27, v80, v196
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v27, v199, v32
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v122, off, off offset:120
	scratch_load_b32 v142, off, off offset:128
	v_mov_b32_e32 v117, v200
	.loc	1 330 29 is_stmt 1              ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s34, 31
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v227, v27, v82, v169
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_lshr_b32 s1, s1, 27
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s30, s10
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_add_i32 s1, s34, s1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s31, s11
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s1, 5
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s33, s33, s27
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s1, s35
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s4, s1, s44
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s5, -1, 0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	v_mov_b32_e32 v76, v37
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:256
	scratch_load_b32 v1, off, off offset:904
	v_mov_b32_e32 v160, v33
	scratch_load_b32 v33, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v27, v133, v86 :: v_dual_mov_b32 v80, v40
	scratch_load_b32 v0, off, off offset:892 ; 4-byte Folded Reload
	v_dual_mov_b32 v218, v69 :: v_dual_mov_b32 v215, v108
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v30, v27, v22, v71
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v27, off, off offset:724 ; 4-byte Folded Reload
	v_mov_b32_e32 v206, v113
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v199, v71, v30, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(13)
	v_mul_f32_e32 v51, v36, v84
	scratch_load_b32 v36, off, off offset:748 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v47, v229, v84
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v52, v51, v21, v146
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(8)
	v_mul_f32_e32 v26, v26, v86
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v224, v47, v82, v194
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v53, v36, v84
	scratch_load_b32 v36, off, off offset:772 ; 4-byte Folded Reload
	v_mul_f32_e32 v49, v135, v85
	v_mov_b32_e32 v135, v216
	v_mov_b32_e32 v216, v136
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v51, v53, v20, v147
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v54, v36, v84
	scratch_load_b32 v36, off, off offset:792 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v55, v36, v32
	scratch_load_b32 v36, off, off offset:712 ; 4-byte Folded Reload
	v_mul_f32_e32 v25, v25, v86
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v57, v36, v32
	scratch_load_b32 v36, off, off offset:840 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v62, v57, v23, v130
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v57, v1, v84
	scratch_load_b32 v1, off, off offset:908 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v233, v57, v241, v182
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v57, off, off offset:888 ; 4-byte Folded Reload
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v58, v36, v32
	scratch_load_b32 v36, off, off offset:708 ; 4-byte Folded Reload
	v_mul_f32_e32 v47, v29, v85
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v29, v25, v20, v34
	v_fma_f32 v25, v26, v23, v159
	v_fma_f32 v61, v58, v22, v174
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v58, v209, v84
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:732 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v42, v24, v83, v165
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v24, v246, v32 :: v_dual_mov_b32 v209, v67
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v234, v58, v240, v180
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v58, v176, v32
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v57, v57, v32
	v_mul_f32_e32 v59, v1, v84
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v223, v24, v81, v172
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v24, off, off offset:788 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v239, v58, v243, v192
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v58, off, off offset:600 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v238, v57, v240, v193
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v57, off, off offset:624 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v235, v59, v243, v179
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v59, v252, v32
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v252, off, off offset:588
	scratch_load_b32 v123, off, off offset:572
	scratch_load_b32 v40, off, off offset:260
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v48, v47, v21, v184
	v_fma_f32 v47, v49, v20, v60
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v176, off, off offset:252
	scratch_load_b32 v137, off, off offset:132
	scratch_load_b32 v140, off, off offset:124
	scratch_load_b32 v133, off, off offset:116
	v_fma_f32 v55, v55, v20, v33
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v20, off, off offset:872 ; 4-byte Folded Reload
	v_dual_mov_b32 v246, v3 :: v_dual_mov_b32 v3, v64
	v_mov_b32_e32 v1, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v200, v159, v25, s2
	v_mov_b32_e32 v159, v110
	v_cndmask_b32_e64 v25, v174, v61, s2
	v_mov_b32_e32 v110, v195
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(11)
	v_mul_f32_e32 v26, v26, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v50, v26, v23, v145
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:744 ; 4-byte Folded Reload
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v58, v58, v85 :: v_dual_mul_f32 v57, v57, v86
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v67, v58, v13, v139
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v58, off, off offset:608 ; 4-byte Folded Reload
	v_mul_f32_e32 v27, v27, v85
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(7)
	v_fma_f32 v53, v54, v23, v40
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v23, off, off offset:868 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v26, v26, v84
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v49, v27, v22, v70
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v27, off, off offset:796 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v54, v26, v22, v37
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v26, v103, v85
	scratch_load_b32 v22, off, off offset:876 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v195, v70, v49, s2
	v_mov_b32_e32 v70, v186
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v58, v58, v84
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v228, v26, v241, v186
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v26, v102, v85
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v82, v58, v12, v201
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v58, off, off offset:580 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v132, v26, v243, v122
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v26, v207, v84 :: v_dual_mov_b32 v207, v66
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v66, v57, v14, v140
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v57, off, off offset:616 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v236, v26, v242, v178
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:864 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v27, v27, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v56, v27, v21, v36
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v27, off, off offset:884 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v58, v58, v32
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v26, v26, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v63, v26, v13, v143
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:628 ; 4-byte Folded Reload
	v_mul_f32_e32 v24, v24, v86
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v24, v24, v21, v78
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v21, v150, v86
	scratch_load_b32 v150, off, off offset:704 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v57, v57, v84
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v21, v21, v240, v189
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v81, v57, v13, v202
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v27, v27, v85
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v229, v27, v240, v185
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v27, v204, v85 :: v_dual_mov_b32 v204, v65
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v240, v59, v242, v191
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v59, off, off offset:584 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v232, v27, v242, v183
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:896
	scratch_load_b32 v57, off, off offset:632
	v_mul_f32_e32 v20, v20, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v20, v20, v241, v190
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v27, v27, v32
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v57, v57, v32
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v237, v27, v241, v181
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v27, v175, v86
	scratch_load_b32 v175, off, off offset:576 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v91, v57, v12, v252
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v59, v59, v32
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v37, v54, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v64, v27, v12, v0
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v27, off, off offset:592 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v93, v59, v15, v176
	s_waitcnt vmcnt(1)
	v_fma_f32 v92, v58, v14, v175
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v40, v53, s2
	v_mov_b32_e32 v40, v185
	v_cndmask_b32_e64 v185, v143, v63, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v27, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v68, v27, v12, v138
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v27, off, off offset:596 ; 4-byte Folded Reload
	v_mul_f32_e32 v26, v26, v86
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v12, v97, v86
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v65, v26, v15, v142
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:604 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v94, v12, v17, v158
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v12, off, off offset:652 ; 4-byte Folded Reload
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v27, v27, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v77, v27, v14, v131
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v27, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v27, v84
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v90, v27, v14, v123
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v14, v96, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v97, v14, v18, v155
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v14, off, off offset:688 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v84
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v102, v14, v17, v162
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v14, off, off offset:656 ; 4-byte Folded Reload
	v_mul_f32_e32 v12, v12, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v96, v12, v19, v156
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v12, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v14, v14, v32
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v208, v14, v16, v164
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	scratch_load_b32 v14, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v12, v12, v85
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v26, v26, v85
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v100, v12, v19, v152
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v12, off, off offset:692 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v69, v26, v15, v137
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:620 ; 4-byte Folded Reload
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v23, v23, v86
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v14, v14, s1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v12, v12, v84
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v26, v26, v84
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v23, v23, v242, v187
	v_mov_b32_e32 v242, v28
	v_fma_f32 v136, v12, v19, v163
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v12, off, off offset:676 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v89, v26, v15, v214
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v15, off, off offset:672 ; 4-byte Folded Reload
	v_mov_b32_e32 v28, v201
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:636 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v201, v34, v29, s2
	v_cndmask_b32_e64 v136, v163, v136, s2
	v_mov_b32_e32 v34, v182
	v_cndmask_b32_e64 v182, v140, v66, s2
	v_cndmask_b32_e64 v63, v28, v82, s2
	v_mov_b32_e32 v28, v179
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v12, v12, v32 :: v_dual_mul_f32 v15, v15, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v148, v12, v17, v177
	v_mov_b32_e32 v12, v147
	v_fma_f32 v98, v15, v17, v153
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v15, off, off offset:684 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v12, v51, s2
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	scratch_load_b32 v12, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v15, v15, v84
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v12, v12, s4, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v103, v15, v16, v149
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v15, off, off offset:644 ; 4-byte Folded Reload
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v26, v26, v32 :: v_dual_mov_b32 v213, v116
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	v_mov_b32_e32 v116, v255
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v22, v22, v86
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v83, v26, v13, v150
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:648
	scratch_load_b32 v26, off, off offset:640
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v12, v12, s[28:31], 0 offen
	v_dual_mov_b32 v203, v112 :: v_dual_mov_b32 v112, v197
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v22, v22, v243, v188
	v_mov_b32_e32 v243, v31
	v_mov_b32_e32 v31, v202
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v202, v78, v24, s2
	v_cndmask_b32_e64 v78, v130, v62, s2
	v_mov_b32_e32 v130, v193
	v_cndmask_b32_e64 v197, v60, v47, s2
	v_cndmask_b32_e64 v60, v146, v52, s2
	v_cndmask_b32_e64 v24, v33, v55, s2
	v_cndmask_b32_e64 v62, v214, v89, s2
	v_cndmask_b32_e64 v83, v150, v83, s2
	v_cndmask_b32_e64 v214, v70, v228, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v15, v15, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v108, v15, v19, v231
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v15, v247, s1, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v13, v13, v86 :: v_dual_mul_f32 v26, v26, v32
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v15, 0x80000000, v15 :: v_dual_lshlrev_b32 v12, 16, v12
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v95, v13, v16, v157
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v13, off, off offset:664 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v109, v26, v18, v230
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v36, v56, s2
	v_mov_b32_e32 v36, v183
	v_cndmask_b32_e64 v183, v142, v65, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v13, v85
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v99, v13, v16, v133
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v13, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v16, v248, s1, 1
	v_mov_b32_e32 v113, v198
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v198, v184, v48, s2
	v_cndmask_b32_e64 v184, v0, v64, s2
	v_mov_b32_e32 v0, v178
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v178, v139, v67, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v13, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v101, v13, v18, v135
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v13, off, off offset:680 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v13, v84
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v134, v13, v18, v161
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v13, v217, s1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v134, v161, v134, s2
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
	ds_store_b32 v72, v12 offset:36864
	scratch_load_b32 v12, off, off offset:820 ; 4-byte Folded Reload
	v_mov_b32_e32 v147, v75
	v_mov_b32_e32 v75, v111
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v49, 16, v15
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v27, 16, v16
	v_lshlrev_b32_e32 v71, 16, v14
	v_mov_b32_e32 v111, v196
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v196, v145, v50, s2
	v_mov_b32_e32 v145, v127
	v_dual_mov_b32 v127, v190 :: v_dual_lshlrev_b32 v190, 16, v13
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v70, v213, v49
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v16, v12, v190
	scratch_load_b32 v12, off, off offset:816 ; 4-byte Folded Reload
	v_mul_f32_e32 v18, v124, v190
	v_dual_mov_b32 v124, v177 :: v_dual_mul_f32 v19, v119, v190
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v177, v138, v68, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v12, v190
	scratch_load_b32 v12, off, off offset:804 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v50, v12, v49
	scratch_load_b32 v12, off, off offset:800 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v51, v12, v49
	scratch_load_b32 v12, off, off offset:812 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v52, v12, v49
	scratch_load_b32 v12, off, off offset:808 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v53, v12, v49
	scratch_load_b32 v12, off, off offset:852 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v54, v12, v27
	scratch_load_b32 v12, off, off offset:848 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v55, v12, v27
	scratch_load_b32 v12, off, off offset:856 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v56, v12, v27
	scratch_load_b32 v12, off, off offset:860 ; 4-byte Folded Reload
	v_mul_f32_e32 v48, v128, v71
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v128, v191
	v_mul_f32_e32 v30, v125, v71
	v_dual_mul_f32 v29, v126, v71 :: v_dual_mov_b32 v126, v189
	v_mov_b32_e32 v125, v188
	v_mul_f32_e32 v47, v129, v71
	v_mov_b32_e32 v129, v192
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v61, v12, v27
	ds_load_b128 v[12:15], v254 offset:36864
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v247, v17, v12, v201
	v_fma_f32 v191, v30, v12, v197
	v_fma_f32 v241, v51, v12, v59
	v_fma_f32 v255, v53, v14, v57
	v_fma_f32 v53, v55, v12, v24
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v12, off, off offset:700 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v248, v16, v13, v202
	v_mov_b32_e32 v37, v194
	v_fma_f32 v194, v18, v15, v200
	v_fma_f32 v193, v19, v14, v199
	v_fma_f32 v188, v48, v14, v195
	v_fma_f32 v253, v56, v14, v25
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v176, v93, s2
	v_cndmask_b32_e64 v176, v137, v69, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v192, v29, v13, v198
	v_fma_f32 v189, v47, v15, v196
	v_fma_f32 v245, v52, v15, v58
	v_fma_f32 v54, v54, v13, v26
	v_fma_f32 v250, v61, v15, v78
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v252, v91, s2
	v_cndmask_b32_e64 v29, v175, v92, s2
	v_cndmask_b32_e64 v175, v131, v77, s2
	v_mov_b32_e32 v91, v172
	v_cndmask_b32_e64 v77, v31, v81, s2
	v_cndmask_b32_e64 v61, v123, v90, s2
	v_mov_b32_e32 v131, v181
	v_dual_mov_b32 v31, v180 :: v_dual_mul_f32 v92, v121, v27
	v_mov_b32_e32 v90, v171
	v_mov_b32_e32 v123, v231
	v_cndmask_b32_e64 v231, v110, v46, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v110, v141, v27
	v_dual_mul_f32 v46, v216, v190 :: v_dual_mov_b32 v121, v157
	v_mul_f32_e32 v93, v120, v27
	v_mov_b32_e32 v120, v156
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v141, v0, v236, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v0, v105, v190
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v150, v31, v234, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v31, v107, v190
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v16, v12, v190
	scratch_load_b32 v12, off, off offset:696 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v12, v190
	scratch_load_b32 v12, off, off offset:780 ; 4-byte Folded Reload
	v_mov_b32_e32 v119, v187
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v187, v50, v13, v60
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v12, v190
	scratch_load_b32 v12, off, off offset:768 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v12, v190
	scratch_load_b32 v12, off, off offset:720 ; 4-byte Folded Reload
	v_mov_b32_e32 v33, v122
	v_mov_b32_e32 v122, v158
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v158, v37, v224, s2
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v37, v155 :: v_dual_mul_f32 v48, v12, v71
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v12, off, off offset:716 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v146, v33, v132, s2
	v_mov_b32_e32 v33, v149
	v_cndmask_b32_e64 v149, v36, v232, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v36, v106, v190
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v143, v33, v103, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v33, v2, v190 :: v_dual_mul_f32 v50, v12, v71
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v12, off, off offset:736 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v55, v12, v71
	scratch_load_b32 v12, off, off offset:728 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v56, v12, v71
	scratch_load_b32 v12, off, off offset:760 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v64, v12, v49
	scratch_load_b32 v12, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v65, v12, v49
	scratch_load_b32 v12, off, off offset:776 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v66, v12, v49
	scratch_load_b32 v12, off, off offset:764 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v67, v12, v49
	scratch_load_b32 v12, off, off offset:828 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v68, v12, v27
	scratch_load_b32 v12, off, off offset:824 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v69, v12, v27
	scratch_load_b32 v12, off, off offset:832 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v82, v12, v27
	scratch_load_b32 v12, off, off offset:836 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v89, v12, v27
	ds_load_b128 v[12:15], v254 offset:36880
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v52, v17, v12, v184
	v_fma_f32 v180, v50, v12, v177
	v_fma_f32 v179, v55, v15, v176
	v_fma_f32 v172, v65, v12, v63
	v_fma_f32 v171, v66, v15, v62
	v_mov_b32_e32 v66, v170
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v170, v91, v223, s2
	v_mov_b32_e32 v65, v169
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v174, v56, v14, v175
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v223, v111, v45, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v45, v74, v190
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v56, v68, v13, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v116, v88, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v88, v221, v49
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v55, v69, v12, v47
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v12, v73, s4, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v252, v64, v13, v77
	v_fma_f32 v51, v16, v13, v185
	v_fma_f32 v249, v18, v15, v183
	v_fma_f32 v186, v19, v14, v182
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v181, v48, v13, v178
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v169, v90, v225, s2
	v_cndmask_b32_e64 v225, v112, v44, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v74, v151, v71
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v12, v12, s[28:31], 0 offen
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v81, v67, v14, v61
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v90, v118, v49
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v50, v89, v15, v30
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v89, v222, v49
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v48, v82, v14, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v82, v166, v41, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v69, v154, v71
	v_mul_f32_e32 v73, v173, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v117, v39, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v91, v145, v49
	v_mul_f32_e32 v111, v210, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v145, v28, v235, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v28, v104, v190
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v64, 16, v12
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[16:19], v254 offset:37376
	ds_load_b128 v[12:15], v254 offset:37392
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v72, v64 offset:36864
	v_mov_b32_e32 v64, v168
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v168, v66, v226, s2
	v_mov_b32_e32 v66, v167
	v_cndmask_b32_e64 v167, v65, v227, s2
	v_cndmask_b32_e64 v65, v35, v211, s2
	v_cndmask_b32_e64 v227, v165, v42, s2
	v_cndmask_b32_e64 v226, v113, v43, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v35, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v254 offset:36864
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v64, v244, s2
	v_cndmask_b32_e64 v66, v66, v38, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v38, v144, v190
	v_mul_f32_e32 v72, v212, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v212, v40, v229, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v40, v206, v71
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v216, v74, v43, v226
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v127, v20, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v20, off, off offset:992 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v112, v38, v42, v64
	v_fma_f32 v69, v69, v42, v68
	v_fma_f32 v217, v73, v44, v227
	v_fma_f32 v211, v88, v42, v225
	v_fma_f32 v157, v92, v42, v170
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v42, v115, v49
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v118, v72, v41, v82
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v38, v75, v71
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v117, v46, v43, v67
	v_fma_f32 v210, v89, v41, v223
	v_fma_f32 v154, v90, v44, v231
	v_fma_f32 v166, v91, v43, v158
	v_fma_f32 v244, v111, v43, v167
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v88, v126, v21, s2
	v_cndmask_b32_e64 v89, v125, v22, s2
	v_cndmask_b32_e64 v90, v119, v23, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v155, v110, v44, v168
	v_mov_b32_e32 v110, v164
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v164, v34, v233, s2
	v_mov_b32_e32 v34, v162
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v156, v93, v41, v169
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v91, v87, v27
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v130, v238, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v116, v45, v44, v66
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v128, v240, s2
	v_cndmask_b32_e64 v45, v129, v239, s2
	v_cndmask_b32_e64 v162, v133, v99, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v39, v35, v190
	v_mov_b32_e32 v35, v153
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v153, v131, v237, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v113, v39, v41, v65
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v39, v159, v71
	v_mul_f32_e32 v41, v203, v71
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v73, v20, v27
	scratch_load_b32 v20, off, off offset:996 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v72, v114, v49 :: v_dual_mul_f32 v75, v20, v27
	scratch_load_b32 v20, off, off offset:988 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v43, v147, v49 :: v_dual_mul_f32 v92, v20, v27
	ds_load_b128 v[20:23], v254 offset:36880
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v93, v0, v21, v74
	v_mov_b32_e32 v0, v152
	v_fma_f32 v28, v28, v20, v88
	v_fma_f32 v142, v39, v20, v212
	v_fma_f32 v203, v43, v20, v150
	v_fma_f32 v137, v75, v20, v46
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v122, v94, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v119, v38, v21, v214
	v_fma_f32 v206, v42, v21, v164
	v_fma_f32 v138, v73, v21, v153
	v_fma_f32 v224, v92, v22, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v121, v95, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v152, v41, v22, v149
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v124, v148, s2
	v_cndmask_b32_e64 v148, v34, v102, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v34, v3, v190
	v_dual_mul_f32 v42, v1, v71 :: v_dual_mul_f32 v43, v215, v49
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v31, v31, v23, v89
	v_fma_f32 v213, v40, v23, v146
	v_fma_f32 v159, v70, v23, v145
	v_fma_f32 v228, v91, v23, v45
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v110, v208, s2
	v_cndmask_b32_e64 v23, v37, v97, s2
	v_cndmask_b32_e64 v97, v135, v101, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v39, v207, v71 :: v_dual_mul_f32 v70, v218, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v208, v35, v98, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v35, v204, v190 :: v_dual_mul_f32 v38, v209, v71
	v_mul_f32_e32 v91, v205, v49
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v36, v36, v22, v90
	v_fma_f32 v147, v72, v22, v141
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v120, v96, s2
	v_cndmask_b32_e64 v72, v230, v109, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v37, v246, v190 :: v_dual_mul_f32 v40, v79, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v123, v108, s2
	v_cndmask_b32_e64 v165, v0, v100, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v0, off, off offset:976 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v88, v28, s3
	v_cndmask_b32_e64 v46, v46, v137, s3
	v_cndmask_b32_e64 v114, v44, v224, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v94, v0, v27
	scratch_load_b32 v0, off, off offset:984 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v92, v219, v49 :: v_dual_mul_f32 v95, v0, v27
	scratch_load_b32 v0, off, off offset:980 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v87, v0, v27
	ds_load_b128 v[0:3], v254 offset:37376
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v34, v34, v0, v21
	v_fma_f32 v209, v39, v0, v162
	v_fma_f32 v204, v42, v2, v97
	v_fma_f32 v151, v70, v0, v143
	v_fma_f32 v42, v95, v0, v75
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v64, v112, s3
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v33, v33, v1, v20
	v_fma_f32 v215, v38, v1, v208
	v_fma_f32 v163, v43, v1, v148
	v_fma_f32 v43, v94, v1, v41
	v_fma_f32 v37, v37, v2, v23
	v_fma_f32 v140, v92, v2, v134
	v_fma_f32 v35, v35, v3, v22
	v_fma_f32 v207, v40, v3, v165
	v_fma_f32 v144, v91, v3, v136
	v_fma_f32 v39, v87, v3, v73
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v20, v33, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v39, v73, v39, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v96, v76, v27 :: v_dual_fmac_f32 v1, 0xbfb8aa3b, v0
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v38, v96, v2, v72
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v1, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v72, v38, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v1, v1, v2
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v3, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v2, v3, 1.0
	v_fmac_f32_e32 v3, v40, v3
	v_div_scale_f32 v40, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v64, v40, v3
	v_fma_f32 v70, -v2, v64, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v70, v3
	v_fma_f32 v2, -v2, v64, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v3, v64
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v65, v113, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v120, v2, v1, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v67, v117, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v40, v40
	v_ldexp_f32 v40, v40, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v40, v40, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v64
	v_fma_f32 v70, -v64, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v70, v65
	v_div_scale_f32 v70, vcc_lo, v3, v40, v3
	v_mul_f32_e32 v87, v70, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v64, v87, v70
	v_fmac_f32_e32 v87, v91, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v64, v87, v70
	v_div_fmas_f32 v64, v64, v65, v87
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v66, v116, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v121, v64, v40, v3
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v65
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v74, v93, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_mul_f32_e32 v40, 0xbfb8aa3b, v3
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v65
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v66, v66, v70
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v66, v66, v65
	v_rcp_f32_e32 v87, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v70, v87, 1.0
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, vcc_lo, v65, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v91, v87
	v_fma_f32 v94, -v70, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v94, v87
	v_fma_f32 v70, -v70, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v70, v70, v87, v92
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v122, v70, v66, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v65, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v67, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v2, v67, 1.0
	v_fmac_f32_e32 v67, v87, v67
	v_div_scale_f32 v87, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v87, v67
	v_fma_f32 v92, -v2, v91, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v67
	v_fma_f32 v2, -v2, v91, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v67, v91
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v123, v2, v1, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v89, v31, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v40, 0xbfb8aa3b, v3 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v40, v40, v64
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v40, 1.0, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v40, v40, v3
	v_rcp_f32_e32 v67, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v64, v67, 1.0
	v_fmac_f32_e32 v67, v74, v67
	v_div_scale_f32 v74, vcc_lo, v3, v40, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v87, v74, v67
	v_fma_f32 v91, -v64, v87, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v91, v67
	v_fma_f32 v64, -v64, v87, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v64, v64, v67, v87
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v125, v64, v40, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v90, v36, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v28
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v65, v65, v28
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v70, v67
	v_div_scale_f32 v70, vcc_lo, v28, v65, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v70, v67
	v_fma_f32 v87, -v66, v74, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v87, v67
	v_fma_f32 v66, -v66, v74, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v66, v67, v74
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v126, v66, v65, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v28, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v31, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v2, v31, 1.0
	v_fmac_f32_e32 v31, v67, v31
	v_div_scale_f32 v67, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v67, v31
	v_fma_f32 v74, -v2, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v74, v31
	v_fma_f32 v2, -v2, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v31, v70
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v31, 0xbfb8aa3b, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v127, v2, v1, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v21, v34, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v3
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v31, v31, v36
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v36, null, v31, v31, v3
	v_rcp_f32_e32 v40, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v36, v40, 1.0
	v_fmac_f32_e32 v40, v64, v40
	v_div_scale_f32 v64, vcc_lo, v3, v31, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v64, v40
	v_fma_f32 v70, -v36, v67, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v70, v40
	v_fma_f32 v36, -v36, v67, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v40, v67
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v128, v36, v31, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v22, v35, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v20
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v28, v33
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v33, null, v28, v28, v20
	v_rcp_f32_e32 v40, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v33, v40, 1.0
	v_fmac_f32_e32 v40, v64, v40
	v_div_scale_f32 v64, vcc_lo, v20, v28, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v64, v40
	v_fma_f32 v66, -v33, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v40
	v_fma_f32 v33, -v33, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v33, v33, v40, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v129, v33, v28, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v23, v37, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_mul_f32_e32 v20, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v1, v1
	v_ldexp_f32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v1, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v2
	v_fma_f32 v34, -v2, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v34, v21
	v_div_scale_f32 v34, vcc_lo, v0, v1, v0
	v_mul_f32_e32 v40, v34, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v2, v40, v34
	v_fmac_f32_e32 v40, v64, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v2, v40, v34
	v_div_fmas_f32 v2, v2, v21, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v130, v2, v1, v0
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:568
	scratch_load_b32 v1, off, off offset:4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v3
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v21, null, v31, v31, v3
	v_rcp_f32_e32 v22, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v21, v22, 1.0
	v_fmac_f32_e32 v22, v34, v22
	v_div_scale_f32 v34, vcc_lo, v3, v31, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v34, v22
	v_fma_f32 v36, -v21, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v22
	v_fma_f32 v21, -v21, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v21, v22, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v113, v34, v31, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v3, off, off offset:564 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v33, v33, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v22, -v20, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v28, v33, v28
	v_mul_f32_e32 v23, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v20, v23, v22
	v_fmac_f32_e32 v23, v35, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v23, v22
	v_div_fmas_f32 v35, v20, v21, v23
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	ds_load_b128 v[20:23], v254 offset:37392
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v112, v35, v33, v28
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v28, off, off offset:560
	scratch_load_b32 v33, off, off offset:100
	scratch_load_b32 v31, off, off
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v0, v0, v86
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, v0, v9, v1
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v1, v0, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v1, off, off offset:972 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v28, v28, v86
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, v28, v11, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v33, v28, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v33, off, off offset:968 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v1, v1, v190
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v1, v1, v21, v0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v1, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v36, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v2, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v37, v36
	v_fma_f32 v64, -v2, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v64, v36
	v_fma_f32 v2, -v2, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v2, v2, v36, v40
	v_div_fixup_f32 v111, v2, v1, v0
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:556
	scratch_load_b32 v1, off, off offset:96
	v_mul_f32_e32 v3, v3, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v3, v3, v8, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v31, v3, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v31, v80, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v31, v31, v20, v3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v31, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v31, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v3
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v31, v31, v34
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v33, v33, v190
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v31, v31, v3
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v33, v33, v23, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v36, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v33, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v28
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v34, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v3, v31, v3
	v_mul_f32_e32 v40, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v34, v40, v37
	v_fmac_f32_e32 v40, v64, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v34, v40, v37
	v_div_fmas_f32 v34, v34, v36, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v131, v34, v31, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v68, v69, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v31, 0xbfb8aa3b, v3
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v35
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v33, v33, v28
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v28, v33, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v37, v36
	v_fma_f32 v64, -v35, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v64, v36
	v_fma_f32 v35, -v35, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v35, v35, v36, v40
	v_div_fixup_f32 v110, v35, v33, v28
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v82, v118, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v33, 0xbfb8aa3b, v28 :: v_dual_mul_f32 v0, v0, v86
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v10, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v1, v0, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v160, v190
	scratch_load_b32 v160, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v1, v1, v22, v0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v1, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v36, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v2, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v37, v36
	v_fma_f32 v64, -v2, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v64, v36
	v_fma_f32 v2, -v2, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v36, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v132, v2, v1, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v227, v217, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v3
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v31, v31
	v_ldexp_f32 v31, v31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v31, v31, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v34
	v_fma_f32 v37, -v34, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v3, v31, v3
	v_mul_f32_e32 v40, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v34, v40, v37
	v_fmac_f32_e32 v40, v64, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v34, v40, v37
	v_div_fmas_f32 v34, v34, v36, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v133, v34, v31, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v226, v216, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v31, 0xbfb8aa3b, v3
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v35
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v33, v33, v28
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v28, v33, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v37, v36
	v_fma_f32 v64, -v35, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v64, v36
	v_fma_f32 v35, -v35, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v36, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v135, v35, v33, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v214, v119, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_mul_f32_e32 v33, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v1, v1
	v_ldexp_f32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v1, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v2
	v_fma_f32 v37, -v2, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v0, v1, v0
	v_mul_f32_e32 v40, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v2, v40, v37
	v_fmac_f32_e32 v40, v64, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v2, v40, v37
	v_div_fmas_f32 v2, v2, v36, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v3
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v31, v31, v34
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v31, v31, v3
	v_rcp_f32_e32 v36, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v34, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v3, v31, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v37, v36
	v_fma_f32 v64, -v34, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v64, v36
	v_fma_f32 v34, -v34, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v36, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v33, v33
	v_ldexp_f32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v33, v33, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v35
	v_fma_f32 v37, -v35, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v28, v33, v28
	v_mul_f32_e32 v40, v37, v36
	v_div_fixup_f32 v139, v2, v1, v0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v212, v142, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v64, -v35, v40, v37
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v40, v64, v36
	v_fma_f32 v35, -v35, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v36, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v36, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v2, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v40, v37, v36
	v_div_fixup_f32 v142, v34, v31, v3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v146, v213, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v64, -v2, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v31, 0xbfb8aa3b, v3 :: v_dual_fmac_f32 v40, v64, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v146, v35, v33, v28
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v149, v152, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v2, -v2, v40, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v2, v2, v36, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v3
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v31, v31, v34
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v31, v31, v3
	v_rcp_f32_e32 v36, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v34, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v3, v31, v3
	v_div_fixup_f32 v149, v2, v1, v0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v208, v215, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v40, v37, v36
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v64, -v34, v40, v37
	v_fmac_f32_e32 v40, v64, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v34, v40, v37
	v_div_fmas_f32 v34, v34, v36, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v28
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v35
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v33, v33, v28
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v28, v33, v28
	v_div_fixup_f32 v152, v34, v31, v3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v162, v209, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v40, v37, v36 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v3
	v_fma_f32 v64, -v35, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v64, v36
	v_fma_f32 v35, -v35, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v36, v40
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v162, v35, v33, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v165, v207, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_mul_f32_e32 v33, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v1, v1
	v_ldexp_f32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v1, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v2
	v_fma_f32 v37, -v2, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v0, v1, v0
	v_mul_f32_e32 v40, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v2, v40, v37
	v_fmac_f32_e32 v40, v64, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v2, v40, v37
	v_div_fmas_f32 v2, v2, v36, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v165, v2, v1, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v97, v204, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v31, v31, v34
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v31, v31, v3
	v_rcp_f32_e32 v36, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v34, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v3, v31, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v37, v36
	v_fma_f32 v64, -v34, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v64, v36
	v_fma_f32 v34, -v34, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v36, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v204, v34, v31, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v3, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v33, v33
	v_ldexp_f32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v33, v33, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v35
	v_fma_f32 v37, -v35, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v28, v33, v28
	v_mul_f32_e32 v40, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v35, v40, v37
	v_fmac_f32_e32 v40, v64, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v35, v40, v37
	v_div_fmas_f32 v35, v35, v36, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v161, v35, v33, v28
	scratch_load_b32 v28, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v1, v1
	v_ldexp_f32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v1, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v2
	v_fma_f32 v37, -v2, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v0, v1, v0
	v_mul_f32_e32 v40, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v2, v40, v37
	v_fmac_f32_e32 v40, v64, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v2, v40, v37
	v_div_fmas_f32 v2, v2, v36, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v207, v2, v1, v0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v225, v211, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v3, v3, v85
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v3, v3, v9, v28
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v28, v3, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v28, off, off offset:960 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v28, v28, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v28, v28, v21, v3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v28, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v3
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v28, v31
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v28, v28, v3
	v_rcp_f32_e32 v33, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v31, v33, 1.0
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v3, v28, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v34, v33
	v_fma_f32 v36, -v31, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v33
	v_fma_f32 v31, -v31, v35, v34
	scratch_load_b32 v34, off, off offset:88 ; 4-byte Folded Reload
	v_div_fmas_f32 v31, v31, v33, v35
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v33, off, off offset:548 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v33, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v33, v33, v8, v34
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v34, v33, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v34, v243, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v34, v34, v20, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v34, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v33
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v35
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v34, v34, v33
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v37, v36
	v_fma_f32 v64, -v35, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v64, v36
	v_fma_f32 v35, -v35, v40, v37
	scratch_load_b32 v37, off, off offset:84 ; 4-byte Folded Reload
	v_div_fmas_f32 v35, v35, v36, v40
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v36, off, off offset:544 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v108, v35, v34, v33
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v36, v36, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v36, v36, v11, v37
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v37, v36, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v37, off, off offset:956 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v37, v37, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v37, v37, v23, v36
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v36, v37, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v36
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v36
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v37, v37, v40
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v37, v37, v36
	v_rcp_f32_e32 v64, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v40, v64, 1.0
	v_fmac_f32_e32 v64, v65, v64
	v_div_scale_f32 v65, vcc_lo, v36, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v65, v64
	v_fma_f32 v67, -v40, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v64
	v_fma_f32 v40, -v40, v66, v65
	scratch_load_b32 v65, off, off offset:80 ; 4-byte Folded Reload
	v_div_fmas_f32 v40, v40, v64, v66
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v64, off, off offset:540 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v107, v40, v37, v36
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v64, v64, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v64, v64, v10, v65
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v65, v64, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v65, off, off offset:952 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v65, v65, v71
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v109, v31, v28, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v65, v65, v22, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v64, v65, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v64
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v64
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v65, v65, v64
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v64, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v67
	v_fma_f32 v70, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v67
	v_fma_f32 v66, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v66, v67, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v106, v66, v65, v64
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v3, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v2, v3, 1.0
	v_fmac_f32_e32 v3, v28, v3
	v_div_scale_f32 v28, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v31, v28, v3
	v_fma_f32 v33, -v2, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v33, v3
	v_fma_f32 v2, -v2, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v3, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v223, v210, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v205, v2, v1, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v150, v203, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v28, v28, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v28, v28, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v31
	v_fma_f32 v34, -v31, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v3, v28, v3
	v_mul_f32_e32 v35, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v31, v35, v34
	v_fmac_f32_e32 v35, v36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v31, v35, v34
	v_div_fmas_f32 v31, v31, v33, v35
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v231, v154, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v33
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v35
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v34, v34, v33
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v37, v36
	v_fma_f32 v64, -v35, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v64, v36
	v_fma_f32 v35, -v35, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v36, v40
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v158, v166, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v166, v31, v28, v3
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v37, v37
	v_ldexp_f32 v37, v37, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v37, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v64, v40
	v_fma_f32 v65, -v40, v64, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v65, v64
	v_div_scale_f32 v65, vcc_lo, v36, v37, v36
	v_mul_f32_e32 v66, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v40, v66, v65
	v_fmac_f32_e32 v66, v67, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v40, v66, v65
	v_div_fmas_f32 v40, v40, v64, v66
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v164, v206, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v164, v35, v34, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v82, v40, v37, v36
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v65, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v64, v65, v64
	v_mul_f32_e32 v69, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v66, v69, v68
	v_fmac_f32_e32 v69, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v69, v68
	v_div_fmas_f32 v66, v66, v67, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v158, v66, v65, v64
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v1, v1
	v_ldexp_f32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v1, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v3, v2
	v_fma_f32 v28, -v2, v3, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v3, v28, v3
	v_div_scale_f32 v28, vcc_lo, v0, v1, v0
	v_mul_f32_e32 v31, v28, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v2, v31, v28
	v_fmac_f32_e32 v31, v33, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v2, v31, v28
	v_div_fmas_f32 v2, v2, v3, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v145, v159, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v3
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v28, v31
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v28, v28, v3
	v_rcp_f32_e32 v33, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v31, v33, 1.0
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v3, v28, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v34, v33
	v_fma_f32 v36, -v31, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v33
	v_fma_f32 v31, -v31, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v31, v31, v33, v35
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v141, v147, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v147, v31, v28, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v33
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v35
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v34, v34, v33
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v37, v36
	v_fma_f32 v64, -v35, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v64, v36
	v_fma_f32 v35, -v35, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v36, v40
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v148, v163, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v148, v2, v1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v136, v144, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v145, v35, v34, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v36
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v37, v37
	v_ldexp_f32 v37, v37, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v37, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v64, v40
	v_fma_f32 v65, -v40, v64, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v65, v64
	v_div_scale_f32 v65, vcc_lo, v36, v37, v36
	v_mul_f32_e32 v66, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v40, v66, v65
	v_fmac_f32_e32 v66, v67, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v40, v66, v65
	v_div_fmas_f32 v40, v40, v64, v66
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v143, v151, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v143, v40, v37, v36
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v65, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v64, v65, v64
	v_mul_f32_e32 v69, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v66, v69, v68
	v_fmac_f32_e32 v69, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v69, v68
	v_div_fmas_f32 v66, v66, v67, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v3, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v2, v3, 1.0
	v_fmac_f32_e32 v3, v28, v3
	v_div_scale_f32 v28, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v31, v28, v3
	v_fma_f32 v33, -v2, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v33, v3
	v_fma_f32 v2, -v2, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v3, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v134, v140, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v134, v2, v1, v0
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:528
	scratch_load_b32 v1, off, off offset:76
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v28, v28, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v28, v28, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v31
	v_fma_f32 v34, -v31, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v3, v28, v3
	v_mul_f32_e32 v35, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v31, v35, v34
	v_fmac_f32_e32 v35, v36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v31, v35, v34
	v_div_fmas_f32 v31, v31, v33, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v140, v31, v28, v3
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v0, v0, v84
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v9, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v1, v0, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v1, off, off offset:948 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v1, v1, v49
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v1, v1, v21, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v1, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v1, v1
	v_ldexp_f32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v1, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v2
	v_fma_f32 v34, -v2, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v0, v1, v0
	v_mul_f32_e32 v35, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v2, v35, v34
	v_fmac_f32_e32 v35, v36, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v2, -v2, v35, v34
	scratch_load_b32 v34, off, off offset:72 ; 4-byte Folded Reload
	v_div_fmas_f32 v2, v2, v33, v35
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v33, off, off offset:512 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v105, v2, v1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v170, v157, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v33, v84
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v33, v33, v8, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v34, v33, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v34, v242, v49
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v34, v34, v20, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v34, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v34, v34
	v_ldexp_f32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v34, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v35
	v_fma_f32 v37, -v35, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v33, v34, v33
	v_mul_f32_e32 v40, v37, v36
	v_div_fixup_f32 v141, v66, v65, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v35, v40, v37
	v_fmac_f32_e32 v40, v64, v36
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v35, -v35, v40, v37
	scratch_load_b32 v37, off, off offset:68 ; 4-byte Folded Reload
	v_div_fmas_f32 v35, v35, v36, v40
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v36, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v104, v35, v34, v33
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v36, v36, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v36, v36, v11, v37
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v37, v36, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v37, off, off offset:944 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v37, v37, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v37, v37, v23, v36
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v36, v37, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v36
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v36
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v37, v37, v40
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v37, v37, v36
	v_rcp_f32_e32 v64, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v40, v64, 1.0
	v_fmac_f32_e32 v64, v65, v64
	v_div_scale_f32 v65, vcc_lo, v36, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v65, v64
	v_fma_f32 v67, -v40, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v64
	v_fma_f32 v40, -v40, v66, v65
	scratch_load_b32 v65, off, off offset:64 ; 4-byte Folded Reload
	v_div_fmas_f32 v40, v40, v64, v66
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v64, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v103, v40, v37, v36
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v64, v64, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v64, v64, v10, v65
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v65, v64, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v65, off, off offset:940 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v65, v65, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v65, v65, v22, v64
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v64, v65, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v64
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v64
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v65, v65, v64
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v64, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v67
	v_fma_f32 v70, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v67
	v_fma_f32 v66, -v66, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v66, v67, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v102, v66, v65, v64
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v3, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v2, v3, 1.0
	v_fmac_f32_e32 v3, v28, v3
	v_div_scale_f32 v28, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v31, v28, v3
	v_fma_f32 v33, -v2, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v33, v3
	v_fma_f32 v2, -v2, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v3, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v169, v156, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v136, v2, v1, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v168, v155, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v28, v28, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v28, v28, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v31
	v_fma_f32 v34, -v31, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v3, v28, v3
	v_mul_f32_e32 v35, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v31, v35, v34
	v_fmac_f32_e32 v35, v36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v31, v35, v34
	v_div_fmas_f32 v31, v31, v33, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v154, v31, v28, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v1, v1
	v_ldexp_f32 v1, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v1, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v2
	v_fma_f32 v34, -v2, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v0, v1, v0
	v_mul_f32_e32 v35, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v2, v35, v34
	v_fmac_f32_e32 v35, v36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v2, v35, v34
	v_div_fmas_f32 v2, v2, v33, v35
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v167, v244, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v151, v2, v1, v0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v45, v228, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_mul_f32_e32 v1, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v35
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v34, v34, v33
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v37, v36
	v_fma_f32 v64, -v35, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v64, v36
	v_fma_f32 v35, -v35, v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v36, v40
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v153, v138, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v153, v35, v34, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v36
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v36
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v37, v37, v40
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v37, v37, v36
	v_rcp_f32_e32 v64, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v40, v64, 1.0
	v_fmac_f32_e32 v64, v65, v64
	v_div_scale_f32 v65, vcc_lo, v36, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v65, v64
	v_fma_f32 v67, -v40, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v64
	v_fma_f32 v40, -v40, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v40, v40, v64, v66
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v64, 0xbfb8aa3b, v46
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v64
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v46
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v64, v64, v65
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v64, 1.0, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v65, null, v64, v64, v46
	v_rcp_f32_e32 v66, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v65, v66, 1.0
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v46, v64, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v66
	v_fma_f32 v69, -v65, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v66
	v_fma_f32 v65, -v65, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v65, v65, v66, v68
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v137, v65, v64, v46
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v0
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v1, v1, v2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v1, v1, v0
	v_rcp_f32_e32 v3, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v2, v3, 1.0
	v_fmac_f32_e32 v3, v28, v3
	v_div_scale_f32 v28, vcc_lo, v0, v1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v31, v28, v3
	v_fma_f32 v33, -v2, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v33, v3
	v_fma_f32 v2, -v2, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v3, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v3, 0xbfb8aa3b, v114
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v144, v2, v1, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v201, v247, s3
	v_cndmask_b32_e64 v0, v202, v248, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.h, v32.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v1, v1, v121 :: v_dual_mul_f32 v0, v0, v120
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v1, v1
	v_mov_b16_e32 v2.l, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v3, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v3, v3, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v115, 1.0, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v3, null, v115, v115, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v3
	v_fma_f32 v31, -v3, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v31, v28
	v_div_scale_f32 v31, vcc_lo, v114, v115, v114
	v_mul_f32_e32 v33, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v3, v33, v31
	v_fmac_f32_e32 v33, v34, v28
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v34, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v3, -v3, v33, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.h, v32.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v150, v3, v28, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e32 v3.h, v32.l
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v28.h, v32.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v200, v194, s3
	scratch_load_b32 v33, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v3, 1, v3
	v_cndmask_b16 v44.h, 0x7fff, v2.h, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v185, v51, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v122
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v51, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v199, v193, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v125
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v44.l, 0x7fff, v3.h, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v123
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v2, v2
	v_mov_b16_e32 v3.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v28.l, v1.h
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v3, v0, v3, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v184, v52, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v52, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v1, v28, 0x7fff
	v_mov_b16_e32 v1.l, v2.h
	v_mov_b16_e32 v1.h, v32.l
	v_cndmask_b16 v45.h, 0x7fff, v3.h, vcc_lo
	scratch_load_b32 v3, off, off offset:220 ; 4-byte Folded Reload
	v_cndmask_b16 v45.l, 0x7fff, v28.h, s1
	scratch_load_b32 v28, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v0, v0, v126 :: v_dual_and_b32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v1, v2, v1, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v183, v249, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s5, v0, v0
	v_cndmask_b16 v46.h, 0x7fff, v1.h, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v127
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.h, v32.l
	v_and_b32_e32 v31, 1, v31
	v_mov_b16_e32 v1.l, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v31, v0, v31, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v182, v186, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v1, 1, v1
	v_cndmask_b16 v46.l, 0x7fff, v31.h, s5
	scratch_load_b32 v31, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v128
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v1, v2, v1, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v2, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v0, v0
	v_cndmask_b16 v98.h, 0x7fff, v1.h, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v34, v34, v190 :: v_dual_mul_f32 v51, v51, v27
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v52, v52, v27
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v2, v2, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v2, v2, v5, v3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v3, v2, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v3, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v3, v3, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v3, v3, v4, v28
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v28, v3, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v28, off, off offset:536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v28, v28, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v28, v28, v17, v2
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v28, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v28, off, off offset:532 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v2, v2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v28, v28, v190
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v28, v28, v16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v28, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e32 v28.h, v32.l
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v28, v0, v28, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v3, v130
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v2.h
	v_mov_b16_e32 v3.h, v32.l
	v_cndmask_b16 v98.l, 0x7fff, v28.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s5, v0, v0
	scratch_load_b32 v28, off, off offset:56 ; 4-byte Folded Reload
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v3, v2, v3, 0x7fff
	v_mov_b16_e32 v2.l, v0.h
	v_mov_b16_e32 v2.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b16 v99.h, 0x7fff, v3.h, s4
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v3, off, off offset:60
	scratch_load_b128 v[64:67], off, off offset:916
	v_and_b32_e32 v2, 1, v2
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v0, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v99.l, 0x7fff, v2.h, s5
	v_mov_b16_e32 v2.h, v32.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v0, v0, v7, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v31, v0, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v31, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v31, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v31, v31, v6, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v33, v31, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v33, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v33, v19, v0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v33, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v2, 1, v2
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v0, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v74.h, 0x7fff, v2.h, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v198, v192, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v133
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v86
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v0, v0, v65, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v3, v0, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v3, off, off offset:380 ; 4-byte Folded Reload
	v_mul_f32_e32 v33, v33, v190
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v33, v18, v31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v33, s3
	scratch_load_b32 v33, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v31, v112
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v31, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v3, v3, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v3, v3, v64, v28
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v28, v3, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v28, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v28, v28, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v28, v28, v13, v0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v28, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v28, off, off offset:508 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v0, v0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v28, v28, v190
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v28, v28, v12, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v28, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v1.h
	v_mov_b16_e32 v28.h, v32.l
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v28, v1, v28, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v3, v131
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v0.h
	v_mov_b16_e32 v3.h, v32.l
	v_cndmask_b16 v74.l, 0x7fff, v28.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s5, v1, v1
	v_mov_b16_e32 v28.h, v32.l
	v_and_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v0, v3, 0x7fff
	v_mov_b16_e32 v0.l, v1.h
	v_mov_b16_e32 v0.h, v32.l
	v_cndmask_b16 v94.h, 0x7fff, v3.h, s4
	v_mov_b16_e32 v3.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v0, 1, v0
	v_cmp_o_f32_e64 s4, v2, v2
	v_add3_u32 v0, v1, v0, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v1, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v94.l, 0x7fff, v0.h, s5
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v1, v1, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v1, v1, v67, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v33, v1, s2
	scratch_load_b32 v33, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v31, v31, v86
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, v31, v66, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v33, v31, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v33, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v33, v15, v1
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v33, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v34, v14, v31
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v34, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 385 15 is_stmt 1              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v110
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v33, s3
	scratch_load_b32 v33, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v1.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v31, v132
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_mov_b16_e32 v31.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v28.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v197, v191, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v95.h, 0x7fff, v3.h, vcc_lo
	v_mov_b16_e32 v3.h, v32.l
	v_add3_u32 v28, v0, v28, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v1, v135
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v2.h
	v_mov_b16_e32 v1.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v95.l, 0x7fff, v28.h, s1
	v_mov_b16_e32 v31.l, v0.h
	v_cmp_o_f32_e64 s5, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v1, 1, v1
	v_mov_b16_e32 v28.h, v32.l
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v1, v2, v1, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v196, v189, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v0, v31, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v195, v188, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v96.h, 0x7fff, v1.h, s4
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v139
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v178, v181, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v96.l, 0x7fff, v31.h, s5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v142
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.h, v32.l
	v_mov_b16_e32 v3.l, v2.h
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v146
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	v_and_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v1, v1
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v2, v3, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v177, v180, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v0, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v97.h, 0x7fff, v3.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v2, v149
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v1.h
	v_mov_b16_e32 v2.h, v32.l
	scratch_load_b32 v3, off, off offset:200 ; 4-byte Folded Reload
	v_cndmask_b16 v97.l, 0x7fff, v28.h, s1
	scratch_load_b32 v28, off, off offset:196 ; 4-byte Folded Reload
	v_mov_b16_e32 v31.l, v0.h
	v_and_b32_e32 v2, 1, v2
	v_cmp_o_f32_e64 s5, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v2, v1, v2, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v176, v179, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v0, v31, 0x7fff
	v_cndmask_b16 v100.h, 0x7fff, v2.h, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v152
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.h, v32.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v175, v174, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v100.l, 0x7fff, v31.h, s5
	scratch_load_b32 v31, off, off offset:192 ; 4-byte Folded Reload
	v_mov_b16_e32 v2.l, v1.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v2, 1, v2
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v2, v1, v2, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v1, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v90.h, 0x7fff, v2.h, vcc_lo
	v_mov_b16_e32 v2.h, v32.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v34, v34, v71 :: v_dual_mul_f32 v1, v1, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v1, v1, v5, v3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v3, v1, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v3, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v3, v3, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v3, v3, v4, v28
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v28, v3, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v28, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v28, v28, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v28, v28, v17, v1
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v28, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v28, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v1, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v28, v28, v71
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v28, v28, v16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v28, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e32 v28.h, v32.l
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v28, v0, v28, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v3, v204
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e32 v3.h, v32.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v138, v40, v37, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v90.l, 0x7fff, v28.h, s1
	v_cmp_o_f32_e64 s5, v0, v0
	scratch_load_b32 v28, off, off offset:168 ; 4-byte Folded Reload
	v_and_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v1, v3, 0x7fff
	v_mov_b16_e32 v1.l, v0.h
	v_mov_b16_e32 v1.h, v32.l
	v_cndmask_b16 v91.h, 0x7fff, v3.h, s4
	scratch_load_b32 v3, off, off offset:184 ; 4-byte Folded Reload
	v_and_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v1, v0, v1, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v0, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v91.l, 0x7fff, v1.h, s5
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v85
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v0, v0, v7, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v31, v0, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v31, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v31, v85
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v31, v31, v6, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v33, v31, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v33, v71
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v33, v19, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v33, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v161
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v0, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v35.h, 0x7fff, v2.h, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v60, v187, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v205
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v0, v0, v65, v3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v3, v0, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v3, off, off offset:340 ; 4-byte Folded Reload
	v_mul_f32_e32 v33, v33, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v33, v18, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v33, s3
	scratch_load_b32 v33, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v31, v207
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v31, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v3, v3, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v3, v3, v64, v28
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v28, v3, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v28, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v31, v31, v85 :: v_dual_mul_f32 v28, v28, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v28, v28, v13, v0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v28, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v28, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v0, v0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v28, v28, v71
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v28, v28, v12, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v28, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v1.h
	v_mov_b16_e32 v28.h, v32.l
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v28, v1, v28, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v3, v108
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v0.h
	v_mov_b16_e32 v3.h, v32.l
	v_cndmask_b16 v35.l, 0x7fff, v28.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s5, v1, v1
	v_mov_b16_e32 v28.h, v32.l
	v_and_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v0, v3, 0x7fff
	v_mov_b16_e32 v0.l, v1.h
	v_mov_b16_e32 v0.h, v32.l
	v_and_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v1, v0, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v1, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v1, v1, v85
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v1, v1, v67, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v33, v1, s2
	scratch_load_b32 v33, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v31, v31, v66, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v33, v31, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v33, v71
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v71.h, 0x7fff, v3.h, s4
	v_cndmask_b16 v71.l, 0x7fff, v0.h, s5
	v_mov_b16_e32 v3.h, v32.l
	v_cmp_o_f32_e64 s4, v2, v2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v33, v15, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v33, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v34, v14, v31
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v33, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v33.h, v32.l
	v_mov_b16_e32 v3.l, v1.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v31, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_mov_b16_e32 v31.l, v2.h
	v_mov_b16_e32 v31.h, v32.l
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v28.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v59, v241, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v31, v2, v31, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v57, v255, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v57.h, 0x7fff, v3.h, vcc_lo
	v_add3_u32 v28, v0, v28, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v1, v166
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v58, v245, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.h, v32.l
	v_cndmask_b16 v58.h, 0x7fff, v31.h, s4
	v_cndmask_b16 v57.l, 0x7fff, v28.h, s1
	v_mov_b16_e32 v33.l, v0.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v164
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v0, v0
	v_mov_b16_e32 v28.h, v32.l
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v31, off, off offset:44
	scratch_load_b32 v255, off, off offset:104
	v_and_b32_e32 v33, 1, v33
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v33, v0, v33, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v2, v82
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v1.h
	v_mov_b16_e32 v2.h, v32.l
	v_cndmask_b16 v58.l, 0x7fff, v33.h, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v3.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v2, v1, v2, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v77, v252, s3
	scratch_load_b32 v252, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v0, v3, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v63, v172, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v59.h, 0x7fff, v2.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v158
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v62, v171, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v59.l, 0x7fff, v3.h, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v148
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.h, v32.l
	v_mov_b16_e32 v3.l, v1.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v147
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	v_and_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v2, v2
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v61, v81, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v0, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v60.h, 0x7fff, v3.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v1, v145
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v2.h
	v_mov_b16_e32 v1.h, v32.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:308
	scratch_load_b32 v33, off, off offset:40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v0, v0
	v_cndmask_b16 v60.l, 0x7fff, v28.h, s1
	v_and_b32_e32 v1, 1, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v28, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v1, v2, v1, 0x7fff
	v_mov_b16_e32 v2.l, v0.h
	v_mov_b16_e32 v2.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v61.h, 0x7fff, v1.h, s4
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v61.l, 0x7fff, v2.h, s5
	v_mov_b16_e32 v2.h, v32.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v3, v3, v84 :: v_dual_mul_f32 v28, v28, v49
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v0, v0, v5, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v31, v0, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v31, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v31, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v31, v31, v4, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v33, v31, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v33, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v33, v17, v0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v33, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v2, 1, v2
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v0, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v62.h, 0x7fff, v2.h, vcc_lo
	v_mov_b16_e32 v2.h, v32.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v33, v33, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v33, v16, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v33, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v31, v141
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v31, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v0, v0, v84
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v0, v0, v7, v255
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v255, v0, s2
	scratch_load_b32 v255, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v3, v3, v6, v252
	v_fma_f32 v28, v28, v19, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v252, v3, s2
	scratch_load_b32 v252, off, off offset:32 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v0, v0, v28, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v28, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v134
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v0, v0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v33, v33, v49
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v31, v31, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v31, v31, v64, v251
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v251, v31, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v28, v28, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v28, v28, v18, v3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v28, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v1.h
	v_mov_b16_e32 v28.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v28, v1, v28, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v3, v140
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v0.h
	v_mov_b16_e32 v3.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v62.l, 0x7fff, v28.h, s1
	v_cmp_o_f32_e64 s5, v1, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v28, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v0, v3, 0x7fff
	v_mov_b16_e32 v0.l, v1.h
	v_mov_b16_e32 v0.h, v32.l
	v_cndmask_b16 v63.h, 0x7fff, v3.h, s4
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v3, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v0, v1, v0, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v1, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v63.l, 0x7fff, v0.h, s5
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v28, v28, v49 :: v_dual_mul_f32 v3, v3, v84
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v1, v1, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v1, v1, v65, v255
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v255, v1, s2
	scratch_load_b32 v255, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v33, v13, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v33, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v105
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v1.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v1, v2, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v1, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v33, v33, v49
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v33, v12, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v33, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v33.h, 0x7fff, v2.h, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v78, v250, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v31, v104
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v31, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v1, v1, v84
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v1, v1, v67, v252
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v252, v1, s2
	scratch_load_b32 v252, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v3, v3, v66, v255
	v_fma_f32 v28, v28, v15, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v255, v3, s2
	v_cndmask_b32_e64 v1, v1, v28, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v1, v103
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v1, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v31, v31, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v28, v31, v14, v3
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.h, v32.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v28, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e32 v28.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v28, v0, v28, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v3, v102
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e32 v3.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v33.l, 0x7fff, v28.h, s1
	v_mov_b16_e32 v31.l, v0.h
	v_cmp_o_f32_e64 s5, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 1, v3
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v26, v54, s3
	v_cndmask_b32_e64 v26, v24, v53, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v0, v31, 0x7fff
	v_mov_b16_e32 v24.h, v32.l
	v_cndmask_b16 v49.h, 0x7fff, v3.h, s4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v0, v1, v136 :: v_dual_mul_f32 v1, v26, v154
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v25, v253, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v49.l, 0x7fff, v31.h, s5
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v54, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v24, v0, v24, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v2, v151
	v_mul_f32_e32 v2, v3, v153
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e32 v3.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v0, v0
	v_and_b32_e32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v1, v3, 0x7fff
	v_mov_b16_e32 v1.l, v0.h
	v_mov_b16_e32 v1.h, v32.l
	v_and_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v1, v0, v1, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v41, v43, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v41.h, 0x7fff, v24.h, vcc_lo
	v_cndmask_b16 v41.l, 0x7fff, v3.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v83, v56, s3
	v_cndmask_b32_e64 v24, v47, v55, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v25, 0xbfb8aa3b, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	v_cndmask_b16 v31.h, 0x7fff, v1.h, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v34, v24, v137
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.l, v2.h
	v_mov_b16_e32 v25.h, v32.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v26, 0xbfb8aa3b, v0 :: v_dual_and_b32 v25, 1, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v25, v2, v25, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v3, v138
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v75, v42, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.l, 0x7fff, v25.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v25.l, v2.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.h, v32.l
	v_cmp_o_f32_e64 s1, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, s5
	v_ldexp_f32 v24, v26, v24
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v36, v2, v25, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, s5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v29, v48, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v3
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v24
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v30, v50, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v150, v115, v114
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v42, v24, v144 :: v_dual_mul_f32 v43, v26, v29
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	scratch_load_b32 v29, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v1, v1, v2
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v37, v37, v0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v25, v2
	v_div_scale_f32 v28, null, v1, v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v28
	v_fma_f32 v30, -v2, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v25, v30, v25
	v_div_scale_f32 v30, vcc_lo, v0, v37, v0
	v_fma_f32 v24, -v28, v40, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v26, v30, v25
	v_fmac_f32_e32 v40, v24, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v2, v26, v30
	v_fmac_f32_e32 v26, v24, v25
	v_div_scale_f32 v24, s4, v3, v1, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v2, -v2, v26, v30
	v_mul_f32_e32 v30, v24, v40
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v25, v26
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	scratch_load_b32 v26, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v28, v30, v24
	s_mov_b32 vcc_lo, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v42, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v2, v37, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.h, v32.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v30, v25, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.l, v34.h
	v_mov_b16_e32 v25.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v28, v30, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v48, 1, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v40, v24, v40, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_add3_u32 v30, v34, v48, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.l, v42.h
	v_mov_b16_e32 v48.h, v32.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v1, v40, v1, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v36.l, 0x7fff, v30.h, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v30, off, off offset:280
	scratch_load_b32 v255, off, off offset:160
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v34
	v_mul_f32_e32 v34, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v50, 0, 0x42800000, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v39
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v54, v54, v27
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(3)
	v_lshrrev_b32_e32 v47, 1, v29
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v26, s27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[24:25], null, s27, 48, v[26:27]
	v_add3_u32 v25, s33, s26, v47
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v47, 1, v48
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v29, s27, 4, v26
	v_lshl_add_u32 v28, s27, 5, v26
	s_mov_b32 s27, 0x31027000
	v_add_lshl_u32 v26, v25, v26, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v42, v47, 0x7fff
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v47, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v38
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v48, v30, v32
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v30, 0x80, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v5, v48, v5, v252
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.l, v43.h
	v_mov_b16_e32 v48.h, v32.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v252, v5, s2
	scratch_load_b32 v252, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v48, 1, v48
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v17, v51, v17, v5
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v51, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v48, v43, v48, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v17, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v5, v0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v47, v47, v32
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v4, v47, v4, v255
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v47, v50
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v255, v4, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v16, v52, v16, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v47, v47, v50
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v52, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v16, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v42, v50
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v42, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v34.l, 0x7fff, v48.h, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v48, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v2, null, v47, v47, v39
	v_div_scale_f32 v43, vcc_lo, v39, v47, v39
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v16, 1.0, v17
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v4, v1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v0.h
	v_mov_b16_e32 v4.h, v32.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v3, v2
	v_div_scale_f32 v5, null, v16, v16, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v1.h
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v4, 1, v4
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v51, v51, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v17, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v4, v0, v4, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v2, v3, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v1, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v3, v40, v3
	v_fma_f32 v40, -v5, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v17, v40, v17
	v_div_scale_f32 v40, s1, v38, v16, v38
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v52, v52, v27
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v42, v42, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v7, v42, v7, v160
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v42, v43, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v160, v7, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v2, v42, v43
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v19, v54, v19, v7
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v50, v3
	scratch_load_b32 v50, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v19, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v2, -v2, v42, v43
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v43, off, off offset:936 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v2, v2, v3, v42
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v2, v47, v39
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v7, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v2.h
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(1)
	v_fma_f32 v9, v51, v9, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v50, v9, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v43, v43, v27
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v3, v43, v21, v9
	scratch_load_b32 v21, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v48, v48, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v9, v3, s3
	scratch_load_b32 v9, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v6, v48, v6, v252
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v48, v40, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v252, v6, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v53, -v5, v48, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v18, v52, v18, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v48, v53, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v18, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v5, -v5, v48, v40
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:12
	scratch_load_b32 v40, off, off offset:392
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v5, v5, v17, v48
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v17, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v0, 0xbfb8aa3b, v3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v5, v16, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v0.h, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v6, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.h, v32.l
	v_cndmask_b16 v0.l, 0x7fff, v37.h, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:400
	scratch_load_b32 v16, off, off offset:284
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v4, v2, v4, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v40, v40, v27 :: v_dual_mul_f32 v17, v17, v32
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v8, v17, v8, v9
	scratch_load_b32 v17, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v9, v8, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v8, off, off offset:932 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v9, 0, 0x42800000, s1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v37, v37, v27 :: v_dual_mul_f32 v16, v16, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v3
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(1)
	v_fma_f32 v10, v16, v10, v17
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v16, off, off offset:964 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v8, v8, v27
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v17, v10, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v17, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v6, v8, v20, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.l, v5.h
	v_mov_b16_e32 v8.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v7, v6, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v1, 1, v8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v8, v9
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v9, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v7, 0xbfb8aa3b, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v1, v5, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v7, v8, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s1
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v7
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v16, v16, v27 :: v_dual_mul_f32 v9, v9, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v9, v9, v11, v18
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v18, v9, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v220, v27
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v18, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v6
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v17, v17, v32
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v7, v9, v23, v8
	scratch_load_b32 v23, off, off offset:148 ; 4-byte Folded Reload
	v_fma_f32 v9, v16, v22, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v16, null, v2, v2, v3
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v11, v11
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v17, v17, v65, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v8, v7, s3
	v_cndmask_b32_e64 v8, v10, v9, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v9, v16
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v21, v17, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v21, s5, v3, v2, v3
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v19, 0xbfb8aa3b, v7 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v8
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v10, v11, v10
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v13, v37, v13, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v17, v13, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v20, 0, 0x42800000, s4
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v19, 0xbfb8aa3b, v7 :: v_dual_fmac_f32 v20, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v19, v19, v38
	v_ldexp_f32 v20, v20, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, s4, v6, v10, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_add_f32 v20, 1.0, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, null, v19, v19, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v37, v39
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v18, v18, v32
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v11, v18, v64, v23
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fma_f32 v18, -v16, v9, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v23, v11, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v9, v18, v9
	v_div_scale_f32 v18, null, v10, v10, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v12, v40, v12, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v23, v21, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v22, v18
	v_div_scale_f32 v40, null, v20, v20, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v12, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v16, v23, v21
	v_fmac_f32_e32 v23, v42, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v18, v22, 1.0
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v16, -v16, v23, v21
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v22, v43, v22
	scratch_load_b32 v43, off, off offset:144 ; 4-byte Folded Reload
	v_div_fmas_f32 v9, v16, v9, v23
	v_mul_f32_e32 v21, v38, v22
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v12, -v40, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v2, v9, v2, v3
	v_fma_f32 v16, -v18, v21, v38
	v_fma_f32 v3, -v39, v37, 1.0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v9, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v12, v42
	v_div_scale_f32 v12, s5, v8, v20, v8
	v_fmac_f32_e32 v21, v16, v22
	v_fmac_f32_e32 v37, v3, v37
	v_div_scale_f32 v3, s1, v7, v19, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v23, v12, v42
	v_fma_f32 v17, -v18, v21, v38
	scratch_load_b32 v38, off, off offset:140 ; 4-byte Folded Reload
	v_mul_f32_e32 v18, v3, v37
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v13, v2
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v13, v96, v100, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v17, v17, v22, v21
	v_fma_f32 v22, -v40, v23, v12
	v_fma_f32 v21, -v39, v18, v3
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v17, v10, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v23, v22, v42 :: v_dual_fmac_f32 v18, v21, v37
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:368
	scratch_load_b32 v16, off, off offset:224
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v17, v91, v71, s0
	v_cndmask_b32_e64 v22, v61, v59, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v3, -v39, v18, v3
	v_fma_f32 v12, -v40, v23, v12
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v11, v6
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.h, v32.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v3, v3, v37, v18
	s_mov_b32 vcc_lo, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v37, v36, v41, s0
	v_cndmask_b32_e64 v36, v41, v36, s0
	v_cndmask_b32_e64 v18, v57, v35, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v12, v12, v42, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cndmask_b32_e64 v23, v59, v61, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v3, v19, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v19, v35, v57, s0
	v_cndmask_b32_e64 v35, v63, v49, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v12, v20, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.l, v6.h
	v_mov_b16_e32 v8.h, v32.l
	v_cndmask_b16 v4.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b32_e64 v12, v100, v96, s0
	v_cndmask_b32_e64 v20, v60, v58, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v8, 1, v8
	v_add3_u32 v5, v6, v8, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v9, v9, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v9, v9, v67, v43
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v43, v9, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v21, v21, v27 :: v_dual_mul_f32 v16, v16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v16, v16, v66, v38
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v38, v16, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v38, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b16 v1.l, 0x7fff, v5.h, s2
	v_cndmask_b32_e64 v5, v44, v46, s0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v38, v38, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v27, v33, v62, s0
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v10, v38, v14, v16
	v_fma_f32 v14, v21, v15, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v38, v34, v31, s0
	v_cndmask_b32_e64 v31, v31, v34, s0
	v_mov_b32_e32 v34, 0x7632
	v_cndmask_b32_e64 v15, v97, v90, s0
	v_cndmask_b32_e64 v21, v58, v60, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v9, v14, s3
	v_cndmask_b32_e64 v10, v16, v10, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v14, v90, v97, s0
	v_cndmask_b32_e64 v16, v71, v91, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v9, v3
	v_mul_f32_e32 v7, v10, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v2.h
	v_mov_b16_e32 v9.h, v32.l
	v_mov_b16_e32 v10.h, v32.l
	v_cndmask_b32_e64 v32, v62, v33, s0
	v_cndmask_b32_e64 v33, v49, v63, s0
	v_mov_b16_e32 v10.l, v3.h
	v_mov_b16_e32 v11.l, v7.h
	v_and_b32_e32 v9, 1, v9
	v_cmp_o_f32_e64 s3, v3, v3
	v_cmp_o_f32_e64 s4, v7, v7
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v8, 1, v11
	v_add3_u32 v9, v2, v9, 0x7fff
	v_cndmask_b32_e64 v11, v74, v95, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v6, v3, v10, 0x7fff
	v_add3_u32 v2, v7, v8, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v1.h, 0x7fff, v9.h, s1
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v7, v45, v98, s0
	v_cndmask_b32_e64 v9, v99, v94, s0
	v_cndmask_b32_e64 v8, v94, v99, s0
	v_cndmask_b32_e64 v10, v95, v74, s0
	v_permlanex16_b32 v11, v11, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v15, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v17, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v21, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v19, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v3.h, 0x7fff, v6.h, s3
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s4
	v_cndmask_b32_e64 v39, v1, v0, s0
	v_cndmask_b32_e64 v0, v0, v1, s0
	v_mov_b32_e32 v1, 0x5410
	v_cndmask_b32_e64 v2, v46, v44, s0
	v_cndmask_b32_e64 v6, v98, v45, s0
	v_permlanex16_b32 v7, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v40, v3, v4, s0
	v_cndmask_b32_e64 v3, v4, v3, s0
	v_permlanex16_b32 v4, v5, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v1, 0x1054, v1, s0
	v_cndmask_b32_e64 v5, 0x3276, v34, s0
	v_permlanex16_b32 v43, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v35, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v36, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v31, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v1, v1, 8, v1
	v_lshl_or_b32 v5, v5, 8, v5
	v_permlanex16_b32 v44, v3, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v1, 0x540054, v1
	v_and_b32_e32 v5, 0x760076, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v1, v1, 4, v1
	v_lshl_or_b32 v5, v5, 4, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v41, 0x5040504, v1
	v_and_b32_e32 v42, 0x7060706, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v0, v4, v2, v41
	v_perm_b32 v1, v4, v2, v42
	v_perm_b32 v2, v7, v6, v41
	v_perm_b32 v3, v7, v6, v42
	v_perm_b32 v4, v9, v8, v41
	v_perm_b32 v5, v9, v8, v42
	v_perm_b32 v6, v11, v10, v41
	v_perm_b32 v7, v11, v10, v42
	v_perm_b32 v8, v13, v12, v41
	v_perm_b32 v9, v13, v12, v42
	v_perm_b32 v10, v15, v14, v41
	v_perm_b32 v11, v15, v14, v42
	v_perm_b32 v12, v17, v16, v41
	v_perm_b32 v13, v17, v16, v42
	v_perm_b32 v16, v21, v20, v41
	v_perm_b32 v17, v21, v20, v42
	v_perm_b32 v20, v32, v27, v41
	v_perm_b32 v21, v32, v27, v42
	v_add_lshl_u32 v27, v25, v29, 1
	v_perm_b32 v14, v19, v18, v41
	v_perm_b32 v15, v19, v18, v42
	v_perm_b32 v18, v23, v22, v41
	v_perm_b32 v19, v23, v22, v42
	v_perm_b32 v22, v34, v33, v41
	v_perm_b32 v23, v34, v33, v42
	v_perm_b32 v31, v35, v37, v41
	v_perm_b32 v32, v35, v37, v42
	v_perm_b32 v33, v36, v38, v41
	v_perm_b32 v34, v36, v38, v42
	v_perm_b32 v35, v43, v39, v41
	v_perm_b32 v36, v43, v39, v42
	v_perm_b32 v37, v44, v40, v41
	v_perm_b32 v38, v44, v40, v42
	s_clause 0x2
	buffer_store_b128 v[0:3], v26, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v26, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v27, s[24:27], 0 offen
	v_add_lshl_u32 v0, v30, v29, 1
	v_add_lshl_u32 v1, v25, v28, 1
	v_add_lshl_u32 v2, v30, v28, 1
	v_add_lshl_u32 v3, v25, v24, 1
	v_add_lshl_u32 v4, v30, v24, 1
	s_clause 0x4
	buffer_store_b128 v[12:15], v0, s[24:27], 0 offen
	buffer_store_b128 v[16:19], v1, s[24:27], 0 offen
	buffer_store_b128 v[20:23], v2, s[24:27], 0 offen
	buffer_store_b128 v[31:34], v3, s[24:27], 0 offen
	buffer_store_b128 v[35:38], v4, s[24:27], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1004
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 1004
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 36904
; TotalNumSgprs: 54
; NumVgprs: 256
; ScratchSize: 1004
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 1004
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 325
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
