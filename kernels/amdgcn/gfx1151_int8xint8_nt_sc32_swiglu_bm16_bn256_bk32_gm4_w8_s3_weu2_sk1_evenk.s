	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v73, 15, v0
	v_and_b32_e32 v18, 4, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v4, 1, v73
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s26, 15
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
	s_lshr_b32 s9, s9, 28
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
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s13, s4, 2
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_mul_lo_u32 v3, s12, v3
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s13
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_mul_lo_u32 v2, s12, v2
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
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s14, s2
	s_abs_i32 s17, s16
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s18, s17
	s_sub_i32 s19, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_and_b32_e32 v1, 1, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_lshl_add_u32 v13, v1, 4, v3
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s18, s18
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_mov_b32 s23, s7
	.loc	1 320 34 is_stmt 0              ; generate_amdgcn.py:320:34
	v_lshl_add_u32 v16, s12, 7, v13
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 297 13 is_stmt 1              ; generate_amdgcn.py:297:13
	s_mul_i32 s19, s19, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s13, s18, s19
	s_add_i32 s18, s18, s13
	s_delay_alu instid0(SALU_CYCLE_1)
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
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s14, s12, 31
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s13, s13, s18
	.loc	1 312 26                        ; generate_amdgcn.py:312:26
	s_lshl_b32 s30, s3, 5
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
	s_lshl_b32 s33, s2, 4
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	s_add_i32 s44, s26, s27
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_mul_i32 s2, s33, s12
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	s_mul_i32 s31, s26, s12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s14, 31
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	s_mul_i32 s48, s44, s12
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add3_u32 v17, v2, v4, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	s_add_i32 s2, s31, s30
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_and_b32 s21, s21, 0xffff
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	s_add_i32 s12, s48, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s14, 63
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v3, s2, v13
	v_add_nc_u32_e32 v4, s2, v16
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	v_add_nc_u32_e32 v5, s12, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s34, s30, 32
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	v_add_nc_u32_e32 v6, s12, v16
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v2, s30, v17
	v_add_nc_u32_e32 v7, s34, v17
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e64 v8, 0x80000000, v3, s3
	.loc	1 320 34 is_stmt 0              ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v3, 32, v3
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e64 v10, 0x80000000, v4, s3
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v4, 32, v4
	.loc	1 326 35 is_stmt 1              ; generate_amdgcn.py:326:35
	v_cndmask_b32_e64 v11, 0x80000000, v5, s3
	.loc	1 326 43 is_stmt 0              ; generate_amdgcn.py:326:43
	v_add_nc_u32_e32 v5, 32, v5
	v_add_nc_u32_e32 v14, 32, v6
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v15, 0x80000000, v7, s2
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_cndmask_b32_e64 v12, 0x80000000, v6, s3
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x3
	buffer_load_b128 v[6:9], v8, s[20:23], 0 offen
	buffer_load_b128 v[21:24], v10, s[20:23], 0 offen
	buffer_load_b128 v[25:28], v11, s[20:23], 0 offen
	buffer_load_b128 v[29:32], v12, s[20:23], 0 offen
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_cndmask_b32_e64 v10, 0x80000000, v14, s2
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_clause 0x1
	buffer_load_u16 v2, v2, s[4:7], 0 offen
	buffer_load_u16 v11, v15, s[4:7], 0 offen
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x3
	buffer_load_b128 v[33:36], v3, s[20:23], 0 offen
	buffer_load_b128 v[37:40], v4, s[20:23], 0 offen
	buffer_load_b128 v[41:44], v5, s[20:23], 0 offen
	buffer_load_b128 v[45:48], v10, s[20:23], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_lshlrev_b32_e32 v4, 1, v0
	v_bfe_i32 v5, v0, 6, 1
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_lshlrev_b32_e32 v3, 4, v0
	v_bfe_i32 v10, v0, 3, 1
	s_mov_b32 s12, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v12, 0x17e, v4
	v_and_b32_e32 v5, 0x90, v5
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_and_b32_e32 v14, 0xf70, v3
	v_and_b32_e32 v10, 0x90, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0x5f
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_xor_b32_e32 v19, v5, v12
	v_lshlrev_b32_e32 v5, 5, v0
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_xor_b32_e32 v20, v10, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v10, 0, v19
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v12, 0, v20
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(5)
	ds_store_b16 v10, v2 offset:32768
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_store_b128 v12, v[6:9]
	ds_store_b128 v12, v[21:24] offset:4096
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_store_b128 v12, v[25:28] offset:16384
	ds_store_b128 v12, v[29:32] offset:20480
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b16 v10, v11 offset:33280
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v12, v[33:36] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v12, v[37:40] offset:12288
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	s_waitcnt vmcnt(1)
	ds_store_b128 v12, v[41:44] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v12, v[45:48] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v14, 0x160, v5
	v_and_b32_e32 v2, 4, v0
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_and_or_b32 v15, 0xe00, v3, v14
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr14
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr15
.LBB0_3:                                ; %Flow221
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v6, s33, v73
	v_and_b32_e32 v74, 0xf0, v0
	s_ashr_i32 s35, s13, 5
	v_or_b32_e32 v75, s26, v0
	v_and_b32_e32 v10, 28, v4
	v_mul_lo_u32 v76, v6, s35
	v_lshlrev_b32_e32 v11, 2, v74
	v_lshlrev_b32_e32 v12, 5, v1
	v_lshlrev_b32_e32 v9, 1, v74
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_lshl_b32 s1, s27, 1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 2, 1
	v_dual_mov_b32 v43, 0 :: v_dual_and_b32 v14, 0x160, v5
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_delay_alu instid0(VALU_DEP_1)
	v_and_or_b32 v15, 0xe00, v3, v14
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 0x90, v1
	v_add3_u32 v26, 0, v11, v12
	v_add_nc_u32_e32 v25, s27, v75
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v27, 0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v21, v1, v14
	v_or_b32_e32 v22, v15, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v6, s17
	v_mov_b32_e32 v2, s13
	v_xor_b32_e32 v23, 16, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v24, 16, v22
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v7, s18 :: v_dual_add_nc_u32 v26, v26, v10
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s50, s35, 3
	s_add_i32 s11, s34, 32
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s49, 1
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s46, 0, 0x8200
	s_add_i32 s47, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s50, s50, -3
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s14, s30
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s15, s13, 5
	s_mov_b32 s30, s34
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s34, s11, s15
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s15, s14, 31
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v28, s34, v17
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_lshr_b32 s15, s15, 27
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	s_add_i32 s16, s34, s31
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_add_i32 s14, s14, s15
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	s_add_i32 s17, s34, s48
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s14, s14, 5
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_u16 v40, v28, s[4:7], 0 offen
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s15, s14, s1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v28, v76, s14, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v29, v75, s15, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s14, s35
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_barrier
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v28, 0x80000000, v28 :: v_dual_cndmask_b32 v29, 0x80000000, v29
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v30, s0, v21
	v_add_nc_u32_e32 v31, s0, v23
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v32, s12, v22
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v141, v28, s[36:39], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v29, v29, s[40:43], 0 offen
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v33, s12, v24
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_add_nc_u32_e32 v34, s10, v22
	v_add_nc_u32_e32 v35, s10, v24
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[36:39], v30
	ds_load_b128 v[101:104], v31
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[77:80], v32
	ds_load_b128 v[93:96], v32 offset:4096
	ds_load_b128 v[105:108], v33
	ds_load_b128 v[109:112], v33 offset:4096
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[85:88], v34
	ds_load_b128 v[113:116], v34 offset:4096
	ds_load_b128 v[117:120], v35
	ds_load_b128 v[121:124], v35 offset:4096
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v30, v25, s15, 1
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v81, s16, v13
	v_add_nc_u32_e32 v82, s16, v16
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	v_add_nc_u32_e32 v83, s17, v13
	v_add_nc_u32_e32 v84, s17, v16
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x3
	buffer_load_b128 v[125:128], v81, s[20:23], 0 offen
	buffer_load_b128 v[129:132], v82, s[20:23], 0 offen
	buffer_load_b128 v[133:136], v83, s[20:23], 0 offen
	buffer_load_b128 v[137:140], v84, s[20:23], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s49, 1
	s_mov_b32 s12, s47
	s_cmp_lt_i32 s14, 2
	s_mov_b32 s0, s46
	s_cselect_b32 s49, s14, 0
	s_add_i32 s14, s13, 1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_lshl_b32 s15, s49, 9
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_lshl_b32 s16, s49, 13
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_add_i32 s15, s15, 0
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_add_i32 s47, s16, 0
	s_mov_b32 s10, s45
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_add_i32 s46, s15, 0x8000
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	s_add_i32 s45, s47, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s13, s50
	s_mov_b32 s13, s14
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v28, 16, v29
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v26, v28 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v142, v30, s[40:43], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[28:35], v[77:80], v[36:39], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[36:39], v[1:8] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[85:92], v[93:96], v[36:39], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[93:100], v[113:116], v[36:39], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[77:84], v[117:120], v[101:104], v[77:84] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[28:35], v[105:108], v[101:104], v[28:35] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[109:112], v[101:104], v[85:92] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[93:100], v[121:124], v[101:104], v[93:100] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v36, v77
	v_cvt_f32_i32_e32 v37, v78
	v_cvt_f32_i32_e32 v38, v79
	v_cvt_f32_i32_e32 v39, v80
	v_cvt_f32_i32_e32 v77, v81
	v_cvt_f32_i32_e32 v78, v82
	v_cvt_f32_i32_e32 v79, v83
	v_cvt_f32_i32_e32 v80, v84
	v_cvt_f32_i32_e32 v81, v93
	v_cvt_f32_i32_e32 v93, v97
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v97, 16, v141
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v143, s15, v19
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v144, s47, v20
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v82, v94
	v_cvt_f32_i32_e32 v83, v95
	v_cvt_f32_i32_e32 v84, v96
	v_cvt_f32_i32_e32 v94, v98
	v_cvt_f32_i32_e32 v95, v99
	v_cvt_f32_i32_e32 v96, v100
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v91, v91
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v98, v97, v29
	v_mul_f32_e32 v99, v97, v28
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v100, v37, v97
	v_dual_mul_f32 v101, v36, v97 :: v_dual_mul_f32 v102, v97, v31
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v103, v97, v30 :: v_dual_mul_f32 v104, v39, v97
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v105, v38, v97
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v106, v97, v33
	v_dual_mul_f32 v107, v97, v32 :: v_dual_mul_f32 v108, v78, v97
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v109, v77, v97
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v110, v97, v35
	v_dual_mul_f32 v111, v97, v34 :: v_dual_mul_f32 v112, v80, v97
	v_mul_f32_e32 v91, v97, v91
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v113, v79, v97
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[28:31], v27 offset:33792
	ds_load_b128 v[32:35], v27 offset:33808
	ds_load_b128 v[36:39], v27 offset:34304
	ds_load_b128 v[77:80], v27 offset:34320
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v86, v97, v86
	v_mul_f32_e32 v85, v97, v85
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v115, v81, v97
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v81, v97, v88 :: v_dual_mul_f32 v88, v83, v97
	v_mul_f32_e32 v83, v97, v89
	v_dual_mul_f32 v92, v97, v92 :: v_dual_mul_f32 v95, v95, v97
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v114, v82, v97
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v82, v97, v87 :: v_dual_mul_f32 v87, v84, v97
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v66, v99, v28 :: v_dual_mul_f32 v93, v93, v97
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v54, v111, v34 :: v_dual_fmac_f32 v51, v86, v37
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v67, v98, v29 :: v_dual_fmac_f32 v50, v85, v36
	v_dual_fmac_f32 v62, v103, v30 :: v_dual_fmac_f32 v63, v102, v31
	v_dual_fmac_f32 v58, v107, v32 :: v_dual_fmac_f32 v59, v106, v33
	v_fmac_f32_e32 v48, v81, v39
	v_fmac_f32_e32 v55, v110, v35
	v_fmac_f32_e32 v46, v82, v38
	v_fmac_f32_e32 v44, v83, v77
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v90, v90
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v89, v94, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v41, v92, v80 :: v_dual_mul_f32 v90, v97, v90
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v94, v96, v97 :: v_dual_fmac_f32 v45, v90, v78
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v28, 16, v142
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_store_b32 v26, v28 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[28:31], v27 offset:33792
	ds_load_b128 v[32:35], v27 offset:33808
	ds_load_b128 v[36:39], v27 offset:34304
	ds_load_b128 v[81:84], v27 offset:34320
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v42, v91, v79
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_store_b16 v143, v40 offset:32768
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_store_b128 v144, v[125:128]
	ds_store_b128 v144, v[129:132] offset:4096
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_store_b128 v144, v[133:136] offset:16384
	ds_store_b128 v144, v[137:140] offset:20480
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(8)
	v_dual_fmac_f32 v43, v101, v28 :: v_dual_fmac_f32 v72, v100, v29
	s_waitcnt lgkmcnt(6)
	v_dual_fmac_f32 v57, v87, v39 :: v_dual_fmac_f32 v70, v105, v30
	v_fmac_f32_e32 v65, v112, v35
	v_dual_fmac_f32 v71, v104, v31 :: v_dual_fmac_f32 v68, v109, v32
	v_fmac_f32_e32 v61, v114, v37
	v_dual_fmac_f32 v69, v108, v33 :: v_dual_fmac_f32 v64, v113, v34
	s_waitcnt lgkmcnt(5)
	v_fmac_f32_e32 v47, v95, v83
	v_dual_fmac_f32 v60, v115, v36 :: v_dual_fmac_f32 v53, v89, v82
	v_dual_fmac_f32 v56, v88, v38 :: v_dual_fmac_f32 v49, v94, v84
	v_fmac_f32_e32 v52, v93, v81
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v2, v18
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s46, 0, 0x8200
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v43, 0
	s_add_i32 s47, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cndmask_b32_e64 v2, 0, 1, s3
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v84, 0
	v_cndmask_b32_e64 v1, 0x90, 0, vcc_lo
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v13, v1, v14
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_or_b32_e32 v143, v15, v1
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v1, s0, v13
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_xor_b32_e32 v14, 16, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_xor_b32_e32 v144, 16, v143
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v3, s0, v14
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[5:8], v1
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[1:4], v3
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v79, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
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
	v_add_nc_u32_e32 v15, s12, v143
	v_add_nc_u32_e32 v16, s12, v144
	ds_load_b128 v[31:34], v15
	ds_load_b128 v[35:38], v15 offset:4096
	ds_load_b128 v[77:80], v16
	ds_load_b128 v[81:84], v16 offset:4096
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v15, s16 :: v_dual_mov_b32 v18, s19
	v_dual_mov_b32 v16, s17 :: v_dual_mov_b32 v17, s18
	v_dual_mov_b32 v19, s20 :: v_dual_mov_b32 v20, s21
	v_dual_mov_b32 v21, s22 :: v_dual_mov_b32 v22, s23
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[23:30], v[31:34], v[5:8], v[15:22] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[15:22], v[35:38], v[5:8], v[15:22] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[23:30], v[77:80], v[1:4], v[23:30] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[15:22], v[81:84], v[1:4], v[15:22] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v89, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v90, v26
	v_cvt_f32_i32_e32 v83, v27
	v_cvt_f32_i32_e32 v87, v28
	v_cvt_f32_i32_e32 v84, v29
	v_cvt_f32_i32_e32 v88, v30
	v_cvt_f32_i32_e32 v81, v15
	v_cvt_f32_i32_e32 v85, v16
	v_cvt_f32_i32_e32 v82, v17
	v_cvt_f32_i32_e32 v86, v18
	v_cvt_f32_i32_e32 v77, v19
	v_cvt_f32_i32_e32 v79, v20
	v_cvt_f32_i32_e32 v78, v21
	v_cvt_f32_i32_e32 v80, v22
	v_cvt_f32_i32_e32 v92, v23
	v_cvt_f32_i32_e32 v93, v24
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_mov_b32_e32 v98, 0
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s0
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
	v_add_nc_u32_e32 v15, s10, v143
	v_add_nc_u32_e32 v16, s10, v144
	ds_load_b128 v[31:34], v15
	ds_load_b128 v[35:38], v15 offset:4096
	ds_load_b128 v[94:97], v16
	ds_load_b128 v[98:101], v16 offset:4096
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_dual_mov_b32 v22, s19 :: v_dual_mov_b32 v19, s16
	v_dual_mov_b32 v21, s18 :: v_dual_mov_b32 v20, s17
	v_dual_mov_b32 v18, s15 :: v_dual_mov_b32 v17, s14
	v_dual_mov_b32 v16, s13 :: v_dual_mov_b32 v15, s12
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[23:30], v[31:34], v[5:8], v[15:22] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[15:22], v[35:38], v[5:8], v[15:22] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[23:30], v[94:97], v[1:4], v[23:30] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[15:22], v[98:101], v[1:4], v[15:22] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v110, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v107, v25
	v_cvt_f32_i32_e32 v109, v26
	v_cvt_f32_i32_e32 v105, v27
	v_cvt_f32_i32_e32 v108, v28
	v_cvt_f32_i32_e32 v103, v29
	v_cvt_f32_i32_e32 v106, v30
	v_cvt_f32_i32_e32 v101, v15
	v_cvt_f32_i32_e32 v104, v16
	v_cvt_f32_i32_e32 v99, v17
	v_cvt_f32_i32_e32 v102, v18
	v_cvt_f32_i32_e32 v97, v19
	v_cvt_f32_i32_e32 v100, v20
	v_cvt_f32_i32_e32 v96, v21
	v_cvt_f32_i32_e32 v98, v22
	v_cvt_f32_i32_e32 v91, v23
