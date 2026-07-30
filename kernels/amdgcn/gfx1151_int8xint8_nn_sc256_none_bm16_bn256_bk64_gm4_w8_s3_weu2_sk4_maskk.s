	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
	.loc	1 325 32                        ; generate_amdgcn.py:325:32
	v_lshrrev_b32_e32 v15, 4, v0
	v_and_b32_e32 v14, 15, v0
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_lshlrev_b32_e32 v48, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 327 14                        ; generate_amdgcn.py:327:14
	v_or_b32_e32 v40, 16, v15
	v_lshlrev_b32_e32 v16, 2, v14
	v_or_b32_e32 v41, 32, v15
	v_or_b32_e32 v42, 48, v15
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:317:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:316:17 ]
	s_add_i32 s8, s34, 15
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
	s_lshr_b32 s10, s10, 28
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
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 318 24 is_stmt 1              ; generate_amdgcn.py:318:24
	s_lshl_b32 s4, s4, 2
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_mul_lo_u32 v2, s35, v15
	.loc	1 319 16                        ; generate_amdgcn.py:319:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_lshl_add_u32 v9, v14, 4, v2
	v_mad_u64_u32 v[10:11], null, s35, 48, v[9:10]
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
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_mul_lo_u32 v1, s31, v15
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
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s4, s4, s18
	s_add_i32 s18, s2, 1
	s_sub_i32 s19, s4, s16
	s_cmp_ge_u32 s4, s16
	s_cselect_b32 s2, s18, s2
	s_cselect_b32 s4, s19, s4
	s_add_i32 s18, s2, 1
	s_cmp_ge_u32 s4, s16
	s_cselect_b32 s2, s18, s2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s18, s31, 0xff
.Ltmp13:
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_xor_b32 s2, s2, s17
	.loc	1 368 22                        ; generate_amdgcn.py:368:22
	s_lshl_b32 s30, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_ashr_i32 s3, s18, 31
.Ltmp15:
	.loc	1 323 13                        ; generate_amdgcn.py:323:13
	s_sub_i32 s2, s2, s17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_lshr_b32 s3, s3, 24
.Ltmp17:
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_mul_i32 s7, s2, s7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:333:28 ]
	s_add_i32 s17, s18, s3
