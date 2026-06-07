	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v155, 2, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v153, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v154, 3, v0
	v_or_b32_e32 v158, 0x3f0, v0
	v_or_b32_e32 v159, 0x7f0, v0
	s_mov_b32 s51, 0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v238, 15, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v156, 32, v154
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s26, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v3, s26, v155
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
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
	s_lshl_b32 s7, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s8, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 295 20 is_stmt 0              ; generate_amdgcn.py:295:20
	s_min_i32 s6, s6, 4
	.loc	1 296 29 is_stmt 1              ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s16, s6
	s_abs_i32 s5, s2
	s_cvt_f32_u32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v153
	s_mov_b32 s11, 0x31027000
	s_mov_b64 s[28:29], s[14:15]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s39, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s16
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s10, s17
	s_xor_b32 s17, s2, s6
	s_add_i32 s4, s10, s4
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s4, s5, s4
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s4, s16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s38, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s5, s5, s18
	s_add_i32 s18, s4, 1
	s_sub_i32 s19, s5, s16
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s18, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s16
	s_cselect_b32 s4, s18, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s30, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s31, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s17
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s30, v155
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s17, s3, s6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s4, s16, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s4, s4, 26
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s7
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s35, s27, 1
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s3, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s16, s4
.Ltmp19:
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v4
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s2, 5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s16, 63
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s30, v154
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v6, s30, v156
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v152, 3, v0
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s31, v5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s5, s35, s30
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v6
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 24, v152
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s7, s33, s5
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s5, s3, s2
	s_and_b32 s4, s4, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[33:34], null, s35, v154, v[1:2]
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v34, v3, v2, s34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0x7f
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s18, s26, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s44, s30, 64
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v3, s18, v34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v157, s27, 6, v33
	v_add_nc_u32_e32 v1, s7, v33
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v6, s44, v155
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s19, s27, 7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v7, s44, v154
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s7, v157
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v4, 0x80000000, v1, s5
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v1, s27, v1
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v8, s44, v156
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s7, s7, s19
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s4
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s27, v2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_lshl_b32 s17, s26, 6
	.loc	1 346 22 is_stmt 0              ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 343 23 is_stmt 1              ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v10, s7, v33
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v9, s18, s17, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v4, s[36:39], 0 offen
	buffer_load_b128 v[17:20], v5, s[36:39], 0 offen
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s5
	v_cndmask_b32_e64 v4, 0x80000000, v2, s4
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v7
	v_cmp_gt_i32_e64 s5, s31, v8
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v11, s7, v157
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v5, s27, v10
	v_add3_u32 v12, s7, s27, v157
	.loc	1 358 31 is_stmt 0              ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[21:24], v1, s[36:39], 0 offen
	buffer_load_b128 v[25:28], v4, s[36:39], 0 offen
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v1, 0x80000000, v9, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s3
	s_and_b32 s4, s5, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v4, 0x80000000, v10, vcc_lo
	v_cndmask_b32_e64 v6, 0x80000000, v11, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	v_cndmask_b32_e64 v7, 0x80000000, v12, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_clause 0x1
	buffer_load_b64 v[2:3], v3, s[8:11], 0 offen
	buffer_load_b64 v[47:48], v1, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[29:32], v4, s[36:39], 0 offen
	buffer_load_b128 v[35:38], v6, s[36:39], 0 offen
	buffer_load_b128 v[39:42], v5, s[36:39], 0 offen
	buffer_load_b128 v[43:46], v7, s[36:39], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 1, v0
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v49, 0, v152
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v12, 16, v238
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0xbf
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, v49, v152
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(5)
	ds_store_b64 v49, v[2:3] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v50, v[13:16]
	ds_store_b128 v50, v[17:20] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v50, v[21:24] offset:16384
	ds_store_b128 v50, v[25:28] offset:20480
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v7, v4, 1, v1
	v_or_b32_e32 v160, v1, v238
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v49, v[47:48] offset:34816
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v50, v[29:32] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v50, v[35:38] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v50, v[39:42] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v50, v[43:46] offset:28672
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v8, 2, v7
	v_or_b32_e32 v9, 4, v7
	v_or_b32_e32 v10, 6, v7
	v_or_b32_e32 v11, 8, v7
	v_or_b32_e32 v4, 10, v7
	v_or_b32_e32 v5, 12, v7
	v_or_b32_e32 v6, 14, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v1, v1, v238
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v3, 0x3f0, v0
	v_or_b32_e32 v2, 0x7f0, v0
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v13, 0x80, v1
	v_or_b32_e32 v0, 0x400, v1
	v_or_b32_e32 v161, 0x380, v1
	v_or_b32_e32 v163, 0x480, v1
	v_or_b32_e32 v151, 0x580, v1
	scratch_store_b32 off, v13, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x100, v1
	v_or_b32_e32 v222, 0x600, v1
	v_or_b32_e32 v223, 0x680, v1
	v_or_b32_e32 v224, 0x700, v1
	v_or_b32_e32 v225, 0x780, v1
	scratch_store_b32 off, v13, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x180, v1
	v_or_b32_e32 v226, 0x800, v1
	v_or_b32_e32 v227, 0x880, v1
	v_or_b32_e32 v171, 0x900, v1
	v_or_b32_e32 v169, 0x980, v1
	scratch_store_b32 off, v13, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x200, v1
	v_or_b32_e32 v230, 0xa00, v1
	v_or_b32_e32 v231, 0xa80, v1
	v_or_b32_e32 v232, 0xb00, v1
	v_or_b32_e32 v233, 0xb80, v1
	scratch_store_b32 off, v13, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x280, v1
	v_or_b32_e32 v234, 0xc00, v1
	v_or_b32_e32 v235, 0xc80, v1
	v_or_b32_e32 v236, 0xd00, v1
	v_or_b32_e32 v237, 0xd80, v1
	scratch_store_b32 off, v13, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x300, v1
	v_or_b32_e32 v170, 0xe80, v1
	v_or_b32_e32 v166, 0xf00, v1
	v_or_b32_e32 v167, 0xf80, v1
	v_or_b32_e32 v242, 0x1000, v1
	scratch_store_b32 off, v13, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x500, v1
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v1
	v_or_b32_e32 v243, 0x1080, v1
	v_or_b32_e32 v168, 0x1100, v1
	scratch_store_b32 off, v13, off         ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1700, v1
	v_or_b32_e32 v165, 0x1180, v1
	v_or_b32_e32 v246, 0x1200, v1
	v_or_b32_e32 v247, 0x1280, v1
	v_or_b32_e32 v248, 0x1300, v1
	scratch_store_b32 off, v13, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1780, v1
	v_or_b32_e32 v249, 0x1380, v1
	v_or_b32_e32 v250, 0x1400, v1
	v_or_b32_e32 v251, 0x1480, v1
	v_or_b32_e32 v252, 0x1500, v1
	scratch_store_b32 off, v13, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1800, v1
	v_or_b32_e32 v253, 0x1580, v1
	v_or_b32_e32 v254, 0x1600, v1
	v_or_b32_e32 v255, 0x1680, v1
	scratch_store_b32 off, v13, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1880, v1
	scratch_store_b32 off, v13, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1900, v1
	scratch_store_b32 off, v13, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1980, v1
	scratch_store_b32 off, v13, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1a00, v1
	scratch_store_b32 off, v13, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1a80, v1
	scratch_store_b32 off, v13, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1b00, v1
	scratch_store_b32 off, v13, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1b80, v1
	scratch_store_b32 off, v13, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1c00, v1
	scratch_store_b32 off, v13, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1c80, v1
	scratch_store_b32 off, v13, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1d00, v1
	scratch_store_b32 off, v13, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1d80, v1
	scratch_store_b32 off, v13, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1e00, v1
	scratch_store_b32 off, v13, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1e80, v1
	scratch_store_b32 off, v13, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1f00, v1
	scratch_store_b32 off, v13, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v13, 0x1f80, v1
	scratch_store_b32 off, v13, off offset:80 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr0
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr161
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr163
                                        ; implicit-def: $vgpr151
                                        ; implicit-def: $vgpr222
                                        ; implicit-def: $vgpr223
                                        ; implicit-def: $vgpr224
                                        ; implicit-def: $vgpr225
                                        ; implicit-def: $vgpr226
                                        ; implicit-def: $vgpr227
                                        ; implicit-def: $vgpr171
                                        ; implicit-def: $vgpr169
                                        ; implicit-def: $vgpr230
                                        ; implicit-def: $vgpr231
                                        ; implicit-def: $vgpr232
                                        ; implicit-def: $vgpr233
                                        ; implicit-def: $vgpr234
                                        ; implicit-def: $vgpr235
                                        ; implicit-def: $vgpr236
                                        ; implicit-def: $vgpr237
                                        ; implicit-def: $vgpr0
                                        ; implicit-def: $vgpr170
                                        ; implicit-def: $vgpr166
                                        ; implicit-def: $vgpr167
                                        ; implicit-def: $vgpr242
                                        ; implicit-def: $vgpr243
                                        ; implicit-def: $vgpr168
                                        ; implicit-def: $vgpr165
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
                                        ; implicit-def: $vgpr13
                                        ; kill: killed $vgpr13
