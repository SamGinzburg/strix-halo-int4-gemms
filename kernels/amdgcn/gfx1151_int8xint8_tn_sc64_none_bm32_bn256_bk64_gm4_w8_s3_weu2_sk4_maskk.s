	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 309 0                         ; generate_amdgcn.py:309:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
.Ltmp0:
	.loc	1 319 16 prologue_end           ; generate_amdgcn.py:319:16
	s_abs_i32 s7, s2
	.loc	1 327 14                        ; generate_amdgcn.py:327:14
	v_lshrrev_b32_e32 v62, 4, v0
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v58, 15, v0
	.loc	1 327 14                        ; generate_amdgcn.py:327:14
	v_lshrrev_b32_e32 v63, 2, v0
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshlrev_b32_e32 v61, 3, v0
	v_or_b32_e32 v70, 0x3f0, v0
	.loc	1 327 14                        ; generate_amdgcn.py:327:14
	v_or_b32_e32 v64, 16, v62
	v_or_b32_e32 v65, 32, v62
	v_or_b32_e32 v66, 48, v62
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_and_b32_e32 v2, 24, v61
	v_or_b32_e32 v71, 0x7f0, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:317:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s34, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_lshr_b32 s10, s10, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:317:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:316:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 318 24 is_stmt 1              ; generate_amdgcn.py:318:24
	s_lshl_b32 s4, s4, 2
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_mul_lo_u32 v3, s35, v62
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_lshl_add_u32 v53, v58, 4, v3
	v_mad_u64_u32 v[54:55], null, s35, 48, v[53:54]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
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
	.loc	1 320 19                        ; generate_amdgcn.py:320:19
	s_lshl_b32 s6, s5, 2
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_mul_i32 s5, s5, s4
	.loc	1 321 31                        ; generate_amdgcn.py:321:31
	s_sub_i32 s7, s8, s6
	.loc	1 322 29                        ; generate_amdgcn.py:322:29
	s_sub_i32 s5, s2, s5
	.loc	1 321 20                        ; generate_amdgcn.py:321:20
	s_min_i32 s7, s7, 4
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_abs_i32 s4, s5
	s_abs_i32 s16, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	v_mul_lo_u32 v1, s34, v63
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_mov_b32 s39, s11
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_cvt_u32_f32 s17, s17
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_mov_b32 s38, s10
	s_mov_b64 s[28:29], s[14:15]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_mul_i32 s18, s18, s17
	s_mul_hi_u32 s2, s17, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s17, s17, s2
	s_mul_hi_u32 s2, s4, s17
	s_xor_b32 s17, s5, s7
	s_mul_i32 s18, s2, s16
	s_ashr_i32 s19, s17, 31
	s_sub_i32 s4, s4, s18
	s_add_i32 s17, s2, 1
	s_sub_i32 s18, s4, s16
	s_cmp_ge_u32 s4, s16
	s_cselect_b32 s2, s17, s2
	s_cselect_b32 s4, s18, s4
	s_add_i32 s17, s2, 1
	s_cmp_ge_u32 s4, s16
	s_cselect_b32 s2, s17, s2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:387:30 ]
	s_add_i32 s18, s31, 63
.Ltmp13:
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_xor_b32 s2, s2, s19
	.loc	1 368 22                        ; generate_amdgcn.py:368:22
	s_lshl_b32 s30, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:387:30 ]
	s_ashr_i32 s3, s18, 31
.Ltmp15:
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_sub_i32 s2, s2, s19
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:387:30 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s7, s2, s7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:387:30 ]
	s_add_i32 s18, s18, s3
.Ltmp19:
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_sub_i32 s3, s5, s7
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v4, s30, v62
	.loc	1 322 13                        ; generate_amdgcn.py:322:13
	s_add_i32 s3, s3, s6
.Ltmp20:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s17, s31, 0xff
.Ltmp21:
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v3, s30, v63
	v_or_b32_e32 v5, s30, v64
	v_or_b32_e32 v6, s30, v65
	v_or_b32_e32 v7, s30, v66
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	s_lshl_b32 s50, s2, 8
	.loc	1 325 14                        ; generate_amdgcn.py:325:14
	s_lshl_b32 s26, s3, 5
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_mul_i32 s20, s35, s30
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s17, 0xff
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s2, s31, v4
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s3, -1, 0
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_add_i32 s7, s50, s20
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s4, s31, v5
	v_cmp_gt_i32_e64 s5, s31, v6
	v_cmp_gt_i32_e64 s6, s31, v7
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	v_add3_u32 v55, v1, v2, s26
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v1, s7, v53
	v_add_nc_u32_e32 v2, s7, v54
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 s2, s2, s3
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_lshl_b32 s33, s35, 4
	s_lshl_b32 s48, s35, 5
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s4, s4, s3
	s_and_b32 s5, s5, s3
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v6, 0x80000000, v1, s2
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 s2, s6, s3
	s_cmpk_gt_i32 s17, 0x1ff
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v68, s33, v53
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	s_mul_i32 s16, s34, s30
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v17, 0x80000000, v2, s2
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s2, -1, 0
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s27, s30, 0x100
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v69, s48, v53
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	v_add_nc_u32_e32 v3, s16, v55
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v21, s27, v63
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v4, s7, v68
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v22, s27, v62
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v5, s7, v69
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v23, s27, v64
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	.loc	1 372 30 is_stmt 0              ; generate_amdgcn.py:372:30
	s_lshl_b32 s6, s34, 8
	.loc	1 378 30 is_stmt 1              ; generate_amdgcn.py:378:30
	s_lshl_b32 s19, s35, 8
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v21
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v24, s27, v65
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v3, 0x80000000, v4, s4
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	v_add3_u32 v26, s16, s6, v55
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_add_i32 s7, s7, s19
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s4, s31, v22
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v25, s27, v66
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v4, 0x80000000, v5, s5
	.loc	1 378 30 is_stmt 0              ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v27, s7, v53
	.loc	1 370 23 is_stmt 1              ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s5, s31, v23
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v28, s7, v68
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s6, s31, v24
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_clause 0x3
	buffer_load_b128 v[5:8], v6, s[36:39], 0 offen
	buffer_load_b128 v[9:12], v3, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v4, s[36:39], 0 offen
	buffer_load_b128 v[17:20], v17, s[36:39], 0 offen
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_cndmask_b32_e32 v3, 0x80000000, v26, vcc_lo
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v29, s7, v69
	v_add_nc_u32_e32 v30, s7, v54
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s7, s31, v25
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e32 v4, 0x80000000, v27, vcc_lo
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v39, 0, v61
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e32 v25, 0x80000000, v28, vcc_lo
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s6, s2
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	buffer_load_b64 v[1:2], v1, s[8:11], 0 offen
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s7, s2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_dual_cndmask_b32 v33, 0x80000000, v30 :: v_dual_add_nc_u32 v40, v39, v61
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	buffer_load_b64 v[37:38], v3, s[8:11], 0 offen
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_clause 0x3
	buffer_load_b128 v[21:24], v4, s[36:39], 0 offen
	buffer_load_b128 v[25:28], v25, s[36:39], 0 offen
	buffer_load_b128 v[29:32], v29, s[36:39], 0 offen
	buffer_load_b128 v[33:36], v33, s[36:39], 0 offen
	v_lshrrev_b32_e32 v3, 1, v0
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_or_b32_e32 v4, 16, v58
	s_mov_b32 s16, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s17, 0x2ff
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_waitcnt vmcnt(5)
	ds_store_b64 v39, v[1:2] offset:32768
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	ds_store_b128 v40, v[5:8]
	ds_store_b128 v40, v[9:12] offset:4096
	ds_store_b128 v40, v[13:16] offset:8192
	ds_store_b128 v40, v[17:20] offset:12288
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v39, v[37:38] offset:34816
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v40, v[21:24] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v40, v[25:28] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v40, v[29:32] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v40, v[33:36] offset:28672
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_or_b32_e32 v1, 0x3f0, v0
	v_or_b32_e32 v2, 0x7f0, v0
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_and_b32_e32 v67, 0x70, v3
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr67
.LBB0_3:                                ; %Flow62
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v5, s26, v58
	v_or_b32_e32 v4, s26, v4
	v_and_b32_e32 v118, 0xf0, v0
	s_ashr_i32 s49, s18, 6
	v_or_b32_e32 v85, s50, v0
	v_mul_lo_u32 v120, v5, s49
	v_mul_lo_u32 v119, v4, s49
	v_lshlrev_b32_e32 v59, 2, v118
	v_lshlrev_b32_e32 v60, 1, v118
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s51, s17, 8
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_lshlrev_b32_e32 v1, 5, v0
	v_lshlrev_b32_e32 v2, 1, v0