.LBB0_12:
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 27
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s30, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s30, s10
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s0, 5
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s31, s11
	.loc	1 334 40 is_stmt 0              ; generate_amdgcn.py:334:40
	s_mul_i32 s4, s0, s1
	.loc	1 331 34 is_stmt 1              ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s35
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v76, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v2, v75, s4, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s0
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v146, s44, v0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_add3_u32 v3, 0, v11, v12
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v4, v146, s4, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_and_b32 s9, s9, 0xffff
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v95, 0, v9
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_add_nc_u32_e32 v94, v3, v10
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v145, v1, s[8:11], 0 offen
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v17, s46, v13
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v18, s46, v14
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v116, 0
	v_mov_b32_e32 v113, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s12, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v120, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v94, v2 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v1, v3, s[28:31], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cndmask_b32_e64 v2, 0, 1, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[13:16], v95 offset:33792
	ds_load_b128 v[9:12], v95 offset:33808
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[5:8], v95 offset:34304
	ds_load_b128 v[1:4], v95 offset:34320
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v94, v19 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[37:40], v17
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_b128 v[33:36], v18
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
	v_add_nc_u32_e32 v17, s47, v143
	v_add_nc_u32_e32 v18, s47, v144
	ds_load_b128 v[112:115], v17
	ds_load_b128 v[116:119], v17 offset:4096
	ds_load_b128 v[120:123], v18
	ds_load_b128 v[124:127], v18 offset:4096
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v24, s19 :: v_dual_mov_b32 v21, s16
	v_dual_mov_b32 v23, s18 :: v_dual_mov_b32 v22, s17
	v_dual_mov_b32 v20, s15 :: v_dual_mov_b32 v19, s14
	v_dual_mov_b32 v18, s13 :: v_dual_mov_b32 v17, s12
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[112:115], v[37:40], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[116:119], v[37:40], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[120:123], v[33:36], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[124:127], v[33:36], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v121, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v125, v28
	v_cvt_f32_i32_e32 v114, v29
	v_cvt_f32_i32_e32 v120, v30
	v_cvt_f32_i32_e32 v117, v31
	v_cvt_f32_i32_e32 v122, v32
	v_cvt_f32_i32_e32 v118, v17
	v_cvt_f32_i32_e32 v123, v18
	v_cvt_f32_i32_e32 v119, v19
	v_cvt_f32_i32_e32 v124, v20
	v_cvt_f32_i32_e32 v112, v21
	v_cvt_f32_i32_e32 v115, v22
	v_cvt_f32_i32_e32 v113, v23
	v_cvt_f32_i32_e32 v116, v24
	v_cvt_f32_i32_e32 v126, v25
	v_cvt_f32_i32_e32 v127, v26
