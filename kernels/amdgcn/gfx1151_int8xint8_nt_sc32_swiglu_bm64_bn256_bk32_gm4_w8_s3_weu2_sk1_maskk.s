	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
	v_mov_b32_e32 v204, v0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_and_b32_e32 v2, 1, v204
	v_lshlrev_b32_e32 v49, 4, v2
	v_lshlrev_b32_e32 v4, 3, v204
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 2, v204
	v_and_b32_e32 v47, 15, v204
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s26, 63
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
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_mul_lo_u32 v1, s31, v1
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v0, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
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
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s16, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s17
	v_readfirstlane_b32 s17, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v0, 1, v204
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_mad_u64_u32 v[50:51], null, s31, v0, v[49:50]
	s_mov_b32 s11, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s17, s17
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_mov_b32 s39, s11
	s_mov_b32 s38, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s18, s18, s17
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_lshl_add_u32 v26, s31, 7, v50
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s17, s18
	s_mov_b64 s[28:29], s[14:15]
	s_add_i32 s17, s17, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s17
	s_xor_b32 s17, s2, s7
	s_mul_i32 s18, s4, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s5, s5, s18
	s_add_i32 s18, s4, 1
	s_sub_i32 s19, s5, s16
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s18, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s16
	s_mov_b32 s16, 0
	s_cselect_b32 s4, s18, s4
	.loc	1 312 26                        ; generate_amdgcn.py:312:26
	s_lshl_b32 s30, s3, 5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s18, s31, 31
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s4, s18, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s3, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s26, s3, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s7
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v3, s30, v49
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s4, s4, 27
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	s_add_i32 s46, s26, s27
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s18, s4
.Ltmp19:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 6
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	s_mul_i32 s50, s46, s31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s18, 31
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s3, s31, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	s_add_i32 s7, s50, s30
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	s_mul_i32 s49, s26, s31
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	v_add_nc_u32_e32 v5, s7, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s3, s3, s2
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_mul_i32 s4, s33, s31
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	s_add_i32 s6, s49, s30
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	v_add_nc_u32_e32 v3, s7, v50
	.loc	1 326 35 is_stmt 0              ; generate_amdgcn.py:326:35
	v_cndmask_b32_e64 v21, 0x80000000, v5, s3
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	v_add_nc_u32_e32 v5, 32, v5
	.loc	1 302 19 is_stmt 1              ; generate_amdgcn.py:302:19
	v_and_b32_e32 v48, 24, v4
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_and_b32 s37, s37, 0xffff
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_cndmask_b32_e64 v17, 0x80000000, v3, s3
	.loc	1 326 43 is_stmt 0              ; generate_amdgcn.py:326:43
	v_add_nc_u32_e32 v3, 32, v3
	.loc	1 312 21 is_stmt 1              ; generate_amdgcn.py:312:21
	v_or_b32_e32 v0, s30, v48
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add3_u32 v51, v1, v48, s4
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v1, s6, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v0
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v0, s6, v50
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v6, s30, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e64 v8, 0x80000000, v1, s3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmp_gt_i32 s18, 63
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e64 v7, 0x80000000, v0, s3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s34, s30, 32
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v25, 32, v0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e32 v0, 0x80000000, v6, vcc_lo
	.loc	1 318 34 is_stmt 0              ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v28, s34, v51
	.loc	1 320 34 is_stmt 1              ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v27, 32, v1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_or_b32_e32 v1, s34, v48
	v_or_b32_e32 v6, s34, v49
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v7, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v8, s[36:39], 0 offen
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s4, s31, v6
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	s_clause 0x1
	buffer_load_b128 v[17:20], v17, s[36:39], 0 offen
	buffer_load_b128 v[21:24], v21, s[36:39], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[0:1], v0, s[8:11], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_cndmask_b32_e32 v6, 0x80000000, v28, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s3
	s_cmpk_gt_i32 s18, 0x5f
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_dual_cndmask_b32 v7, 0x80000000, v25 :: v_dual_cndmask_b32 v8, 0x80000000, v27
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[45:46], v6, s[8:11], 0 offen
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x3
	buffer_load_b128 v[27:30], v7, s[36:39], 0 offen
	buffer_load_b128 v[33:36], v8, s[36:39], 0 offen
	buffer_load_b128 v[37:40], v3, s[36:39], 0 offen
	buffer_load_b128 v[41:44], v5, s[36:39], 0 offen
	v_lshlrev_b32_e32 v3, 4, v204
	v_bfe_i32 v5, v204, 3, 1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_bfe_i32 v6, v204, 4, 1
	v_and_b32_e32 v25, 0x778, v4
	v_lshlrev_b32_e32 v4, 5, v204
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_and_b32_e32 v7, 0xf70, v3
	v_and_b32_e32 v8, 0x90, v5
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v6, 0x90, v6
	v_and_b32_e32 v5, 16, v204
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_xor_b32_e32 v53, v8, v7
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_xor_b32_e32 v92, v6, v25
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v6, 16, v47
	v_or_b32_e32 v7, 32, v47
	v_or_b32_e32 v8, 48, v47
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v25, 0, v53
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v31, 0, v92
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(8)
	ds_store_b128 v25, v[13:16] offset:4096
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	s_waitcnt vmcnt(7)
	ds_store_b128 v25, v[17:20] offset:16384
	s_waitcnt vmcnt(6)
	ds_store_b128 v25, v[21:24] offset:20480
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(5)
	ds_store_b64 v31, v[0:1] offset:32768
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_store_b128 v25, v[9:12]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v31, v[45:46] offset:34816
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v25, v[27:30] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v25, v[33:36] offset:12288
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	s_waitcnt vmcnt(1)
	ds_store_b128 v25, v[37:40] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v25, v[41:44] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_and_b32_e32 v12, 0x160, v4
	v_and_b32_e32 v1, 4, v204
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_and_or_b32 v11, 0xe00, v3, v12
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr12
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr11
.LBB0_3:                                ; %Flow821
	s_load_b64 s[24:25], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v5
	v_or_b32_e32 v0, s33, v47
	v_or_b32_e32 v5, s33, v6
	v_or_b32_e32 v6, s33, v7
	v_or_b32_e32 v7, s33, v8
	v_and_b32_e32 v9, 0xf0, v204
	s_ashr_i32 s35, s5, 5
	v_or_b32_e32 v144, s26, v204
	v_mul_lo_u32 v203, v0, s35
	v_mul_lo_u32 v135, v5, s35
	v_mul_lo_u32 v136, v6, s35
	v_mul_lo_u32 v170, v7, s35
	v_lshlrev_b32_e32 v183, 2, v9
	v_lshlrev_b32_e32 v196, 1, v204
	v_lshlrev_b32_e32 v205, 5, v2
	v_lshlrev_b32_e32 v181, 1, v9
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_lshl_b32 s44, s27, 1
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v9, off offset:256
	scratch_store_b32 off, v47, off offset:252
	scratch_store_b32 off, v135, off offset:180
	scratch_store_b32 off, v136, off offset:184
	scratch_store_b32 off, v170, off offset:188
	scratch_store_b32 off, v203, off offset:192
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v0, v204, 2, 1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v2, 0x160, v4
	v_and_b32_e32 v0, 0x90, v0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v186, 0 :: v_dual_and_b32 v9, 28, v196
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v1, 0xe00, v3, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v26, off offset:232
	scratch_store_b32 off, v11, off offset:68
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v11, 0
	scratch_store_b32 off, v1, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v1, v1, v0
	v_or_b32_e32 v0, v0, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:216
	scratch_store_b32 off, v1, off offset:212
	v_xor_b32_e32 v0, 16, v1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:220
	scratch_store_b32 off, v183, off offset:268
	scratch_store_b32 off, v205, off offset:276
	v_add3_u32 v0, 0, v183, v205
	v_mov_b32_e32 v193, 0
	v_mov_b32_e32 v179, 0
	scratch_store_b32 off, v11, off offset:64 ; 4-byte Folded Spill
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v11, 0
	v_add_nc_u32_e32 v0, v0, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:224
	scratch_store_b32 off, v181, off offset:264
	v_add_nc_u32_e32 v0, 0, v181
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:284
	scratch_store_b32 off, v11, off offset:80
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v162, 0
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	scratch_load_b32 v251, off, off offset:228 ; 4-byte Folded Reload
	v_mov_b32_e32 v1, s16
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v204, off offset:260
	scratch_store_b32 off, v11, off offset:72
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v128, 0
	v_mov_b32_e32 v151, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_mov_b32_e32 v181, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v30, 0
	scratch_store_b32 off, v196, off offset:272 ; 4-byte Folded Spill
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_mov_b32_e32 v247, 0
	v_mov_b32_e32 v69, 0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s51, s35, 3
	s_add_i32 s14, s34, 32
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s15, 1
	s_add_i32 s53, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s48, 0, 0x2000
	s_add_i32 s52, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s51, s51, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
	s_clause 0x6                            ; 36-byte Folded Spill
	scratch_store_b32 off, v11, off offset:76
	scratch_store_b64 off, v[49:50], off offset:236
	scratch_store_b64 off, v[50:51], off offset:244
	scratch_store_b32 off, v48, off offset:196
	scratch_store_b32 off, v51, off offset:200
	scratch_store_b32 off, v53, off offset:204
	scratch_store_b32 off, v92, off offset:208
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s1, s17, 5
	s_mov_b32 s18, s30
	s_mov_b32 s30, s34
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s34, s14, s1
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v224, off offset:160
	scratch_store_b32 off, v223, off offset:156
	scratch_store_b32 off, v165, off offset:152
	scratch_store_b32 off, v156, off offset:148
	scratch_store_b32 off, v134, off offset:144
	scratch_store_b32 off, v128, off offset:140
	scratch_store_b32 off, v152, off offset:136
	scratch_store_b32 off, v151, off offset:132
	scratch_store_b32 off, v129, off offset:128
	scratch_store_b32 off, v84, off offset:16
	scratch_store_b32 off, v197, off offset:124
	scratch_store_b32 off, v250, off offset:120
	scratch_store_b32 off, v244, off offset:116
	scratch_store_b32 off, v85, off offset:20
	scratch_store_b32 off, v153, off offset:112
	scratch_store_b32 off, v86, off offset:24
	scratch_store_b32 off, v172, off offset:108
	scratch_store_b32 off, v28, off offset:28
	scratch_store_b32 off, v155, off offset:104
	scratch_store_b32 off, v164, off offset:100
	scratch_store_b32 off, v127, off offset:96
	scratch_store_b32 off, v249, off offset:92
	scratch_store_b32 off, v158, off offset:88
	scratch_store_b32 off, v248, off offset:84
	scratch_store_b32 off, v46, off offset:60
	scratch_store_b32 off, v45, off offset:56
	scratch_store_b32 off, v44, off offset:52
	scratch_store_b32 off, v43, off offset:48
	scratch_store_b32 off, v41, off offset:44
	scratch_store_b32 off, v40, off offset:40
	scratch_store_b32 off, v32, off offset:36
	scratch_store_b32 off, v27, off offset:32
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v26, off offset:12
	scratch_store_b32 off, v0, off offset:8
	scratch_store_b32 off, v10, off offset:4
	scratch_store_b32 off, v9, off
	v_or_b32_e32 v9, s34, v48
	s_mov_b32 s1, s16
	v_dual_mov_b32 v129, v70 :: v_dual_mov_b32 v28, v120
	v_mov_b32_e32 v128, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v9
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	v_add_nc_u32_e32 v9, s34, v51
	v_mov_b32_e32 v31, v37
	v_dual_mov_b32 v37, v42 :: v_dual_mov_b32 v42, v33
	v_dual_mov_b32 v33, v30 :: v_dual_mov_b32 v152, v111
	.loc	1 318 26 is_stmt 0              ; generate_amdgcn.py:318:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	v_dual_mov_b32 v153, v225 :: v_dual_mov_b32 v32, v36
	v_dual_mov_b32 v43, v188 :: v_dual_mov_b32 v36, v253
	buffer_load_b64 v[9:10], v9, s[8:11], 0 offen
	v_mov_b32_e32 v253, v25
	v_dual_mov_b32 v41, v190 :: v_dual_mov_b32 v190, v175
	v_mov_b32_e32 v175, v147
	v_dual_mov_b32 v197, v131 :: v_dual_mov_b32 v188, v173
	v_mov_b32_e32 v173, v145
	v_mov_b32_e32 v145, v29
	v_mov_b32_e32 v29, v254
	v_mov_b32_e32 v254, v38
	v_dual_mov_b32 v38, v255 :: v_dual_mov_b32 v255, v252
	v_mov_b32_e32 v40, v186
	v_dual_mov_b32 v27, v90 :: v_dual_mov_b32 v186, v171
	v_dual_mov_b32 v171, v148 :: v_dual_mov_b32 v44, v191
	v_dual_mov_b32 v191, v176 :: v_dual_mov_b32 v176, v149
	v_mov_b32_e32 v149, v94
	v_mov_b32_e32 v25, v139
	.loc	1 320 34 is_stmt 1              ; generate_amdgcn.py:320:34
	s_add_i32 s19, s34, s49
	v_mov_b32_e32 v131, v141
	v_dual_mov_b32 v165, v109 :: v_dual_mov_b32 v134, v88
	v_mov_b32_e32 v252, v89
	v_dual_mov_b32 v148, v93 :: v_dual_mov_b32 v151, v95
	v_mov_b32_e32 v172, v144
	.loc	1 326 43                        ; generate_amdgcn.py:326:43
	s_add_i32 s20, s34, s50
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s16, s18, 31
	v_mov_b32_e32 v30, v69
	v_mov_b32_e32 v164, v110
	s_lshr_b32 s16, s16, 27
	v_mov_b32_e32 v170, v143
	s_add_i32 s18, s18, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s18, s18, 5
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s16, s18, s44
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s18, s35
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(0)
	scratch_store_b64 off, v[9:10], off offset:172 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v10, off, off offset:216
	scratch_load_b32 v26, off, off offset:220
	scratch_load_b32 v0, off, off offset:212
	v_mov_b32_e32 v147, v91
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v156, off, off offset:68
	scratch_load_b32 v155, off, off offset:64
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s53, v10
	v_xor_b32_e32 v10, 16, v10
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v69, s1, v0
	v_add_nc_u32_e32 v70, s1, v26
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v10, s53, v10
	ds_load_b128 v[61:64], v9 offset:512
	ds_load_b128 v[65:68], v10 offset:512
	ds_load_b128 v[120:123], v9 offset:1024
	ds_load_b128 v[124:127], v10 offset:1024
	ds_load_b128 v[211:214], v9 offset:1536
	ds_load_b128 v[223:226], v10 offset:1536
	ds_load_b128 v[53:56], v9
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[45:48], v69
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[57:60], v10
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[49:52], v70
	s_mov_b32 s53, s47
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[45:48], v[53:56], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[72:79], v[45:48], v[61:64], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[45:48], v[120:123], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[45:48], v[211:214], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[49:52], v[57:60], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[72:79], v[49:52], v[65:68], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[49:52], v[124:127], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[49:52], v[223:226], v[9:16] neg_lo:[1,1,0]
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[45:48], v69 offset:4096
	ds_load_b128 v[49:52], v70 offset:4096
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_add_nc_u32_e32 v69, s52, v0
	v_add_nc_u32_e32 v70, s52, v26
	v_mov_b32_e32 v0, v138
	ds_load_b128 v[227:230], v69 offset:4096
	ds_load_b128 v[231:234], v70 offset:4096
	ds_load_b128 v[135:138], v69
	v_mov_b32_e32 v26, v140
	ds_load_b128 v[139:142], v70
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[45:48], v[53:56], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[45:48], v[61:64], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[45:48], v[120:123], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[45:48], v[211:214], v[1:8] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[215:222], v[135:138], v[61:64], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[235:242], v[227:230], v[61:64], v[1:8] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[88:95], v[49:52], v[57:60], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[49:52], v[65:68], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[49:52], v[124:127], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[49:52], v[223:226], v[112:119] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[45:52], v[135:138], v[53:56], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[203:210], v[227:230], v[53:56], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[215:222], v[139:142], v[65:68], v[215:222] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[235:242], v[231:234], v[65:68], v[235:242] neg_lo:[1,1,0]
	v_mov_b32_e32 v53, v247
	v_wmma_i32_16x16x16_iu8 v[243:250], v[135:138], v[120:123], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[227:230], v[120:123], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[45:52], v[139:142], v[57:60], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[243:250], v[139:142], v[124:127], v[243:250] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[203:210], v[231:234], v[57:60], v[203:210] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[231:234], v[124:127], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[135:138], v[211:214], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v61, v238
	v_cvt_f32_i32_e32 v238, v243
	v_cvt_f32_i32_e32 v60, v203
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[120:127], v[139:142], v[223:226], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[227:230], v[211:214], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v211, v52
	v_cvt_f32_i32_e32 v52, v242
	v_cvt_f32_i32_e32 v242, v120
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[231:234], v[223:226], v[137:144] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v233, v216
	v_cvt_f32_i32_e32 v232, v217
	v_cvt_f32_i32_e32 v217, v220
	v_cvt_f32_i32_e32 v216, v221
	v_cvt_f32_i32_e32 v221, v248
	v_cvt_f32_i32_e32 v220, v249
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v249, v94
	v_cvt_f32_i32_e32 v248, v95
	v_cvt_f32_i32_e32 v94, v97
	v_cvt_f32_i32_e32 v95, v98
	v_cvt_f32_i32_e32 v97, v100
	v_cvt_f32_i32_e32 v98, v101
	v_cvt_f32_i32_e32 v100, v103
	v_cvt_f32_i32_e32 v101, v104
	v_cvt_f32_i32_e32 v103, v106
	v_cvt_f32_i32_e32 v104, v107
	v_cvt_f32_i32_e32 v106, v109
	v_cvt_f32_i32_e32 v107, v110
	v_cvt_f32_i32_e32 v109, v9
	v_cvt_f32_i32_e32 v110, v10
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	scratch_load_b64 v[9:10], off, off offset:236 ; 8-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v234, v215
	v_cvt_f32_i32_e32 v215, v222
	v_cvt_f32_i32_e32 v222, v247
	v_cvt_f32_i32_e32 v135, v143
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v247, v93
	v_cvt_f32_i32_e32 v93, v96
	v_cvt_f32_i32_e32 v96, v99
	v_cvt_f32_i32_e32 v99, v102
	v_cvt_f32_i32_e32 v102, v105
	v_cvt_f32_i32_e32 v105, v108
	v_cvt_f32_i32_e32 v108, v111
	v_cvt_f32_i32_e32 v111, v11
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v143, off, off offset:224
	scratch_load_b32 v11, off, off offset:232
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v226, v124
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v124, v12
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v225, v125
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v125, v13
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v231, v218
	v_cvt_f32_i32_e32 v218, v219
	v_cvt_f32_i32_e32 v219, v250
	v_cvt_f32_i32_e32 v250, v68
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v68, v18
	v_cvt_f32_i32_e32 v120, v21
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v224, v126
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v126, v14
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v230, v45
	v_cvt_f32_i32_e32 v45, v207
	v_cvt_f32_i32_e32 v228, v47
	v_cvt_f32_i32_e32 v47, v208
	v_cvt_f32_i32_e32 v208, v139
	v_cvt_f32_i32_e32 v207, v140
	scratch_store_b32 off, v45, off offset:164 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v45, v209
	v_cvt_f32_i32_e32 v209, v138
	v_cvt_f32_i32_e32 v227, v48
	v_cvt_f32_i32_e32 v214, v49
	v_cvt_f32_i32_e32 v213, v50
	v_cvt_f32_i32_e32 v212, v51
	v_cvt_f32_i32_e32 v59, v204
	v_cvt_f32_i32_e32 v58, v205
	v_cvt_f32_i32_e32 v55, v206
	scratch_store_b32 off, v45, off offset:168 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v48, v210
	v_cvt_f32_i32_e32 v49, v239
	v_cvt_f32_i32_e32 v51, v240
	v_cvt_f32_i32_e32 v50, v241
	v_cvt_f32_i32_e32 v206, v64
	v_cvt_f32_i32_e32 v205, v65
	v_cvt_f32_i32_e32 v204, v66
	v_cvt_f32_i32_e32 v203, v67
	v_cvt_f32_i32_e32 v56, v69
	v_cvt_f32_i32_e32 v54, v70
	v_cvt_f32_i32_e32 v57, v71
	v_cvt_f32_i32_e32 v241, v121
	v_cvt_f32_i32_e32 v240, v122
	v_cvt_f32_i32_e32 v239, v123
	v_cvt_f32_i32_e32 v45, v127
	v_cvt_f32_i32_e32 v210, v137
	v_cvt_f32_i32_e32 v71, v141
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v69, v19
	v_cvt_f32_i32_e32 v70, v20
	v_cvt_f32_i32_e32 v121, v22
	v_cvt_f32_i32_e32 v122, v23
	v_cvt_f32_i32_e32 v123, v24
	v_cvt_f32_i32_e32 v127, v15
	v_cvt_f32_i32_e32 v137, v16
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v62, v237
	v_cvt_f32_i32_e32 v237, v244
	v_cvt_f32_i32_e32 v63, v236
	v_cvt_f32_i32_e32 v236, v245
	v_cvt_f32_i32_e32 v136, v235
	v_cvt_f32_i32_e32 v235, v246
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v85, v85
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v229, v46
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v46, v144
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v142, v142
	s_mov_b32 s52, s45
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	scratch_load_b32 v14, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v9, s34, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e64 s1, s31, v9
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v9, v172, s16, 1
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_u16 v9, v9, s[40:43], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v14, v14, s18, 1
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v14, 0x80000000, v14 :: v_dual_lshlrev_b32 v9, 16, v9
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v143, v9 offset:36864
	scratch_load_b64 v[9:10], off, off offset:244 ; 8-byte Folded Reload
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s19, v11
	.loc	1 320 26 is_stmt 0              ; generate_amdgcn.py:320:26
	v_cndmask_b32_e64 v13, 0x80000000, v10, s1
	v_mov_b32_e32 v12, v9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 326 43 is_stmt 1              ; generate_amdgcn.py:326:43
	v_add_nc_u32_e32 v10, s20, v12
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v9, s19, v12
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	scratch_load_b32 v12, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_cndmask_b32_e64 v18, 0x80000000, v10, s1
	.loc	1 326 43 is_stmt 0              ; generate_amdgcn.py:326:43
	v_add_nc_u32_e32 v10, s20, v11
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	scratch_load_b32 v11, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_cndmask_b32_e64 v21, 0x80000000, v10, s1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	scratch_load_b32 v10, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s15, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	s_cmp_lt_i32 s1, 2
	s_cselect_b32 s15, s1, 0
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_lshl_b32 s1, s15, 11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s1, s1, 0
	s_add_i32 s47, s1, 0x8000
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v12, v12, s18, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v11, v11, s18, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v10, v10, s18, 1
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_lshl_b32 s18, s15, 13
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	s_clause 0x3
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	buffer_load_u16 v138, v11, s[4:7], 0 offen
	buffer_load_u16 v139, v12, s[4:7], 0 offen
	buffer_load_u16 v140, v14, s[4:7], 0 offen
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v243, 16, v10
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v245, 16, v139
	v_mov_b32_e32 v139, v25
	v_mov_b32_e32 v25, v253
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v141, v243, v17
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x3
	buffer_load_b128 v[9:12], v9, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v13, s[36:39], 0 offen
	buffer_load_b128 v[17:20], v18, s[36:39], 0 offen
	buffer_load_b128 v[21:24], v21, s[36:39], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v251 offset:36864
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v244, 16, v138
	v_mov_b32_e32 v138, v0
	scratch_load_b32 v144, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v253, v36 :: v_dual_lshlrev_b32 v246, 16, v140
	v_mov_b32_e32 v36, v32
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v166, v141, v64
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v243, v68
	v_mov_b32_e32 v141, v131
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v131, v197 :: v_dual_fmac_f32 v168, v68, v65
	v_dual_mul_f32 v68, v243, v69 :: v_dual_mov_b32 v69, v30
	v_dual_mov_b32 v30, v33 :: v_dual_mov_b32 v33, v42
	v_dual_mov_b32 v42, v37 :: v_dual_mov_b32 v37, v31
	v_mov_b32_e32 v31, v128
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v184, v68, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v243, v70
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v196, v68, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v244, v72
	v_mov_b32_e32 v70, v129
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:80
	scratch_load_b32 v128, off, off offset:72
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v181, v68, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v244, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v182, v68, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v244, v74
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v199, v68, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v244, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v157, v68, v67 :: v_dual_mul_f32 v68, v245, v80
	v_dual_fmac_f32 v183, v68, v64 :: v_dual_mul_f32 v68, v245, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v167, v68, v65 :: v_dual_mul_f32 v68, v245, v82
	v_dual_fmac_f32 v141, v68, v66 :: v_dual_mul_f32 v68, v245, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v201, v68, v67 :: v_dual_mul_f32 v68, v246, v109
	v_dual_mov_b32 v140, v26 :: v_dual_mov_b32 v109, v165
	v_dual_fmac_f32 v139, v68, v64 :: v_dual_mul_f32 v64, v246, v110
	v_mov_b32_e32 v110, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v64, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v64, v246, v111 :: v_dual_mov_b32 v111, v152
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v133, v64, v66 :: v_dual_mul_f32 v64, v246, v124
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v124, off, off offset:160
	scratch_load_b32 v223, off, off offset:156
	scratch_load_b32 v165, off, off offset:152
	scratch_load_b32 v152, off, off offset:136
	v_fmac_f32_e32 v138, v64, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[64:67], v251 offset:36880
	v_mul_f32_e32 v68, v243, v120
	v_mov_b32_e32 v120, v28
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v39, v68, v64 :: v_dual_mul_f32 v68, v243, v121
	v_fmac_f32_e32 v34, v68, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v243, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v156, v68, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v243, v123
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v155, v68, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v244, v76
	scratch_store_b32 off, v155, off offset:64 ; 4-byte Folded Spill
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v129, v68, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v244, v77
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v128, v68, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v244, v78
	scratch_store_b32 off, v156, off offset:68 ; 4-byte Folded Spill
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v162, v68, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v244, v79
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v152, v68, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v245, v84
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v84, off, off offset:16
	scratch_load_b32 v121, off, off offset:120
	scratch_load_b32 v156, off, off offset:148
	scratch_load_b32 v122, off, off offset:144
	scratch_load_b32 v26, off, off offset:132
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v160, v68, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v245, v85
	scratch_store_b32 off, v129, off offset:80 ; 4-byte Folded Spill
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v161, v68, v65 :: v_dual_mul_f32 v68, v245, v86
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v156, v68, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v245, v87
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v28, off, off offset:28
	scratch_load_b32 v129, off, off offset:128
	scratch_load_b32 v123, off, off offset:112
	scratch_load_b32 v87, off, off offset:108
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v159, v68, v67 :: v_dual_mul_f32 v68, v246, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v130, v68, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v246, v126
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v132, v64, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v246, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v35, v64, v66 :: v_dual_mul_f32 v64, v246, v137
	v_fmac_f32_e32 v198, v64, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[64:67], v251 offset:37376
	v_mul_f32_e32 v68, v243, v88
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v88, v134 :: v_dual_fmac_f32 v111, v68, v64
	v_dual_mul_f32 v68, v243, v89 :: v_dual_mov_b32 v89, v252
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v120, v68, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v243, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v109, v68, v66 :: v_dual_mul_f32 v68, v243, v91
	v_mov_b32_e32 v91, v147
	v_mov_b32_e32 v90, v27
	v_mov_b32_e32 v147, v175
	v_dual_mov_b32 v175, v190 :: v_dual_fmac_f32 v110, v68, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v244, v93
	v_dual_mov_b32 v252, v255 :: v_dual_mov_b32 v255, v38
	v_mov_b32_e32 v38, v254
	v_mov_b32_e32 v254, v29
	v_mov_b32_e32 v29, v145
	v_mov_b32_e32 v145, v173
	v_mov_b32_e32 v173, v188
	v_mov_b32_e32 v93, v148
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v29, v68, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v244, v94
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v90, v68, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v68, v244, v95 :: v_dual_mov_b32 v95, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v253, v68, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v244, v96
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v36, v68, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v245, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v89, v68, v64 :: v_dual_mul_f32 v68, v245, v102
	v_fmac_f32_e32 v252, v68, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v245, v103
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v68, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v245, v104
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v88, v68, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v246, v112
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v31, v68, v64 :: v_dual_mul_f32 v64, v246, v113
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v243, v92
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v92, off, off offset:208
	scratch_load_b32 v86, off, off offset:24
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v144, v64, v65
	scratch_store_b32 off, v128, off offset:72 ; 4-byte Folded Spill
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v85, off, off offset:20
	scratch_load_b32 v0, off, off offset:116
	scratch_load_b32 v128, off, off offset:140
	scratch_load_b32 v197, off, off offset:124
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v246, v114
	scratch_store_b32 off, v144, off offset:76 ; 4-byte Folded Spill
	v_mov_b32_e32 v144, v172
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v42, v64, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v246, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v37, v64, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[64:67], v251 offset:37392
	v_dual_mov_b32 v94, v149 :: v_dual_mov_b32 v149, v176
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v94, v68, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v243, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v188, v43 :: v_dual_fmac_f32 v95, v68, v65
	v_mul_f32_e32 v68, v243, v249
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v91, v68, v66 :: v_dual_mul_f32 v68, v243, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v190, v41 :: v_dual_fmac_f32 v93, v68, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v244, v97
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v254, v68, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v244, v98
	v_dual_mov_b32 v148, v171 :: v_dual_mov_b32 v171, v186
	v_mov_b32_e32 v186, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v25, v68, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v244, v99
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v255, v68, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v244, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v38, v68, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v245, v105
	v_dual_mov_b32 v176, v191 :: v_dual_mov_b32 v191, v44
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v85, v68, v64 :: v_dual_mul_f32 v68, v245, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v68, v65
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v245, v107
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v70, v68, v66
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v245, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v84, v68, v67
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v68, v246, v116
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v30, v68, v64
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v246, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v33, v64, v65 :: v_dual_add_nc_u32 v68, s1, v92
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v246, v118
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v53, v64, v66 :: v_dual_mul_f32 v64, v246, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v247, v53
	v_dual_fmac_f32 v69, v64, v67 :: v_dual_add_nc_u32 v64, s27, v172
	scratch_load_b32 v53, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v64, v64, s16, 1
	s_mov_b32 s16, s48
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_add_i32 s48, s18, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s18, s17, 1
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	s_add_i32 s45, s48, 0x4000
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s17, s51
	s_mov_b32 s17, s18
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v64, v64, s[40:43], 0 offen
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v27, s48, v53
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v64, 16, v64
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_store_b32 v143, v64 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_clause 0x6                            ; 32-byte Folded Reload
	scratch_load_b64 v[40:41], off, off offset:172
	scratch_load_b32 v155, off, off offset:104
	scratch_load_b32 v164, off, off offset:100
	scratch_load_b32 v127, off, off offset:96
	scratch_load_b32 v249, off, off offset:92
	scratch_load_b32 v158, off, off offset:88
	scratch_load_b32 v248, off, off offset:84
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[64:67], v251 offset:36864
	ds_load_b128 v[72:75], v251 offset:36880
	ds_load_b128 v[76:79], v251 offset:37376
	ds_load_b128 v[80:83], v251 offset:37392
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(6)
	ds_store_b64 v68, v[40:41] offset:32768
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_store_b128 v27, v[9:12]
	ds_store_b128 v27, v[13:16] offset:4096
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_store_b128 v27, v[17:20] offset:16384
	ds_store_b128 v27, v[21:24] offset:20480
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v230, v243
	v_mul_f32_e32 v11, v48, v243
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v48, off, off offset:196
	scratch_load_b32 v12, off, off offset:168
	scratch_load_b32 v10, off, off offset:164
	v_mul_f32_e32 v14, v49, v244
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(8)
	v_fmac_f32_e32 v186, v9, v64
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v229, v243
	v_mul_f32_e32 v13, v51, v244
	v_mul_f32_e32 v16, v50, v244
	v_mul_f32_e32 v20, v54, v245
	v_mul_f32_e32 v17, v56, v245
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v195, v9, v65
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v9, v228, v243 :: v_dual_mul_f32 v24, v135, v246
	scratch_load_b32 v51, off, off offset:200 ; 4-byte Folded Reload
	v_mul_f32_e32 v15, v52, v244
	v_mul_f32_e32 v21, v142, v246
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v164, v9, v66 :: v_dual_mul_f32 v9, v227, v243
	s_waitcnt lgkmcnt(5)
	v_fmac_f32_e32 v121, v11, v83
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v23, v46, v246
	v_mul_f32_e32 v19, v57, v245
	v_dual_mul_f32 v18, v250, v245 :: v_dual_fmac_f32 v155, v9, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v9, v234, v244 :: v_dual_mov_b32 v250, v121
	v_dual_mul_f32 v22, v71, v246 :: v_dual_fmac_f32 v131, v9, v64
	v_mul_f32_e32 v9, v233, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v194, v9, v65 :: v_dual_mul_f32 v9, v232, v244
	v_fmac_f32_e32 v191, v9, v66
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v231, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v192, v9, v67 :: v_dual_mul_f32 v9, v238, v245
	v_fmac_f32_e32 v189, v9, v64
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v237, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v190, v9, v65
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v236, v245
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v202, v9, v66 :: v_dual_mul_f32 v9, v235, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v188, v9, v67 :: v_dual_mul_f32 v9, v242, v246
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v158, v9, v64
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v241, v246
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v248, v9, v65 :: v_dual_mul_f32 v9, v240, v246
	v_fmac_f32_e32 v127, v9, v66
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v239, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v249, v9, v67
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v214, v243
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v180, v9, v72
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v213, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v122, v9, v73 :: v_dual_mul_f32 v9, v212, v243
	v_dual_mov_b32 v134, v122 :: v_dual_fmac_f32 v193, v9, v74
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v211, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v179, v9, v75
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v218, v244
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v176, v9, v72
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v217, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v177, v9, v73
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v216, v244
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v174, v9, v74 :: v_dual_mul_f32 v9, v215, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v175, v9, v75
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v222, v245
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v187, v9, v72
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v221, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v173, v9, v73
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v220, v245
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v185, v9, v74
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v219, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v171, v9, v75
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v226, v246
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v165, v9, v72
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v225, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v200, v9, v73 :: v_dual_mul_f32 v9, v224, v246
	v_fmac_f32_e32 v128, v9, v74
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v45, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v129, v9, v75
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v60, v243
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v153, v9, v76
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v59, v243
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v225, v153
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v154, v9, v77 :: v_dual_mul_f32 v9, v58, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v150, v9, v78 :: v_dual_mul_f32 v9, v55, v243
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v12, v12, v243
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v178, v9, v79 :: v_dual_mul_f32 v9, v136, v244
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v10, v10, v243 :: v_dual_fmac_f32 v163, v12, v82
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v147, v9, v76
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v63, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v0, v10, v80 :: v_dual_fmac_f32 v149, v9, v77
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v62, v244
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v145, v9, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v9, v61, v244 :: v_dual_mov_b32 v244, v0
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v146, v9, v79 :: v_dual_mul_f32 v9, v206, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v170, v9, v76
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v205, v245
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v148, v9, v77
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v204, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v124, v9, v78 :: v_dual_mul_f32 v9, v203, v245
	v_dual_mov_b32 v224, v124 :: v_dual_fmac_f32 v169, v9, v79
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v210, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v123, v9, v76
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v209, v246
	v_mov_b32_e32 v153, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v223, v9, v77
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v208, v246
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v26, v9, v78
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v207, v246
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v151, v26
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v197, v9, v79
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v47, v243
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v87, v9, v81
	s_clause 0xb                            ; 48-byte Folded Reload
	scratch_load_b32 v46, off, off offset:60
	scratch_load_b32 v45, off, off offset:56
	scratch_load_b32 v44, off, off offset:52
	scratch_load_b32 v43, off, off offset:48
	scratch_load_b32 v41, off, off offset:44
	scratch_load_b32 v40, off, off offset:40
	scratch_load_b32 v32, off, off offset:36
	scratch_load_b32 v27, off, off offset:32
	scratch_load_b32 v26, off, off offset:12
	scratch_load_b32 v0, off, off offset:8
	scratch_load_b32 v10, off, off offset:4
	scratch_load_b32 v9, off, off
	v_mov_b32_e32 v172, v87
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v46, v13, v81 :: v_dual_fmac_f32 v45, v14, v80
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v44, v15, v83 :: v_dual_fmac_f32 v43, v16, v82
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v41, v17, v81 :: v_dual_fmac_f32 v40, v18, v80
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v32, v19, v83 :: v_dual_fmac_f32 v27, v20, v82
	v_mov_b32_e32 v143, v170
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v0, v22, v80
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v26, v21, v81 :: v_dual_fmac_f32 v9, v24, v82
	v_fmac_f32_e32 v10, v23, v83
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v220, v39 :: v_dual_mov_b32 v221, v34
	v_dual_mov_b32 v219, v132 :: v_dual_mov_b32 v34, v133
	v_dual_mov_b32 v246, v183 :: v_dual_mov_b32 v39, v157
	v_dual_mov_b32 v157, v181 :: v_dual_mov_b32 v132, v184
	v_mov_b32_e32 v133, v196
	s_clause 0xa                            ; 44-byte Folded Reload
	scratch_load_b32 v181, off, off offset:264
	scratch_load_b32 v183, off, off offset:268
	scratch_load_b32 v196, off, off offset:272
	scratch_load_b32 v205, off, off offset:276
	scratch_load_b32 v11, off, off offset:280
	scratch_load_b32 v12, off, off offset:284
	scratch_load_b32 v135, off, off offset:180
	scratch_load_b32 v136, off, off offset:184
	scratch_load_b32 v170, off, off offset:188
	scratch_load_b32 v203, off, off offset:192
	scratch_load_b32 v204, off, off offset:260
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v159, off offset:548
	scratch_store_b32 off, v160, off offset:552
	scratch_store_b32 off, v161, off offset:556
	scratch_store_b32 off, v35, off offset:540
	scratch_store_b32 off, v198, off offset:544
	scratch_store_b32 off, v130, off offset:912
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v160, v162 :: v_dual_and_b32 v1, 4, v204
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v0, 0
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v31, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v42, 0
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v247, 0
	v_mov_b32_e32 v30, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v219, 0
	scratch_store_b32 off, v0, off offset:544 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v140, 0
	v_mov_b32_e32 v89, 0
	scratch_store_b32 off, v0, off offset:540 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v141, 0
	scratch_store_b32 off, v0, off offset:912 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v167, 0
	v_mov_b32_e32 v157, 0
	scratch_store_b32 off, v0, off offset:548 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v86, 0
	v_mov_b32_e32 v253, 0
	scratch_store_b32 off, v0, off offset:556 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v39, 0
	scratch_store_b32 off, v0, off offset:552 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v91, 0
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v95, 0
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v133, 0
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v129, 0
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v195, 0
	v_mov_b32_e32 v250, 0
	v_mov_b32_e32 v172, 0
	v_mov_b32_e32 v244, 0
	v_mov_b32_e32 v178, 0
	v_mov_b32_e32 v150, 0
	v_mov_b32_e32 v154, 0
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v180, 0
	v_mov_b32_e32 v164, 0
	v_mov_b32_e32 v186, 0
	s_add_i32 s53, 0, 0x8000
	s_add_i32 s47, 0, 0x8800
	s_add_i32 s48, 0, 0x2000
	s_add_i32 s52, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