.Ltmp23:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_lshlrev_b32_e32 v72, 4, v0
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v67, 0x70, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v1, 32, v1
	v_and_b32_e32 v9, 28, v2
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v74, 0, v60
	v_mov_b32_e32 v90, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v10, 0, v59, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v73, v10, v9
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v110, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v117, 0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_add_i32 s14, s27, 0x100
	s_mov_b32 s15, 1
	s_and_b32 s41, s13, 0xffff
	s_mov_b32 s40, s12
	s_and_b32 s45, s29, 0xffff
	s_mov_b32 s44, s28
	s_add_i32 s1, 0, 0x8000
	s_add_i32 s6, 0, 0x8800
	s_add_i32 s7, 0, 0x4000
	s_add_i32 s51, s51, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 334 14                        ; generate_amdgcn.py:334:14
	s_lshl_b32 s5, s17, 8
	s_mov_b32 s0, s30
	s_mov_b32 s30, s27
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s27, s14, s5
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v75, s1, v58
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v11, s27, v63
	.loc	1 372 30                        ; generate_amdgcn.py:372:30
	v_mad_u64_u32 v[9:10], null, s27, s34, v[55:56]
	s_mov_b32 s4, s16
	.loc	1 372 22 is_stmt 0              ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v25, s1, v70
	.loc	1 369 23 is_stmt 1              ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v11
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add3_u32 v76, s4, v67, v58
	.loc	1 378 30 is_stmt 0              ; generate_amdgcn.py:378:30
	s_mul_i32 s4, s27, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s4, s4, s50
	.loc	1 372 22 is_stmt 1              ; generate_amdgcn.py:372:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b64 v[56:57], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v9, v75 offset:416
	ds_load_u8 v10, v75 offset:384
	ds_load_u8 v11, v75 offset:480
	ds_load_u8 v12, v75 offset:448
	ds_load_u8 v13, v75 offset:288
	ds_load_u8 v14, v75 offset:256
	ds_load_u8 v15, v75 offset:352
	ds_load_u8 v16, v75 offset:320
	ds_load_u8 v17, v75 offset:160
	ds_load_u8 v18, v75 offset:128
	ds_load_u8 v19, v75 offset:224
	ds_load_u8 v20, v75 offset:192
	ds_load_u8 v21, v75 offset:96
	ds_load_u8 v22, v75 offset:64
	ds_load_u8 v23, v75
	ds_load_u8 v24, v75 offset:32
	ds_load_u8 v26, v76 offset:3328
	ds_load_u8 v30, v76 offset:3072
	ds_load_u8 v31, v76 offset:3840
	ds_load_u8 v32, v76 offset:3584
	ds_load_u8 v33, v76 offset:2304
	ds_load_u8 v34, v76 offset:2048
	ds_load_u8 v35, v76 offset:2816
	ds_load_u8 v36, v76 offset:2560
	ds_load_u8 v37, v76 offset:1280
	ds_load_u8 v38, v76 offset:1024
	ds_load_u8 v39, v76 offset:1792
	ds_load_u8 v40, v76 offset:1536
	ds_load_u8 v41, v76 offset:256
	ds_load_u8 v42, v76
	ds_load_u8 v43, v76 offset:768
	ds_load_u8 v44, v76 offset:512
	ds_load_u8 v45, v75 offset:928
	ds_load_u8 v46, v75 offset:896
	ds_load_u8 v47, v75 offset:992
	ds_load_u8 v48, v75 offset:960
	ds_load_u8 v49, v75 offset:800
	ds_load_u8 v50, v75 offset:768
	ds_load_u8 v51, v75 offset:864
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v15, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v19, v23, v24, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v23, v32, v31, 0xc0c0004
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_lshl_or_b32 v28, v14, 16, v13
	v_perm_b32 v13, v18, v17, 0xc0c0004
	v_perm_b32 v17, v22, v21, 0xc0c0004
	v_perm_b32 v21, v30, v26, 0xc0c0004
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v14, v75 offset:704
	ds_load_u8 v16, v75 offset:544
	ds_load_u8 v18, v75 offset:576
	ds_load_u8 v78, v75 offset:400
	ds_load_u8 v79, v75 offset:496
	v_lshl_or_b32 v27, v15, 16, v13
	ds_load_u8 v13, v75 offset:512
	ds_load_u8 v15, v75 offset:608
	ds_load_u8 v20, v76 offset:7424
	ds_load_u8 v24, v76 offset:7936
	ds_load_u8 v31, v76 offset:7680
	ds_load_u8 v22, v76 offset:7168
	ds_load_u8 v52, v76 offset:6400
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v32, v36, v35, 0xc0c0004
	v_lshl_or_b32 v26, v17, 16, v19
	v_lshl_or_b32 v36, v23, 16, v21
	ds_load_u8 v17, v76 offset:6144
	ds_load_u8 v19, v76 offset:6912
	ds_load_u8 v23, v76 offset:6656
	ds_load_u8 v10, v75 offset:832
	ds_load_u8 v12, v75 offset:672
	v_lshl_or_b32 v29, v11, 16, v9
	ds_load_u8 v9, v75 offset:640
	ds_load_u8 v11, v75 offset:736
	v_perm_b32 v30, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v21, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v33, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v42, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v13, v13, v16, 0xc0c0004
	v_lshl_or_b32 v35, v32, 16, v30
	v_perm_b32 v30, v40, v39, 0xc0c0004
	v_perm_b32 v40, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v15, v18, v15, 0xc0c0004
	ds_load_u8 v32, v76 offset:5376
	ds_load_u8 v39, v76 offset:4352
	v_lshl_or_b32 v34, v30, 16, v21
	ds_load_u8 v21, v76 offset:5120
	ds_load_u8 v30, v76 offset:5888
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v17, v17, v52, 0xc0c0004
	ds_load_u8 v37, v76 offset:5632
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v19, v23, v19, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v10, v10, v51, 0xc0c0004
	v_lshl_or_b32 v48, v42, 16, v40
	ds_load_u8 v16, v76 offset:2688
	ds_load_u8 v18, v76 offset:1408
	ds_load_u8 v40, v76 offset:1664
	ds_load_u8 v23, v76 offset:384
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v11, v14, v11, 0xc0c0004
	ds_load_u8 v14, v76 offset:2432
	v_perm_b32 v20, v22, v20, 0xc0c0004
	ds_load_u8 v22, v76 offset:1152
	v_perm_b32 v24, v31, v24, 0xc0c0004
	ds_load_u8 v31, v76 offset:1920
	v_lshl_or_b32 v45, v15, 16, v13
	v_lshl_or_b32 v51, v19, 16, v17
	ds_load_u8 v13, v76 offset:128
	ds_load_u8 v15, v76 offset:896
	ds_load_u8 v19, v76 offset:640
	v_perm_b32 v38, v44, v43, 0xc0c0004
	ds_load_u8 v43, v76 offset:4864
	v_lshl_or_b32 v52, v24, 16, v20
	v_perm_b32 v44, v50, v49, 0xc0c0004
	ds_load_u8 v50, v76 offset:3456
	v_lshl_or_b32 v33, v38, 16, v33
	v_lshl_or_b32 v47, v10, 16, v44
	ds_load_u8 v10, v76 offset:3200
	ds_load_u8 v38, v76 offset:3968
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v18, v22, v18, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v31, v40, v31, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v13, v23, 0xc0c0004
	ds_load_u8 v23, v76 offset:5248
	ds_load_u8 v49, v76 offset:4608
	ds_load_u8 v41, v76 offset:4096
	v_perm_b32 v17, v21, v32, 0xc0c0004
	ds_load_u8 v21, v76 offset:7552
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v15, v19, v15, 0xc0c0004
	ds_load_u8 v19, v76 offset:6016
	ds_load_u8 v40, v76 offset:5504
	v_perm_b32 v20, v37, v30, 0xc0c0004
	ds_load_u8 v30, v76 offset:7296
	ds_load_u8 v37, v76 offset:8064
	ds_load_u8 v22, v76 offset:6784
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v32, v49, v43, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v21, v30, v21, 0xc0c0004
	ds_load_u8 v30, v76 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v30, v19, 0xc0c0004
	ds_load_u8 v30, v75 offset:432
	v_perm_b32 v9, v9, v12, 0xc0c0004
	ds_load_u8 v12, v76 offset:3712
	v_perm_b32 v24, v41, v39, 0xc0c0004
	ds_load_u8 v39, v76 offset:7808
	v_perm_b32 v10, v10, v50, 0xc0c0004
	v_lshl_or_b32 v46, v11, 16, v9
	ds_load_u8 v9, v76 offset:2176
	ds_load_u8 v11, v76 offset:2944
	v_lshl_or_b32 v50, v20, 16, v17
	v_lshl_or_b32 v49, v32, 16, v24
	ds_load_u8 v32, v75 offset:176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v12, v12, v38, 0xc0c0004
	ds_load_u8 v38, v76 offset:6528
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v9, v14, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v16, v11, 0xc0c0004
	ds_load_u8 v16, v76 offset:7040
	ds_load_u8 v14, v76 offset:6272
	v_perm_b32 v41, v39, v37, 0xc0c0004
	ds_load_u8 v37, v76 offset:4480
	ds_load_u8 v39, v76 offset:4736
	v_lshl_or_b32 v44, v41, 16, v21
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v16, v22, v16, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v14, v38, 0xc0c0004
	ds_load_u8 v38, v76 offset:4224
	ds_load_u8 v22, v76 offset:4992
	v_perm_b32 v23, v23, v40, 0xc0c0004
	v_lshl_or_b32 v40, v12, 16, v10
	v_lshl_or_b32 v43, v16, 16, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v42, v19, 16, v23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v77, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v39, v22, 0xc0c0004
	v_lshl_or_b32 v39, v11, 16, v9
	v_lshl_or_b32 v38, v31, 16, v18
	v_lshl_or_b32 v37, v15, 16, v13
	ds_load_u8 v31, v75 offset:336
	v_lshl_or_b32 v41, v22, 16, v77
	v_wmma_i32_16x16x16_iu8 v[17:24], v[33:36], v[26:29], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[37:40], v[26:29], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v26, v75 offset:464
	ds_load_u8 v27, v75 offset:304
	ds_load_u8 v28, v75 offset:272
	ds_load_u8 v29, v75 offset:368
	v_wmma_i32_16x16x16_iu8 v[17:24], v[49:52], v[45:48], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[41:44], v[45:48], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v26, v26, v79, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v31, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v28, v75 offset:208
	v_perm_b32 v30, v78, v30, 0xc0c0004
	v_lshl_or_b32 v48, v26, 16, v30
	ds_load_u8 v26, v75 offset:144
	ds_load_u8 v27, v75 offset:240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v75 offset:112
	v_perm_b32 v26, v26, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v27, 16, v26
	ds_load_u8 v26, v75 offset:80
	ds_load_u8 v27, v75 offset:16
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	ds_load_u8 v28, v75 offset:48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v27, v28, 0xc0c0004
	ds_load_u8 v28, v75 offset:944
	v_lshl_or_b32 v45, v26, 16, v27
	ds_load_u8 v26, v75 offset:912
	ds_load_u8 v25, v25
	ds_load_u8 v27, v75 offset:976
	v_wmma_i32_16x16x16_iu8 v[77:84], v[37:40], v[45:48], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	ds_load_u8 v28, v75 offset:816
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v75 offset:784
	v_lshl_or_b32 v124, v25, 16, v26
	ds_load_u8 v25, v75 offset:688
	ds_load_u8 v26, v75 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v27, v28, 0xc0c0004
	ds_load_u8 v28, v75 offset:880
	ds_load_u8 v29, v75 offset:848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v123, v28, 16, v27
	ds_load_u8 v26, v75 offset:752
	ds_load_u8 v27, v75 offset:720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v122, v26, 16, v25
	ds_load_u8 v25, v75 offset:560
	ds_load_u8 v26, v75 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v75 offset:624
	ds_load_u8 v27, v75 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v121, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[33:36], v[45:48], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v33, v75 offset:1440
	ds_load_u8 v34, v75 offset:1408
	ds_load_u8 v35, v75 offset:1504
	ds_load_u8 v36, v75 offset:1472
	ds_load_u8 v37, v75 offset:1312
	ds_load_u8 v38, v75 offset:1280
	ds_load_u8 v39, v75 offset:1376
	ds_load_u8 v40, v75 offset:1344
	v_wmma_i32_16x16x16_iu8 v[77:84], v[41:44], v[121:124], v[77:84] neg_lo:[1,1,0]
	ds_load_u8 v41, v75 offset:1152
	v_wmma_i32_16x16x16_iu8 v[25:32], v[49:52], v[121:124], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v75 offset:1184
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v40, v39, 0xc0c0004
	v_lshl_or_b32 v36, v35, 16, v33
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v35, v38, 16, v37
	ds_load_u8 v33, v75 offset:1248
	ds_load_u8 v37, v75 offset:1216
	ds_load_u8 v38, v75 offset:1056
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v34, v41, v34, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v37, v33, 0xc0c0004
	ds_load_u8 v37, v75 offset:1024
	v_lshl_or_b32 v34, v33, 16, v34
	ds_load_u8 v33, v75 offset:1120
	ds_load_u8 v39, v75 offset:1088
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	ds_load_u8 v38, v76 offset:11520
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v39, v33, 0xc0c0004
	ds_load_u8 v39, v76 offset:11264
	v_lshl_or_b32 v33, v33, 16, v37
	ds_load_u8 v37, v76 offset:12032
	ds_load_u8 v40, v76 offset:11776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v39, v76 offset:10496
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v40, v37, 0xc0c0004
	ds_load_u8 v40, v76 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v76 offset:11008
	ds_load_u8 v41, v76 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v40, 0xc0c0004
	v_lshl_or_b32 v40, v37, 16, v38
	ds_load_u8 v37, v76 offset:9472
	ds_load_u8 v38, v76 offset:9216
	v_lshl_or_b32 v39, v41, 16, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v76 offset:9984
	ds_load_u8 v41, v76 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v41, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v76 offset:8448
	ds_load_u8 v41, v76 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v41, v37, 0xc0c0004
	ds_load_u8 v41, v76 offset:8960
	ds_load_u8 v42, v76 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v41, 16, v37
	ds_load_u8 v41, v76 offset:11648
	ds_load_u8 v42, v76 offset:11392
	v_wmma_i32_16x16x16_iu8 v[17:24], v[37:40], v[33:36], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v76 offset:12160
	ds_load_u8 v43, v76 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v76 offset:10624
	ds_load_u8 v44, v76 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v76 offset:11136
	ds_load_u8 v45, v76 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	v_lshl_or_b32 v44, v42, 16, v41
	ds_load_u8 v41, v76 offset:9600
	ds_load_u8 v42, v76 offset:9344
	v_lshl_or_b32 v43, v45, 16, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v76 offset:10112
	ds_load_u8 v45, v76 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v45, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v76 offset:8576
	ds_load_u8 v45, v76 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v45, v41, 0xc0c0004
	ds_load_u8 v45, v76 offset:9088
	ds_load_u8 v46, v76 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v45, 16, v41
	v_wmma_i32_16x16x16_iu8 v[9:16], v[41:44], v[33:36], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v33, v75 offset:1456
	ds_load_u8 v34, v75 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v75 offset:1520
	ds_load_u8 v35, v75 offset:1488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v75 offset:1328
	ds_load_u8 v36, v75 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v75 offset:1392
	ds_load_u8 v45, v75 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v36, 0xc0c0004
	v_lshl_or_b32 v36, v34, 16, v33
	ds_load_u8 v33, v75 offset:1200
	ds_load_u8 v34, v75 offset:1168
	v_lshl_or_b32 v35, v45, 16, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v75 offset:1264
	ds_load_u8 v45, v75 offset:1232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v45, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v75 offset:1072
	ds_load_u8 v45, v75 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v45, v33, 0xc0c0004
	ds_load_u8 v45, v75 offset:1136
	ds_load_u8 v46, v75 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v45, 16, v33
	v_wmma_i32_16x16x16_iu8 v[25:32], v[37:40], v[33:36], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[41:44], v[33:36], v[77:84] neg_lo:[1,1,0]
	ds_load_u8 v33, v75 offset:1952
	ds_load_u8 v34, v75 offset:1920
	ds_load_u8 v35, v75 offset:2016
	ds_load_u8 v36, v75 offset:1984
	ds_load_u8 v37, v75 offset:1824
	ds_load_u8 v38, v75 offset:1792
	ds_load_u8 v39, v75 offset:1888
	ds_load_u8 v40, v75 offset:1856
	ds_load_u8 v41, v75 offset:1664
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v75 offset:1696
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v40, v39, 0xc0c0004
	v_lshl_or_b32 v36, v35, 16, v33
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v35, v38, 16, v37
	ds_load_u8 v33, v75 offset:1760
	ds_load_u8 v37, v75 offset:1728
	ds_load_u8 v38, v75 offset:1568
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v34, v41, v34, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v37, v33, 0xc0c0004
	ds_load_u8 v37, v75 offset:1536
	v_lshl_or_b32 v34, v33, 16, v34
	ds_load_u8 v33, v75 offset:1632
	ds_load_u8 v39, v75 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	ds_load_u8 v38, v76 offset:15616
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v39, v33, 0xc0c0004
	ds_load_u8 v39, v76 offset:15360
	v_lshl_or_b32 v33, v33, 16, v37
	ds_load_u8 v37, v76 offset:16128
	ds_load_u8 v40, v76 offset:15872
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v39, v76 offset:14592
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v40, v37, 0xc0c0004
	ds_load_u8 v40, v76 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v76 offset:15104
	ds_load_u8 v41, v76 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v40, 0xc0c0004
	v_lshl_or_b32 v40, v37, 16, v38
	ds_load_u8 v37, v76 offset:13568
	ds_load_u8 v38, v76 offset:13312
	v_lshl_or_b32 v39, v41, 16, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v76 offset:14080
	ds_load_u8 v41, v76 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v41, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v76 offset:12544
	ds_load_u8 v41, v76 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v41, v37, 0xc0c0004
	ds_load_u8 v41, v76 offset:13056
	ds_load_u8 v42, v76 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v41, 16, v37
	ds_load_u8 v41, v76 offset:15744
	ds_load_u8 v42, v76 offset:15488
	v_wmma_i32_16x16x16_iu8 v[17:24], v[37:40], v[33:36], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v76 offset:16256
	ds_load_u8 v43, v76 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v76 offset:14720
	ds_load_u8 v44, v76 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v76 offset:15232
	ds_load_u8 v45, v76 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	v_lshl_or_b32 v44, v42, 16, v41
	ds_load_u8 v41, v76 offset:13696
	ds_load_u8 v42, v76 offset:13440
	v_lshl_or_b32 v43, v45, 16, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v76 offset:14208
	ds_load_u8 v45, v76 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v45, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v76 offset:12672
	ds_load_u8 v45, v76 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v45, v41, 0xc0c0004
	ds_load_u8 v45, v76 offset:13184
	ds_load_u8 v46, v76 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v45, 16, v41
	v_wmma_i32_16x16x16_iu8 v[9:16], v[41:44], v[33:36], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v33, v75 offset:1968
	ds_load_u8 v34, v75 offset:1936
	v_cvt_f32_i32_e32 v47, v12
	v_cvt_f32_i32_e32 v48, v13
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v13, s4, v54
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v49, v14
	v_cvt_f32_i32_e32 v50, v15
	v_cvt_f32_i32_e32 v51, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v34, s1, v71
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v34, v34
	ds_load_u8 v35, v75 offset:2000
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s1, s0, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s1, s1, 26
	s_add_i32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s5, s0, 6
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s16, s5, s35
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s5, s49
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v14, v119, s5, 1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v15, v85, s16, 1
	s_mov_b32 s16, s7
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v75 offset:1840
	ds_load_u8 v36, v75 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v75 offset:1904
	ds_load_u8 v45, v75 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v36, 0xc0c0004
	v_lshl_or_b32 v36, v34, 16, v33
	ds_load_u8 v33, v75 offset:1712
	ds_load_u8 v34, v75 offset:1680
	v_lshl_or_b32 v35, v45, 16, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v75 offset:1776
	ds_load_u8 v45, v75 offset:1744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v45, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v75 offset:1584
	ds_load_u8 v45, v75 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v45, v33, 0xc0c0004
	ds_load_u8 v45, v75 offset:1648
	ds_load_u8 v46, v75 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	v_cvt_f32_i32_e32 v46, v11
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v11, s4, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_lshl_or_b32 v33, v45, 16, v33
	v_cvt_f32_i32_e32 v45, v10
	v_wmma_i32_16x16x16_iu8 v[77:84], v[41:44], v[33:36], v[77:84] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v44, v9
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v9, s27, v66
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[25:32], v[37:40], v[33:36], v[25:32] neg_lo:[1,1,0]
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v38, s27, v64
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v35, v18
	v_cvt_f32_i32_e32 v39, v20
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v10, s4, v53
	v_add_nc_u32_e32 v12, s4, v69
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s4, s31, v9
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v9, v120, s5, 1
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s0, s31, v38
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s5, -1, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v34, v17
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v37, s27, v62
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v16, 0x80000000, v11, s0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e64 v11, 0x80000000, v14, s5
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_cndmask_b32_e64 v14, 0x80000000, v15, s5
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v15, v9, s[40:43], 0 offen
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	buffer_load_u16 v14, v14, s[44:47], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v17, v11, s[40:43], 0 offen
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v33, s27, v65
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v37
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v40, v21
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v21, 0x80000000, v13, s4
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v36, v19
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s1, s31, v33
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v41, v22
	v_cvt_f32_i32_e32 v42, v23
	v_cvt_f32_i32_e32 v43, v24
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v18, 0x80000000, v12, s1
	buffer_load_b128 v[9:12], v10, s[36:39], 0 offen
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v52, v25
	v_cvt_f32_i32_e32 v75, v26
	v_cvt_f32_i32_e32 v76, v27
	v_cvt_f32_i32_e32 v121, v28
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s0, s15, 1
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lt_i32 s0, 2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s15, s0, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v78, v78
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_lshl_b32 s5, s15, 14
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v80, v80
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_add_i32 s7, s5, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v84, v84
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_lshl_b32 s0, s15, 11
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s4, s17, 1
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_add_i32 s0, s0, 0
	s_mov_b32 s1, s6
	s_add_i32 s6, s0, 0x8000
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lg_u32 s17, s51
	s_mov_b32 s17, s4
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v37, 16, v17
	v_lshlrev_b32_e32 v33, 16, v15
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v13, 16, v14
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_store_b32 v73, v13 offset:36864
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_clause 0x2
	buffer_load_b128 v[13:16], v16, s[36:39], 0 offen
	buffer_load_b128 v[17:20], v18, s[36:39], 0 offen
	buffer_load_b128 v[21:24], v21, s[36:39], 0 offen
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v74 offset:36864
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v128, v28, v37
	v_mul_f32_e32 v38, v25, v33
	v_mul_f32_e32 v122, v26, v33
	v_mul_f32_e32 v123, v27, v33
	v_mul_f32_e32 v124, v28, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_fmac_f32 v105, v128, v121 :: v_dual_fmac_f32 v86, v38, v34
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v125, v25, v37 :: v_dual_fmac_f32 v88, v123, v36
	v_mul_f32_e32 v126, v26, v37
	v_mul_f32_e32 v127, v27, v37
	ds_load_b128 v[25:28], v74 offset:36880
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fmac_f32_e32 v87, v122, v35
	v_fmac_f32_e32 v89, v124, v39
	v_dual_fmac_f32 v103, v126, v75 :: v_dual_fmac_f32 v102, v125, v52
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v130, v26, v33
	v_mul_f32_e32 v131, v27, v33
	v_mul_f32_e32 v129, v25, v33
	v_mul_f32_e32 v132, v28, v33
	v_mul_f32_e32 v133, v25, v37
	v_mul_f32_e32 v134, v26, v37
	v_mul_f32_e32 v135, v27, v37
	v_mul_f32_e32 v136, v28, v37
	ds_load_b128 v[25:28], v74 offset:37376
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fmac_f32_e32 v91, v130, v41
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v109, v136, v32 :: v_dual_mul_f32 v142, v26, v37
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v137, v25, v33
	v_mul_f32_e32 v139, v27, v33
	v_mul_f32_e32 v140, v28, v33
	v_mul_f32_e32 v138, v26, v33
	v_mul_f32_e32 v141, v25, v37
	v_dual_mul_f32 v143, v27, v37 :: v_dual_fmac_f32 v112, v142, v78
	v_mul_f32_e32 v144, v28, v37
	ds_load_b128 v[25:28], v74 offset:37392
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fmac_f32_e32 v96, v139, v46
	v_dual_fmac_f32 v106, v133, v29 :: v_dual_fmac_f32 v113, v143, v79
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v146, v26, v33
	v_mul_f32_e32 v147, v27, v33
	v_mul_f32_e32 v27, v27, v37
	v_mul_f32_e32 v145, v25, v33
	v_mul_f32_e32 v26, v26, v37
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fmac_f32_e32 v99, v146, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v117, v27, v83
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v33, v28, v33 :: v_dual_fmac_f32 v116, v26, v82
	v_mul_f32_e32 v28, v28, v37
	v_mul_f32_e32 v25, v25, v37
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_fmac_f32 v98, v145, v48 :: v_dual_add_nc_u32 v37, s0, v61
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v101, v33, v51
	v_fmac_f32_e32 v93, v132, v43
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v33, s7, v72
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fmac_f32_e32 v97, v140, v47
	v_fmac_f32_e32 v95, v138, v45
	v_dual_fmac_f32 v107, v134, v30 :: v_dual_fmac_f32 v108, v135, v31
	v_fmac_f32_e32 v114, v144, v80
	v_fmac_f32_e32 v100, v147, v50
	v_fmac_f32_e32 v94, v137, v44
	v_fmac_f32_e32 v92, v131, v42
	v_fmac_f32_e32 v90, v129, v40
	v_dual_fmac_f32 v104, v127, v76 :: v_dual_fmac_f32 v111, v141, v77
	v_dual_fmac_f32 v110, v28, v84 :: v_dual_fmac_f32 v115, v25, v81
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	ds_store_b64 v37, v[56:57] offset:32768
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v33, v[9:12]
	s_waitcnt vmcnt(2)
	ds_store_b128 v33, v[13:16] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v33, v[17:20] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v33, v[21:24] offset:12288
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v1, v70 :: v_dual_mov_b32 v2, v71
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	s_add_i32 s1, 0, 0x8000
	s_add_i32 s6, 0, 0x8800
	s_add_i32 s7, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	.loc	1 378 22 is_stmt 1              ; generate_amdgcn.py:378:22
	v_or_b32_e32 v3, v67, v58
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v152, 0
	v_mov_b32_e32 v151, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v26, s16, v3
	s_mov_b32 s16, 0
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v54, s1, v1
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v4, s1, v58
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v5, v4 offset:416
	ds_load_u8 v6, v4 offset:384
	ds_load_u8 v7, v4 offset:480
	ds_load_u8 v8, v4 offset:448
	ds_load_u8 v10, v4 offset:288
	ds_load_u8 v11, v4 offset:256
	ds_load_u8 v12, v4 offset:352
	ds_load_u8 v13, v4 offset:320
	ds_load_u8 v14, v4 offset:160
	ds_load_u8 v15, v4 offset:128
	ds_load_u8 v16, v4 offset:224
	ds_load_u8 v17, v4 offset:192
	ds_load_u8 v18, v4 offset:32
	ds_load_u8 v19, v4
	ds_load_u8 v20, v4 offset:96
	ds_load_u8 v21, v4 offset:64
	ds_load_u8 v73, v4 offset:464
	ds_load_u8 v74, v4 offset:432
	ds_load_u8 v75, v4 offset:400
	ds_load_u8 v76, v4 offset:368
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v11, v10, 0xc0c0004
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v11, s1, v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v10, v13, v12, 0xc0c0004
	v_lshl_or_b32 v8, v6, 16, v5
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v5, v15, v14, 0xc0c0004
	ds_load_u8 v121, v4 offset:80
	ds_load_u8 v122, v4 offset:48
	ds_load_u8 v123, v4 offset:16
	ds_load_u8 v124, v11
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v6, v17, v16, 0xc0c0004
	v_lshl_or_b32 v7, v10, 16, v7
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v19, v18, 0xc0c0004
	ds_load_u8 v12, v26 offset:3328
	ds_load_u8 v13, v26 offset:3072
	ds_load_u8 v14, v26 offset:3840
	ds_load_u8 v15, v26 offset:3584
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v11, v21, v20, 0xc0c0004
	v_lshl_or_b32 v6, v6, 16, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v5, v11, 16, v10
	ds_load_u8 v10, v26 offset:2304
	ds_load_u8 v11, v26 offset:2048
	ds_load_u8 v16, v26 offset:2816
	ds_load_u8 v17, v26 offset:2560
	ds_load_u8 v18, v26 offset:1280
	ds_load_u8 v19, v26 offset:1024
	ds_load_u8 v20, v26 offset:1792
	ds_load_u8 v21, v26 offset:1536
	ds_load_u8 v22, v26 offset:256
	ds_load_u8 v23, v26
	ds_load_u8 v24, v26 offset:768
	ds_load_u8 v25, v26 offset:512
	ds_load_u8 v27, v26 offset:3968
	ds_load_u8 v28, v26 offset:3712
	ds_load_u8 v29, v26 offset:3456
	ds_load_u8 v30, v26 offset:3200
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v11, v17, v16, 0xc0c0004
	v_perm_b32 v12, v13, v12, 0xc0c0004
	v_perm_b32 v13, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v14, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v15, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v16, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v25, v24, 0xc0c0004
	v_lshl_or_b32 v45, v13, 16, v12
	v_lshl_or_b32 v44, v11, 16, v10
	v_lshl_or_b32 v43, v15, 16, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v42, v17, 16, v16
	v_dual_mov_b32 v10, s16 :: v_dual_mov_b32 v15, s21
	v_mov_b32_e32 v11, s17
	ds_load_u8 v34, v4 offset:928
	ds_load_u8 v35, v4 offset:896
	ds_load_u8 v36, v4 offset:992
	ds_load_u8 v37, v4 offset:960
	ds_load_u8 v38, v4 offset:800
	ds_load_u8 v39, v4 offset:768
	ds_load_u8 v40, v4 offset:864
	ds_load_u8 v41, v4 offset:832
	ds_load_u8 v46, v4 offset:672
	ds_load_u8 v47, v4 offset:640
	ds_load_u8 v48, v4 offset:736
	ds_load_u8 v49, v4 offset:704
	ds_load_u8 v125, v4 offset:976
	ds_load_u8 v126, v4 offset:944
	ds_load_u8 v127, v4 offset:912
	ds_load_u8 v128, v4 offset:880
	v_mov_b32_e32 v13, s19
	ds_load_u8 v77, v4 offset:336
	ds_load_u8 v78, v4 offset:304
	ds_load_u8 v79, v4 offset:272
	ds_load_u8 v80, v4 offset:240
	ds_load_u8 v81, v4 offset:208
	ds_load_u8 v82, v4 offset:176
	ds_load_u8 v83, v4 offset:144
	ds_load_u8 v84, v4 offset:112
	ds_load_u8 v133, v4 offset:720
	ds_load_u8 v134, v4 offset:688
	ds_load_u8 v135, v4 offset:656
	ds_load_u8 v136, v4 offset:624
	ds_load_u8 v137, v4 offset:592
	ds_load_u8 v138, v4 offset:560
	ds_load_u8 v139, v4 offset:528
	ds_load_u8 v140, v4 offset:496
	ds_load_u8 v165, v4 offset:1264
	ds_load_u8 v166, v4 offset:1232
	ds_load_u8 v167, v4 offset:1200
	ds_load_u8 v168, v4 offset:1168
	ds_load_u8 v31, v26 offset:2944
	ds_load_u8 v32, v26 offset:2688
	ds_load_u8 v33, v26 offset:2432
	ds_load_u8 v61, v26 offset:2176
	ds_load_u8 v62, v26 offset:1920
	ds_load_u8 v63, v26 offset:1664
	ds_load_u8 v64, v26 offset:1408
	ds_load_u8 v65, v26 offset:1152
	ds_load_u8 v66, v26 offset:896
	ds_load_u8 v67, v26 offset:640
	ds_load_u8 v68, v26 offset:384
	ds_load_u8 v69, v26 offset:128
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v146, v26 offset:6016
	ds_load_u8 v147, v26 offset:5760
	ds_load_u8 v148, v26 offset:5504
	ds_load_u8 v149, v26 offset:5248
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	ds_load_u8 v150, v26 offset:4992
	ds_load_u8 v151, v26 offset:4736
	ds_load_u8 v152, v26 offset:4480
	ds_load_u8 v153, v26 offset:4224
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v40, v47, v46, 0xc0c0004
	ds_load_u8 v185, v26 offset:10112
	ds_load_u8 v186, v26 offset:9856
	ds_load_u8 v187, v26 offset:9600
	ds_load_u8 v188, v26 offset:9344
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v41, v49, v48, 0xc0c0004
	ds_load_u8 v47, v26 offset:7424
	ds_load_u8 v48, v26 offset:7168
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v4 offset:544
	ds_load_u8 v50, v4 offset:512
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v4 offset:608
	ds_load_u8 v51, v4 offset:576
	ds_load_u8 v129, v4 offset:848
	ds_load_u8 v130, v4 offset:816
	ds_load_u8 v131, v4 offset:784
	ds_load_u8 v132, v4 offset:752
	v_mov_b32_e32 v12, s18
	v_dual_mov_b32 v14, s20 :: v_dual_mov_b32 v17, s23
	v_mov_b32_e32 v16, s22
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[18:25], v[42:45], v[5:8], v[10:17] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v49, v51, v37, 0xc0c0004
	v_lshl_or_b32 v37, v36, 16, v34
	v_perm_b32 v46, v50, v35, 0xc0c0004
	ds_load_u8 v50, v26 offset:7936
	ds_load_u8 v51, v26 offset:7680
	v_lshl_or_b32 v36, v39, 16, v38
	v_lshl_or_b32 v35, v41, 16, v40
	v_perm_b32 v47, v48, v47, 0xc0c0004
	v_lshl_or_b32 v34, v49, 16, v46
	ds_load_u8 v38, v26 offset:6400
	ds_load_u8 v39, v26 offset:6144
	ds_load_u8 v40, v26 offset:6912
	ds_load_u8 v41, v26 offset:6656
	ds_load_u8 v46, v26 offset:5376
	ds_load_u8 v49, v26 offset:5120
	ds_load_u8 v52, v26 offset:5888
	ds_load_u8 v53, v26 offset:5632
	ds_load_u8 v70, v26 offset:8064
	ds_load_u8 v71, v26 offset:7808
	ds_load_u8 v72, v26 offset:7552
	ds_load_u8 v141, v26 offset:7296
	ds_load_u8 v48, v26 offset:4352
	ds_load_u8 v55, v26 offset:4096
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v40, v49, v46, 0xc0c0004
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v41, v53, v52, 0xc0c0004
	ds_load_u8 v52, v4 offset:1440
	ds_load_u8 v53, v4 offset:1408
	ds_load_u8 v51, v26 offset:4864
	ds_load_u8 v56, v26 offset:4608
	ds_load_u8 v142, v26 offset:7040
	ds_load_u8 v143, v26 offset:6784
	ds_load_u8 v144, v26 offset:6528
	ds_load_u8 v145, v26 offset:6272
	v_lshl_or_b32 v49, v50, 16, v47
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v46, v55, v48, 0xc0c0004
	v_lshl_or_b32 v48, v39, 16, v38
	v_lshl_or_b32 v47, v41, 16, v40
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v51, v56, v51, 0xc0c0004
	ds_load_u8 v55, v4 offset:1504
	ds_load_u8 v56, v4 offset:1472
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v4 offset:1056
	ds_load_u8 v159, v4 offset:1024
	v_lshl_or_b32 v46, v51, 16, v46
	ds_load_u8 v38, v4 offset:1312
	ds_load_u8 v39, v4 offset:1280
	ds_load_u8 v40, v4 offset:1376
	ds_load_u8 v41, v4 offset:1344
	ds_load_u8 v50, v4 offset:1184
	ds_load_u8 v51, v4 offset:1152
	ds_load_u8 v57, v4 offset:1248
	ds_load_u8 v154, v4 offset:1216
	ds_load_u8 v155, v4 offset:1520
	ds_load_u8 v156, v4 offset:1488
	ds_load_u8 v157, v4 offset:1456
	ds_load_u8 v158, v4 offset:1424
	v_wmma_i32_16x16x16_iu8 v[18:25], v[46:49], v[34:37], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v51, v154, v57, 0xc0c0004
	ds_load_u8 v56, v4 offset:1120
	ds_load_u8 v160, v4 offset:1088
	ds_load_u8 v161, v4 offset:1392
	ds_load_u8 v162, v4 offset:1360
	ds_load_u8 v163, v4 offset:1328
	ds_load_u8 v164, v4 offset:1296
	v_perm_b32 v53, v159, v53, 0xc0c0004
	ds_load_u8 v57, v26 offset:11520
	ds_load_u8 v159, v26 offset:11264
	ds_load_u8 v172, v26 offset:12032
	ds_load_u8 v173, v26 offset:11776
	v_lshl_or_b32 v41, v55, 16, v52
	v_lshl_or_b32 v40, v39, 16, v38
	v_lshl_or_b32 v39, v51, 16, v50
	ds_load_u8 v154, v4 offset:1136
	ds_load_u8 v169, v4 offset:1104
	ds_load_u8 v170, v4 offset:1072
	ds_load_u8 v171, v4 offset:1040
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v56, v160, v56, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v57, v159, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v38, v56, 16, v53
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v159, v173, v172, 0xc0c0004
	ds_load_u8 v172, v26 offset:8448
	ds_load_u8 v173, v26 offset:8192
	ds_load_u8 v179, v26 offset:8960
	ds_load_u8 v180, v26 offset:8704
	ds_load_u8 v181, v26 offset:11136
	ds_load_u8 v182, v26 offset:10880
	ds_load_u8 v183, v26 offset:10624
	ds_load_u8 v184, v26 offset:10368
	ds_load_u8 v50, v26 offset:10496
	ds_load_u8 v51, v26 offset:10240
	ds_load_u8 v52, v26 offset:11008
	ds_load_u8 v53, v26 offset:10752
	ds_load_u8 v55, v26 offset:9472
	ds_load_u8 v56, v26 offset:9216
	ds_load_u8 v160, v26 offset:9984
	ds_load_u8 v174, v26 offset:9728
	ds_load_u8 v175, v26 offset:12160
	ds_load_u8 v176, v26 offset:11904
	ds_load_u8 v177, v26 offset:11648
	ds_load_u8 v178, v26 offset:11392
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v51, v53, v52, 0xc0c0004
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	v_perm_b32 v173, v180, v179, 0xc0c0004
	ds_load_u8 v179, v4 offset:1824
	ds_load_u8 v180, v4 offset:1792
	ds_load_u8 v195, v4 offset:1888
	ds_load_u8 v196, v4 offset:1856
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v56, v174, v160, 0xc0c0004
	ds_load_u8 v160, v4 offset:1952
	ds_load_u8 v174, v4 offset:1920
	ds_load_u8 v189, v4 offset:2016
	ds_load_u8 v190, v4 offset:1984
	ds_load_u8 v191, v26 offset:9088
	ds_load_u8 v192, v26 offset:8832
	ds_load_u8 v193, v26 offset:8576
	ds_load_u8 v194, v26 offset:8320
	v_lshl_or_b32 v52, v51, 16, v50
	v_lshl_or_b32 v53, v159, 16, v57
	v_lshl_or_b32 v50, v173, 16, v172
	v_lshl_or_b32 v51, v56, 16, v55
	ds_load_u8 v159, v54
	ds_load_u8 v172, v4 offset:2000
	ds_load_u8 v173, v4 offset:1968
	ds_load_u8 v197, v4 offset:1936
	v_wmma_i32_16x16x16_iu8 v[18:25], v[50:53], v[38:41], v[18:25] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v54, v174, v160, 0xc0c0004
	v_perm_b32 v56, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v55, v190, v189, 0xc0c0004
	v_perm_b32 v179, v196, v195, 0xc0c0004
	ds_load_u8 v180, v4 offset:1568
	ds_load_u8 v195, v4 offset:1536
	ds_load_u8 v196, v4 offset:1632
	ds_load_u8 v202, v4 offset:1600
	ds_load_u8 v160, v4 offset:1696
	ds_load_u8 v174, v4 offset:1664
	ds_load_u8 v189, v4 offset:1760
	ds_load_u8 v190, v4 offset:1728
	ds_load_u8 v198, v4 offset:1904
	ds_load_u8 v199, v4 offset:1872
	ds_load_u8 v200, v4 offset:1840
	ds_load_u8 v201, v4 offset:1808
	v_lshl_or_b32 v57, v55, 16, v54
	v_lshl_or_b32 v56, v179, 16, v56
	ds_load_u8 v179, v4 offset:1776
	ds_load_u8 v203, v4 offset:1744
	ds_load_u8 v204, v4 offset:1712
	ds_load_u8 v205, v4 offset:1680
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v54, v174, v160, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v55, v190, v189, 0xc0c0004
	ds_load_u8 v160, v26 offset:15616
	ds_load_u8 v174, v26 offset:15360
	ds_load_u8 v189, v26 offset:16128
	ds_load_u8 v190, v26 offset:15872
	ds_load_u8 v206, v4 offset:1648
	ds_load_u8 v207, v4 offset:1616
	ds_load_u8 v208, v4 offset:1584
	ds_load_u8 v209, v4 offset:1552
	v_perm_b32 v4, v195, v180, 0xc0c0004
	v_perm_b32 v180, v202, v196, 0xc0c0004
	ds_load_u8 v195, v26 offset:14592
	ds_load_u8 v196, v26 offset:14336
	ds_load_u8 v202, v26 offset:15104
	ds_load_u8 v210, v26 offset:14848
	v_lshl_or_b32 v55, v55, 16, v54
	v_lshl_or_b32 v54, v180, 16, v4
	ds_load_u8 v4, v26 offset:13568
	ds_load_u8 v180, v26 offset:13312
	ds_load_u8 v211, v26 offset:14080
	ds_load_u8 v212, v26 offset:13824
	ds_load_u8 v213, v26 offset:16256
	ds_load_u8 v214, v26 offset:16000
	ds_load_u8 v215, v26 offset:15744
	ds_load_u8 v216, v26 offset:15488
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v160, v174, v160, 0xc0c0004
	ds_load_u8 v174, v26 offset:12544
	ds_load_u8 v217, v26 offset:12288
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	ds_load_u8 v190, v26 offset:15232
	ds_load_u8 v218, v26 offset:14976
	ds_load_u8 v219, v26 offset:14720
	ds_load_u8 v220, v26 offset:14464
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v195, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v180, v180, v4, 0xc0c0004
	v_perm_b32 v196, v210, v202, 0xc0c0004
	ds_load_u8 v202, v26 offset:13056
	ds_load_u8 v210, v26 offset:12800
	ds_load_u8 v221, v26 offset:14208
	ds_load_u8 v222, v26 offset:13952
	ds_load_u8 v223, v26 offset:13696
	ds_load_u8 v224, v26 offset:13440
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v211, v212, v211, 0xc0c0004
	ds_load_u8 v212, v26 offset:13184
	ds_load_u8 v225, v26 offset:12928
	ds_load_u8 v226, v26 offset:12672
	ds_load_u8 v227, v26 offset:12416
	v_perm_b32 v4, v30, v29, 0xc0c0004
	v_perm_b32 v26, v28, v27, 0xc0c0004
	v_perm_b32 v27, v61, v33, 0xc0c0004
	v_perm_b32 v28, v32, v31, 0xc0c0004
	v_perm_b32 v29, v65, v64, 0xc0c0004
	v_perm_b32 v30, v63, v62, 0xc0c0004
	v_perm_b32 v31, v69, v68, 0xc0c0004
	v_perm_b32 v32, v67, v66, 0xc0c0004
	v_lshl_or_b32 v64, v26, 16, v4
	v_lshl_or_b32 v63, v28, 16, v27
	v_lshl_or_b32 v62, v30, 16, v29
	v_perm_b32 v4, v141, v72, 0xc0c0004
	v_lshl_or_b32 v61, v32, 16, v31
	v_perm_b32 v65, v71, v70, 0xc0c0004
	v_perm_b32 v66, v145, v144, 0xc0c0004
	v_perm_b32 v67, v143, v142, 0xc0c0004
	v_perm_b32 v68, v149, v148, 0xc0c0004
	v_perm_b32 v70, v147, v146, 0xc0c0004
	v_perm_b32 v71, v153, v152, 0xc0c0004
	v_perm_b32 v72, v151, v150, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[26:33], v[61:64], v[5:8], v[10:17] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v65, 16, v4
	v_lshl_or_b32 v6, v67, 16, v66
	v_lshl_or_b32 v5, v70, 16, v68
	v_lshl_or_b32 v4, v72, 16, v71
	v_perm_b32 v8, v178, v177, 0xc0c0004
	v_perm_b32 v65, v176, v175, 0xc0c0004
	v_perm_b32 v66, v184, v183, 0xc0c0004
	v_perm_b32 v67, v182, v181, 0xc0c0004
	v_perm_b32 v70, v188, v187, 0xc0c0004
	v_perm_b32 v71, v186, v185, 0xc0c0004
	v_perm_b32 v72, v194, v193, 0xc0c0004
	v_perm_b32 v141, v192, v191, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[26:33], v[4:7], v[34:37], v[26:33] neg_lo:[1,1,0]
	v_lshl_or_b32 v68, v65, 16, v8
	v_lshl_or_b32 v67, v67, 16, v66
	v_lshl_or_b32 v66, v71, 16, v70
	v_lshl_or_b32 v65, v141, 16, v72
	v_perm_b32 v34, v75, v74, 0xc0c0004
	v_perm_b32 v35, v73, v140, 0xc0c0004
	v_perm_b32 v36, v79, v78, 0xc0c0004
	v_perm_b32 v37, v77, v76, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[26:33], v[65:68], v[38:41], v[26:33] neg_lo:[1,1,0]
	v_perm_b32 v38, v83, v82, 0xc0c0004
	v_perm_b32 v39, v81, v80, 0xc0c0004
	v_perm_b32 v40, v123, v122, 0xc0c0004
	v_perm_b32 v41, v121, v84, 0xc0c0004
	v_lshl_or_b32 v76, v35, 16, v34
	v_lshl_or_b32 v75, v37, 16, v36
	v_lshl_or_b32 v74, v39, 16, v38
	v_perm_b32 v78, v127, v126, 0xc0c0004
	v_lshl_or_b32 v73, v41, 16, v40
	v_perm_b32 v79, v125, v159, 0xc0c0004
	v_perm_b32 v80, v131, v130, 0xc0c0004
	v_perm_b32 v81, v129, v128, 0xc0c0004
	v_perm_b32 v82, v135, v134, 0xc0c0004
	v_perm_b32 v83, v133, v132, 0xc0c0004
	v_perm_b32 v84, v139, v138, 0xc0c0004
	v_perm_b32 v121, v137, v136, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[34:41], v[42:45], v[73:76], v[10:17] neg_lo:[1,1,0]
	v_lshl_or_b32 v45, v79, 16, v78
	v_lshl_or_b32 v44, v81, 16, v80
	v_lshl_or_b32 v43, v83, 16, v82
	v_lshl_or_b32 v42, v121, 16, v84
	v_perm_b32 v78, v158, v157, 0xc0c0004
	v_perm_b32 v79, v156, v155, 0xc0c0004
	v_perm_b32 v80, v164, v163, 0xc0c0004
	v_perm_b32 v81, v162, v161, 0xc0c0004
	v_perm_b32 v82, v168, v167, 0xc0c0004
	v_perm_b32 v83, v166, v165, 0xc0c0004
	v_perm_b32 v84, v171, v170, 0xc0c0004
	v_perm_b32 v121, v169, v154, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v8, v216, v215, 0xc0c0004
	v_perm_b32 v141, v214, v213, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[34:41], v[46:49], v[42:45], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v49, v79, 16, v78
	v_lshl_or_b32 v48, v81, 16, v80
	v_lshl_or_b32 v47, v83, 16, v82
	v_lshl_or_b32 v46, v121, 16, v84
	v_wmma_i32_16x16x16_iu8 v[10:17], v[61:64], v[73:76], v[10:17] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v174, v217, v174, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v69, v210, v202, 0xc0c0004
	v_perm_b32 v142, v220, v219, 0xc0c0004
	v_perm_b32 v143, v218, v190, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v144, v224, v223, 0xc0c0004
	v_perm_b32 v145, v222, v221, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v227, v226, 0xc0c0004
	v_perm_b32 v77, v225, v212, 0xc0c0004
	v_lshl_or_b32 v80, v141, 16, v8
	v_wmma_i32_16x16x16_iu8 v[34:41], v[50:53], v[46:49], v[34:41] neg_lo:[1,1,0]
	v_perm_b32 v8, v197, v173, 0xc0c0004
	v_perm_b32 v50, v172, v124, 0xc0c0004
	v_perm_b32 v51, v201, v200, 0xc0c0004
	v_perm_b32 v52, v199, v198, 0xc0c0004
	v_perm_b32 v53, v205, v204, 0xc0c0004
	v_perm_b32 v61, v203, v179, 0xc0c0004
	v_perm_b32 v62, v209, v208, 0xc0c0004
	v_perm_b32 v63, v207, v206, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[10:17], v[4:7], v[42:45], v[10:17] neg_lo:[1,1,0]
	v_lshl_or_b32 v72, v189, 16, v160
	v_lshl_or_b32 v71, v196, 16, v195
	v_lshl_or_b32 v70, v211, 16, v180
	v_lshl_or_b32 v69, v69, 16, v174
	v_lshl_or_b32 v79, v143, 16, v142
	v_lshl_or_b32 v78, v145, 16, v144
	v_lshl_or_b32 v77, v77, 16, v146
	v_lshl_or_b32 v7, v50, 16, v8
	v_lshl_or_b32 v6, v52, 16, v51
	v_lshl_or_b32 v5, v61, 16, v53
	v_lshl_or_b32 v4, v63, 16, v62
	v_wmma_i32_16x16x16_iu8 v[10:17], v[65:68], v[46:49], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[18:25], v[69:72], v[54:57], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[26:33], v[77:80], v[54:57], v[26:33] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[34:41], v[69:72], v[4:7], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[10:17], v[77:80], v[4:7], v[10:17] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v121, v19
	v_cvt_f32_i32_e32 v122, v20
	v_cvt_f32_i32_e32 v123, v21
	v_cvt_f32_i32_e32 v124, v22
	v_cvt_f32_i32_e32 v125, v23
	v_cvt_f32_i32_e32 v126, v24
	v_cvt_f32_i32_e32 v127, v25
	v_cvt_f32_i32_e32 v128, v26
	v_cvt_f32_i32_e32 v129, v27
	v_cvt_f32_i32_e32 v130, v28
	v_cvt_f32_i32_e32 v132, v29
	v_cvt_f32_i32_e32 v133, v30
	v_cvt_f32_i32_e32 v134, v31
	v_cvt_f32_i32_e32 v135, v32
	v_cvt_f32_i32_e32 v136, v33
	v_cvt_f32_i32_e32 v137, v34
	v_cvt_f32_i32_e32 v138, v35
	v_cvt_f32_i32_e32 v139, v36
	v_cvt_f32_i32_e32 v140, v37
	v_cvt_f32_i32_e32 v141, v38
	v_cvt_f32_i32_e32 v142, v39
	v_cvt_f32_i32_e32 v143, v40
	v_cvt_f32_i32_e32 v144, v41
	v_cvt_f32_i32_e32 v145, v10
	v_cvt_f32_i32_e32 v146, v11
	v_cvt_f32_i32_e32 v147, v12
	v_cvt_f32_i32_e32 v148, v13
	v_cvt_f32_i32_e32 v149, v14
	v_cvt_f32_i32_e32 v150, v15
	v_cvt_f32_i32_e32 v151, v16
	v_cvt_f32_i32_e32 v152, v17
	v_cvt_f32_i32_e32 v131, v18