.LBB0_14:
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_b128 v[29:32], v95 offset:33792
	ds_load_b128 v[25:28], v95 offset:33808
	ds_load_b128 v[21:24], v95 offset:34304
	ds_load_b128 v[17:20], v95 offset:34320
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v133, 0
	v_mov_b32_e32 v128, 0
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v154, s19 :: v_dual_add_nc_u32 v111, s45, v143
	v_dual_mov_b32 v153, s18 :: v_dual_add_nc_u32 v128, s45, v144
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[136:139], v111
	ds_load_b128 v[140:143], v111 offset:4096
	ds_load_b128 v[155:158], v128
	ds_load_b128 v[159:162], v128 offset:4096
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_dual_mov_b32 v152, s17 :: v_dual_mov_b32 v151, s16
	v_dual_mov_b32 v150, s15 :: v_dual_mov_b32 v149, s14
	v_dual_mov_b32 v148, s13 :: v_dual_mov_b32 v147, s12
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[128:135], v[136:139], v[37:40], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[140:143], v[37:40], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[128:135], v[155:158], v[33:36], v[128:135] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[159:162], v[33:36], v[147:154] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v111, v128
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v139, v129
	v_cvt_f32_i32_e32 v137, v130
	v_cvt_f32_i32_e32 v142, v131
	v_cvt_f32_i32_e32 v130, v132
	v_cvt_f32_i32_e32 v136, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v140, v135
	v_cvt_f32_i32_e32 v132, v147
	v_cvt_f32_i32_e32 v138, v148
	v_cvt_f32_i32_e32 v135, v149
	v_cvt_f32_i32_e32 v141, v150
	v_cvt_f32_i32_e32 v128, v151
	v_cvt_f32_i32_e32 v131, v152
	v_cvt_f32_i32_e32 v129, v153
	v_cvt_f32_i32_e32 v133, v154