.LBB0_8:                                ; %Flow822
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 318 26 is_stmt 1              ; generate_amdgcn.py:318:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	s_clause 0x1e                           ; 124-byte Folded Spill
	scratch_store_b32 off, v46, off offset:60
	scratch_store_b32 off, v45, off offset:56
	scratch_store_b32 off, v44, off offset:52
	scratch_store_b32 off, v43, off offset:48
	scratch_store_b32 off, v41, off offset:44
	scratch_store_b32 off, v40, off offset:40
	scratch_store_b32 off, v32, off offset:36
	scratch_store_b32 off, v27, off offset:32
	scratch_store_b32 off, v120, off offset:208
	scratch_store_b32 off, v111, off offset:204
	scratch_store_b32 off, v110, off offset:200
	scratch_store_b32 off, v109, off offset:196
	scratch_store_b32 off, v95, off offset:172
	scratch_store_b32 off, v94, off offset:168
	scratch_store_b32 off, v89, off offset:136
	scratch_store_b32 off, v88, off offset:132
	scratch_store_b32 off, v28, off offset:28
	scratch_store_b32 off, v86, off offset:24
	scratch_store_b32 off, v85, off offset:20
	scratch_store_b32 off, v84, off offset:16
	scratch_store_b32 off, v26, off offset:12
	scratch_store_b32 off, v0, off offset:8
	scratch_store_b32 off, v10, off offset:4
	scratch_store_b32 off, v9, off
	scratch_store_b32 off, v166, off offset:232
	scratch_store_b32 off, v199, off offset:228
	scratch_store_b32 off, v93, off offset:164
	scratch_store_b32 off, v91, off offset:160
	scratch_store_b32 off, v90, off offset:156
	scratch_store_b32 off, v70, off offset:128
	scratch_store_b32 off, v69, off offset:104
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cndmask_b32_e64 v2, 0, 1, s2
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v1, 0x90, 0, vcc_lo
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v142, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cmp_ne_u32_e64 s1, 1, v2
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v54, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_or_b32_e32 v26, v1, v12
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_or_b32_e32 v238, v11, v1
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v1, s53, v26
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_xor_b32_e32 v27, 16, v26
	v_mov_b32_e32 v41, 0
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_xor_b32_e32 v239, 16, v238
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v118, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v2, s53, v27
	ds_load_b128 v[47:50], v1
	ds_load_b128 v[17:20], v1 offset:512
	ds_load_b128 v[9:12], v1 offset:1024
	ds_load_b128 v[5:8], v1 offset:1536
	ds_load_b128 v[43:46], v2
	ds_load_b128 v[21:24], v2 offset:512
	ds_load_b128 v[13:16], v2 offset:1024
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[1:4], v2 offset:1536
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v51, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v28, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v28, s16, v238
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v58, s11 :: v_dual_mov_b32 v53, s6
	v_mov_b32_e32 v57, s10
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[115:118], v28
	ds_load_b128 v[119:122], v28 offset:4096
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v55, s8 :: v_dual_add_nc_u32 v28, s16, v239
	v_dual_mov_b32 v56, s9 :: v_dual_mov_b32 v51, s4
	v_mov_b32_e32 v54, s7
	v_mov_b32_e32 v52, s5
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[123:126], v28
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[115:118], v[47:50], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[115:118], v[17:20], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[115:118], v[9:12], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[115:118], v[5:8], v[51:58] neg_lo:[1,1,0]
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[115:118], v28 offset:4096
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[119:122], v[47:50], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[119:122], v[17:20], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[119:122], v[9:12], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[119:122], v[5:8], v[51:58] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[123:126], v[43:46], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[123:126], v[21:24], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[123:126], v[13:16], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[123:126], v[1:4], v[107:114] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v137, v61
	v_cvt_f32_i32_e32 v142, v62
	v_cvt_f32_i32_e32 v125, v63
	v_cvt_f32_i32_e32 v123, v64
	v_cvt_f32_i32_e32 v161, v75
	v_cvt_f32_i32_e32 v184, v76
	v_cvt_f32_i32_e32 v159, v77
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[115:118], v[43:46], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[115:118], v[21:24], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[115:118], v[13:16], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[115:118], v[1:4], v[51:58] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v166, v78
	v_cvt_f32_i32_e32 v121, v67
	v_cvt_f32_i32_e32 v122, v68
	v_cvt_f32_i32_e32 v119, v69
	v_cvt_f32_i32_e32 v120, v70
	v_cvt_f32_i32_e32 v117, v71
	v_cvt_f32_i32_e32 v118, v72
	v_cvt_f32_i32_e32 v115, v73
	v_cvt_f32_i32_e32 v116, v74
	v_cvt_f32_i32_e32 v124, v79
	v_cvt_f32_i32_e32 v126, v80
	v_cvt_f32_i32_e32 v162, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v78, v83
	v_cvt_f32_i32_e32 v79, v84
	v_cvt_f32_i32_e32 v76, v85
	v_cvt_f32_i32_e32 v77, v86
	v_cvt_f32_i32_e32 v74, v87
	v_cvt_f32_i32_e32 v75, v88
	v_cvt_f32_i32_e32 v72, v89
	v_cvt_f32_i32_e32 v73, v90
	v_cvt_f32_i32_e32 v198, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v91, v93
	v_cvt_f32_i32_e32 v93, v94
	v_cvt_f32_i32_e32 v83, v95
	v_cvt_f32_i32_e32 v85, v96
	v_cvt_f32_i32_e32 v84, v97
	v_cvt_f32_i32_e32 v86, v98
	v_cvt_f32_i32_e32 v70, v99
	v_cvt_f32_i32_e32 v71, v100
	v_cvt_f32_i32_e32 v68, v101
	v_cvt_f32_i32_e32 v69, v102
	v_cvt_f32_i32_e32 v64, v103
	v_cvt_f32_i32_e32 v67, v104
	v_cvt_f32_i32_e32 v62, v105
	v_cvt_f32_i32_e32 v63, v106
	v_cvt_f32_i32_e32 v94, v107
	v_cvt_f32_i32_e32 v95, v108
	v_cvt_f32_i32_e32 v89, v109
	v_cvt_f32_i32_e32 v90, v110
	v_cvt_f32_i32_e32 v87, v111
	v_cvt_f32_i32_e32 v88, v112
	v_cvt_f32_i32_e32 v80, v113
	v_cvt_f32_i32_e32 v81, v114
	v_cvt_f32_i32_e32 v61, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v35, v53
	v_cvt_f32_i32_e32 v51, v54
	v_cvt_f32_i32_e32 v32, v55
	v_cvt_f32_i32_e32 v40, v56
	v_cvt_f32_i32_e32 v0, v57
	v_cvt_f32_i32_e32 v28, v58
	v_cvt_f32_i32_e32 v53, v65
	v_cvt_f32_i32_e32 v54, v66
	v_cvt_f32_i32_e32 v55, v59
	v_cvt_f32_i32_e32 v56, v60