.LBB0_10:
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s30, s0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s30, s14
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s0, 6
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s31, s15
	.loc	1 392 40 is_stmt 0              ; generate_amdgcn.py:392:40
	s_mul_i32 s1, s0, s35
	.loc	1 389 34 is_stmt 1              ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s0, s49
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v4, v120, s0, 1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v5, v85, s1, 1
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s1, -1, 0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v6, v119, s0, 1
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	s_and_b32 s13, s13, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_and_b32 v157, 1, v0
	s_clause 0x1
	buffer_load_u16 v156, v4, s[12:15], 0 offen
	buffer_load_u16 v158, v6, s[12:15], 0 offen
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	buffer_load_u16 v5, v5, s[28:31], 0 offen
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v154, 14, v0
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v4, 5, v157
	v_dual_mov_b32 v10, 0 :: v_dual_add_nc_u32 v153, 0, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v21, 0 :: v_dual_lshlrev_b32 v6, 1, v154
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_add3_u32 v4, 0, v59, v4
	v_mov_b32_e32 v18, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v155, v4, v6
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v7, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v8, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v4, 16, v5
	v_mov_b32_e32 v5, 0
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_store_b32 v155, v4 offset:36864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v153 offset:36864
	ds_load_b128 v[37:40], v153 offset:36880
	ds_load_b128 v[41:44], v153 offset:37376
	ds_load_b128 v[45:48], v153 offset:37392
	v_mov_b32_e32 v4, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 372 22                        ; generate_amdgcn.py:372:22
	v_add_nc_u32_e32 v159, s6, v58
	v_add_nc_u32_e32 v160, s6, v2
	v_add_nc_u32_e32 v161, s6, v1
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v1, v159 offset:416
	ds_load_u8 v2, v159 offset:384
	s_mov_b32 s6, s4
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v25, s7, v3
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_mov_b32 s7, s4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v159 offset:480
	ds_load_u8 v3, v159 offset:448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v2, 16, v1
	ds_load_u8 v1, v159 offset:288
	ds_load_u8 v2, v159 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v159 offset:352
	ds_load_u8 v3, v159 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v2, 16, v1
	ds_load_u8 v1, v159 offset:160
	ds_load_u8 v2, v159 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v159 offset:224
	ds_load_u8 v3, v159 offset:192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v2, 16, v1
	ds_load_u8 v1, v159 offset:32
	ds_load_u8 v2, v159
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v159 offset:96
	ds_load_u8 v3, v159 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v2, 16, v1
	ds_load_u8 v1, v25 offset:3328
	ds_load_u8 v2, v25 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:3840
	ds_load_u8 v3, v25 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v2, 16, v1
	ds_load_u8 v1, v25 offset:2304
	ds_load_u8 v2, v25 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:2816
	ds_load_u8 v3, v25 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v2, 16, v1
	ds_load_u8 v1, v25 offset:1280
	ds_load_u8 v2, v25 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:1792
	ds_load_u8 v3, v25 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v2, 16, v1
	ds_load_u8 v1, v25 offset:256
	ds_load_u8 v2, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:768
	ds_load_u8 v3, v25 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	ds_load_u8 v17, v159 offset:928
	ds_load_u8 v18, v159 offset:896
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[26:29], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:992
	ds_load_u8 v19, v159 offset:960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v18, 16, v17
	ds_load_u8 v17, v159 offset:800
	ds_load_u8 v18, v159 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:864
	ds_load_u8 v19, v159 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v18, 16, v17
	ds_load_u8 v17, v159 offset:672
	ds_load_u8 v18, v159 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:736
	ds_load_u8 v19, v159 offset:704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v18, 16, v17
	ds_load_u8 v17, v159 offset:544
	ds_load_u8 v18, v159 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:608
	ds_load_u8 v19, v159 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v18, 16, v17
	ds_load_u8 v17, v25 offset:7424
	ds_load_u8 v18, v25 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:7936
	ds_load_u8 v19, v25 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v18, 16, v17
	ds_load_u8 v17, v25 offset:6400
	ds_load_u8 v18, v25 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:6912
	ds_load_u8 v19, v25 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v18, 16, v17
	ds_load_u8 v17, v25 offset:5376
	ds_load_u8 v18, v25 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:5888
	ds_load_u8 v19, v25 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v18, 16, v17
	ds_load_u8 v17, v25 offset:4352
	ds_load_u8 v18, v25 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:4864
	ds_load_u8 v19, v25 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v18, 16, v17
	ds_load_u8 v17, v159 offset:1440
	ds_load_u8 v18, v159 offset:1408
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[57:60], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:1504
	ds_load_u8 v19, v159 offset:1472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v18, 16, v17
	ds_load_u8 v17, v159 offset:1312
	ds_load_u8 v18, v159 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:1376
	ds_load_u8 v19, v159 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v18, 16, v17
	ds_load_u8 v17, v159 offset:1184
	ds_load_u8 v18, v159 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:1248
	ds_load_u8 v19, v159 offset:1216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v18, 16, v17
	ds_load_u8 v17, v159 offset:1056
	ds_load_u8 v18, v159 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:1120
	ds_load_u8 v19, v159 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v18, 16, v17
	ds_load_u8 v17, v25 offset:11520
	ds_load_u8 v18, v25 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:12032
	ds_load_u8 v19, v25 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v18, 16, v17
	ds_load_u8 v17, v25 offset:10496
	ds_load_u8 v18, v25 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:11008
	ds_load_u8 v19, v25 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v18, 16, v17
	ds_load_u8 v17, v25 offset:9472
	ds_load_u8 v18, v25 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:9984
	ds_load_u8 v19, v25 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v18, 16, v17
	ds_load_u8 v17, v25 offset:8448
	ds_load_u8 v18, v25 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:8960
	ds_load_u8 v19, v25 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v18, 16, v17
	ds_load_u8 v17, v159 offset:1952
	ds_load_u8 v18, v159 offset:1920
	v_wmma_i32_16x16x16_iu8 v[9:16], v[77:80], v[65:68], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:2016
	ds_load_u8 v19, v159 offset:1984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v18, 16, v17
	ds_load_u8 v17, v159 offset:1824
	ds_load_u8 v18, v159 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:1888
	ds_load_u8 v19, v159 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v18, 16, v17
	ds_load_u8 v17, v159 offset:1696
	ds_load_u8 v18, v159 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:1760
	ds_load_u8 v19, v159 offset:1728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v18, 16, v17
	ds_load_u8 v17, v159 offset:1568
	ds_load_u8 v18, v159 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v159 offset:1632
	ds_load_u8 v19, v159 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v18, 16, v17
	ds_load_u8 v17, v25 offset:15616
	ds_load_u8 v18, v25 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:16128
	ds_load_u8 v19, v25 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v18, 16, v17
	ds_load_u8 v17, v25 offset:14592
	ds_load_u8 v18, v25 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:15104
	ds_load_u8 v19, v25 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v18, 16, v17
	ds_load_u8 v17, v25 offset:13568
	ds_load_u8 v18, v25 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:14080
	ds_load_u8 v19, v25 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v18, 16, v17
	ds_load_u8 v17, v25 offset:12544
	ds_load_u8 v18, v25 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:13056
	ds_load_u8 v19, v25 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v18, 16, v17
	ds_load_u8 v17, v25 offset:3456
	ds_load_u8 v18, v25 offset:3200
	v_wmma_i32_16x16x16_iu8 v[9:16], v[61:64], v[81:84], v[9:16] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:3968
	ds_load_u8 v19, v25 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v18, 16, v17
	ds_load_u8 v17, v25 offset:2432
	ds_load_u8 v18, v25 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:2944
	ds_load_u8 v19, v25 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v18, 16, v17
	ds_load_u8 v17, v25 offset:1408
	ds_load_u8 v18, v25 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:1920
	ds_load_u8 v19, v25 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v18, 16, v17
	ds_load_u8 v17, v25 offset:384
	ds_load_u8 v18, v25 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:896
	ds_load_u8 v19, v25 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[49:52], v[26:29], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v26, v25 offset:7552
	ds_load_u8 v27, v25 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:8064
	ds_load_u8 v28, v25 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v27, 16, v26
	ds_load_u8 v26, v25 offset:6528
	ds_load_u8 v27, v25 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:7040
	ds_load_u8 v28, v25 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v27, 16, v26
	ds_load_u8 v26, v25 offset:5504
	ds_load_u8 v27, v25 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:6016
	ds_load_u8 v28, v25 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v27, 16, v26
	ds_load_u8 v26, v25 offset:4480
	ds_load_u8 v27, v25 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:4992
	ds_load_u8 v28, v25 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v27, 16, v26
	ds_load_u8 v26, v25 offset:11648
	ds_load_u8 v27, v25 offset:11392
	v_wmma_i32_16x16x16_iu8 v[17:24], v[53:56], v[57:60], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:12160
	ds_load_u8 v28, v25 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v27, 16, v26
	ds_load_u8 v26, v25 offset:10624
	ds_load_u8 v27, v25 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:11136
	ds_load_u8 v28, v25 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v27, 16, v26
	ds_load_u8 v26, v25 offset:9600
	ds_load_u8 v27, v25 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:10112
	ds_load_u8 v28, v25 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v27, 16, v26
	ds_load_u8 v26, v25 offset:8576
	ds_load_u8 v27, v25 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:9088
	ds_load_u8 v28, v25 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v27, 16, v26
	ds_load_u8 v26, v25 offset:15744
	ds_load_u8 v27, v25 offset:15488
	v_wmma_i32_16x16x16_iu8 v[17:24], v[57:60], v[65:68], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:16256
	ds_load_u8 v28, v25 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v27, 16, v26
	ds_load_u8 v26, v25 offset:14720
	ds_load_u8 v27, v25 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:15232
	ds_load_u8 v28, v25 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v27, 16, v26
	ds_load_u8 v26, v25 offset:13696
	ds_load_u8 v27, v25 offset:13440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:14208
	ds_load_u8 v28, v25 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v27, 16, v26
	ds_load_u8 v26, v25 offset:12672
	ds_load_u8 v27, v25 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:13184
	ds_load_u8 v25, v25 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v25, 16, v26
	ds_load_u8 v25, v159 offset:432
	ds_load_u8 v26, v159 offset:400
	v_wmma_i32_16x16x16_iu8 v[17:24], v[65:68], v[81:84], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v159 offset:496
	ds_load_u8 v27, v159 offset:464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v26, 16, v25
	ds_load_u8 v25, v159 offset:304
	ds_load_u8 v26, v159 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v159 offset:368
	ds_load_u8 v27, v159 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v26, 16, v25
	ds_load_u8 v25, v159 offset:176
	ds_load_u8 v26, v159 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v159 offset:240
	ds_load_u8 v27, v159 offset:208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v26, 16, v25
	ds_load_u8 v25, v159 offset:48
	ds_load_u8 v26, v159 offset:16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v159 offset:112
	ds_load_u8 v27, v159 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[81:84], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v69, v159 offset:944
	ds_load_u8 v70, v159 offset:912
	v_wmma_i32_16x16x16_iu8 v[1:8], v[49:52], v[81:84], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v161
	ds_load_u8 v71, v159 offset:976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v159 offset:816
	ds_load_u8 v70, v159 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v159 offset:880
	ds_load_u8 v71, v159 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v70, 16, v69
	ds_load_u8 v69, v159 offset:688
	ds_load_u8 v70, v159 offset:656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v159 offset:752
	ds_load_u8 v161, v159 offset:720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v161, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v159 offset:560
	ds_load_u8 v161, v159 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v161, v69, 0xc0c0004
	ds_load_u8 v161, v159 offset:624
	ds_load_u8 v162, v159 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v161, 16, v69
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[69:72], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v73, v159 offset:1456
	ds_load_u8 v74, v159 offset:1424
	v_wmma_i32_16x16x16_iu8 v[1:8], v[53:56], v[69:72], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:1520
	ds_load_u8 v75, v159 offset:1488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v159 offset:1328
	ds_load_u8 v74, v159 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:1392
	ds_load_u8 v75, v159 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v74, 16, v73
	ds_load_u8 v73, v159 offset:1200
	ds_load_u8 v74, v159 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v159 offset:1264
	ds_load_u8 v161, v159 offset:1232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v161, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v159 offset:1072
	ds_load_u8 v161, v159 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v161, v73, 0xc0c0004
	ds_load_u8 v161, v159 offset:1136
	ds_load_u8 v162, v159 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v161, 16, v73
	v_wmma_i32_16x16x16_iu8 v[25:32], v[77:80], v[73:76], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v77, v159 offset:1968
	ds_load_u8 v78, v159 offset:1936
	v_wmma_i32_16x16x16_iu8 v[1:8], v[57:60], v[73:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v160
	ds_load_u8 v79, v159 offset:2000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v159 offset:1840
	ds_load_u8 v78, v159 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v159 offset:1904
	ds_load_u8 v79, v159 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v78, 16, v77
	ds_load_u8 v77, v159 offset:1712
	ds_load_u8 v78, v159 offset:1680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v159 offset:1776
	ds_load_u8 v160, v159 offset:1744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v160, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v159 offset:1584
	ds_load_u8 v160, v159 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v160, v77, 0xc0c0004
	ds_load_u8 v160, v159 offset:1648
	ds_load_u8 v159, v159 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v159, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v159, 16, v77
	v_wmma_i32_16x16x16_iu8 v[25:32], v[61:64], v[77:80], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[65:68], v[77:80], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v49, v1
	v_cvt_f32_i32_e32 v50, v2
	v_cvt_f32_i32_e32 v51, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_12:
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s27, 31
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s30, s14
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_lshr_b32 s0, s0, 26
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s31, s15
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_add_i32 s0, s27, s0
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	v_mad_u64_u32 v[52:53], null, s26, s35, v[85:86]
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s0, 6
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s4, s35, 5
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s0, s49
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s1, s0, s35
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v1, v120, s0, 1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v2, v85, s1, 1
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s1, -1, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v3, v119, s0, 1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_lshlrev_b32 v0, 2, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_clause 0x1
	buffer_load_u16 v54, v1, s[12:15], 0 offen
	buffer_load_u16 v55, v3, s[12:15], 0 offen
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	v_mov_b16_e32 v1.l, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v1.h, v158.l
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v157
	v_and_b32_e32 v0, 0x3f8, v0
	v_lshlrev_b32_e32 v53, 3, v118
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v59, v47, v1 :: v_dual_lshlrev_b32 v56, 2, v154
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_cndmask_b32_e64 v3, 0x840, 0, vcc_lo
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v61, v45, v1
	v_mul_f32_e32 v67, v39, v1
	v_mul_f32_e32 v58, v48, v1
	v_mul_f32_e32 v62, v44, v1
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xor_b32_e32 v0, v3, v0
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v63, v43, v1
	v_mul_f32_e32 v65, v41, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v61, v61, v149, v115
	v_fma_f32 v58, v58, v152, v110
	v_fma_f32 v59, v59, v151, v117
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s1, s35, 3
	s_mul_i32 s5, s35, 6
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v61, v115, v61, s3
	v_cndmask_b32_e64 v58, v110, v58, s3
	v_cndmask_b32_e64 v59, v117, v59, s3
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s6, s35, 7
	s_mul_i32 s7, s35, 9
	s_mul_i32 s8, s35, 10
	s_mul_i32 s9, s35, 11
	s_mul_i32 s10, s35, 12
	s_mul_i32 s11, s35, 13
	s_mul_i32 s12, s35, 14
	s_mul_i32 s13, s35, 15
	s_mul_i32 s16, s35, 17
	s_mul_i32 s17, s35, 18
	s_mul_i32 s18, s35, 19
	s_mul_i32 s19, s35, 20
	s_mul_i32 s20, s35, 21
	s_mul_i32 s21, s35, 22
	s_mul_i32 s22, s35, 23
	s_mul_i32 s23, s35, 24
	s_mul_i32 s28, s35, 25
	s_mul_i32 s29, s35, 26
	.loc	1 418 9 is_stmt 0               ; generate_amdgcn.py:418:9
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
	v_add_lshl_u32 v74, v52, s1, 2
	s_and_b32 s25, s25, 0xffff
	v_add_lshl_u32 v75, v52, s4, 2
	v_add_lshl_u32 v76, v52, s5, 2
	v_add_lshl_u32 v77, v52, s6, 2
	v_add_lshl_u32 v78, v52, s7, 2
	v_add_lshl_u32 v79, v52, s8, 2
	v_add_lshl_u32 v80, v52, s9, 2
	v_add_lshl_u32 v81, v52, s10, 2
	v_add_lshl_u32 v82, v52, s11, 2
	v_add_lshl_u32 v83, v52, s12, 2
	v_add_lshl_u32 v84, v52, s13, 2
	v_add_lshl_u32 v85, v52, s16, 2
	v_add_lshl_u32 v118, v52, s17, 2
	v_add_lshl_u32 v119, v52, s18, 2
	v_add_lshl_u32 v120, v52, s19, 2
	v_add_lshl_u32 v158, v52, s22, 2
	v_add_lshl_u32 v159, v52, s23, 2
	v_add_lshl_u32 v160, v52, s28, 2
	v_add_lshl_u32 v161, v52, s29, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s30, s35, 27
	s_mul_i32 s31, s35, 28
	s_mul_i32 s34, s35, 29
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v162, v52, s30, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s36, s35, 30
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v163, v52, s31, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s0, s35, 31
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v164, v52, s34, 2
	v_add_lshl_u32 v165, v52, s36, 2
	.loc	1 390 22 is_stmt 1              ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v72, v34, v1
	v_mul_f32_e32 v64, v42, v1
	v_mul_f32_e32 v66, v40, v1
	v_mul_f32_e32 v68, v38, v1
	v_mul_f32_e32 v69, v37, v1
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v72, v72, v138, v103
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v70, v36, v1
	v_mul_f32_e32 v71, v35, v1
	v_mul_f32_e32 v73, v33, v1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v72, v103, v72, s3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshl_or_b32 v103, v154, 11, v0
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v60, v46, v1
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e64 v1.h, v156.l
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v2
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v73, v73, v137, v102
	v_fma_f32 v62, v62, v148, v114
	v_fma_f32 v67, v67, v143, v108
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v40, v40, v1
	v_mul_f32_e32 v39, v39, v1
	v_mul_f32_e32 v38, v38, v1
	v_mul_f32_e32 v37, v37, v1
	ds_store_b32 v155, v0 offset:36864
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v40, v40, v127, v93
	v_fma_f32 v39, v39, v126, v92
	v_fma_f32 v38, v38, v125, v91
	v_fma_f32 v37, v37, v124, v90
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(0)
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v93, v93, v40, s3
	v_cndmask_b32_e64 v92, v92, v39, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_barrier
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v91, v91, v38, s3
	v_cndmask_b32_e64 v90, v90, v37, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_load_b128 v[37:40], v153 offset:37376
	v_mul_f32_e32 v44, v44, v1
	v_mul_f32_e32 v43, v43, v1
	v_mul_f32_e32 v42, v42, v1
	v_mul_f32_e32 v41, v41, v1
	v_mul_f32_e32 v36, v36, v1
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v44, v44, v132, v97
	v_fma_f32 v43, v43, v130, v96
	v_fma_f32 v42, v42, v129, v95
	v_fma_f32 v41, v41, v128, v94
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v35, v35, v1
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v97, v97, v44, s3
	v_cndmask_b32_e64 v96, v96, v43, s3
	v_cndmask_b32_e64 v95, v95, v42, s3
	v_cndmask_b32_e64 v94, v94, v41, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_load_b128 v[41:44], v153 offset:37392
	v_mul_f32_e32 v48, v48, v1
	v_mul_f32_e32 v47, v47, v1
	v_mul_f32_e32 v46, v46, v1
	v_mul_f32_e32 v45, v45, v1
	v_mul_f32_e32 v34, v34, v1
	v_mul_f32_e32 v1, v33, v1
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v115, v38, v54
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v3, v48, v136, v101
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v73, v102, v73, s3
	v_cndmask_b32_e64 v62, v114, v62, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v102, v1, v131, v86
	v_fma_f32 v36, v36, v123, v89
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v101, v101, v3, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_load_b128 v[0:3], v153 offset:36864
	v_mul_f32_e32 v114, v37, v54
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v33, v47, v135, v100
	v_fma_f32 v47, v35, v122, v88
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v89, v89, v36, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v37, v37, v55
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v48, v34, v121, v87
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v100, v100, v33, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_load_b128 v[33:36], v153 offset:36880
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshlrev_b32_e32 v57, 6, v157
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v67, v108, v67, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v65, v65, v145, v111
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v48, v87, v48, s3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v87, 0, v103
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v60, v60, v150, v116
	v_fma_f32 v66, v66, v144, v109
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v65, v111, v65, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v121, v41, v54
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v46, v46, v134, v99
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v60, v116, v60, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v108, v2, v54
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v69, v69, v141, v106
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v116, v39, v54
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v45, v45, v133, v98
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v86, v86, v102, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v38, v38, v55
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v69, v106, v69, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v106, v0, v54
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_or3_b32 v53, v53, v57, v56
	v_lshlrev_b32_e32 v56, 2, v52
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v63, v63, v147, v113
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v110, v33, v54
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v71, v71, v139, v104
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v111, v34, v54
	v_mul_f32_e32 v33, v33, v55
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v63, v113, v63, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v113, v36, v54
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v68, v68, v142, v107
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v34, v34, v55
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v70, v70, v140, v105
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v0, v0, v55 :: v_dual_add_nc_u32 v137, 0, v53
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v68, v107, v68, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v107, v1, v54
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v64, v64, v146, v112
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v1, v1, v55
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v66, v109, v66, s3
	v_cndmask_b32_e64 v71, v104, v71, s3
	v_cndmask_b32_e64 v45, v98, v45, s3
	v_cndmask_b32_e64 v64, v112, v64, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v112, v35, v54
	v_mul_f32_e32 v35, v35, v55
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v47, v88, v47, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v2, v2, v55
	v_mul_f32_e32 v36, v36, v55
	v_mul_f32_e32 v39, v39, v55
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v10, v107, v10, v48
	v_fma_f32 v14, v111, v14, v91
	v_fma_f32 v16, v113, v16, v93
	v_fma_f32 v17, v114, v17, v94
	v_fma_f32 v29, v33, v29, v69
	v_fma_f32 v33, v34, v30, v68
	v_fma_f32 v34, v37, v49, v65
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v70, v105, v70, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v109, v3, v54
	v_mul_f32_e32 v117, v40, v54
	v_mul_f32_e32 v123, v43, v54
	v_mul_f32_e32 v3, v3, v55
	v_mul_f32_e32 v40, v40, v55
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v46, v99, v46, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v122, v42, v54
	v_dual_mul_f32 v54, v44, v54 :: v_dual_mul_f32 v41, v41, v55
	v_mul_f32_e32 v42, v42, v55
	v_mul_f32_e32 v43, v43, v55
	v_mul_f32_e32 v44, v44, v55
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v9, v106, v9, v86
	v_fma_f32 v25, v0, v25, v73
	v_fma_f32 v18, v115, v18, v95
	v_fma_f32 v19, v116, v19, v96
	v_fma_f32 v107, v1, v26, v72
	v_fma_f32 v31, v35, v31, v67
	v_fma_f32 v35, v38, v50, v64
	v_fma_f32 v11, v108, v11, v47
	v_fma_f32 v21, v121, v21, v45
	v_fma_f32 v27, v2, v27, v71
	v_fma_f32 v32, v36, v32, v66
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v2, v48, v10, s2
	v_cndmask_b32_e64 v10, v91, v14, s2
	v_cndmask_b32_e64 v14, v93, v16, s2
	v_cndmask_b32_e64 v16, v94, v17, s2
	v_cndmask_b32_e64 v17, v65, v34, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_nc_u32_e32 v34, s48, v56
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v36, v39, v51, v63
	v_fma_f32 v12, v109, v12, v89
	v_fma_f32 v55, v117, v20, v97
	v_fma_f32 v23, v123, v23, v100
	v_fma_f32 v108, v3, v28, v70
	v_fma_f32 v37, v40, v4, v62
	v_fma_f32 v13, v110, v13, v90
	v_fma_f32 v15, v112, v15, v92
	v_fma_f32 v106, v122, v22, v46
	v_fma_f32 v54, v54, v24, v101
	v_fma_f32 v38, v41, v5, v61
	v_fma_f32 v39, v42, v6, v60
	v_fma_f32 v40, v43, v7, v59
	v_fma_f32 v41, v44, v8, v58
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v0, v86, v9, s2
	v_cndmask_b32_e64 v1, v73, v25, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v138, 0x840, v53, 0
	v_xad_u32 v88, v103, 8, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v18, v95, v18, s2
	v_cndmask_b32_e64 v20, v96, v19, s2
	v_cndmask_b32_e64 v3, v72, v107, s2
	v_cndmask_b32_e64 v19, v64, v35, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v139, 0x1008, v53, 0
	v_xad_u32 v98, v103, 16, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v4, v47, v11, s2
	v_cndmask_b32_e64 v24, v45, v21, s2
	v_cndmask_b32_e64 v5, v71, v27, s2
	v_cndmask_b32_e64 v21, v63, v36, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v140, 0x1848, v53, 0
	v_xad_u32 v99, v103, 24, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v6, v89, v12, s2
	v_cndmask_b32_e64 v22, v97, v55, s2
	v_cndmask_b32_e64 v28, v100, v23, s2
	v_cndmask_b32_e64 v7, v70, v108, s2
	v_cndmask_b32_e64 v23, v62, v37, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v141, 0x2010, v53, 0
	v_xad_u32 v102, v103, 32, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v8, v90, v13, s2
	v_cndmask_b32_e64 v12, v92, v15, s2
	v_cndmask_b32_e64 v26, v46, v106, s2
	v_cndmask_b32_e64 v30, v101, v54, s2
	v_cndmask_b32_e64 v9, v69, v29, s2
	v_cndmask_b32_e64 v11, v68, v33, s2
	v_cndmask_b32_e64 v13, v67, v31, s2
	v_cndmask_b32_e64 v15, v66, v32, s2
	v_cndmask_b32_e64 v25, v61, v38, s2
	v_cndmask_b32_e64 v27, v60, v39, s2
	v_cndmask_b32_e64 v29, v59, v40, s2
	v_cndmask_b32_e64 v31, v58, v41, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v142, 0x2850, v53, 0
	v_xad_u32 v143, 0x3018, v53, 0
	v_xad_u32 v144, 0x3858, v53, 0
	v_xad_u32 v145, 0x4020, v53, 0
	v_xad_u32 v146, 0x4860, v53, 0
	v_xad_u32 v147, 0x5028, v53, 0
	v_xad_u32 v148, 0x5868, v53, 0
	v_xad_u32 v149, 0x6030, v53, 0
	v_xad_u32 v150, 0x6870, v53, 0
	v_xad_u32 v151, 0x7038, v53, 0
	v_xad_u32 v53, 0x7878, v53, 0
	v_xad_u32 v104, v103, 40, 0
	v_xad_u32 v105, v103, 48, 0
	v_xad_u32 v103, v103, 56, 0
	ds_store_2addr_stride64_b64 v87, v[0:1], v[16:17] offset1:2
	ds_store_2addr_stride64_b64 v88, v[2:3], v[18:19] offset1:2
	ds_store_2addr_stride64_b64 v98, v[4:5], v[20:21] offset1:2
	ds_store_2addr_stride64_b64 v99, v[6:7], v[22:23] offset1:2
	ds_store_2addr_stride64_b64 v102, v[8:9], v[24:25] offset1:2
	ds_store_2addr_stride64_b64 v104, v[10:11], v[26:27] offset1:2
	ds_store_2addr_stride64_b64 v105, v[12:13], v[28:29] offset1:2
	ds_store_2addr_stride64_b64 v103, v[14:15], v[30:31] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v137
	ds_load_b64 v[2:3], v138
	ds_load_b64 v[4:5], v139
	ds_load_b64 v[6:7], v140
	ds_load_b64 v[8:9], v141
	ds_load_b64 v[10:11], v142
	ds_load_b64 v[12:13], v143
	ds_load_b64 v[14:15], v144
	ds_load_b64 v[16:17], v145
	ds_load_b64 v[18:19], v146
	ds_load_b64 v[20:21], v147
	ds_load_b64 v[22:23], v148
	ds_load_b64 v[24:25], v149
	ds_load_b64 v[26:27], v150
	ds_load_b64 v[28:29], v151
	ds_load_b64 v[30:31], v53
	v_add_lshl_u32 v57, v52, s35, 2
	v_lshl_add_u32 v32, s35, 3, v56
	v_add_nc_u32_e32 v33, s33, v56
	v_add_lshl_u32 v156, v52, s20, 2
	v_add_lshl_u32 v157, v52, s21, 2
	v_lshl_add_u32 v35, s35, 6, v56
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v56, s[24:27], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v2, v57, s[24:27], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v4, v32, s[24:27], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v6, v74, s[24:27], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v8, v33, s[24:27], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v10, v75, s[24:27], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v12, v76, s[24:27], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v14, v77, s[24:27], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v16, v34, s[24:27], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v18, v78, s[24:27], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v20, v79, s[24:27], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v22, v80, s[24:27], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v24, v81, s[24:27], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v26, v82, s[24:27], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v28, v83, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0xb
	buffer_atomic_add_f32 v30, v84, s[24:27], 0 offen
	buffer_atomic_add_f32 v1, v35, s[24:27], 0 offen
	buffer_atomic_add_f32 v3, v85, s[24:27], 0 offen
	buffer_atomic_add_f32 v5, v118, s[24:27], 0 offen
	buffer_atomic_add_f32 v7, v119, s[24:27], 0 offen
	buffer_atomic_add_f32 v9, v120, s[24:27], 0 offen
	buffer_atomic_add_f32 v11, v156, s[24:27], 0 offen
	buffer_atomic_add_f32 v13, v157, s[24:27], 0 offen
	buffer_atomic_add_f32 v15, v158, s[24:27], 0 offen
	buffer_atomic_add_f32 v17, v159, s[24:27], 0 offen
	buffer_atomic_add_f32 v19, v160, s[24:27], 0 offen
	buffer_atomic_add_f32 v21, v161, s[24:27], 0 offen
	v_add_lshl_u32 v0, v52, s0, 2
	s_clause 0x4
	buffer_atomic_add_f32 v23, v162, s[24:27], 0 offen
	buffer_atomic_add_f32 v25, v163, s[24:27], 0 offen
	buffer_atomic_add_f32 v27, v164, s[24:27], 0 offen
	buffer_atomic_add_f32 v29, v165, s[24:27], 0 offen
	buffer_atomic_add_f32 v31, v0, s[24:27], 0 offen
	.loc	1 309 1                         ; generate_amdgcn.py:309:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 228
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20560
; TotalNumSgprs: 54
; NumVgprs: 228
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 54
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
	.short	317                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	316                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	387                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	333                             ; DW_AT_call_line
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
.Ldebug_ranges3:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     228
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