.LBB0_3:                                ; %Flow291
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v13, s34, v238
	v_or_b32_e32 v12, s34, v12
	s_ashr_i32 s45, s6, 6
	v_or_b32_e32 v86, s33, v7
	v_or_b32_e32 v85, s33, v8
	v_mul_lo_u32 v87, v13, s45
	v_mul_lo_u32 v88, v12, s45
	v_or_b32_e32 v84, s33, v9
	v_or_b32_e32 v83, s33, v10
	v_or_b32_e32 v51, s33, v11
	v_or_b32_e32 v52, s33, v4
	v_or_b32_e32 v53, s33, v5
	v_or_b32_e32 v54, s33, v6
	v_add_nc_u32_e32 v82, s27, v7
	v_add_nc_u32_e32 v81, s27, v8
	v_add_nc_u32_e32 v80, s27, v9
	v_add_nc_u32_e32 v78, s27, v10
	v_add_nc_u32_e32 v77, s27, v11
	v_add_nc_u32_e32 v79, s27, v4
	v_add_nc_u32_e32 v49, s27, v5
	v_add_nc_u32_e32 v50, s27, v6
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_or_b32_e32 v1, 0x80, v160
	v_or_b32_e32 v0, 0x400, v160
	v_or_b32_e32 v161, 0x380, v160
	v_or_b32_e32 v163, 0x480, v160
	v_or_b32_e32 v151, 0x580, v160
	scratch_store_b32 off, v1, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x100, v160
	v_or_b32_e32 v222, 0x600, v160
	v_or_b32_e32 v223, 0x680, v160
	v_or_b32_e32 v224, 0x700, v160
	v_or_b32_e32 v225, 0x780, v160
	scratch_store_b32 off, v1, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x180, v160
	v_or_b32_e32 v226, 0x800, v160
	v_or_b32_e32 v227, 0x880, v160
	v_or_b32_e32 v171, 0x900, v160
	v_or_b32_e32 v169, 0x980, v160
	scratch_store_b32 off, v1, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x200, v160
	v_or_b32_e32 v230, 0xa00, v160
	v_or_b32_e32 v231, 0xa80, v160
	v_or_b32_e32 v232, 0xb00, v160
	v_or_b32_e32 v233, 0xb80, v160
	scratch_store_b32 off, v1, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x280, v160
	v_or_b32_e32 v234, 0xc00, v160
	v_or_b32_e32 v235, 0xc80, v160
	v_or_b32_e32 v236, 0xd00, v160
	v_or_b32_e32 v237, 0xd80, v160
	scratch_store_b32 off, v1, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x300, v160
	v_or_b32_e32 v170, 0xe80, v160
	v_or_b32_e32 v166, 0xf00, v160
	v_or_b32_e32 v167, 0xf80, v160
	v_or_b32_e32 v242, 0x1000, v160
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x500, v160
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v160
	v_or_b32_e32 v243, 0x1080, v160
	v_or_b32_e32 v168, 0x1100, v160
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1700, v160
	v_or_b32_e32 v165, 0x1180, v160
	v_or_b32_e32 v246, 0x1200, v160
	v_or_b32_e32 v247, 0x1280, v160
	v_or_b32_e32 v248, 0x1300, v160
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1780, v160
	v_or_b32_e32 v249, 0x1380, v160
	v_or_b32_e32 v250, 0x1400, v160
	v_or_b32_e32 v251, 0x1480, v160
	v_or_b32_e32 v252, 0x1500, v160
	scratch_store_b32 off, v1, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1800, v160
	v_or_b32_e32 v253, 0x1580, v160
	v_or_b32_e32 v254, 0x1600, v160
	v_or_b32_e32 v255, 0x1680, v160
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v70, 0
	scratch_store_b32 off, v1, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1880, v160
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1900, v160
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1980, v160
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1a00, v160
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1a80, v160
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1b00, v160
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1b80, v160
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1c00, v160
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1c80, v160
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s15, s45, 3
	s_mov_b32 s16, 0
	s_add_i32 s14, s44, 64
	s_and_b32 s5, s13, 0xffff
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1d00, v160
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_add_i32 s0, 0, 0x8000
	scratch_store_b32 off, v1, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1d80, v160
	s_add_i32 s48, 0, 0x8800
	s_add_i32 s47, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s46, 0, 0x6000
	scratch_store_b32 off, v1, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1e00, v160
	s_add_i32 s15, s15, -3
	s_mov_b32 s49, 1
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	scratch_store_b32 off, v1, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1e80, v160
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	scratch_store_b32 off, v1, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1f00, v160
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s42, s6
	scratch_store_b32 off, v1, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x1f80, v160
	s_mov_b32 s43, s7
	s_mov_b32 s51, s16
	s_mov_b32 s50, s16
	scratch_store_b32 off, v1, off offset:80 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s53, s50, 6
	s_mov_b32 s52, s0
	s_mov_b32 s0, s30
	s_mov_b32 s30, s44
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s44, s14, s53
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v76, s52, v238
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s44, v155
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[1:2], null, s44, s26, v[34:35]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v89, s51, v160
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v90, s1, v160
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s0, 31
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s51, s44, s35
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 26
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s51, s51, s33
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s1, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s53, s1, 6
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b64 v[35:36], v1, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v76 offset:416
	ds_load_u8 v2, v76 offset:384
	ds_load_u8 v3, v76 offset:480
	ds_load_u8 v4, v76 offset:448
	ds_load_u8 v5, v76 offset:288
	ds_load_u8 v6, v76 offset:256
	ds_load_u8 v7, v76 offset:352
	ds_load_u8 v8, v76 offset:320
	ds_load_u8 v9, v76 offset:160
	ds_load_u8 v10, v76 offset:128
	ds_load_u8 v11, v76 offset:224
	ds_load_u8 v12, v76 offset:192
	ds_load_u8 v13, v76 offset:96
	ds_load_u8 v14, v76 offset:64
	ds_load_u8 v15, v76
	ds_load_u8 v16, v76 offset:16
	ds_load_u8 v17, v76 offset:32
	ds_load_u8 v18, v76 offset:48
	ds_load_u8 v19, v89 offset:1664
	ds_load_u8 v20, v89 offset:1536
	ds_load_u8 v21, v89 offset:1920
	ds_load_u8 v22, v89 offset:1792
	ds_load_u8 v23, v89 offset:1152
	ds_load_u8 v24, v89 offset:1024
	ds_load_u8 v25, v89 offset:1408
	ds_load_u8 v26, v89 offset:1280
	ds_load_u8 v27, v89 offset:640
	ds_load_u8 v28, v89 offset:512
	ds_load_u8 v29, v89 offset:896
	ds_load_u8 v30, v89 offset:768
	ds_load_u8 v31, v89 offset:128
	ds_load_u8 v32, v89
	ds_load_u8 v91, v89 offset:384
	ds_load_u8 v92, v89 offset:256
	ds_load_u8 v93, v76 offset:432
	ds_load_u8 v94, v76 offset:400
	ds_load_u8 v95, v76 offset:496
	ds_load_u8 v96, v76 offset:464
	ds_load_u8 v97, v76 offset:304
	ds_load_u8 v98, v76 offset:272
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v76 offset:368
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v76 offset:336
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v76 offset:176
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v76 offset:240
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v76 offset:208
	ds_load_u8 v8, v76 offset:144
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v76 offset:112
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v15, v15, v17, 0xc0c0004
	ds_load_u8 v17, v76 offset:80
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v20, v90 offset:1664
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v24, v90 offset:1920
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v99, v26, v25, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v90 offset:1792
	ds_load_u8 v22, v90 offset:1536
	ds_load_u8 v26, v90 offset:1152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v100, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v30, v32, v31, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v28, v90 offset:1408
	ds_load_u8 v32, v90 offset:1280
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v31, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v101, v94, v93, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v91, v90 offset:640
	ds_load_u8 v93, v90 offset:896
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v104, v4, v2, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v90 offset:768
	ds_load_u8 v92, v90 offset:512
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v102, v96, v95, 0xc0c0004
	v_perm_b32 v103, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v6, v8, v6, 0xc0c0004
	v_perm_b32 v8, v12, v10, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v12, v17, v14, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v14, v90 offset:384
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v16, v16, v18, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v18, v22, v20, 0xc0c0004
	v_perm_b32 v20, v25, v24, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v25, v13, 16, v15
	v_lshl_or_b32 v102, v102, 16, v101
	v_lshl_or_b32 v101, v104, 16, v103
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v24, v32, v28, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v28, v3, 16, v1
	v_lshl_or_b32 v3, v99, 16, v23
	v_lshl_or_b32 v1, v31, 16, v30
	v_lshl_or_b32 v99, v12, 16, v16
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v106, v20, 16, v18
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v107, v2, v93, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v32, v92, v91, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v98, s23 :: v_dual_mov_b32 v95, s20
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v27, v90 offset:1024
	ds_load_u8 v4, v90 offset:128
	ds_load_u8 v17, v90 offset:256
	ds_load_u8 v10, v90
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v97, s22 :: v_dual_mov_b32 v96, s21
	v_dual_mov_b32 v93, s18 :: v_dual_mov_b32 v94, s19
	v_dual_mov_b32 v91, s16 :: v_dual_mov_b32 v92, s17
	v_lshl_or_b32 v2, v29, 16, v100
	v_lshl_or_b32 v100, v8, 16, v6
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v104, v107, 16, v32
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v22, v27, v26, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v27, v7, 16, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v14, v17, v14, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v4, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v26, v11, 16, v9
	v_lshl_or_b32 v4, v21, 16, v19
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v105, v24, 16, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v103, v14, 16, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[1:4], v[25:28], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[1:4], v[99:102], v[91:98] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[103:106], v[25:28], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[103:106], v[99:102], v[91:98] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v91, v76 offset:928
	ds_load_u8 v92, v76 offset:896
	ds_load_u8 v93, v76 offset:992
	ds_load_u8 v94, v76 offset:960
	ds_load_u8 v95, v76 offset:800
	ds_load_u8 v96, v76 offset:768
	ds_load_u8 v97, v76 offset:864
	ds_load_u8 v98, v76 offset:832
	ds_load_u8 v99, v76 offset:640
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v76 offset:672
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v96, v98, v97, 0xc0c0004
	v_lshl_or_b32 v94, v93, 16, v91
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v93, v96, 16, v95
	ds_load_u8 v91, v76 offset:736
	ds_load_u8 v95, v76 offset:704
	ds_load_u8 v96, v76 offset:544
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v92, v99, v92, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v91, v95, v91, 0xc0c0004
	ds_load_u8 v95, v76 offset:512
	v_lshl_or_b32 v92, v91, 16, v92
	ds_load_u8 v91, v76 offset:608
	ds_load_u8 v97, v76 offset:576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v95, v95, v96, 0xc0c0004
	ds_load_u8 v96, v89 offset:3712
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v91, v97, v91, 0xc0c0004
	ds_load_u8 v97, v89 offset:3584
	v_lshl_or_b32 v91, v91, 16, v95
	ds_load_u8 v95, v89 offset:3968
	ds_load_u8 v98, v89 offset:3840
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v89 offset:3200
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v95, v98, v95, 0xc0c0004
	ds_load_u8 v98, v89 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v89 offset:3456
	ds_load_u8 v99, v89 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v99, v98, 0xc0c0004
	v_lshl_or_b32 v98, v95, 16, v96
	ds_load_u8 v95, v89 offset:2688
	ds_load_u8 v96, v89 offset:2560
	v_lshl_or_b32 v97, v99, 16, v97
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v89 offset:2944
	ds_load_u8 v99, v89 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v99, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v96, 16, v95
	ds_load_u8 v95, v89 offset:2176
	ds_load_u8 v99, v89 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v99, v95, 0xc0c0004
	ds_load_u8 v99, v89 offset:2432
	ds_load_u8 v100, v89 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v99, 16, v95
	ds_load_u8 v99, v76 offset:944
	ds_load_u8 v100, v76 offset:912
	v_wmma_i32_16x16x16_iu8 v[9:16], v[95:98], v[91:94], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v100, s52, v158
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v100, v100
	ds_load_u8 v101, v76 offset:976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v76 offset:816
	ds_load_u8 v102, v76 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v76 offset:880
	ds_load_u8 v103, v76 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v103, v102, 0xc0c0004
	v_lshl_or_b32 v102, v100, 16, v99
	ds_load_u8 v99, v76 offset:688
	ds_load_u8 v100, v76 offset:656
	v_lshl_or_b32 v101, v103, 16, v101
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v76 offset:752
	ds_load_u8 v103, v76 offset:720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v103, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v100, 16, v99
	ds_load_u8 v99, v76 offset:560
	ds_load_u8 v103, v76 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v103, v99, 0xc0c0004
	ds_load_u8 v103, v76 offset:624
	ds_load_u8 v104, v76 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v99, v103, 16, v99
	v_wmma_i32_16x16x16_iu8 v[17:24], v[95:98], v[99:102], v[17:24] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v95, v90 offset:3712
	ds_load_u8 v96, v90 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v90 offset:3968
	ds_load_u8 v97, v90 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v90 offset:3200
	ds_load_u8 v98, v90 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v90 offset:3456
	ds_load_u8 v103, v90 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v103, v98, 0xc0c0004
	v_lshl_or_b32 v98, v96, 16, v95
	ds_load_u8 v95, v90 offset:2688
	ds_load_u8 v96, v90 offset:2560
	v_lshl_or_b32 v97, v103, 16, v97
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v90 offset:2944
	ds_load_u8 v103, v90 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v103, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v96, 16, v95
	ds_load_u8 v95, v90 offset:2176
	ds_load_u8 v103, v90 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v103, v95, 0xc0c0004
	ds_load_u8 v103, v90 offset:2432
	ds_load_u8 v104, v90 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v95, v103, 16, v95
	v_wmma_i32_16x16x16_iu8 v[1:8], v[95:98], v[91:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[95:98], v[99:102], v[25:32] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v91, v76 offset:1440
	ds_load_u8 v92, v76 offset:1408
	ds_load_u8 v93, v76 offset:1504
	ds_load_u8 v94, v76 offset:1472
	ds_load_u8 v95, v76 offset:1312
	ds_load_u8 v96, v76 offset:1280
	ds_load_u8 v97, v76 offset:1376
	ds_load_u8 v98, v76 offset:1344
	ds_load_u8 v99, v76 offset:1152
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v76 offset:1184
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v96, v98, v97, 0xc0c0004
	v_lshl_or_b32 v94, v93, 16, v91
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v93, v96, 16, v95
	ds_load_u8 v91, v76 offset:1248
	ds_load_u8 v95, v76 offset:1216
	ds_load_u8 v96, v76 offset:1056
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v92, v99, v92, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v91, v95, v91, 0xc0c0004
	ds_load_u8 v95, v76 offset:1024
	v_lshl_or_b32 v92, v91, 16, v92
	ds_load_u8 v91, v76 offset:1120
	ds_load_u8 v97, v76 offset:1088
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v95, v95, v96, 0xc0c0004
	ds_load_u8 v96, v89 offset:5760
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v91, v97, v91, 0xc0c0004
	ds_load_u8 v97, v89 offset:5632
	v_lshl_or_b32 v91, v91, 16, v95
	ds_load_u8 v95, v89 offset:6016
	ds_load_u8 v98, v89 offset:5888
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v89 offset:5248
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v95, v98, v95, 0xc0c0004
	ds_load_u8 v98, v89 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v89 offset:5504
	ds_load_u8 v99, v89 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v99, v98, 0xc0c0004
	v_lshl_or_b32 v98, v95, 16, v96
	ds_load_u8 v95, v89 offset:4736
	ds_load_u8 v96, v89 offset:4608
	v_lshl_or_b32 v97, v99, 16, v97
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v89 offset:4992
	ds_load_u8 v99, v89 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v99, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v96, 16, v95
	ds_load_u8 v95, v89 offset:4224
	ds_load_u8 v99, v89 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v99, v95, 0xc0c0004
	ds_load_u8 v99, v89 offset:4480
	ds_load_u8 v100, v89 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v99, 16, v95
	ds_load_u8 v99, v76 offset:1456
	ds_load_u8 v100, v76 offset:1424
	v_wmma_i32_16x16x16_iu8 v[9:16], v[95:98], v[91:94], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v76 offset:1520
	ds_load_u8 v101, v76 offset:1488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v76 offset:1328
	ds_load_u8 v102, v76 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v76 offset:1392
	ds_load_u8 v103, v76 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v103, v102, 0xc0c0004
	v_lshl_or_b32 v102, v100, 16, v99
	ds_load_u8 v99, v76 offset:1200
	ds_load_u8 v100, v76 offset:1168
	v_lshl_or_b32 v101, v103, 16, v101
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v76 offset:1264
	ds_load_u8 v103, v76 offset:1232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v103, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v100, 16, v99
	ds_load_u8 v99, v76 offset:1072
	ds_load_u8 v103, v76 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v103, v99, 0xc0c0004
	ds_load_u8 v103, v76 offset:1136
	ds_load_u8 v104, v76 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v99, v103, 16, v99
	v_wmma_i32_16x16x16_iu8 v[17:24], v[95:98], v[99:102], v[17:24] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v95, v90 offset:5760
	ds_load_u8 v96, v90 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v90 offset:6016
	ds_load_u8 v97, v90 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v90 offset:5248
	ds_load_u8 v98, v90 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v90 offset:5504
	ds_load_u8 v103, v90 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v103, v98, 0xc0c0004
	v_lshl_or_b32 v98, v96, 16, v95
	ds_load_u8 v95, v90 offset:4736
	ds_load_u8 v96, v90 offset:4608
	v_lshl_or_b32 v97, v103, 16, v97
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v90 offset:4992
	ds_load_u8 v103, v90 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v103, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v96, 16, v95
	ds_load_u8 v95, v90 offset:4224
	ds_load_u8 v103, v90 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v103, v95, 0xc0c0004
	ds_load_u8 v103, v90 offset:4480
	ds_load_u8 v104, v90 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v95, v103, 16, v95
	v_wmma_i32_16x16x16_iu8 v[1:8], v[95:98], v[91:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[95:98], v[99:102], v[25:32] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v91, v76 offset:1952
	ds_load_u8 v92, v76 offset:1920
	ds_load_u8 v93, v76 offset:2016
	ds_load_u8 v94, v76 offset:1984
	ds_load_u8 v95, v76 offset:1824
	ds_load_u8 v96, v76 offset:1792
	ds_load_u8 v97, v76 offset:1888
	ds_load_u8 v98, v76 offset:1856
	ds_load_u8 v99, v76 offset:1664
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v76 offset:1696
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v96, v98, v97, 0xc0c0004
	v_lshl_or_b32 v94, v93, 16, v91
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v93, v96, 16, v95
	ds_load_u8 v91, v76 offset:1760
	ds_load_u8 v95, v76 offset:1728
	ds_load_u8 v96, v76 offset:1568
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v92, v99, v92, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v91, v95, v91, 0xc0c0004
	ds_load_u8 v95, v76 offset:1536
	v_lshl_or_b32 v92, v91, 16, v92
	ds_load_u8 v91, v76 offset:1632
	ds_load_u8 v97, v76 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v95, v95, v96, 0xc0c0004
	ds_load_u8 v96, v89 offset:7808
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v91, v97, v91, 0xc0c0004
	ds_load_u8 v97, v89 offset:7680
	v_lshl_or_b32 v91, v91, 16, v95
	ds_load_u8 v95, v89 offset:8064
	ds_load_u8 v98, v89 offset:7936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v89 offset:7296
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v95, v98, v95, 0xc0c0004
	ds_load_u8 v98, v89 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v89 offset:7552
	ds_load_u8 v99, v89 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v99, v98, 0xc0c0004
	v_lshl_or_b32 v98, v95, 16, v96
	ds_load_u8 v95, v89 offset:6784
	ds_load_u8 v96, v89 offset:6656
	v_lshl_or_b32 v97, v99, 16, v97
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v89 offset:7040
	ds_load_u8 v99, v89 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v99, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v96, 16, v95
	ds_load_u8 v95, v89 offset:6272
	ds_load_u8 v99, v89 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v99, v95, 0xc0c0004
	ds_load_u8 v99, v89 offset:6528
	ds_load_u8 v89, v89 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v89, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v95, v89, 16, v95
	ds_load_u8 v89, v76 offset:1968
	ds_load_u8 v99, v76 offset:1936
	v_wmma_i32_16x16x16_iu8 v[9:16], v[95:98], v[91:94], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v103, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v104, v16
	v_cvt_f32_i32_e32 v105, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v99, v89, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v99, s52, v159
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v99, v99
	ds_load_u8 v100, v76 offset:2000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v76 offset:1840
	ds_load_u8 v101, v76 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v76 offset:1904
	ds_load_u8 v102, v76 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	v_lshl_or_b32 v102, v99, 16, v89
	ds_load_u8 v89, v76 offset:1712
	ds_load_u8 v99, v76 offset:1680
	v_lshl_or_b32 v101, v101, 16, v100
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v99, v89, 0xc0c0004
	ds_load_u8 v99, v76 offset:1776
	ds_load_u8 v100, v76 offset:1744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v99, 16, v89
	ds_load_u8 v89, v76 offset:1584
	ds_load_u8 v99, v76 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v99, v89, 0xc0c0004
	ds_load_u8 v99, v76 offset:1648
	ds_load_u8 v76, v76 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v76, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v76, 16, v89
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v76, v90 offset:7808
	ds_load_u8 v89, v90 offset:7680
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[95:98], v[99:102], v[17:24] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v89, v76, 0xc0c0004
	ds_load_u8 v89, v90 offset:8064
	ds_load_u8 v95, v90 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v95, v89, 0xc0c0004
	ds_load_u8 v95, v90 offset:7296
	ds_load_u8 v96, v90 offset:7168
	v_lshl_or_b32 v98, v89, 16, v76
	ds_load_u8 v76, v90 offset:6784
	ds_load_u8 v89, v90 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v90 offset:7552
	ds_load_u8 v97, v90 offset:7424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v76, v89, v76, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v97, v96, 16, v95
	ds_load_u8 v89, v90 offset:7040
	ds_load_u8 v95, v90 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v95, v89, 0xc0c0004
	v_lshl_or_b32 v96, v89, 16, v76
	ds_load_u8 v76, v90 offset:6272
	ds_load_u8 v89, v90 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v89, v76, 0xc0c0004
	ds_load_u8 v89, v90 offset:6528
	ds_load_u8 v90, v90 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v90, s51, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v95, v89, 16, v76
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v76, s44, v154
	v_or_b32_e32 v89, s44, v156
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[25:32], v[95:98], v[99:102], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[95:98], v[91:94], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s31, v76
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v98, v24
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v89
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v24, v31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v31, v10
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v76, s51, v157
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s51, s51, s27
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v91, v87, s53, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v94, v20
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v20, v32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v32, v9
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v89, s51, v33
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s53, s45
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v107, v1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v88, s53, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s53, s53, s35
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v106, v2
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v86, s53, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s52, s53, s33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v92, v18
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v18, v28
	v_cvt_f32_i32_e32 v28, v3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v3, v85, s53, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v96, v22
	v_cvt_f32_i32_e32 v97, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v21, v25
	v_cvt_f32_i32_e32 v22, v27
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v101, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v25, v4
	v_cvt_f32_i32_e32 v27, v8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v84, s53, 1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v90, s0
	v_cndmask_b32_e32 v9, 0x80000000, v76, vcc_lo
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v10, 0x80000000, v89, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v11, 0x80000000, v91, s1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v76, v78, s52, 1
	v_add_lshl_u32 v89, v77, s52, 1
	v_add_lshl_u32 v90, v79, s52, 1
	v_add_lshl_u32 v91, v49, s52, 1
	v_add_lshl_u32 v108, v50, s52, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v93, v17
	v_cvt_f32_i32_e32 v95, v19
	v_cvt_f32_i32_e32 v99, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v17, v26
	v_cvt_f32_i32_e32 v19, v30
	v_cvt_f32_i32_e32 v23, v29
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v100, v12
	v_cvt_f32_i32_e32 v102, v14
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v26, v6
	v_cvt_f32_i32_e32 v29, v5
	v_cvt_f32_i32_e32 v30, v7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v5, v83, s53, 1
	v_add_lshl_u32 v6, v51, s53, 1
	v_add_lshl_u32 v7, v52, s53, 1
	v_add_lshl_u32 v12, v53, s53, 1
	v_add_lshl_u32 v13, v54, s53, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v14, v82, s52, 1
	v_add_lshl_u32 v15, v81, s52, 1
	v_add_lshl_u32 v16, v80, s52, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v76, 0x80000000, v76, s1
	v_cndmask_b32_e64 v89, 0x80000000, v89, s1
	v_cndmask_b32_e64 v90, 0x80000000, v90, s1
	v_cndmask_b32_e64 v91, 0x80000000, v91, s1
	v_cndmask_b32_e64 v108, 0x80000000, v108, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v109, v11, s[4:7], 0 offen
	buffer_load_u16 v110, v1, s[4:7], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v111, v2, s[40:43], 0 offen
	buffer_load_u16 v112, v3, s[40:43], 0 offen
	buffer_load_u16 v113, v4, s[40:43], 0 offen
	buffer_load_u16 v114, v5, s[40:43], 0 offen
	buffer_load_u16 v115, v6, s[40:43], 0 offen
	buffer_load_u16 v116, v7, s[40:43], 0 offen
	buffer_load_u16 v117, v12, s[40:43], 0 offen
	buffer_load_u16 v118, v13, s[40:43], 0 offen
	buffer_load_u16 v119, v14, s[40:43], 0 offen
	buffer_load_u16 v120, v15, s[40:43], 0 offen
	buffer_load_u16 v121, v16, s[40:43], 0 offen
	buffer_load_u16 v76, v76, s[40:43], 0 offen
	buffer_load_u16 v89, v89, s[40:43], 0 offen
	buffer_load_u16 v90, v90, s[40:43], 0 offen
	buffer_load_u16 v91, v91, s[40:43], 0 offen
	buffer_load_u16 v108, v108, s[40:43], 0 offen
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v1, s51, v157
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s49, s49, 1
	s_mov_b32 s1, s46
	s_cmp_lt_i32 s49, 2
	s_mov_b32 s51, s47
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e32 v13, 0x80000000, v1, vcc_lo
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[1:4], v8, s[36:39], 0 offen
	buffer_load_b128 v[5:8], v9, s[36:39], 0 offen
	buffer_load_b128 v[9:12], v10, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v13, s[36:39], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s49, s49, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_lshl_b32 s0, s49, 11
	s_barrier
	s_add_i32 s53, s0, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s46, s49, 13
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v122, s53, v152
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s47, s46, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s52, s50, 1
	s_mov_b32 s0, s48
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s48, s53, 0x8000
	s_waitcnt vmcnt(22)
	ds_store_b64 v122, v[35:36] offset:32768
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s46, s47, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s50, s15
	s_mov_b32 s50, s52
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v35, 16, v109
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v36, 16, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v109, v35, v36
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v68, v109, v32
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v32, 16, v112
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v109, v35, v32 :: v_dual_lshlrev_b32 v90, 16, v90
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v69, v109, v31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v31, 16, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v109, v35, v31
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v60, v109, v101 :: v_dual_lshlrev_b32 v101, 16, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v109, v35, v101
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v61, v109, v100 :: v_dual_lshlrev_b32 v100, 16, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v109, v35, v100
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v45, v109, v103
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v103, 16, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v109, v35, v103
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v46, v109, v102
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v102, 16, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v109, v35, v102
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v37, v109, v105
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v105, 16, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v109, v35, v105
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v38, v109, v104
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v104, 16, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v36, v104, v36 :: v_dual_lshlrev_b32 v89, 16, v89
	v_mul_f32_e32 v32, v104, v32
	v_mul_f32_e32 v31, v104, v31
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v71, v36, v93
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v72, v32, v92
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v92, 16, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v64, v31, v95 :: v_dual_mul_f32 v31, v104, v101
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v32, 16, v120
	v_lshlrev_b32_e32 v36, 16, v121
	v_lshlrev_b32_e32 v91, 16, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v65, v31, v94
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v104, v100
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v47, v31, v97
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v104, v103
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v97, v35, v92
	v_mul_f32_e32 v92, v104, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v48, v31, v96 :: v_dual_mul_f32 v31, v104, v102
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v96, v35, v90
	v_mul_f32_e32 v90, v104, v90
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v42, v97, v27
	v_dual_fmac_f32 v44, v92, v20 :: v_dual_fmac_f32 v39, v31, v99
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v31, 16, v119
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v57, v96, v26
	v_fmac_f32_e32 v59, v90, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v94, v35, v31
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v55, v94, v107 :: v_dual_mul_f32 v94, v35, v36
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v93, v104, v105
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v36, v104, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v62, v94, v28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v40, v93, v98 :: v_dual_mul_f32 v93, v35, v32
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v104, v32
	v_mul_f32_e32 v95, v35, v76
	v_mul_f32_e32 v76, v104, v76
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v98, s47, v153
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v70, v93, v106 :: v_dual_mul_f32 v93, v35, v89
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v89, v104, v89
	v_mul_f32_e32 v35, v35, v91
	v_mul_f32_e32 v91, v104, v91
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v74, v32, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v63, v95, v25 :: v_dual_fmac_f32 v58, v89, v23
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v31, v104, v31 :: v_dual_fmac_f32 v56, v93, v29
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v41, v35, v30
	v_fmac_f32_e32 v66, v36, v22
	v_fmac_f32_e32 v67, v76, v18
	v_fmac_f32_e32 v73, v31, v21
	v_fmac_f32_e32 v43, v91, v24
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v98, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v98, v[5:8] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v98, v[9:12] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v98, v[13:16] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v3, v158 :: v_dual_mov_b32 v2, v159
	v_mov_b32_e32 v1, v160
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s48, 0, 0x8800
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v55, 0
	s_add_i32 s47, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s46, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v21, s0, v238
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v24, 0, 1, s2
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v205, v21
	ds_load_u8_d16 v122, v21 offset:16
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
	ds_load_u8_d16 v134, v21 offset:144
	ds_load_u8_d16 v146, v21 offset:256
	ds_load_u8_d16 v147, v21 offset:288
	ds_load_u8_d16 v213, v21 offset:320
	ds_load_u8_d16 v214, v21 offset:352
	ds_load_u8_d16 v139, v21 offset:368
	ds_load_u8_d16 v140, v21 offset:336
	ds_load_u8_d16 v141, v21 offset:304
	ds_load_u8_d16 v142, v21 offset:272
	ds_load_u8_d16 v215, v21 offset:384
	ds_load_u8_d16 v216, v21 offset:416
	ds_load_u8_d16 v217, v21 offset:448
	ds_load_u8_d16 v218, v21 offset:480
	ds_load_u8_d16 v143, v21 offset:496
	ds_load_u8_d16 v144, v21 offset:464
	ds_load_u8_d16 v145, v21 offset:432
	ds_load_u8_d16 v203, v21 offset:400
	ds_load_u8_d16 v187, v21 offset:512
	ds_load_u8_d16 v190, v21 offset:544
	ds_load_u8_d16 v191, v21 offset:576
	ds_load_u8_d16 v193, v21 offset:608
	ds_load_u8_d16 v117, v21 offset:624
	ds_load_u8_d16 v118, v21 offset:592
	ds_load_u8_d16 v121, v21 offset:560
	ds_load_u8_d16 v158, v21 offset:528
	ds_load_u8_d16 v194, v21 offset:640
	ds_load_u8_d16 v195, v21 offset:672
	ds_load_u8_d16 v196, v21 offset:704
	ds_load_u8_d16 v197, v21 offset:736
	ds_load_u8_d16 v126, v21 offset:752
	ds_load_u8_d16 v127, v21 offset:720
	ds_load_u8_d16 v128, v21 offset:688
	ds_load_u8_d16 v129, v21 offset:656
	ds_load_u8_d16 v130, v21 offset:768
	ds_load_u8_d16 v131, v21 offset:800
	ds_load_u8_d16 v132, v21 offset:832
	ds_load_u8_d16 v133, v21 offset:864
	ds_load_u8_d16 v177, v21 offset:880
	ds_load_u8_d16 v178, v21 offset:848
	ds_load_u8_d16 v179, v21 offset:816
	ds_load_u8_d16 v180, v21 offset:784
	ds_load_u8_d16 v135, v21 offset:896
	ds_load_u8_d16 v136, v21 offset:928
	ds_load_u8_d16 v137, v21 offset:960
	ds_load_u8_d16 v138, v21 offset:992
	ds_load_u8_d16 v107, v21 offset:1024
	ds_load_u8_d16 v184, v21 offset:976
	ds_load_u8_d16 v185, v21 offset:944
	ds_load_u8_d16 v186, v21 offset:912
	ds_load_u8_d16 v111, v21 offset:1056
	ds_load_u8_d16 v112, v21 offset:1088
	ds_load_u8_d16 v114, v21 offset:1120
	ds_load_u8_d16 v115, v21 offset:1152
	ds_load_u8_d16 v4, v21 offset:1136
	ds_load_u8_d16 v5, v21 offset:1104
	ds_load_u8_d16 v6, v21 offset:1072
	ds_load_u8_d16 v7, v21 offset:1040
	ds_load_u8_d16 v123, v21 offset:1184
	ds_load_u8_d16 v159, v21 offset:1216
	ds_load_u8_d16 v124, v21 offset:1248
	ds_load_u8_d16 v125, v21 offset:1280
	ds_load_u8_d16 v12, v21 offset:1264
	ds_load_u8_d16 v13, v21 offset:1232
	ds_load_u8_d16 v14, v21 offset:1200
	ds_load_u8_d16 v15, v21 offset:1168
	ds_load_u8_d16 v173, v21 offset:1312
	ds_load_u8_d16 v174, v21 offset:1344
	ds_load_u8_d16 v175, v21 offset:1376
	ds_load_u8_d16 v176, v21 offset:1408
	ds_load_u8_d16 v20, v21 offset:1392
	ds_load_u8_d16 v76, v21 offset:1360
	ds_load_u8_d16 v89, v21 offset:1328
	ds_load_u8_d16 v90, v21 offset:1296
	ds_load_u8_d16 v181, v21 offset:1440
	ds_load_u8_d16 v182, v21 offset:1472
	ds_load_u8_d16 v183, v21 offset:1504
	ds_load_u8_d16 v99, v21 offset:1536
	ds_load_u8_d16 v93, v21 offset:1520
	ds_load_u8_d16 v95, v21 offset:1488
	ds_load_u8_d16 v97, v21 offset:1456
	ds_load_u8_d16 v98, v21 offset:1424
	ds_load_u8_d16 v102, v21 offset:1568
	ds_load_u8_d16 v103, v21 offset:1600
	ds_load_u8_d16 v104, v21 offset:1632
	ds_load_u8_d16 v108, v21 offset:1664
	ds_load_u8_d16 v8, v21 offset:1648
	ds_load_u8_d16 v9, v21 offset:1616
	ds_load_u8_d16 v10, v21 offset:1584
	ds_load_u8_d16 v11, v21 offset:1552
	ds_load_u8_d16 v109, v21 offset:1696
	ds_load_u8_d16 v110, v21 offset:1728
	ds_load_u8_d16 v113, v21 offset:1760
	ds_load_u8_d16 v116, v21 offset:1792
	ds_load_u8_d16 v16, v21 offset:1776
	ds_load_u8_d16 v17, v21 offset:1744
	ds_load_u8_d16 v18, v21 offset:1712
	ds_load_u8_d16 v19, v21 offset:1680
	ds_load_u8_d16 v119, v21 offset:1824
	ds_load_u8_d16 v120, v21 offset:1856
	ds_load_u8_d16 v157, v21 offset:1888
	ds_load_u8_d16 v160, v21 offset:1920
	ds_load_u8_d16 v91, v21 offset:1904
	ds_load_u8_d16 v92, v21 offset:1872
	ds_load_u8_d16 v94, v21 offset:1840
	ds_load_u8_d16 v96, v21 offset:1808
	v_add_nc_u32_e32 v22, s0, v3
	v_add_nc_u32_e32 v23, s0, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v24
	v_mov_b32_e32 v24, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v188, v21 offset:1952
	ds_load_u8_d16 v189, v21 offset:1984
	ds_load_u8_d16 v192, v21 offset:2016
	ds_load_u8_d16 v204, v22
	ds_load_u8_d16 v100, v23
	ds_load_u8_d16 v101, v21 offset:2000
	ds_load_u8_d16 v105, v21 offset:1968
	ds_load_u8_d16 v106, v21 offset:1936
	v_mov_b32_e32 v21, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v152, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v21, off offset:104
	scratch_store_b32 off, v151, off offset:240
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v21, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v21, v215, v216, 0xc0c0004
	v_perm_b32 v22, v217, v218, 0xc0c0004
	v_perm_b32 v23, v146, v147, 0xc0c0004
	v_perm_b32 v24, v213, v214, 0xc0c0004
	s_mov_b32 s4, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v156, s51, v236
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v32, v22, 16, v21
	v_perm_b32 v21, v209, v210, 0xc0c0004
	v_perm_b32 v22, v211, v212, 0xc0c0004
	v_lshl_or_b32 v31, v24, 16, v23
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_lshl_or_b32 v30, v22, 16, v21
	v_perm_b32 v21, v205, v206, 0xc0c0004
	v_perm_b32 v22, v207, v208, 0xc0c0004
	v_dual_mov_b32 v220, v163 :: v_dual_mov_b32 v219, v161
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v29, v22, 16, v21
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v21, s51, v223
	v_add_nc_u32_e32 v22, s51, v222
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v23, s51, v224
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v21, v21
	ds_load_u8 v22, v22
	scratch_load_b32 v24, off, off offset:4 ; 4-byte Folded Reload
	ds_load_u8 v156, v156
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v22, s51, v225
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v23, s51, v163
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v36, v22, 16, v21
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:96
	scratch_load_b32 v25, off, off
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v23, v23
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v22, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v24, s51, v24
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v24, v24
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v21, s51, v21
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v25, s51, v25
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v21, v21
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v24, s51, v151
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v24, 16, v23
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v23, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v22, s51, v22
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v24, v140, v139, 0xc0c0004
	ds_load_u8 v22, v22
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s51, v23
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v22, s51, v161
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v23, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v34, v22, 16, v21
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v21, off, off offset:88 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v22, s51, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v22, v22
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v23, s51, v23
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s51, v21
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v23, v23
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v22, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s51, v22
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	v_perm_b32 v23, v142, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v33, v22, 16, v21
	v_perm_b32 v21, v203, v145, 0xc0c0004
	v_perm_b32 v22, v144, v143, 0xc0c0004
	v_lshl_or_b32 v163, v24, 16, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v164, v22, 16, v21
	v_perm_b32 v21, v134, v202, 0xc0c0004
	v_perm_b32 v22, v201, v200, 0xc0c0004
	v_lshl_or_b32 v162, v22, 16, v21
	v_perm_b32 v21, v122, v172, 0xc0c0004
	v_perm_b32 v22, v199, v198, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v161, v22, 16, v21
	v_dual_mov_b32 v28, s11 :: v_dual_mov_b32 v27, s10
	v_dual_mov_b32 v26, s9 :: v_dual_mov_b32 v25, s8
	v_dual_mov_b32 v24, s7 :: v_dual_mov_b32 v23, s6
	v_dual_mov_b32 v22, s5 :: v_dual_mov_b32 v21, s4
	v_wmma_i32_16x16x16_iu8 v[148:155], v[33:36], v[29:32], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v29, v135, v136, 0xc0c0004
	v_perm_b32 v30, v137, v138, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[21:28], v[33:36], v[161:164], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v31, v130, v131, 0xc0c0004
	v_perm_b32 v33, v132, v133, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v34, s51, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v194, v195, 0xc0c0004
	v_perm_b32 v30, v196, v197, 0xc0c0004
	v_lshl_or_b32 v31, v33, 16, v31
	v_perm_b32 v33, v191, v193, 0xc0c0004
	ds_load_u8 v34, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v35, s51, v166
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v187, v190, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v36, s51, v234
	v_add_nc_u32_e32 v161, s51, v171
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v35, v35
	v_mov_b32_e32 v163, v220
	v_lshl_or_b32 v29, v33, 16, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, s51, v170
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v36, v36
	ds_load_u8 v161, v161
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v34, s51, v167
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v35, s51, v235
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v36, s51, v237
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v156, v36, 0xc0c0004
	v_lshl_or_b32 v36, v34, 16, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, s51, v231
	v_add_nc_u32_e32 v34, s51, v230
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v35, v156, 16, v35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v156, s51, v232
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	ds_load_u8 v156, v156
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v34, s51, v233
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v156, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v156, s51, v226
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v34, v34, 16, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, s51, v227
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v156, v156
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v156, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v156, s51, v169
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v156, v156
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v161, v156, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v161, s51, v168
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v33, v156, 16, v33
	v_perm_b32 v156, v178, v177, 0xc0c0004
	ds_load_u8 v161, v161
	v_wmma_i32_16x16x16_iu8 v[148:155], v[33:36], v[29:32], v[148:155] neg_lo:[1,1,0]
	v_perm_b32 v29, v186, v185, 0xc0c0004
	v_perm_b32 v30, v184, v204, 0xc0c0004
	v_perm_b32 v31, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v129, v128, 0xc0c0004
	v_perm_b32 v30, v127, v126, 0xc0c0004
	v_lshl_or_b32 v31, v156, 16, v31
	v_perm_b32 v156, v118, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v158, v121, 0xc0c0004
	v_lshl_or_b32 v29, v156, 16, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v156, s51, v252
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[21:28], v[33:36], v[29:32], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v29, v176, v181, 0xc0c0004
	v_perm_b32 v30, v182, v183, 0xc0c0004
	v_perm_b32 v31, v125, v173, 0xc0c0004
	v_perm_b32 v33, v174, v175, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v34, s51, v254
	v_add_nc_u32_e32 v36, s51, v250
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v115, v123, 0xc0c0004
	v_perm_b32 v30, v159, v124, 0xc0c0004
	v_lshl_or_b32 v31, v33, 16, v31
	v_perm_b32 v33, v112, v114, 0xc0c0004
	ds_load_u8 v34, v34
	ds_load_u8 v36, v36
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v107, v111, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v35, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v156, v156
	v_lshl_or_b32 v29, v33, 16, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, s51, v255
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v34, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v35, s51, v35
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v35, v35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s51, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v35, s51, v251
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v36, s51, v253
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v156, v36, 0xc0c0004
	v_lshl_or_b32 v36, v34, 16, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, s51, v247
	v_add_nc_u32_e32 v34, s51, v246
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v35, v156, 16, v35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v156, s51, v248
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	ds_load_u8 v156, v156
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v34, s51, v249
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v156, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v156, s51, v242
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v34, v34, 16, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, s51, v243
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v156, v156
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v156, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v156, s51, v165
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v156, v156
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v161, v156, 0xc0c0004
	v_mov_b32_e32 v161, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v33, v156, 16, v33
	v_perm_b32 v156, v76, v20, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[148:155], v[33:36], v[29:32], v[148:155] neg_lo:[1,1,0]
	v_perm_b32 v29, v98, v97, 0xc0c0004
	v_perm_b32 v30, v95, v93, 0xc0c0004
	v_perm_b32 v31, v90, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v15, v14, 0xc0c0004
	v_perm_b32 v30, v13, v12, 0xc0c0004
	v_lshl_or_b32 v31, v156, 16, v31
	v_perm_b32 v156, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v7, v6, 0xc0c0004
	v_lshl_or_b32 v29, v156, 16, v29
	v_perm_b32 v156, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[33:36], v[29:32], v[21:28] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v29, off, off offset:72
	scratch_load_b32 v31, off, off offset:76
	scratch_load_b32 v30, off, off offset:68
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v35, v96, v94, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v33, off, off offset:60
	scratch_load_b32 v32, off, off offset:52
	scratch_load_b32 v34, off, off offset:28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v35, v156, 16, v35
	v_perm_b32 v156, v9, v8, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v29, s51, v29
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v31, s51, v31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v30, s51, v30
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v33, s51, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v29, v29
	ds_load_u8 v31, v31
	ds_load_u8 v30, v30
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v32, s51, v32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s51, v34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v32, v32
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v30, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v30, s51, v30
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v30, v30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v31, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v31, s51, v31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v31, v31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v32, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, s51, v32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v32, v32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v33, v32, 0xc0c0004
	v_lshl_or_b32 v32, v30, 16, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v29, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v31, v33, 16, v31
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:44
	scratch_load_b32 v30, off, off offset:36
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v29, s51, v29
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v33, s51, v33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v30, s51, v30
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v29, v29
	ds_load_u8 v33, v33
	ds_load_u8 v30, v30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v30, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v30, s51, v30
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v30, v30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v33, v30, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v30, v30, 16, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v29, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v33, s51, v33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v29, s51, v29
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	ds_load_u8 v29, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v29, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s51, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_perm_b32 v34, v101, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v33, 16, v29
	v_perm_b32 v33, v106, v105, 0xc0c0004
	v_lshl_or_b32 v36, v34, 16, v33
	v_perm_b32 v33, v19, v18, 0xc0c0004
	v_perm_b32 v34, v17, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	v_perm_b32 v33, v11, v10, 0xc0c0004
	v_lshl_or_b32 v33, v156, 16, v33
	v_perm_b32 v156, v120, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[29:32], v[33:36], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v33, v160, v188, 0xc0c0004
	v_perm_b32 v34, v189, v192, 0xc0c0004
	v_perm_b32 v35, v116, v119, 0xc0c0004
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v36, v34, 16, v33
	v_perm_b32 v33, v108, v109, 0xc0c0004
	v_perm_b32 v34, v110, v113, 0xc0c0004
	v_lshl_or_b32 v35, v156, 16, v35
	v_perm_b32 v156, v103, v104, 0xc0c0004
	v_lshl_or_b32 v34, v34, 16, v33
	v_perm_b32 v33, v99, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v156, 16, v33
	v_wmma_i32_16x16x16_iu8 v[148:155], v[29:32], v[33:36], v[148:155] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v32, v22
	v_cvt_f32_i32_e32 v22, v28
	v_cvt_f32_i32_e32 v31, v21
	v_cvt_f32_i32_e32 v29, v23
	v_cvt_f32_i32_e32 v28, v151
	scratch_load_b32 v151, off, off offset:240 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v30, v24
	v_cvt_f32_i32_e32 v21, v27
	v_cvt_f32_i32_e32 v27, v150
	v_cvt_f32_i32_e32 v23, v152
	v_cvt_f32_i32_e32 v24, v153
	v_cvt_f32_i32_e32 v152, v154
	v_cvt_f32_i32_e32 v153, v155
	v_cvt_f32_i32_e32 v33, v148
	v_cvt_f32_i32_e32 v34, v149
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0xd                            ; 56-byte Folded Spill
	scratch_store_b32 off, v34, off offset:160
	scratch_store_b32 off, v33, off offset:156
	scratch_store_b32 off, v32, off offset:152
	scratch_store_b32 off, v31, off offset:148
	scratch_store_b32 off, v30, off offset:144
	scratch_store_b32 off, v29, off offset:140
	scratch_store_b32 off, v28, off offset:136
	scratch_store_b32 off, v27, off offset:132
	scratch_store_b32 off, v26, off offset:128
	scratch_store_b32 off, v25, off offset:124
	scratch_store_b32 off, v24, off offset:120
	scratch_store_b32 off, v23, off offset:116
	scratch_store_b32 off, v22, off offset:112
	scratch_store_b32 off, v21, off offset:108
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v24, 0
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
	s_mov_b32 s4, 0
	v_perm_b32 v23, v146, v147, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v32, v22, 16, v21
	v_perm_b32 v21, v209, v210, 0xc0c0004
	v_perm_b32 v22, v211, v212, 0xc0c0004
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v30, v22, 16, v21
	v_perm_b32 v21, v205, v206, 0xc0c0004
	v_perm_b32 v22, v207, v208, 0xc0c0004
	s_mov_b32 s11, s4
	v_perm_b32 v24, v213, v214, 0xc0c0004
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	v_lshl_or_b32 v29, v22, 16, v21
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v21, s1, v223
	v_add_nc_u32_e32 v22, s1, v222
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v31, v24, 16, v23
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v23, s1, v224
	scratch_load_b32 v24, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	ds_load_u8 v22, v22
	v_perm_b32 v93, v95, v93, 0xc0c0004
	ds_load_u8 v23, v23
	v_perm_b32 v89, v90, v89, 0xc0c0004
	v_perm_b32 v20, v76, v20, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v12, v13, v12, 0xc0c0004
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v5, v101, v100, 0xc0c0004
	v_perm_b32 v13, v19, v18, 0xc0c0004
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v22, s1, v225
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v23, s1, v163
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v36, v22, 16, v21
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v21, off, off offset:96
	scratch_load_b32 v25, off, off
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v22, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v24, s1, v24
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v24, v24
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v21, s1, v21
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v25, s1, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v24, s1, v151
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v24, 16, v23
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v23, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v22, s1, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v24, v140, v139, 0xc0c0004
	ds_load_u8 v22, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s1, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v22, s1, v161
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v23, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v34, v22, 16, v21
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:88 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v22, s1, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v23, s1, v23
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v22, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s1, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	v_perm_b32 v23, v142, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v33, v22, 16, v21
	v_perm_b32 v21, v203, v145, 0xc0c0004
	v_perm_b32 v22, v144, v143, 0xc0c0004
	v_lshl_or_b32 v149, v24, 16, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v22, 16, v21
	v_perm_b32 v21, v134, v202, 0xc0c0004
	v_perm_b32 v22, v201, v200, 0xc0c0004
	v_lshl_or_b32 v148, v22, 16, v21
	v_perm_b32 v21, v122, v172, 0xc0c0004
	v_perm_b32 v22, v199, v198, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v122, s1, v236
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v147, v22, 16, v21
	v_dual_mov_b32 v28, s11 :: v_dual_mov_b32 v27, s10
	v_dual_mov_b32 v26, s9 :: v_dual_mov_b32 v25, s8
	v_dual_mov_b32 v24, s7 :: v_dual_mov_b32 v23, s6
	v_dual_mov_b32 v22, s5 :: v_dual_mov_b32 v21, s4
	ds_load_u8 v122, v122
	v_wmma_i32_16x16x16_iu8 v[139:146], v[33:36], v[29:32], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v29, v135, v136, 0xc0c0004
	v_perm_b32 v30, v137, v138, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[21:28], v[33:36], v[147:150], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v31, v130, v131, 0xc0c0004
	v_perm_b32 v33, v132, v133, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s1, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v194, v195, 0xc0c0004
	v_perm_b32 v30, v196, v197, 0xc0c0004
	v_lshl_or_b32 v31, v33, 16, v31
	v_perm_b32 v33, v191, v193, 0xc0c0004
	ds_load_u8 v34, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v35, s1, v166
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v187, v190, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v36, s1, v234
	v_add_nc_u32_e32 v130, s1, v171
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v35, v35
	v_lshl_or_b32 v29, v33, 16, v29
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s1, v170
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v36, v36
	ds_load_u8 v130, v130
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s1, v167
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v35, s1, v235
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v36, s1, v237
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v122, v36, 0xc0c0004
	v_lshl_or_b32 v36, v34, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s1, v231
	v_add_nc_u32_e32 v34, s1, v230
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v35, v122, 16, v35
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v122, s1, v232
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	ds_load_u8 v122, v122
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s1, v233
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v122, v34, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v122, s1, v226
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v34, v34, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s1, v227
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v122, v122
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v122, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v122, s1, v169
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v122, v122
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v130, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v33, v122, 16, v33
	v_perm_b32 v122, v178, v177, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[139:146], v[33:36], v[29:32], v[139:146] neg_lo:[1,1,0]
	v_perm_b32 v29, v186, v185, 0xc0c0004
	v_perm_b32 v30, v184, v204, 0xc0c0004
	v_perm_b32 v31, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v129, v128, 0xc0c0004
	v_perm_b32 v30, v127, v126, 0xc0c0004
	v_lshl_or_b32 v31, v122, 16, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v158, v121, 0xc0c0004
	v_lshl_or_b32 v29, v117, 16, v29
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[33:36], v[29:32], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v29, v176, v181, 0xc0c0004
	v_perm_b32 v30, v182, v183, 0xc0c0004
	v_perm_b32 v31, v125, v173, 0xc0c0004
	v_perm_b32 v33, v174, v175, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s1, v254
	v_add_nc_u32_e32 v36, s1, v250
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v115, v123, 0xc0c0004
	v_perm_b32 v30, v159, v124, 0xc0c0004
	v_lshl_or_b32 v31, v33, 16, v31
	v_perm_b32 v33, v112, v114, 0xc0c0004
	ds_load_u8 v34, v34
	ds_load_u8 v36, v36
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v107, v111, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v35, off, off offset:12 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v107, s1, v252
	v_add_nc_u32_e32 v111, s1, v168
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v114, v93, 16, v97
	v_lshl_or_b32 v29, v33, 16, v29
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s1, v255
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v112, v12, 16, v14
	v_perm_b32 v12, v92, v91, 0xc0c0004
	v_perm_b32 v14, v17, v16, 0xc0c0004
	ds_load_u8 v107, v107
	ds_load_u8 v33, v33
	ds_load_u8 v111, v111
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v34, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v35, s1, v35
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v35, v35
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s1, v34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v35, s1, v251
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v36, s1, v253
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v36, 0xc0c0004
	v_lshl_or_b32 v36, v34, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s1, v247
	v_add_nc_u32_e32 v34, s1, v246
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v35, v107, 16, v35
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v107, s1, v248
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	ds_load_u8 v107, v107
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s1, v249
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v107, v34, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v107, s1, v242
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v34, v34, 16, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s1, v243
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v107, v107
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v107, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v107, s1, v165
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v107, v107
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v111, v107, 0xc0c0004
	v_lshl_or_b32 v111, v4, 16, v6
	v_perm_b32 v4, v106, v105, 0xc0c0004
	v_perm_b32 v6, v96, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v33, v107, 16, v33
	v_perm_b32 v107, v120, v157, 0xc0c0004
	v_lshl_or_b32 v7, v5, 16, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v6, v12, 16, v6
	v_lshl_or_b32 v5, v14, 16, v13
	v_wmma_i32_16x16x16_iu8 v[139:146], v[33:36], v[29:32], v[139:146] neg_lo:[1,1,0]
	v_perm_b32 v29, v160, v188, 0xc0c0004
	v_perm_b32 v30, v189, v192, 0xc0c0004
	v_perm_b32 v31, v116, v119, 0xc0c0004
	v_lshl_or_b32 v4, v8, 16, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v108, v109, 0xc0c0004
	v_perm_b32 v30, v110, v113, 0xc0c0004
	v_lshl_or_b32 v31, v107, 16, v31
	v_lshl_or_b32 v113, v20, 16, v89
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v107, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v99, v102, 0xc0c0004
	v_perm_b32 v99, v103, v104, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v103, off, off offset:76
	scratch_load_b32 v102, off, off offset:68
	scratch_load_b32 v104, off, off offset:52
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[21:28], v[33:36], v[111:114], v[21:28] neg_lo:[1,1,0]
	v_lshl_or_b32 v29, v99, 16, v29
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v99, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v107, s1, v107
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v103, s1, v103
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v102, s1, v102
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v104, s1, v104
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v107, v107
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, s1, v99
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v102, v102
	ds_load_u8 v103, v103
	ds_load_u8 v104, v104
	ds_load_u8 v99, v99
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v102, v99, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v102, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v102, s1, v102
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v102, v102
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v103, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v110, v102, 16, v99
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v99, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v103, s1, v103
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v103, v103
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v104, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v104, s1, v104
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v104, v104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v107, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v104, 16, v103
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v103, off, off offset:44
	scratch_load_b32 v102, off, off offset:36
	v_add_nc_u32_e32 v99, s1, v99
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v99, v99
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v103, s1, v103
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v102, s1, v102
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v103, v103
	ds_load_u8 v102, v102
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v102, v99, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v102, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v102, s1, v102
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v102, v102
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v103, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v108, v102, 16, v99
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v99, off, off offset:20
	scratch_load_b32 v102, off, off offset:24
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v103, s1, v103
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v99, s1, v99
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v102, s1, v102
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v103, v103
	ds_load_u8 v99, v99
	ds_load_u8 v102, v102
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v99, v102, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v102, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v102, s1, v102
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v102, v102
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v107, v102, 16, v99
	v_wmma_i32_16x16x16_iu8 v[139:146], v[107:110], v[29:32], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[21:28], v[107:110], v[4:7], v[21:28] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v33, v141
	v_cvt_f32_i32_e32 v34, v142
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v31, v143
	v_cvt_f32_i32_e32 v32, v144
	v_cvt_f32_i32_e32 v29, v145
	v_cvt_f32_i32_e32 v30, v146
	v_cvt_f32_i32_e32 v148, v21
	v_cvt_f32_i32_e32 v149, v22
	v_cvt_f32_i32_e32 v35, v23
	v_cvt_f32_i32_e32 v36, v24
	v_cvt_f32_i32_e32 v23, v25
	v_cvt_f32_i32_e32 v24, v26
	v_cvt_f32_i32_e32 v21, v27
	v_cvt_f32_i32_e32 v22, v28
	v_cvt_f32_i32_e32 v4, v139
	v_cvt_f32_i32_e32 v25, v140
	scratch_store_b32 off, v4, off offset:104 ; 4-byte Folded Spill
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s30, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s45
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(59)
	v_add_lshl_u32 v4, v87, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0xe                            ; 60-byte Folded Spill
	scratch_store_b32 off, v149, off offset:220
	scratch_store_b32 off, v148, off offset:216
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
	v_dual_mov_b32 v194, v224 :: v_dual_add_nc_u32 v3, s48, v3
	s_waitcnt lgkmcnt(26)
	v_dual_mov_b32 v196, v226 :: v_dual_add_nc_u32 v9, s48, v238
	buffer_load_u16 v217, v4, s[12:15], 0 offen
	v_add_lshl_u32 v4, v88, s0, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s35
	v_dual_mov_b32 v156, v253 :: v_dual_mov_b32 v173, v251
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v129, 0 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_dual_mov_b32 v172, v252 :: v_dual_mov_b32 v175, v249
	v_dual_mov_b32 v174, v250 :: v_dual_mov_b32 v177, v247
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v218, v4, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v86, s0, 1
	v_dual_mov_b32 v176, v248 :: v_dual_mov_b32 v179, v243
	v_dual_mov_b32 v180, v242 :: v_dual_mov_b32 v181, v237
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_dual_mov_b32 v190, v234 :: v_dual_mov_b32 v185, v233
	v_dual_mov_b32 v184, v232 :: v_dual_mov_b32 v197, v227
	buffer_load_u16 v219, v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, v85, s0, 1
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v164, v231
	s_waitcnt lgkmcnt(5)
	v_dual_mov_b32 v195, v225 :: v_dual_mov_b32 v192, v230
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v193, v223 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v253, v3
	ds_load_u8_d16 v237, v9 offset:1040
	ds_load_u8_d16 v206, v9 offset:1072
	ds_load_u8_d16 v234, v9 offset:1104
	ds_load_u8_d16 v205, v9 offset:1136
	ds_load_u8_d16 v250, v9 offset:1168
	ds_load_u8_d16 v76, v9 offset:1200
	ds_load_u8_d16 v249, v9 offset:1232
	ds_load_u8_d16 v251, v9 offset:1264
	ds_load_u8_d16 v89, v9 offset:1296
	ds_load_u8_d16 v95, v9 offset:1328
	ds_load_u8_d16 v252, v9 offset:1360
	ds_load_u8_d16 v94, v9 offset:1392
	s_waitcnt lgkmcnt(15)
	ds_load_u8_d16 v101, v9 offset:1424
	ds_load_u8_d16 v103, v9 offset:1456
	ds_load_u8_d16 v100, v9 offset:1488
	ds_load_u8_d16 v102, v9 offset:1520
	ds_load_u8_d16 v224, v9 offset:1552
	ds_load_u8_d16 v200, v9 offset:1584
	ds_load_u8_d16 v223, v9 offset:1616
	ds_load_u8_d16 v199, v9 offset:1648
	ds_load_u8_d16 v225, v9 offset:1680
	ds_load_u8_d16 v227, v9 offset:1712
	ds_load_u8_d16 v201, v9 offset:1744
	ds_load_u8_d16 v226, v9 offset:1776
	ds_load_u8_d16 v202, v9 offset:1808
	ds_load_u8_d16 v204, v9 offset:1840
	ds_load_u8_d16 v231, v9 offset:1872
	ds_load_u8_d16 v203, v9 offset:1904
	ds_load_u8_d16 v243, v9 offset:1936
	ds_load_u8_d16 v247, v9 offset:1968
	ds_load_u8_d16 v242, v9 offset:2000
	scratch_store_b32 off, v222, off offset:244 ; 4-byte Folded Spill
	v_dual_mov_b32 v178, v246 :: v_dual_mov_b32 v191, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v220, v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, v84, s0, 1
	v_dual_mov_b32 v187, 0 :: v_dual_add_nc_u32 v2, s48, v2
	v_dual_mov_b32 v154, v255 :: v_dual_mov_b32 v155, v254
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_dual_mov_b32 v182, v236 :: v_dual_mov_b32 v183, v235
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v230, v9 offset:1536
	ds_load_u8_d16 v137, v9 offset:1568
	ds_load_u8_d16 v232, v9 offset:1600
	ds_load_u8_d16 v233, v9 offset:1632
	ds_load_u8_d16 v138, v9 offset:1664
	ds_load_u8_d16 v139, v9 offset:1696
	ds_load_u8_d16 v140, v9 offset:1728
	ds_load_u8_d16 v141, v9 offset:1760
	ds_load_u8_d16 v142, v9 offset:1792
	ds_load_u8_d16 v143, v9 offset:1824
	ds_load_u8_d16 v144, v9 offset:1856
	ds_load_u8_d16 v145, v9 offset:1888
	ds_load_u8_d16 v75, v9 offset:1920
	ds_load_u8_d16 v235, v9 offset:1952
	ds_load_u8_d16 v236, v9 offset:1984
	ds_load_u8_d16 v239, v9 offset:2016
	ds_load_u8_d16 v117, v9 offset:80
	ds_load_u8_d16 v118, v9 offset:112
	ds_load_u8_d16 v255, v9 offset:144
	ds_load_u8_d16 v132, v9 offset:176
	ds_load_u8_d16 v254, v9 offset:208
	ds_load_u8_d16 v150, v9 offset:240
	ds_load_u8_d16 v157, v9 offset:272
	ds_load_u8_d16 v134, v9 offset:304
	ds_load_u8_d16 v133, v9 offset:336
	ds_load_u8_d16 v158, v9 offset:368
	ds_load_u8_d16 v136, v9 offset:400
	ds_load_u8_d16 v229, v9 offset:432
	ds_load_u8_d16 v135, v9 offset:464
	ds_load_u8_d16 v228, v9 offset:496
	ds_load_u8_d16 v97, v9 offset:528
	ds_load_u8_d16 v99, v9 offset:560
	ds_load_u8_d16 v96, v9 offset:592
	ds_load_u8_d16 v98, v9 offset:624
	s_waitcnt lgkmcnt(62)
	ds_load_u8_d16 v105, v9 offset:656
	ds_load_u8_d16 v112, v9 offset:688
	ds_load_u8_d16 v104, v9 offset:720
	ds_load_u8_d16 v111, v9 offset:752
	ds_load_u8_d16 v114, v9 offset:784
	ds_load_u8_d16 v116, v9 offset:816
	ds_load_u8_d16 v113, v9 offset:848
	ds_load_u8_d16 v115, v9 offset:880
	ds_load_u8_d16 v120, v9 offset:912
	ds_load_u8_d16 v121, v9 offset:944
	ds_load_u8_d16 v119, v9 offset:976
	v_mov_b32_e32 v125, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v213, v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, v83, s0, 1
	v_mov_b32_e32 v128, 0
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v188, 0
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_mov_b32_e32 v122, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v3, 0
	v_mov_b32_e32 v186, 0
	buffer_load_u16 v214, v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, v51, s0, 1
	s_mov_b32 s4, 0
	v_mov_b32_e32 v127, 0
	v_mov_b32_e32 v189, 0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v248, v2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v2, 0, 1, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v209, v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, v52, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v210, v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, v53, s0, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v159, v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, v54, s0, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s0, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v160, v4, s[28:31], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v4, s0, v82, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v221, v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, s0, v81, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v222, v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, s0, v80, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v215, v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, s0, v78, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v216, v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, s0, v77, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v211, v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, s0, v79, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v212, v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, s0, v49, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	buffer_load_u16 v207, v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, s0, v50, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v2
	v_mov_b32_e32 v2, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v208, v4, s[28:31], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	ds_load_u8_d16 v4, v9
	ds_load_u8_d16 v0, v9 offset:16
	ds_load_u8_d16 v5, v9 offset:32
	ds_load_u8_d16 v162, v9 offset:48
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
	ds_load_u8_d16 v21, v9 offset:512
	scratch_store_b32 off, v238, off offset:252 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:304 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:544
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:308 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:576
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:312 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:608
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:316 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:640
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:320 ; 4-byte Folded Spill
	ds_load_u8_d16 v107, v9 offset:672
	ds_load_u8_d16 v108, v9 offset:704
	ds_load_u8_d16 v109, v9 offset:736
	ds_load_u8_d16 v90, v9 offset:768
	ds_load_u8_d16 v110, v9 offset:800
	ds_load_u8_d16 v91, v9 offset:832
	ds_load_u8_d16 v130, v9 offset:864
	ds_load_u8_d16 v92, v9 offset:896
	ds_load_u8_d16 v131, v9 offset:928
	ds_load_u8_d16 v93, v9 offset:960
	ds_load_u8_d16 v106, v9 offset:992
	ds_load_u8_d16 v198, v9 offset:1024
	ds_load_u8_d16 v240, v9 offset:1056
	ds_load_u8_d16 v241, v9 offset:1088
	ds_load_u8_d16 v238, v9 offset:1120
	ds_load_u8_d16 v244, v9 offset:1152
	ds_load_u8_d16 v245, v9 offset:1184
	ds_load_u8_d16 v246, v9 offset:1216
	ds_load_u8_d16 v21, v9 offset:1248
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:256 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1280
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:260 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1312
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:264 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1344
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:268 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1376
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:272 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1408
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:276 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1440
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:280 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1472
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:284 ; 4-byte Folded Spill
	ds_load_u8_d16 v21, v9 offset:1504
	v_mov_b32_e32 v9, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v21, off offset:288 ; 4-byte Folded Spill
	v_mov_b32_e32 v21, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	v_perm_b32 v2, v17, v18, 0xc0c0004
	v_perm_b32 v3, v19, v20, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	v_lshl_or_b32 v125, v3, 16, v2
	v_perm_b32 v2, v8, v10, 0xc0c0004
	v_perm_b32 v3, v11, v12, 0xc0c0004
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_perm_b32 v21, v13, v14, 0xc0c0004
	v_lshl_or_b32 v123, v3, 16, v2
	v_perm_b32 v2, v4, v5, 0xc0c0004
	v_perm_b32 v3, v6, v7, 0xc0c0004
	v_perm_b32 v22, v15, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v122, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:244 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v2, s47, v193
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v124, v22, 16, v21
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v21, s47, v194
	scratch_load_b32 v22, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v21, v21
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s47, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s47, v195
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v21, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v21, s47, v163
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v129, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:96
	scratch_load_b32 v23, off, off
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v22, s47, v22
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v21, v21
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v22, v22
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, s47, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v23, s47, v23
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v22, s47, v151
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v128, v22, 16, v21
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v21, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v3, s47, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v22, v133, v158, 0xc0c0004
	ds_load_u8 v3, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s47, v21
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s47, v161
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v21, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v21, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v127, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:88 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v3, s47, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, s47, v21
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, s47, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v21, v21
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s47, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v21, v3, 0xc0c0004
	v_perm_b32 v21, v157, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v126, v3, 16, v2
	v_perm_b32 v2, v136, v229, 0xc0c0004
	v_perm_b32 v3, v135, v228, 0xc0c0004
	v_lshl_or_b32 v148, v22, 16, v21
	v_dual_mov_b32 v28, s11 :: v_dual_mov_b32 v27, s10
	v_mov_b32_e32 v26, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v149, v3, 16, v2
	v_perm_b32 v2, v255, v132, 0xc0c0004
	v_perm_b32 v3, v254, v150, 0xc0c0004
	v_dual_mov_b32 v25, s8 :: v_dual_mov_b32 v24, s7
	v_dual_mov_b32 v23, s6 :: v_dual_mov_b32 v22, s5
	v_lshl_or_b32 v147, v3, 16, v2
	v_perm_b32 v2, v0, v162, 0xc0c0004
	v_perm_b32 v3, v117, v118, 0xc0c0004
	v_mov_b32_e32 v21, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v146, v3, 16, v2
	v_perm_b32 v2, v92, v131, 0xc0c0004
	v_perm_b32 v3, v93, v106, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[29:36], v[126:129], v[122:125], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v122, v90, v110, 0xc0c0004
	v_perm_b32 v123, v91, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v125, v3, 16, v2
	scratch_load_b32 v2, off, off offset:320 ; 4-byte Folded Reload
	v_perm_b32 v3, v108, v109, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[21:28], v[126:129], v[146:149], v[21:28] neg_lo:[1,1,0]
	v_lshl_or_b32 v124, v123, 16, v122
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v126, s47, v166
	v_add_nc_u32_e32 v128, s47, v182
	v_add_nc_u32_e32 v127, s47, v190
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v126, v126
	ds_load_u8 v128, v128
	ds_load_u8 v127, v127
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v123, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:304
	scratch_load_b32 v3, off, off offset:308
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:312
	scratch_load_b32 v122, off, off offset:316
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v122, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s47, v170
	v_add_nc_u32_e32 v3, s47, v191
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s47, v167
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v126, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v126, s47, v183
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v129, v3, 16, v2
	ds_load_u8 v126, v126
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s47, v164
	v_add_nc_u32_e32 v3, s47, v192
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v127, s47, v181
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v127, v127
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s47, v185
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v128, v127, 16, v126
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v126, s47, v184
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v126, v126
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v126, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v126, s47, v171
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v127, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s47, v197
	v_add_nc_u32_e32 v3, s47, v196
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v126, v126
	ds_load_u8 v2, v2
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s47, v169
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v126, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v126, v3, 16, v2
	v_perm_b32 v2, v120, v121, 0xc0c0004
	v_perm_b32 v3, v119, v253, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[29:36], v[126:129], v[122:125], v[29:36] neg_lo:[1,1,0]
	v_perm_b32 v122, v114, v116, 0xc0c0004
	v_perm_b32 v123, v113, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v125, v3, 16, v2
	v_perm_b32 v2, v105, v112, 0xc0c0004
	v_perm_b32 v3, v104, v111, 0xc0c0004
	v_lshl_or_b32 v124, v123, 16, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v123, v3, 16, v2
	v_perm_b32 v2, v97, v99, 0xc0c0004
	v_perm_b32 v3, v96, v98, 0xc0c0004
	v_lshl_or_b32 v122, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:276
	scratch_load_b32 v3, off, off offset:280
	v_wmma_i32_16x16x16_iu8 v[21:28], v[126:129], v[122:125], v[21:28] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v127, s47, v174
	v_add_nc_u32_e32 v128, s47, v172
	scratch_load_b32 v126, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v127, v127
	ds_load_u8 v128, v128
	s_waitcnt vmcnt(1)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:284
	scratch_load_b32 v122, off, off offset:288
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v126, s47, v126
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v126, v126
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v122, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v122, off, off offset:260
	scratch_load_b32 v123, off, off offset:264
	v_lshl_or_b32 v125, v3, 16, v2
	scratch_load_b32 v3, off, off offset:256 ; 4-byte Folded Reload
	v_perm_b32 v2, v244, v245, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v122, v122, v123, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v123, off, off offset:268
	scratch_load_b32 v124, off, off offset:272
	s_waitcnt vmcnt(2)
	v_perm_b32 v3, v246, v3, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v123, v123, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v124, v123, 16, v122
	v_lshl_or_b32 v123, v3, 16, v2
	v_perm_b32 v2, v198, v240, 0xc0c0004
	v_perm_b32 v3, v241, v238, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v122, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s47, v154
	v_add_nc_u32_e32 v3, s47, v155
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s47, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v126, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v126, s47, v173
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v129, v3, 16, v2
	ds_load_u8 v126, v126
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s47, v177
	v_add_nc_u32_e32 v3, s47, v178
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v127, s47, v156
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v127, v127
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s47, v175
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v128, v127, 16, v126
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v126, s47, v176
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v126, v126
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v126, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v126, s47, v168
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v127, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s47, v179
	v_add_nc_u32_e32 v3, s47, v180
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v126, v126
	ds_load_u8 v2, v2
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s47, v165
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v126, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v126, v3, 16, v2
	v_perm_b32 v2, v101, v103, 0xc0c0004
	v_perm_b32 v3, v100, v102, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[29:36], v[126:129], v[122:125], v[29:36] neg_lo:[1,1,0]
	v_perm_b32 v122, v89, v95, 0xc0c0004
	v_perm_b32 v123, v252, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v125, v3, 16, v2
	v_perm_b32 v2, v250, v76, 0xc0c0004
	v_perm_b32 v3, v249, v251, 0xc0c0004
	v_lshl_or_b32 v124, v123, 16, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v123, v3, 16, v2
	v_perm_b32 v2, v237, v206, 0xc0c0004
	v_perm_b32 v3, v234, v205, 0xc0c0004
	v_lshl_or_b32 v122, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[21:28], v[126:129], v[122:125], v[21:28] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v122, off, off offset:76
	scratch_load_b32 v3, off, off offset:68
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v126, v202, v204, 0xc0c0004
	v_perm_b32 v127, v231, v203, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v124, off, off offset:60
	scratch_load_b32 v123, off, off offset:52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v128, v127, 16, v126
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v2, s47, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v3, s47, v3
	v_add_nc_u32_e32 v122, s47, v122
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v124, s47, v124
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, s47, v123
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	ds_load_u8 v122, v122
	ds_load_u8 v124, v124
	ds_load_u8 v123, v123
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s47, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v122, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v122, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v125, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v2, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v122, s47, v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v122, v122
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v123, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, s47, v123
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v123, v123
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v124, v123, 16, v122
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v122, off, off offset:44
	scratch_load_b32 v3, off, off offset:36
	v_add_nc_u32_e32 v2, s47, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v122, s47, v122
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s47, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v122, v122
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s47, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v122, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v122, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v123, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:20
	scratch_load_b32 v3, off, off offset:24
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v122, s47, v122
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v2, s47, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s47, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v122, v122
	ds_load_u8 v2, v2
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v3, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, s47, v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v122, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v3, 16, v2
	v_perm_b32 v2, v243, v247, 0xc0c0004
	v_perm_b32 v3, v242, v248, 0xc0c0004
	v_lshl_or_b32 v129, v3, 16, v2
	v_perm_b32 v2, v225, v227, 0xc0c0004
	v_perm_b32 v3, v201, v226, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v127, v3, 16, v2
	v_perm_b32 v2, v224, v200, 0xc0c0004
	v_perm_b32 v3, v223, v199, 0xc0c0004
	v_lshl_or_b32 v126, v3, 16, v2
	v_perm_b32 v2, v75, v235, 0xc0c0004
	v_perm_b32 v3, v236, v239, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[21:28], v[122:125], v[126:129], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v126, v142, v143, 0xc0c0004
	v_perm_b32 v127, v144, v145, 0xc0c0004
	v_lshl_or_b32 v129, v3, 16, v2
	v_perm_b32 v2, v138, v139, 0xc0c0004
	v_perm_b32 v3, v140, v141, 0xc0c0004
	v_cvt_f32_i32_e32 v189, v27
	v_lshl_or_b32 v128, v127, 16, v126
	v_cvt_f32_i32_e32 v186, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v127, v3, 16, v2
	v_perm_b32 v2, v230, v137, 0xc0c0004
	v_perm_b32 v3, v232, v233, 0xc0c0004
	v_lshl_or_b32 v126, v3, 16, v2
	v_cvt_f32_i32_e32 v2, v25
	v_cvt_f32_i32_e32 v3, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[29:36], v[122:125], v[126:129], v[29:36] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v122, v21
	v_cvt_f32_i32_e32 v125, v22
	v_cvt_f32_i32_e32 v126, v23
	v_cvt_f32_i32_e32 v127, v24
	v_cvt_f32_i32_e32 v23, v31
	v_cvt_f32_i32_e32 v24, v32
	v_cvt_f32_i32_e32 v21, v33
	v_cvt_f32_i32_e32 v22, v34
	v_cvt_f32_i32_e32 v187, v35
	v_cvt_f32_i32_e32 v188, v36
	v_cvt_f32_i32_e32 v128, v29
	v_cvt_f32_i32_e32 v129, v30
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v122, off offset:300
	scratch_store_b32 off, v24, off offset:296
	scratch_store_b32 off, v23, off offset:292
	scratch_store_b32 off, v22, off offset:236
	scratch_store_b32 off, v21, off offset:232
	scratch_store_b32 off, v3, off offset:228
	v_mov_b16_e64 v124.l, v158.l
	v_mov_b16_e64 v123.l, v157.l
	v_mov_b16_e64 v122.l, v150.l
	s_waitcnt vmcnt(18)
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v148, 0
	v_mov_b32_e32 v3, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	scratch_store_b32 off, v2, off offset:224 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v2, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v35, s46, v170
	v_add_nc_u32_e32 v33, s46, v167
	v_add_nc_u32_e32 v167, s46, v171
	v_add_nc_u32_e32 v27, s46, v165
	v_add_nc_u32_e32 v165, s46, v192
	v_add_nc_u32_e32 v36, s46, v191
	v_add_nc_u32_e32 v9, s46, v193
	v_add_nc_u32_e32 v3, s46, v194
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v4, v4, v5, 0xc0c0004
	v_perm_b32 v5, v6, v7, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v28, s46, v168
	v_add_nc_u32_e32 v168, s46, v197
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v17, v17, v18, 0xc0c0004
	v_perm_b32 v18, v19, v20, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v1, s46, v1
	v_add_nc_u32_e32 v34, s46, v166
	v_add_nc_u32_e32 v166, s46, v169
	v_add_nc_u32_e32 v169, s46, v196
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
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v183, s46, v183
	v_add_nc_u32_e32 v181, s46, v181
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v31, v14, 16, v13
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v182, s46, v182
	v_add_nc_u32_e32 v164, s46, v164
	v_add_nc_u32_e32 v154, s46, v154
	v_add_nc_u32_e32 v155, s46, v155
	v_add_nc_u32_e32 v173, s46, v173
	v_add_nc_u32_e32 v174, s46, v174
	v_add_nc_u32_e32 v156, s46, v156
	v_add_nc_u32_e32 v172, s46, v172
	v_add_nc_u32_e32 v177, s46, v177
	v_add_nc_u32_e32 v178, s46, v178
	v_add_nc_u32_e32 v175, s46, v175
	v_add_nc_u32_e32 v176, s46, v176
	v_add_nc_u32_e32 v179, s46, v179
	v_add_nc_u32_e32 v180, s46, v180
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v27, v27
	ds_load_u8 v28, v28
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_mov_b32_e32 v191, v161
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v161, s46, v190
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:244
	scratch_load_b32 v30, off, off offset:84
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v36, v33, 16, v35
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v191, s46, v191
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v183
	ds_load_u8 v34, v161
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_perm_b32 v28, v236, v239, 0xc0c0004
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
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v157, s46, v2
	scratch_load_b32 v2, off, off offset:76 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v234, off offset:80
	scratch_store_b32 off, v225, off offset:76
	v_mov_b16_e64 v234.l, v205.l
	v_mov_b16_e64 v205.l, v162.l
	v_add_nc_u32_e32 v162, s46, v185
	v_mov_b32_e32 v185, v163
	v_add_nc_u32_e32 v163, s46, v184
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v185, s46, v185
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v170, s46, v29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:240
	scratch_load_b32 v192, off, off offset:8
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v196, s46, v30
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v30, v10, 16, v8
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v158, s46, v2
	scratch_load_b32 v2, off, off offset:72 ; 4-byte Folded Reload
	scratch_store_b32 off, v226, off offset:72 ; 4-byte Folded Spill
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v171, s46, v29
	scratch_load_b32 v29, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v192, s46, v192
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v225, s46, v2
	scratch_load_b32 v2, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v184, s46, v29
	scratch_load_b32 v29, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v226, s46, v2
	scratch_load_b32 v2, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v190, s46, v29
	scratch_load_b32 v29, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v148, s46, v2
	scratch_load_b32 v2, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v193, s46, v29
	scratch_load_b32 v29, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v149, s46, v2
	scratch_load_b32 v2, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v194, s46, v29
	scratch_load_b32 v29, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v150, s46, v2
	scratch_load_b32 v2, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v151, s46, v2
	scratch_load_b32 v2, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s46, v2
	scratch_load_b32 v2, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s46, v2
	scratch_load_b32 v2, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v146, s46, v2
	scratch_load_b32 v2, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v147, s46, v2
	scratch_load_b32 v2, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s46, v2
	scratch_load_b32 v2, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s46, v2
	scratch_load_b32 v2, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	v_perm_b32 v22, v135, v228, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v24, s46, v2
	scratch_load_b32 v2, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s46, v2
	scratch_load_b32 v2, off, off offset:16 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v223, off offset:20
	scratch_store_b32 off, v186, off offset:16
	v_mov_b16_e64 v186.l, v224.l
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v24, v24
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v23, v24, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v223, s46, v2
	scratch_load_b32 v2, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v224, s46, v2
	v_add_nc_u32_e32 v2, s46, v195
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v2, v2
	ds_load_u8 v3, v3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v195, s46, v29
	scratch_load_b32 v29, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v197, s46, v29
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v29, v5, 16, v4
	ds_load_u8 v4, v9
	ds_load_u8 v5, v170
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
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
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	ds_load_u8 v25, v25
	ds_load_u8 v26, v26
	v_wmma_i32_16x16x16_iu8 v[9:16], v[17:20], v[29:32], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v29, v92, v131, 0xc0c0004
	v_perm_b32 v30, v93, v106, 0xc0c0004
	v_perm_b32 v106, v241, v238, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v32, v30, 16, v29
	v_perm_b32 v29, v90, v110, 0xc0c0004
	v_perm_b32 v30, v91, v130, 0xc0c0004
	v_lshl_or_b32 v31, v30, 16, v29
	scratch_load_b32 v29, off, off offset:320 ; 4-byte Folded Reload
	v_perm_b32 v30, v108, v109, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v29, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:304
	scratch_load_b32 v90, off, off offset:308
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v29, v90, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v90, off, off offset:312
	scratch_load_b32 v91, off, off offset:316
	s_waitcnt vmcnt(0)
	v_perm_b32 v130, v90, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v130, 16, v29
	ds_load_u8 v34, v162
	ds_load_u8 v130, v163
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v130, v34, 0xc0c0004
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v168
	ds_load_u8 v130, v169
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v130, v33, 0xc0c0004
	ds_load_u8 v130, v166
	ds_load_u8 v131, v167
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v130, 16, v33
	v_wmma_i32_16x16x16_iu8 v[9:16], v[33:36], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:276
	scratch_load_b32 v30, off, off offset:280
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v29, v30, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v30, off, off offset:284
	scratch_load_b32 v31, off, off offset:288
	s_waitcnt vmcnt(0)
	v_perm_b32 v30, v30, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v30, 16, v29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v29, off, off offset:260
	scratch_load_b32 v30, off, off offset:264
	s_waitcnt vmcnt(0)
	v_perm_b32 v29, v29, v30, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v30, off, off offset:268
	scratch_load_b32 v31, off, off offset:272
	s_waitcnt vmcnt(0)
	v_perm_b32 v30, v30, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v30, 16, v29
	scratch_load_b32 v30, off, off offset:256 ; 4-byte Folded Reload
	v_perm_b32 v29, v244, v245, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v30, v246, v30, 0xc0c0004
	v_lshl_or_b32 v30, v30, 16, v29
	v_perm_b32 v29, v198, v240, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v106, 16, v29
	ds_load_u8 v106, v154
	ds_load_u8 v107, v155
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v223
	ds_load_u8 v108, v224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v107, 16, v106
	ds_load_u8 v106, v173
	ds_load_u8 v107, v174
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v156
	ds_load_u8 v108, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v107, 16, v106
	ds_load_u8 v106, v177
	ds_load_u8 v107, v178
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v175
	ds_load_u8 v110, v176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v110, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v107, v107, 16, v106
	ds_load_u8 v106, v179
	ds_load_u8 v110, v180
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v110, v106, 0xc0c0004
	v_lshl_or_b32 v106, v27, 16, v106
	v_perm_b32 v27, v75, v235, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[106:109], v[29:32], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v30, v28, 16, v27
	v_perm_b32 v27, v142, v143, 0xc0c0004
	v_perm_b32 v28, v144, v145, 0xc0c0004
	v_perm_b32 v31, v232, v233, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v28, 16, v27
	v_perm_b32 v27, v138, v139, 0xc0c0004
	v_perm_b32 v28, v140, v141, 0xc0c0004
	v_lshl_or_b32 v28, v28, 16, v27
	v_perm_b32 v27, v230, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v31, 16, v27
	ds_load_u8 v31, v225
	ds_load_u8 v32, v226
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v157
	ds_load_u8 v90, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v90, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v32, 16, v31
	ds_load_u8 v31, v150
	ds_load_u8 v32, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v148
	ds_load_u8 v90, v149
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v90, v32, 0xc0c0004
	v_lshl_or_b32 v90, v21, 16, v23
	v_perm_b32 v21, v136, v229, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v92, v32, 16, v31
	ds_load_u8 v31, v146
	ds_load_u8 v32, v147
	v_lshl_or_b32 v24, v22, 16, v21
	v_perm_b32 v21, v123, v134, 0xc0c0004
	v_perm_b32 v22, v133, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v23, v22, 16, v21
	v_perm_b32 v21, v255, v132, 0xc0c0004
	v_perm_b32 v22, v254, v122, 0xc0c0004
	v_lshl_or_b32 v22, v22, 16, v21
	v_perm_b32 v21, v0, v205, 0xc0c0004
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v91, v25, 16, v31
	v_perm_b32 v25, v117, v118, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[90:93], v[27:30], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v21, v25, 16, v21
	v_cvt_f32_i32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[17:20], v[21:24], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v17, v120, v121, 0xc0c0004
	v_perm_b32 v18, v119, v253, 0xc0c0004
	v_perm_b32 v21, v96, v98, 0xc0c0004
	v_cvt_f32_i32_e32 v151, v10
	v_cvt_f32_i32_e32 v22, v12
	v_cvt_f32_i32_e32 v149, v13
	v_cvt_f32_i32_e32 v150, v14
	v_cvt_f32_i32_e32 v146, v15
	v_cvt_f32_i32_e32 v147, v16
	v_lshl_or_b32 v20, v18, 16, v17
	v_perm_b32 v17, v114, v116, 0xc0c0004
	v_perm_b32 v18, v113, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v18, 16, v17
	v_perm_b32 v17, v105, v112, 0xc0c0004
	v_perm_b32 v18, v104, v111, 0xc0c0004
	v_lshl_or_b32 v18, v18, 16, v17
	v_perm_b32 v17, v97, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v21, 16, v17
	v_wmma_i32_16x16x16_iu8 v[1:8], v[33:36], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v17, v101, v103, 0xc0c0004
	v_perm_b32 v18, v100, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v20, v18, 16, v17
	v_perm_b32 v17, v89, v95, 0xc0c0004
	v_perm_b32 v18, v252, v94, 0xc0c0004
	v_lshl_or_b32 v19, v18, 16, v17
	v_perm_b32 v17, v250, v76, 0xc0c0004
	v_perm_b32 v18, v249, v251, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	v_perm_b32 v17, v237, v206, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v21, v0, v234, 0xc0c0004
	scratch_load_b32 v0, off, off offset:76 ; 4-byte Folded Reload
	v_lshl_or_b32 v17, v21, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[106:109], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v17, v243, v247, 0xc0c0004
	v_perm_b32 v18, v242, v248, 0xc0c0004
	v_lshl_or_b32 v20, v18, 16, v17
	v_perm_b32 v17, v202, v204, 0xc0c0004
	v_perm_b32 v18, v231, v203, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v18, 16, v17
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v0, v227, 0xc0c0004
	scratch_load_b32 v0, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v201, v0, 0xc0c0004
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	v_lshl_or_b32 v18, v18, 16, v17
	v_perm_b32 v17, v186, v200, 0xc0c0004
	scratch_load_b32 v186, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v21, v0, v199, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v17, v21, 16, v17
	v_cvt_f32_i32_e32 v21, v11
	v_wmma_i32_16x16x16_iu8 v[1:8], v[90:93], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v25, v1
	v_cvt_f32_i32_e32 v26, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v157, v3
	v_cvt_f32_i32_e32 v158, v4
	v_cvt_f32_i32_e32 v23, v5
	v_cvt_f32_i32_e32 v24, v6
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v148, v8
.LBB0_16:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s44, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s44, s0
	scratch_load_b32 v0, off, off offset:248 ; 4-byte Folded Reload
	s_ashr_i32 s1, s0, 6
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v27.h, v222.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s45
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v87, s1, 1
	v_add_lshl_u32 v2, v88, s1, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s1, s35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v86, s1, 1
	v_add_lshl_u32 v7, v85, s1, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v8, v84, s1, 1
	v_add_lshl_u32 v10, v83, s1, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v5, v1, s[12:15], 0 offen
	buffer_load_u16 v6, v2, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v1, 0x80000000, v7, vcc_lo
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s1, s33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v2, 0x80000000, v8 :: v_dual_cndmask_b32 v7, 0x80000000, v10
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v8, s0, v82, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x3
	buffer_load_u16 v10, v4, s[28:31], 0 offen
	buffer_load_u16 v11, v1, s[28:31], 0 offen
	buffer_load_u16 v12, v2, s[28:31], 0 offen
	buffer_load_u16 v13, v7, s[28:31], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v2, s0, v81, 1
	v_add_lshl_u32 v4, s0, v80, 1
	v_add_lshl_u32 v7, s0, v78, 1
	v_cndmask_b32_e32 v1, 0x80000000, v8, vcc_lo
	v_add_lshl_u32 v8, s0, v77, 1
	v_add_lshl_u32 v14, s0, v79, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v19, 0x80000000, v14
	s_clause 0x5
	buffer_load_u16 v14, v1, s[28:31], 0 offen
	buffer_load_u16 v15, v2, s[28:31], 0 offen
	buffer_load_u16 v16, v4, s[28:31], 0 offen
	buffer_load_u16 v17, v7, s[28:31], 0 offen
	buffer_load_u16 v18, v8, s[28:31], 0 offen
	buffer_load_u16 v19, v19, s[28:31], 0 offen
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	scratch_load_b32 v7, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, 0
	.loc	1 364 22 is_stmt 1              ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v1.h, v218.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v20.h, v209.l
	v_add_lshl_u32 v51, v51, s1, 1
	v_add_lshl_u32 v52, v52, s1, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v27.l, v1.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v20.l, v1.l
	v_add_lshl_u32 v53, v53, s1, 1
	v_add_lshl_u32 v54, v54, s1, 1
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s4, s34, s27
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v8.h, v221.l
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s4, s4, s33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v94, v1, v20
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v8.l, v1.l
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v2.h, v217.l
	v_mov_b16_e32 v2.l, v1.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v28.h, v219.l
	v_mov_b16_e32 v28.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v84, v1, v8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v29.h, v220.l
	v_mov_b16_e32 v29.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v8, v2, v8
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v86, v1, v28
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(18)
	v_mov_b16_e64 v31.h, v216.l
	v_mov_b16_e32 v31.l, v1.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v85, v1, v29
	v_mul_f32_e32 v29, v2, v29
	v_mul_f32_e32 v28, v2, v28
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v30.h, v215.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v87, v1, v31
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v30.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v31, v2, v31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v32.h, v213.l
	v_mov_b16_e32 v32.l, v1.l
	v_mov_b16_e64 v33.h, v214.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v88, v1, v30
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v33.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v30, v2, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v90, v1, v32
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(16)
	v_mov_b16_e64 v35.h, v212.l
	v_mov_b16_e32 v35.l, v1.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v89, v1, v33
	v_mul_f32_e32 v33, v2, v33
	v_mul_f32_e32 v32, v2, v32
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v34.h, v211.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v91, v1, v35
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v34.l, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v35, v2, v35
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v75.h, v210.l
	v_mov_b16_e32 v75.l, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v49, s0, v49, 1
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v92, v1, v34
	v_mul_f32_e32 v34, v2, v34
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v50, s0, v50, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v93, v1, v75
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v77.h, v1.l
	v_mov_b16_e32 v76.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v79.h, v1.l
	v_mov_b16_e32 v78.h, v1.l
	v_mov_b16_e32 v36.h, v1.l
	v_mov_b16_e32 v80.h, v1.l
	v_mov_b16_e32 v81.h, v1.l
	v_mov_b16_e32 v82.h, v1.l
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_lshl_b32 s12, s27, 4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v83, v1, v27
	v_mul_f32_e32 v27, v2, v27
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(13)
	v_lshrrev_b32_e32 v4, 1, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v4, 0x78, v4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v6, 16, v6
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v7, s27, v7
	s_mov_b32 s27, 0x31027000
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v4, s4, v4, v7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v7, 0x80000000, v51, vcc_lo
	v_dual_cndmask_b32 v51, 0x80000000, v52 :: v_dual_cndmask_b32 v52, 0x80000000, v53
	v_cndmask_b32_e32 v53, 0x80000000, v54, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v54, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v54, v84, v54, v73
	scratch_load_b32 v84, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v83, v83, v84, v74
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v84, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v84, v86, v84, v71
	scratch_load_b32 v86, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v71, v84, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v85, v85, v86, v72
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v86, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v86, v8, v86, v55
	scratch_load_b32 v8, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v55, v86, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v27, v27, v8, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v8, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v70, v70, v27, s2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_clause 0x1
	buffer_load_u16 v27, v49, s[28:31], 0 offen
	buffer_load_u16 v49, v50, s[28:31], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v50, v6, v11 :: v_dual_lshlrev_b32 v13, 16, v13
	v_dual_mul_f32 v11, v5, v11 :: v_dual_lshlrev_b32 v10, 16, v10
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v15, 16, v15
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v28, v28, v8, v68
	scratch_load_b32 v8, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v68, v28, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v29, v29, v8, v69
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v8, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v69, v29, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v11, v129, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v29, v11, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v88, v88, v8, v66
	scratch_load_b32 v8, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v66, v88, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v87, v87, v8, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v8, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v67, v87, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v90, v90, v8, v64
	scratch_load_b32 v8, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v64, v90, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v89, v89, v8, v65
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v8, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v65, v89, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v30, v30, v8, v62
	scratch_load_b32 v8, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v62, v30, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v31, v31, v8, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v8, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v63, v31, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v32, v32, v8, v60
	scratch_load_b32 v8, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v60, v32, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v60, v6, v12
	v_mul_f32_e32 v12, v5, v12
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v63, v6, v17 :: v_dual_lshlrev_b32 v18, 16, v18
	v_mul_f32_e32 v17, v5, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v60, v60, v126, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v17, v17, v22, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v64, v60, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v17, v31, v17, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v33, v33, v8, v61
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v8, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v61, v33, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v61, v6, v15
	v_dual_mul_f32 v15, v5, v15 :: v_dual_mul_f32 v68, v6, v16
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v92, v92, v8, v58
	scratch_load_b32 v8, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v58, v92, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v91, v91, v8, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v8, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v59, v91, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v94, v94, v8, v47
	scratch_load_b32 v8, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v93, v93, v8, v48
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v8, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v34, v34, v8, v56
	scratch_load_b32 v8, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v56, v34, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v35, v35, v8, v57
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x3
	buffer_load_u16 v95, v7, s[28:31], 0 offen
	buffer_load_u16 v51, v51, s[28:31], 0 offen
	buffer_load_u16 v8, v52, s[28:31], 0 offen
	buffer_load_u16 v7, v53, s[28:31], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v73, v54, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v73, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v74, v83, s2
	v_cndmask_b32_e64 v35, v57, v35, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v6, v13
	v_mul_f32_e32 v56, v6, v10
	v_mul_f32_e32 v10, v5, v10
	v_dual_mul_f32 v13, v5, v13 :: v_dual_lshlrev_b32 v14, 16, v14
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v26, v61, v26, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v54, v72, v85, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v62, v6, v14
	v_mul_f32_e32 v14, v5, v14
	v_dual_mul_f32 v16, v5, v16 :: v_dual_mul_f32 v69, v6, v19
	v_dual_mul_f32 v72, v6, v18 :: v_dual_mul_f32 v19, v5, v19
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v9, v14, v9, v55
	v_fma_f32 v25, v62, v25, v53
	v_fma_f32 v14, v15, v151, v70
	v_fma_f32 v16, v16, v21, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v52, v26, s3
	v_cndmask_b32_e64 v9, v55, v9, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v18, v5, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v53, v25, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v61, v63, v158, v67
	v_fma_f32 v15, v68, v157, v66
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v70, v14, s3
	v_cndmask_b32_e64 v16, v30, v16, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v30, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v50, v50, v125, v54
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v19, v19, v150, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v66, v15, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v30
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v21, v72, v23, v58
	v_fma_f32 v22, v69, v24, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v54, v50, s3
	v_cndmask_b32_e64 v19, v35, v19, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0x42800000, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v59, v22, s3
	v_cndmask_b32_e64 v21, v58, v21, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v52, 0xbfb8aa3b, v16 :: v_dual_fmac_f32 v31, 0xbfb8aa3b, v26
	v_dual_fmac_f32 v30, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v10, v128, v28
	v_fma_f32 v57, v57, v127, v65
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v54, 0xbfb8aa3b, v21
	v_exp_f32_e32 v31, v31
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v52
	v_exp_f32_e32 v30, v30
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v55
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v28, v10, s3
	v_cndmask_b32_e64 v28, v65, v57, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v57, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v54
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0x42800000, s8
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v55, 0, 0x42800000, s9
	v_cndmask_b32_e64 v54, 0, 0x42800000, s10
	v_ldexp_f32 v31, v31, v58
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v16
	v_ldexp_f32 v30, v30, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v55, 0xbfb8aa3b, v22 :: v_dual_fmac_f32 v54, 0xbfb8aa3b, v21
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v52, v52
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s8
	v_exp_f32_e32 v55, v55
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v58, null, v31, v31, v26
	v_div_scale_f32 v59, vcc_lo, v26, v31, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v83, v58
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v52, v52, v65
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v57
	v_ldexp_f32 v55, v55, v66
	v_mul_f32_e32 v53, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v35, 0xbfb8aa3b, v15 :: v_dual_add_f32 v52, 1.0, v52
	v_cndmask_b32_e64 v57, 0, 0x42800000, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v96, -v58, v83, 1.0
	v_div_scale_f32 v91, s8, v16, v52, v16
	v_div_scale_f32 v74, null, v55, v55, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v53, 0, 0x42800000, s7
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s7
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v92, v74
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v19
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v35, 0, 0x42800000, s6
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s6
	v_exp_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v15
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v53, v53, v64
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v53, 1.0, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v35, v35, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, s7, v17, v53, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v35, v35, v15
	v_div_scale_f32 v70, s6, v15, v35, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v88, v69
	v_fma_f32 v101, -v69, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v101, v88
	v_mul_f32_e32 v101, v70, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v109, -v69, v101, v70
	v_fmac_f32_e32 v101, v109, v88
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v56, v56, v73, v71
	scratch_load_b32 v73, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v71, v56, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v53, v53, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v71
	v_fma_f32 v102, -v71, v89, 1.0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v12, v12, v73, v32
	scratch_load_b32 v73, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v32, v12, s3
	v_cndmask_b32_e64 v32, v67, v61, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v50, 0xbfb8aa3b, v32
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v50, 0, 0x42800000, s5
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s5
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v50, v50
	v_ldexp_f32 v50, v50, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v50, v50, v32
	v_div_scale_f32 v68, s5, v32, v50, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v87, v66
	v_fma_f32 v100, -v66, v87, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v100, v87
	v_mul_f32_e32 v100, v68, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v108, -v66, v100, v68
	v_fmac_f32_e32 v100, v108, v87
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v13, v13, v73, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v73, null, v52, v52, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v33, v13, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v9
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v18, v18, v149, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v90, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v33
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v34, v18, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v34, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v33, 0, 0x42800000, s4
	v_mul_f32_e32 v56, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v34
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v103, -v73, v90, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v89, v102, v89
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, s1
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v90, v103, v90
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v33, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v102, v72, v89
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v103, v91, v90
	v_fma_f32 v110, -v71, v102, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v111, -v73, v103, v91
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v33, v61
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v102, v110, v89 :: v_dual_fmac_f32 v103, v111, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v61, s0, v25, v30, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v34, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v60, null, v30, v30, v25
	v_div_scale_f32 v64, null, v33, v33, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v84, v60
	v_div_scale_f32 v65, s4, v9, v33, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v86, v64
	v_div_scale_f32 v62, null, v34, v34, v14
	v_div_scale_f32 v63, s1, v14, v34, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v85, v62
	v_fma_f32 v97, -v60, v84, 1.0
	v_fmac_f32_e32 v83, v96, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v99, -v64, v86, 1.0
	v_fmac_f32_e32 v84, v97, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v96, v59, v83
	v_fmac_f32_e32 v86, v99, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v98, -v62, v85, 1.0
	v_mul_f32_e32 v97, v61, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v104, -v58, v96, v59
	v_mul_f32_e32 v99, v65, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v98, v85
	v_fma_f32 v105, -v60, v97, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v96, v104, v83
	v_fma_f32 v107, -v64, v99, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v98, v63, v85 :: v_dual_fmac_f32 v97, v105, v84
	v_fma_f32 v58, -v58, v96, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v99, v107, v86
	v_fma_f32 v106, -v62, v98, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v60, v97, v61
	v_div_fmas_f32 v58, v58, v83, v96
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v61, -v64, v99, v65
	v_fmac_f32_e32 v98, v106, v85
	v_div_fmas_f32 v59, v59, v84, v97
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v26, v58, v31, v26
	v_fma_f32 v64, -v71, v102, v72
	v_fma_f32 v60, -v62, v98, v63
	v_fma_f32 v62, -v66, v100, v68
	v_fma_f32 v63, -v69, v101, v70
	v_div_fixup_f32 v25, v59, v30, v25
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v23, v23, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v60, v60, v85, v98
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v65, -v73, v103, v91
	v_div_fmas_f32 v31, v61, v86, v99
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v14, v60, v34, v14
	v_div_fmas_f32 v30, v62, v87, v100
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v9, v31, v33, v9
	v_div_fmas_f32 v26, v63, v88, v101
	s_mov_b32 vcc_lo, s7
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v24, v24, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v25, v64, v89, v102
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v30, v30, v50, v32
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v11, v11, v14 :: v_dual_mul_f32 v10, v10, v9
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v14, v65, v90, v103
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v77.l, v23.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v9, v25, v53, v17
	v_div_fixup_f32 v15, v26, v35, v15
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v17, v28, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v14, v14, v52, v16
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v16, 1, v77
	v_mov_b16_e32 v76.l, v10.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v13, v13, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v15, v29, v15 :: v_dual_mul_f32 v12, v12, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v14, v23, v16, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v16, 1, v76
	v_mov_b16_e32 v79.l, v13.h
	v_mov_b16_e32 v78.l, v24.h
	v_cmp_o_f32_e64 s4, v10, v10
	v_mov_b16_e32 v36.l, v11.h
	v_add3_u32 v10, v10, v16, 0x7fff
	v_and_b32_e32 v16, 1, v79
	v_cmp_o_f32_e64 s7, v13, v13
	v_mov_b16_e32 v80.l, v12.h
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_mov_b16_e32 v81.l, v17.h
	v_add3_u32 v13, v13, v16, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v16, v54, v67
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v25, 1, v78
	v_and_b32_e32 v9, 1, v36
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v31, 16, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v24, v24
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v23, v24, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v36, v6, v31 :: v_dual_and_b32 v25, 1, v80
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v11, v11
	v_and_b32_e32 v24, 1, v81
	v_add3_u32 v11, v11, v9, 0x7fff
	v_cmp_o_f32_e64 s8, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v14.h, vcc_lo
	v_add3_u32 v12, v12, v25, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v17, v17
	v_add3_u32 v17, v17, v24, 0x7fff
	v_cndmask_b16 v11.l, 0x7fff, v10.h, s4
	v_cndmask_b16 v13.l, 0x7fff, v12.h, s8
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.l, 0x7fff, v23.h, s0
	v_cndmask_b16 v10.h, 0x7fff, v17.h, s5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v57
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v23, -v74, v92, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v18
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s11
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v29, 16, v95
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v82.l, v15.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v92, v23, v92
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v12, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v23, null, v16, v16, v21
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v17, v25
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, vcc_lo, v22, v55, v22
	v_rcp_f32_e32 v28, v23
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_and_b32 v14, 1, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v12, v12, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v25, v26, v92
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v15, v14, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v48, v93, s2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v74, v25, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v23, v28, 1.0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v47, v94, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v47, v6, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v12, v12, v18
	v_fmac_f32_e32 v28, v33, v28
	v_dual_fmac_f32 v25, v32, v92 :: v_dual_mul_f32 v52, v2, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v33, v35
	v_div_scale_f32 v32, s0, v21, v16, v21
	v_fma_f32 v26, -v74, v25, v26
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v29, v5, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v17, v17, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v25, v26, v92, v25
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v51, -v35, v33, 1.0
	v_mul_f32_e32 v48, v32, v28
	v_rcp_f32_e32 v34, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v20, v2, v20 :: v_dual_mul_f32 v31, v5, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v51, v33
	v_fma_f32 v26, -v23, v48, v32
	v_div_scale_f32 v51, s4, v18, v12, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v10.l, 0x7fff, v14.h, s6
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v48, v26, v28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v26, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v30, v34, 1.0
	v_mul_f32_e32 v53, v51, v33
	v_fma_f32 v23, -v23, v48, v32
	v_fmac_f32_e32 v34, v50, v34
	v_div_scale_f32 v50, s1, v19, v17, v19
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v23, v23, v28, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v28, off, off offset:232
	scratch_load_b32 v54, off, off offset:116
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v16, v23, v16, v21
	v_div_fixup_f32 v21, v25, v55, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v23.h, v1.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v25.l, v1.l
	v_mov_b16_e64 v25.h, v159.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v26, v52, v26, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v52, v50, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v46, v26, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v30, v52, v50
	v_fma_f32 v46, -v35, v53, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v20, v20, v54, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v52, v32, v34 :: v_dual_fmac_f32 v53, v46, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v32, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v45, v20, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v29, v28, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v30, v52, v50
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v30, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v29, v29, v34, v52
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v17, v29, v17, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v20, v28, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v20.l, v1.l
	v_mov_b16_e64 v20.h, v208.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v28, off, off offset:164
	scratch_load_b32 v29, off, off offset:112
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v30, v31, v30, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v35, v53, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v30, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v31, v33, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v30, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v31, v12, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v18, off, off offset:224 ; 4-byte Folded Reload
	v_fma_f32 v32, v36, v32, v15
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v19, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.h, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v15, v32, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.l, v12.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v14, v26, v17
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v26.l, v1.l
	v_mov_b16_e64 v26.h, v160.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v19, 1, v19
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v19, v12, v19, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v18, v47, v18, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v24, v18, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v14.h
	v_mov_b16_e32 v18.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v24.l, v1.l
	v_mov_b16_e64 v24.h, v207.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
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
	v_mov_b16_e32 v21.l, v14.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v16, v17, v16
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v17, v1, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v19, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v21, 1, v21
	v_mov_b16_e32 v23.l, v16.h
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v15, v17, v15, v44
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v17, 16, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v12, 1, v23
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v23, v1, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v44, v15, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v22, v6, v17
	v_mul_f32_e32 v17, v5, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v12, v16, v12, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v19, v23, v19, v43
	v_fma_f32 v22, v22, v148, v15
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v23, 16, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v21, v14, v21, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v43, v19, s2
	v_cndmask_b32_e64 v15, v15, v22, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.h, 0x7fff, v21.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v22, v6, v23
	v_mul_f32_e32 v23, v5, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v3, v22, v3, v14
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v22, v2, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v14, v3, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v14, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v20, v2, v20
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v22, v22, v28, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v19, v19
	v_mul_f32_e32 v27, 0xbfb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v41, v22, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v27, v1, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v19, v19, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v27, v27, v30, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v39, v27, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v14, v20, v14, v42
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v20, v1, v26
	v_mul_f32_e32 v26, v2, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v42, v14, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v20, v29, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v17, v17, v147, v14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v40, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v14, v14, v17, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v17, v23, v146, v22
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v23, null, v19, v19, v15
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v28, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v22, v17, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v29, 0xbfb8aa3b, v17
	v_cndmask_b32_e64 v28, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v3 :: v_dual_fmac_f32 v29, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v22, v24
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v24, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v22, v22, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v23, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v30, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v14
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v28, v28, v31
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, vcc_lo, v15, v19, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v29, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v29, 1.0, v29 :: v_dual_lshlrev_b32 v8, 16, v8
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_mul_f32 v35, v6, v8
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v6, v7
	v_mul_f32_e32 v2, v2, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, null, v29, v29, v17
	v_div_scale_f32 v30, null, v22, v22, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v5, v7
	v_mul_f32_e32 v5, v5, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v35, v35, v189, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v33, v30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v2, v152, v37
	v_fma_f32 v6, v6, v186, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v37, v2, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v6, v20, v6, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v30, v33, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v187, v2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v39, v33
	v_mul_f32_e32 v31, v32, v24
	v_rcp_f32_e32 v39, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v5, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v23, v31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v31, v36, v24
	v_div_scale_f32 v36, s0, v3, v22, v3
	v_fma_f32 v23, -v23, v31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v23, v23, v24, v31
	v_fma_f32 v31, -v41, v39, 1.0
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e64 s0, 0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v0, 0x5410 :: v_dual_fmac_f32 v39, v31, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v28, v28, v14
	v_div_scale_f32 v31, s4, v17, v29, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v40, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v0, v0, 8, v0
	v_and_b32_e32 v0, 0x540054, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v34, v40, 1.0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v0, v0, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, s1, v14, v28, v14
	v_dual_mul_f32 v32, v36, v33 :: v_dual_mul_f32 v25, v42, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v30, v32, v36
	v_fmac_f32_e32 v32, v24, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v24, v26, v153, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v30, -v30, v32, v36
	v_fma_f32 v36, -v34, v25, v42
	v_mul_f32_e32 v26, v31, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v38, v24, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v8, v30, v33, v32
	v_fmac_f32_e32 v25, v36, v40
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v7, v188, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v38, -v41, v26, v31
	v_div_fixup_f32 v3, v8, v22, v3
	v_fma_f32 v30, -v34, v25, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.h, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v24, v7, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v25, v30, v40, v25
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v14, v25, v28, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v7, v14
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v27, v35, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.l, v7.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v14, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.h, v1.l
	v_mov_b16_e32 v14.l, v3.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v26, v38, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v3, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v41, v26, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v26, v31, v39, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v26, v29, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v12.h, vcc_lo
	v_mov_b16_e32 v12.h, v1.l
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v2, v5
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v5, v23, v19, v15
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v15.h, v1.l
	v_mov_b16_e32 v15.l, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v5, v6, v5 :: v_dual_and_b32 v6, 1, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v8, 1, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v12.l, v5.h
	v_add3_u32 v1, v7, v6, 0x7fff
	v_and_b32_e32 v7, 1, v14
	v_cmp_o_f32_e64 s1, v5, v5
	v_add3_u32 v6, v2, v8, 0x7fff
	v_and_b32_e32 v8, 1, v12
	v_cndmask_b16 v1.h, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v2, v3, v7, 0x7fff
	v_cndmask_b32_e64 v3, v18, v11, s0
	v_add3_u32 v7, v5, v8, 0x7fff
	v_mov_b32_e32 v8, 0x7632
	v_cndmask_b16 v1.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v6.l, 0x7fff, v2.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s1
	v_cndmask_b32_e64 v5, 0x3276, v8, s0
	s_delay_alu instid0(VALU_DEP_4)
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
	buffer_store_b128 v[0:3], v9, s[24:27], 0 offen
	buffer_store_b128 v[5:8], v4, s[24:27], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 328
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 54
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 328
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 32220
; TotalNumSgprs: 56
; NumVgprs: 256
; ScratchSize: 328
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 328
    .sgpr_count:     56
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_swiglu_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 113
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