.LBB0_10:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v95, off offset:800
	scratch_store_b32 off, v94, off offset:792
	scratch_store_b32 off, v56, off offset:784
	scratch_store_b32 off, v55, off offset:780
	scratch_store_b32 off, v93, off offset:768
	scratch_store_b32 off, v92, off offset:752
	scratch_store_b32 off, v198, off offset:744
	scratch_store_b32 off, v91, off offset:740
	scratch_store_b32 off, v184, off offset:736
	scratch_store_b32 off, v166, off offset:728
	scratch_store_b32 off, v161, off offset:724
	scratch_store_b32 off, v159, off offset:716
	scratch_store_b32 off, v90, off offset:704
	scratch_store_b32 off, v89, off offset:700
	scratch_store_b32 off, v88, off offset:632
	scratch_store_b32 off, v87, off offset:628
	scratch_store_b32 off, v54, off offset:624
	scratch_store_b32 off, v53, off offset:620
	scratch_store_b32 off, v86, off offset:616
	scratch_store_b32 off, v85, off offset:612
	scratch_store_b32 off, v84, off offset:608
	scratch_store_b32 off, v83, off offset:604
	scratch_store_b32 off, v82, off offset:600
	scratch_store_b32 off, v124, off offset:588
	scratch_store_b32 off, v123, off offset:584
	scratch_store_b32 off, v81, off offset:580
	scratch_store_b32 off, v80, off offset:576
	scratch_store_b32 off, v122, off offset:392
	scratch_store_b32 off, v79, off offset:344
	scratch_store_b32 off, v78, off offset:340
	scratch_store_b32 off, v77, off offset:336
	scratch_store_b32 off, v76, off offset:332
	s_clause 0x10                           ; 68-byte Folded Spill
	scratch_store_b32 off, v75, off offset:328
	scratch_store_b32 off, v74, off offset:324
	scratch_store_b32 off, v73, off offset:320
	scratch_store_b32 off, v72, off offset:316
	scratch_store_b32 off, v71, off offset:308
	scratch_store_b32 off, v70, off offset:304
	scratch_store_b32 off, v69, off offset:296
	scratch_store_b32 off, v68, off offset:292
	scratch_store_b32 off, v67, off offset:288
	scratch_store_b32 off, v64, off offset:284
	scratch_store_b32 off, v63, off offset:280
	scratch_store_b32 off, v62, off offset:276
	scratch_store_b32 off, v52, off offset:264
	scratch_store_b32 off, v61, off offset:260
	scratch_store_b32 off, v51, off offset:244
	scratch_store_b32 off, v35, off offset:236
	scratch_store_b32 off, v28, off offset:216
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v130, v168
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_add_nc_u32_e32 v28, s52, v239
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_dual_mov_b32 v58, s11 :: v_dual_mov_b32 v53, s6
	v_mov_b32_e32 v57, s10
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[91:94], v28 offset:4096
	ds_load_b128 v[95:98], v28
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_dual_mov_b32 v55, s8 :: v_dual_add_nc_u32 v28, s52, v238
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[99:102], v28 offset:4096
	ds_load_b128 v[103:106], v28
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_dual_mov_b32 v56, s9 :: v_dual_mov_b32 v51, s4
	v_mov_b32_e32 v54, s7
	v_mov_b32_e32 v52, s5
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[99:102], v[47:50], v[51:58] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[103:106], v[47:50], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[99:102], v[17:20], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[91:94], v[43:46], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[59:66], v[95:98], v[43:46], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[43:50], v[103:106], v[17:20], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[75:82], v[91:94], v[21:24], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[99:102], v[9:12], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[43:50], v[95:98], v[21:24], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[103:106], v[9:12], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[91:94], v[13:16], v[83:90] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v159, v60
	v_cvt_f32_i32_e32 v198, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[95:98], v[13:16], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[103:106], v[5:8], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[99:102], v[5:8], v[51:58] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v184, v62
	v_cvt_f32_i32_e32 v99, v64
	v_wmma_i32_16x16x16_iu8 v[9:16], v[95:98], v[1:4], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v97, v63
	v_wmma_i32_16x16x16_iu8 v[51:58], v[91:94], v[1:4], v[51:58] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v98, v65
	v_cvt_f32_i32_e32 v100, v66
	v_cvt_f32_i32_e32 v91, v67
	v_cvt_f32_i32_e32 v93, v68
	v_cvt_f32_i32_e32 v92, v69
	v_cvt_f32_i32_e32 v94, v70
	v_cvt_f32_i32_e32 v70, v71
	v_cvt_f32_i32_e32 v71, v72
	v_cvt_f32_i32_e32 v68, v73
	v_cvt_f32_i32_e32 v69, v74
	v_cvt_f32_i32_e32 v227, v43
	v_cvt_f32_i32_e32 v228, v44
	v_cvt_f32_i32_e32 v161, v45
	v_cvt_f32_i32_e32 v226, v46
	v_cvt_f32_i32_e32 v102, v47
	v_cvt_f32_i32_e32 v104, v48
	v_cvt_f32_i32_e32 v101, v49
	v_cvt_f32_i32_e32 v103, v50
	v_cvt_f32_i32_e32 v95, v75
	v_cvt_f32_i32_e32 v96, v76
	v_cvt_f32_i32_e32 v75, v77
	v_cvt_f32_i32_e32 v76, v78
	v_cvt_f32_i32_e32 v66, v79
	v_cvt_f32_i32_e32 v67, v80
	v_cvt_f32_i32_e32 v64, v81
	v_cvt_f32_i32_e32 v65, v82
	v_cvt_f32_i32_e32 v231, v17
	v_cvt_f32_i32_e32 v232, v18
	v_cvt_f32_i32_e32 v229, v19
	v_cvt_f32_i32_e32 v233, v20
	v_cvt_f32_i32_e32 v106, v21
	v_cvt_f32_i32_e32 v107, v22
	v_cvt_f32_i32_e32 v105, v23
	v_cvt_f32_i32_e32 v108, v24
	v_cvt_f32_i32_e32 v79, v83
	v_cvt_f32_i32_e32 v80, v84
	v_cvt_f32_i32_e32 v78, v85
	v_cvt_f32_i32_e32 v81, v86
	v_cvt_f32_i32_e32 v62, v87
	v_cvt_f32_i32_e32 v63, v88
	v_cvt_f32_i32_e32 v60, v89
	v_cvt_f32_i32_e32 v61, v90
	v_cvt_f32_i32_e32 v35, v9
	v_cvt_f32_i32_e32 v199, v10
	v_cvt_f32_i32_e32 v28, v11
	v_cvt_f32_i32_e32 v122, v12
	v_cvt_f32_i32_e32 v84, v13
	v_cvt_f32_i32_e32 v85, v14
	v_cvt_f32_i32_e32 v82, v15
	v_cvt_f32_i32_e32 v83, v16
	v_cvt_f32_i32_e32 v74, v51
	v_cvt_f32_i32_e32 v77, v52
	v_cvt_f32_i32_e32 v72, v53
	v_cvt_f32_i32_e32 v73, v54
	v_cvt_f32_i32_e32 v53, v55
	v_cvt_f32_i32_e32 v54, v56
	v_cvt_f32_i32_e32 v51, v57
	v_cvt_f32_i32_e32 v52, v58
	v_cvt_f32_i32_e32 v41, v59