.Ltmp19:
	.loc	1 322 28                        ; generate_amdgcn.py:322:28
	s_sub_i32 s3, s5, s7
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v2, s30, v16
	v_or_b32_e32 v3, s30, v15
	v_or_b32_e32 v4, s30, v40
	v_or_b32_e32 v5, s30, v41
	v_or_b32_e32 v6, s30, v42
	.loc	1 322 13                        ; generate_amdgcn.py:322:13
	s_add_i32 s3, s3, s6
	.loc	1 326 14                        ; generate_amdgcn.py:326:14
	s_lshl_b32 s49, s2, 8
	.loc	1 325 14                        ; generate_amdgcn.py:325:14
	s_lshl_b32 s26, s3, 4
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_mul_i32 s16, s35, s30
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmpk_gt_i32 s18, 0xff
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s2, s31, v3
	v_cmp_gt_i32_e64 s4, s31, v4
	v_cmp_gt_i32_e64 s5, s31, v5
	v_cmp_gt_i32_e64 s6, s31, v6
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	s_mul_i32 s7, s26, s31
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s3, -1, 0
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_add_i32 s16, s49, s16
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add3_u32 v43, v1, v16, s7
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v1, s16, v9
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_lshl_b32 s33, s35, 4
	s_lshl_b32 s34, s35, 5
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_and_b32 s6, s6, s3
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s4, s4, s3
	s_and_b32 s5, s5, s3
	s_and_b32 s2, s2, s3
	s_cmpk_gt_i32 s18, 0x1ff
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v44, s33, v9
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_cselect_b32 s2, -1, 0
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s27, s30, 0x100
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v45, s34, v9
	v_add_nc_u32_e32 v2, s16, v10
	.loc	1 374 30                        ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v3, s30, v43
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v11, s27, v16
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v4, s16, v44
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v12, s27, v15
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v5, s16, v45
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v13, s27, v40
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	.loc	1 378 30 is_stmt 0              ; generate_amdgcn.py:378:30
	s_lshl_b32 s6, s35, 8
	.loc	1 374 22 is_stmt 1              ; generate_amdgcn.py:374:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v11
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v29, s27, v41
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v7, 0x80000000, v4, s4
	.loc	1 378 30 is_stmt 0              ; generate_amdgcn.py:378:30
	s_add_i32 s16, s16, s6
	.loc	1 374 30 is_stmt 1              ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v31, s27, v43
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s4, s31, v12
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v30, s27, v42
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v8, 0x80000000, v5, s5
	.loc	1 378 30 is_stmt 0              ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v32, s16, v9
	.loc	1 370 23 is_stmt 1              ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s5, s31, v13
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v33, s16, v44
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s6, s31, v29
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b32 v37, v3, s[8:11], 0 offen
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_clause 0x3
	buffer_load_b128 v[3:6], v1, s[36:39], 0 offen
	buffer_load_b128 v[17:20], v7, s[36:39], 0 offen
	buffer_load_b128 v[21:24], v8, s[36:39], 0 offen
	buffer_load_b128 v[25:28], v2, s[36:39], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_cndmask_b32_e32 v1, 0x80000000, v31, vcc_lo
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v34, s16, v45
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s7, s31, v30
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e32 v2, 0x80000000, v32, vcc_lo
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v35, s16, v10
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s6, s2
	s_mov_b32 s16, 0
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s7, s2
	s_cmpk_gt_i32 s18, 0x2ff
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e32 v11, 0x80000000, v35, vcc_lo
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b32 v12, v1, s[8:11], 0 offen
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_clause 0x3
	buffer_load_b128 v[29:32], v2, s[36:39], 0 offen
	buffer_load_b128 v[33:36], v7, s[36:39], 0 offen
	buffer_load_b128 v[49:52], v8, s[36:39], 0 offen
	buffer_load_b128 v[53:56], v11, s[36:39], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_lshrrev_b32_e32 v1, 1, v0
	v_lshlrev_b32_e32 v2, 2, v0
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v8, 0, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_b32_e32 v7, 48, v1
	v_and_b32_e32 v46, 0x70, v1
	v_xor_b32_e32 v47, v2, v7
	v_lshlrev_b32_e32 v2, 3, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v7, 0, v47
	s_waitcnt vmcnt(9)
	ds_store_b32 v7, v37 offset:32768
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v8, v[3:6]
	s_waitcnt vmcnt(7)
	ds_store_b128 v8, v[17:20] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v8, v[21:24] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v8, v[25:28] offset:12288
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v7, v12 offset:33792
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v8, v[29:32] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v8, v[33:36] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v8, v[49:52] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v8, v[53:56] offset:28672
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_and_b32_e32 v3, 48, v2
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_and_b32_e32 v1, 0x70, v1
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_lshl_or_b32 v37, v14, 6, v3
	v_xor_b32_e32 v38, 16, v37
	v_xor_b32_e32 v39, 32, v37
	v_xor_b32_e32 v36, 48, v37
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow47
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v3, s26, v14
	v_and_b32_e32 v4, 0xf0, v0
	s_ashr_i32 s48, s17, 8
	v_or_b32_e32 v17, s49, v0
	v_lshlrev_b32_e32 v12, 1, v0
	v_mul_lo_u32 v35, v3, s48
	v_lshlrev_b32_e32 v11, 2, v4
	v_lshlrev_b32_e32 v13, 5, v0
	v_lshlrev_b32_e32 v19, 1, v4
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v1, 48, v2
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v14, 6, v1
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v1, 32, v13
	v_and_b32_e32 v20, 28, v12
	v_xor_b32_e32 v38, 16, v37
	v_xor_b32_e32 v39, 32, v37
	v_xor_b32_e32 v36, 48, v37
	v_add3_u32 v21, 0, v11, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_add_nc_u32_e32 v49, v21, v20
	v_mov_b32_e32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v50, 0, v19
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v27, 0
	v_mov_b32_e32 v34, 0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 333 5 is_stmt 1               ; generate_amdgcn.py:333:5
	s_max_i32 s14, s48, 3
	s_add_i32 s7, s27, 0x100
	s_and_b32 s41, s13, 0xffff
	s_mov_b32 s40, s12
	s_and_b32 s45, s29, 0xffff
	s_mov_b32 s44, s28
	s_mov_b32 s50, 1
	s_add_i32 s6, 0, 0x8000
	s_add_i32 s0, 0, 0x8400
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s14, s14, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	s_mov_b32 s15, s16
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s4, s6
	s_mov_b32 s6, s0
	s_mov_b32 s5, s16
	s_mov_b32 s16, s1
	s_mov_b32 s0, s30
	.loc	1 334 14 is_stmt 1              ; generate_amdgcn.py:334:14
	s_lshl_b32 s1, s15, 8
	s_mov_b32 s30, s27
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	s_add_i32 s27, s7, s1
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s1, s0, 31
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v56, s27, v16
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_lshr_b32 s1, s1, 24
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v57, s27, v15
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_add_i32 s0, s0, s1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v52, s4, v37
	v_add_nc_u32_e32 v53, s4, v38
	v_add_nc_u32_e32 v54, s4, v39
	v_add_nc_u32_e32 v55, s4, v36
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v58, s27, v40
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_mul_i32 s4, s27, s35
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s17, s0, 8
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	s_add_i32 s4, s4, s49
	.loc	1 378 22 is_stmt 0              ; generate_amdgcn.py:378:22
	v_add3_u32 v51, s5, v46, v14
	.loc	1 374 30 is_stmt 1              ; generate_amdgcn.py:374:30
	v_add_nc_u32_e32 v61, s27, v43
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v57
	.loc	1 369 23                        ; generate_amdgcn.py:369:23
	v_cmp_gt_i32_e64 s5, s31, v56
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s17, s48
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v57, v35, s17, 1
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s17, s17, s35
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s0, s31, v58
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v58, v17, s17, 1
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_cndmask_b32_e64 v56, 0x80000000, v61, s5
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s5, -1, 0
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v59, s27, v41
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_cndmask_b32_e64 v57, 0x80000000, v57, s5
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_cndmask_b32_e64 v58, 0x80000000, v58, s5
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	buffer_load_b32 v127, v56, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	buffer_load_u16 v128, v58, s[44:47], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v129, v57, s[40:43], 0 offen
	.loc	1 368 17                        ; generate_amdgcn.py:368:17
	v_or_b32_e32 v60, s27, v42
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v62, s4, v9
	v_add_nc_u32_e32 v63, s4, v44
	v_add_nc_u32_e32 v64, s4, v45
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s1, s31, v59
	.loc	1 378 30                        ; generate_amdgcn.py:378:30
	v_add_nc_u32_e32 v65, s4, v10
	.loc	1 370 23                        ; generate_amdgcn.py:370:23
	v_cmp_gt_i32_e64 s4, s31, v60
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e32 v59, 0x80000000, v62, vcc_lo
	v_cndmask_b32_e64 v60, 0x80000000, v63, s0
	v_cndmask_b32_e64 v61, 0x80000000, v64, s1
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v57, v51 offset:3456
	ds_load_u8 v58, v51 offset:3200
	ds_load_u8 v66, v51 offset:2304
	ds_load_u8 v99, v51 offset:2048
	ds_load_u8 v100, v51 offset:2816
	ds_load_u8 v101, v51 offset:2560
	ds_load_u8 v102, v51 offset:2944
	ds_load_u8 v103, v51 offset:2688
	ds_load_u8 v104, v51 offset:2432
	ds_load_u8 v105, v51 offset:2176
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_cndmask_b32_e64 v62, 0x80000000, v65, s4
	s_clause 0x3
	buffer_load_b128 v[83:86], v59, s[36:39], 0 offen
	buffer_load_b128 v[87:90], v60, s[36:39], 0 offen
	buffer_load_b128 v[91:94], v61, s[36:39], 0 offen
	buffer_load_b128 v[95:98], v62, s[36:39], 0 offen
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[67:70], v52
	ds_load_b128 v[71:74], v53
	ds_load_b128 v[75:78], v54
	ds_load_b128 v[79:82], v55
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v52, v51 offset:1280
	ds_load_u8 v53, v51 offset:1024
	ds_load_u8 v54, v51 offset:3328
	ds_load_u8 v55, v51 offset:3072
	ds_load_u8 v56, v51 offset:3840
	ds_load_u8 v63, v51 offset:3584
	ds_load_u8 v64, v51 offset:3968
	ds_load_u8 v65, v51 offset:3712
	ds_load_u8 v59, v51 offset:1792
	ds_load_u8 v60, v51 offset:1536
	ds_load_u8 v61, v51 offset:1920
	ds_load_u8 v62, v51 offset:1664
	ds_load_u8 v106, v51 offset:1408
	ds_load_u8 v107, v51 offset:1152
	ds_load_u8 v108, v51 offset:256
	ds_load_u8 v109, v51
	ds_load_u8 v110, v51 offset:768
	ds_load_u8 v111, v51 offset:512
	ds_load_u8 v112, v51 offset:896
	ds_load_u8 v113, v51 offset:640
	ds_load_u8 v114, v51 offset:384
	ds_load_u8 v115, v51 offset:128
	ds_load_u8 v116, v51 offset:7424
	ds_load_u8 v117, v51 offset:7168
	ds_load_u8 v118, v51 offset:7936
	ds_load_u8 v119, v51 offset:7680
	ds_load_u8 v120, v51 offset:8064
	ds_load_u8 v121, v51 offset:7808
	ds_load_u8 v122, v51 offset:7552
	ds_load_u8 v123, v51 offset:7296
	ds_load_u8 v124, v51 offset:6400
	ds_load_u8 v125, v51 offset:6144
	ds_load_u8 v126, v51 offset:6912
	ds_load_u8 v130, v51 offset:6656
	ds_load_u8 v131, v51 offset:7040
	ds_load_u8 v132, v51 offset:6784
	ds_load_u8 v133, v51 offset:6528
	ds_load_u8 v134, v51 offset:6272
	ds_load_u8 v135, v51 offset:5376
	ds_load_u8 v136, v51 offset:5120
	ds_load_u8 v137, v51 offset:5888
	ds_load_u8 v138, v51 offset:5632
	ds_load_u8 v139, v51 offset:6016
	ds_load_u8 v140, v51 offset:5760
	ds_load_u8 v141, v51 offset:5504
	ds_load_u8 v142, v51 offset:5248
	ds_load_u8 v143, v51 offset:4352
	ds_load_u8 v144, v51 offset:4096
	ds_load_u8 v145, v51 offset:4864
	ds_load_u8 v146, v51 offset:4608
	ds_load_u8 v147, v51 offset:4992
	ds_load_u8 v148, v51 offset:4736
	ds_load_u8 v149, v51 offset:4480
	ds_load_u8 v150, v51 offset:4224
	ds_load_u8 v151, v51 offset:11520
	ds_load_u8 v152, v51 offset:11264
	ds_load_u8 v153, v51 offset:12032
	ds_load_u8 v154, v51 offset:11776
	ds_load_u8 v155, v51 offset:12160
	ds_load_u8 v156, v51 offset:11904
	ds_load_u8 v157, v51 offset:11648
	ds_load_u8 v158, v51 offset:11392
	ds_load_u8 v159, v51 offset:10496
	ds_load_u8 v160, v51 offset:10240
	ds_load_u8 v161, v51 offset:11008
	ds_load_u8 v162, v51 offset:10752
	ds_load_u8 v163, v51 offset:11136
	ds_load_u8 v164, v51 offset:10880
	ds_load_u8 v165, v51 offset:10624
	ds_load_u8 v166, v51 offset:10368
	ds_load_u8 v167, v51 offset:9472
	ds_load_u8 v168, v51 offset:9216
	ds_load_u8 v169, v51 offset:9984
	ds_load_u8 v170, v51 offset:9728
	ds_load_u8 v171, v51 offset:10112
	ds_load_u8 v172, v51 offset:9856
	ds_load_u8 v173, v51 offset:9600
	ds_load_u8 v174, v51 offset:9344
	ds_load_u8 v175, v51 offset:8448
	ds_load_u8 v176, v51 offset:8192
	ds_load_u8 v177, v51 offset:8960
	ds_load_u8 v178, v51 offset:8704
	ds_load_u8 v179, v51 offset:9088
	ds_load_u8 v180, v51 offset:8832
	ds_load_u8 v181, v51 offset:8576
	ds_load_u8 v182, v51 offset:8320
	ds_load_u8 v183, v51 offset:15616
	ds_load_u8 v184, v51 offset:15360
	ds_load_u8 v185, v51 offset:16128
	ds_load_u8 v186, v51 offset:15872
	ds_load_u8 v187, v51 offset:16256
	ds_load_u8 v188, v51 offset:16000
	ds_load_u8 v189, v51 offset:15744
	ds_load_u8 v190, v51 offset:15488
	ds_load_u8 v191, v51 offset:14592
	ds_load_u8 v192, v51 offset:14336
	ds_load_u8 v193, v51 offset:15104
	ds_load_u8 v194, v51 offset:14848
	ds_load_u8 v195, v51 offset:15232
	ds_load_u8 v196, v51 offset:14976
	ds_load_u8 v197, v51 offset:14720
	ds_load_u8 v198, v51 offset:14464
	ds_load_u8 v199, v51 offset:13568
	ds_load_u8 v200, v51 offset:13312
	ds_load_u8 v201, v51 offset:14080
	ds_load_u8 v202, v51 offset:13824
	ds_load_u8 v203, v51 offset:14208
	ds_load_u8 v204, v51 offset:13952
	ds_load_u8 v205, v51 offset:13696
	ds_load_u8 v206, v51 offset:13440
	ds_load_u8 v207, v51 offset:12544
	ds_load_u8 v208, v51 offset:12288
	ds_load_u8 v209, v51 offset:13056
	ds_load_u8 v210, v51 offset:12800
	ds_load_u8 v211, v51 offset:13184
	ds_load_u8 v212, v51 offset:12928
	ds_load_u8 v213, v51 offset:12672
	ds_load_u8 v51, v51 offset:12416
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v115, v115, v114, 0xc0c0004
	v_perm_b32 v122, v123, v122, 0xc0c0004
	v_perm_b32 v120, v121, v120, 0xc0c0004
	v_perm_b32 v121, v134, v133, 0xc0c0004
	v_perm_b32 v123, v132, v131, 0xc0c0004
	v_perm_b32 v57, v58, v57, 0xc0c0004
	v_perm_b32 v131, v142, v141, 0xc0c0004
	v_perm_b32 v132, v140, v139, 0xc0c0004
	v_perm_b32 v133, v150, v149, 0xc0c0004
	v_perm_b32 v134, v148, v147, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v139, v158, v157, 0xc0c0004
	v_perm_b32 v52, v53, v52, 0xc0c0004
	v_perm_b32 v53, v60, v59, 0xc0c0004
	v_perm_b32 v54, v55, v54, 0xc0c0004
	v_perm_b32 v59, v109, v108, 0xc0c0004
	v_perm_b32 v55, v63, v56, 0xc0c0004
	v_perm_b32 v56, v99, v66, 0xc0c0004
	v_perm_b32 v63, v101, v100, 0xc0c0004
	v_perm_b32 v66, v111, v110, 0xc0c0004
	v_perm_b32 v99, v117, v116, 0xc0c0004
	v_perm_b32 v100, v119, v118, 0xc0c0004
	v_perm_b32 v101, v125, v124, 0xc0c0004
	v_perm_b32 v108, v130, v126, 0xc0c0004
	v_perm_b32 v109, v136, v135, 0xc0c0004
	v_perm_b32 v110, v138, v137, 0xc0c0004
	v_perm_b32 v111, v144, v143, 0xc0c0004
	v_perm_b32 v116, v146, v145, 0xc0c0004
	v_perm_b32 v117, v152, v151, 0xc0c0004
	v_perm_b32 v118, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v124, v162, v161, 0xc0c0004
	v_perm_b32 v58, v65, v64, 0xc0c0004
	v_perm_b32 v64, v105, v104, 0xc0c0004
	v_perm_b32 v65, v103, v102, 0xc0c0004
	v_perm_b32 v152, v107, v106, 0xc0c0004
	v_perm_b32 v153, v62, v61, 0xc0c0004
	v_perm_b32 v154, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v51, v213, 0xc0c0004
	v_perm_b32 v161, v212, v211, 0xc0c0004
	v_lshl_or_b32 v62, v55, 16, v54
	v_lshl_or_b32 v61, v63, 16, v56
	v_lshl_or_b32 v60, v53, 16, v52
	v_lshl_or_b32 v59, v66, 16, v59
	v_perm_b32 v119, v160, v159, 0xc0c0004
	v_perm_b32 v125, v168, v167, 0xc0c0004
	v_perm_b32 v126, v170, v169, 0xc0c0004
	v_perm_b32 v130, v176, v175, 0xc0c0004
	v_perm_b32 v135, v178, v177, 0xc0c0004
	v_lshl_or_b32 v102, v100, 16, v99
	v_lshl_or_b32 v101, v108, 16, v101
	v_lshl_or_b32 v100, v110, 16, v109
	v_lshl_or_b32 v99, v116, 16, v111
	v_lshl_or_b32 v106, v118, 16, v117
	v_lshl_or_b32 v114, v58, 16, v57
	v_lshl_or_b32 v113, v65, 16, v64
	v_lshl_or_b32 v112, v153, 16, v152
	v_lshl_or_b32 v111, v154, 16, v115
	v_lshl_or_b32 v117, v123, 16, v121
	v_lshl_or_b32 v123, v161, 16, v51
	v_wmma_i32_16x16x16_iu8 v[51:58], v[59:62], v[67:70], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v136, v184, v183, 0xc0c0004
	v_perm_b32 v137, v186, v185, 0xc0c0004
	v_perm_b32 v138, v192, v191, 0xc0c0004
	v_perm_b32 v143, v194, v193, 0xc0c0004
	v_perm_b32 v144, v200, v199, 0xc0c0004
	v_perm_b32 v145, v202, v201, 0xc0c0004
	v_perm_b32 v146, v208, v207, 0xc0c0004
	v_perm_b32 v151, v210, v209, 0xc0c0004
	v_perm_b32 v140, v156, v155, 0xc0c0004
	v_perm_b32 v141, v166, v165, 0xc0c0004
	v_perm_b32 v142, v164, v163, 0xc0c0004
	v_perm_b32 v147, v174, v173, 0xc0c0004
	v_perm_b32 v148, v172, v171, 0xc0c0004
	v_perm_b32 v149, v182, v181, 0xc0c0004
	v_perm_b32 v150, v180, v179, 0xc0c0004
	v_lshl_or_b32 v105, v124, 16, v119
	v_lshl_or_b32 v104, v126, 16, v125
	v_lshl_or_b32 v103, v135, 16, v130
	v_lshl_or_b32 v118, v120, 16, v122
	v_lshl_or_b32 v116, v132, 16, v131
	v_lshl_or_b32 v115, v134, 16, v133
	v_wmma_i32_16x16x16_iu8 v[59:66], v[111:114], v[67:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[99:102], v[71:74], v[51:58] neg_lo:[1,1,0]
	v_perm_b32 v155, v190, v189, 0xc0c0004
	v_perm_b32 v156, v188, v187, 0xc0c0004
	v_perm_b32 v157, v198, v197, 0xc0c0004
	v_perm_b32 v158, v196, v195, 0xc0c0004
	v_perm_b32 v159, v206, v205, 0xc0c0004
	v_perm_b32 v160, v204, v203, 0xc0c0004
	v_lshl_or_b32 v110, v137, 16, v136
	v_lshl_or_b32 v109, v143, 16, v138
	v_lshl_or_b32 v108, v145, 16, v144
	v_lshl_or_b32 v107, v151, 16, v146
	v_lshl_or_b32 v122, v140, 16, v139
	v_lshl_or_b32 v121, v142, 16, v141
	v_lshl_or_b32 v120, v148, 16, v147
	v_lshl_or_b32 v119, v150, 16, v149
	v_wmma_i32_16x16x16_iu8 v[59:66], v[115:118], v[71:74], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[103:106], v[75:78], v[51:58] neg_lo:[1,1,0]
	v_lshl_or_b32 v126, v156, 16, v155
	v_lshl_or_b32 v125, v158, 16, v157
	v_lshl_or_b32 v124, v160, 16, v159
	v_wmma_i32_16x16x16_iu8 v[59:66], v[119:122], v[75:78], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[51:58], v[107:110], v[79:82], v[51:58] neg_lo:[1,1,0]
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_add_i32 s17, s50, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_cmp_lt_i32 s17, 2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_wmma_i32_16x16x16_iu8 v[59:66], v[123:126], v[79:82], v[59:66] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v67, v51
	v_cvt_f32_i32_e32 v68, v52
	v_cvt_f32_i32_e32 v69, v53
	v_cvt_f32_i32_e32 v70, v54
	v_cvt_f32_i32_e32 v71, v55
	v_cvt_f32_i32_e32 v72, v56
	v_cvt_f32_i32_e32 v73, v57
	v_cvt_f32_i32_e32 v74, v58
	v_cvt_f32_i32_e32 v75, v59
	v_cvt_f32_i32_e32 v76, v60
	v_cvt_f32_i32_e32 v77, v61
	v_cvt_f32_i32_e32 v78, v62
	v_cvt_f32_i32_e32 v79, v63
	v_cvt_f32_i32_e32 v80, v64
	v_cvt_f32_i32_e32 v81, v65
	v_cvt_f32_i32_e32 v82, v66
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cselect_b32 s50, s17, 0
	s_add_i32 s4, s15, 1
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_lshl_b32 s1, s50, 14
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_lshl_b32 s0, s50, 10
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_add_i32 s1, s1, 0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_add_i32 s5, s0, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s0, s5, 0x8000
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cmp_lg_u32 s15, s14
	s_mov_b32 s15, s4
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v99, 16, v129
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_lshlrev_b32_e32 v51, 16, v128
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_store_b32 v49, v51 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v50 offset:34816
	ds_load_b128 v[55:58], v50 offset:34832
	ds_load_b128 v[59:62], v50 offset:35328
	ds_load_b128 v[63:66], v50 offset:35344
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v51, v51, v99
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fmac_f32_e32 v18, v51, v67
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v58, v58, v99 :: v_dual_add_nc_u32 v215, s1, v48
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v62, v62, v99
	v_mul_f32_e32 v52, v52, v99
	v_mul_f32_e32 v53, v53, v99
	v_mul_f32_e32 v54, v54, v99
	v_mul_f32_e32 v55, v55, v99
	v_mul_f32_e32 v56, v56, v99
	v_mul_f32_e32 v57, v57, v99
	v_mul_f32_e32 v59, v59, v99
	v_mul_f32_e32 v60, v60, v99
	v_dual_mul_f32 v61, v61, v99 :: v_dual_fmac_f32 v26, v58, v74
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v63, v63, v99
	v_mul_f32_e32 v64, v64, v99
	v_mul_f32_e32 v65, v65, v99
	v_dual_mul_f32 v66, v66, v99 :: v_dual_fmac_f32 v29, v60, v76
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_dual_fmac_f32 v20, v52, v68 :: v_dual_fmac_f32 v21, v53, v69
	v_fmac_f32_e32 v22, v54, v70
	v_dual_fmac_f32 v25, v57, v73 :: v_dual_add_nc_u32 v214, s5, v47
	v_dual_fmac_f32 v23, v55, v71 :: v_dual_fmac_f32 v34, v65, v81
	v_fmac_f32_e32 v24, v56, v72
	v_dual_fmac_f32 v28, v59, v75 :: v_dual_fmac_f32 v31, v62, v78
	v_fmac_f32_e32 v30, v61, v77
	v_dual_fmac_f32 v32, v63, v79 :: v_dual_fmac_f32 v33, v64, v80
	v_fmac_f32_e32 v27, v66, v82
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_store_b32 v214, v127 offset:32768
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v215, v[83:86]
	s_waitcnt vmcnt(2)
	ds_store_b128 v215, v[87:90] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v215, v[91:94] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v215, v[95:98] offset:12288
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v46
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v20, 0
	v_mov_b32_e32 v18, 0
	s_add_i32 s6, 0, 0x8000
	s_add_i32 s0, 0, 0x8400
	s_add_i32 s1, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 378 22 is_stmt 1              ; generate_amdgcn.py:378:22
	v_or_b32_e32 v61, v1, v14
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_mov_b32_e32 v57, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v9, s16, v61
	s_mov_b32 s16, 0
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v83, s6, v36
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v1, s6, v38
	v_add_nc_u32_e32 v2, s6, v37
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v3, v9 offset:3328
	ds_load_u8 v4, v9 offset:3072
	ds_load_u8 v5, v9 offset:3840
	ds_load_u8 v6, v9 offset:3584
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[41:44], v1
	ds_load_b128 v[53:56], v2
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v1, v9 offset:2304
	ds_load_u8 v2, v9 offset:2048
	ds_load_u8 v7, v9 offset:2816
	ds_load_u8 v8, v9 offset:2560
	ds_load_u8 v14, v9 offset:1280
	ds_load_u8 v15, v9 offset:1024
	ds_load_u8 v16, v9 offset:1792
	ds_load_u8 v45, v9 offset:1536
	ds_load_u8 v46, v9 offset:256
	ds_load_u8 v47, v9
	ds_load_u8 v48, v9 offset:768
	ds_load_u8 v49, v9 offset:512
	ds_load_u8 v70, v9 offset:3968
	ds_load_u8 v71, v9 offset:3712
	ds_load_u8 v72, v9 offset:3456
	ds_load_u8 v73, v9 offset:3200
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v4, v6, v5, 0xc0c0004
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v10, s6, v39
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v60, v4, 16, v3
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v5, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v45, v16, 0xc0c0004
	v_lshl_or_b32 v59, v2, 16, v1
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v49, v48, 0xc0c0004
	v_lshl_or_b32 v58, v6, 16, v5
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	v_lshl_or_b32 v57, v8, 16, v7
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	ds_load_u8 v66, v9 offset:7424
	ds_load_u8 v67, v9 offset:7168
	ds_load_u8 v68, v9 offset:7936
	ds_load_u8 v69, v9 offset:7680
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[62:65], v10
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v74, v9 offset:2944
	ds_load_u8 v75, v9 offset:2688
	ds_load_u8 v76, v9 offset:2432
	ds_load_u8 v77, v9 offset:2176
	ds_load_u8 v78, v9 offset:1920
	ds_load_u8 v79, v9 offset:1664
	ds_load_u8 v80, v9 offset:1408
	ds_load_u8 v81, v9 offset:1152
	ds_load_u8 v14, v9 offset:896
	ds_load_u8 v15, v9 offset:640
	ds_load_u8 v16, v9 offset:384
	ds_load_u8 v82, v9 offset:128
	v_wmma_i32_16x16x16_iu8 v[45:52], v[57:60], v[53:56], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v10, v9 offset:6400
	ds_load_u8 v57, v9 offset:6144
	ds_load_u8 v58, v9 offset:6912
	ds_load_u8 v59, v9 offset:6656
	ds_load_u8 v60, v9 offset:5376
	ds_load_u8 v84, v9 offset:5120
	ds_load_u8 v85, v9 offset:5888
	ds_load_u8 v86, v9 offset:5632
	ds_load_u8 v87, v9 offset:8064
	ds_load_u8 v88, v9 offset:7808
	ds_load_u8 v89, v9 offset:7552
	ds_load_u8 v90, v9 offset:7296
	ds_load_u8 v97, v9 offset:6016
	ds_load_u8 v98, v9 offset:5760
	ds_load_u8 v99, v9 offset:5504
	ds_load_u8 v100, v9 offset:5248
	ds_load_u8 v117, v9 offset:10112
	ds_load_u8 v118, v9 offset:9856
	ds_load_u8 v119, v9 offset:9600
	ds_load_u8 v120, v9 offset:9344
	ds_load_u8 v134, v9 offset:14208
	ds_load_u8 v135, v9 offset:13952
	ds_load_u8 v136, v9 offset:13696
	ds_load_u8 v137, v9 offset:13440
	v_lshl_or_b32 v73, v70, 16, v72
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v9 offset:4352
	ds_load_u8 v91, v9 offset:4096
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v9 offset:4864
	ds_load_u8 v92, v9 offset:4608
	ds_load_u8 v93, v9 offset:7040
	ds_load_u8 v94, v9 offset:6784
	ds_load_u8 v95, v9 offset:6528
	ds_load_u8 v96, v9 offset:6272
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v10, v57, v10, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v57, v59, v58, 0xc0c0004
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v58, v84, v60, 0xc0c0004
	v_lshl_or_b32 v60, v68, 16, v66
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v84, v86, v85, 0xc0c0004
	v_lshl_or_b32 v59, v57, 16, v10
	ds_load_u8 v85, v9 offset:4992
	ds_load_u8 v86, v9 offset:4736
	ds_load_u8 v101, v9 offset:4480
	ds_load_u8 v102, v9 offset:4224
	v_perm_b32 v71, v77, v76, 0xc0c0004
	v_perm_b32 v75, v81, v80, 0xc0c0004
	v_lshl_or_b32 v58, v84, 16, v58
	v_perm_b32 v76, v79, v78, 0xc0c0004
	v_perm_b32 v16, v82, v16, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v69, v92, v69, 0xc0c0004
	ds_load_u8 v92, v9 offset:12032
	ds_load_u8 v104, v9 offset:11776
	v_perm_b32 v67, v91, v67, 0xc0c0004
	ds_load_u8 v91, v9 offset:11520
	ds_load_u8 v103, v9 offset:11264
	v_lshl_or_b32 v72, v74, 16, v71
	v_lshl_or_b32 v71, v76, 16, v75
	v_lshl_or_b32 v70, v14, 16, v16
	v_lshl_or_b32 v57, v69, 16, v67
	ds_load_u8 v10, v9 offset:10496
	ds_load_u8 v66, v9 offset:10240
	ds_load_u8 v67, v9 offset:11008
	ds_load_u8 v68, v9 offset:10752
	ds_load_u8 v69, v9 offset:9472
	ds_load_u8 v84, v9 offset:9216
	ds_load_u8 v105, v9 offset:9984
	ds_load_u8 v106, v9 offset:9728
	ds_load_u8 v107, v9 offset:12160
	ds_load_u8 v108, v9 offset:11904
	ds_load_u8 v109, v9 offset:11648
	ds_load_u8 v110, v9 offset:11392
	v_perm_b32 v14, v90, v89, 0xc0c0004
	v_perm_b32 v15, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v16, v96, v95, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[45:52], v[57:60], v[41:44], v[45:52] neg_lo:[1,1,0]
	v_perm_b32 v74, v94, v93, 0xc0c0004
	v_perm_b32 v75, v100, v99, 0xc0c0004
	v_perm_b32 v76, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v77, v102, v101, 0xc0c0004
	v_perm_b32 v78, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v66, v10, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[70:73], v[53:56], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v66, v68, v67, 0xc0c0004
	v_perm_b32 v92, v104, v92, 0xc0c0004
	ds_load_u8 v104, v9 offset:8960
	ds_load_u8 v112, v9 offset:8704
	ds_load_u8 v113, v9 offset:11136
	ds_load_u8 v114, v9 offset:10880
	ds_load_u8 v115, v9 offset:10624
	ds_load_u8 v116, v9 offset:10368
	v_perm_b32 v91, v103, v91, 0xc0c0004
	ds_load_u8 v103, v9 offset:8448
	ds_load_u8 v111, v9 offset:8192
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v67, v84, v69, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v68, v106, v105, 0xc0c0004
	v_lshl_or_b32 v59, v66, 16, v10
	v_lshl_or_b32 v60, v92, 16, v91
	ds_load_u8 v84, v9 offset:9088
	ds_load_u8 v105, v9 offset:8832
	ds_load_u8 v106, v9 offset:8576
	ds_load_u8 v121, v9 offset:8320
	v_lshl_or_b32 v56, v15, 16, v14
	v_lshl_or_b32 v58, v68, 16, v67
	v_lshl_or_b32 v55, v74, 16, v16
	v_lshl_or_b32 v54, v76, 16, v75
	v_lshl_or_b32 v53, v78, 16, v77
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v14, v110, v109, 0xc0c0004
	v_perm_b32 v15, v108, v107, 0xc0c0004
	v_perm_b32 v71, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v104, v112, v104, 0xc0c0004
	v_perm_b32 v72, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v70, v114, v113, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[53:56], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v16, v116, v115, 0xc0c0004
	v_lshl_or_b32 v44, v15, 16, v14
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v69, v111, v103, 0xc0c0004
	ds_load_u8 v103, v9 offset:15616
	ds_load_u8 v111, v9 offset:15360
	ds_load_u8 v122, v9 offset:16128
	ds_load_u8 v123, v9 offset:15872
	v_lshl_or_b32 v42, v72, 16, v71
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v74, v105, v84, 0xc0c0004
	v_lshl_or_b32 v43, v70, 16, v16
	v_lshl_or_b32 v57, v104, 16, v69
	ds_load_u8 v10, v9 offset:14592
	ds_load_u8 v66, v9 offset:14336
	ds_load_u8 v67, v9 offset:15104
	ds_load_u8 v68, v9 offset:14848
	ds_load_u8 v69, v9 offset:13568
	ds_load_u8 v91, v9 offset:13312
	ds_load_u8 v92, v9 offset:14080
	ds_load_u8 v104, v9 offset:13824
	ds_load_u8 v112, v9 offset:16256
	ds_load_u8 v124, v9 offset:16000
	ds_load_u8 v125, v9 offset:15744
	ds_load_u8 v126, v9 offset:15488
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v73, v121, v106, 0xc0c0004
	v_perm_b32 v54, v137, v136, 0xc0c0004
	v_perm_b32 v55, v135, v134, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[45:52], v[57:60], v[62:65], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v41, v74, 16, v73
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v66, v10, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[1:8], v[41:44], v[62:65], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v133, v68, v67, 0xc0c0004
	v_perm_b32 v103, v111, v103, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v91, v91, v69, 0xc0c0004
	v_perm_b32 v111, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v92, v104, v92, 0xc0c0004
	ds_load_u8 v122, v9 offset:12544
	ds_load_u8 v123, v9 offset:12288
	ds_load_u8 v127, v9 offset:13056
	ds_load_u8 v128, v9 offset:12800
	ds_load_u8 v129, v9 offset:15232
	ds_load_u8 v130, v9 offset:14976
	ds_load_u8 v131, v9 offset:14720
	ds_load_u8 v132, v9 offset:14464
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[66:69], v83
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_lshl_or_b32 v59, v133, 16, v10
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v14, v126, v125, 0xc0c0004
	v_lshl_or_b32 v58, v92, 16, v91
	ds_load_u8 v10, v9 offset:13184
	ds_load_u8 v83, v9 offset:12928
	ds_load_u8 v91, v9 offset:12672
	ds_load_u8 v9, v9 offset:12416
	v_perm_b32 v15, v124, v112, 0xc0c0004
	v_lshl_or_b32 v60, v111, 16, v103
	v_lshl_or_b32 v42, v55, 16, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v44, v15, 16, v14
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v57, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v92, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v53, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v16, v132, v131, 0xc0c0004
	v_lshl_or_b32 v57, v92, 16, v57
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v83, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v91, 0xc0c0004
	v_lshl_or_b32 v43, v53, 16, v16
	v_wmma_i32_16x16x16_iu8 v[45:52], v[57:60], v[66:69], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v41, v10, 16, v9
	v_cvt_f32_i32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[41:44], v[66:69], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v41, v46
	v_cvt_f32_i32_e32 v42, v47
	v_cvt_f32_i32_e32 v43, v48
	v_cvt_f32_i32_e32 v44, v49
	v_cvt_f32_i32_e32 v46, v50
	v_cvt_f32_i32_e32 v47, v51
	v_cvt_f32_i32_e32 v49, v52
	v_cvt_f32_i32_e32 v50, v1
	v_cvt_f32_i32_e32 v51, v2
	v_cvt_f32_i32_e32 v52, v3
	v_cvt_f32_i32_e32 v53, v4
	v_cvt_f32_i32_e32 v54, v5
	v_cvt_f32_i32_e32 v55, v6
	v_cvt_f32_i32_e32 v56, v7
	v_cvt_f32_i32_e32 v57, v8
.LBB0_10:
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s4, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s4, s30, s4
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s30, s14
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s4, s4, 8
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s31, s15
	.loc	1 392 40 is_stmt 0              ; generate_amdgcn.py:392:40
	s_mul_i32 s5, s4, s35
	.loc	1 389 34 is_stmt 1              ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s4, s48
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v1, v35, s4, 1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v2, v17, s5, 1
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s4, -1, 0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_and_b32 s13, s13, 0xffff
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_mov_b32 v64, 0 :: v_dual_and_b32 v3, 32, v13
	v_mov_b32_e32 v62, 0
	buffer_load_u16 v60, v1, s[12:15], 0 offen
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_and_b32_e32 v1, 28, v12
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v58, 0, v19
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or3_b32 v59, v11, v3, v1
	v_mov_b32_e32 v63, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v48, 0, v59
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v76, 0
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v66, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_store_b32 v48, v1 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v58 offset:34816
	ds_load_b128 v[5:8], v58 offset:34832
	ds_load_b128 v[9:12], v58 offset:35328
	ds_load_b128 v[13:16], v58 offset:35344
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_add_nc_u32_e32 v93, s1, v61
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v61, s0, v39
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v39, v93 offset:3328
	ds_load_u8 v40, v93 offset:3072
	ds_load_u8 v62, v93 offset:3840
	ds_load_u8 v63, v93 offset:3584
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v64, s0, v37
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v37, v93 offset:2304
	ds_load_u8 v65, v93 offset:2048
	ds_load_u8 v66, v93 offset:2816
	ds_load_u8 v67, v93 offset:2560
	ds_load_u8 v68, v93 offset:1280
	ds_load_u8 v69, v93 offset:1024
	ds_load_u8 v70, v93 offset:1792
	ds_load_u8 v71, v93 offset:1536
	ds_load_u8 v72, v93 offset:256
	ds_load_u8 v73, v93
	ds_load_u8 v74, v93 offset:768
	ds_load_u8 v75, v93 offset:512
	ds_load_u8 v94, v93 offset:3968
	ds_load_u8 v95, v93 offset:3712
	ds_load_u8 v96, v93 offset:3456
	ds_load_u8 v97, v93 offset:3200
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	v_add_nc_u32_e32 v38, s0, v38
	v_add_nc_u32_e32 v36, s0, v36
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v76, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v63, v65, v37, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v65, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v66, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v68, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v69, v75, v74, 0xc0c0004
	v_perm_b32 v67, v71, v70, 0xc0c0004
	v_lshl_or_b32 v84, v62, 16, v76
	v_lshl_or_b32 v83, v65, 16, v63
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	v_lshl_or_b32 v81, v69, 16, v68
	v_mov_b32_e32 v76, s11
	ds_load_u8 v89, v93 offset:7424
	ds_load_u8 v90, v93 offset:7168
	ds_load_u8 v91, v93 offset:7936
	ds_load_u8 v92, v93 offset:7680
	v_mov_b32_e32 v75, s10
	v_mov_b32_e32 v73, s8
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[37:40], v38
	ds_load_b128 v[77:80], v64
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_lshl_or_b32 v82, v67, 16, v66
	v_mov_b32_e32 v74, s9
	v_dual_mov_b32 v72, s7 :: v_dual_mov_b32 v71, s6
	v_dual_mov_b32 v70, s5 :: v_dual_mov_b32 v69, s4
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[85:88], v61
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	ds_load_u8 v98, v93 offset:2944
	ds_load_u8 v99, v93 offset:2688
	ds_load_u8 v100, v93 offset:2432
	ds_load_u8 v101, v93 offset:2176
	ds_load_u8 v102, v93 offset:1920
	ds_load_u8 v103, v93 offset:1664
	ds_load_u8 v104, v93 offset:1408
	ds_load_u8 v105, v93 offset:1152
	ds_load_u8 v106, v93 offset:896
	ds_load_u8 v107, v93 offset:640
	ds_load_u8 v108, v93 offset:384
	ds_load_u8 v109, v93 offset:128
	ds_load_u8 v124, v93 offset:6016
	ds_load_u8 v125, v93 offset:5760
	ds_load_u8 v126, v93 offset:5504
	ds_load_u8 v127, v93 offset:5248
	ds_load_u8 v144, v93 offset:10112
	ds_load_u8 v145, v93 offset:9856
	ds_load_u8 v146, v93 offset:9600
	ds_load_u8 v147, v93 offset:9344
	ds_load_u8 v162, v93 offset:14208
	ds_load_u8 v163, v93 offset:13952
	ds_load_u8 v164, v93 offset:13696
	ds_load_u8 v165, v93 offset:13440
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v93 offset:4352
	ds_load_u8 v118, v93 offset:4096
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v93 offset:4864
	ds_load_u8 v119, v93 offset:4608
	ds_load_u8 v120, v93 offset:7040
	ds_load_u8 v121, v93 offset:6784
	ds_load_u8 v122, v93 offset:6528
	ds_load_u8 v123, v93 offset:6272
	s_waitcnt lgkmcnt(33)
	v_wmma_i32_16x16x16_iu8 v[61:68], v[81:84], v[77:80], v[69:76] neg_lo:[1,1,0]
	ds_load_u8 v81, v93 offset:6400
	ds_load_u8 v82, v93 offset:6144
	ds_load_u8 v83, v93 offset:6912
	ds_load_u8 v84, v93 offset:6656
	ds_load_u8 v110, v93 offset:5376
	ds_load_u8 v111, v93 offset:5120
	ds_load_u8 v112, v93 offset:5888
	ds_load_u8 v113, v93 offset:5632
	ds_load_u8 v114, v93 offset:8064
	ds_load_u8 v115, v93 offset:7808
	ds_load_u8 v116, v93 offset:7552
	ds_load_u8 v117, v93 offset:7296
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v95, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v101, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v100, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v82, v84, v83, 0xc0c0004
	v_perm_b32 v92, v119, v92, 0xc0c0004
	ds_load_u8 v119, v93 offset:12032
	ds_load_u8 v131, v93 offset:11776
	v_perm_b32 v90, v118, v90, 0xc0c0004
	ds_load_u8 v118, v93 offset:11520
	ds_load_u8 v130, v93 offset:11264
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v111, v113, v112, 0xc0c0004
	v_lshl_or_b32 v84, v91, 16, v89
	v_lshl_or_b32 v83, v82, 16, v81
	v_lshl_or_b32 v81, v92, 16, v90
	ds_load_u8 v112, v93 offset:4992
	ds_load_u8 v113, v93 offset:4736
	ds_load_u8 v128, v93 offset:4480
	ds_load_u8 v129, v93 offset:4224
	v_lshl_or_b32 v82, v111, 16, v110
	ds_load_u8 v89, v93 offset:10496
	ds_load_u8 v90, v93 offset:10240
	ds_load_u8 v91, v93 offset:11008
	ds_load_u8 v92, v93 offset:10752
	ds_load_u8 v110, v93 offset:9472
	ds_load_u8 v111, v93 offset:9216
	ds_load_u8 v132, v93 offset:9984
	ds_load_u8 v133, v93 offset:9728
	ds_load_u8 v134, v93 offset:12160
	ds_load_u8 v135, v93 offset:11904
	ds_load_u8 v136, v93 offset:11648
	ds_load_u8 v137, v93 offset:11392
	v_wmma_i32_16x16x16_iu8 v[61:68], v[81:84], v[37:40], v[61:68] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v119, v131, v119, 0xc0c0004
	ds_load_u8 v131, v93 offset:8960
	ds_load_u8 v139, v93 offset:8704
	ds_load_u8 v140, v93 offset:11136
	ds_load_u8 v141, v93 offset:10880
	ds_load_u8 v142, v93 offset:10624
	ds_load_u8 v143, v93 offset:10368
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v118, v130, v118, 0xc0c0004
	ds_load_u8 v130, v93 offset:8448
	ds_load_u8 v138, v93 offset:8192
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v90, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v91, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v92, v133, v132, 0xc0c0004
	v_lshl_or_b32 v84, v119, 16, v118
	ds_load_u8 v110, v93 offset:9088
	ds_load_u8 v111, v93 offset:8832
	ds_load_u8 v132, v93 offset:8576
	ds_load_u8 v133, v93 offset:8320
	v_lshl_or_b32 v83, v90, 16, v89
	v_lshl_or_b32 v82, v92, 16, v91
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v131, v139, v131, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v130, v138, v130, 0xc0c0004
	ds_load_u8 v138, v93 offset:15616
	ds_load_u8 v148, v93 offset:15360
	ds_load_u8 v149, v93 offset:16128
	ds_load_u8 v150, v93 offset:15872
	v_lshl_or_b32 v81, v131, 16, v130
	ds_load_u8 v89, v93 offset:14592
	ds_load_u8 v90, v93 offset:14336
	ds_load_u8 v91, v93 offset:15104
	ds_load_u8 v92, v93 offset:14848
	ds_load_u8 v118, v93 offset:13568
	ds_load_u8 v119, v93 offset:13312
	ds_load_u8 v130, v93 offset:14080
	ds_load_u8 v131, v93 offset:13824
	ds_load_u8 v139, v93 offset:16256
	ds_load_u8 v151, v93 offset:16000
	ds_load_u8 v152, v93 offset:15744
	ds_load_u8 v153, v93 offset:15488
	v_wmma_i32_16x16x16_iu8 v[61:68], v[81:84], v[85:88], v[61:68] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v160, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v161, v92, v91, 0xc0c0004
	v_perm_b32 v138, v148, v138, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	v_perm_b32 v148, v150, v149, 0xc0c0004
	ds_load_u8 v149, v93 offset:12544
	ds_load_u8 v150, v93 offset:12288
	ds_load_u8 v154, v93 offset:13056
	ds_load_u8 v155, v93 offset:12800
	ds_load_u8 v156, v93 offset:15232
	ds_load_u8 v157, v93 offset:14976
	ds_load_u8 v158, v93 offset:14720
	ds_load_u8 v159, v93 offset:14464
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v119, v131, v130, 0xc0c0004
	.loc	1 374 22                        ; generate_amdgcn.py:374:22
	ds_load_b128 v[89:92], v36
	.loc	1 379 19                        ; generate_amdgcn.py:379:19
	v_lshl_or_b32 v83, v161, 16, v160
	v_lshl_or_b32 v84, v148, 16, v138
	v_lshl_or_b32 v82, v119, 16, v118
	ds_load_u8 v118, v93 offset:13184
	ds_load_u8 v119, v93 offset:12928
	ds_load_u8 v130, v93 offset:12672
	ds_load_u8 v131, v93 offset:12416
	v_perm_b32 v93, v97, v96, 0xc0c0004
	v_perm_b32 v97, v99, v98, 0xc0c0004
	v_perm_b32 v98, v105, v104, 0xc0c0004
	v_perm_b32 v99, v103, v102, 0xc0c0004
	v_perm_b32 v102, v129, v128, 0xc0c0004
	v_lshl_or_b32 v96, v94, 16, v93
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v36, v150, v149, 0xc0c0004
	v_lshl_or_b32 v95, v97, 16, v95
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v81, v155, v154, 0xc0c0004
	v_lshl_or_b32 v94, v99, 16, v98
	v_lshl_or_b32 v93, v101, 16, v100
	v_perm_b32 v97, v115, v114, 0xc0c0004
	v_perm_b32 v98, v123, v122, 0xc0c0004
	v_lshl_or_b32 v81, v81, 16, v36
	v_perm_b32 v36, v117, v116, 0xc0c0004
	v_perm_b32 v99, v121, v120, 0xc0c0004
	v_perm_b32 v100, v127, v126, 0xc0c0004
	v_perm_b32 v101, v125, v124, 0xc0c0004
	v_perm_b32 v103, v113, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[69:76], v[93:96], v[77:80], v[69:76] neg_lo:[1,1,0]
	v_lshl_or_b32 v80, v97, 16, v36
	v_lshl_or_b32 v79, v99, 16, v98
	v_lshl_or_b32 v78, v101, 16, v100
	v_lshl_or_b32 v77, v103, 16, v102
	v_perm_b32 v36, v137, v136, 0xc0c0004
	v_perm_b32 v93, v135, v134, 0xc0c0004
	v_perm_b32 v94, v143, v142, 0xc0c0004
	v_perm_b32 v95, v141, v140, 0xc0c0004
	v_perm_b32 v96, v147, v146, 0xc0c0004
	v_perm_b32 v97, v145, v144, 0xc0c0004
	v_perm_b32 v98, v133, v132, 0xc0c0004
	v_perm_b32 v99, v111, v110, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[69:76], v[77:80], v[37:40], v[69:76] neg_lo:[1,1,0]
	v_lshl_or_b32 v39, v93, 16, v36
	v_lshl_or_b32 v38, v95, 16, v94
	v_lshl_or_b32 v37, v97, 16, v96
	v_lshl_or_b32 v36, v99, 16, v98
	v_perm_b32 v40, v153, v152, 0xc0c0004
	v_perm_b32 v77, v151, v139, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v78, v159, v158, 0xc0c0004
	v_perm_b32 v79, v157, v156, 0xc0c0004
	v_perm_b32 v80, v165, v164, 0xc0c0004
	v_perm_b32 v93, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v131, v130, 0xc0c0004
	v_perm_b32 v95, v119, v118, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[69:76], v[36:39], v[85:88], v[69:76] neg_lo:[1,1,0]
	v_lshl_or_b32 v39, v77, 16, v40
	v_lshl_or_b32 v38, v79, 16, v78
	v_lshl_or_b32 v37, v93, 16, v80
	v_lshl_or_b32 v36, v95, 16, v94
	v_wmma_i32_16x16x16_iu8 v[61:68], v[81:84], v[89:92], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[36:39], v[89:92], v[69:76] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v40, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
.LBB0_12:
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_ashr_i32 s0, s27, 31
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s30, s14
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_lshr_b32 s0, s0, 24
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	s_mov_b32 s31, s15
	.loc	1 388 29                        ; generate_amdgcn.py:388:29
	s_add_i32 s0, s27, s0
	v_mov_b16_e32 v39.l, 0
	s_ashr_i32 s0, s0, 8
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_mov_b16_e32 v39.h, v60.l
	.loc	1 392 40                        ; generate_amdgcn.py:392:40
	s_mul_i32 s1, s0, s35
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cmp_lt_i32 s0, s48
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_add_lshl_u32 v35, v35, s0, 1
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	v_add_lshl_u32 v36, v17, s1, 1
	.loc	1 389 34                        ; generate_amdgcn.py:389:34
	s_cselect_b32 s0, -1, 0
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v60, 0x808, v59, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v61, 0xc0c, v59, 0
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v36, 0x80000000, v36
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v77, 0x1010, v59, 0
	v_xad_u32 v78, 0x1414, v59, 0
	.loc	1 392 22                        ; generate_amdgcn.py:392:22
	buffer_load_u16 v37, v36, s[28:31], 0 offen
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	buffer_load_u16 v38, v35, s[12:15], 0 offen
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	v_mad_u64_u32 v[35:36], null, s26, s35, v[17:18]
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v16, v16, v39 :: v_dual_and_b32 v17, 7, v0
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_bfe_i32 v0, v0, 3, 1
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v15, v15, v39
	v_mul_f32_e32 v13, v13, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshl_or_b32 v19, v17, 2, v19
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_dual_mul_f32 v11, v11, v39 :: v_dual_and_b32 v0, 0x2040, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v16, v16, v57, v27
	v_fma_f32 v15, v15, v56, v34
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xor_b32_e32 v19, v19, v0
	v_xad_u32 v36, 0x404, v59, 0
	v_xad_u32 v79, 0x1818, v59, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v16, v27, v16, s3
	v_cndmask_b32_e64 v27, v34, v15, s3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_lshl_or_b32 v17, v17, 10, v19
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v14, v14, v39
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v80, 0x1c1c, v59, 0
	v_xad_u32 v81, 0x2040, v59, 0
	v_xad_u32 v82, 0x2444, v59, 0
	v_xad_u32 v34, v17, 4, 0
	v_xad_u32 v83, 0x2848, v59, 0
	v_xad_u32 v84, 0x2c4c, v59, 0
	v_xad_u32 v85, 0x3050, v59, 0
	v_xad_u32 v86, 0x3454, v59, 0
	v_xad_u32 v87, 0x3858, v59, 0
	v_xad_u32 v59, 0x3c5c, v59, 0
	.loc	1 418 23 is_stmt 0              ; generate_amdgcn.py:418:23
	s_mul_i32 s1, s35, 3
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v88, v35, s35, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s4, s35, 5
	s_mul_i32 s5, s35, 6
	s_mul_i32 s6, s35, 7
	s_mul_i32 s7, s35, 9
	s_mul_i32 s8, s35, 10
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
	v_add_lshl_u32 v89, v35, s1, 2
	s_and_b32 s25, s25, 0xffff
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s9, s35, 11
	s_mul_i32 s10, s35, 12
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v90, v35, s4, 2
	v_add_lshl_u32 v91, v35, s5, 2
	v_add_lshl_u32 v92, v35, s6, 2
	v_add_lshl_u32 v93, v35, s7, 2
	v_add_lshl_u32 v94, v35, s8, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s11, s35, 13
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v95, v35, s9, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s12, s35, 14
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v96, v35, s10, 2
	.loc	1 418 23                        ; generate_amdgcn.py:418:23
	s_mul_i32 s0, s35, 15
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_add_lshl_u32 v97, v35, s11, 2
	v_add_lshl_u32 v98, v35, s12, 2
	.loc	1 392 22 is_stmt 1              ; generate_amdgcn.py:392:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v37
	.loc	1 390 22                        ; generate_amdgcn.py:390:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v4, v4, v39
	v_mul_f32_e32 v3, v3, v39
	v_mul_f32_e32 v2, v2, v39
	v_mul_f32_e32 v1, v1, v39
	v_mul_f32_e32 v6, v6, v39
	v_mul_f32_e32 v5, v5, v39
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v4, v4, v43, v22
	v_fma_f32 v42, v3, v42, v21
	v_fma_f32 v41, v2, v41, v20
	v_fma_f32 v43, v1, v45, v18
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_store_b32 v48, v0 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v58 offset:34816
	v_mul_f32_e32 v7, v7, v39
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v6, v6, v46, v24
	v_fma_f32 v5, v5, v44, v23
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v22, v22, v4, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v11, v11, v52, v30
	v_fma_f32 v7, v7, v47, v25
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v24, v24, v6, s3
	v_cndmask_b32_e64 v23, v23, v5, s3
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v13, v13, v54, v32
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v19, v21, v42, s3
	v_cndmask_b32_e64 v25, v25, v7, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_load_b128 v[4:7], v58 offset:34832
	v_mul_f32_e32 v10, v10, v39
	v_mul_f32_e32 v9, v9, v39
	v_mul_f32_e32 v8, v8, v39
	v_dual_mul_f32 v12, v12, v39 :: v_dual_add_nc_u32 v21, 0, v17
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v14, v14, v55, v33
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v30, v30, v11, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v0, v0, v38
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v9, v9, v50, v28
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v3, v3, v38
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v10, v10, v51, v29
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v1, v1, v38
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v12, v12, v53, v31
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v28, v28, v9, s3
	v_cndmask_b32_e64 v33, v33, v14, s3
	v_cndmask_b32_e64 v29, v29, v10, s3
	v_cndmask_b32_e64 v32, v32, v13, s3
	v_cndmask_b32_e64 v31, v31, v12, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_load_b128 v[12:15], v58 offset:35344
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v5, v5, v38
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v8, v8, v49, v26
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v18, v18, v43, s3
	v_cndmask_b32_e64 v20, v20, v41, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	v_mul_f32_e32 v2, v2, v38
	v_mul_f32_e32 v4, v4, v38
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v26, v26, v8, s3
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	ds_load_b128 v[8:11], v58 offset:35328
	v_dual_mul_f32 v6, v6, v38 :: v_dual_lshlrev_b32 v39, 2, v35
	v_mul_f32_e32 v7, v7, v38
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v0, v0, v40, v18
	v_fma_f32 v1, v1, v62, v20
	v_fma_f32 v2, v2, v63, v19
	v_fma_f32 v3, v3, v64, v22
	v_fma_f32 v4, v4, v65, v23
	v_fma_f32 v5, v5, v66, v24
	v_fma_f32 v6, v6, v67, v25
	v_fma_f32 v7, v7, v68, v26
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v14, v14, v38
	v_mul_f32_e32 v15, v15, v38
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v0, v18, v0, s2
	v_cndmask_b32_e64 v1, v20, v1, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v37, v17, 8, 0
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v14, v14, v75, v27
	v_fma_f32 v15, v15, v76, v16
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v2, v19, v2, s2
	.loc	1 394 24                        ; generate_amdgcn.py:394:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v8, v8, v38
	v_mul_f32_e32 v9, v9, v38
	v_mul_f32_e32 v10, v10, v38
	v_mul_f32_e32 v11, v11, v38
	v_mul_f32_e32 v12, v12, v38
	v_dual_mul_f32 v13, v13, v38 :: v_dual_add_nc_u32 v18, s34, v39
	.loc	1 399 13                        ; generate_amdgcn.py:399:13
	v_fma_f32 v8, v8, v69, v28
	v_fma_f32 v9, v9, v70, v29
	v_fma_f32 v10, v10, v71, v30
	v_fma_f32 v11, v11, v72, v31
	v_fma_f32 v12, v12, v73, v32
	v_fma_f32 v13, v13, v74, v33
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v8, v28, v8, s2
	v_cndmask_b32_e64 v9, v29, v9, s2
	v_cndmask_b32_e64 v10, v30, v10, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v41, v17, 12, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v3, v22, v3, s2
	v_cndmask_b32_e64 v11, v31, v11, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v42, v17, 16, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v4, v23, v4, s2
	v_cndmask_b32_e64 v5, v24, v5, s2
	v_cndmask_b32_e64 v6, v25, v6, s2
	v_cndmask_b32_e64 v7, v26, v7, s2
	v_cndmask_b32_e64 v12, v32, v12, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	v_xad_u32 v43, v17, 20, 0
	v_xad_u32 v44, v17, 24, 0
	v_xad_u32 v17, v17, 28, 0
	.loc	1 333 5                         ; generate_amdgcn.py:333:5
	v_cndmask_b32_e64 v13, v33, v13, s2
	v_cndmask_b32_e64 v14, v27, v14, s2
	v_cndmask_b32_e64 v15, v16, v15, s2
	.loc	1 418 9                         ; generate_amdgcn.py:418:9
	ds_store_2addr_stride64_b32 v21, v0, v8 offset1:2
	ds_store_2addr_stride64_b32 v34, v1, v9 offset1:2
	ds_store_2addr_stride64_b32 v37, v2, v10 offset1:2
	ds_store_2addr_stride64_b32 v41, v3, v11 offset1:2
	ds_store_2addr_stride64_b32 v42, v4, v12 offset1:2
	ds_store_2addr_stride64_b32 v43, v5, v13 offset1:2
	ds_store_2addr_stride64_b32 v44, v6, v14 offset1:2
	ds_store_2addr_stride64_b32 v17, v7, v15 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v48
	ds_load_b32 v1, v36
	ds_load_b32 v2, v60
	ds_load_b32 v3, v61
	ds_load_b32 v4, v77
	ds_load_b32 v5, v78
	ds_load_b32 v6, v79
	ds_load_b32 v7, v80
	ds_load_b32 v8, v81
	ds_load_b32 v9, v82
	ds_load_b32 v10, v83
	ds_load_b32 v11, v84
	ds_load_b32 v12, v85
	ds_load_b32 v13, v86
	ds_load_b32 v14, v87
	ds_load_b32 v15, v59
	v_lshl_add_u32 v16, s35, 3, v39
	v_add_nc_u32_e32 v17, s33, v39
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v39, s[24:27], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v1, v88, s[24:27], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v2, v16, s[24:27], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v3, v89, s[24:27], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v4, v17, s[24:27], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v5, v90, s[24:27], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v6, v91, s[24:27], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v7, v92, s[24:27], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v8, v18, s[24:27], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v9, v93, s[24:27], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v10, v94, s[24:27], 0 offen
	v_add_lshl_u32 v0, v35, s0, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v11, v95, s[24:27], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v12, v96, s[24:27], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v13, v97, s[24:27], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v14, v98, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v15, v0, s[24:27], 0 offen
	.loc	1 309 1                         ; generate_amdgcn.py:309:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 216
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11488
; TotalNumSgprs: 53
; NumVgprs: 216
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     216
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
