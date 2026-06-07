	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
	v_lshrrev_b32_e32 v4, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 3, v0
	v_lshlrev_b32_e32 v2, 2, v0
	v_and_b32_e32 v255, 15, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v5, 28, v2
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v2, 0x37c, v2
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
	s_lshl_b32 s13, s4, 2
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_mul_lo_u32 v4, s12, v4
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s13
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_mul_lo_u32 v3, s12, v3
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
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 1, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_lshl_add_u32 v31, v1, 4, v4
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s18, s18
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_mov_b32 s23, s7
	.loc	1 320 34 is_stmt 0              ; generate_amdgcn.py:320:34
	v_lshl_add_u32 v32, s12, 7, v31
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
	s_lshl_b32 s33, s2, 5
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	s_add_i32 s44, s26, s27
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_mul_i32 s2, s33, s12
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	s_mul_i32 s31, s26, s12
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add3_u32 v33, v3, v5, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s14, 31
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	s_mul_i32 s48, s44, s12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	s_add_i32 s3, s31, s30
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v3, s30, v33
	.loc	1 318 26 is_stmt 0              ; generate_amdgcn.py:318:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 320 26 is_stmt 1              ; generate_amdgcn.py:320:26
	s_and_b32 s21, s21, 0xffff
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	s_add_i32 s12, s48, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s14, 63
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v4, s3, v31
	v_add_nc_u32_e32 v5, s3, v32
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	v_add_nc_u32_e32 v6, s12, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s34, s30, 32
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	v_add_nc_u32_e32 v7, s12, v32
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 318 34 is_stmt 0              ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v8, s34, v33
	.loc	1 320 26 is_stmt 1              ; generate_amdgcn.py:320:26
	v_cndmask_b32_e64 v9, 0x80000000, v4, s2
	.loc	1 320 34 is_stmt 0              ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v4, 32, v4
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e64 v10, 0x80000000, v5, s2
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v5, 32, v5
	.loc	1 326 43 is_stmt 1              ; generate_amdgcn.py:326:43
	v_add_nc_u32_e32 v22, 32, v6
	v_add_nc_u32_e32 v23, 32, v7
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b32 v30, v3, s[4:7], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v8, s3
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_cndmask_b32_e64 v14, 0x80000000, v6, s2
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_cndmask_b32_e64 v18, 0x80000000, v7, s2
	v_cndmask_b32_e64 v34, 0x80000000, v22, s3
	v_cndmask_b32_e64 v35, 0x80000000, v23, s3
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x3
	buffer_load_b128 v[6:9], v9, s[20:23], 0 offen
	buffer_load_b128 v[10:13], v10, s[20:23], 0 offen
	buffer_load_b128 v[14:17], v14, s[20:23], 0 offen
	buffer_load_b128 v[18:21], v18, s[20:23], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b32 v45, v3, s[4:7], 0 offen
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x3
	buffer_load_b128 v[22:25], v4, s[20:23], 0 offen
	buffer_load_b128 v[26:29], v5, s[20:23], 0 offen
	buffer_load_b128 v[37:40], v34, s[20:23], 0 offen
	buffer_load_b128 v[41:44], v35, s[20:23], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_bfe_i32 v4, v0, 5, 1
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_lshlrev_b32_e32 v3, 4, v0
	v_bfe_i32 v5, v0, 3, 1
	s_mov_b32 s12, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0x5f
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v4, 0x90, v4
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_and_b32_e32 v34, 0xf70, v3
	v_and_b32_e32 v5, 0x90, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_xor_b32_e32 v35, v4, v2
	v_lshlrev_b32_e32 v4, 5, v0
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_xor_b32_e32 v36, v5, v34
	v_and_b32_e32 v34, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v5, 16, v255
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v2, 0, v35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v46, 0, v36
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(9)
	ds_store_b32 v2, v30 offset:32768
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(8)
	ds_store_b128 v46, v[6:9]
	s_waitcnt vmcnt(7)
	ds_store_b128 v46, v[10:13] offset:4096
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	s_waitcnt vmcnt(6)
	ds_store_b128 v46, v[14:17] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v46, v[18:21] offset:20480
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v2, v45 offset:33792
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v46, v[22:25] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v46, v[26:29] offset:12288
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	s_waitcnt vmcnt(1)
	ds_store_b128 v46, v[37:40] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v46, v[41:44] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v30, 0x160, v4
	v_and_b32_e32 v2, 4, v0
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_and_or_b32 v29, 0xe00, v3, v30
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr29
.LBB0_3:                                ; %Flow421
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v6, s33, v255
	v_or_b32_e32 v5, s33, v5
	v_and_b32_e32 v7, 0xf0, v0
	s_ashr_i32 s35, s13, 5
	v_or_b32_e32 v159, s26, v0
	v_mul_lo_u32 v160, v6, s35
	v_mul_lo_u32 v141, v5, s35
	v_lshlrev_b32_e32 v26, 2, v7
	v_lshlrev_b32_e32 v28, 1, v0
	v_lshlrev_b32_e32 v27, 5, v1
	v_lshlrev_b32_e32 v25, 1, v7
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_lshl_b32 s1, s27, 1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 2, 1
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v30, 0x160, v4
	v_dual_mov_b32 v50, 0 :: v_dual_and_b32 v1, 0x90, v1
	v_and_b32_e32 v9, 28, v28
	v_add3_u32 v10, 0, v26, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_or_b32 v29, 0xe00, v3, v30
	v_or_b32_e32 v37, v1, v30
	v_add_nc_u32_e32 v41, s27, v159
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v43, 0, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v38, v29, v1
	v_mov_b32_e32 v1, s12
	v_xor_b32_e32 v39, 16, v37
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_mov_b32_e32 v6, s17
	v_xor_b32_e32 v40, 16, v38
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v7, s18
	v_add_nc_u32_e32 v42, v10, v9
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v51, 0
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
	s_add_i32 s46, 0, 0x8400
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
	v_add_nc_u32_e32 v9, s34, v33
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
	buffer_load_b32 v44, v9, s[4:7], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v9, v160, s14, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s14, s35
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v77, v141, s14, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s15, s14, s1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v78, v41, s15, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v75, 0x80000000, v9, vcc_lo
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v133, v75, s[36:39], 0 offen
	buffer_load_u16 v134, v77, s[36:39], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v10, v159, s15, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s49, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_cmp_lt_i32 s14, 2
	s_cselect_b32 s49, s14, 0
	s_add_i32 s14, s13, 1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_lshl_b32 s15, s49, 10
	s_add_i32 s15, s15, 0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v134, 16, v134
	v_lshlrev_b32_e32 v133, 16, v133
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v10, s0, v39
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v11, s12, v38
	v_add_nc_u32_e32 v12, s12, v40
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_add_nc_u32_e32 v13, s10, v38
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v76, v9, s[40:43], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v9, s0, v37
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_add_nc_u32_e32 v14, s10, v40
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[45:48], v9
	ds_load_b128 v[129:132], v9 offset:512
	ds_load_b128 v[135:138], v10
	ds_load_b128 v[193:196], v10 offset:512
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[150:153], v11
	ds_load_b128 v[161:164], v11 offset:4096
	ds_load_b128 v[197:200], v12
	ds_load_b128 v[201:204], v12 offset:4096
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[185:188], v13
	ds_load_b128 v[205:208], v13 offset:4096
	ds_load_b128 v[209:212], v14
	ds_load_b128 v[213:216], v14 offset:4096
	s_mov_b32 s12, s47
	s_mov_b32 s0, s46
	s_mov_b32 s10, s45
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_add_i32 s46, s15, 0x8000
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[150:153], v[129:132], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[161:164], v[45:48], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[177:184], v[185:188], v[129:132], v[1:8] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[142:149], v[197:200], v[193:196], v[142:149] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[201:204], v[135:138], v[121:128] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[169:176], v[205:208], v[45:48], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[177:184], v[209:212], v[193:196], v[177:184] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v121, v121
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[169:176], v[213:216], v[135:138], v[169:176] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v142, v134, v142 :: v_dual_add_nc_u32 v15, s16, v31
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v16, s16, v32
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	v_add_nc_u32_e32 v17, s17, v31
	v_add_nc_u32_e32 v21, s17, v32
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x3
	buffer_load_b128 v[9:12], v15, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v16, s[20:23], 0 offen
	buffer_load_b128 v[17:20], v17, s[20:23], 0 offen
	buffer_load_b128 v[21:24], v21, s[20:23], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_lshl_b32 s16, s49, 13
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v126, v133, v126
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_add_i32 s47, s16, 0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v144, v134, v144
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	s_add_i32 s45, s47, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s13, s50
	s_mov_b32 s13, s14
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v146, v134, v146
	v_mul_f32_e32 v148, v134, v148
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v75, 16, v76
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v42, v75 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v139, v78, s[40:43], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[75:82], v[150:153], v[45:48], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[161:164], v[129:132], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[161:168], v[185:188], v[45:48], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[185:192], v[205:208], v[129:132], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[75:82], v[197:200], v[135:138], v[75:82] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[161:168], v[209:212], v[135:138], v[161:168] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[150:157], v[201:204], v[193:196], v[150:157] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[185:192], v[213:216], v[193:196], v[185:192] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v135, v169
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v75, v75
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v45, v161
	v_cvt_f32_i32_e32 v46, v162
	v_cvt_f32_i32_e32 v47, v163
	v_cvt_f32_i32_e32 v48, v164
	v_cvt_f32_i32_e32 v131, v167
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v140, s15, v35
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v129, v165
	v_cvt_f32_i32_e32 v130, v166
	v_cvt_f32_i32_e32 v132, v168
	v_cvt_f32_i32_e32 v136, v170
	v_cvt_f32_i32_e32 v137, v171
	v_cvt_f32_i32_e32 v138, v172
	v_cvt_f32_i32_e32 v161, v173
	v_cvt_f32_i32_e32 v162, v174
	v_cvt_f32_i32_e32 v163, v175
	v_cvt_f32_i32_e32 v164, v176
	v_cvt_f32_i32_e32 v165, v177
	v_cvt_f32_i32_e32 v166, v178
	v_cvt_f32_i32_e32 v167, v179
	v_cvt_f32_i32_e32 v168, v180
	v_cvt_f32_i32_e32 v169, v181
	v_cvt_f32_i32_e32 v170, v182
	v_cvt_f32_i32_e32 v171, v183
	v_cvt_f32_i32_e32 v172, v184
	v_cvt_f32_i32_e32 v173, v185
	v_cvt_f32_i32_e32 v174, v186
	v_cvt_f32_i32_e32 v175, v187
	v_cvt_f32_i32_e32 v176, v188
	v_cvt_f32_i32_e32 v177, v189
	v_cvt_f32_i32_e32 v178, v190
	v_cvt_f32_i32_e32 v179, v191
	v_cvt_f32_i32_e32 v180, v192
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v181, v133, v76
	v_dual_mul_f32 v182, v133, v75 :: v_dual_mul_f32 v183, v46, v133
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v184, v45, v133
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v185, v133, v78
	v_mul_f32_e32 v186, v133, v77
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v187, v48, v133
	v_dual_mul_f32 v188, v47, v133 :: v_dual_mul_f32 v189, v133, v80
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v190, v133, v79
	v_dual_mul_f32 v191, v133, v82 :: v_dual_mul_f32 v136, v136, v133
	v_mul_f32_e32 v192, v133, v81
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v131, v131, v133 :: v_dual_mul_f32 v196, v133, v123
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v193, v133, v122 :: v_dual_mul_f32 v138, v138, v133
	v_mul_f32_e32 v194, v133, v121
	v_dual_mul_f32 v195, v133, v124 :: v_dual_mul_f32 v162, v162, v133
	ds_load_b128 v[45:48], v43 offset:34816
	ds_load_b128 v[75:78], v43 offset:34832
	ds_load_b128 v[79:82], v43 offset:35328
	ds_load_b128 v[121:124], v43 offset:35344
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v129, v129, v133 :: v_dual_add_nc_u32 v158, s47, v36
	v_mul_f32_e32 v130, v130, v133
	v_mul_f32_e32 v132, v132, v133
	v_mul_f32_e32 v135, v135, v133
	v_mul_f32_e32 v137, v137, v133
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v125, v133, v125
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v161, v161, v133
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v128, v133, v128
	v_dual_mul_f32 v127, v133, v127 :: v_dual_mul_f32 v164, v164, v133
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v133, v163, v133
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v143, v134, v143
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v163, v166, v134 :: v_dual_fmac_f32 v94, v192, v77
	v_mul_f32_e32 v165, v165, v134
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v145, v134, v145 :: v_dual_mul_f32 v166, v168, v134
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v167, v167, v134 :: v_dual_mul_f32 v152, v134, v152
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v147, v134, v147
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v169, v169, v134 :: v_dual_mul_f32 v156, v134, v156
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v149, v134, v149
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v171, v171, v134 :: v_dual_fmac_f32 v106, v182, v45
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v151, v134, v151 :: v_dual_fmac_f32 v86, v196, v81
	v_dual_mul_f32 v150, v134, v150 :: v_dual_fmac_f32 v99, v189, v76
	v_dual_mul_f32 v153, v134, v153 :: v_dual_fmac_f32 v88, v195, v82
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v155, v134, v155 :: v_dual_fmac_f32 v84, v125, v121
	v_dual_mul_f32 v154, v134, v154 :: v_dual_fmac_f32 v49, v127, v123
	v_dual_mul_f32 v157, v134, v157 :: v_dual_fmac_f32 v110, v144, v47
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v107, v181, v46 :: v_dual_fmac_f32 v114, v142, v45
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v168, v170, v134 :: v_dual_fmac_f32 v103, v185, v48
	v_mul_f32_e32 v170, v172, v134
	v_dual_mul_f32 v172, v174, v134 :: v_dual_fmac_f32 v91, v193, v80
	v_dual_mul_f32 v173, v173, v134 :: v_dual_fmac_f32 v102, v186, v47
	v_mul_f32_e32 v174, v176, v134
	v_dual_mul_f32 v175, v175, v134 :: v_dual_fmac_f32 v98, v190, v75
	v_dual_mul_f32 v176, v178, v134 :: v_dual_fmac_f32 v83, v128, v124
	v_dual_mul_f32 v177, v177, v134 :: v_dual_fmac_f32 v90, v194, v79
	v_mul_f32_e32 v178, v180, v134
	v_mul_f32_e32 v134, v179, v134
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v95, v191, v78 :: v_dual_fmac_f32 v62, v150, v79
	v_dual_fmac_f32 v85, v126, v122 :: v_dual_fmac_f32 v72, v147, v76
	v_dual_fmac_f32 v115, v143, v46 :: v_dual_fmac_f32 v52, v156, v123
	v_dual_fmac_f32 v111, v145, v48 :: v_dual_fmac_f32 v54, v155, v122
	v_dual_fmac_f32 v71, v146, v75 :: v_dual_fmac_f32 v68, v149, v78
	v_dual_fmac_f32 v67, v148, v77 :: v_dual_fmac_f32 v60, v153, v82
	v_fmac_f32_e32 v63, v151, v80
	v_fmac_f32_e32 v59, v152, v81
	v_fmac_f32_e32 v53, v154, v121
	v_fmac_f32_e32 v51, v157, v124
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v139
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_store_b32 v42, v45 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v43 offset:34816
	ds_load_b128 v[75:78], v43 offset:34832
	ds_load_b128 v[79:82], v43 offset:35328
	ds_load_b128 v[121:124], v43 offset:35344
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_store_b32 v140, v44 offset:32768
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_store_b128 v158, v[9:12]
	ds_store_b128 v158, v[13:16] offset:4096
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_store_b128 v158, v[17:20] offset:16384
	ds_store_b128 v158, v[21:24] offset:20480
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(8)
	v_fmac_f32_e32 v50, v184, v45
	v_fmac_f32_e32 v116, v183, v46
	v_dual_fmac_f32 v112, v188, v47 :: v_dual_fmac_f32 v113, v187, v48
	s_waitcnt lgkmcnt(7)
	v_dual_fmac_f32 v108, v129, v75 :: v_dual_fmac_f32 v109, v130, v76
	s_waitcnt lgkmcnt(6)
	v_fmac_f32_e32 v100, v135, v79
	v_dual_fmac_f32 v104, v131, v77 :: v_dual_fmac_f32 v105, v132, v78
	s_waitcnt lgkmcnt(5)
	v_dual_fmac_f32 v92, v161, v121 :: v_dual_fmac_f32 v101, v136, v80
	v_fmac_f32_e32 v120, v163, v46
	v_dual_fmac_f32 v96, v137, v81 :: v_dual_fmac_f32 v97, v138, v82
	v_dual_fmac_f32 v74, v168, v76 :: v_dual_fmac_f32 v93, v162, v122
	v_dual_fmac_f32 v66, v172, v80 :: v_dual_fmac_f32 v87, v133, v123
	v_fmac_f32_e32 v118, v166, v48
	v_dual_fmac_f32 v89, v164, v124 :: v_dual_fmac_f32 v70, v170, v78
	v_dual_fmac_f32 v119, v165, v45 :: v_dual_fmac_f32 v64, v174, v82
	v_dual_fmac_f32 v117, v167, v47 :: v_dual_fmac_f32 v58, v176, v122
	v_dual_fmac_f32 v73, v169, v75 :: v_dual_fmac_f32 v56, v178, v124
	v_fmac_f32_e32 v69, v171, v77
	v_fmac_f32_e32 v65, v173, v79
	v_fmac_f32_e32 v61, v175, v81
	v_fmac_f32_e32 v57, v177, v121
	v_fmac_f32_e32 v55, v134, v123
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v2, v34
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s46, 0, 0x8400
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v50, 0
	s_add_i32 s47, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cndmask_b32_e64 v2, 0, 1, s2
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v182, 0
	v_cndmask_b32_e64 v1, 0x90, 0, vcc_lo
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v172, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v17, v1, v30
	v_mov_b32_e32 v184, 0
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_or_b32_e32 v210, v29, v1
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v178, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_xor_b32_e32 v18, 16, v17
	v_add_nc_u32_e32 v1, s0, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_xor_b32_e32 v219, 16, v210
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v180, 0 :: v_dual_add_nc_u32 v3, s0, v18
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[9:12], v1 offset:512
	ds_load_b128 v[5:8], v3
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[1:4], v3 offset:512
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v20, 0
	v_mov_b32_e32 v19, 0
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v36, s23 :: v_dual_add_nc_u32 v23, s12, v210
	v_dual_mov_b32 v35, s22 :: v_dual_add_nc_u32 v24, s12, v219
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[19:22], v23
	ds_load_b128 v[45:48], v23 offset:4096
	ds_load_b128 v[129:132], v24 offset:4096
	ds_load_b128 v[135:138], v24
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v34, s21 :: v_dual_mov_b32 v33, s20
	v_dual_mov_b32 v32, s19 :: v_dual_mov_b32 v31, s18
	v_dual_mov_b32 v30, s17 :: v_dual_mov_b32 v29, s16
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[19:22], v[13:16], v[29:36] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[45:48], v[13:16], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[19:22], v[9:12], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[29:36], v[45:48], v[9:12], v[29:36] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[135:138], v[5:8], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[129:132], v[5:8], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[135:138], v[1:4], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[29:36], v[129:132], v[1:4], v[29:36] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v175, v39
	v_cvt_f32_i32_e32 v180, v40
	v_cvt_f32_i32_e32 v168, v41
	v_cvt_f32_i32_e32 v169, v42
	v_cvt_f32_i32_e32 v171, v43
	v_cvt_f32_i32_e32 v177, v44
	v_cvt_f32_i32_e32 v172, v75
	v_cvt_f32_i32_e32 v178, v76
	v_cvt_f32_i32_e32 v176, v77
	v_cvt_f32_i32_e32 v181, v78
	v_cvt_f32_i32_e32 v170, v79
	v_cvt_f32_i32_e32 v174, v80
	v_cvt_f32_i32_e32 v173, v81
	v_cvt_f32_i32_e32 v179, v82
	v_cvt_f32_i32_e32 v187, v121
	v_cvt_f32_i32_e32 v188, v122
	v_cvt_f32_i32_e32 v185, v123
	v_cvt_f32_i32_e32 v186, v124
	v_cvt_f32_i32_e32 v139, v125
	v_cvt_f32_i32_e32 v140, v126
	v_cvt_f32_i32_e32 v40, v127
	v_cvt_f32_i32_e32 v39, v128
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v23, v31
	v_cvt_f32_i32_e32 v24, v32
	v_cvt_f32_i32_e32 v21, v33
	v_cvt_f32_i32_e32 v22, v34
	v_cvt_f32_i32_e32 v20, v35
	v_cvt_f32_i32_e32 v19, v36
	v_cvt_f32_i32_e32 v182, v37
	v_cvt_f32_i32_e32 v184, v38
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x9                            ; 40-byte Folded Spill
	scratch_store_b32 off, v40, off offset:76
	scratch_store_b32 off, v39, off offset:72
	scratch_store_b32 off, v30, off offset:52
	scratch_store_b32 off, v29, off offset:48
	scratch_store_b32 off, v24, off offset:20
	scratch_store_b32 off, v23, off offset:16
	scratch_store_b32 off, v22, off offset:12
	scratch_store_b32 off, v21, off offset:8
	scratch_store_b32 off, v20, off offset:4
	scratch_store_b32 off, v19, off
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_mov_b32_e32 v20, 0
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v36, s19 :: v_dual_add_nc_u32 v23, s10, v210
	v_dual_mov_b32 v35, s18 :: v_dual_add_nc_u32 v24, s10, v219
	.loc	1 326 35 is_stmt 1              ; generate_amdgcn.py:326:35
	ds_load_b128 v[19:22], v23
	ds_load_b128 v[45:48], v23 offset:4096
	ds_load_b128 v[75:78], v24 offset:4096
	ds_load_b128 v[79:82], v24
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_dual_mov_b32 v34, s17 :: v_dual_mov_b32 v33, s16
	v_dual_mov_b32 v32, s15 :: v_dual_mov_b32 v31, s14
	v_dual_mov_b32 v30, s13 :: v_dual_mov_b32 v29, s12
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[19:22], v[13:16], v[29:36] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[45:48], v[13:16], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[211:218], v[19:22], v[9:12], v[29:36] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[29:36], v[45:48], v[9:12], v[29:36] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[79:82], v[5:8], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[75:78], v[5:8], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[211:218], v[79:82], v[1:4], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[29:36], v[75:78], v[1:4], v[29:36] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v196, v38
	v_cvt_f32_i32_e32 v189, v39
	v_cvt_f32_i32_e32 v197, v40
	v_cvt_f32_i32_e32 v190, v41
	v_cvt_f32_i32_e32 v198, v42
	v_cvt_f32_i32_e32 v191, v43
	v_cvt_f32_i32_e32 v199, v44
	v_cvt_f32_i32_e32 v192, v142
	v_cvt_f32_i32_e32 v200, v143
	v_cvt_f32_i32_e32 v193, v144
	v_cvt_f32_i32_e32 v201, v145
	v_cvt_f32_i32_e32 v194, v146
	v_cvt_f32_i32_e32 v202, v147
	v_cvt_f32_i32_e32 v195, v148
	v_cvt_f32_i32_e32 v203, v149
	v_cvt_f32_i32_e32 v208, v211
	v_cvt_f32_i32_e32 v209, v212
	v_cvt_f32_i32_e32 v206, v213
	v_cvt_f32_i32_e32 v207, v214
	v_cvt_f32_i32_e32 v156, v215
	v_cvt_f32_i32_e32 v157, v216
	v_cvt_f32_i32_e32 v146, v217
	v_cvt_f32_i32_e32 v148, v218
	v_cvt_f32_i32_e32 v253, v29
	v_cvt_f32_i32_e32 v254, v30
	v_cvt_f32_i32_e32 v23, v31
	v_cvt_f32_i32_e32 v24, v32
	v_cvt_f32_i32_e32 v21, v33
	v_cvt_f32_i32_e32 v22, v34
	v_cvt_f32_i32_e32 v19, v35
	v_cvt_f32_i32_e32 v20, v36
	v_cvt_f32_i32_e32 v183, v37
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
	v_add_lshl_u32 v1, v160, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v2, v159, s4, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s5, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	v_dual_mov_b32 v229, 0 :: v_dual_add_nc_u32 v232, s44, v0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_add3_u32 v4, 0, v26, v27
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v5, v141, s0, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v6, v232, s4, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_and_b32_e32 v3, 28, v28
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_and_b32 s9, s9, 0xffff
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v24, off offset:68
	scratch_store_b32 off, v23, off offset:64
	scratch_store_b32 off, v22, off offset:36
	scratch_store_b32 off, v21, off offset:32
	scratch_store_b32 off, v20, off offset:28
	scratch_store_b32 off, v19, off offset:24
	v_dual_mov_b32 v228, 0 :: v_dual_add_nc_u32 v205, v4, v3
	v_dual_cndmask_b32 v3, 0x80000000, v5 :: v_dual_cndmask_b32 v4, 0x80000000, v6
	v_dual_mov_b32 v217, 0 :: v_dual_add_nc_u32 v204, 0, v25
	v_dual_mov_b32 v230, 0 :: v_dual_add_nc_u32 v9, s46, v17
	v_dual_mov_b32 v215, 0 :: v_dual_add_nc_u32 v10, s46, v18
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v145, 0
	v_mov_b32_e32 v144, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v137, 0
	v_mov_b32_e32 v138, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s12, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v231, v1, s[8:11], 0 offen
	buffer_load_u16 v252, v3, s[8:11], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v205, v2 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v1, v4, s[28:31], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cndmask_b32_e64 v2, 0, 1, s3
	v_mov_b32_e32 v216, 0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[25:28], v204 offset:34816
	ds_load_b128 v[17:20], v204 offset:34832
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[5:8], v204 offset:35328
	ds_load_b128 v[1:4], v204 offset:35344
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v205, v11 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[41:44], v9
	ds_load_b128 v[37:40], v9 offset:512
	ds_load_b128 v[45:48], v10
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_b128 v[33:36], v10 offset:512
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v9, 0
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
	v_add_nc_u32_e32 v9, s47, v210
	v_add_nc_u32_e32 v10, s47, v219
	ds_load_b128 v[21:24], v9
	ds_load_b128 v[29:32], v9 offset:4096
	ds_load_b128 v[121:124], v10 offset:4096
	ds_load_b128 v[125:128], v10
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v9, s12 :: v_dual_mov_b32 v12, s15
	v_dual_mov_b32 v10, s13 :: v_dual_mov_b32 v11, s14
	v_dual_mov_b32 v13, s16 :: v_dual_mov_b32 v14, s17
	v_dual_mov_b32 v15, s18 :: v_dual_mov_b32 v16, s19
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[233:240], v[21:24], v[41:44], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[241:248], v[29:32], v[41:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[21:24], v[37:40], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[29:32], v[37:40], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[233:240], v[125:128], v[45:48], v[233:240] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[241:248], v[121:124], v[45:48], v[241:248] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[125:128], v[33:36], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[121:124], v[33:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v220, v235
	v_cvt_f32_i32_e32 v224, v236
	v_cvt_f32_i32_e32 v212, v237
	v_cvt_f32_i32_e32 v217, v238
	v_cvt_f32_i32_e32 v214, v239
	v_cvt_f32_i32_e32 v222, v240
	v_cvt_f32_i32_e32 v215, v241
	v_cvt_f32_i32_e32 v223, v242
	v_cvt_f32_i32_e32 v221, v243
	v_cvt_f32_i32_e32 v225, v244
	v_cvt_f32_i32_e32 v211, v245
	v_cvt_f32_i32_e32 v216, v246
	v_cvt_f32_i32_e32 v213, v247
	v_cvt_f32_i32_e32 v218, v248
	v_cvt_f32_i32_e32 v226, v75
	v_cvt_f32_i32_e32 v227, v76
	v_cvt_f32_i32_e32 v164, v77
	v_cvt_f32_i32_e32 v165, v78
	v_cvt_f32_i32_e32 v154, v79
	v_cvt_f32_i32_e32 v155, v80
	v_cvt_f32_i32_e32 v151, v81
	v_cvt_f32_i32_e32 v150, v82
	v_cvt_f32_i32_e32 v144, v9
	v_cvt_f32_i32_e32 v145, v10
	v_cvt_f32_i32_e32 v137, v11
	v_cvt_f32_i32_e32 v138, v12
	v_cvt_f32_i32_e32 v11, v13
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v10, v15
	v_cvt_f32_i32_e32 v9, v16
	v_cvt_f32_i32_e32 v229, v233
	v_cvt_f32_i32_e32 v230, v234
.LBB0_14:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v12, off offset:60
	scratch_store_b32 off, v11, off offset:56
	scratch_store_b32 off, v10, off offset:44
	scratch_store_b32 off, v9, off offset:40
	ds_load_b128 v[29:32], v204 offset:34816
	ds_load_b128 v[21:24], v204 offset:34832
	ds_load_b128 v[13:16], v204 offset:35328
	ds_load_b128 v[9:12], v204 offset:35344
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v142, 0
	v_mov_b32_e32 v149, 0
	v_mov_b32_e32 v153, 0
	v_mov_b32_e32 v143, 0
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
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_add_nc_u32_e32 v75, s45, v219
	ds_load_b128 v[242:245], v75 offset:4096
	ds_load_b128 v[246:249], v75
	v_add_nc_u32_e32 v75, s45, v210
	ds_load_b128 v[129:132], v75 offset:4096
	ds_load_b128 v[133:136], v75
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_dual_mov_b32 v82, s19 :: v_dual_mov_b32 v81, s18
	v_dual_mov_b32 v80, s17 :: v_dual_mov_b32 v79, s16
	v_mov_b32_e32 v76, s13
	v_dual_mov_b32 v78, s15 :: v_dual_mov_b32 v77, s14
	v_mov_b32_e32 v75, s12
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[129:132], v[41:44], v[75:82] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[234:241], v[133:136], v[41:44], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[242:245], v[45:48], v[121:128] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[234:241], v[246:249], v[45:48], v[234:241] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[133:136], v[37:40], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[129:132], v[37:40], v[75:82] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v251, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v228, v234
	v_wmma_i32_16x16x16_iu8 v[41:48], v[246:249], v[33:36], v[41:48] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v247, v235
	v_wmma_i32_16x16x16_iu8 v[75:82], v[242:245], v[33:36], v[75:82] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v245, v236
	v_cvt_f32_i32_e32 v250, v237
	v_cvt_f32_i32_e32 v237, v238
	v_cvt_f32_i32_e32 v244, v239
	v_cvt_f32_i32_e32 v240, v240
	v_cvt_f32_i32_e32 v248, v241
	v_cvt_f32_i32_e32 v241, v121
	v_cvt_f32_i32_e32 v249, v122
	v_cvt_f32_i32_e32 v246, v123
	v_cvt_f32_i32_e32 v233, v125
	v_cvt_f32_i32_e32 v242, v126
	v_cvt_f32_i32_e32 v236, v127
	v_cvt_f32_i32_e32 v243, v128
	v_cvt_f32_i32_e32 v234, v41
	v_cvt_f32_i32_e32 v238, v42
	v_cvt_f32_i32_e32 v235, v43
	v_cvt_f32_i32_e32 v239, v44
	v_cvt_f32_i32_e32 v166, v45
	v_cvt_f32_i32_e32 v167, v46
	v_cvt_f32_i32_e32 v162, v47
	v_cvt_f32_i32_e32 v163, v48
	v_cvt_f32_i32_e32 v158, v75
	v_cvt_f32_i32_e32 v161, v76
	v_cvt_f32_i32_e32 v152, v77
	v_cvt_f32_i32_e32 v153, v78
	v_cvt_f32_i32_e32 v147, v79
	v_cvt_f32_i32_e32 v149, v80
	v_cvt_f32_i32_e32 v142, v81
	v_cvt_f32_i32_e32 v143, v82
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
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s33, s33, s27
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s0, 5
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v134, s27, v255
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s35
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt lgkmcnt(4)
	v_add_lshl_u32 v33, v160, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v34, v159, s1, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s4, -1, 0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v35, v34, s[28:31], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v34, v141, s0, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v141.l, 0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_mov_b16_e64 v141.h, v252.l
	v_cndmask_b32_e32 v36, 0x80000000, v34, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v210.h, v141.l
	v_mov_b16_e64 v231.h, v141.l
	v_mov_b16_e64 v160.h, v141.l
	v_mov_b16_e64 v219.h, v141.l
	v_mov_b16_e64 v159.h, v141.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v39, v188, v141
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v156, v156, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v39, v39, v26, v115
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v156, v156, v21, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v115, v115, v39, s2
	v_cndmask_b32_e64 v73, v73, v156, s2
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v34, v33, s[8:11], 0 offen
	buffer_load_u16 v33, v36, s[8:11], 0 offen
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v36, v232, s1, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v205, v35 offset:34816
	s_waitcnt lgkmcnt(0)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_barrier
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v35, 0xf0, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v232.h, v141.l
	v_and_b32_e32 v0, 16, v0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v37, v36, s[28:31], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v36, 1, v35
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_mov_b16_e64 v35.h, v231.l
	v_mov_b16_e64 v35.l, v141.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v40, v187, v141
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v41, v207, v141
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v133, s33, s26, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v36, v209, v141 :: v_dual_mul_f32 v45, v196, v35
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v48, v182, v35
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v40, v40, v25, v114
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v42, v206, v141 :: v_dual_mul_f32 v47, v184, v35
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v36, v36, v30, v120
	v_fma_f32 v30, v45, v30, v116
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v25, v48, v25, v106
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v76, v189, v35
	v_dual_mul_f32 v38, v208, v141 :: v_dual_mul_f32 v75, v197, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v116, v116, v30, s2
	v_cndmask_b32_e64 v30, v106, v25, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v42, v42, v31, v117
	v_fma_f32 v41, v41, v32, v118
	v_fma_f32 v32, v75, v32, v113
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v43, v186, v141 :: v_dual_mul_f32 v46, v183, v35
	v_dual_mul_f32 v44, v185, v141 :: v_dual_mul_f32 v77, v180, v35
	v_mul_f32_e32 v78, v175, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v43, v43, v28, v111
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v106, v113, v32, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v44, v44, v27, v110
	v_fma_f32 v28, v77, v28, v103
	v_fma_f32 v26, v47, v26, v107
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v114, v114, v40, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v38, v38, v29, v119
	v_fma_f32 v29, v46, v29, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v118, v118, v41, s2
	v_cndmask_b32_e64 v117, v117, v42, s2
	v_cndmask_b32_e64 v111, v111, v43, s2
	v_cndmask_b32_e64 v119, v119, v38, s2
	v_cndmask_b32_e64 v110, v110, v44, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[41:44], v204 offset:34832
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v120, v120, v36, s2
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v122, v191, v35 :: v_dual_lshlrev_b32 v25, 16, v34
	v_mul_f32_e32 v121, v199, v35
	v_mul_f32_e32 v129, v201, v35
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v31, v76, v31, v112
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v130, v193, v35
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v76, v122, v23, v104
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v79, v198, v35
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v124, v171, v35 :: v_dual_mul_f32 v113, v245, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v125, v200, v35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v104, v104, v76, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v76, v220, v25
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v75, v121, v24, v105
	v_fma_f32 v121, v129, v16, v97
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v128, v172, v35
	v_mul_f32_e32 v131, v181, v35
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v171, v195, v35
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v172, v179, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v97, v97, v121, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v121, v244, v25
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v122, v130, v15, v96
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v123, v177, v35
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v45, v79, v22, v109
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v77, v124, v19, v94
	v_fma_f32 v124, v131, v8, v88
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v130, v171, v11, v87
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v131, v172, v4, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v96, v96, v122, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v122, v237, v25
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v79, v125, v14, v101
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v82, v168, v35
	v_mul_f32_e32 v127, v178, v35
	v_mul_f32_e32 v132, v176, v35
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v80, v190, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v101, v79, s2
	v_cndmask_b32_e64 v101, v87, v130, s2
	v_cndmask_b32_e64 v87, v83, v131, s2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v83, 16, v33
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v27, v78, v27, v102
	v_fma_f32 v78, v123, v20, v95
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v126, v192, v35
	v_mul_f32_e32 v136, v194, v35
	v_mul_f32_e32 v135, v202, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v102, v27, s2
	v_cndmask_b32_e64 v102, v109, v45, s2
	v_cndmask_b32_e64 v40, v95, v78, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v45, v230, v25
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v47, v82, v17, v98
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v78, v212, v25
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v82, v127, v6, v91
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v94, v94, v77, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v109, v228, v25
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v46, v80, v21, v108
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v77, v217, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v82, v91, v82, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v91, v223, v25
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v123, v132, v7, v86
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v80, v126, v13, v100
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v81, v169, v35
	v_mul_f32_e32 v169, v170, v35
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v170, v203, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v86, v123, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v123, v248, v25
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v126, v136, v9, v92
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v168, v174, v35 :: v_dual_mul_f32 v95, v215, v25
	v_mul_f32_e32 v35, v173, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v132, v50, v29, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v92, v92, v126, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v126, v241, v25
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v125, v135, v10, v93
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v107, v26, s2
	v_cndmask_b32_e64 v107, v112, v31, s2
	v_cndmask_b32_e64 v31, v103, v28, s2
	v_cndmask_b32_e64 v103, v108, v46, s2
	v_cndmask_b32_e64 v93, v93, v125, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v125, v249, v25
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v129, v170, v12, v89
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v100, v80, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v108, v247, v25
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v48, v81, v18, v99
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v98, v47, s2
	v_cndmask_b32_e64 v100, v89, v129, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v89, v222, v25
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v81, v128, v5, v90
	v_fma_f32 v128, v168, v2, v85
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v99, v48, s2
	v_cndmask_b32_e64 v99, v105, v75, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v46, v229, v25
	v_mul_f32_e32 v75, v224, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v85, v85, v128, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v128, v251, v25
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v35, v35, v3, v49
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v98, v225, v25
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v127, v169, v1, v84
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v81, v90, v81, s2
	v_cndmask_b32_e64 v105, v49, v35, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[47:50], v204 offset:34816
	ds_load_b128 v[33:36], v204 offset:35328
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v88, v88, v124, s2
	v_cndmask_b32_e64 v84, v84, v127, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v112, v250, v25
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v90, v214, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v124, v240, v25
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v127, v221, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v129, v246, v25 :: v_dual_mul_f32 v172, v227, v83
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v130, v216, v25
	v_dual_mul_f32 v131, v211, v25 :: v_dual_mul_f32 v174, v238, v83
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v135, v242, v25 :: v_dual_mul_f32 v176, v239, v83
	v_dual_mul_f32 v136, v233, v25 :: v_dual_mul_f32 v173, v226, v83
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v168, v218, v25 :: v_dual_mul_f32 v177, v235, v83
	v_mul_f32_e32 v169, v213, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v170, v243, v25 :: v_dual_mul_f32 v175, v234, v83
	v_mul_f32_e32 v171, v236, v25
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[25:28], v204 offset:35344
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v46, v46, v47, v30
	v_fma_f32 v45, v45, v48, v29
	v_fma_f32 v178, v76, v49, v32
	v_fma_f32 v179, v75, v50, v31
	v_fma_f32 v180, v78, v41, v39
	v_fma_f32 v181, v77, v42, v38
	v_fma_f32 v89, v89, v44, v40
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_store_b32 v205, v37 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[75:78], v204 offset:34816
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v173, v173, v47, v114
	v_fma_f32 v172, v172, v48, v115
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v183, v29, v45, s3
	v_cndmask_b32_e64 v184, v30, v46, s3
	v_cndmask_b32_e64 v181, v38, v181, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[45:48], v204 offset:34832
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v180, v39, v180, s3
	v_cndmask_b32_e64 v185, v40, v89, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[37:40], v204 offset:35328
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v179, v31, v179, s3
	v_cndmask_b32_e64 v178, v32, v178, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[29:32], v204 offset:35344
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v95, v95, v33, v81
	v_fma_f32 v90, v90, v43, v94
	v_fma_f32 v91, v91, v34, v82
	v_fma_f32 v127, v127, v35, v86
	v_fma_f32 v131, v131, v25, v84
	v_fma_f32 v130, v130, v26, v85
	v_fma_f32 v169, v169, v27, v105
	v_fma_f32 v168, v168, v28, v87
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v95, v81, v95, s3
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(3)
	v_fma_f32 v81, v109, v75, v132
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v182, v98, v36, v88
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v186, v94, v90, s3
	v_cndmask_b32_e64 v98, v82, v91, s3
	v_cndmask_b32_e64 v91, v86, v127, s3
	v_cndmask_b32_e64 v90, v85, v130, s3
	v_cndmask_b32_e64 v85, v84, v131, s3
	v_cndmask_b32_e64 v89, v87, v168, s3
	v_cndmask_b32_e64 v87, v105, v169, s3
	v_cndmask_b32_e64 v86, v114, v173, s3
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v82, v108, v76, v116
	v_fma_f32 v84, v113, v77, v107
	v_fma_f32 v105, v112, v78, v106
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v108, v122, v45, v103
	v_fma_f32 v109, v121, v46, v102
	v_fma_f32 v112, v124, v47, v104
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v114, v126, v37, v80
	v_fma_f32 v121, v129, v39, v96
	v_fma_f32 v75, v175, v75, v119
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v81, v132, v81, s3
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v113, v123, v48, v99
	v_fma_f32 v122, v128, v40, v97
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v123, v136, v29, v92
	v_fma_f32 v124, v135, v30, v93
	v_fma_f32 v76, v174, v76, v120
	v_fma_f32 v77, v177, v77, v117
	v_fma_f32 v78, v176, v78, v118
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v82, v116, v82, s3
	v_cndmask_b32_e64 v105, v106, v105, s3
	v_cndmask_b32_e64 v106, v107, v84, s3
	v_cndmask_b32_e64 v102, v102, v109, s3
	v_cndmask_b32_e64 v103, v103, v108, s3
	v_cndmask_b32_e64 v104, v104, v112, s3
	v_cndmask_b32_e64 v80, v80, v114, s3
	v_cndmask_b32_e64 v108, v96, v121, s3
	v_cndmask_b32_e64 v96, v119, v75, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v75, 0xbfb8aa3b, v81
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v94, v88, v182, s3
	v_cndmask_b32_e64 v88, v115, v172, s3
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v115, v125, v38, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v99, v99, v113, s3
	v_cndmask_b32_e64 v107, v97, v122, s3
	v_cndmask_b32_e64 v109, v93, v124, s3
	v_cndmask_b32_e64 v112, v92, v123, s3
	v_cndmask_b32_e64 v97, v120, v76, s3
	v_cndmask_b32_e64 v93, v118, v78, s3
	v_cndmask_b32_e64 v92, v117, v77, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v76, 0xbfb8aa3b, v82
	v_dual_mul_f32 v77, 0xbfb8aa3b, v106 :: v_dual_mul_f32 v78, 0xbfb8aa3b, v105
	v_dual_mul_f32 v84, 0xbfb8aa3b, v103 :: v_dual_mul_f32 v113, 0xbfb8aa3b, v102
	v_mul_f32_e32 v118, 0xbfb8aa3b, v108
	v_mul_f32_e32 v114, 0xbfb8aa3b, v104
	v_mul_f32_e32 v116, 0xbfb8aa3b, v80
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v75
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v125, v171, v31, v101
	v_fma_f32 v126, v170, v32, v100
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v79, v115, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v76
	v_cndmask_b32_e64 v75, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v78
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v77
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v113
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v84
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v114
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v116
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v100, v100, v126, s3
	v_cndmask_b32_e64 v101, v101, v125, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v115, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v120, 0xbfb8aa3b, v112
	v_mul_f32_e32 v117, 0xbfb8aa3b, v79
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0x42800000, s1
	v_cndmask_b32_e64 v77, 0, 0x42800000, s4
	v_cndmask_b32_e64 v113, 0, 0x42800000, s5
	v_cndmask_b32_e64 v84, 0, 0x42800000, s6
	v_cndmask_b32_e64 v114, 0, 0x42800000, s8
	v_cndmask_b32_e64 v116, 0, 0x42800000, s10
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v118
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v81
	v_dual_mul_f32 v119, 0xbfb8aa3b, v107 :: v_dual_mul_f32 v124, 0xbfb8aa3b, v96
	v_dual_mul_f32 v121, 0xbfb8aa3b, v109 :: v_dual_mul_f32 v126, 0xbfb8aa3b, v92
	v_dual_mul_f32 v122, 0xbfb8aa3b, v101 :: v_dual_mul_f32 v123, 0xbfb8aa3b, v100
	v_dual_fmac_f32 v76, 0xbfb8aa3b, v82 :: v_dual_mul_f32 v125, 0xbfb8aa3b, v97
	v_dual_fmac_f32 v84, 0xbfb8aa3b, v103 :: v_dual_mul_f32 v127, 0xbfb8aa3b, v93
	v_fmac_f32_e32 v114, 0xbfb8aa3b, v104
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v115
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v117
	v_cndmask_b32_e64 v118, 0, 0x42800000, s12
	v_dual_fmac_f32 v78, 0xbfb8aa3b, v105 :: v_dual_fmac_f32 v77, 0xbfb8aa3b, v106
	v_dual_fmac_f32 v113, 0xbfb8aa3b, v102 :: v_dual_fmac_f32 v116, 0xbfb8aa3b, v80
	v_exp_f32_e32 v75, v75
	v_cndmask_b32_e64 v115, 0, 0x42800000, s7
	v_cndmask_b32_e64 v117, 0, 0x42800000, s9
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v119
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v121
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v120
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v123
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v122
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v127
	v_cndmask_b32_e64 v129, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v118, 0xbfb8aa3b, v108
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v78, v78
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v113, v113
	v_exp_f32_e32 v84, v84
	v_exp_f32_e32 v114, v114
	v_cndmask_b32_e64 v119, 0, 0x42800000, s11
	v_cndmask_b32_e64 v121, 0, 0x42800000, s13
	v_cndmask_b32_e64 v120, 0, 0x42800000, s14
	v_cndmask_b32_e64 v123, 0, 0x42800000, s15
	v_cndmask_b32_e64 v122, 0, 0x42800000, s16
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v125
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v124
	v_cndmask_b32_e64 v127, 0, 0x42800000, s19
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v126
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v130, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v131, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v132, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, s6
	v_dual_fmac_f32 v115, 0xbfb8aa3b, v99 :: v_dual_fmac_f32 v120, 0xbfb8aa3b, v112
	v_cndmask_b32_e64 v168, 0, 0xffffffc0, s8
	v_dual_fmac_f32 v117, 0xbfb8aa3b, v79 :: v_dual_fmac_f32 v122, 0xbfb8aa3b, v101
	v_exp_f32_e32 v116, v116
	v_exp_f32_e32 v118, v118
	v_ldexp_f32 v75, v75, v129
	v_cndmask_b32_e64 v125, 0, 0x42800000, s17
	v_cndmask_b32_e64 v124, 0, 0x42800000, s18
	v_cndmask_b32_e64 v126, 0, 0x42800000, s20
	v_cndmask_b32_e64 v170, 0, 0xffffffc0, s10
	v_fmac_f32_e32 v119, 0xbfb8aa3b, v107
	v_cndmask_b32_e64 v172, 0, 0xffffffc0, s12
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v121, 0xbfb8aa3b, v109 :: v_dual_fmac_f32 v126, 0xbfb8aa3b, v92
	v_exp_f32_e32 v115, v115
	v_exp_f32_e32 v117, v117
	v_ldexp_f32 v76, v76, v128
	v_ldexp_f32 v78, v78, v130
	v_fmac_f32_e32 v123, 0xbfb8aa3b, v100
	v_ldexp_f32 v77, v77, v131
	v_ldexp_f32 v113, v113, v132
	v_ldexp_f32 v84, v84, v135
	v_fmac_f32_e32 v127, 0xbfb8aa3b, v93
	v_ldexp_f32 v114, v114, v168
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v75, 1.0, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v136, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v169, 0, 0xffffffc0, s9
	v_dual_fmac_f32 v125, 0xbfb8aa3b, v97 :: v_dual_add_f32 v76, 1.0, v76
	v_fmac_f32_e32 v124, 0xbfb8aa3b, v96
	v_exp_f32_e32 v119, v119
	v_exp_f32_e32 v121, v121
	v_exp_f32_e32 v120, v120
	v_ldexp_f32 v116, v116, v170
	v_ldexp_f32 v118, v118, v172
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v77, 1.0, v77 :: v_dual_add_f32 v78, 1.0, v78
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v123, v123
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v128, 1.0, v84
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v127, v127
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v113, 1.0, v113 :: v_dual_add_f32 v118, 1.0, v118
	v_add_f32_e32 v114, 1.0, v114
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v130, null, v75, v75, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v171, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v173, 0, 0xffffffc0, s13
	v_cndmask_b32_e64 v174, 0, 0xffffffc0, s14
	v_cndmask_b32_e64 v175, 0, 0xffffffc0, s15
	v_cndmask_b32_e64 v187, 0, 0xffffffc0, s19
	v_exp_f32_e32 v122, v122
	v_exp_f32_e32 v125, v125
	v_exp_f32_e32 v126, v126
	v_ldexp_f32 v115, v115, v136
	v_ldexp_f32 v117, v117, v169
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v116, 1.0, v116
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v84, null, v76, v76, v82
	v_div_scale_f32 v132, null, v78, v78, v105
	v_div_scale_f32 v136, null, v77, v77, v106
	v_div_scale_f32 v169, null, v113, v113, v102
	v_rcp_f32_e32 v200, v130
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v176, 0, 0xffffffc0, s16
	v_cndmask_b32_e64 v177, 0, 0xffffffc0, s17
	v_cndmask_b32_e64 v188, 0, 0xffffffc0, s20
	v_exp_f32_e32 v124, v124
	v_ldexp_f32 v119, v119, v171
	v_ldexp_f32 v121, v121, v173
	v_ldexp_f32 v120, v120, v174
	v_ldexp_f32 v123, v123, v175
	v_ldexp_f32 v127, v127, v187
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v115, 1.0, v115
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v171, null, v128, v128, v103
	v_div_scale_f32 v175, null, v114, v114, v104
	v_div_scale_f32 v187, null, v116, v116, v80
	v_rcp_f32_e32 v199, v84
	v_rcp_f32_e32 v201, v132
	v_rcp_f32_e32 v202, v136
	v_rcp_f32_e32 v203, v169
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v182, 0, 0xffffffc0, s18
	v_ldexp_f32 v122, v122, v176
	v_ldexp_f32 v125, v125, v177
	v_ldexp_f32 v126, v126, v188
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v117, 1.0, v117 :: v_dual_add_f32 v120, 1.0, v120
	v_add_f32_e32 v121, 1.0, v121
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v173, null, v115, v115, v99
	v_rcp_f32_e32 v204, v171
	v_rcp_f32_e32 v206, v175
	v_rcp_f32_e32 v208, v187
	v_fma_f32 v222, -v130, v200, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v123, 1.0, v123
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v124, v124, v182
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v119, 1.0, v119 :: v_dual_add_f32 v122, 1.0, v122
	v_add_f32_e32 v126, 1.0, v126
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v177, null, v117, v117, v79
	v_div_scale_f32 v190, null, v118, v118, v108
	v_div_scale_f32 v191, null, v121, v121, v109
	v_rcp_f32_e32 v205, v173
	v_fma_f32 v221, -v84, v199, 1.0
	v_fma_f32 v223, -v132, v201, 1.0
	v_fma_f32 v224, -v136, v202, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v125, 1.0, v125
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v225, -v169, v203, 1.0
	v_fmac_f32_e32 v200, v222, v200
	v_div_scale_f32 v193, null, v123, v123, v100
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v124, 1.0, v124
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v189, null, v119, v119, v107
	v_div_scale_f32 v192, null, v120, v120, v112
	v_rcp_f32_e32 v207, v177
	v_rcp_f32_e32 v211, v190
	v_rcp_f32_e32 v212, v191
	v_rcp_f32_e32 v214, v193
	v_fmac_f32_e32 v202, v224, v202
	v_div_scale_f32 v195, null, v125, v125, v97
	v_fmac_f32_e32 v203, v225, v203
	v_fma_f32 v225, -v187, v208, 1.0
	v_fmac_f32_e32 v201, v223, v201
	v_fma_f32 v223, -v175, v206, 1.0
	v_fmac_f32_e32 v199, v221, v199
	v_fma_f32 v221, -v171, v204, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v127, 1.0, v127
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v194, null, v122, v122, v101
	v_div_scale_f32 v198, null, v126, v126, v92
	v_rcp_f32_e32 v209, v189
	v_rcp_f32_e32 v213, v192
	v_rcp_f32_e32 v216, v195
	v_fma_f32 v222, -v173, v205, 1.0
	v_fmac_f32_e32 v204, v221, v204
	v_div_scale_f32 v197, null, v127, v127, v93
	v_div_scale_f32 v196, null, v124, v124, v96
	v_rcp_f32_e32 v215, v194
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v218, v197
	v_rcp_f32_e32 v220, v198
	v_fma_f32 v224, -v177, v207, 1.0
	v_fmac_f32_e32 v208, v225, v208
	v_fma_f32 v225, -v193, v214, 1.0
	v_fmac_f32_e32 v205, v222, v205
	v_fma_f32 v222, -v190, v211, 1.0
	v_div_scale_f32 v131, s6, v81, v75, v81
	v_rcp_f32_e32 v217, v196
	v_fma_f32 v221, -v189, v209, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v211, v222, v211
	v_fma_f32 v222, -v195, v216, 1.0
	v_fmac_f32_e32 v207, v224, v207
	v_fma_f32 v224, -v192, v213, 1.0
	v_div_scale_f32 v129, vcc_lo, v82, v76, v82
	v_fmac_f32_e32 v206, v223, v206
	v_fma_f32 v223, -v191, v212, 1.0
	v_fmac_f32_e32 v209, v221, v209
	v_fma_f32 v221, -v194, v215, 1.0
	v_fmac_f32_e32 v214, v225, v214
	v_fma_f32 v225, -v198, v220, 1.0
	v_fmac_f32_e32 v213, v224, v213
	v_fma_f32 v224, -v197, v218, 1.0
	v_fmac_f32_e32 v216, v222, v216
	v_mul_f32_e32 v222, v131, v200
	v_div_scale_f32 v174, s5, v99, v115, v99
	v_fmac_f32_e32 v212, v223, v212
	v_fma_f32 v223, -v196, v217, 1.0
	v_fmac_f32_e32 v218, v224, v218
	v_fma_f32 v224, -v130, v222, v131
	v_fmac_f32_e32 v215, v221, v215
	v_mul_f32_e32 v221, v129, v199
	v_div_scale_f32 v170, s9, v102, v113, v102
	v_fmac_f32_e32 v217, v223, v217
	v_div_scale_f32 v176, s4, v104, v114, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v223, -v84, v221, v129
	v_div_scale_f32 v135, s7, v105, v78, v105
	v_fmac_f32_e32 v222, v224, v200
	v_div_scale_f32 v168, s8, v106, v77, v106
	v_fmac_f32_e32 v221, v223, v199
	v_div_scale_f32 v188, s0, v80, v116, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v130, -v130, v222, v131
	v_mul_f32_e32 v131, v135, v201
	v_fma_f32 v84, -v84, v221, v129
	v_div_scale_f32 v223, s12, v108, v118, v108
	v_fmac_f32_e32 v220, v225, v220
	v_div_scale_f32 v129, s14, v112, v120, v112
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v84, v84, v199, v221
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v199, v168, v202
	v_fma_f32 v221, -v132, v131, v135
	v_div_fmas_f32 v130, v130, v200, v222
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v172, s10, v103, v128, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v131, v221, v201
	v_div_fixup_f32 v75, v130, v75, v81
	v_mul_f32_e32 v130, v223, v211
	v_fma_f32 v200, -v136, v199, v168
	v_div_scale_f32 v225, s11, v107, v119, v107
	v_fma_f32 v132, -v132, v131, v135
	v_div_fixup_f32 v76, v84, v76, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v199, v200, v202 :: v_dual_mul_f32 v226, v129, v213
	v_mul_f32_e32 v82, v176, v206
	v_div_fmas_f32 v131, v132, v201, v131
	v_mul_f32_e32 v132, v170, v203
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v136, -v136, v199, v168
	v_mul_f32_e32 v168, v174, v205
	v_div_scale_f32 v182, s1, v79, v117, v79
	v_fma_f32 v84, -v169, v132, v170
	v_div_fixup_f32 v78, v131, v78, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v105, -v173, v168, v174
	v_mul_f32_e32 v201, v172, v204
	v_fma_f32 v131, -v175, v82, v176
	v_dual_mul_f32 v81, v225, v209 :: v_dual_fmac_f32 v132, v84, v203
	v_fmac_f32_e32 v168, v105, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v171, v201, v172
	v_fmac_f32_e32 v82, v131, v206
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v131, -v189, v81, v225
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v169, -v169, v132, v170
	v_div_scale_f32 v224, s13, v109, v121, v109
	v_dual_fmac_f32 v81, v131, v209 :: v_dual_mul_f32 v164, v164, v83
	v_fma_f32 v131, -v192, v226, v129
	v_fmac_f32_e32 v201, v84, v204
	v_div_fmas_f32 v136, v136, v202, v199
	v_dual_mul_f32 v199, v182, v207 :: v_dual_mul_f32 v170, v224, v212
	v_mul_f32_e32 v202, v188, v208
	v_fmac_f32_e32 v226, v131, v213
	v_fma_f32 v84, -v171, v201, v172
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v222, s6, v100, v123, v100
	v_div_fmas_f32 v132, v169, v203, v132
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v105, -v187, v202, v188
	v_div_fmas_f32 v172, v84, v204, v201
	v_fma_f32 v84, -v177, v199, v182
	v_div_scale_f32 v221, s15, v101, v122, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v169, v222, v214 :: v_dual_fmac_f32 v202, v105, v208
	v_fma_f32 v105, -v191, v170, v224
	v_fmac_f32_e32 v199, v84, v207
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v203, v221, v215
	v_fma_f32 v173, -v173, v168, v174
	v_div_fixup_f32 v103, v172, v128, v103
	v_fma_f32 v175, -v175, v82, v176
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v170, v105, v212
	v_fma_f32 v177, -v177, v199, v182
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v21, v183, v76
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v76, v136, v77, v106
	v_div_fmas_f32 v77, v173, v205, v168
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v200, s16, v97, v125, v97
	v_div_scale_f32 v135, s17, v96, v124, v96
	v_fma_f32 v84, -v190, v130, v223
	v_fma_f32 v105, -v194, v203, v221
	v_fma_f32 v187, -v187, v202, v188
	v_div_fixup_f32 v102, v132, v113, v102
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v103, v180, v103
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v82, v175, v206, v82
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v171, v200, v216
	v_div_fmas_f32 v106, v177, v207, v199
	s_mov_b32 vcc_lo, s0
	v_dual_mul_f32 v201, v135, v217 :: v_dual_fmac_f32 v130, v84, v211
	v_fma_f32 v84, -v193, v169, v222
	v_dual_fmac_f32 v203, v105, v215 :: v_dual_mul_f32 v78, v179, v78
	v_div_fixup_f32 v77, v77, v115, v99
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v231.l, v103.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v99, v181, v102
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v102, v187, v208, v202
	v_fma_f32 v189, -v189, v81, v225
	v_fma_f32 v131, -v195, v171, v200
	v_dual_fmac_f32 v169, v84, v214 :: v_dual_mul_f32 v76, v178, v76
	v_fma_f32 v84, -v196, v201, v135
	v_fma_f32 v190, -v190, v130, v223
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v160.l, v21.h
	v_mov_b16_e64 v219.l, v78.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v82, v82, v114, v104
	v_div_fixup_f32 v80, v102, v116, v80
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v75, v184, v75
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v191, -v191, v170, v224
	v_div_fmas_f32 v81, v189, v209, v81
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v129, -v192, v226, v129
	v_div_fixup_f32 v79, v106, v117, v79
	v_dual_fmac_f32 v201, v84, v217 :: v_dual_and_b32 v104, 1, v160
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v157, v157, v141 :: v_dual_and_b32 v102, 1, v219
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v165, v165, v83 :: v_dual_mul_f32 v82, v186, v82
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v210.l, v76.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v113, v190, v211, v130
	s_mov_b32 vcc_lo, s13
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v80, v95, v80
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v159.l, v75.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v171, v131, v216
	v_fma_f32 v193, -v193, v169, v222
	v_div_fmas_f32 v114, v191, v212, v170
	s_mov_b32 vcc_lo, s14
	v_fma_f32 v194, -v194, v203, v221
	v_div_fixup_f32 v81, v81, v119, v107
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v204.h, v141.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v79, v98, v79
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v98, v129, v213, v226
	s_mov_b32 vcc_lo, s6
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v131.h, v141.l
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v157, v157, v22, v74
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v21, v21
	v_cmp_o_f32_e64 s0, v78, v78
	v_and_b32_e32 v106, 1, v159
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v195, v171, v200
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v21, v21, v104, 0x7fff
	v_and_b32_e32 v104, 1, v210
	v_add3_u32 v78, v78, v102, 0x7fff
	v_mov_b16_e64 v131.l, v82.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v77, v185, v77
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v95, v193, v214, v169
	s_mov_b32 vcc_lo, s15
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v176.h, v141.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v81, v94, v81
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v94, v194, v215, v203
	s_mov_b32 vcc_lo, s16
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v105.h, v141.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v135, -v196, v201, v135
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v75, v75
	v_cmp_o_f32_e64 s5, v76, v76
	v_add3_u32 v75, v75, v106, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v102, v114, v121, v109
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v76, v76, v104, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v104, v22, v216, v171
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.h, 0x7fff, v78.h, s0
	v_and_b32_e32 v78, 1, v131
	v_mov_b16_e32 v105.l, v77.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v174.h, v141.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v106, v113, v118, v108
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v204.l, v79.h
	v_cndmask_b16 v21.l, 0x7fff, v75.h, s1
	v_mov_b16_e64 v174.l, v80.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v95, v95, v123, v100
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v100, v90, v102
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v90, v135, v217, v201
	v_div_fixup_f32 v94, v94, v122, v101
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v75, 1, v105
	v_mov_b16_e64 v188.h, v141.l
	v_cmp_o_f32_e64 s10, v77, v77
	v_cmp_o_f32_e64 s6, v82, v82
	v_cndmask_b16 v22.l, 0x7fff, v76.h, s5
	v_and_b32_e32 v76, 1, v204
	v_add3_u32 v78, v82, v78, 0x7fff
	v_mov_b16_e64 v188.l, v100.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v91, v91, v106
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v82, v90, v124, v96
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v94, v87, v94
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v75, v77, v75, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v77, v104, v125, v97
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v97, 1, v174
	v_mov_b16_e64 v182.h, v141.l
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s4
	v_cmp_o_f32_e64 s4, v79, v79
	v_cmp_o_f32_e64 s1, v80, v80
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v89, v89, v95
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v76, v79, v76, 0x7fff
	v_add3_u32 v79, v80, v97, 0x7fff
	v_cndmask_b16 v87.l, 0x7fff, v78.h, s6
	v_and_b32_e32 v78, 1, v188
	v_mov_b16_e64 v182.l, v91.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v80, v86, v82
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v222.h, v141.l
	v_cmp_o_f32_e64 s5, v100, v100
	v_cndmask_b16 v87.h, 0x7fff, v75.h, s10
	v_and_b32_e32 v75, 1, v182
	v_add3_u32 v78, v100, v78, 0x7fff
	v_mov_b16_e64 v222.l, v80.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v77, v88, v77
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v192.h, v141.l
	v_and_b32_e32 v108, 1, v231
	v_mov_b16_e64 v232.l, v99.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v98, v98, v120, v112
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v176.l, v81.h
	v_cmp_o_f32_e64 s0, v91, v91
	v_add3_u32 v75, v91, v75, 0x7fff
	v_cndmask_b16 v91.h, 0x7fff, v78.h, s5
	v_and_b32_e32 v78, 1, v222
	v_mov_b16_e64 v192.l, v77.h
	v_mov_b16_e64 v223.h, v141.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v195, s7, v93, v127, v93
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v98, v85, v98 :: v_dual_and_b32 v107, 1, v232
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v90, 1, v176
	v_mov_b16_e64 v223.l, v89.h
	v_cndmask_b16 v86.l, 0x7fff, v75.h, s0
	v_and_b32_e32 v75, 1, v192
	v_mov_b16_e64 v225.h, v141.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v196, v195, v218
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s9, v103, v103
	v_add3_u32 v102, v103, v108, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v81, v81
	v_mov_b16_e64 v225.l, v98.h
	v_add3_u32 v81, v81, v90, 0x7fff
	v_cndmask_b16 v90.h, 0x7fff, v76.h, s4
	v_cmp_o_f32_e64 s4, v77, v77
	v_cndmask_b16 v90.l, 0x7fff, v79.h, s1
	v_and_b32_e32 v79, 1, v223
	v_add3_u32 v75, v77, v75, 0x7fff
	v_cndmask_b16 v85.l, 0x7fff, v102.h, s9
	v_cmp_o_f32_e64 s9, v89, v89
	v_and_b32_e32 v76, 1, v225
	v_add3_u32 v79, v89, v79, 0x7fff
	v_cndmask_b16 v89.h, 0x7fff, v75.h, s4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v74, v157, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v75, v167, v83
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s8, v99, v99
	v_add3_u32 v99, v99, v107, 0x7fff
	v_add3_u32 v76, v98, v76, 0x7fff
	v_cndmask_b16 v86.h, 0x7fff, v81.h, vcc_lo
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v46, v75, v46, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v75, -v197, v196, v195
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v85.h, 0x7fff, v99.h, s8
	v_cmp_o_f32_e64 s8, v98, v98
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v77, s0, v92, v126, v92
	v_fmac_f32_e32 v196, v75, v218
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v91.l, 0x7fff, v76.h, s8
	v_add3_u32 v76, v80, v78, 0x7fff
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v78, v166, v83
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v50, v165, v50, v111
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v75, -v197, v196, v195
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v88.h, 0x7fff, v79.h, s9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v74, v46, s3
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v45, v78, v45, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v111, v50, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v75, v75, v218, v196
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v224.h, v141.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v73, v45, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v224.l, v94.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v75, v75, v127, v93
	v_mul_f32_e32 v79, v77, v220
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v49, v164, v49, v110
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v80, v80
	v_cmp_o_f32_e64 s6, v94, v94
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v50, v50, v75
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v74, -v198, v79, v77
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v110, v49, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v89.l, 0x7fff, v76.h, s1
	v_mov_b16_e64 v75.h, v141.l
	v_mov_b16_e32 v75.l, v50.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v79, v74, v220 :: v_dual_mul_f32 v74, 0xbfb8aa3b, v73
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v82, v154, v83
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v84, s27, 4, v134
	s_mov_b32 s27, 0x31027000
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v77, -v198, v79, v77
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v77, v77, v220, v79
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v74, 0, 0x42800000, s5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v81, 1, v224
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v77, v77, v126, v92
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v73
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v81, v94, v81, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v79, v139, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v49, v49, v77
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v74, v74
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v77.h, v141.l
	v_cndmask_b16 v88.l, 0x7fff, v81.h, s6
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v81, v148, v141
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v77.l, v49.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v46
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v17, v79, v17, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v24, v81, v24, v70
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v81, v146, v141
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v74, v74, v76
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v76, 1, v77
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v70, v24, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v70, v163, v83 :: v_dual_mul_f32 v77, v140, v141
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v23, v81, v23, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s4
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v48, v70, v48, v24
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v18, v77, v18, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v71, v17, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v46
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v71, v155, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v24, v48, s3
	v_cndmask_b32_e64 v18, v72, v18, s2
	v_cndmask_b32_e64 v23, v69, v23, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v45, v45
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v69, v162, v83
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v41, v82, v41, v17
	v_fma_f32 v42, v71, v42, v18
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v71, v150, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v47, v69, v47, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v69, 0xbfb8aa3b, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v42, s3
	v_cndmask_b32_e64 v17, v17, v41, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v45, v45, v78
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v23, v47, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v69
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v78, 1.0, v45 :: v_dual_and_b32 v45, 1, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s1
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v75, null, v78, v78, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v45, v50, v45, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v50, 1.0, v74 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v74, v75
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v80, null, v50, v50, v73
	v_div_scale_f32 v72, vcc_lo, v46, v78, v46
	v_div_scale_f32 v70, s0, v73, v50, v73
	v_rcp_f32_e32 v77, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v75, v74, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v47, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v74, v79, v74
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v76, v49, v76, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v79, -v80, v77, 1.0
	v_mul_f32_e32 v92, v72, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v41, v47, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v77, v79, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v75, v92, v72
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v41, 1.0, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v79, v70, v77 :: v_dual_fmac_f32 v92, v48, v74
	v_fma_f32 v48, -v80, v79, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v75, v92, v72
	v_fmac_f32_e32 v79, v48, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v42, v42, v74, v92
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v48, 0xbfb8aa3b, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v80, v79, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v42, v42, v78, v46
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v69, v69, v77, v79
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v18, v18, v42
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s4
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v46, v69, v50, v73
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:72
	scratch_load_b32 v69, off, off offset:76
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v45.l, 0x7fff, v76.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v17, v17, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.l, v18.h
	v_mov_b16_e64 v46.h, v141.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v18, v18
	v_mov_b16_e64 v48.h, v141.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v46, 1, v46
	v_add3_u32 v46, v18, v46, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v42, v42, v47
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, null, v42, v42, v23
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v50, v50, v141
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v69, v69, v141
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v20, v50, v20, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v19, v69, v19, v67
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v50, v70
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v68, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v19, v67, v19, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v67, v254, v141 :: v_dual_mul_f32 v20, v151, v83
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v44, v71, v44, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v14, v67, v14, v66
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v20, v20, v43, v19
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v67, v253, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v44, s3
	v_cndmask_b32_e64 v14, v66, v14, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v66, v161, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, null, v41, v41, v24
	v_div_scale_f32 v68, vcc_lo, v24, v41, v24
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v13, v67, v13, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v49, v47
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v38, v66, v38, v14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v19, v20, s3
	v_cndmask_b32_e64 v13, v65, v13, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v65, v158, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v14, v38, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v47, v49, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v44, 0xbfb8aa3b, v14
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v37, v65, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v49, v69, v49
	v_fma_f32 v69, -v70, v50, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v13, v37, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v44, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v43, v68, v49 :: v_dual_fmac_f32 v50, v69, v50
	v_div_scale_f32 v69, s1, v23, v42, v23
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v13, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v66, -v47, v43, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v67, v69, v50
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v43, v66, v49
	v_fma_f32 v38, -v70, v67, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v47, v43, v68
	v_fmac_f32_e32 v67, v38, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v20, v20, v49, v43
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v38, -v70, v67, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v20, v20, v41, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v24, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v38, v38, v50, v67
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.h, 0x7fff, v46.h, s0
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v46, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v18, v18, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.l, v17.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v23, v38, v42, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v17, v17
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v42, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v19, v19, v23 :: v_dual_and_b32 v48, 1, v48
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v23.l, v18.h
	v_mov_b16_e64 v23.h, v141.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v48, v17, v48, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v38.h, v141.l
	v_and_b32_e32 v23, 1, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.l, 0x7fff, v48.h, s0
	v_cmp_o_f32_e64 s0, v18, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v20, v24, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v23, v18, v23, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v18, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v24, v41
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v17, 1.0, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v17, v17, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v20, v24, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, null, v20, v20, v37
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v44, v44, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v16, v44, v16, v64
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v44, v145, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v64, v16, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v46, v46, v141
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v19.h
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v42, v42, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v38
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v15, v46, v15, v61
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v5, v42, v5, v62
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v24, v19, v38, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v38, v41
	v_rcp_f32_e32 v42, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v61, v15, s2
	v_cndmask_b32_e64 v5, v62, v5, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v18, v141
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v43, v42, 1.0
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v6, v18, v6, v63
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v18, -v41, v38, 1.0
	v_fmac_f32_e32 v42, v48, v42
	v_div_scale_f32 v48, s1, v37, v20, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v63, v6, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v18, v38
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v18, v153, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v18, v18, v40, v16
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v40, v144, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v16, v18, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v40, v33, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v40, v48, v42
	v_div_scale_f32 v47, vcc_lo, v14, v17, v14
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v18, v152, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v33, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v46, v47, v38
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v18, v18, v39, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v41, v46, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v15, v18, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v18, v44, v34, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v43, v40, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v46, v39, v38 :: v_dual_mul_f32 v49, 0xbfb8aa3b, v16
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v18, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v40, v34, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v41, v46, v47
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v49
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v18, v18, v38, v46
	v_fma_f32 v38, -v43, v40, v48
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, s5
	v_cndmask_b32_e64 v49, 0, 0x42800000, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v14, v18, v17, v14
	v_div_fmas_f32 v38, v38, v42, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v49, 0xbfb8aa3b, v16 :: v_dual_mul_f32 v6, v6, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v38, v20, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v20.h, v141.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v37, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v5, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v40, v137, v83
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.l, 0x7fff, v24.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mov_b16_e32 v20.l, v5.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v15
	v_ldexp_f32 v33, v34, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v20, 1, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_ldexp_f32 v14, v39, v18
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v39, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v6.h
	v_mov_b16_e64 v18.h, v141.l
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v19, 1.0, v33 :: v_dual_add_f32 v14, 1.0, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, null, v19, v19, v16
	v_div_scale_f32 v34, null, v14, v14, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v6, v18, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v33, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v24, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v17, v33, 1.0
	v_fmac_f32_e32 v33, v38, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v34, v24, 1.0
	v_fmac_f32_e32 v24, v38, v24
	v_div_scale_f32 v38, s1, v15, v14, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v20, v5, v20, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v42, v38, v24 :: v_dual_mul_f32 v37, v37, v141
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v8, v37, v8, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, vcc_lo, v16, v19, v16
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v39, v39, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v6, v39, v7, v59
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v60, v8, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v39, v138, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v59, v6, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v36, v39, v36, v7
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v34, v42, v38
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v35, v40, v35, v6
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v36, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v36, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v39, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v35, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v35, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v8, v37, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v17, v8, v37
	v_fmac_f32_e32 v8, v41, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v8, v37
	v_div_fmas_f32 v8, v17, v33, v8
	v_fma_f32 v17, -v34, v42, v38
	s_mov_b32 vcc_lo, s1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v33, v149, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v8, v19, v16
	v_div_fmas_f32 v17, v17, v24, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v14, v17, v14, v15
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v7, v8
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v18.l, 0x7fff, v20.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v14.h, v141.l
	v_cmp_o_f32_e64 s4, v7, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v14.l, v6.h
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v36, v36, v141
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v10, v36, v10, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v58, v10, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v19, v33, v30, v10
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v30, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v10, v19, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v7.h
	v_mov_b16_e64 v10.h, v141.l
	v_and_b32_e32 v14, 1, v14
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v16, v147, v83
	scratch_load_b32 v19, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v10, v7, v10, 0x7fff
	v_add3_u32 v7, v6, v14, 0x7fff
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v14, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v35, v35, v141
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v9, v35, v9, v57
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v35, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v57, v9, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v5, v16, v29, v9
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v16, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v9, v5, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v9, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v15, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	v_cndmask_b32_e64 v9, 0, 0x42800000, s0
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v15, 0, 0x42800000, s1
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v8
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v9, v9
	v_ldexp_f32 v9, v9, v17
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v17, v143, v83
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_add_f32 v9, 1.0, v9 :: v_dual_mul_f32 v30, v30, v83
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v14, v14, v141
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v12, v14, v12, v56
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v14, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v35, v35, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v56, v12, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v17, v17, v32, v12
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v16, v16, v141
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v12, v17, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v19, v19, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v11, v19, v11, v55
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v19, v142, v83
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v2, v16, v2, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v55, v11, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v2, v54, v2, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v16, v19, v31, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, s1, v8, v9, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v26, v30, v26, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v16, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v15, 0xbfb8aa3b, v5 :: v_dual_mul_f32 v16, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v26, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v15, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v24
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v15, v15, v20
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v9, v9, v8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v11
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v17, v20
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	v_exp_f32_e32 v16, v16
	v_exp_f32_e32 v24, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v19, null, v15, v15, v5
	v_div_scale_f32 v32, s4, v5, v15, v5
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v29, -v20, v17, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v24, v24, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v17, v29, v17 :: v_dual_add_f32 v24, 1.0, v24
	v_mul_f32_e32 v33, v31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v20, v33, v31
	v_fmac_f32_e32 v33, v36, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v33, v31
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v141
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v1, v14, v1, v53
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v14, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v53, v1, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v25, v35, v25, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v19, v14, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v25, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v14, v29, v14
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v17, v20, v17, v33
	s_mov_b32 vcc_lo, s4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v16, v16, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v29, v32, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v8, v17, v9, v8
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v9, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v19, v29, v32
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v8
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v16, v16, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v34, v14
	v_div_scale_f32 v34, null, v24, v24, v11
	v_rcp_f32_e32 v30, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v19, v29, v32
	v_rcp_f32_e32 v31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v14, v19, v14, v29
	v_fma_f32 v19, -v35, v30, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v5, v14, v15, v5
	v_fma_f32 v20, -v34, v31, 1.0
	v_div_scale_f32 v15, s0, v11, v24, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v30, v19, v30 :: v_dual_mul_f32 v1, v1, v5
	v_fmac_f32_e32 v31, v20, v31
	v_div_scale_f32 v14, vcc_lo, v12, v16, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v5, v15, v31
	v_mul_f32_e32 v17, v14, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v34, v5, v15
	v_fmac_f32_e32 v5, v8, v31
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:40
	scratch_load_b32 v19, off, off
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v15, -v34, v5, v15
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v8, v8, v83 :: v_dual_mul_f32 v19, v19, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v4, v19, v4, v51
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v51, v4, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v8, v8, v28, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v8, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v9, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v3, v9, v3, v52
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fma_f32 v9, -v35, v17, v14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v52, v3, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v17, v9, v30
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v9, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v14, -v35, v17, v14
	v_div_fmas_f32 v14, v14, v30, v17
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v5, v15, v31, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v15.l, v2.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v14, v16, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v15.h, v141.l
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v5, v24, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v8
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v8.h, v141.l
	v_cndmask_b16 v10.l, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_cmp_o_f32_e64 s1, v4, v4
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v9, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v9, v9, v27, v3
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v9, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v1.h
	v_mov_b16_e64 v9.h, v141.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v5, 1, v15
	v_and_b32_e32 v6, 1, v9
	v_mov_b16_e32 v9.l, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v8.l, v3.h
	v_add3_u32 v5, v2, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v6, v1, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v3, v3
	v_and_b32_e32 v7, 1, v8
	v_and_b32_e32 v8, 1, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v3, v7, 0x7fff
	v_add3_u32 v2, v4, v8, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_dual_mov_b32 v9, 0x5410 :: v_dual_cndmask_b32 v16, v45, v23
	v_mov_b32_e32 v11, 0x7632
	v_cndmask_b32_e32 v1, v85, v21, vcc_lo
	v_cndmask_b32_e32 v17, v3, v18, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x1054, v9, vcc_lo
	v_dual_cndmask_b32 v3, v18, v3 :: v_dual_cndmask_b32 v18, v0, v10
	v_dual_cndmask_b32 v0, v10, v0 :: v_dual_cndmask_b32 v11, 0x3276, v11
	v_lshl_or_b32 v9, v9, 8, v9
	v_dual_cndmask_b32 v2, v21, v85 :: v_dual_cndmask_b32 v7, v90, v91
	v_cndmask_b32_e32 v12, v86, v88, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v11, v11, 8, v11
	v_and_b32_e32 v9, 0x540054, v9
	v_cndmask_b32_e32 v14, v13, v89, vcc_lo
	v_cndmask_b32_e32 v13, v89, v13, vcc_lo
	s_mov_b32 s0, 0x76543210
	v_and_b32_e32 v11, 0x760076, v11
	v_lshl_or_b32 v9, v9, 4, v9
	v_cndmask_b32_e32 v4, v87, v22, vcc_lo
	v_cndmask_b32_e32 v6, v91, v90, vcc_lo
	v_cndmask_b32_e32 v8, v88, v86, vcc_lo
	v_lshl_or_b32 v10, v11, 4, v11
	v_cndmask_b32_e32 v5, v22, v87, vcc_lo
	v_cndmask_b32_e32 v15, v23, v45, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v19, 0x5040504, v9
	v_and_b32_e32 v20, 0x7060706, v10
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v19
	v_perm_b32 v1, v2, v1, v20
	v_perm_b32 v2, v5, v4, v19
	v_perm_b32 v3, v5, v4, v20
	v_perm_b32 v4, v7, v6, v19
	v_perm_b32 v5, v7, v6, v20
	v_perm_b32 v6, v11, v8, v19
	v_perm_b32 v7, v11, v8, v20
	v_perm_b32 v8, v12, v14, v19
	v_perm_b32 v9, v12, v14, v20
	v_perm_b32 v10, v13, v15, v19
	v_perm_b32 v11, v13, v15, v20
	v_perm_b32 v12, v16, v17, v19
	v_perm_b32 v13, v16, v17, v20
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v16, v133, v134, 1
	v_add_lshl_u32 v17, v133, v84, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v14, v21, v18, v19
	v_perm_b32 v15, v21, v18, v20
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v16, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v17, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v17, s[24:27], 0 offen offset:256
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 84
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 84
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16428
; TotalNumSgprs: 53
; NumVgprs: 256
; ScratchSize: 84
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 53
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 84
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm32_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 20
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