.LBB0_12:
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s1, s1, 27
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s1, s30, s1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s30, s14
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s1, 5
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s31, s15
	.loc	1 334 40 is_stmt 0              ; generate_amdgcn.py:334:40
	s_mul_i32 s4, s1, s44
	.loc	1 331 34 is_stmt 1              ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s1, s35
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v203, s1, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v2, v144, s4, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s5, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v108, off offset:924
	scratch_store_b32 off, v107, off offset:920
	scratch_store_b32 off, v106, off offset:916
	scratch_store_b32 off, v105, off offset:908
	scratch_store_b32 off, v85, off offset:904
	scratch_store_b32 off, v104, off offset:900
	scratch_store_b32 off, v84, off offset:896
	scratch_store_b32 off, v103, off offset:892
	scratch_store_b32 off, v102, off offset:888
	scratch_store_b32 off, v101, off offset:884
	scratch_store_b32 off, v100, off offset:880
	scratch_store_b32 off, v99, off offset:876
	scratch_store_b32 off, v98, off offset:872
	scratch_store_b32 off, v97, off offset:868
	scratch_store_b32 off, v83, off offset:848
	scratch_store_b32 off, v82, off offset:844
	scratch_store_b32 off, v81, off offset:696
	scratch_store_b32 off, v80, off offset:692
	scratch_store_b32 off, v79, off offset:688
	scratch_store_b32 off, v78, off offset:684
	scratch_store_b32 off, v77, off offset:680
	scratch_store_b32 off, v96, off offset:676
	scratch_store_b32 off, v76, off offset:672
	scratch_store_b32 off, v95, off offset:668
	scratch_store_b32 off, v75, off offset:664
	scratch_store_b32 off, v74, off offset:660
	scratch_store_b32 off, v94, off offset:656
	scratch_store_b32 off, v93, off offset:652
	scratch_store_b32 off, v92, off offset:648
	scratch_store_b32 off, v91, off offset:644
	scratch_store_b32 off, v73, off offset:640
	scratch_store_b32 off, v72, off offset:636
	s_clause 0x16                           ; 92-byte Folded Spill
	scratch_store_b32 off, v71, off offset:572
	scratch_store_b32 off, v70, off offset:568
	scratch_store_b32 off, v69, off offset:564
	scratch_store_b32 off, v68, off offset:560
	scratch_store_b32 off, v67, off offset:536
	scratch_store_b32 off, v66, off offset:532
	scratch_store_b32 off, v65, off offset:528
	scratch_store_b32 off, v64, off offset:524
	scratch_store_b32 off, v63, off offset:512
	scratch_store_b32 off, v62, off offset:496
	scratch_store_b32 off, v61, off offset:488
	scratch_store_b32 off, v60, off offset:476
	scratch_store_b32 off, v121, off offset:388
	scratch_store_b32 off, v120, off offset:380
	scratch_store_b32 off, v119, off offset:372
	scratch_store_b32 off, v118, off offset:368
	scratch_store_b32 off, v117, off offset:364
	scratch_store_b32 off, v116, off offset:360
	scratch_store_b32 off, v115, off offset:356
	scratch_store_b32 off, v54, off offset:312
	scratch_store_b32 off, v53, off offset:300
	scratch_store_b32 off, v52, off offset:272
	scratch_store_b32 off, v51, off offset:268
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_mov_b32 v168, 0 :: v_dual_add_nc_u32 v73, s46, v204
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_add3_u32 v4, 0, v183, v205
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v5, v170, s1, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v6, v73, s4, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_and_b32_e32 v3, 28, v196
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_and_b32 s13, s13, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v181, 0, v181
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_add_nc_u32_e32 v72, v4, v3
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v3, v135, s1, 1
	v_add_lshl_u32 v4, v136, s1, 1
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v183, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v102, 0 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x3
	buffer_load_u16 v236, v1, s[12:15], 0 offen
	buffer_load_u16 v235, v3, s[12:15], 0 offen
	buffer_load_u16 v234, v4, s[12:15], 0 offen
	buffer_load_u16 v237, v5, s[12:15], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cndmask_b32_e64 v4, 0, 1, s3
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v3, s47, v27
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v108, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cmp_ne_u32_e64 s1, 1, v4
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v24, 0
	v_mov_b32_e32 v119, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v203, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v205, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v135, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	v_mov_b32_e32 v67, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v124, 0
	v_mov_b32_e32 v106, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v90, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v72, v2 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v1, v6, s[28:31], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v2, s47, v26
	scratch_store_b32 off, v5, off offset:84 ; 4-byte Folded Spill
	v_mov_b32_e32 v5, 0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[20:23], v181 offset:36864
	ds_load_b128 v[12:15], v181 offset:36880
	v_mov_b32_e32 v26, 0
	ds_load_b128 v[8:11], v181 offset:37392
	scratch_store_b32 off, v5, off offset:88 ; 4-byte Folded Spill
	v_mov_b32_e32 v5, 0
	scratch_store_b32 off, v5, off offset:92 ; 4-byte Folded Spill
	v_mov_b32_e32 v5, 0
	scratch_store_b32 off, v5, off offset:96 ; 4-byte Folded Spill
	v_mov_b32_e32 v5, 0
	scratch_store_b32 off, v5, off offset:100 ; 4-byte Folded Spill
	ds_load_b128 v[4:7], v181 offset:37376
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[8:11], off offset:928 ; 16-byte Folded Spill
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[4:7], off offset:944 ; 16-byte Folded Spill
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
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
	ds_load_b128 v[94:97], v2 offset:1024
	ds_load_b128 v[78:81], v2 offset:1536
	ds_load_b128 v[60:63], v3
	ds_load_b128 v[52:55], v3 offset:512
	ds_load_b128 v[44:47], v3 offset:1024
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_b128 v[240:243], v3 offset:1536
	v_mov_b32_e32 v3, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v1, s48, v238
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v89, s11 :: v_dual_mov_b32 v84, s6
	v_mov_b32_e32 v88, s10
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[8:11], v1
	ds_load_b128 v[16:19], v1 offset:4096
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v86, s8 :: v_dual_add_nc_u32 v1, s48, v239
	v_dual_mov_b32 v87, s9 :: v_dual_mov_b32 v82, s4
	v_dual_mov_b32 v85, s7 :: v_dual_mov_b32 v2, v138
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[74:77], v1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_dual_mov_b32 v83, s5 :: v_dual_mov_b32 v24, v140
	v_dual_mov_b32 v3, v139 :: v_dual_mov_b32 v26, v141
	v_mov_b32_e32 v27, v137
	v_mov_b32_e32 v43, v142
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[8:11], v[56:59], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[8:11], v[48:51], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[203:210], v[8:11], v[94:97], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[211:218], v[8:11], v[78:81], v[82:89] neg_lo:[1,1,0]
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[8:11], v1 offset:4096
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[74:77], v[60:63], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[74:77], v[52:55], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[16:19], v[56:59], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[16:19], v[48:51], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v101
	v_wmma_i32_16x16x16_iu8 v[64:71], v[16:19], v[94:97], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[16:19], v[78:81], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[203:210], v[74:77], v[44:47], v[203:210] neg_lo:[1,1,0]
	scratch_store_b32 off, v1, off offset:92 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v102
	v_wmma_i32_16x16x16_iu8 v[211:218], v[74:77], v[240:243], v[211:218] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v183, v100
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	scratch_store_b32 off, v1, off offset:84 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v103
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[8:11], v[60:63], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[8:11], v[52:55], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[8:11], v[44:47], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[8:11], v[240:243], v[82:89] neg_lo:[1,1,0]
	scratch_store_b32 off, v1, off offset:88 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v114
	v_cvt_f32_i32_e32 v123, v106
	v_cvt_f32_i32_e32 v124, v107
	v_cvt_f32_i32_e32 v106, v108
	v_cvt_f32_i32_e32 v107, v109
	scratch_store_b32 off, v1, off offset:96 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v115
	v_cvt_f32_i32_e32 v102, v110
	v_cvt_f32_i32_e32 v103, v111
	v_cvt_f32_i32_e32 v100, v112
	v_cvt_f32_i32_e32 v101, v113
	scratch_store_b32 off, v1, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v108, v118
	v_cvt_f32_i32_e32 v109, v119
	v_cvt_f32_i32_e32 v110, v120
	v_cvt_f32_i32_e32 v111, v121
	v_cvt_f32_i32_e32 v92, v135
	v_cvt_f32_i32_e32 v93, v136
	v_cvt_f32_i32_e32 v90, v137
	v_cvt_f32_i32_e32 v91, v138
	v_dual_mov_b32 v138, v2 :: v_dual_mov_b32 v137, v27
	v_cvt_f32_i32_e32 v76, v139
	v_mov_b32_e32 v139, v3
	v_cvt_f32_i32_e32 v77, v140
	v_mov_b32_e32 v140, v24
	v_cvt_f32_i32_e32 v74, v141
	v_mov_b32_e32 v141, v26
	v_cvt_f32_i32_e32 v75, v142
	v_mov_b32_e32 v142, v43
	v_cvt_f32_i32_e32 v118, v203
	v_cvt_f32_i32_e32 v119, v204
	v_cvt_f32_i32_e32 v120, v205
	v_cvt_f32_i32_e32 v121, v206
	v_cvt_f32_i32_e32 v112, v207
	v_cvt_f32_i32_e32 v113, v208
	v_cvt_f32_i32_e32 v114, v209
	v_cvt_f32_i32_e32 v115, v210
	v_cvt_f32_i32_e32 v43, v64
	v_cvt_f32_i32_e32 v64, v65
	v_cvt_f32_i32_e32 v26, v66
	v_cvt_f32_i32_e32 v27, v67
	v_cvt_f32_i32_e32 v19, v68
	v_cvt_f32_i32_e32 v24, v69
	v_cvt_f32_i32_e32 v17, v70
	v_cvt_f32_i32_e32 v18, v71
	v_cvt_f32_i32_e32 v136, v211
	v_cvt_f32_i32_e32 v203, v212
	v_cvt_f32_i32_e32 v204, v213
	v_cvt_f32_i32_e32 v205, v214
	v_cvt_f32_i32_e32 v69, v215
	v_cvt_f32_i32_e32 v70, v216
	v_cvt_f32_i32_e32 v71, v217
	v_cvt_f32_i32_e32 v135, v218
	v_cvt_f32_i32_e32 v11, v82
	v_cvt_f32_i32_e32 v16, v83
	v_cvt_f32_i32_e32 v9, v84
	v_cvt_f32_i32_e32 v10, v85
	v_cvt_f32_i32_e32 v3, v86
	v_cvt_f32_i32_e32 v8, v87
	v_cvt_f32_i32_e32 v1, v88
	v_cvt_f32_i32_e32 v2, v89
	v_cvt_f32_i32_e32 v65, v104
	v_cvt_f32_i32_e32 v66, v105
	v_cvt_f32_i32_e32 v67, v98
	v_cvt_f32_i32_e32 v68, v99