.LBB0_16:
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s34, 31
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s30, s10
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_lshr_b32 s0, s0, 27
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s31, s11
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_add_i32 s0, s34, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e32 v36.l, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s0, 5
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_mov_b16_e64 v36.h, v145.l
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s35
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v33, v76, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v34, v75, s1, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v37, s27, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s33, s33, s27
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v39, 0x7632 :: v_dual_mul_f32 v144, v91, v36
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v35, v34, s[28:31], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v34, v33, s[8:11], 0 offen
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v33, v146, s1, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 16, v0
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v143, v110, v36
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v37, s33, s26, v37
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v29, v144, v29, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.h, v36.l
	v_mov_b16_e32 v110.h, v36.l
	v_mov_b16_e32 v91.h, v36.l
	v_mov_b16_e32 v76.h, v36.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v43, v29, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v73.h, v36.l
	v_mov_b16_e32 v75.h, v36.l
	s_mov_b32 s15, 0x76543210
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v0, 0x5410 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v77, v77, v36 :: v_dual_lshlrev_b32 v34, 16, v34
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v99, v99, v36
	v_mul_f32_e32 v96, v96, v36
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v94, v35 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v77, v77, v1, v44
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v145, v93, v36
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v103, v103, v36
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v78, v78, v36
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v35, 1, v74
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v44, v77, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v77, v118, v34
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v19, v96, v19, v47
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v96, v112, v34
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v23, v99, v23, v56
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v109, v109, v36
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v152, v81, v36
	v_mul_f32_e32 v79, v79, v36
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v98, v98, v36
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v80, v80, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v56, v23, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v56, v111, v34
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v14, v145, v14, v67
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v99, v116, v34
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v3, v78, v3, v42
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v78, v138, v34
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v27, v103, v27, v64
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v146, v92, v36
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v100, v100, v36
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v20, v98, v20, v49
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v4, v80, v4, v41
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v1, v37, v35, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v67, v14, s3
	v_cndmask_b32_e64 v27, v64, v27, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v120, v34
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v32, v109, v32, v71
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v67, v130, v34
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v5, v152, v5, v50
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v98, v128, v34
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v2, v79, v2, v45
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v147, v90, v36
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v108, v108, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v71, v32, s3
	v_cndmask_b32_e64 v50, v50, v5, s3
	v_cndmask_b32_e64 v45, v45, v2, s3
	v_cndmask_b32_e64 v19, v47, v19, s3
	v_cndmask_b32_e64 v41, v41, v4, s3
	v_cndmask_b32_e64 v42, v42, v3, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v47, v127, v34
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v13, v146, v13, v66
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v71, v134, v34
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v18, v100, v18, v53
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	ds_load_b128 v[2:5], v95 offset:33792
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v106, v106, v36
	v_dual_mul_f32 v101, v101, v36 :: v_dual_mul_f32 v80, v124, v34
	v_mul_f32_e32 v102, v102, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v66, v13, s3
	v_cndmask_b32_e64 v18, v53, v18, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v53, v139, v34
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v26, v108, v26, v69
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v66, v136, v34
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v16, v147, v16, v63
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v107, v107, v36
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v148, v89, v36
	v_mul_f32_e32 v150, v83, v36
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v104, v104, v36
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v85, v85, v36
	v_dual_mul_f32 v86, v86, v36 :: v_dual_mul_f32 v79, v132, v34
	v_mul_f32_e32 v82, v82, v36
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v21, v101, v21, v60
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v63, v16, s3
	v_cndmask_b32_e64 v26, v69, v26, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v63, v137, v34
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v28, v106, v28, v65
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v69, v117, v34
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v24, v102, v24, v57
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v149, v87, v36
	v_mul_f32_e32 v88, v88, v36
	v_mul_f32_e32 v151, v84, v36
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v97, v97, v36
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v30, v143, v30, v72
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v7, v82, v7, v46
	v_fma_f32 v8, v86, v8, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v65, v28, s3
	v_cndmask_b32_e64 v21, v60, v21, s3
	v_cndmask_b32_e64 v24, v57, v24, s3
	v_cndmask_b32_e64 v20, v49, v20, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v49, v126, v34
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v15, v148, v15, v62
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v57, v125, v34
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v9, v150, v9, v58
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v60, v121, v34
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v31, v107, v31, v70
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v65, v114, v34
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v22, v104, v22, v61
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v82, v119, v34
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v6, v85, v6, v51
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v72, v30, s3
	v_cndmask_b32_e64 v31, v70, v31, s3
	v_cndmask_b32_e64 v62, v62, v15, s3
	v_cndmask_b32_e64 v58, v58, v9, s3
	v_cndmask_b32_e64 v22, v61, v22, s3
	v_cndmask_b32_e64 v51, v51, v6, s3
	v_cndmask_b32_e64 v48, v48, v8, s3
	v_cndmask_b32_e64 v46, v46, v7, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v61, v142, v34
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v12, v88, v12, v55
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v70, v140, v34
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v10, v149, v10, v59
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v72, v123, v34
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v11, v151, v11, v54
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[6:9], v95 offset:33808
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v86, v135, v34
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v17, v97, v17, v52
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v49, v49, v2, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v59, v10, s3
	v_cndmask_b32_e64 v55, v55, v12, s3
	v_cndmask_b32_e64 v54, v54, v11, s3
	v_cndmask_b32_e64 v52, v52, v17, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[10:13], v95 offset:34304
	ds_load_b128 v[14:17], v95 offset:34320
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v47, v47, v3, v35
	v_fma_f32 v60, v60, v4, v62
	v_fma_f32 v57, v57, v5, v43
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v105, v105, v36 :: v_dual_mul_f32 v88, v115, v34
	v_mul_f32_e32 v85, v141, v34
	v_mul_f32_e32 v97, v131, v34
	v_mul_f32_e32 v101, v133, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v25, v105, v25, v68
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v65, v65, v6, v58
	v_fma_f32 v64, v64, v7, v59
	v_fma_f32 v69, v69, v8, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v49, s2
	v_cndmask_b32_e64 v25, v68, v25, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v122, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v59, v64, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v77, v77, v10, v50
	v_fma_f32 v72, v72, v11, v51
	v_fma_f32 v82, v82, v12, v46
	v_fma_f32 v68, v68, v9, v55
	v_fma_f32 v80, v80, v13, v48
	v_fma_f32 v88, v88, v15, v45
	v_fma_f32 v99, v99, v17, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v35, v47, s2
	v_cndmask_b32_e64 v47, v62, v60, s2
	v_cndmask_b32_e64 v43, v43, v57, s2
	v_cndmask_b32_e64 v57, v58, v65, s2
	v_cndmask_b32_e64 v55, v55, v68, s2
	v_cndmask_b32_e64 v54, v54, v69, s2
	v_cndmask_b32_e64 v51, v51, v72, s2
	v_cndmask_b32_e64 v50, v50, v77, s2
	v_cndmask_b32_e64 v48, v48, v80, s2
	v_cndmask_b32_e64 v46, v46, v82, s2
	v_cndmask_b32_e64 v45, v45, v88, s2
	v_cndmask_b32_e64 v41, v41, v99, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v92.h, v36.l
	v_mov_b16_e32 v81.h, v36.l
	v_mov_b16_e32 v89.h, v36.l
	v_mov_b16_e32 v93.h, v36.l
	v_mov_b16_e32 v87.h, v36.l
	v_mov_b16_e32 v90.h, v36.l
	v_mov_b16_e32 v83.h, v36.l
	v_mov_b16_e32 v74.h, v36.l
	v_mov_b16_e32 v84.h, v36.l
	v_mov_b16_e32 v36.h, v36.l
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v33
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v96, v14, v44
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_store_b32 v94, v2 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v95 offset:33792
	ds_load_b128 v[6:9], v95 offset:33808
	ds_load_b128 v[10:13], v95 offset:34304
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v44, v33, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v3, v53, v3, v30
	v_fma_f32 v2, v56, v2, v29
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v6, v67, v6, v25
	v_fma_f32 v9, v70, v9, v28
	v_fma_f32 v5, v61, v5, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v30, v3, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v100, v113, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v29, v2, s2
	v_cndmask_b32_e64 v6, v25, v6, s2
	v_cndmask_b32_e64 v9, v28, v9, s2
	v_cndmask_b32_e64 v5, v32, v5, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v96, v100, v16, v42
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[14:17], v95 offset:34320
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v13, v85, v13, v24
	v_fma_f32 v11, v78, v11, v22
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v34, v129, v34
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v10, v79, v10, v21
	v_fma_f32 v12, v86, v12, v23
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v24, v13, s2
	v_cndmask_b32_e64 v11, v22, v11, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v21, v10, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v5
	v_mul_f32_e32 v29, 0xbfb8aa3b, v13
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v4, v63, v4, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v23, v12, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v7, v66, v7, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v25, 0xbfb8aa3b, v9
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v29
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v21
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v8, v71, v8, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v31, v4, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v15, v97, v15, v18
	v_fma_f32 v16, v34, v16, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v25
	v_cndmask_b32_e64 v29, 0, 0x42800000, s9
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v17, v101, v17, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v18, v15, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v19, v16, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, s5
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v13
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	v_mul_f32_e32 v28, 0xbfb8aa3b, v12
	v_dual_mul_f32 v32, 0xbfb8aa3b, v16 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v29, v29
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v26, v7, s2
	v_cndmask_b32_e64 v8, v27, v8, s2
	v_cndmask_b32_e64 v17, v20, v17, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v20, 0xbfb8aa3b, v4 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v11
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v2
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v32
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v28
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s9
	v_exp_f32_e32 v25, v25
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v14, v98, v14, v52
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v7
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v27
	v_cndmask_b32_e64 v28, 0, 0x42800000, s10
	v_cndmask_b32_e64 v32, 0, 0x42800000, s14
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s5
	v_ldexp_f32 v29, v29, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v52, v14, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v23
	v_cndmask_b32_e64 v27, 0, 0x42800000, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v32, 0xbfb8aa3b, v16 :: v_dual_add_f32 v29, 1.0, v29
	v_ldexp_f32 v25, v25, v60
	v_dual_fmac_f32 v28, 0xbfb8aa3b, v12 :: v_dual_mul_f32 v19, 0xbfb8aa3b, v3
	v_dual_mul_f32 v34, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v27, 0xbfb8aa3b, v11
	v_cndmask_b32_e64 v23, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v30, 0xbfb8aa3b, v14 :: v_dual_add_f32 v25, 1.0, v25
	v_exp_f32_e32 v28, v28
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v78, null, v29, v29, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v7
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v30
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s10
	v_exp_f32_e32 v27, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v109, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0x42800000, s12
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s7
	v_ldexp_f32 v28, v28, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v26, 0xbfb8aa3b, v10 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v3
	v_dual_mul_f32 v24, 0xbfb8aa3b, v8 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_4)
	v_ldexp_f32 v27, v27, v62
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v14
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v126, -v78, v109, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v19, v19
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v96, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v20
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v31
	v_exp_f32_e32 v23, v23
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v30, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v109, v126, v109
	v_div_scale_f32 v80, null, v28, v28, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v22
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v20, 0, 0x42800000, s2
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v26
	v_cndmask_b32_e64 v31, 0, 0x42800000, s11
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v111, v80
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v24
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s1
	v_ldexp_f32 v19, v19, v44
	v_cndmask_b32_e64 v26, 0, 0x42800000, s8
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v4 :: v_dual_fmac_f32 v31, 0xbfb8aa3b, v15
	v_ldexp_f32 v23, v23, v58
	v_ldexp_f32 v30, v30, v67
	v_cndmask_b32_e64 v24, 0, 0x42800000, s6
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v6 :: v_dual_add_f32 v19, 1.0, v19
	v_ldexp_f32 v21, v21, v53
	v_dual_fmac_f32 v26, 0xbfb8aa3b, v10 :: v_dual_add_f32 v23, 1.0, v23
	v_exp_f32_e32 v31, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v127, -v80, v111, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v8 :: v_dual_add_f32 v21, 1.0, v21
	v_exp_f32_e32 v18, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, null, v19, v19, v3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v34
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s11
	v_exp_f32_e32 v22, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v62, null, v23, v23, v7
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v32, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v111, v127, v111
	v_div_scale_f32 v88, null, v30, v30, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s0
	v_exp_f32_e32 v20, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v58, null, v21, v21, v5
	v_rcp_f32_e32 v99, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, s13
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s4
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v31, v31, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v25, v25, v9
	v_rcp_f32_e32 v103, v62
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v113, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s2
	v_ldexp_f32 v18, v18, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v101, v58
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s6
	v_dual_fmac_f32 v34, 0xbfb8aa3b, v17 :: v_dual_add_f32 v31, 1.0, v31
	v_ldexp_f32 v22, v22, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v105, v66
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v32, v69
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v20, v20, v56
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v27, v27, v11
	v_fma_f32 v116, -v44, v99, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v34
	v_ldexp_f32 v24, v24, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v120, -v62, v103, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v129, -v88, v113, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v107, v70
	v_fma_f32 v118, -v58, v101, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_fmac_f32 v99, v116, v99
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v53, null, v18, v18, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v122, -v66, v105, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_fmac_f32 v103, v120, v103
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v22, v22, v6
	v_fmac_f32_e32 v113, v129, v113
	v_div_scale_f32 v97, null, v32, v32, v16
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v26, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v100, v53
	v_fmac_f32_e32 v101, v118, v101
	v_div_scale_f32 v60, null, v20, v20, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v34, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v104, v64
	v_fmac_f32_e32 v105, v122, v105
	v_div_scale_f32 v68, null, v24, v24, v8
	v_rcp_f32_e32 v115, v97
	v_rcp_f32_e32 v102, v60
	v_fma_f32 v124, -v70, v107, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v106, v68
	v_fma_f32 v117, -v53, v100, 1.0
	v_fma_f32 v121, -v64, v104, 1.0
	v_fmac_f32_e32 v107, v124, v107
	v_div_scale_f32 v72, null, v26, v26, v10
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v131, -v97, v115, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v56, s0, v2, v18, v2
	v_div_scale_f32 v82, s10, v12, v28, v12
	v_rcp_f32_e32 v108, v72
	v_fma_f32 v119, -v60, v102, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v100, v117, v100 :: v_dual_mul_f32 v127, v82, v111
	v_div_scale_f32 v52, vcc_lo, v3, v19, v3
	v_div_scale_f32 v65, s4, v6, v22, v6
	v_div_scale_f32 v94, s12, v14, v30, v14
	v_fma_f32 v123, -v68, v106, 1.0
	v_fmac_f32_e32 v104, v121, v104
	v_div_scale_f32 v85, null, v31, v31, v15
	v_fmac_f32_e32 v115, v131, v115
	v_div_scale_f32 v95, null, v34, v34, v17
	v_div_scale_f32 v59, s1, v5, v21, v5
	v_dual_fmac_f32 v102, v119, v102 :: v_dual_mul_f32 v117, v56, v100
	v_div_scale_f32 v69, s6, v8, v24, v8
	v_dual_mul_f32 v129, v94, v113 :: v_dual_fmac_f32 v106, v123, v106
	v_dual_mul_f32 v121, v65, v104 :: v_dual_mul_f32 v116, v52, v99
	v_rcp_f32_e32 v112, v85
	v_rcp_f32_e32 v114, v95
	v_div_scale_f32 v98, s14, v16, v32, v16
	v_fma_f32 v125, -v72, v108, 1.0
	v_fma_f32 v133, -v53, v117, v56
	v_dual_mul_f32 v118, v59, v101 :: v_dual_mul_f32 v123, v69, v106
	v_fma_f32 v132, -v44, v116, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v108, v125, v108 :: v_dual_mul_f32 v131, v98, v115
	v_fmac_f32_e32 v117, v133, v100
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v134, -v58, v118, v59
	v_fma_f32 v139, -v68, v123, v69
	v_fmac_f32_e32 v116, v132, v99
	v_div_scale_f32 v61, s2, v4, v20, v4
	v_fma_f32 v128, -v85, v112, 1.0
	v_div_scale_f32 v77, s8, v10, v26, v10
	v_fma_f32 v130, -v95, v114, 1.0
	v_div_scale_f32 v63, s3, v7, v23, v7
	v_fma_f32 v147, -v97, v131, v98
	v_dual_fmac_f32 v118, v134, v101 :: v_dual_fmac_f32 v123, v139, v106
	v_fma_f32 v44, -v44, v116, v52
	v_dual_fmac_f32 v112, v128, v112 :: v_dual_mul_f32 v119, v61, v102
	v_fma_f32 v52, -v53, v117, v56
	v_div_scale_f32 v67, s5, v9, v25, v9
	v_dual_fmac_f32 v114, v130, v114 :: v_dual_mul_f32 v125, v77, v108
	v_fma_f32 v137, -v64, v121, v65
	v_mul_f32_e32 v120, v63, v103
	v_fmac_f32_e32 v131, v147, v115
	v_fma_f32 v53, -v58, v118, v59
	v_div_fmas_f32 v44, v44, v99, v116
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v86, s11, v15, v31, v15
	v_fma_f32 v135, -v60, v119, v61
	v_div_fmas_f32 v52, v52, v100, v117
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v141, -v72, v125, v77
	v_dual_mul_f32 v122, v67, v105 :: v_dual_fmac_f32 v121, v137, v104
	v_fma_f32 v136, -v62, v120, v63
	v_div_fmas_f32 v53, v53, v101, v118
	v_dual_mul_f32 v128, v86, v112 :: v_dual_fmac_f32 v119, v135, v102
	v_fmac_f32_e32 v125, v141, v108
	v_fma_f32 v138, -v66, v122, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v5, v53, v21, v5
	v_fmac_f32_e32 v120, v136, v103
	v_fma_f32 v56, -v60, v119, v61
	v_div_scale_f32 v71, s7, v11, v27, v11
	v_div_fixup_f32 v3, v44, v19, v3
	v_fmac_f32_e32 v122, v138, v105
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v43, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v58, -v62, v120, v63
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v59, -v64, v121, v65
	v_div_fmas_f32 v19, v56, v102, v119
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v145, -v88, v129, v94
	v_mul_f32_e32 v124, v71, v107
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v35, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v60, -v66, v122, v67
	v_div_fixup_f32 v2, v52, v18, v2
	v_div_fmas_f32 v18, v58, v103, v120
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v129, v145, v113
	v_div_fmas_f32 v21, v59, v104, v121
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v140, -v70, v124, v71
	v_div_fixup_f32 v4, v19, v20, v4
	v_div_fmas_f32 v19, v60, v105, v122
	v_div_scale_f32 v79, s9, v13, v29, v13
	v_div_fixup_f32 v7, v18, v23, v7
	v_fma_f32 v61, -v68, v123, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v9, v19, v25, v9
	v_fmac_f32_e32 v124, v140, v107
	v_dual_mul_f32 v126, v79, v109 :: v_dual_mul_f32 v7, v49, v7
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v55, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v62, -v70, v124, v71
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v142, -v78, v126, v79
	v_fma_f32 v63, -v72, v125, v77
	v_div_fmas_f32 v18, v61, v106, v123
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v96, s13, v17, v34, v17
	v_fma_f32 v143, -v80, v127, v82
	v_div_fmas_f32 v20, v62, v107, v124
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v144, -v85, v128, v86
	v_div_fmas_f32 v19, v63, v108, v125
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v92.l, v5.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v126, v142, v109
	v_dual_mul_f32 v130, v96, v114 :: v_dual_fmac_f32 v127, v143, v111
	v_div_fixup_f32 v11, v20, v27, v11
	v_fmac_f32_e32 v128, v144, v112
	v_div_fixup_f32 v10, v19, v26, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v19, 1, v92
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v64, -v78, v126, v79
	v_fma_f32 v65, -v80, v127, v82
	s_mov_b32 vcc_lo, s9
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v51, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v85, v128, v86
	v_div_fixup_f32 v6, v21, v22, v6
	v_div_fmas_f32 v21, v64, v109, v126
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v67, -v88, v129, v94
	v_div_fmas_f32 v22, v65, v111, v127
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v13, v21, v29, v13
	v_div_fmas_f32 v23, v66, v112, v128
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v146, -v95, v130, v96
	v_div_fmas_f32 v21, v67, v113, v129
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v2, v37, v2 :: v_dual_mul_f32 v13, v48, v13
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v5, v5
	v_add3_u32 v5, v5, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v14, v21, v30, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v93.l, v2.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v110.l, v3.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v22, v28, v12
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v14, v33, v14
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v20, 1, v93
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v18, v24, v8
	v_div_fixup_f32 v15, v23, v31, v15
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v47, v4
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, v14.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v50, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	v_add3_u32 v2, v2, v20, 0x7fff
	v_mov_b16_e32 v87.l, v9.h
	v_cmp_o_f32_e64 s0, v3, v3
	v_mov_b16_e32 v81.l, v10.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v57, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v90.l, v7.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v15, v45, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v91.l, v4.h
	v_cmp_o_f32_e64 s6, v9, v9
	v_mov_b16_e32 v89.l, v6.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v130, v146, v114
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v20, 1, v90
	v_mov_b16_e32 v76.l, v13.h
	v_cmp_o_f32_e64 s3, v4, v4
	v_and_b32_e32 v19, 1, v89
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v95, v130, v96
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v7, v7
	v_mov_b16_e32 v83.l, v11.h
	v_add3_u32 v7, v7, v20, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v97, v131, v98
	v_div_fmas_f32 v22, v68, v114, v130
	s_mov_b32 vcc_lo, s14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s2
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v23, v69, v115, v131
	v_div_fixup_f32 v17, v22, v34, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v110
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_cmp_eq_u32_e64 s4, 0, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v16, v23, v32, v16
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v17, v41, v17
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v3, v18, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s1
	v_and_b32_e32 v2, 1, v87
	v_and_b32_e32 v18, 1, v91
	v_cmp_o_f32_e64 s1, v13, v13
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s0
	v_mov_b16_e32 v73.l, v17.h
	v_add3_u32 v2, v9, v2, 0x7fff
	v_and_b32_e32 v9, 1, v81
	v_cmp_o_f32_e64 s5, v6, v6
	v_add3_u32 v6, v6, v19, 0x7fff
	v_add3_u32 v4, v4, v18, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v46, v12
	v_mul_f32_e32 v16, v42, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v75.l, v15.h
	v_cndmask_b16 v7.l, 0x7fff, v6.h, s5
	v_and_b32_e32 v6, 1, v76
	v_cndmask_b16 v5.l, 0x7fff, v4.h, s3
	v_and_b32_e32 v4, 1, v83
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s6
	v_mov_b16_e32 v36.l, v16.h
	v_add3_u32 v6, v13, v6, 0x7fff
	v_and_b32_e32 v13, 1, v40
	v_cmp_o_f32_e64 s0, v10, v10
	v_add3_u32 v9, v10, v9, 0x7fff
	v_add3_u32 v4, v11, v4, 0x7fff
	v_cndmask_b32_e64 v10, v7, v3, s4
	v_cndmask_b32_e64 v3, v3, v7, s4
	v_cndmask_b32_e64 v0, 0x1054, v0, s4
	v_cndmask_b16 v4.l, 0x7fff, v9.h, s0
	v_and_b32_e32 v9, 1, v73
	v_mov_b16_e32 v74.l, v12.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v54, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v7, 0x3276, v39, s4
	v_cmp_o_f32_e64 s2, v12, v12
	v_lshl_or_b32 v0, v0, 8, v0
	v_and_b32_e32 v11, 1, v74
	v_mov_b16_e32 v84.l, v8.h
	v_cmp_o_f32_e64 s7, v8, v8
	v_lshl_or_b32 v7, v7, 8, v7
	v_cmp_o_f32_e64 s3, v15, v15
	v_add3_u32 v11, v12, v11, 0x7fff
	v_and_b32_e32 v18, 1, v84
	v_cmp_o_f32_e64 s5, v14, v14
	v_cmp_o_f32_e64 s6, v17, v17
	v_add3_u32 v13, v14, v13, 0x7fff
	v_add3_u32 v9, v17, v9, 0x7fff
	v_add3_u32 v8, v8, v18, 0x7fff
	v_and_b32_e32 v0, 0x540054, v0
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_permlanex16_b32 v3, v3, s15, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b16 v2.l, 0x7fff, v8.h, s7
	v_and_b32_e32 v8, 1, v75
	v_cmp_o_f32_e64 s7, v16, v16
	v_lshl_or_b32 v0, v0, 4, v0
	v_cndmask_b32_e64 v12, v2, v5, s4
	v_cndmask_b32_e64 v2, v5, v2, s4
	v_cndmask_b16 v5.h, 0x7fff, v6.h, s1
	v_and_b32_e32 v6, 1, v36
	v_add3_u32 v8, v15, v8, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v11.h, s2
	v_permlanex16_b32 v11, v2, s15, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v8.l, 0x7fff, v13.h, s5
	v_add3_u32 v2, v16, v6, 0x7fff
	v_and_b32_e32 v6, 0x760076, v7
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s3
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s6
	v_and_b32_e32 v0, 0x5040504, v0
	v_cndmask_b16 v7.l, 0x7fff, v2.h, s7
	v_lshl_or_b32 v2, v6, 4, v6
	v_cndmask_b32_e64 v9, v8, v4, s4
	v_cndmask_b32_e64 v4, v4, v8, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v6, v5, v7, s4
	v_and_b32_e32 v13, 0x7060706, v2
	v_cndmask_b32_e64 v14, v7, v5, s4
	s_delay_alu instid0(VALU_DEP_4)
	v_permlanex16_b32 v7, v4, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v3, v10, v0
	v_permlanex16_b32 v15, v6, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v3, v3, v10, v13
	v_perm_b32 v4, v11, v12, v0
	v_perm_b32 v5, v11, v12, v13
	v_perm_b32 v6, v7, v9, v0
	v_perm_b32 v7, v7, v9, v13
	v_perm_b32 v8, v15, v14, v0
	v_perm_b32 v9, v15, v14, v13
	s_clause 0x1
	buffer_store_b128 v[2:5], v1, s[24:27], 0 offen
	buffer_store_b128 v[6:9], v1, s[24:27], 0 offen offset:256
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 51
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 163
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9384
; TotalNumSgprs: 53
; NumVgprs: 163
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     163
    .vgpr_spill_count: 0
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