.LBB0_14:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v205, off offset:864
	scratch_store_b32 off, v204, off offset:860
	scratch_store_b32 off, v203, off offset:856
	scratch_store_b32 off, v136, off offset:852
	scratch_store_b32 off, v135, off offset:840
	scratch_store_b32 off, v71, off offset:836
	scratch_store_b32 off, v70, off offset:832
	scratch_store_b32 off, v69, off offset:828
	scratch_store_b32 off, v68, off offset:824
	scratch_store_b32 off, v67, off offset:820
	scratch_store_b32 off, v121, off offset:816
	scratch_store_b32 off, v120, off offset:812
	scratch_store_b32 off, v119, off offset:808
	scratch_store_b32 off, v118, off offset:804
	scratch_store_b32 off, v117, off offset:796
	scratch_store_b32 off, v116, off offset:788
	scratch_store_b32 off, v66, off offset:776
	scratch_store_b32 off, v115, off offset:772
	scratch_store_b32 off, v65, off offset:764
	scratch_store_b32 off, v114, off offset:760
	scratch_store_b32 off, v113, off offset:756
	scratch_store_b32 off, v112, off offset:748
	scratch_store_b32 off, v111, off offset:732
	scratch_store_b32 off, v110, off offset:720
	scratch_store_b32 off, v109, off offset:712
	scratch_store_b32 off, v108, off offset:708
	scratch_store_b32 off, v126, off offset:596
	scratch_store_b32 off, v125, off offset:592
	scratch_store_b32 off, v124, off offset:520
	scratch_store_b32 off, v123, off offset:516
	scratch_store_b32 off, v107, off offset:508
	scratch_store_b32 off, v106, off offset:504
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v103, off offset:500
	scratch_store_b32 off, v102, off offset:492
	scratch_store_b32 off, v101, off offset:484
	scratch_store_b32 off, v100, off offset:480
	scratch_store_b32 off, v93, off offset:472
	scratch_store_b32 off, v92, off offset:468
	scratch_store_b32 off, v91, off offset:464
	scratch_store_b32 off, v90, off offset:460
	scratch_store_b32 off, v77, off offset:456
	scratch_store_b32 off, v76, off offset:452
	scratch_store_b32 off, v75, off offset:448
	scratch_store_b32 off, v74, off offset:444
	scratch_store_b32 off, v64, off offset:440
	scratch_store_b32 off, v43, off offset:436
	scratch_store_b32 off, v27, off offset:432
	scratch_store_b32 off, v26, off offset:428
	scratch_store_b32 off, v24, off offset:424
	scratch_store_b32 off, v19, off offset:420
	scratch_store_b32 off, v18, off offset:416
	scratch_store_b32 off, v17, off offset:412
	scratch_store_b32 off, v16, off offset:408
	scratch_store_b32 off, v11, off offset:404
	scratch_store_b32 off, v10, off offset:400
	scratch_store_b32 off, v9, off offset:396
	scratch_store_b32 off, v8, off offset:384
	scratch_store_b32 off, v3, off offset:376
	scratch_store_b32 off, v2, off offset:352
	scratch_store_b32 off, v1, off offset:348
	scratch_store_b32 off, v40, off offset:224
	scratch_store_b32 off, v32, off offset:220
	scratch_store_b32 off, v0, off offset:212
	scratch_store_b32 off, v29, off offset:152
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v36, off offset:148
	scratch_store_b32 off, v25, off offset:144
	scratch_store_b32 off, v38, off offset:140
	scratch_store_b32 off, v31, off offset:124
	scratch_store_b32 off, v37, off offset:120
	scratch_store_b32 off, v42, off offset:116
	scratch_store_b32 off, v33, off offset:112
	scratch_store_b32 off, v30, off offset:108
	ds_load_b128 v[82:85], v181 offset:36864
	ds_load_b128 v[88:91], v181 offset:36880
	ds_load_b128 v[16:19], v181 offset:37376
	ds_load_b128 v[0:3], v181 offset:37392
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v99, 0
	v_mov_b32_e32 v92, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[0:3], off offset:960 ; 16-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v4, 0
	v_mov_b32_e32 v101, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v5, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v24, 0
	.loc	1 329 32 is_stmt 1              ; generate_amdgcn.py:329:32
	s_and_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_add_nc_u32_e32 v1, s45, v239
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_dual_mov_b32 v71, s11 :: v_dual_mov_b32 v66, s6
	v_mov_b32_e32 v70, s10
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[74:77], v1 offset:4096
	ds_load_b128 v[123:126], v1
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_dual_mov_b32 v68, s8 :: v_dual_add_nc_u32 v1, s45, v238
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[211:214], v1 offset:4096
	ds_load_b128 v[215:218], v1
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_dual_mov_b32 v69, s9 :: v_dual_mov_b32 v64, s4
	v_dual_mov_b32 v67, s7 :: v_dual_mov_b32 v0, v143
	v_dual_mov_b32 v65, s5 :: v_dual_mov_b32 v24, v138
	v_dual_mov_b32 v3, v144 :: v_dual_mov_b32 v40, v142
	v_dual_mov_b32 v25, v139 :: v_dual_mov_b32 v26, v140
	v_mov_b32_e32 v27, v141
	v_mov_b32_e32 v29, v137
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[211:214], v[56:59], v[64:71] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[215:218], v[56:59], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[211:214], v[48:51], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[74:77], v[60:63], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[123:126], v[60:63], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[215:218], v[48:51], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[74:77], v[52:55], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[211:214], v[94:97], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[123:126], v[52:55], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[215:218], v[94:97], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[203:210], v[215:218], v[78:81], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[211:214], v[78:81], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[48:55], v[123:126], v[44:47], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[74:77], v[44:47], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[203:210], v[123:126], v[240:243], v[203:210] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v168, v98
	v_wmma_i32_16x16x16_iu8 v[64:71], v[74:77], v[240:243], v[64:71] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v126, v99
	v_cvt_f32_i32_e32 v75, v100
	v_cvt_f32_i32_e32 v76, v101
	v_cvt_f32_i32_e32 v123, v102
	v_cvt_f32_i32_e32 v124, v103
	v_cvt_f32_i32_e32 v125, v104
	v_cvt_f32_i32_e32 v87, v105
	v_cvt_f32_i32_e32 v42, v106
	v_cvt_f32_i32_e32 v43, v107
	v_cvt_f32_i32_e32 v92, v108
	v_cvt_f32_i32_e32 v86, v109
	v_cvt_f32_i32_e32 v38, v110
	v_cvt_f32_i32_e32 v1, v111
	v_cvt_f32_i32_e32 v218, v112
	v_cvt_f32_i32_e32 v37, v113
	v_cvt_f32_i32_e32 v135, v56
	v_cvt_f32_i32_e32 v136, v57
	v_cvt_f32_i32_e32 v99, v58
	v_cvt_f32_i32_e32 v100, v59
	v_cvt_f32_i32_e32 v6, v60
	v_cvt_f32_i32_e32 v7, v61
	v_cvt_f32_i32_e32 v109, v62
	v_cvt_f32_i32_e32 v4, v63
	v_cvt_f32_i32_e32 v101, v114
	v_cvt_f32_i32_e32 v93, v115
	v_cvt_f32_i32_e32 v102, v116
	v_cvt_f32_i32_e32 v215, v117
	v_cvt_f32_i32_e32 v32, v118
	v_cvt_f32_i32_e32 v33, v119
	v_cvt_f32_i32_e32 v30, v120
	v_cvt_f32_i32_e32 v31, v121
	v_cvt_f32_i32_e32 v105, v48
	v_cvt_f32_i32_e32 v211, v49
	v_cvt_f32_i32_e32 v212, v50
	v_cvt_f32_i32_e32 v98, v51
	v_cvt_f32_i32_e32 v9, v52
	v_cvt_f32_i32_e32 v10, v53
	v_cvt_f32_i32_e32 v11, v54
	v_cvt_f32_i32_e32 v8, v55
	v_cvt_f32_i32_e32 v77, v137
	v_cvt_f32_i32_e32 v170, v138
	v_mov_b32_e32 v138, v24
	v_cvt_f32_i32_e32 v108, v139
	v_mov_b32_e32 v139, v25
	v_cvt_f32_i32_e32 v110, v140
	v_dual_mov_b32 v140, v26 :: v_dual_mov_b32 v137, v29
	v_cvt_f32_i32_e32 v29, v141
	v_mov_b32_e32 v141, v27
	v_cvt_f32_i32_e32 v27, v142
	v_mov_b32_e32 v142, v40
	v_cvt_f32_i32_e32 v103, v143
	v_mov_b32_e32 v143, v0
	v_cvt_f32_i32_e32 v104, v144
	v_mov_b32_e32 v144, v3
	v_cvt_f32_i32_e32 v214, v203
	v_cvt_f32_i32_e32 v2, v204
	v_cvt_f32_i32_e32 v216, v205
	v_cvt_f32_i32_e32 v217, v206
	v_cvt_f32_i32_e32 v111, v207
	v_cvt_f32_i32_e32 v213, v208
	v_cvt_f32_i32_e32 v112, v209
	v_cvt_f32_i32_e32 v113, v210
	v_cvt_f32_i32_e32 v222, v64
	v_cvt_f32_i32_e32 v40, v65
	v_cvt_f32_i32_e32 v64, v66
	v_cvt_f32_i32_e32 v5, v67
	v_cvt_f32_i32_e32 v25, v68
	v_cvt_f32_i32_e32 v26, v69
	v_cvt_f32_i32_e32 v0, v70
	v_cvt_f32_i32_e32 v24, v71
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_clause 0x9                            ; 40-byte Folded Spill
	scratch_store_b32 off, v40, off offset:1012
	scratch_store_b32 off, v102, off offset:1008
	scratch_store_b32 off, v0, off offset:1004
	scratch_store_b32 off, v32, off offset:1000
	scratch_store_b32 off, v25, off offset:996
	scratch_store_b32 off, v27, off offset:992
	scratch_store_b32 off, v104, off offset:988
	scratch_store_b32 off, v103, off offset:984
	scratch_store_b32 off, v26, off offset:980
	scratch_store_b32 off, v24, off offset:976
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, 0
	v_dual_mov_b32 v209, v93 :: v_dual_mov_b32 v102, v92
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_mov_b16_e64 v92.h, v236.l
	v_mov_b16_e64 v32.h, v237.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v92.l, v32.l
	v_mov_b32_e32 v93, v101
	v_mov_b16_e64 v101.h, v235.l
	v_mov_b16_e32 v101.l, v32.l
	v_dual_mov_b32 v207, v43 :: v_dual_mul_f32 v40, v198, v92
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v24, v159, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v26, v41, v92 :: v_dual_mul_f32 v41, v228, v101
	v_mul_f32_e32 v27, v184, v92
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_mov_b16_e64 v80.h, v234.l
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v81, v24, v83, v195
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v24, v226, v101
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v95, v26, v82, v186
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_mov_b16_e32 v80.l, v32.l
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v43, v227, v101
	v_mul_f32_e32 v26, v161, v101
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v94, v24, v85, v192
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v24, v199, v32
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v96, v27, v85, v155
	v_fma_f32 v97, v40, v84, v164
	v_fma_f32 v40, v41, v83, v194
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v27, v232, v80
	v_dual_mul_f32 v45, v231, v80 :: v_dual_mov_b32 v204, v42
	v_mul_f32_e32 v46, v233, v80
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v41, v43, v82, v131
	v_fma_f32 v43, v26, v84, v191
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v26, v35, v32 :: v_dual_mov_b32 v103, v1
	v_mov_b32_e32 v35, v202
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v161, v24, v83, v248
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v24, off, off offset:784
	scratch_load_b32 v42, off, off offset:736
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v47, v229, v80
	v_mul_f32_e32 v28, v28, v32
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v44, v27, v83, v190
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v27, v122, v32 :: v_dual_mov_b32 v78, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v206, v47, v84, v35
	v_mov_b32_e32 v1, v168
	v_fma_f32 v168, v26, v82, v158
	v_fma_f32 v226, v27, v85, v249
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v26, v142, v92
	v_mul_f32_e32 v27, v137, v92
	scratch_load_b32 v36, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v46, v46, v85, v188
	v_dual_mov_b32 v85, v38 :: v_dual_mov_b32 v104, v31
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v142, v26, v23, v133
	v_fma_f32 v58, v27, v22, v132
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v25, off, off offset:232
	scratch_load_b32 v241, off, off offset:548
	scratch_load_b32 v31, off, off offset:68
	scratch_load_b32 v26, off, off offset:728
	scratch_load_b32 v27, off, off offset:716
	scratch_load_b32 v184, off, off offset:912
	v_dual_mov_b32 v74, v75 :: v_dual_mov_b32 v75, v126
	v_dual_mov_b32 v126, v180 :: v_dual_mov_b32 v203, v187
	v_mov_b32_e32 v205, v185
	v_mov_b32_e32 v38, v193
	v_dual_mov_b32 v208, v225 :: v_dual_mov_b32 v187, v30
	scratch_load_b32 v30, off, off offset:72 ; 4-byte Folded Reload
	v_mov_b32_e32 v0, v182
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v45, v45, v82, v189
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s34, 31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v199, v132, v58, s2
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_lshr_b32 s1, s1, 27
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s30, s14
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_add_i32 s1, s34, s1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_mov_b32 s31, s15
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s1, 5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v168, v158, v168, s2
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s1, s35
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s4, s1, s44
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s5, -1, 0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s33, s33, s27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	v_mov_b32_e32 v77, v125
	scratch_load_b32 v243, off, off offset:552 ; 4-byte Folded Reload
	v_mov_b32_e32 v125, v134
	scratch_load_b32 v134, off, off offset:540 ; 4-byte Folded Reload
	v_mov_b32_e32 v185, v219
	v_mov_b32_e32 v225, v221
	v_mov_b32_e32 v159, v178
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(10)
	v_mul_f32_e32 v47, v42, v101
	scratch_load_b32 v42, off, off offset:724 ; 4-byte Folded Reload
	v_mul_f32_e32 v24, v24, v92
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v227, v28, v84, v127
	v_mov_b32_e32 v84, v37
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:620
	scratch_load_b32 v180, off, off offset:544
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v48, v47, v21, v182
	v_mov_b32_e32 v182, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v198, v0, v48, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(8)
	v_mul_f32_e32 v26, v26, v101
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v50, v26, v23, v39
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:740 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v49, v42, v101
	scratch_load_b32 v42, off, off offset:752 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v28, v24, v21, v130
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v24, off, off offset:780 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v47, v49, v20, v157
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v202, v130, v28, s2
	v_mov_b32_e32 v28, v29
	v_mov_b32_e32 v130, v128
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v26, v26, v80
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v51, v42, v80
	scratch_load_b32 v42, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v52, v51, v21, v167
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v53, v42, v80
	scratch_load_b32 v42, off, off offset:768 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v51, v53, v20, v246
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v54, v42, v80
	scratch_load_b32 v42, off, off offset:792 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v53, v54, v23, v201
	v_fma_f32 v54, v26, v22, v141
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v26, off, off offset:900 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v26, v26, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v228, v26, v89, v177
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v26, off, off offset:892 ; 4-byte Folded Reload
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v55, v42, v32
	scratch_load_b32 v42, off, off offset:704 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v55, v55, v20, v139
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v193, v139, v55, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v26, v26, v101
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v59, v42, v32
	scratch_load_b32 v42, off, off offset:700 ; 4-byte Folded Reload
	v_mul_f32_e32 v27, v27, v101
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v231, v26, v91, v175
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v26, off, off offset:908 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v62, v59, v23, v138
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v23, off, off offset:872 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v49, v27, v22, v36
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v27, off, off offset:800 ; 4-byte Folded Reload
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v26, v26, v80
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v27, v32
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v236, v26, v90, v205
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:584 ; 4-byte Folded Reload
	v_mov_b32_e32 v137, v200
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v200, v133, v142, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v56, v27, v21, v140
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:888
	scratch_load_b32 v21, off, off offset:868
	v_mov_b32_e32 v133, v195
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v195, v36, v49, s2
	v_cndmask_b32_e64 v242, v140, v56, s2
	v_mov_b32_e32 v140, v191
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v26, v26, v92 :: v_dual_mul_f32 v27, v27, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v229, v27, v88, v176
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v27, off, off offset:884 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v27, v101
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v232, v27, v90, v174
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v27, off, off offset:904 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v27, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v237, v27, v89, v137
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v27, off, off offset:592 ; 4-byte Folded Reload
	v_mul_f32_e32 v60, v42, v32
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v42, off, off offset:920 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v61, v60, v22, v34
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v22, off, off offset:880 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v27, v27, v92
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v59, v42, v80
	scratch_load_b32 v42, off, off offset:916 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v233, v59, v89, v173
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v60, v42, v80
	scratch_load_b32 v42, off, off offset:924 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v234, v60, v88, v203
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v63, v42, v80
	scratch_load_b32 v42, off, off offset:896 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v235, v63, v91, v171
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v59, v42, v32
	scratch_load_b32 v42, off, off offset:848 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v238, v59, v88, v165
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v59, v37, v92
	scratch_load_b32 v37, off, off offset:596 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v60, v42, v32
	scratch_load_b32 v42, off, off offset:844 ; 4-byte Folded Reload
	v_mul_f32_e32 v21, v21, v92
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v239, v60, v91, v129
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v21, v21, v88, v126
	v_mov_b32_e32 v88, v33
	scratch_load_b32 v33, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v63, v42, v32
	scratch_load_b32 v42, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v66, v59, v14, v31
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v240, v63, v90, v128
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v63, v26, v13, v221
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:624 ; 4-byte Folded Reload
	v_dual_mul_f32 v24, v24, v92 :: v_dual_mov_b32 v221, v110
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v57, v24, v20, v25
	v_mov_b32_e32 v24, v64
	v_fma_f32 v64, v27, v12, v220
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v27, off, off offset:588
	scratch_load_b32 v20, off, off offset:876
	s_waitcnt vmcnt(3)
	v_mov_b32_e32 v29, v42
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v26, v26, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v65, v26, v15, v33
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:600 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v27, v27, v101
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v68, v27, v12, v42
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v27, v162, v101 :: v_dual_mov_b32 v162, v160
	v_mov_b32_e32 v42, v249
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v249, v33, v65, s2
	v_mov_b32_e32 v33, v173
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v70, v27, v14, v160
	scratch_load_b32 v160, off, off offset:556 ; 4-byte Folded Reload
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v60, v37, v101
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:612
	scratch_load_b32 v27, off, off offset:608
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v20, v20, v92
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v67, v60, v13, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v20, v20, v89, v125
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v178, v30, v67, s2
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v30, v176 :: v_dual_mul_f32 v59, v37, v80
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v37, off, off offset:604 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v79, v59, v13, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v79, v160, v79, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v60, v37, v80
	scratch_load_b32 v37, off, off offset:628 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v22, v22, v92
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v22, v22, v91, v179
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v59, v37, v32
	scratch_load_b32 v37, off, off offset:576 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v23, v23, v92 :: v_dual_mul_f32 v26, v26, v101
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v83, v59, v12, v184
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v23, v23, v90, v38
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v69, v26, v15, v152
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:616 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v90, v60, v12, v243
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v12, off, off offset:652 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v176, v152, v69, s2
	v_cndmask_b32_e64 v152, v137, v237, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v60, v37, v32
	scratch_load_b32 v37, off, off offset:580 ; 4-byte Folded Reload
	v_mul_f32_e32 v27, v27, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v106, v27, v14, v156
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v26, v26, v80
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v12, v12, v92
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v91, v26, v15, v241
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v26, off, off offset:632 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 1              ; generate_amdgcn.py:340:21
	v_fma_f32 v196, v12, v17, v154
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v12, off, off offset:656 ; 4-byte Folded Reload
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v71, v37, v32
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v37, v188 :: v_dual_mul_f32 v26, v26, v32
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v12, v12, v92
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v82, v26, v13, v219
	v_mov_b32_e32 v219, v108
	v_fma_f32 v108, v71, v15, v180
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v15, off, off offset:676
	scratch_load_b32 v13, off, off offset:644
	scratch_load_b32 v26, off, off offset:636
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v230, v12, v19, v159
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v12, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v15, v15, v101 :: v_dual_mul_f32 v26, v26, v32
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v12, v12, v101
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v166, v15, v17, v149
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v15, off, off offset:688 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v115, v12, v19, v146
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v12, off, off offset:696 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v15, v15, v80
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v12, v12, v80
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v118, v15, v16, v143
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v15, off, off offset:640 ; 4-byte Folded Reload
	v_mul_f32_e32 v13, v13, v92
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v119, v12, v19, v182
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v12, off, off offset:680 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v143, v143, v118, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v110, v13, v16, v208
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v13, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v15, v15, v32
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v12, v12, v32
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v3, v15, v19, v197
	v_mov_b32_e32 v15, v167
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v13, v101
	v_mov_b32_e32 v167, v151
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v121, v12, v17, v223
	v_dual_mov_b32 v12, v34 :: v_dual_mov_b32 v151, v124
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v114, v13, v16, v147
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v13, off, off offset:664 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v138, v62, s2
	v_cndmask_b32_e64 v36, v12, v61, s2
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v12, v144, s4, 1
	v_mov_b32_e32 v144, v194
	v_mov_b32_e32 v138, v189
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v34, off offset:232
	scratch_store_b32 off, v36, off offset:228
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	buffer_load_u16 v12, v12, s[28:31], 0 offen
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v13, v13, v101
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v116, v13, v18, v145
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v13, off, off offset:684 ; 4-byte Folded Reload
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v13, v80
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v120, v13, v18, v224
	v_mov_b32_e32 v13, v201
	v_fma_f32 v124, v26, v18, v167
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v39, v50, s2
	v_cndmask_b32_e64 v201, v25, v57, s2
	v_cndmask_b32_e64 v57, v141, v54, s2
	v_cndmask_b32_e64 v58, v13, v53, s2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	scratch_load_b32 v13, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v107, v60, v14, v134
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v14, off, off offset:648 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v15, v52, s2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	scratch_load_b32 v15, off, off offset:184 ; 4-byte Folded Reload
	v_dual_mov_b32 v39, v38 :: v_dual_mov_b32 v38, v177
	v_mov_b32_e32 v141, v192
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v177, v29, v68, s2
	v_cndmask_b32_e64 v132, v224, v120, s2
	v_mov_b32_e32 v29, v171
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v25, v205 :: v_dual_mul_f32 v14, v14, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v245, v14, v18, v150
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	scratch_load_b32 v14, off, off offset:692 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v80
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v117, v14, v17, v148
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v14, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v148, v148, v117, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v14, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v122, v14, v16, v153
	v_mov_b32_e32 v14, v246
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	scratch_load_b32 v16, off, off offset:188 ; 4-byte Folded Reload
	v_add_lshl_u32 v13, v13, s1, 1
	v_add_lshl_u32 v15, v15, s1, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v246, v157, v47, s2
	v_cndmask_b32_e64 v59, v14, v51, s2
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	scratch_load_b32 v14, off, off offset:180 ; 4-byte Folded Reload
	v_mov_b32_e32 v157, v127
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	v_mov_b32_e32 v127, v125
	v_mov_b32_e32 v125, v179
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v16, v16, s1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_cndmask_b32 v16, 0x80000000, v16
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v14, v14, s1, 1
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	s_clause 0x3
	buffer_load_u16 v13, v13, s[12:15], 0 offen
	buffer_load_u16 v14, v14, s[12:15], 0 offen
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	buffer_load_u16 v16, v16, s[12:15], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v72, v12 offset:36864
	scratch_load_b32 v12, off, off offset:824 ; 4-byte Folded Reload
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v49, 16, v15
	v_dual_mov_b32 v139, v190 :: v_dual_lshlrev_b32 v190, 16, v13
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v27, 16, v16
	v_lshlrev_b32_e32 v71, 16, v14
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v16, v12, v190
	scratch_load_b32 v12, off, off offset:820 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v12, v190
	scratch_load_b32 v12, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v12, v190
	scratch_load_b32 v12, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v47, v12, v71
	scratch_load_b32 v12, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v48, v12, v71
	scratch_load_b32 v12, off, off offset:796 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v50, v12, v71
	scratch_load_b32 v12, off, off offset:788 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v51, v12, v71
	scratch_load_b32 v12, off, off offset:808 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v52, v12, v49
	scratch_load_b32 v12, off, off offset:804 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v53, v12, v49
	scratch_load_b32 v12, off, off offset:816 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v54, v12, v49
	scratch_load_b32 v12, off, off offset:812 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v55, v12, v49
	scratch_load_b32 v12, off, off offset:856 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v56, v12, v27
	scratch_load_b32 v12, off, off offset:852 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v61, v12, v27
	scratch_load_b32 v12, off, off offset:860 ; 4-byte Folded Reload
	v_mul_f32_e32 v19, v183, v190
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v183, v31, v66, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v62, v12, v27
	scratch_load_b32 v12, off, off offset:864 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:88 ; 4-byte Folded Reload
	v_mov_b32_e32 v31, v175
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v175, v162, v70, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v89, v12, v27
	ds_load_b128 v[12:15], v181 offset:36864
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v16, v16, v13, v202
	v_fma_f32 v191, v48, v12, v246
	v_fma_f32 v53, v53, v12, v59
	v_fma_f32 v194, v18, v15, v200
	v_fma_f32 v189, v50, v15, v26
	scratch_store_b32 off, v16, off offset:576 ; 4-byte Folded Spill
	v_fma_f32 v16, v17, v12, v201
	v_fma_f32 v12, v61, v12, v193
	v_fma_f32 v192, v47, v13, v198
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v184, v83, s2
	v_cndmask_b32_e64 v184, v220, v64, s2
	scratch_store_b32 off, v16, off offset:192 ; 4-byte Folded Spill
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v16, v19, v14, v199
	scratch_store_b32 off, v12, off offset:100 ; 4-byte Folded Spill
	v_fma_f32 v12, v56, v13, v242
	v_fma_f32 v52, v52, v13, v60
	v_fma_f32 v54, v54, v15, v58
	scratch_store_b32 off, v16, off offset:188 ; 4-byte Folded Spill
	v_fma_f32 v16, v55, v14, v57
	scratch_store_b32 off, v12, off offset:180 ; 4-byte Folded Spill
	v_fma_f32 v12, v62, v14, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v83, v180, v108, s2
	v_cndmask_b32_e64 v62, v241, v91, s2
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	scratch_store_b32 off, v16, off offset:184 ; 4-byte Folded Spill
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v16, v0, v190
	scratch_load_b32 v0, off, off offset:84 ; 4-byte Folded Reload
	scratch_store_b32 off, v12, off offset:92 ; 4-byte Folded Spill
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v12, v89, v15, v34
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v89, v185, v82, s2
	v_cndmask_b32_e64 v82, v134, v107, s2
	v_mov_b32_e32 v134, v165
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v188, v51, v14, v195
	scratch_store_b32 off, v12, off offset:96 ; 4-byte Folded Spill
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	ds_load_b128 v[12:15], v181 offset:36880
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v185, v225, v63, s2
	v_cndmask_b32_e64 v63, v243, v90, s2
	v_dual_mov_b32 v107, v248 :: v_dual_mov_b32 v108, v223
	v_cndmask_b32_e64 v61, v156, v106, s2
	v_mov_b32_e32 v36, v174
	v_cndmask_b32_e64 v156, v42, v226, s2
	v_mov_b32_e32 v42, v197
	v_mov_b32_e32 v34, v186
	v_cndmask_b32_e64 v169, v107, v161, s2
	v_cndmask_b32_e64 v226, v140, v43, s2
	v_cndmask_b32_e64 v225, v139, v44, s2
	v_cndmask_b32_e64 v223, v138, v45, s2
	v_cndmask_b32_e64 v197, v157, v227, s2
	v_cndmask_b32_e64 v157, v35, v206, s2
	v_mov_b32_e32 v35, v208
	v_mov_b32_e32 v107, v153
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v91, v98, v49 :: v_dual_mul_f32 v98, v216, v27
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v51, v16, v13, v185
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v0, v190
	scratch_load_b32 v0, off, off offset:776 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v248, v17, v12, v184
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v0, v190
	scratch_load_b32 v0, off, off offset:764 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v243, v18, v15, v249
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v0, v190
	scratch_load_b32 v0, off, off offset:712 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v48, v0, v71
	scratch_load_b32 v0, off, off offset:708 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v251, v48, v13, v178
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v50, v0, v71
	scratch_load_b32 v0, off, off offset:732 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v180, v50, v12, v177
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v55, v0, v71
	scratch_load_b32 v0, off, off offset:720 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v56, v0, v71
	scratch_load_b32 v0, off, off offset:756 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v174, v56, v14, v175
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v64, v0, v49
	scratch_load_b32 v0, off, off offset:748 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v173, v64, v13, v79
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v65, v0, v49
	scratch_load_b32 v0, off, off offset:772 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v66, v0, v49
	scratch_load_b32 v0, off, off offset:760 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v171, v66, v15, v62
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v155, v96, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v96, v214, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v214, v38, v228, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v38, v77, v190
	v_mul_f32_e32 v77, v213, v27
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v67, v0, v49
	scratch_load_b32 v0, off, off offset:832 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v68, v0, v27
	scratch_load_b32 v0, off, off offset:828 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v56, v68, v13, v89
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v144, v40, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v40, v75, v190
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v179, v55, v15, v176
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v75, v100, v71
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v69, v0, v27
	scratch_load_b32 v0, off, off offset:836 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v70, v0, v27
	scratch_load_b32 v0, off, off offset:840 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v48, v70, v14, v82
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v70, v74, v190
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v128, v65, v12, v63
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v74, v135, v71
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v186, v19, v14, v183
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v34, v95, s2
	v_dual_mov_b32 v34, v159 :: v_dual_mul_f32 v95, v2, v27
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v2, v4, v71
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v90, v0, v27
	v_mov_b32_e32 v0, v203
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v50, v90, v15, v83
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v90, v105, v49
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v55, v69, v12, v47
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v12, v73, s4, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v69, v76, v190 :: v_dual_mul_f32 v76, v99, v71
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v241, v67, v14, v61
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v164, v97, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v227, v141, v94, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v94, v212, v49 :: v_dual_mul_f32 v97, v217, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v212, v30, v229, s2
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	buffer_load_u16 v12, v12, s[28:31], 0 offen
	v_mov_b32_e32 v30, v146
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v146, v31, v231, s2
	v_mov_b32_e32 v31, v149
	v_cndmask_b32_e64 v73, v131, v41, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v41, v1, v190
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v149, v36, v232, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v1, v109, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v141, v25, v236, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v25, v151, v190
	v_mul_f32_e32 v36, v87, v190
	v_mul_f32_e32 v87, v111, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v208, v31, v166, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v31, v207, v190
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v164, v30, v115, s2
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v64, 16, v12
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[16:19], v181 offset:37376
	ds_load_b128 v[12:15], v181 offset:37392
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v160, v37, v46, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_store_b32 v72, v64 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[43:46], v181 offset:36864
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v133, v81, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v81, v211, v49 :: v_dual_mul_f32 v72, v136, v71
	v_mov_b32_e32 v37, v154
	scratch_load_b32 v4, off, off offset:1000 ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v153, v98, v45, v197
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v98, v33, v233, s2
	v_mov_b32_e32 v33, v150
	v_cndmask_b32_e64 v150, v0, v234, s2
	v_mov_b32_e32 v0, v145
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v216, v76, v45, v226
	v_fma_f32 v211, v81, v44, v225
	v_fma_f32 v210, v90, v43, v223
	v_fma_f32 v205, v91, v46, v160
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v161, v0, v116, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v0, off, off offset:1008 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v127, v20, s2
	v_cndmask_b32_e64 v81, v126, v21, s2
	v_cndmask_b32_e64 v90, v125, v22, s2
	v_cndmask_b32_e64 v91, v39, v23, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	ds_load_b128 v[20:23], v181 offset:36880
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v99, v40, v44, v64
	v_fma_f32 v100, v41, v43, v65
	v_fma_f32 v106, v74, v43, v73
	v_fma_f32 v155, v96, v43, v168
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v40, v7, v71 :: v_dual_mul_f32 v43, v10, v49
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v105, v72, v44, v68
	v_fma_f32 v217, v75, v46, v227
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v145, v29, v235, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v29, v123, v190 :: v_dual_mul_f32 v72, v9, v49
	v_dual_mul_f32 v41, v6, v71 :: v_dual_mul_f32 v74, v8, v49
	v_mul_f32_e32 v75, v11, v49
	scratch_load_b128 v[8:11], off, off offset:960 ; 16-byte Folded Reload
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v70, v70, v45, v67
	v_fma_f32 v165, v94, v45, v157
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v129, v239, s2
	v_mov_b32_e32 v39, v167
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v206, v43, v21, v98
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v94, v113, v27
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v158, v1, v22, v149
	v_mov_b32_e32 v1, v147
	v_fma_f32 v213, v2, v23, v146
	v_fma_f32 v203, v72, v20, v150
	v_fma_f32 v159, v74, v23, v145
	v_fma_f32 v228, v94, v23, v45
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v42, v3, s2
	v_cndmask_b32_e64 v72, v39, v124, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v39, v93, v71
	v_mul_f32_e32 v94, v222, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v162, v1, v114, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v69, v69, v46, v66
	v_fma_f32 v220, v95, v44, v169
	v_fma_f32 v154, v97, v46, v156
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v134, v238, s2
	v_cndmask_b32_e64 v44, v130, v240, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v95, v112, v27
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v25, v25, v21, v76
	v_fma_f32 v29, v29, v20, v81
	v_fma_f32 v36, v36, v23, v90
	v_fma_f32 v38, v38, v22, v91
	v_fma_f32 v96, v40, v21, v214
	v_fma_f32 v142, v41, v20, v212
	v_fma_f32 v147, v75, v22, v141
	v_fma_f32 v138, v77, v21, v152
	v_fma_f32 v167, v95, v22, v44
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v108, v121, s2
	v_cndmask_b32_e64 v40, v107, v122, s2
	v_cndmask_b32_e64 v21, v35, v110, s2
	v_cndmask_b32_e64 v22, v34, v230, s2
	v_cndmask_b32_e64 v23, v33, v245, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v33, v204, v190 :: v_dual_mul_f32 v42, v215, v71
	v_mul_f32_e32 v34, v86, v190
	v_mul_f32_e32 v75, v170, v49
	v_mul_f32_e32 v77, v78, v49
	v_mul_f32_e32 v86, v221, v49
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v137, v87, v20, v46
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v37, v196, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v37, v209, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v134, v182, v119, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v35, v102, v190
	v_mul_f32_e32 v87, v219, v49
	v_mul_f32_e32 v95, v5, v27
	v_mul_f32_e32 v97, v24, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v81, v29, s3
	v_cndmask_b32_e64 v25, v76, v25, s3
	v_cndmask_b32_e64 v135, v44, v167, s3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v43, v0, v71
	scratch_load_b32 v0, off, off offset:1012 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v93, v0, v27
	ds_load_b128 v[0:3], v181 offset:37376
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v31, v31, v1, v20
	v_fma_f32 v33, v33, v0, v21
	v_fma_f32 v215, v37, v1, v208
	v_fma_f32 v209, v39, v0, v162
	v_fma_f32 v204, v43, v2, v161
	v_fma_f32 v102, v75, v1, v148
	v_fma_f32 v151, v77, v0, v143
	v_fma_f32 v43, v93, v1, v41
	v_fma_f32 v1, v94, v0, v40
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v64, v99, s3
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v34, v34, v3, v22
	v_fma_f32 v35, v35, v2, v23
	v_fma_f32 v207, v42, v3, v164
	v_fma_f32 v144, v86, v3, v134
	v_fma_f32 v140, v87, v2, v132
	v_fma_f32 v75, v95, v3, v74
	v_fma_f32 v3, v97, v2, v72
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v2, 0xbfb8aa3b, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v20, v31, s3
	v_cndmask_b32_e64 v1, v40, v1, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v3, v72, v3, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v0
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v37
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, null, v2, v2, v0
	v_rcp_f32_e32 v39, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v37, v39, 1.0
	v_fmac_f32_e32 v39, v42, v39
	v_div_scale_f32 v42, vcc_lo, v0, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v64, v42, v39
	v_fma_f32 v77, -v37, v64, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v77, v39
	v_fma_f32 v37, -v37, v64, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v37, v37, v39, v64
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v65, v100, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v118, v37, v2, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v39
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v67, v70, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v2, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v42, v42
	v_ldexp_f32 v42, v42, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v42, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v64
	v_fma_f32 v77, -v64, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v77, v65
	v_div_scale_f32 v77, vcc_lo, v39, v42, v39
	v_mul_f32_e32 v86, v77, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v64, v86, v77
	v_fmac_f32_e32 v86, v87, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v64, v86, v77
	v_div_fmas_f32 v64, v64, v65, v86
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v66, v69, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v119, v64, v42, v39
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v66, 0xbfb8aa3b, v65
	v_mul_f32_e32 v39, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v66, v66
	v_ldexp_f32 v66, v66, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v66, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v77, v69
	v_fma_f32 v86, -v69, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v86, v77
	v_div_scale_f32 v86, vcc_lo, v65, v66, v65
	v_mul_f32_e32 v87, v86, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v69, v87, v86
	v_fmac_f32_e32 v87, v93, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v69, v87, v86
	v_div_fmas_f32 v69, v69, v77, v87
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v120, v69, v66, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v2, v2, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, null, v2, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v37
	v_fma_f32 v70, -v37, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v70, v67
	v_div_scale_f32 v70, vcc_lo, v0, v2, v0
	v_mul_f32_e32 v77, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v37, v77, v70
	v_fmac_f32_e32 v77, v86, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v37, v77, v70
	v_div_fmas_f32 v37, v37, v67, v77
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v121, v37, v2, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v90, v36, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v39, v39
	v_ldexp_f32 v39, v39, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, null, v39, v39, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v64, v42
	v_fma_f32 v67, -v42, v64, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v67, v64
	v_div_scale_f32 v67, vcc_lo, v25, v39, v25
	v_mul_f32_e32 v70, v67, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v42, v70, v67
	v_fmac_f32_e32 v70, v76, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v70, v67
	v_div_fmas_f32 v42, v42, v64, v70
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v64, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v123, v42, v39, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v64
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v91, v38, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v29
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v64, v64, v65
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v64, 1.0, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v65, null, v64, v64, v29
	v_rcp_f32_e32 v66, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v65, v66, 1.0
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v29, v64, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v67, v66
	v_fma_f32 v70, -v65, v69, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v66
	v_fma_f32 v65, -v65, v69, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v65, v65, v66, v69
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v124, v65, v64, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v29, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v0
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v36
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v36, null, v2, v2, v0
	v_rcp_f32_e32 v37, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v36, v37, 1.0
	v_fmac_f32_e32 v37, v66, v37
	v_div_scale_f32 v66, vcc_lo, v0, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v37
	v_fma_f32 v69, -v36, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v69, v37
	v_fma_f32 v36, -v36, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v37, v67
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v125, v36, v2, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v21, v33, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v2, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v25
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v37, v37, v38
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, null, v37, v37, v25
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v42, v39
	v_div_scale_f32 v42, vcc_lo, v25, v37, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v42, v39
	v_fma_f32 v67, -v38, v66, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v39
	v_fma_f32 v38, -v38, v66, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v39, v66
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v29, v29
	v_ldexp_f32 v29, v29, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v29, v29, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v31
	v_fma_f32 v42, -v31, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v42, v39
	v_div_scale_f32 v42, vcc_lo, v20, v29, v20
	v_mul_f32_e32 v64, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v31, v64, v42
	v_fmac_f32_e32 v64, v65, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v31, v64, v42
	v_div_fmas_f32 v31, v31, v39, v64
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v126, v38, v37, v25
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v22, v34, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v22, 0xbfb8aa3b, v25
	v_ldexp_f32 v2, v2, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v21, null, v2, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v21
	v_fma_f32 v36, -v21, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v36, v33
	v_div_scale_f32 v36, vcc_lo, v0, v2, v0
	v_mul_f32_e32 v39, v36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v21, v39, v36
	v_fmac_f32_e32 v39, v42, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v21, v39, v36
	v_div_fmas_f32 v21, v21, v33, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v69, v21, v2, v0
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v0, off, off offset:572 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v2, v103, v190
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v22, null, v33, v33, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v34, v22
	v_fma_f32 v36, -v22, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v36, v34
	v_div_scale_f32 v36, vcc_lo, v25, v33, v25
	v_div_fixup_f32 v127, v31, v29, v20
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v23, v35, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v37, v36, v34 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v22, v37, v36
	v_fmac_f32_e32 v37, v38, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v37, v36
	v_div_fmas_f32 v34, v22, v34, v37
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v113, v34, v33, v25
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v25, off, off offset:568 ; 4-byte Folded Reload
	v_mul_f32_e32 v33, v85, v190
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v20, null, v31, v31, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v20
	v_fma_f32 v23, -v20, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v29, v31, v29
	v_mul_f32_e32 v35, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v20, v35, v23
	v_fmac_f32_e32 v35, v36, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v35, v23
	v_div_fmas_f32 v35, v20, v22, v35
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	ds_load_b128 v[20:23], v181 offset:37392
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v0, v0, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v0, v0, v9, v172
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v172, v0, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, v2, v21, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v2, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v2, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v0
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v30
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v112, v35, v31, v29
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v29, off, off offset:564 ; 4-byte Folded Reload
	v_mul_f32_e32 v31, v84, v190
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v2, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v30
	v_fma_f32 v37, -v30, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v0, v2, v0
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v25, v92
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v38, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v30, v38, v37
	v_fmac_f32_e32 v38, v39, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v30, v38, v37
	v_div_fmas_f32 v30, v30, v36, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v111, v30, v2, v0
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v0, off, off offset:560 ; 4-byte Folded Reload
	v_mul_f32_e32 v2, v218, v190
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v25, v25, v8, v244
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v244, v25, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v33, v33, v20, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v33, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v25
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v25
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v34
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v33, v33, v25
	v_rcp_f32_e32 v36, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v34, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v25, v33, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v39, -v34, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v36
	v_fma_f32 v34, -v34, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v34, v34, v36, v38
	v_div_fixup_f32 v129, v34, v33, v25
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v68, v105, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v29, v29, v92
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v29, v29, v11, v250
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v250, v29, s2
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v31, v31, v23, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v31, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v31, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v31, v31
	v_ldexp_f32 v31, v31, v35
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v0, v0, v92 :: v_dual_add_f32 v31, 1.0, v31
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v0, v0, v10, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v31, v31, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v163, v0, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v36, v35
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v2, v2, v22, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v2, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v35, v36, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v2, 0xbfb8aa3b, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v29, v31, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v39, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v36
	v_fma_f32 v35, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v110, v35, v31, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v73, v106, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v2, 0xbfb8aa3b, v0 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v29
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v30
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v2, v2, v0
	v_rcp_f32_e32 v36, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v30, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v0, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v39, -v30, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v36
	v_fma_f32 v30, -v30, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v30, v30, v36, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v130, v30, v2, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v227, v217, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v33, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v0
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v34
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v33, v33, v25
	v_rcp_f32_e32 v36, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v34, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v25, v33, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v39, -v34, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v36
	v_fma_f32 v34, -v34, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v36, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v131, v34, v33, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v226, v216, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v29
	v_mul_f32_e32 v33, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v31, v31
	v_ldexp_f32 v31, v31, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v31, v31, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v35
	v_fma_f32 v37, -v35, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v29, v31, v29
	v_mul_f32_e32 v38, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v35, v38, v37
	v_fmac_f32_e32 v38, v39, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v35, v38, v37
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v133, v35, v31, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v214, v96, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v2, 0xbfb8aa3b, v0 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v2, v2, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v2, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v30
	v_fma_f32 v37, -v30, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v0, v2, v0
	v_mul_f32_e32 v38, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v30, v38, v37
	v_fmac_f32_e32 v38, v39, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v30, v38, v37
	v_div_fmas_f32 v30, v30, v36, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v139, v30, v2, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v212, v142, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v33, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v33, v33
	v_ldexp_f32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v33, v33, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v34
	v_fma_f32 v37, -v34, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v25, v33, v25
	v_mul_f32_e32 v38, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v34, v38, v37
	v_fmac_f32_e32 v38, v39, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v34, v38, v37
	v_div_fmas_f32 v34, v34, v36, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v142, v34, v33, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v146, v213, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v33, 0xbfb8aa3b, v25
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v31, v31, v35
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v31, v31, v29
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v29, v31, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v39, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v36
	v_fma_f32 v35, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v146, v35, v31, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v149, v158, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v2, 0xbfb8aa3b, v0 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v29
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v30
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v2, v2, v0
	v_rcp_f32_e32 v36, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v30, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v0, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v39, -v30, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v36
	v_fma_f32 v30, -v30, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v30, v30, v36, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v149, v30, v2, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v208, v215, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v33, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v0
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v34
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v33, v33, v25
	v_rcp_f32_e32 v36, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v34, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v25, v33, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v39, -v34, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v36
	v_fma_f32 v34, -v34, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v36, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v158, v34, v33, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v162, v209, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v29
	v_mul_f32_e32 v33, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v31, v31
	v_ldexp_f32 v31, v31, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v31, v31, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v35
	v_fma_f32 v37, -v35, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v29, v31, v29
	v_mul_f32_e32 v38, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v35, v38, v37
	v_fmac_f32_e32 v38, v39, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v35, v38, v37
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v162, v35, v31, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v164, v207, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v2, 0xbfb8aa3b, v0 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v2, v2, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v2, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v30
	v_fma_f32 v37, -v30, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v0, v2, v0
	v_mul_f32_e32 v38, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v30, v38, v37
	v_fmac_f32_e32 v38, v39, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v30, v38, v37
	v_div_fmas_f32 v30, v30, v36, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v164, v30, v2, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v161, v204, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v33, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v33, v33
	v_ldexp_f32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v33, v33, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v34
	v_fma_f32 v37, -v34, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v25, v33, v25
	v_mul_f32_e32 v38, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v34, v38, v37
	v_fmac_f32_e32 v38, v39, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v34, v38, v37
	v_div_fmas_f32 v34, v34, v36, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v204, v34, v33, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v25, off, off offset:536 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v29
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v31, v31, v35
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v31, v31, v29
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v29, v31, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v39, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v36
	v_fma_f32 v35, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v161, v35, v31, v29
	scratch_load_b32 v29, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v0
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v30
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v2, v2, v0
	v_rcp_f32_e32 v36, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v30, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v0, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v39, -v30, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v36
	v_fma_f32 v30, -v30, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v30, v30, v36, v38
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v25, v101
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(0)
	v_fma_f32 v25, v25, v9, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v29, v25, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v29, v88, v71
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v29, v29, v21, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v29, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v29, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v29, v29
	v_ldexp_f32 v29, v29, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v29, v29, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v31
	v_fma_f32 v34, -v31, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v25, v29, v25
	v_mul_f32_e32 v35, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v31, v35, v34
	v_fmac_f32_e32 v35, v36, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v31, -v31, v35, v34
	scratch_load_b32 v34, off, off offset:56 ; 4-byte Folded Reload
	v_div_fmas_f32 v31, v31, v33, v35
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v33, off, off offset:532 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v109, v31, v29, v25
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v33, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v33, v33, v8, v34
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v34, v33, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v34, v4, v71
	scratch_load_b32 v4, off, off offset:988 ; 4-byte Folded Reload
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
	v_mul_f32_e32 v38, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v35, v38, v37
	v_fmac_f32_e32 v38, v39, v36
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v35, -v35, v38, v37
	scratch_load_b32 v37, off, off offset:52 ; 4-byte Folded Reload
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v36, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v108, v35, v34, v33
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v36, v36, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v36, v36, v11, v37
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v37, v36, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v37, v104, v71
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
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v36
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v207, v30, v2, v0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v225, v211, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v2, 0xbfb8aa3b, v0
	v_ldexp_f32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, null, v37, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v42, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v42, v39
	v_div_scale_f32 v42, vcc_lo, v36, v37, v36
	v_mul_f32_e32 v64, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v38, v64, v42
	v_fmac_f32_e32 v64, v65, v39
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v38, -v38, v64, v42
	scratch_load_b32 v42, off, off offset:48 ; 4-byte Folded Reload
	v_div_fmas_f32 v38, v38, v39, v64
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v39, off, off offset:524 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v107, v38, v37, v36
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v39, v39, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v39, v39, v10, v42
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v42, v39, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v42, v187, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v42, v42, v22, v39
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v39, v42, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v39
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v39
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v42, v42, v64
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v42, v42, v39
	v_rcp_f32_e32 v65, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v64, v65, 1.0
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v39, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v65
	v_fma_f32 v68, -v64, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v65
	v_fma_f32 v64, -v64, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v64, v64, v65, v67
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v106, v64, v42, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v0
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v25
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v2, v2, v0
	v_rcp_f32_e32 v29, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v25, v29, 1.0
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, vcc_lo, v0, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v31, v30, v29
	v_fma_f32 v33, -v25, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v33, v29
	v_fma_f32 v25, -v25, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v25, v25, v29, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v223, v210, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v30, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v30, v30
	v_ldexp_f32 v30, v30, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v30, v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v31
	v_fma_f32 v34, -v31, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v29, v30, v29
	v_mul_f32_e32 v35, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v31, v35, v34
	v_fmac_f32_e32 v35, v36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v31, v35, v34
	v_div_fmas_f32 v31, v31, v33, v35
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v160, v205, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v205, v25, v2, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v150, v203, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v170, v31, v30, v29
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v2, 0xbfb8aa3b, v0
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
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v39, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v36
	v_fma_f32 v35, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v157, v165, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v165, v35, v34, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v36
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v36
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v37, v37, v38
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, null, v37, v37, v36
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v42, v39
	v_div_scale_f32 v42, vcc_lo, v36, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v64, v42, v39
	v_fma_f32 v65, -v38, v64, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v65, v39
	v_fma_f32 v38, -v38, v64, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v39, v64
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v98, v206, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v160, v38, v37, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v39
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v39
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v42, v42, v64
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v42, v42, v39
	v_rcp_f32_e32 v65, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v64, v65, 1.0
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v39, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v65
	v_fma_f32 v68, -v64, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v65
	v_fma_f32 v64, -v64, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v64, v64, v65, v67
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v157, v64, v42, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v0
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v25
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v2, v2, v0
	v_rcp_f32_e32 v29, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v25, v29, 1.0
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, vcc_lo, v0, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v31, v30, v29
	v_fma_f32 v33, -v25, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v33, v29
	v_fma_f32 v25, -v25, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v25, v25, v29, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v145, v159, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v30, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v30, v30
	v_ldexp_f32 v30, v30, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v30, v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v31
	v_fma_f32 v34, -v31, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v29, v30, v29
	v_mul_f32_e32 v35, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v31, v35, v34
	v_fmac_f32_e32 v35, v36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v31, v35, v34
	v_div_fmas_f32 v31, v31, v33, v35
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v141, v147, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v147, v31, v30, v29
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
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
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v34, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v35
	v_fma_f32 v37, -v35, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v33, v34, v33
	v_mul_f32_e32 v38, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v35, v38, v37
	v_fmac_f32_e32 v38, v39, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v35, v38, v37
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v148, v102, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v148, v25, v2, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v134, v144, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v145, v35, v34, v33
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v2, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v36
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v37, v37, v38
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, null, v37, v37, v36
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v42, v39
	v_div_scale_f32 v42, vcc_lo, v36, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v64, v42, v39
	v_fma_f32 v65, -v38, v64, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v65, v39
	v_fma_f32 v38, -v38, v64, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v39, v64
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v143, v151, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v143, v38, v37, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v39
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v39
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v42, v42, v64
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v42, v42, v39
	v_rcp_f32_e32 v65, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v64, v65, 1.0
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v39, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v65
	v_fma_f32 v68, -v64, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v65
	v_fma_f32 v64, -v64, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v64, v64, v65, v67
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v141, v64, v42, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v0
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v25
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v2, v2, v0
	v_rcp_f32_e32 v29, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v25, v29, 1.0
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, vcc_lo, v0, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v31, v30, v29
	v_fma_f32 v33, -v25, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v33, v29
	v_fma_f32 v25, -v25, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v29, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v132, v140, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v132, v25, v2, v0
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:512
	scratch_load_b32 v2, off, off offset:44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v30, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v30, v30
	v_ldexp_f32 v30, v30, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v30, v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v31
	v_fma_f32 v34, -v31, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v29, v30, v29
	v_mul_f32_e32 v35, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v31, v35, v34
	v_fmac_f32_e32 v35, v36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v31, v35, v34
	v_div_fmas_f32 v31, v31, v33, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v140, v31, v30, v29
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v0, v0, v80
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v9, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v2, v0, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v2, off, off offset:992 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v2, v2, v49
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v2, v2, v21, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v2, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v2, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v2, v2, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v2, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v25
	v_fma_f32 v34, -v25, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v0, v2, v0
	v_mul_f32_e32 v35, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v25, v35, v34
	v_fmac_f32_e32 v35, v36, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v25, -v25, v35, v34
	scratch_load_b32 v34, off, off offset:40 ; 4-byte Folded Reload
	v_div_fmas_f32 v25, v25, v33, v35
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v33, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v105, v25, v2, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v169, v220, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v2, 0xbfb8aa3b, v0
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v33, v80
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v33, v33, v8, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v34, v33, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v34, v28, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.h, v32.l
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v34, v34, v20, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
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
	v_mul_f32_e32 v38, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v35, v38, v37
	v_fmac_f32_e32 v38, v39, v36
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v35, -v35, v38, v37
	scratch_load_b32 v37, off, off offset:36 ; 4-byte Folded Reload
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v36, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v104, v35, v34, v33
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v36, v36, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v36, v36, v11, v37
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v37, v36, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v37, v4, v49
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:984
	scratch_load_b32 v24, off, off offset:184
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v37, v37, v23, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v36, v37, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v37, v37
	v_ldexp_f32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, null, v37, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v42, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v42, v39
	v_div_scale_f32 v42, vcc_lo, v36, v37, v36
	v_mul_f32_e32 v64, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v38, v64, v42
	v_fmac_f32_e32 v64, v65, v39
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v38, -v38, v64, v42
	scratch_load_b32 v42, off, off offset:32 ; 4-byte Folded Reload
	v_div_fmas_f32 v38, v38, v39, v64
	.loc	1 340 33 is_stmt 1              ; generate_amdgcn.py:340:33
	scratch_load_b32 v39, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v103, v38, v37, v36
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v39, v39, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v39, v39, v10, v42
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v42, v39, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v42, v4, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v42, v42, v22, v39
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v39, v42, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v39
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v39
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v42, v42, v64
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, null, v42, v42, v39
	v_rcp_f32_e32 v65, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v64, v65, 1.0
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v39, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v65
	v_fma_f32 v68, -v64, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v65
	v_fma_f32 v64, -v64, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v64, v64, v65, v67
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v102, v64, v42, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v0
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v25
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v2, v2, v0
	v_rcp_f32_e32 v29, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v25, v29, 1.0
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, vcc_lo, v0, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v31, v30, v29
	v_fma_f32 v33, -v25, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v33, v29
	v_fma_f32 v25, -v25, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v29, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v168, v155, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v134, v25, v2, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v30, 0xbfb8aa3b, v29
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v156, v154, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v2, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v30, v30
	v_ldexp_f32 v30, v30, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v30, v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v31
	v_fma_f32 v34, -v31, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v29, v30, v29
	v_mul_f32_e32 v35, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v31, v35, v34
	v_fmac_f32_e32 v35, v36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v31, v35, v34
	v_div_fmas_f32 v31, v31, v33, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v0
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v25
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v2, v2, v0
	v_rcp_f32_e32 v33, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v25, v33, 1.0
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v0, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v35, v34, v33
	v_fma_f32 v36, -v25, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v33
	v_fma_f32 v25, -v25, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v25, v25, v33, v35
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v197, v153, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v153, v31, v30, v29
	v_div_fixup_f32 v151, v25, v2, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v45, v228, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v2, 0xbfb8aa3b, v0
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
	v_mul_f32_e32 v38, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v35, v38, v37
	v_fmac_f32_e32 v38, v39, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v35, v38, v37
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v152, v138, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v152, v35, v34, v33
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v37, 0xbfb8aa3b, v36
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v35, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v36
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v37, v37, v38
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, null, v37, v37, v36
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v42, v39
	v_div_scale_f32 v42, vcc_lo, v36, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v64, v42, v39
	v_fma_f32 v65, -v38, v64, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v65, v39
	v_fma_f32 v38, -v38, v64, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v39, v64
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v46, v137, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v138, v38, v37, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v39
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v39
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v42, v42, v46
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, null, v42, v42, v39
	v_rcp_f32_e32 v64, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v46, v64, 1.0
	v_fmac_f32_e32 v64, v65, v64
	v_div_scale_f32 v65, vcc_lo, v39, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v65, v64
	v_fma_f32 v67, -v46, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v64
	v_fma_f32 v46, -v46, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v46, v46, v64, v66
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v137, v46, v42, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v0
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v25
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v2, v2, v0
	v_rcp_f32_e32 v29, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v25, v29, 1.0
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, vcc_lo, v0, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v31, v30, v29
	v_fma_f32 v33, -v25, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v33, v29
	v_fma_f32 v25, -v25, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v29, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v29, 0xbfb8aa3b, v135
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v144, v25, v2, v0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:576
	scratch_load_b32 v2, off, off offset:192
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.h, v32.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v135
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v29, v29, v30
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v136, 1.0, v29 :: v_dual_mul_f32 v35, v35, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, null, v136, v136, v135
	v_rcp_f32_e32 v30, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v29, v30, 1.0
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v135, v136, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v33, v31, v30
	v_fma_f32 v34, -v29, v33, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v33, v34, v30
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	scratch_load_b32 v34, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v29, v33, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.h, v32.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v150, v29, v30, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.h, v32.l
	v_mov_b16_e32 v30.h, v32.l
	scratch_load_b32 v33, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v0, v202, v0, s3
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v2, v201, v2, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v118
	v_mul_f32_e32 v2, v2, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.l, v0.h
	v_mov_b16_e32 v29.l, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s1, v2, v2
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v25, v0, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v29, v2, v29, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v2, off, off offset:188 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v0, v200, v194, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v44.h, 0x7fff, v25.h, vcc_lo
	v_cndmask_b16 v44.l, 0x7fff, v29.h, s1
	v_mov_b16_e32 v29.h, v32.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v120
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v185, v51, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v51, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v25, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v29, 1, v29
	v_cmp_o_f32_e64 s4, v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v29, v0, v29, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v184, v248, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v45.h, 0x7fff, v29.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v124
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v29, off, off offset:208
	scratch_load_b128 v[4:7], off, off offset:944
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v0.h
	v_cmp_o_f32_e64 s5, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v31, v0, v31, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v183, v186, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v46.l, 0x7fff, v31.h, s5
	scratch_load_b32 v31, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v126
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v34, v34, v190
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v2, v199, v2, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v2, v2, v121 :: v_dual_mul_f32 v51, v51, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v2.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v2, v2
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v30, v2, v30, 0x7fff
	v_mov_b16_e32 v2.l, v25.h
	v_mov_b16_e32 v2.h, v32.l
	v_cndmask_b16 v45.l, 0x7fff, v30.h, s1
	scratch_load_b32 v30, off, off offset:204 ; 4-byte Folded Reload
	v_and_b32_e32 v2, 1, v2
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v2, v25, v2, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v249, v243, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v46.h, 0x7fff, v2.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v25, v125
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.h, v32.l
	v_mov_b16_e32 v2.l, v25.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v25, v2, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v25, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v98.h, 0x7fff, v2.h, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v25, v25, v92
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v25, v25, v5, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v29, v25, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v29, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v29, v29, v92
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v29, v29, v4, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v30, v29, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v30, off, off offset:520 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v30, v30, v190
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v30, v30, v17, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v30, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v30, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v25, v127
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v25, v25
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v30, v30, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v30, v30, v16, v29
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v30, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v0.h
	v_mov_b16_e32 v30.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v30, v0, v30, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v29, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v25.h
	v_mov_b16_e32 v29.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v98.l, 0x7fff, v30.h, s1
	v_cmp_o_f32_e64 s5, v0, v0
	scratch_load_b32 v30, off, off offset:168 ; 4-byte Folded Reload
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v29, v25, v29, 0x7fff
	v_mov_b16_e32 v25.l, v0.h
	v_mov_b16_e32 v25.h, v32.l
	v_cndmask_b16 v99.h, 0x7fff, v29.h, s4
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v29, off, off offset:172
	scratch_load_b128 v[64:67], off, off offset:928
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v25, v0, v25, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v99.l, 0x7fff, v25.h, s5
	v_mov_b16_e32 v25.h, v32.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v0, v0, v7, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v31, v0, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v31, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v31, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v31, v31, v6, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v33, v31, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v33, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v33, v19, v0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v33, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v25, v0, v25, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v0, v0, v65, v29
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v29, v0, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v29, off, off offset:364 ; 4-byte Folded Reload
	v_mul_f32_e32 v33, v33, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v33, v18, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v33, s3
	scratch_load_b32 v33, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v31, v112
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v31, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v29, v29, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v29, v29, v64, v30
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v30, v29, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v30, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v30, v30, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v30, v30, v13, v0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v30, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v30, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v0, v0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v30, v30, v190
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v30, v30, v12, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v30, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v2.h
	v_mov_b16_e32 v30.h, v32.l
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v30, v2, v30, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v29, v129
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v0.h
	v_mov_b16_e32 v29.h, v32.l
	v_cmp_o_f32_e64 s5, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v29, v0, v29, 0x7fff
	v_mov_b16_e32 v0.l, v2.h
	v_mov_b16_e32 v0.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v94.h, 0x7fff, v29.h, s4
	v_mov_b16_e32 v29.h, v32.l
	v_and_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v2, v0, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v2, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v94.l, 0x7fff, v0.h, s5
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v2, v2, v92
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v2, v2, v67, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v33, v2, s2
	scratch_load_b32 v33, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v31, v31, v92
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v31, v31, v66, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v33, v31, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v33, v190
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v33, v15, v2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v33, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v34, v14, v31
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	scratch_load_b32 v34, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v33, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v2, v110
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v2.h, 0x7fff, v25.h, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v198, v192, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v2.l, 0x7fff, v30.h, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v31, v130
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.h, v32.l
	v_mov_b16_e32 v29.l, v33.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v246, v191, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v25, v131
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	v_and_b32_e32 v29, 1, v29
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s4, v25, v25
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v29, v33, v29, 0x7fff
	v_mov_b16_e32 v33.h, v32.l
	v_add3_u32 v31, v0, v31, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v30, v133
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v25.h
	v_mov_b16_e32 v30.h, v32.l
	v_cndmask_b16 v95.h, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v95.l, 0x7fff, v31.h, s1
	v_mov_b16_e32 v33.l, v0.h
	v_cmp_o_f32_e64 s5, v0, v0
	v_and_b32_e32 v30, 1, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v178, v251, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.h, v32.l
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v30, v25, v30, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v26, v189, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v29, v146
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v0, v33, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v195, v188, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v96.h, 0x7fff, v30.h, s4
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v25, v139
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.h, v32.l
	v_cmp_o_f32_e64 s4, v29, v29
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v142
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v96.l, 0x7fff, v33.h, s5
	v_mov_b16_e32 v30.l, v25.h
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_mov_b16_e32 v33.h, v32.l
	v_mov_b16_e32 v31.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v30, v25, v30, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v177, v180, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v0, v31, 0x7fff
	v_cndmask_b16 v97.h, 0x7fff, v30.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v25, v149
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.l, v29.h
	v_mov_b16_e32 v25.h, v32.l
	scratch_load_b32 v30, off, off offset:156 ; 4-byte Folded Reload
	v_cndmask_b16 v97.l, 0x7fff, v31.h, s1
	scratch_load_b32 v31, off, off offset:152 ; 4-byte Folded Reload
	v_mov_b16_e32 v33.l, v0.h
	v_and_b32_e32 v25, 1, v25
	v_cmp_o_f32_e64 s5, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v33, 1, v33
	v_add3_u32 v25, v29, v25, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v176, v179, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v0, v33, 0x7fff
	v_cndmask_b16 v100.h, 0x7fff, v25.h, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v29, v158
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.h, v32.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v175, v174, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v100.l, 0x7fff, v33.h, s5
	scratch_load_b32 v33, off, off offset:148 ; 4-byte Folded Reload
	v_mov_b16_e32 v25.l, v29.h
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v0, v0, v162 :: v_dual_and_b32 v25, 1, v25
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v25, v29, v25, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v29, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v90.h, 0x7fff, v25.h, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v34, v34, v71 :: v_dual_mul_f32 v29, v29, v101
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v29, v29, v5, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v30, v29, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v30, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v30, v30, v101
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v30, v30, v4, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v31, v30, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v31, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v31, v71
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v31, v31, v17, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v31, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v31, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v29, v164
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v29, v29
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v31, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v31, v31, v16, v30
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v31, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v0.h
	v_mov_b16_e32 v31.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v31, v0, v31, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v30, v204
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v29.h
	v_mov_b16_e32 v30.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v90.l, 0x7fff, v31.h, s1
	v_cmp_o_f32_e64 s5, v0, v0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v31, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v30, v29, v30, 0x7fff
	v_mov_b16_e32 v29.l, v0.h
	v_mov_b16_e32 v29.h, v32.l
	v_cndmask_b16 v91.h, 0x7fff, v30.h, s4
	scratch_load_b32 v30, off, off offset:144 ; 4-byte Folded Reload
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v29, v0, v29, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v91.l, 0x7fff, v29.h, s5
	v_mov_b16_e32 v29.h, v32.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v31, v31, v71 :: v_dual_mul_f32 v0, v0, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v0, v0, v7, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v33, v0, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v34, v34, v19, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v34, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v34, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v161
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v29, v0, v29, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v33, v33, v101
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v33, v6, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v253, v33, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v34, v34, v71
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v34, v34, v18, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v34, s3
	scratch_load_b32 v34, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v33, v207
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v0, v0, v101
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v0, v0, v65, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v30, v0, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v30, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v31, v31, v13, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v31, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v31, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v109
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v0, v0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v33, v33, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v33, v66, v255
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v255, v33, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v30, v30, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v30, v30, v64, v254
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v254, v30, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v31, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v31, v31, v12, v30
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v31, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v25.h
	v_mov_b16_e32 v31.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v31, v25, v31, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v30, v108
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v0.h
	v_mov_b16_e32 v30.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s5, v25, v25
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v30, v0, v30, 0x7fff
	v_mov_b16_e32 v0.l, v25.h
	v_mov_b16_e32 v0.h, v32.l
	v_and_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v25, v0, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v25, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v25, v25, v101
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v25, v25, v67, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v34, v25, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v34, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v34, v34, v71
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v71.h, 0x7fff, v30.h, s4
	v_cndmask_b16 v71.l, 0x7fff, v0.h, s5
	v_mov_b16_e32 v30.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v34, v34, v15, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v34, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v34, v35, v14, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v25, v107
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v34, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v34.h, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v34.l, 0x7fff, v31.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v60, v52, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v25.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v33, v106
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.h, v32.l
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v29, v29, v205 :: v_dual_and_b32 v30, 1, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	v_mov_b16_e32 v33.h, v32.l
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v33.l, v29.h
	v_add3_u32 v30, v25, v30, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v59, v53, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v31, 1, v31
	v_cmp_o_f32_e64 s4, v29, v29
	v_and_b32_e32 v33, 1, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v53, off, off offset:76
	scratch_load_b32 v52, off, off offset:124
	v_add3_u32 v31, v0, v31, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v25, v170
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v58, v54, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v29, v33, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v57, v24, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v57.h, 0x7fff, v30.h, vcc_lo
	v_mov_b16_e32 v35.l, v0.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v25, v165
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v0, v0
	v_mov_b16_e32 v30.h, v32.l
	v_cndmask_b16 v57.l, 0x7fff, v31.h, s1
	v_and_b32_e32 v35, 1, v35
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_mov_b16_e32 v31.h, v32.l
	v_cndmask_b16 v58.h, 0x7fff, v33.h, s4
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v35, v0, v35, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v29, v160
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v25.h
	v_mov_b16_e32 v29.h, v32.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_load_b32 v24, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v58.l, 0x7fff, v35.h, s5
	v_mov_b16_e32 v30.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	v_and_b32_e32 v29, 1, v29
	scratch_load_b32 v35, off, off offset:136 ; 4-byte Folded Reload
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v29, v25, v29, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v79, v173, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v0, v30, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v63, v128, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v59.h, 0x7fff, v29.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v25, v157
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v62, v171, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v59.l, 0x7fff, v30.h, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v148
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.h, v32.l
	v_mov_b16_e32 v30.l, v25.h
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v29, v147
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v0.h
	v_cmp_o_f32_e64 s1, v0, v0
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v29, v29
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v30, v25, v30, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v61, v241, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v31, v0, v31, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v60.h, 0x7fff, v30.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v25, v145
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.l, v29.h
	v_mov_b16_e32 v25.h, v32.l
	scratch_load_b32 v30, off, off offset:132 ; 4-byte Folded Reload
	v_cndmask_b16 v60.l, 0x7fff, v31.h, s1
	v_cmp_o_f32_e64 s5, v0, v0
	scratch_load_b32 v31, off, off offset:28 ; 4-byte Folded Reload
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v25, v29, v25, 0x7fff
	v_mov_b16_e32 v29.l, v0.h
	v_mov_b16_e32 v29.h, v32.l
	v_cndmask_b16 v61.h, 0x7fff, v25.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v29, v0, v29, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v61.l, 0x7fff, v29.h, s5
	v_mov_b16_e32 v29.h, v32.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v33, v33, v80
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, v33, v4, v35
	v_fma_f32 v4, v51, v4, v52
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v35, v33, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v35, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v52, v4, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v52, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v0, v0, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v0, v0, v5, v252
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v252, v0, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v35, v35, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v35, v35, v17, v0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v35, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v35, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v29, v0, v29, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v0, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v62.h, 0x7fff, v29.h, vcc_lo
	v_mov_b16_e32 v29.h, v32.l
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v0, v0, v7, v30
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v30, v0, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v30, off, off offset:292 ; 4-byte Folded Reload
	v_mul_f32_e32 v35, v35, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v35, v35, v16, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v35, s3
	scratch_load_b32 v35, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v33, v141
	scratch_load_b32 v33, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v25, v25
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v30, v30, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v30, v30, v6, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v31, v30, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v31, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v31, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v31, v31, v19, v0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v31, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v31, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v0, v0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v31, v49
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v31, v31, v18, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v31, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v25.h
	v_mov_b16_e32 v31.h, v32.l
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v31, v25, v31, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v30, v140
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v0.h
	v_mov_b16_e32 v30.h, v32.l
	v_cndmask_b16 v62.l, 0x7fff, v31.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s5, v25, v25
	scratch_load_b32 v31, off, off offset:16 ; 4-byte Folded Reload
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v30, v0, v30, 0x7fff
	v_mov_b16_e32 v0.l, v25.h
	v_mov_b16_e32 v0.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v63.h, 0x7fff, v30.h, s4
	v_and_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v25, v0, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v25, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v63.l, 0x7fff, v0.h, s5
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v25, v25, v80
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v25, v25, v65, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v33, v25, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v33, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v33, v80
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v33, v33, v64, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v35, v33, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v35, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v35, v35, v49
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v35, v35, v13, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v35, s3
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v35, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v25, v105
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v25.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v29, v25, v29, 0x7fff
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v25, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v35, v35, v49
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v35, v35, v12, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v35, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v33, v104
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:412
	scratch_load_b32 v30, off, off offset:276
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v25, v25, v80
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v25, v25, v67, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v31, v25, s2
	scratch_load_b32 v31, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v33, v33, v49 :: v_dual_mul_f32 v30, v30, v80
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, v30, v66, v31
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v31, v30, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v31, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v31, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v31, v31, v15, v25
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v31, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v31, v33, v14, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v33.h, 0x7fff, v29.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v25, v103
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v31, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v0.h
	v_mov_b16_e32 v31.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v25, v25
	v_and_b32_e32 v31, 1, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v31, v0, v31, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v30, v102
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v25.h
	v_mov_b16_e32 v30.h, v32.l
	v_cndmask_b16 v33.l, 0x7fff, v31.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v28.l, v0.h
	v_cmp_o_f32_e64 s5, v0, v0
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v30, v25, v30, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v242, v24, s3
	scratch_load_b32 v24, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v0, v28, 0x7fff
	v_cndmask_b16 v49.h, 0x7fff, v30.h, s4
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v25, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v49.l, 0x7fff, v28.h, s5
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v26, v193, v24, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v26, v153
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v24, off, off offset:96
	scratch_load_b32 v26, off, off offset:232
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v25, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v24, v26, v24, s3
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:92
	scratch_load_b32 v28, off, off offset:228
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v26, v28, v26, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e32 v28.h, v32.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v28, v0, v28, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v24, v151
	v_mul_f32_e32 v24, v26, v152
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v26.l, v25.h
	v_mov_b16_e32 v26.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v0, v0
	v_and_b32_e32 v26, 1, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v26, v25, v26, 0x7fff
	v_mov_b16_e32 v25.l, v0.h
	v_mov_b16_e32 v25.h, v32.l
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v25, v0, v25, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v41, v43, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v41.h, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v41.l, 0x7fff, v26.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v89, v56, s3
	v_cndmask_b32_e64 v28, v47, v55, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v24, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v29, 0xbfb8aa3b, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.h, 0x7fff, v25.h, s4
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v55, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v30, v28, v137
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v29.l, v24.h
	v_mov_b16_e32 v29.h, v32.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v29, v24, v29, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v24, v26, v138
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.l, 0x7fff, v29.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s1, v24, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v25, v25
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v150, v136, v135
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v26, v26, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v28.l, v24.h
	v_mov_b16_e32 v28.h, v32.l
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v83, v50, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 1, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v74, v75, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v42, v26, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v35, v24, v28, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v24, v25, v24
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, null, v36, v36, v0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v28, v25
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v82, v48, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, null, v37, v37, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v43, v24, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v40, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v25, v28, 1.0
	v_fmac_f32_e32 v28, v39, v28
	v_div_scale_f32 v39, vcc_lo, v0, v36, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v24, -v38, v40, 1.0
	v_mul_f32_e32 v26, v39, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v24, v40
	v_fma_f32 v24, -v25, v26, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v26, v24, v28
	v_div_scale_f32 v24, s4, v1, v37, v1
	v_fma_f32 v25, -v25, v26, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v39, v24, v40
	v_div_fmas_f32 v47, v25, v28, v26
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v25, -v38, v39, v24
	s_mov_b32 vcc_lo, s4
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v26, off, off offset:252
	scratch_load_b32 v28, off, off offset:256
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v42, v42
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v39, v25, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v25.l, v30.h
	v_mov_b16_e32 v25.h, v32.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v47, v36, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v24, -v38, v39, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v39, v24, v40, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_add3_u32 v38, v30, v38, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v30, 0xbfb8aa3b, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, v42.h
	v_mov_b16_e32 v40.h, v32.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v1, v39, v37, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v35.l, 0x7fff, v38.h, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v38, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v30
	v_mul_f32_e32 v30, 0xbfb8aa3b, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v40, v42, v40, 0x7fff
	v_cndmask_b16 v39.h, 0x7fff, v40.h, s4
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v55, v55, v27
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v26, s27, v26
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v48, 1, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[24:25], null, s27, 48, v[26:27]
	v_add3_u32 v25, s33, s26, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v48, 0, 0x42800000, s1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v29, s27, 4, v26
	v_lshl_add_u32 v28, s27, 5, v26
	s_mov_b32 s27, 0x31027000
	v_add_nc_u32_e32 v30, 0x80, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v50
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v26, v25, v26, 1
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v38, v38, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.l, v43.h
	v_mov_b16_e32 v48.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v5, v38, v5, v53
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v53, v5, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v53, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v3
	v_ldexp_f32 v42, v42, v51
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v48, v43, v48, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v43, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v38, v38
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v39.l, 0x7fff, v48.h, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v48, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v36, null, v42, v42, v50
	v_div_scale_f32 v47, vcc_lo, v50, v42, v50
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v53, v53, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v16, v53, v16, v4
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v53, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v52, v52, v27 :: v_dual_mul_f32 v43, v43, v32
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v16, s3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v17, v52, v17, v5
	scratch_load_b32 v52, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v1, v4, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.h, v32.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v17, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v38, v51
	scratch_load_b32 v51, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v48, v48, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.h, v32.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v5, v0
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v16, 1.0, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v5, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v4.l, v0.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, null, v16, v16, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v38
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v37, v17
	v_fma_f32 v40, -v36, v5, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v1, v38, 0x7fff
	v_add3_u32 v4, v0, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v5, v40, v5
	v_fma_f32 v40, -v17, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v40, v37
	v_div_scale_f32 v40, s1, v3, v16, v3
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v7, v43, v7, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v43, v47, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v51, v7, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v36, v43, v47
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v19, v55, v19, v7
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v43, v51, v5
	scratch_load_b32 v51, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v6, v48, v6, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v48, v40, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v19, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v36, v43, v47
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v47, off, off offset:980 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v52, v6, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v54, -v17, v48, v40
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v52, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v5, v36, v5, v43
	s_mov_b32 vcc_lo, s1
	scratch_load_b32 v19, off, off offset:4 ; 4-byte Folded Reload
	v_fmac_f32_e32 v48, v54, v37
	v_div_fixup_f32 v5, v5, v42, v50
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v42, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v17, -v17, v48, v40
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v7, v5
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v17, v17, v37, v48
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:384
	scratch_load_b32 v36, off, off offset:300
	v_mul_f32_e32 v53, v53, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v3, v17, v16, v3
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v17, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v5.h
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v18, v53, v18, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v18, s3
	scratch_load_b32 v18, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v3, v6, v3 :: v_dual_mul_f32 v52, v52, v32
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v9, v52, v9, v51
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v42, v42, v27
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v51, v9, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v37, v37, v27 :: v_dual_mul_f32 v36, v36, v32
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v17, v17, v32
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v8, v36, v8, v18
	scratch_load_b32 v36, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v18, v8, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v8, off, off offset:996 ; 4-byte Folded Reload
	v_mul_f32_e32 v47, v47, v27
	scratch_load_b32 v18, off, off          ; 4-byte Folded Reload
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v21, v47, v21, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v9, v21, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v0, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v0.h, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_mov_b16_e32 v4.h, v32.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v0.l, 0x7fff, v38.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v4, 1, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v4, v5, v4, 0x7fff
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v8, v8, v27
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(0)
	v_fma_f32 v10, v17, v10, v18
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v17, off, off offset:1004 ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fma_f32 v6, v8, v20, v7
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.l, v3.h
	v_mov_b16_e32 v8.h, v32.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v18, v10, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v18, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v7, v6, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v1, 1, v8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v8, v16
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	scratch_load_b32 v16, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v7, 0xbfb8aa3b, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v1, v3, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v5, v5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v7, v8, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s1
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v5, 1.0, v7
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v17, v17, v27 :: v_dual_mul_f32 v16, v16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v11, v16, v11, v19
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v19, v11, s2
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:976
	scratch_load_b32 v19, off, off offset:220
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v6
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v18, v18, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v16, v16
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v11, v11, v27
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fma_f32 v7, v11, v23, v8
	v_fma_f32 v11, v17, v22, v10
	scratch_load_b32 v22, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, null, v5, v5, v9
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v19, v19, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v8, v7, s3
	v_cndmask_b32_e64 v8, v10, v11, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v10, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v20, 0xbfb8aa3b, v7 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v8
	v_ldexp_f32 v11, v16, v11
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v16, v19, v64, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v19, -v17, v10, 1.0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v36, v16, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0x42800000, s4
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v10, v19, v10
	v_div_scale_f32 v19, null, v11, v11, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v7 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v8
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v23, v19
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	v_fma_f32 v12, v42, v12, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v21, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v16, v12, s3
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v19, v23, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v20, v20, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v21, v21, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, s4, v6, v11, v6
	v_dual_fmac_f32 v23, v47, v23 :: v_dual_add_f32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v20, v20, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_scale_f32 v42, null, v21, v21, v8
	.loc	1 336 17 is_stmt 1              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v18, v18, v65, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v22, v18, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v22, s5, v9, v5, v9
	s_mov_b32 vcc_lo, s5
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v13, v37, v13, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v36, v22, v10
	v_rcp_f32_e32 v37, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v18, v13, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v43, -v17, v36, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v43, v10
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v17, -v17, v36, v22
	v_mul_f32_e32 v22, v38, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v10, v17, v10, v36
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v16, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v19, v22, v38
	v_div_fixup_f32 v5, v10, v5, v9
	v_fma_f32 v9, -v40, v37, 1.0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v10, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v43, v16, v43
	v_div_scale_f32 v16, s5, v8, v21, v8
	v_fmac_f32_e32 v22, v17, v23
	v_fmac_f32_e32 v37, v9, v37
	v_div_scale_f32 v9, s1, v7, v20, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v36, v16, v43 :: v_dual_mul_f32 v5, v13, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v13, v96, v100, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v18, -v19, v22, v38
	v_mul_f32_e32 v19, v9, v37
	scratch_load_b32 v38, off, off offset:104 ; 4-byte Folded Reload
	v_div_fmas_f32 v18, v18, v23, v22
	v_fma_f32 v22, -v40, v19, v9
	v_fma_f32 v23, -v42, v36, v16
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v5, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v6, v18, v11, v6
	v_fmac_f32_e32 v19, v22, v37
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:352
	scratch_load_b32 v17, off, off offset:212
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v36, v23, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v23, v59, v61, s0
	v_cndmask_b32_e64 v18, v57, v34, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v9, -v40, v19, v9
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v12, v6
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.h, v32.l
	v_mov_b32_e32 v40, 0x7632
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v9, v9, v37, v19
	s_mov_b32 vcc_lo, s5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v37, v39, v31, s0
	v_cndmask_b32_e64 v31, v31, v39, s0
	v_cndmask_b32_e64 v19, v34, v57, s0
	v_cndmask_b32_e64 v34, v63, v49, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v9, v20, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v6.h
	v_mov_b16_e32 v9.h, v32.l
	v_cndmask_b32_e64 v20, v60, v58, s0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v10, v10, v32 :: v_dual_and_b32 v9, 1, v9
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v10, v10, v67, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v38, v10, s2
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v38, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v22, v22, v27 :: v_dual_mul_f32 v17, v17, v32
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fma_f32 v17, v17, v66, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v247, v17, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v6, v6
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v38, v38, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v27, v33, v62, s0
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fma_f32 v11, v38, v14, v17
	v_fma_f32 v14, v22, v15, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v15, -v42, v36, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v16, v71, v91, s0
	v_cndmask_b32_e64 v22, v61, v59, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v17, v11, s3
	v_cndmask_b32_e64 v10, v10, v14, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v15, v15, v43, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_add3_u32 v3, v6, v9, 0x7fff
	v_cndmask_b32_e64 v17, v91, v71, s0
	v_cndmask_b32_e64 v36, v35, v41, s0
	v_cndmask_b32_e64 v35, v41, v35, s0
	v_cndmask_b32_e64 v14, v90, v97, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v8, v15, v21, v8
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v10, v7
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v5.h
	v_mov_b16_e32 v10.h, v32.l
	v_cndmask_b16 v4.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s2
	v_cndmask_b32_e64 v15, v97, v90, s0
	v_cndmask_b32_e64 v21, v58, v60, s0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v11, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v7.h
	v_mov_b16_e32 v11.h, v32.l
	v_and_b32_e32 v10, 1, v10
	v_cmp_o_f32_e64 s3, v7, v7
	v_cndmask_b32_e64 v32, v62, v33, s0
	v_cndmask_b32_e64 v33, v49, v63, s0
	v_mov_b16_e32 v12.l, v8.h
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v10, v5, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v8, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v9, 1, v12
	v_add3_u32 v6, v7, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v1.h, 0x7fff, v10.h, s1
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v11, v95, v2, s0
	v_cndmask_b32_e64 v2, v2, v95, s0
	v_cndmask_b32_e64 v10, v99, v94, s0
	v_cndmask_b32_e64 v7, v98, v45, s0
	v_cndmask_b32_e64 v12, v100, v96, s0
	v_permlanex16_b32 v13, v13, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v15, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v17, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v21, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v19, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v31, s1, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v5, v8, v9, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v6.h, s3
	v_cndmask_b32_e64 v6, v44, v46, s0
	v_cndmask_b32_e64 v38, v1, v0, s0
	v_cndmask_b32_e64 v0, v0, v1, s0
	v_mov_b32_e32 v1, 0x5410
	v_cndmask_b32_e64 v8, v45, v98, s0
	v_cndmask_b32_e64 v9, v94, v99, s0
	v_permlanex16_b32 v10, v10, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s4
	v_cndmask_b32_e64 v1, 0x1054, v1, s0
	v_cndmask_b32_e64 v5, v46, v44, s0
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v39, v3, v4, s0
	v_cndmask_b32_e64 v3, v4, v3, s0
	v_permlanex16_b32 v4, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v6, 0x3276, v40, s0
	v_permlanex16_b32 v40, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v1, v1, 8, v1
	v_permlanex16_b32 v45, v3, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v2, v6, 8, v6
	v_and_b32_e32 v1, 0x540054, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v2, 0x760076, v2
	v_lshl_or_b32 v1, v1, 4, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 4, v2
	v_and_b32_e32 v41, 0x5040504, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v42, 0x7060706, v2
	v_perm_b32 v0, v4, v5, v41
	v_perm_b32 v2, v8, v7, v41
	v_perm_b32 v6, v40, v11, v41
	v_perm_b32 v31, v35, v36, v41
	v_perm_b32 v1, v4, v5, v42
	v_perm_b32 v3, v8, v7, v42
	v_perm_b32 v4, v10, v9, v41
	v_perm_b32 v5, v10, v9, v42
	v_perm_b32 v7, v40, v11, v42
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
	s_clause 0x2
	buffer_store_b128 v[0:3], v26, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v26, s[24:27], 0 offen offset:256
	buffer_store_b128 v[8:11], v27, s[24:27], 0 offen
	v_add_lshl_u32 v0, v30, v29, 1
	v_perm_b32 v18, v23, v22, v41
	v_perm_b32 v19, v23, v22, v42
	v_add_lshl_u32 v1, v25, v28, 1
	v_perm_b32 v22, v34, v33, v41
	v_perm_b32 v23, v34, v33, v42
	v_add_lshl_u32 v2, v30, v28, 1
	v_perm_b32 v32, v35, v36, v42
	v_perm_b32 v33, v43, v37, v41
	v_perm_b32 v34, v43, v37, v42
	v_add_lshl_u32 v3, v25, v24, 1
	v_perm_b32 v35, v44, v38, v41
	v_perm_b32 v36, v44, v38, v42
	v_perm_b32 v37, v45, v39, v41
	v_perm_b32 v38, v45, v39, v42
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1020
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
		.amdhsa_next_free_sgpr 54
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 54
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 1020
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 37136
; TotalNumSgprs: 56
; NumVgprs: 256
; ScratchSize: 1020
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 56
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 1020
    .sgpr_count:     56
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn256_bk32_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 343
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
