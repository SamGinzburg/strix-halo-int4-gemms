	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 3, v0
	v_and_b32_e32 v119, 15, v0
	v_lshrrev_b32_e32 v118, 4, v0
	v_lshrrev_b32_e32 v92, 2, v0
	v_or_b32_e32 v99, 0x3f0, v0
	v_lshlrev_b32_e32 v7, 4, v2
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v2, 4, v119
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v93, 16, v118
	v_or_b32_e32 v94, 32, v118
	v_or_b32_e32 v95, 48, v118
	scratch_store_b32 off, v7, off          ; 4-byte Folded Spill
	v_or_b32_e32 v100, 0x7f0, v0
	v_or_b32_e32 v101, 0xbf0, v0
	v_or_b32_e32 v102, 0xff0, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_lshlrev_b32_e32 v246, 4, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[89:90], null, s35, v118, v[2:3]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v45, 0, v246
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[90:91], null, s35, 48, v[89:90]
	v_lshl_add_u32 v97, s35, 4, v89
	v_lshl_add_u32 v98, s35, 5, v89
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s6, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s7, s8, s6
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s5, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s7, s7, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s4, s5
	s_abs_i32 s16, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v1, s34, v92
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_cvt_u32_f32 s17, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b64 s[28:29], s[14:15]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s18, s18, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s17, s18
	s_add_i32 s17, s17, s2
	s_delay_alu instid0(SALU_CYCLE_1)
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
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s18, s31, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s2, s2, s17
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s3, s18, 31
.Ltmp15:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s33, s2, s17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s2, s3, 26
.Ltmp17:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s3, s33, s7
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s30, v92
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s3, s5, s3
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s30, v118
	v_or_b32_e32 v4, s30, v93
	v_or_b32_e32 v5, s30, v94
	v_or_b32_e32 v6, s30, v95
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s3, s3, s6
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s51, s33, 8
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s17, s18, s2
.Ltmp19:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s48, s3, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s19, s35, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s18, 63
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s31, v3
	v_cmp_gt_i32_e64 s4, s31, v4
	v_cmp_gt_i32_e64 s5, s31, v5
	v_cmp_gt_i32_e64 s6, s31, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s7, s51, s19
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v91, v1, v7, s48
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s7, v89
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s2, s3
	s_and_b32 s4, s4, s3
	s_and_b32 s5, s5, s3
	s_and_b32 s6, s6, s3
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s18, 0x7f
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s16, s34, s30
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s49, s30, 64
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s7, v97
	v_add_nc_u32_e32 v3, s7, v98
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v5, s16, v91
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v25, s49, v92
	v_or_b32_e32 v26, s49, v118
	v_or_b32_e32 v27, s49, v93
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s7, v90
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_cndmask_b32_e64 v3, 0x80000000, v3, s5
	.loc	1 402 30 is_stmt 1              ; generate_amdgcn.py:402:30
	s_lshl_b32 s4, s34, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s5, s35, 6
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v21, 0x80000000, v5, vcc_lo
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v25
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v28, s49, v94
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s7, s7, s5
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v30, s16, s4, v91
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s31, v26
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v29, s49, v95
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v31, s7, v89
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s5, s31, v27
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v32, s7, v97
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s6, s31, v28
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[5:8], v1, s[36:39], 0 offen
	buffer_load_b128 v[9:12], v2, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v3, s[36:39], 0 offen
	buffer_load_b128 v[17:20], v4, s[36:39], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[21:24], v21, s[8:11], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v30, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v33, s7, v98
	v_add_nc_u32_e32 v34, s7, v90
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s7, s31, v29
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v2, 0x80000000, v31, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s5, s2
	s_mov_b32 s16, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v3, 0x80000000, v32, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s6, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v4, 0x80000000, v33, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s7, s2
	s_cmpk_gt_i32 s18, 0xbf
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v41, 0x80000000, v34, vcc_lo
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[25:28], v1, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[29:32], v2, s[36:39], 0 offen
	buffer_load_b128 v[33:36], v3, s[36:39], 0 offen
	buffer_load_b128 v[37:40], v4, s[36:39], 0 offen
	buffer_load_b128 v[41:44], v41, s[36:39], 0 offen
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v2, 16, v119
	v_or_b32_e32 v3, 32, v119
	v_or_b32_e32 v4, 48, v119
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v45, v[9:12] offset:4096
	s_waitcnt vmcnt(7)
	ds_store_b128 v45, v[13:16] offset:8192
	s_waitcnt vmcnt(6)
	ds_store_b128 v45, v[17:20] offset:12288
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v45, v[21:24] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_b128 v45, v[5:8]
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v45, v[25:28] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v45, v[29:32] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v45, v[33:36] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v45, v[37:40] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v45, v[41:44] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v108, 0x3f0, v0
	v_or_b32_e32 v109, 0x7f0, v0
	v_or_b32_e32 v110, 0xbf0, v0
	v_or_b32_e32 v111, 0xff0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v96, 0x70, v1
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr108
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr110
                                        ; implicit-def: $vgpr111
                                        ; implicit-def: $vgpr96
.LBB0_3:                                ; %Flow94
	s_load_b128 s[24:27], s[0:1], 0x20
	v_or_b32_e32 v5, s48, v119
	v_or_b32_e32 v2, s48, v2
	v_or_b32_e32 v3, s48, v3
	v_or_b32_e32 v4, s48, v4
	v_and_b32_e32 v6, 0xf0, v0
	s_ashr_i32 s50, s17, 6
	v_or_b32_e32 v159, s51, v0
	v_mul_lo_u32 v160, v5, s50
	v_mul_lo_u32 v156, v2, s50
	v_mul_lo_u32 v157, v3, s50
	v_mul_lo_u32 v158, v4, s50
	v_lshlrev_b32_e32 v103, 2, v6
	v_lshlrev_b32_e32 v105, 1, v0
	v_lshlrev_b32_e32 v106, 5, v0
	v_lshlrev_b32_e32 v104, 1, v6
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v96, 0x70, v1
	v_dual_mov_b32 v124, 0 :: v_dual_and_b32 v1, 32, v106
	v_and_b32_e32 v9, 28, v105
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v108, 0, v104
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v10, 0, v103, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v107, v10, v9
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v192, 0
	v_mov_b32_e32 v185, 0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s52, s50, 3
	s_add_i32 s14, s49, 64
	s_mov_b32 s15, 1
	s_and_b32 s41, s13, 0xffff
	s_mov_b32 s40, s12
	s_and_b32 s45, s29, 0xffff
	s_mov_b32 s44, s28
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s7, 0, 0x9000
	s_add_i32 s6, 0, 0x4000
	s_add_i32 s52, s52, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s1, s17, 6
	s_mov_b32 s5, s30
	s_mov_b32 s30, s49
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s49, s14, s1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v109, s0, v119
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v11, s49, v92
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s49, s34, v[91:92]
	s_mov_b32 s1, s16
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s16, s5, 31
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add3_u32 v110, s1, v96, v119
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s16, s16, 26
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s49, s35
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s5, s5, s16
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s16, s5, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s18, s18, s51
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s19, s16, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s16, s50
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[65:68], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v109 offset:832
	ds_load_u8 v10, v109 offset:768
	ds_load_u8 v11, v109 offset:960
	ds_load_u8 v12, v109 offset:896
	ds_load_u8 v13, v109 offset:576
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s15, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s15, 2
	s_cselect_b32 s15, s15, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v109 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v109 offset:704
	v_lshl_or_b32 v28, v11, 16, v9
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v10, v10, v13, 0xc0c0004
	ds_load_u8 v13, v109 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v12, 16, v10
	ds_load_u8 v9, v109 offset:320
	ds_load_u8 v10, v109 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v109 offset:448
	ds_load_u8 v11, v109 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v109 offset:64
	ds_load_u8 v10, v109
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v109 offset:192
	ds_load_u8 v11, v109 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v10, 16, v9
	ds_load_u8 v9, v110 offset:3328
	ds_load_u8 v10, v110 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v110 offset:3840
	ds_load_u8 v11, v110 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v110 offset:2304
	ds_load_u8 v12, v110 offset:2048
	v_lshl_or_b32 v80, v10, 16, v9
	ds_load_u8 v9, v110 offset:1280
	ds_load_u8 v10, v110 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v110 offset:2816
	ds_load_u8 v13, v110 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v12, 16, v11
	ds_load_u8 v10, v110 offset:1792
	ds_load_u8 v11, v110 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v78, v10, 16, v9
	ds_load_u8 v9, v110 offset:256
	ds_load_u8 v10, v110
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v110 offset:768
	ds_load_u8 v11, v110 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v10, 16, v9
	ds_load_u8 v9, v109 offset:1856
	ds_load_u8 v10, v109 offset:1792
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v109 offset:1984
	ds_load_u8 v11, v109 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v109 offset:1600
	ds_load_u8 v12, v109 offset:1536
	v_lshl_or_b32 v32, v10, 16, v9
	ds_load_u8 v9, v109 offset:1344
	ds_load_u8 v10, v109 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v109 offset:1728
	ds_load_u8 v13, v109 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v12, 16, v11
	ds_load_u8 v10, v109 offset:1472
	ds_load_u8 v11, v109 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v109 offset:1088
	ds_load_u8 v10, v109 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v109 offset:1216
	ds_load_u8 v11, v109 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v10, 16, v9
	ds_load_u8 v9, v110 offset:7424
	ds_load_u8 v10, v110 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v110 offset:7936
	ds_load_u8 v11, v110 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v110 offset:6400
	ds_load_u8 v12, v110 offset:6144
	v_lshl_or_b32 v84, v10, 16, v9
	ds_load_u8 v9, v110 offset:5376
	ds_load_u8 v10, v110 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v110 offset:6912
	ds_load_u8 v13, v110 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v12, 16, v11
	ds_load_u8 v10, v110 offset:5888
	ds_load_u8 v11, v110 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v82, v10, 16, v9
	ds_load_u8 v9, v110 offset:4352
	ds_load_u8 v10, v110 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v110 offset:4864
	ds_load_u8 v11, v110 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v10, 16, v9
	ds_load_u8 v9, v110 offset:3456
	ds_load_u8 v10, v110 offset:3200
	v_wmma_i32_16x16x16_iu8 v[17:24], v[81:84], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v110 offset:3968
	ds_load_u8 v11, v110 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v110 offset:2432
	ds_load_u8 v12, v110 offset:2176
	v_lshl_or_b32 v72, v10, 16, v9
	ds_load_u8 v9, v110 offset:1408
	ds_load_u8 v10, v110 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v110 offset:2944
	ds_load_u8 v13, v110 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v12, 16, v11
	ds_load_u8 v10, v110 offset:1920
	ds_load_u8 v11, v110 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v70, v10, 16, v9
	ds_load_u8 v9, v110 offset:384
	ds_load_u8 v10, v110 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v110 offset:896
	ds_load_u8 v11, v110 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v10, 16, v9
	ds_load_u8 v9, v110 offset:7552
	ds_load_u8 v10, v110 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v110 offset:8064
	ds_load_u8 v11, v110 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v110 offset:6528
	ds_load_u8 v12, v110 offset:6272
	v_lshl_or_b32 v76, v10, 16, v9
	ds_load_u8 v9, v110 offset:5504
	ds_load_u8 v10, v110 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v110 offset:7040
	ds_load_u8 v13, v110 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v12, 16, v11
	ds_load_u8 v10, v110 offset:6016
	ds_load_u8 v11, v110 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v74, v10, 16, v9
	ds_load_u8 v9, v110 offset:4480
	ds_load_u8 v10, v110 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v110 offset:4992
	ds_load_u8 v11, v110 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v109 offset:848
	ds_load_u8 v26, v109 offset:784
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v109 offset:976
	ds_load_u8 v27, v109 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v109 offset:592
	ds_load_u8 v28, v109 offset:528
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v109 offset:336
	ds_load_u8 v26, v109 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v109 offset:720
	ds_load_u8 v29, v109 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v27
	ds_load_u8 v26, v109 offset:464
	ds_load_u8 v27, v109 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v109 offset:16
	ds_load_u8 v26, v109 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v109 offset:208
	ds_load_u8 v27, v109 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	ds_load_u8 v25, v109 offset:1872
	ds_load_u8 v26, v109 offset:1808
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v109 offset:2000
	ds_load_u8 v27, v109 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v109 offset:1616
	ds_load_u8 v28, v109 offset:1552
	v_lshl_or_b32 v48, v26, 16, v25
	ds_load_u8 v25, v109 offset:1360
	ds_load_u8 v26, v109 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v109 offset:1744
	ds_load_u8 v29, v109 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v26, v109 offset:1488
	ds_load_u8 v27, v109 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v46, v26, 16, v25
	ds_load_u8 v25, v109 offset:1104
	ds_load_u8 v26, v109 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v109 offset:1232
	ds_load_u8 v27, v109 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[77:80], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v109 offset:864
	ds_load_u8 v42, v109 offset:800
	v_wmma_i32_16x16x16_iu8 v[33:40], v[73:76], v[45:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[81:84], v[45:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v109 offset:992
	ds_load_u8 v43, v109 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v109 offset:608
	ds_load_u8 v44, v109 offset:544
	v_lshl_or_b32 v60, v42, 16, v41
	ds_load_u8 v41, v109 offset:352
	ds_load_u8 v42, v109 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v109 offset:736
	ds_load_u8 v45, v109 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v44, 16, v43
	ds_load_u8 v42, v109 offset:480
	ds_load_u8 v43, v109 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v58, v42, 16, v41
	ds_load_u8 v41, v109 offset:32
	ds_load_u8 v42, v109 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v109 offset:224
	ds_load_u8 v43, v109 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v42, 16, v41
	ds_load_u8 v41, v109 offset:1888
	ds_load_u8 v42, v109 offset:1824
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v109 offset:2016
	ds_load_u8 v43, v109 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v109 offset:1632
	ds_load_u8 v44, v109 offset:1568
	v_lshl_or_b32 v64, v42, 16, v41
	ds_load_u8 v41, v109 offset:1376
	ds_load_u8 v42, v109 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v109 offset:1760
	ds_load_u8 v45, v109 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v44, 16, v43
	ds_load_u8 v42, v109 offset:1504
	ds_load_u8 v43, v109 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v62, v42, 16, v41
	ds_load_u8 v41, v109 offset:1120
	ds_load_u8 v42, v109 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v109 offset:1248
	ds_load_u8 v43, v109 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[77:80], v[57:60], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v57, v109 offset:880
	ds_load_u8 v58, v109 offset:816
	v_wmma_i32_16x16x16_iu8 v[49:56], v[73:76], v[61:64], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[81:84], v[61:64], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v58, s0, v99
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v58, v58
	ds_load_u8 v59, v109 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v109 offset:624
	ds_load_u8 v60, v109 offset:560
	v_lshl_or_b32 v88, v58, 16, v57
	ds_load_u8 v57, v109 offset:368
	ds_load_u8 v58, v109 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v109 offset:752
	ds_load_u8 v61, v109 offset:688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v87, v60, 16, v59
	ds_load_u8 v58, v109 offset:496
	ds_load_u8 v59, v109 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v86, v58, 16, v57
	ds_load_u8 v57, v109 offset:48
	ds_load_u8 v58, v109 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v58, 0xc0c0004
	ds_load_u8 v58, v109 offset:240
	ds_load_u8 v59, v109 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v58, 16, v57
	ds_load_u8 v57, v109 offset:1904
	ds_load_u8 v58, v109 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v58, s0, v100
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v58, v58
	ds_load_u8 v59, v109 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v109 offset:1648
	ds_load_u8 v60, v109 offset:1584
	v_lshl_or_b32 v114, v58, 16, v57
	ds_load_u8 v57, v109 offset:1392
	ds_load_u8 v58, v109 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v109 offset:1776
	ds_load_u8 v61, v109 offset:1712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v60, 16, v59
	ds_load_u8 v58, v109 offset:1520
	ds_load_u8 v59, v109 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v112, v58, 16, v57
	ds_load_u8 v57, v109 offset:1136
	ds_load_u8 v58, v109 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v109 offset:1264
	ds_load_u8 v59, v109 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v111, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[77:80], v[85:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[81:84], v[111:114], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[69:72], v[85:88], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v69, v109 offset:2880
	ds_load_u8 v70, v109 offset:2816
	v_wmma_i32_16x16x16_iu8 v[77:84], v[73:76], v[111:114], v[77:84] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v109 offset:3008
	ds_load_u8 v71, v109 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v109 offset:2624
	ds_load_u8 v72, v109 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v109 offset:2752
	ds_load_u8 v73, v109 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v109 offset:2368
	ds_load_u8 v70, v109 offset:2304
	v_lshl_or_b32 v71, v73, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v109 offset:2496
	ds_load_u8 v73, v109 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v73, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v109 offset:2112
	ds_load_u8 v73, v109 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	ds_load_u8 v73, v109 offset:2240
	ds_load_u8 v74, v109 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v73, 16, v69
	ds_load_u8 v73, v110 offset:11520
	ds_load_u8 v74, v110 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v110 offset:12032
	ds_load_u8 v75, v110 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v110 offset:10496
	ds_load_u8 v76, v110 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v110 offset:11008
	ds_load_u8 v85, v110 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v85, v76, 0xc0c0004
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v110 offset:9472
	ds_load_u8 v74, v110 offset:9216
	v_lshl_or_b32 v75, v85, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v110 offset:9984
	ds_load_u8 v85, v110 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v85, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v110 offset:8448
	ds_load_u8 v85, v110 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v85, v73, 0xc0c0004
	ds_load_u8 v85, v110 offset:8960
	ds_load_u8 v86, v110 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v85, 16, v73
	ds_load_u8 v85, v110 offset:11648
	ds_load_u8 v86, v110 offset:11392
	v_wmma_i32_16x16x16_iu8 v[17:24], v[73:76], v[69:72], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v110 offset:12160
	ds_load_u8 v87, v110 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v110 offset:10624
	ds_load_u8 v88, v110 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v110 offset:11136
	ds_load_u8 v111, v110 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v88, 0xc0c0004
	v_lshl_or_b32 v88, v86, 16, v85
	ds_load_u8 v85, v110 offset:9600
	ds_load_u8 v86, v110 offset:9344
	v_lshl_or_b32 v87, v111, 16, v87
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v110 offset:10112
	ds_load_u8 v111, v110 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v111, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v110 offset:8576
	ds_load_u8 v111, v110 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v111, v85, 0xc0c0004
	ds_load_u8 v111, v110 offset:9088
	ds_load_u8 v112, v110 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v111, 16, v85
	v_wmma_i32_16x16x16_iu8 v[9:16], v[85:88], v[69:72], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v69, v109 offset:2896
	ds_load_u8 v70, v109 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v109 offset:3024
	ds_load_u8 v71, v109 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v109 offset:2640
	ds_load_u8 v72, v109 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v109 offset:2768
	ds_load_u8 v111, v109 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v109 offset:2384
	ds_load_u8 v70, v109 offset:2320
	v_lshl_or_b32 v71, v111, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v109 offset:2512
	ds_load_u8 v111, v109 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v111, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v109 offset:2128
	ds_load_u8 v111, v109 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v111, v69, 0xc0c0004
	ds_load_u8 v111, v109 offset:2256
	ds_load_u8 v112, v109 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v111, 16, v69
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[69:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[69:72], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v69, v109 offset:2912
	ds_load_u8 v70, v109 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v109 offset:3040
	ds_load_u8 v71, v109 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v109 offset:2656
	ds_load_u8 v72, v109 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v109 offset:2784
	ds_load_u8 v111, v109 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v109 offset:2400
	ds_load_u8 v70, v109 offset:2336
	v_lshl_or_b32 v71, v111, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v109 offset:2528
	ds_load_u8 v111, v109 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v111, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v109 offset:2144
	ds_load_u8 v111, v109 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v111, v69, 0xc0c0004
	ds_load_u8 v111, v109 offset:2272
	ds_load_u8 v112, v109 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v111, 16, v69
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[69:72], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[85:88], v[69:72], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v69, v109 offset:2928
	ds_load_u8 v70, v109 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v70, s0, v101
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v70, v70
	ds_load_u8 v71, v109 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v109 offset:2672
	ds_load_u8 v72, v109 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v109 offset:2800
	ds_load_u8 v111, v109 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v109 offset:2416
	ds_load_u8 v70, v109 offset:2352
	v_lshl_or_b32 v71, v111, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v109 offset:2544
	ds_load_u8 v111, v109 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v111, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v109 offset:2160
	ds_load_u8 v111, v109 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v111, v69, 0xc0c0004
	ds_load_u8 v111, v109 offset:2288
	ds_load_u8 v112, v109 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v111, 16, v69
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[69:72], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[69:72], v[77:84] neg_lo:[1,1,0]
	ds_load_u8 v69, v109 offset:3904
	ds_load_u8 v70, v109 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v109 offset:4032
	ds_load_u8 v71, v109 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v109 offset:3648
	ds_load_u8 v72, v109 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v109 offset:3776
	ds_load_u8 v73, v109 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v109 offset:3392
	ds_load_u8 v70, v109 offset:3328
	v_lshl_or_b32 v71, v73, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v109 offset:3520
	ds_load_u8 v73, v109 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v73, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v109 offset:3136
	ds_load_u8 v73, v109 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	ds_load_u8 v73, v109 offset:3264
	ds_load_u8 v74, v109 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v73, 16, v69
	ds_load_u8 v73, v110 offset:15616
	ds_load_u8 v74, v110 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v110 offset:16128
	ds_load_u8 v75, v110 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v110 offset:14592
	ds_load_u8 v76, v110 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v110 offset:15104
	ds_load_u8 v85, v110 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v85, v76, 0xc0c0004
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v110 offset:13568
	ds_load_u8 v74, v110 offset:13312
	v_lshl_or_b32 v75, v85, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v110 offset:14080
	ds_load_u8 v85, v110 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v85, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v110 offset:12544
	ds_load_u8 v85, v110 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v85, v73, 0xc0c0004
	ds_load_u8 v85, v110 offset:13056
	ds_load_u8 v86, v110 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v85, 16, v73
	ds_load_u8 v85, v110 offset:15744
	ds_load_u8 v86, v110 offset:15488
	v_wmma_i32_16x16x16_iu8 v[17:24], v[73:76], v[69:72], v[17:24] neg_lo:[1,1,0]
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
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v110 offset:16256
	ds_load_u8 v87, v110 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v110 offset:14720
	ds_load_u8 v88, v110 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v110 offset:15232
	ds_load_u8 v111, v110 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v88, 0xc0c0004
	v_lshl_or_b32 v88, v86, 16, v85
	ds_load_u8 v85, v110 offset:13696
	ds_load_u8 v86, v110 offset:13440
	v_lshl_or_b32 v87, v111, 16, v87
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v110 offset:14208
	ds_load_u8 v111, v110 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v111, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v110 offset:12672
	ds_load_u8 v111, v110 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v111, v85, 0xc0c0004
	ds_load_u8 v111, v110 offset:13184
	ds_load_u8 v110, v110 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v110, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v110, 16, v85
	v_wmma_i32_16x16x16_iu8 v[9:16], v[85:88], v[69:72], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v69, v109 offset:3920
	ds_load_u8 v70, v109 offset:3856
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v109 offset:4048
	ds_load_u8 v71, v109 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v109 offset:3664
	ds_load_u8 v72, v109 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v109 offset:3792
	ds_load_u8 v110, v109 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v110, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v109 offset:3408
	ds_load_u8 v70, v109 offset:3344
	v_lshl_or_b32 v71, v110, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v109 offset:3536
	ds_load_u8 v110, v109 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v110, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v109 offset:3152
	ds_load_u8 v110, v109 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v110, v69, 0xc0c0004
	ds_load_u8 v110, v109 offset:3280
	ds_load_u8 v111, v109 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v110, 16, v69
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[69:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[69:72], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v69, v109 offset:3936
	ds_load_u8 v70, v109 offset:3872
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v109 offset:4064
	ds_load_u8 v71, v109 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v109 offset:3680
	ds_load_u8 v72, v109 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v109 offset:3808
	ds_load_u8 v110, v109 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v110, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v109 offset:3424
	ds_load_u8 v70, v109 offset:3360
	v_lshl_or_b32 v71, v110, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v109 offset:3552
	ds_load_u8 v110, v109 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v110, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v109 offset:3168
	ds_load_u8 v110, v109 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v110, v69, 0xc0c0004
	ds_load_u8 v110, v109 offset:3296
	ds_load_u8 v111, v109 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v110, 16, v69
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[69:72], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[85:88], v[69:72], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v69, v109 offset:3952
	ds_load_u8 v70, v109 offset:3888
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v70, s0, v102
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v70, v70
	ds_load_u8 v71, v109 offset:4016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v109 offset:3696
	ds_load_u8 v72, v109 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v109 offset:3824
	ds_load_u8 v110, v109 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v110, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v109 offset:3440
	ds_load_u8 v70, v109 offset:3376
	v_lshl_or_b32 v71, v110, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v109 offset:3568
	ds_load_u8 v110, v109 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v110, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v109 offset:3184
	ds_load_u8 v110, v109 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v110, v69, 0xc0c0004
	ds_load_u8 v110, v109 offset:3312
	ds_load_u8 v109, v109 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v109, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v109, 16, v69
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[69:72], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[69:72], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v69, v77
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v77, s49, v118
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v70, v78
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v78, s18, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v73, v81
	v_cvt_f32_i32_e32 v71, v79
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v77
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v77, s49, v93
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v79, v156, s16, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v72, v80
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v80, v157, s16, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v74, v82
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s0, s31, v77
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v77, s49, v94
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v82, v158, s16, 1
	v_cndmask_b32_e64 v79, 0x80000000, v79, s5
	v_cndmask_b32_e64 v80, 0x80000000, v80, s5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v81, 0x80000000, v78, s0
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s1, s31, v77
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v77, s49, v95
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v78, s18, v98
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e64 v82, 0x80000000, v82, s5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v75, v83
	v_cvt_f32_i32_e32 v76, v84
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s31, v77
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v77, v159, s19, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v85, 0x80000000, v78, s1
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v78, s18, v90
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_lshl_b32 s0, s15, 12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v77, 0x80000000, v77, s5
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s1, s0, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v109, 0x80000000, v78, s4
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v78, v160, s16, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s0, s15, 14
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v77, v77, s[44:47], 0 offen
	s_mov_b32 s16, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s6, s0, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e64 v78, 0x80000000, v78, s5
	s_clause 0x3
	buffer_load_u16 v117, v78, s[40:43], 0 offen
	buffer_load_u16 v120, v79, s[40:43], 0 offen
	buffer_load_u16 v121, v80, s[40:43], 0 offen
	buffer_load_u16 v122, v82, s[40:43], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s4, s17, 1
	s_mov_b32 s0, s7
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s7, s1, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s52
	s_mov_b32 s17, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v77, 16, v77
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v107, v77 offset:40960
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v77, s18, v89
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[77:80], v77, s[36:39], 0 offen
	buffer_load_b128 v[81:84], v81, s[36:39], 0 offen
	buffer_load_b128 v[85:88], v85, s[36:39], 0 offen
	buffer_load_b128 v[109:112], v109, s[36:39], 0 offen
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[113:116], v108 offset:40960
	ds_load_b128 v[193:196], v108 offset:40976
	ds_load_b128 v[197:200], v108 offset:41472
	ds_load_b128 v[201:204], v108 offset:41488
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v205, s1, v246
	ds_store_b128 v205, v[65:68] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v65, s6, v246
	s_waitcnt vmcnt(3)
	ds_store_b128 v65, v[77:80]
	s_waitcnt vmcnt(2)
	ds_store_b128 v65, v[81:84] offset:4096
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v77, 16, v122
	v_lshlrev_b32_e32 v67, 16, v120
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v211, v194, v67 :: v_dual_lshlrev_b32 v66, 16, v117
	v_dual_mul_f32 v207, v194, v66 :: v_dual_lshlrev_b32 v68, 16, v121
	v_mul_f32_e32 v78, v113, v66
	v_mul_f32_e32 v79, v114, v66
	v_mul_f32_e32 v80, v115, v66
	v_mul_f32_e32 v81, v116, v66
	v_dual_mul_f32 v117, v116, v67 :: v_dual_mul_f32 v120, v113, v68
	v_mul_f32_e32 v121, v114, v68
	v_mul_f32_e32 v122, v115, v68
	v_mul_f32_e32 v205, v116, v68
	v_mul_f32_e32 v116, v116, v77
	v_mul_f32_e32 v82, v113, v67
	v_mul_f32_e32 v83, v114, v67
	v_mul_f32_e32 v84, v115, v67
	v_mul_f32_e32 v206, v193, v66
	v_dual_mul_f32 v208, v195, v66 :: v_dual_mul_f32 v213, v196, v67
	v_dual_mul_f32 v209, v196, v66 :: v_dual_mul_f32 v212, v195, v67
	v_mul_f32_e32 v210, v193, v67
	v_mul_f32_e32 v113, v113, v77
	v_mul_f32_e32 v114, v114, v77
	v_dual_mul_f32 v115, v115, v77 :: v_dual_mul_f32 v214, v193, v68
	v_mul_f32_e32 v215, v194, v68
	v_dual_mul_f32 v216, v195, v68 :: v_dual_mul_f32 v193, v193, v77
	v_dual_mul_f32 v217, v196, v68 :: v_dual_mul_f32 v194, v194, v77
	v_mul_f32_e32 v195, v195, v77
	v_mul_f32_e32 v196, v196, v77
	s_waitcnt lgkmcnt(4)
	v_dual_mul_f32 v218, v197, v66 :: v_dual_mul_f32 v223, v198, v67
	v_dual_mul_f32 v219, v198, v66 :: v_dual_mul_f32 v222, v197, v67
	v_dual_mul_f32 v220, v199, v66 :: v_dual_mul_f32 v225, v200, v67
	v_dual_mul_f32 v221, v200, v66 :: v_dual_mul_f32 v224, v199, v67
	v_mul_f32_e32 v226, v197, v68
	v_mul_f32_e32 v227, v198, v68
	v_dual_mul_f32 v228, v199, v68 :: v_dual_mul_f32 v197, v197, v77
	v_dual_mul_f32 v229, v200, v68 :: v_dual_mul_f32 v198, v198, v77
	v_mul_f32_e32 v199, v199, v77
	v_mul_f32_e32 v200, v200, v77
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v230, v201, v66 :: v_dual_mul_f32 v235, v203, v67
	v_dual_mul_f32 v231, v202, v66 :: v_dual_mul_f32 v236, v201, v68
	v_dual_mul_f32 v232, v203, v66 :: v_dual_mul_f32 v233, v201, v67
	v_dual_mul_f32 v66, v204, v66 :: v_dual_mul_f32 v237, v202, v68
	v_dual_mul_f32 v234, v202, v67 :: v_dual_mul_f32 v201, v201, v77
	v_dual_mul_f32 v67, v204, v67 :: v_dual_mul_f32 v238, v203, v68
	v_dual_mul_f32 v68, v204, v68 :: v_dual_mul_f32 v203, v203, v77
	v_dual_mul_f32 v202, v202, v77 :: v_dual_fmac_f32 v125, v79, v18
	v_dual_mul_f32 v77, v204, v77 :: v_dual_fmac_f32 v154, v235, v39
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v124, v78, v17 :: v_dual_fmac_f32 v127, v81, v20
	v_dual_fmac_f32 v126, v80, v19 :: v_dual_fmac_f32 v129, v207, v22
	v_dual_fmac_f32 v128, v206, v21 :: v_dual_fmac_f32 v131, v209, v24
	v_dual_fmac_f32 v130, v208, v23 :: v_dual_fmac_f32 v133, v219, v10
	v_dual_fmac_f32 v132, v218, v9 :: v_dual_fmac_f32 v135, v221, v12
	v_dual_fmac_f32 v134, v220, v11 :: v_dual_fmac_f32 v137, v231, v14
	v_dual_fmac_f32 v136, v230, v13 :: v_dual_fmac_f32 v141, v83, v26
	v_dual_fmac_f32 v138, v232, v15 :: v_dual_fmac_f32 v139, v66, v16
	v_dual_fmac_f32 v140, v82, v25 :: v_dual_fmac_f32 v143, v117, v28
	v_dual_fmac_f32 v142, v84, v27 :: v_dual_fmac_f32 v145, v211, v30
	v_dual_fmac_f32 v144, v210, v29 :: v_dual_fmac_f32 v147, v213, v32
	v_dual_fmac_f32 v146, v212, v31 :: v_dual_fmac_f32 v149, v223, v34
	v_dual_fmac_f32 v148, v222, v33 :: v_dual_fmac_f32 v151, v225, v36
	v_dual_fmac_f32 v150, v224, v35 :: v_dual_fmac_f32 v153, v234, v38
	v_dual_fmac_f32 v152, v233, v37 :: v_dual_fmac_f32 v155, v67, v40
	v_dual_fmac_f32 v161, v120, v41 :: v_dual_fmac_f32 v162, v121, v42
	v_dual_fmac_f32 v163, v122, v43 :: v_dual_fmac_f32 v164, v205, v44
	v_dual_fmac_f32 v165, v214, v45 :: v_dual_fmac_f32 v166, v215, v46
	v_dual_fmac_f32 v167, v216, v47 :: v_dual_fmac_f32 v168, v217, v48
	v_dual_fmac_f32 v169, v226, v49 :: v_dual_fmac_f32 v170, v227, v50
	v_dual_fmac_f32 v171, v228, v51 :: v_dual_fmac_f32 v172, v229, v52
	v_dual_fmac_f32 v173, v236, v53 :: v_dual_fmac_f32 v174, v237, v54
	v_dual_fmac_f32 v175, v238, v55 :: v_dual_fmac_f32 v176, v68, v56
	v_dual_fmac_f32 v177, v113, v57 :: v_dual_fmac_f32 v178, v114, v58
	v_dual_fmac_f32 v179, v115, v59 :: v_dual_fmac_f32 v180, v116, v60
	v_dual_fmac_f32 v181, v193, v61 :: v_dual_fmac_f32 v182, v194, v62
	v_dual_fmac_f32 v183, v195, v63 :: v_dual_fmac_f32 v184, v196, v64
	v_dual_fmac_f32 v186, v197, v69 :: v_dual_fmac_f32 v187, v198, v70
	v_dual_fmac_f32 v188, v199, v71 :: v_dual_fmac_f32 v189, v200, v72
	v_dual_fmac_f32 v190, v201, v73 :: v_dual_fmac_f32 v191, v202, v74
	v_dual_fmac_f32 v192, v203, v75 :: v_dual_fmac_f32 v185, v77, v76
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v65, v[85:88] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v65, v[109:112] offset:12288
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v108, v99 :: v_dual_mov_b32 v109, v100
	v_dual_mov_b32 v110, v101 :: v_dual_mov_b32 v111, v102
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v124, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s7, 0, 0x9000
	s_add_i32 s6, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_or_b32_e32 v112, v96, v119
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v248, 0
	v_mov_b32_e32 v241, 0
	v_mov_b32_e32 v243, 0
	v_mov_b32_e32 v245, 0
	v_mov_b32_e32 v123, 0
	v_mov_b32_e32 v247, 0
	v_mov_b32_e32 v117, 0
	v_mov_b32_e32 v249, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v41, s16, v112
	s_mov_b32 s16, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v113, s0, v119
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v113 offset:832
	ds_load_u8 v2, v113 offset:768
	ds_load_u8 v3, v113 offset:960
	ds_load_u8 v4, v113 offset:896
	ds_load_u8 v5, v113 offset:576
	ds_load_u8 v6, v113 offset:512
	ds_load_u8 v7, v113 offset:704
	ds_load_u8 v8, v113 offset:640
	ds_load_u8 v9, v113 offset:320
	ds_load_u8 v10, v113 offset:256
	ds_load_u8 v11, v113 offset:448
	ds_load_u8 v12, v113 offset:384
	ds_load_u8 v13, v113 offset:64
	ds_load_u8 v14, v113
	ds_load_u8 v15, v113 offset:192
	ds_load_u8 v16, v113 offset:128
	ds_load_u8 v17, v41 offset:3328
	ds_load_u8 v18, v41 offset:3072
	ds_load_u8 v19, v41 offset:3840
	ds_load_u8 v20, v41 offset:3584
	ds_load_u8 v21, v41 offset:2304
	ds_load_u8 v22, v41 offset:2048
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	ds_load_u8 v4, v41 offset:2816
	ds_load_u8 v5, v41 offset:2560
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	v_lshl_or_b32 v32, v2, 16, v1
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v14, v13, 0xc0c0004
	v_perm_b32 v8, v12, v11, 0xc0c0004
	ds_load_u8 v9, v41 offset:1280
	ds_load_u8 v10, v41 offset:1024
	ds_load_u8 v11, v41 offset:1792
	ds_load_u8 v12, v41 offset:1536
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v16, v15, 0xc0c0004
	v_lshl_or_b32 v31, v6, 16, v3
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v18, v17, 0xc0c0004
	v_lshl_or_b32 v30, v8, 16, v7
	ds_load_u8 v8, v41 offset:256
	ds_load_u8 v13, v41
	v_lshl_or_b32 v29, v2, 16, v1
	ds_load_u8 v1, v41 offset:768
	ds_load_u8 v2, v41 offset:512
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v6, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v7, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v96, v6, 16, v3
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v10, v9, 0xc0c0004
	v_lshl_or_b32 v95, v4, 16, v7
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v94, v4, 16, v3
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v13, v8, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_lshl_or_b32 v93, v1, 16, v3
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v6, s21
	v_mov_b32_e32 v2, s17
	ds_load_u8 v9, v113 offset:1856
	ds_load_u8 v10, v113 offset:1792
	ds_load_u8 v11, v113 offset:1984
	ds_load_u8 v12, v113 offset:1920
	ds_load_u8 v14, v113 offset:1600
	ds_load_u8 v15, v113 offset:1536
	ds_load_u8 v16, v113 offset:1728
	ds_load_u8 v17, v113 offset:1664
	ds_load_u8 v18, v113 offset:1344
	ds_load_u8 v19, v113 offset:1280
	ds_load_u8 v13, v113 offset:1472
	ds_load_u8 v20, v113 offset:1408
	v_mov_b32_e32 v4, s19
	ds_load_u8 v27, v41 offset:7424
	ds_load_u8 v28, v41 offset:7168
	ds_load_u8 v33, v41 offset:7936
	ds_load_u8 v37, v41 offset:7680
	ds_load_u8 v38, v41 offset:6400
	ds_load_u8 v39, v41 offset:6144
	ds_load_u8 v40, v41 offset:6912
	ds_load_u8 v42, v41 offset:6656
	ds_load_u8 v43, v41 offset:5376
	ds_load_u8 v44, v41 offset:5120
	ds_load_u8 v45, v41 offset:5888
	ds_load_u8 v46, v41 offset:5632
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v8, s23
	v_mov_b32_e32 v5, s20
	v_mov_b32_e32 v7, s22
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v21, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v22, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v23, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v17, v17, v16, 0xc0c0004
	v_lshl_or_b32 v36, v22, 16, v21
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v113 offset:1088
	ds_load_u8 v24, v113 offset:1024
	ds_load_u8 v25, v113 offset:1216
	ds_load_u8 v26, v113 offset:1152
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v20, v20, v13, 0xc0c0004
	v_lshl_or_b32 v35, v17, 16, v23
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v23, v28, v27, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[93:96], v[29:32], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v34, v20, 16, v18
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v24, v19, 0xc0c0004
	ds_load_u8 v19, v41 offset:4352
	ds_load_u8 v20, v41 offset:4096
	ds_load_u8 v21, v41 offset:4864
	ds_load_u8 v22, v41 offset:4608
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v18, v26, v25, 0xc0c0004
	v_perm_b32 v24, v37, v33, 0xc0c0004
	ds_load_u8 v26, v113 offset:2880
	ds_load_u8 v27, v113 offset:2816
	ds_load_u8 v28, v113 offset:3008
	ds_load_u8 v37, v113 offset:2944
	v_perm_b32 v25, v39, v38, 0xc0c0004
	v_perm_b32 v38, v42, v40, 0xc0c0004
	v_perm_b32 v39, v44, v43, 0xc0c0004
	v_perm_b32 v40, v46, v45, 0xc0c0004
	ds_load_u8 v42, v113 offset:2624
	ds_load_u8 v43, v113 offset:2560
	ds_load_u8 v44, v113 offset:2752
	ds_load_u8 v45, v113 offset:2688
	v_lshl_or_b32 v33, v18, 16, v17
	v_lshl_or_b32 v68, v24, 16, v23
	v_lshl_or_b32 v67, v38, 16, v25
	v_lshl_or_b32 v66, v40, 16, v39
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v17, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v18, v22, v21, 0xc0c0004
	ds_load_u8 v19, v113 offset:2368
	ds_load_u8 v20, v113 offset:2304
	ds_load_u8 v21, v113 offset:2496
	ds_load_u8 v22, v113 offset:2432
	v_lshl_or_b32 v65, v18, 16, v17
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v17, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v18, v37, v28, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[65:68], v[33:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v40, v18, 16, v17
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v17, v43, v42, 0xc0c0004
	ds_load_u8 v23, v113 offset:2112
	ds_load_u8 v24, v113 offset:2048
	ds_load_u8 v25, v113 offset:2240
	ds_load_u8 v26, v113 offset:2176
	ds_load_u8 v27, v41 offset:11520
	ds_load_u8 v28, v41 offset:11264
	ds_load_u8 v37, v41 offset:12032
	ds_load_u8 v42, v41 offset:11776
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v18, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v39, v18, 16, v17
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v20, v22, v21, 0xc0c0004
	ds_load_u8 v21, v41 offset:10496
	ds_load_u8 v22, v41 offset:10240
	ds_load_u8 v43, v41 offset:11008
	ds_load_u8 v44, v41 offset:10752
	ds_load_u8 v45, v41 offset:9472
	ds_load_u8 v46, v41 offset:9216
	ds_load_u8 v47, v41 offset:9984
	ds_load_u8 v48, v41 offset:9728
	ds_load_u8 v49, v41 offset:8448
	ds_load_u8 v50, v41 offset:8192
	ds_load_u8 v51, v41 offset:8960
	ds_load_u8 v52, v41 offset:8704
	v_lshl_or_b32 v38, v20, 16, v19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v17, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v18, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v19, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	v_perm_b32 v20, v42, v37, 0xc0c0004
	ds_load_u8 v23, v113 offset:3904
	ds_load_u8 v24, v113 offset:3840
	ds_load_u8 v25, v113 offset:4032
	ds_load_u8 v26, v113 offset:3968
	ds_load_u8 v27, v113 offset:3648
	ds_load_u8 v28, v113 offset:3584
	ds_load_u8 v42, v113 offset:3776
	ds_load_u8 v53, v113 offset:3712
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v22, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v43, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v44, v48, v47, 0xc0c0004
	v_lshl_or_b32 v37, v18, 16, v17
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v45, v50, v49, 0xc0c0004
	v_lshl_or_b32 v72, v20, 16, v19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v46, v52, v51, 0xc0c0004
	v_lshl_or_b32 v71, v22, 16, v21
	v_lshl_or_b32 v70, v44, 16, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v69, v46, 16, v45
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v17, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v18, v26, v25, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[37:40], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v53, v42, 0xc0c0004
	ds_load_u8 v21, v113 offset:3392
	ds_load_u8 v22, v113 offset:3328
	ds_load_u8 v23, v113 offset:3520
	ds_load_u8 v24, v113 offset:3456
	ds_load_u8 v25, v113 offset:3136
	ds_load_u8 v26, v113 offset:3072
	ds_load_u8 v27, v113 offset:3264
	ds_load_u8 v28, v113 offset:3200
	ds_load_u8 v42, v41 offset:15616
	ds_load_u8 v43, v41 offset:15360
	ds_load_u8 v44, v41 offset:16128
	ds_load_u8 v45, v41 offset:15872
	ds_load_u8 v46, v41 offset:14592
	ds_load_u8 v47, v41 offset:14336
	ds_load_u8 v48, v41 offset:15104
	ds_load_u8 v49, v41 offset:14848
	ds_load_u8 v50, v41 offset:13568
	ds_load_u8 v51, v41 offset:13312
	ds_load_u8 v52, v41 offset:14080
	ds_load_u8 v53, v41 offset:13824
	ds_load_u8 v54, v41 offset:12544
	ds_load_u8 v55, v41 offset:12288
	ds_load_u8 v56, v41 offset:3456
	ds_load_u8 v57, v41 offset:3200
	ds_load_u8 v58, v41 offset:3968
	ds_load_u8 v59, v41 offset:3712
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v22, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v23, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v24, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v43, v45, v44, 0xc0c0004
	v_lshl_or_b32 v27, v20, 16, v19
	v_lshl_or_b32 v26, v22, 16, v21
	v_lshl_or_b32 v25, v24, 16, v23
	v_lshl_or_b32 v28, v18, 16, v17
	v_lshl_or_b32 v76, v43, 16, v42
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v42, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v43, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v44, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v45, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v46, v55, v54, 0xc0c0004
	ds_load_u8 v17, v41 offset:13056
	ds_load_u8 v18, v41 offset:12800
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v59, v58, 0xc0c0004
	ds_load_u8 v21, v41 offset:2432
	ds_load_u8 v22, v41 offset:2176
	ds_load_u8 v23, v41 offset:2944
	ds_load_u8 v24, v41 offset:2688
	ds_load_u8 v47, v41 offset:1408
	ds_load_u8 v48, v41 offset:1152
	ds_load_u8 v49, v41 offset:1920
	ds_load_u8 v50, v41 offset:1664
	ds_load_u8 v51, v41 offset:384
	ds_load_u8 v52, v41 offset:128
	ds_load_u8 v53, v41 offset:896
	ds_load_u8 v54, v41 offset:640
	ds_load_u8 v55, v41 offset:7552
	ds_load_u8 v56, v41 offset:7296
	ds_load_u8 v57, v41 offset:8064
	ds_load_u8 v58, v41 offset:7808
	ds_load_u8 v59, v41 offset:6528
	ds_load_u8 v60, v41 offset:6272
	ds_load_u8 v61, v41 offset:7040
	ds_load_u8 v62, v41 offset:6784
	ds_load_u8 v63, v41 offset:5504
	ds_load_u8 v64, v41 offset:5248
	ds_load_u8 v73, v41 offset:6016
	ds_load_u8 v74, v41 offset:5760
	ds_load_u8 v75, v41 offset:4480
	ds_load_u8 v77, v41 offset:4224
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v22, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v23, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v24, v50, v49, 0xc0c0004
	ds_load_u8 v48, v41 offset:4992
	ds_load_u8 v49, v41 offset:4736
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v47, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v50, v54, v53, 0xc0c0004
	v_lshl_or_b32 v92, v20, 16, v19
	v_lshl_or_b32 v91, v22, 16, v21
	v_lshl_or_b32 v90, v24, 16, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v89, v50, 16, v47
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v47, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v50, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v52, v60, v59, 0xc0c0004
	v_perm_b32 v51, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v53, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v54, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v55, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v56, v77, v75, 0xc0c0004
	ds_load_u8 v57, v41 offset:11648
	ds_load_u8 v58, v41 offset:11392
	ds_load_u8 v59, v41 offset:12160
	ds_load_u8 v60, v41 offset:11904
	ds_load_u8 v61, v41 offset:10624
	ds_load_u8 v62, v41 offset:10368
	v_wmma_i32_16x16x16_iu8 v[17:24], v[89:92], v[29:32], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v29, v41 offset:8576
	ds_load_u8 v30, v41 offset:8320
	ds_load_u8 v31, v41 offset:9088
	ds_load_u8 v32, v41 offset:8832
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v41 offset:11136
	ds_load_u8 v63, v41 offset:10880
	ds_load_u8 v64, v41 offset:9600
	ds_load_u8 v73, v41 offset:9344
	ds_load_u8 v74, v41 offset:10112
	ds_load_u8 v75, v41 offset:9856
	v_lshl_or_b32 v84, v50, 16, v47
	v_lshl_or_b32 v83, v53, 16, v52
	v_lshl_or_b32 v82, v55, 16, v54
	v_lshl_or_b32 v81, v48, 16, v56
	ds_load_u8 v52, v41 offset:15744
	ds_load_u8 v53, v41 offset:15488
	ds_load_u8 v54, v41 offset:16256
	ds_load_u8 v55, v41 offset:16000
	v_wmma_i32_16x16x16_iu8 v[17:24], v[81:84], v[33:36], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v47, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v48, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v50, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v49, v63, v49, 0xc0c0004
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v56, v73, v64, 0xc0c0004
	v_perm_b32 v30, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v57, v75, v74, 0xc0c0004
	ds_load_u8 v58, v41 offset:14720
	ds_load_u8 v59, v41 offset:14464
	ds_load_u8 v60, v41 offset:15232
	ds_load_u8 v61, v41 offset:14976
	ds_load_u8 v31, v41 offset:13696
	ds_load_u8 v32, v41 offset:13440
	ds_load_u8 v33, v41 offset:14208
	ds_load_u8 v34, v41 offset:13952
	v_lshl_or_b32 v80, v48, 16, v47
	v_lshl_or_b32 v79, v49, 16, v50
	v_lshl_or_b32 v78, v57, 16, v56
	v_lshl_or_b32 v77, v30, 16, v29
	v_lshl_or_b32 v75, v43, 16, v42
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v29, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v30, v55, v54, 0xc0c0004
	v_lshl_or_b32 v74, v45, 16, v44
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[37:40], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v35, v41 offset:12672
	ds_load_u8 v36, v41 offset:12416
	ds_load_u8 v37, v41 offset:13184
	ds_load_u8 v38, v41 offset:12928
	ds_load_u8 v39, v113 offset:848
	ds_load_u8 v40, v113 offset:784
	ds_load_u8 v41, v113 offset:976
	ds_load_u8 v42, v113 offset:912
	v_lshl_or_b32 v73, v51, 16, v46
	v_lshl_or_b32 v88, v30, 16, v29
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[25:28], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v29, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	v_perm_b32 v30, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v32, v34, v33, 0xc0c0004
	ds_load_u8 v33, v113 offset:592
	ds_load_u8 v34, v113 offset:528
	ds_load_u8 v43, v113 offset:720
	ds_load_u8 v44, v113 offset:656
	ds_load_u8 v45, v113 offset:336
	ds_load_u8 v46, v113 offset:272
	ds_load_u8 v47, v113 offset:464
	ds_load_u8 v48, v113 offset:400
	ds_load_u8 v49, v113 offset:80
	ds_load_u8 v50, v113 offset:16
	ds_load_u8 v51, v113 offset:208
	ds_load_u8 v52, v113 offset:144
	v_cvt_f32_i32_e32 v193, v10
	v_cvt_f32_i32_e32 v194, v11
	v_lshl_or_b32 v87, v30, 16, v29
	v_lshl_or_b32 v86, v32, 16, v31
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v29, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v30, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v31, v40, v39, 0xc0c0004
	ds_load_u8 v35, v113 offset:1872
	ds_load_u8 v36, v113 offset:1808
	ds_load_u8 v37, v113 offset:2000
	ds_load_u8 v38, v113 offset:1936
	ds_load_u8 v39, v113 offset:1616
	ds_load_u8 v40, v113 offset:1552
	ds_load_u8 v53, v113 offset:1744
	ds_load_u8 v54, v113 offset:1680
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v32, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_lshl_or_b32 v85, v30, 16, v29
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v34, v44, v43, 0xc0c0004
	v_cvt_f32_i32_e32 v195, v12
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v41, v46, v45, 0xc0c0004
	v_lshl_or_b32 v44, v32, 16, v31
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v42, v48, v47, 0xc0c0004
	v_lshl_or_b32 v43, v34, 16, v33
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v45, v50, v49, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[85:88], v[25:28], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v46, v52, v51, 0xc0c0004
	v_lshl_or_b32 v42, v42, 16, v41
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v33, v36, v35, 0xc0c0004
	v_cvt_f32_i32_e32 v196, v13
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v34, v38, v37, 0xc0c0004
	v_lshl_or_b32 v41, v46, 16, v45
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v40, v39, 0xc0c0004
	v_cvt_f32_i32_e32 v197, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v54, v53, 0xc0c0004
	ds_load_u8 v37, v113 offset:1360
	ds_load_u8 v38, v113 offset:1296
	ds_load_u8 v39, v113 offset:1488
	ds_load_u8 v40, v113 offset:1424
	ds_load_u8 v45, v113 offset:1104
	ds_load_u8 v46, v113 offset:1040
	ds_load_u8 v47, v113 offset:1232
	ds_load_u8 v49, v113 offset:1168
	ds_load_u8 v50, v113 offset:2896
	ds_load_u8 v51, v113 offset:2832
	ds_load_u8 v52, v113 offset:3024
	ds_load_u8 v53, v113 offset:2960
	ds_load_u8 v54, v113 offset:2640
	ds_load_u8 v55, v113 offset:2576
	ds_load_u8 v56, v113 offset:2768
	ds_load_u8 v57, v113 offset:2704
	ds_load_u8 v58, v113 offset:2384
	ds_load_u8 v59, v113 offset:2320
	ds_load_u8 v60, v113 offset:2512
	ds_load_u8 v61, v113 offset:2448
	ds_load_u8 v62, v113 offset:2128
	ds_load_u8 v63, v113 offset:2064
	ds_load_u8 v64, v113 offset:2256
	ds_load_u8 v97, v113 offset:2192
	ds_load_u8 v98, v113 offset:3920
	ds_load_u8 v99, v113 offset:3856
	ds_load_u8 v100, v113 offset:4048
	ds_load_u8 v101, v113 offset:3984
	v_lshl_or_b32 v48, v34, 16, v33
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v33, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v34, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v37, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v38, v49, v47, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v39, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v40, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v49, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v50, v57, v56, 0xc0c0004
	v_lshl_or_b32 v47, v36, 16, v35
	v_lshl_or_b32 v46, v34, 16, v33
	v_lshl_or_b32 v45, v38, 16, v37
	v_lshl_or_b32 v52, v40, 16, v39
	v_lshl_or_b32 v51, v50, 16, v49
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v33, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v34, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v35, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v97, v64, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v101, v100, 0xc0c0004
	ds_load_u8 v39, v113 offset:3664
	ds_load_u8 v40, v113 offset:3600
	ds_load_u8 v49, v113 offset:3792
	ds_load_u8 v53, v113 offset:3728
	ds_load_u8 v54, v113 offset:3408
	ds_load_u8 v55, v113 offset:3344
	ds_load_u8 v56, v113 offset:3536
	ds_load_u8 v57, v113 offset:864
	ds_load_u8 v58, v113 offset:800
	ds_load_u8 v59, v113 offset:992
	ds_load_u8 v60, v113 offset:928
	ds_load_u8 v61, v113 offset:608
	ds_load_u8 v62, v113 offset:544
	ds_load_u8 v63, v113 offset:736
	ds_load_u8 v64, v113 offset:672
	ds_load_u8 v99, v113 offset:352
	ds_load_u8 v100, v113 offset:288
	ds_load_u8 v101, v113 offset:480
	ds_load_u8 v102, v113 offset:416
	ds_load_u8 v115, v113 offset:3472
	v_wmma_i32_16x16x16_iu8 v[25:32], v[93:96], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v50, v34, 16, v33
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v97, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v53, v53, v49, 0xc0c0004
	v_lshl_or_b32 v49, v36, 16, v35
	v_lshl_or_b32 v98, v38, 16, v37
	v_wmma_i32_16x16x16_iu8 v[33:40], v[89:92], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[65:68], v[45:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v42, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v43, v60, v59, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[81:84], v[45:48], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v45, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v46, v64, v63, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v41, s0, v108
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v47, v100, v99, 0xc0c0004
	v_lshl_or_b32 v97, v53, 16, v97
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v48, v102, v101, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[49:52], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v114, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v115, v56, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[77:80], v[49:52], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v44, v43, 16, v42
	v_lshl_or_b32 v43, v46, 16, v45
	v_lshl_or_b32 v42, v48, 16, v47
	ds_load_u8 v45, v113 offset:96
	ds_load_u8 v46, v113 offset:32
	ds_load_u8 v47, v113 offset:224
	ds_load_u8 v48, v113 offset:160
	ds_load_u8 v49, v113 offset:880
	ds_load_u8 v50, v113 offset:816
	ds_load_u8 v41, v41
	ds_load_u8 v51, v113 offset:944
	ds_load_u8 v52, v113 offset:624
	ds_load_u8 v53, v113 offset:560
	ds_load_u8 v54, v113 offset:752
	ds_load_u8 v55, v113 offset:688
	ds_load_u8 v56, v113 offset:368
	ds_load_u8 v57, v113 offset:304
	ds_load_u8 v58, v113 offset:496
	ds_load_u8 v59, v113 offset:432
	ds_load_u8 v60, v113 offset:112
	ds_load_u8 v61, v113 offset:48
	ds_load_u8 v62, v113 offset:240
	ds_load_u8 v63, v113 offset:176
	v_cvt_f32_i32_e32 v198, v15
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	v_cvt_f32_i32_e32 v199, v16
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v46, v48, v47, 0xc0c0004
	v_cvt_f32_i32_e32 v200, v17
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v47, v50, v49, 0xc0c0004
	v_cvt_f32_i32_e32 v201, v18
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v48, v51, v41, 0xc0c0004
	v_lshl_or_b32 v41, v46, 16, v45
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v49, v53, v52, 0xc0c0004
	v_cvt_f32_i32_e32 v202, v19
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v50, v55, v54, 0xc0c0004
	v_lshl_or_b32 v102, v48, 16, v47
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v51, v57, v56, 0xc0c0004
	v_cvt_f32_i32_e32 v203, v20
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v52, v59, v58, 0xc0c0004
	v_lshl_or_b32 v101, v50, 16, v49
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v53, v61, v60, 0xc0c0004
	v_cvt_f32_i32_e32 v204, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v63, v62, 0xc0c0004
	v_lshl_or_b32 v100, v52, 16, v51
	v_wmma_i32_16x16x16_iu8 v[57:64], v[93:96], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v205, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v99, v54, 16, v53
	v_wmma_i32_16x16x16_iu8 v[49:56], v[89:92], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v206, v23
	v_cvt_f32_i32_e32 v207, v24
	v_wmma_i32_16x16x16_iu8 v[41:48], v[93:96], v[99:102], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[89:92], v[99:102], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v89, v113 offset:1888
	ds_load_u8 v90, v113 offset:1824
	ds_load_u8 v91, v113 offset:2016
	ds_load_u8 v92, v113 offset:1952
	ds_load_u8 v93, v113 offset:1632
	ds_load_u8 v94, v113 offset:1568
	ds_load_u8 v95, v113 offset:1760
	ds_load_u8 v96, v113 offset:1696
	v_cvt_f32_i32_e32 v208, v9
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v90, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v96, v95, 0xc0c0004
	ds_load_u8 v94, v113 offset:1376
	ds_load_u8 v95, v113 offset:1312
	ds_load_u8 v99, v113 offset:1504
	ds_load_u8 v100, v113 offset:1440
	v_lshl_or_b32 v92, v90, 16, v89
	v_lshl_or_b32 v96, v115, 16, v114
	v_lshl_or_b32 v91, v93, 16, v91
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v100, v99, 0xc0c0004
	ds_load_u8 v93, v113 offset:1120
	ds_load_u8 v94, v113 offset:1056
	ds_load_u8 v95, v113 offset:1248
	ds_load_u8 v99, v113 offset:1184
	v_lshl_or_b32 v90, v90, 16, v89
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v99, v95, 0xc0c0004
	ds_load_u8 v94, v113 offset:2912
	ds_load_u8 v95, v113 offset:2848
	ds_load_u8 v99, v113 offset:3040
	ds_load_u8 v100, v113 offset:2976
	v_lshl_or_b32 v89, v93, 16, v89
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[65:68], v[89:92], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[89:92], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v89, v113 offset:3936
	ds_load_u8 v90, v113 offset:3872
	ds_load_u8 v91, v113 offset:4064
	ds_load_u8 v92, v113 offset:4000
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v95, v100, v99, 0xc0c0004
	ds_load_u8 v99, v113 offset:2656
	ds_load_u8 v100, v113 offset:2592
	v_lshl_or_b32 v102, v95, 16, v94
	ds_load_u8 v93, v113 offset:2400
	ds_load_u8 v94, v113 offset:2336
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v90, s0, v109
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v113 offset:2784
	ds_load_u8 v101, v113 offset:2720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v113 offset:2528
	ds_load_u8 v95, v113 offset:2464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v101, v100, 16, v99
	v_lshl_or_b32 v100, v94, 16, v93
	ds_load_u8 v93, v113 offset:2144
	ds_load_u8 v94, v113 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v113 offset:2272
	ds_load_u8 v95, v113 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v94, 16, v93
	ds_load_u8 v93, v113 offset:3152
	ds_load_u8 v94, v113 offset:3088
	v_wmma_i32_16x16x16_iu8 v[57:64], v[69:72], v[99:102], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[77:80], v[99:102], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v113 offset:3280
	ds_load_u8 v95, v113 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v113 offset:3680
	ds_load_u8 v99, v113 offset:3616
	ds_load_u8 v100, v113 offset:3808
	ds_load_u8 v101, v113 offset:3744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v99, v95, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v92, v113 offset:1904
	ds_load_u8 v95, v113 offset:1840
	ds_load_u8 v90, v90
	ds_load_u8 v101, v113 offset:1968
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v102, v95, v92, 0xc0c0004
	ds_load_u8 v92, v113 offset:1648
	ds_load_u8 v95, v113 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v90, v101, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v90, 16, v102
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v95, v92, 0xc0c0004
	ds_load_u8 v92, v113 offset:1776
	ds_load_u8 v95, v113 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v95, v92, 0xc0c0004
	v_lshl_or_b32 v92, v91, 16, v89
	ds_load_u8 v89, v113 offset:1392
	ds_load_u8 v90, v113 offset:1328
	v_lshl_or_b32 v95, v94, 16, v93
	v_lshl_or_b32 v91, v100, 16, v99
	v_lshl_or_b32 v101, v114, 16, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[95:98], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[95:98], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v209, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v210, v26
	v_cvt_f32_i32_e32 v211, v27
	v_cvt_f32_i32_e32 v212, v28
	v_cvt_f32_i32_e32 v213, v29
	v_cvt_f32_i32_e32 v214, v30
	v_cvt_f32_i32_e32 v215, v31
	v_cvt_f32_i32_e32 v216, v32
	v_cvt_f32_i32_e32 v217, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v113 offset:1520
	ds_load_u8 v93, v113 offset:1456
	v_cvt_f32_i32_e32 v218, v34
	v_cvt_f32_i32_e32 v219, v35
	v_cvt_f32_i32_e32 v220, v36
	v_cvt_f32_i32_e32 v221, v37
	v_cvt_f32_i32_e32 v222, v38
	v_cvt_f32_i32_e32 v223, v39
	v_cvt_f32_i32_e32 v224, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v93, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v90, 16, v89
	ds_load_u8 v89, v113 offset:1136
	ds_load_u8 v90, v113 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v113 offset:1264
	ds_load_u8 v93, v113 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v93, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v90, 16, v89
	ds_load_u8 v89, v113 offset:3424
	ds_load_u8 v90, v113 offset:3360
	v_wmma_i32_16x16x16_iu8 v[41:48], v[65:68], v[99:102], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v65, v113 offset:3168
	ds_load_u8 v66, v113 offset:3104
	ds_load_u8 v67, v113 offset:3296
	ds_load_u8 v68, v113 offset:3232
	v_wmma_i32_16x16x16_iu8 v[1:8], v[81:84], v[99:102], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v113 offset:3552
	ds_load_u8 v93, v113 offset:3488
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v66, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v93, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v89, s0, v110
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v67, v113 offset:2928
	ds_load_u8 v68, v113 offset:2864
	ds_load_u8 v89, v89
	ds_load_u8 v93, v113 offset:2992
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v93, v89, 0xc0c0004
	ds_load_u8 v89, v113 offset:2672
	ds_load_u8 v93, v113 offset:2608
	v_lshl_or_b32 v68, v68, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v93, v89, 0xc0c0004
	ds_load_u8 v89, v113 offset:2800
	ds_load_u8 v94, v113 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v94, v89, 0xc0c0004
	v_lshl_or_b32 v89, v66, 16, v65
	ds_load_u8 v65, v113 offset:2416
	ds_load_u8 v66, v113 offset:2352
	v_lshl_or_b32 v67, v94, 16, v93
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[89:92], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[85:88], v[89:92], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v225, v57
	v_cvt_f32_i32_e32 v226, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v227, v59
	v_cvt_f32_i32_e32 v228, v60
	v_cvt_f32_i32_e32 v229, v61
	v_cvt_f32_i32_e32 v230, v62
	v_cvt_f32_i32_e32 v231, v63
	v_cvt_f32_i32_e32 v232, v64
	v_cvt_f32_i32_e32 v233, v49
	v_cvt_f32_i32_e32 v253, v50
	v_cvt_f32_i32_e32 v254, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v113 offset:2544
	ds_load_u8 v93, v113 offset:2480
	v_cvt_f32_i32_e32 v255, v52
	v_cvt_f32_i32_e32 v237, v53
	v_cvt_f32_i32_e32 v238, v54
	v_cvt_f32_i32_e32 v239, v55
	v_cvt_f32_i32_e32 v240, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v93, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v113 offset:2160
	ds_load_u8 v93, v113 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v93, v65, 0xc0c0004
	ds_load_u8 v93, v113 offset:2288
	ds_load_u8 v94, v113 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v113 offset:3952
	v_lshl_or_b32 v65, v93, 16, v65
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v93, s0, v111
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v81, v113 offset:3888
	ds_load_u8 v82, v93
	ds_load_u8 v83, v113 offset:4016
	ds_load_u8 v84, v113 offset:3696
	ds_load_u8 v93, v113 offset:3632
	ds_load_u8 v99, v113 offset:3824
	ds_load_u8 v100, v113 offset:3760
	ds_load_u8 v101, v113 offset:3440
	ds_load_u8 v102, v113 offset:3376
	v_wmma_i32_16x16x16_iu8 v[41:48], v[69:72], v[65:68], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[77:80], v[65:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v81, v81, v94, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v83, v93, v84, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v84, v100, v99, 0xc0c0004
	v_lshl_or_b32 v72, v82, 16, v81
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v102, v101, 0xc0c0004
	ds_load_u8 v94, v113 offset:3568
	ds_load_u8 v99, v113 offset:3504
	ds_load_u8 v100, v113 offset:3184
	ds_load_u8 v101, v113 offset:3120
	ds_load_u8 v102, v113 offset:3312
	ds_load_u8 v113, v113 offset:3248
	v_lshl_or_b32 v71, v84, 16, v83
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v94, v99, v94, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v113, v102, 0xc0c0004
	v_lshl_or_b32 v70, v94, 16, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v100, 16, v99
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[69:72], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[85:88], v[69:72], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v102, v41
	v_cvt_f32_i32_e32 v113, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v114, v43
	v_cvt_f32_i32_e32 v115, v44
	v_cvt_f32_i32_e32 v116, v45
	v_cvt_f32_i32_e32 v121, v46
	v_cvt_f32_i32_e32 v241, v47
	v_cvt_f32_i32_e32 v242, v48
	v_cvt_f32_i32_e32 v243, v1
	v_cvt_f32_i32_e32 v244, v2
	v_cvt_f32_i32_e32 v245, v3
	v_cvt_f32_i32_e32 v123, v4
	v_cvt_f32_i32_e32 v247, v5
	v_cvt_f32_i32_e32 v117, v6
	v_cvt_f32_i32_e32 v248, v7
	v_cvt_f32_i32_e32 v249, v8
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s30, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s0, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s50
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v1, v160, s0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v159, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v3, v156, s0, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_add_lshl_u32 v4, v157, s0, 1
	v_add_lshl_u32 v5, v158, s0, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_and_b32 s13, s13, 0xffff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add_nc_u32_e32 v120, 0, v104
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x3
	buffer_load_u16 v250, v1, s[12:15], 0 offen
	buffer_load_u16 v122, v3, s[12:15], 0 offen
	buffer_load_u16 v252, v4, s[12:15], 0 offen
	buffer_load_u16 v86, v5, s[12:15], 0 offen
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v3, 32, v106
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v1, 28, v105
	v_mov_b32_e32 v58, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v3, 0, v103, v3
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v16, 0
	v_add_nc_u32_e32 v251, v3, v1
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v7, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v60, 0 :: v_dual_lshlrev_b32 v1, 16, v2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v251, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v120 offset:40960
	ds_load_b128 v[69:72], v120 offset:40976
	ds_load_b128 v[73:76], v120 offset:41472
	ds_load_b128 v[77:80], v120 offset:41488
	v_mov_b32_e32 v1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v1, s7, v111
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:40
	scratch_store_b32 off, v121, off offset:8
	v_add_nc_u32_e32 v1, s7, v110
	v_add_nc_u32_e32 v121, s7, v119
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v102, off offset:4
	scratch_store_b32 off, v116, off offset:12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt vmcnt(0)
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v86, off offset:36
	scratch_store_b32 off, v1, off offset:44
	scratch_store_b32 off, v115, off offset:16
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v1, s7, v109
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v249, off offset:20
	scratch_store_b32 off, v248, off offset:28
	v_dual_mov_b32 v248, v247 :: v_dual_add_nc_u32 v57, s7, v108
	v_mov_b32_e32 v62, v195
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v121 offset:832
	ds_load_u8 v2, v121 offset:768
	s_mov_b32 s7, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v25, s6, v112
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s6, s4
	v_mov_b32_e32 v249, v117
	v_mov_b32_e32 v117, v118
	v_dual_mov_b32 v247, v114 :: v_dual_mov_b32 v236, v231
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v123, off offset:24
	scratch_store_b32 off, v113, off offset:32
	v_mov_b32_e32 v63, v196
	v_dual_mov_b32 v231, v226 :: v_dual_mov_b32 v234, v229
	v_dual_mov_b32 v226, v221 :: v_dual_mov_b32 v221, v216
	v_dual_mov_b32 v235, v230 :: v_dual_mov_b32 v118, v251
	v_dual_mov_b32 v251, v242 :: v_dual_mov_b32 v216, v211
	v_dual_mov_b32 v211, v206 :: v_dual_mov_b32 v242, v237
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v121 offset:960
	ds_load_u8 v3, v121 offset:896
	v_dual_mov_b32 v237, v232 :: v_dual_mov_b32 v206, v201
	v_dual_mov_b32 v232, v227 :: v_dual_mov_b32 v227, v222
	v_mov_b32_e32 v230, v225
	v_dual_mov_b32 v222, v217 :: v_dual_mov_b32 v217, v212
	v_dual_mov_b32 v212, v207 :: v_dual_mov_b32 v207, v202
	v_dual_mov_b32 v202, v194 :: v_dual_mov_b32 v201, v193
	v_dual_mov_b32 v225, v220 :: v_dual_mov_b32 v220, v215
	v_dual_mov_b32 v215, v210 :: v_dual_mov_b32 v210, v205
	v_dual_mov_b32 v205, v200 :: v_dual_mov_b32 v64, v197
	v_dual_mov_b32 v229, v224 :: v_dual_mov_b32 v224, v219
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_dual_mov_b32 v219, v214 :: v_dual_mov_b32 v214, v209
	v_mov_b32_e32 v123, v119
	v_mov_b32_e32 v119, v233
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v29, v2, 16, v1
	ds_load_u8 v1, v121 offset:576
	ds_load_u8 v2, v121 offset:512
	v_dual_mov_b32 v233, v228 :: v_dual_mov_b32 v228, v223
	v_dual_mov_b32 v223, v218 :: v_dual_mov_b32 v218, v213
	v_dual_mov_b32 v213, v208 :: v_dual_mov_b32 v208, v203
	v_dual_mov_b32 v209, v204 :: v_dual_mov_b32 v204, v199
	v_mov_b32_e32 v203, v198
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v121 offset:704
	ds_load_u8 v3, v121 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v2, 16, v1
	ds_load_u8 v1, v121 offset:320
	ds_load_u8 v2, v121 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v121 offset:448
	ds_load_u8 v3, v121 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v2, 16, v1
	ds_load_u8 v1, v121 offset:64
	ds_load_u8 v2, v121
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v121 offset:192
	ds_load_u8 v3, v121 offset:128
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
	v_lshl_or_b32 v100, v2, 16, v1
	ds_load_u8 v1, v25 offset:2304
	ds_load_u8 v2, v25 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:2816
	ds_load_u8 v3, v25 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v2, 16, v1
	ds_load_u8 v1, v25 offset:1280
	ds_load_u8 v2, v25 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:1792
	ds_load_u8 v3, v25 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v2, 16, v1
	ds_load_u8 v1, v25 offset:256
	ds_load_u8 v2, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v25 offset:768
	ds_load_u8 v3, v25 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	ds_load_u8 v17, v121 offset:1856
	ds_load_u8 v18, v121 offset:1792
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[97:100], v[26:29], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v121 offset:1984
	ds_load_u8 v19, v121 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v18, 16, v17
	ds_load_u8 v17, v121 offset:1600
	ds_load_u8 v18, v121 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v121 offset:1728
	ds_load_u8 v19, v121 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v121 offset:1344
	ds_load_u8 v18, v121 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v121 offset:1472
	ds_load_u8 v19, v121 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v121 offset:1088
	ds_load_u8 v18, v121 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v121 offset:1216
	ds_load_u8 v19, v121 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v25 offset:7424
	ds_load_u8 v18, v25 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:7936
	ds_load_u8 v19, v25 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v18, 16, v17
	ds_load_u8 v17, v25 offset:6400
	ds_load_u8 v18, v25 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:6912
	ds_load_u8 v19, v25 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v18, 16, v17
	ds_load_u8 v17, v25 offset:5376
	ds_load_u8 v18, v25 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:5888
	ds_load_u8 v19, v25 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v18, 16, v17
	ds_load_u8 v17, v25 offset:4352
	ds_load_u8 v18, v25 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:4864
	ds_load_u8 v19, v25 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v101, v18, 16, v17
	ds_load_u8 v17, v121 offset:2880
	ds_load_u8 v18, v121 offset:2816
	v_wmma_i32_16x16x16_iu8 v[9:16], v[101:104], v[30:33], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v121 offset:3008
	ds_load_u8 v19, v121 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v18, 16, v17
	ds_load_u8 v17, v121 offset:2624
	ds_load_u8 v18, v121 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v121 offset:2752
	ds_load_u8 v19, v121 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v18, 16, v17
	ds_load_u8 v17, v121 offset:2368
	ds_load_u8 v18, v121 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v121 offset:2496
	ds_load_u8 v19, v121 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v18, 16, v17
	ds_load_u8 v17, v121 offset:2112
	ds_load_u8 v18, v121 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v121 offset:2240
	ds_load_u8 v19, v121 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v18, 16, v17
	ds_load_u8 v17, v25 offset:11520
	ds_load_u8 v18, v25 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:12032
	ds_load_u8 v19, v25 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v18, 16, v17
	ds_load_u8 v17, v25 offset:10496
	ds_load_u8 v18, v25 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:11008
	ds_load_u8 v19, v25 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v18, 16, v17
	ds_load_u8 v17, v25 offset:9472
	ds_load_u8 v18, v25 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:9984
	ds_load_u8 v19, v25 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v106, v18, 16, v17
	ds_load_u8 v17, v25 offset:8448
	ds_load_u8 v18, v25 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:8960
	ds_load_u8 v19, v25 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v18, 16, v17
	ds_load_u8 v17, v121 offset:3904
	ds_load_u8 v18, v121 offset:3840
	v_wmma_i32_16x16x16_iu8 v[9:16], v[105:108], v[34:37], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v121 offset:4032
	ds_load_u8 v19, v121 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v18, 16, v17
	ds_load_u8 v17, v121 offset:3648
	ds_load_u8 v18, v121 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v121 offset:3776
	ds_load_u8 v19, v121 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v18, 16, v17
	ds_load_u8 v17, v121 offset:3392
	ds_load_u8 v18, v121 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v121 offset:3520
	ds_load_u8 v19, v121 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v18, 16, v17
	ds_load_u8 v17, v121 offset:3136
	ds_load_u8 v18, v121 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v121 offset:3264
	ds_load_u8 v19, v121 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v18, 16, v17
	ds_load_u8 v17, v25 offset:15616
	ds_load_u8 v18, v25 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:16128
	ds_load_u8 v19, v25 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v18, 16, v17
	ds_load_u8 v17, v25 offset:14592
	ds_load_u8 v18, v25 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:15104
	ds_load_u8 v19, v25 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v18, 16, v17
	ds_load_u8 v17, v25 offset:13568
	ds_load_u8 v18, v25 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:14080
	ds_load_u8 v19, v25 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v110, v18, 16, v17
	ds_load_u8 v17, v25 offset:12544
	ds_load_u8 v18, v25 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:13056
	ds_load_u8 v19, v25 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v18, 16, v17
	ds_load_u8 v17, v25 offset:3456
	ds_load_u8 v18, v25 offset:3200
	v_wmma_i32_16x16x16_iu8 v[9:16], v[109:112], v[38:41], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:3968
	ds_load_u8 v19, v25 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v18, 16, v17
	ds_load_u8 v17, v25 offset:2432
	ds_load_u8 v18, v25 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:2944
	ds_load_u8 v19, v25 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v18, 16, v17
	ds_load_u8 v17, v25 offset:1408
	ds_load_u8 v18, v25 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:1920
	ds_load_u8 v19, v25 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v18, 16, v17
	ds_load_u8 v17, v25 offset:384
	ds_load_u8 v18, v25 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v25 offset:896
	ds_load_u8 v19, v25 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v93, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[93:96], v[26:29], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v26, v25 offset:7552
	ds_load_u8 v27, v25 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:8064
	ds_load_u8 v28, v25 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v27, 16, v26
	ds_load_u8 v26, v25 offset:6528
	ds_load_u8 v27, v25 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:7040
	ds_load_u8 v28, v25 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v27, 16, v26
	ds_load_u8 v26, v25 offset:5504
	ds_load_u8 v27, v25 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:6016
	ds_load_u8 v28, v25 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v27, 16, v26
	ds_load_u8 v26, v25 offset:4480
	ds_load_u8 v27, v25 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:4992
	ds_load_u8 v28, v25 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v27, 16, v26
	ds_load_u8 v26, v25 offset:11648
	ds_load_u8 v27, v25 offset:11392
	v_wmma_i32_16x16x16_iu8 v[17:24], v[81:84], v[30:33], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:12160
	ds_load_u8 v28, v25 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v27, 16, v26
	ds_load_u8 v26, v25 offset:10624
	ds_load_u8 v27, v25 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:11136
	ds_load_u8 v28, v25 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v87, v27, 16, v26
	ds_load_u8 v26, v25 offset:9600
	ds_load_u8 v27, v25 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:10112
	ds_load_u8 v28, v25 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v27, 16, v26
	ds_load_u8 v26, v25 offset:8576
	ds_load_u8 v27, v25 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:9088
	ds_load_u8 v28, v25 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v27, 16, v26
	ds_load_u8 v26, v25 offset:15744
	ds_load_u8 v27, v25 offset:15488
	v_wmma_i32_16x16x16_iu8 v[17:24], v[85:88], v[34:37], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v33, v121 offset:1872
	ds_load_u8 v34, v121 offset:1808
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:16256
	ds_load_u8 v28, v25 offset:16000
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v121 offset:2000
	ds_load_u8 v35, v121 offset:1936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v92, v27, 16, v26
	ds_load_u8 v26, v25 offset:14720
	ds_load_u8 v27, v25 offset:14464
	v_lshl_or_b32 v48, v34, 16, v33
	ds_load_u8 v33, v121 offset:1616
	ds_load_u8 v34, v121 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:15232
	ds_load_u8 v28, v25 offset:14976
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v121 offset:1744
	ds_load_u8 v35, v121 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v91, v27, 16, v26
	ds_load_u8 v26, v25 offset:13696
	ds_load_u8 v27, v25 offset:13440
	v_lshl_or_b32 v47, v34, 16, v33
	ds_load_u8 v33, v121 offset:1360
	ds_load_u8 v34, v121 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:14208
	ds_load_u8 v28, v25 offset:13952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v121 offset:1488
	ds_load_u8 v35, v121 offset:1424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v90, v27, 16, v26
	ds_load_u8 v26, v25 offset:12672
	ds_load_u8 v27, v25 offset:12416
	v_lshl_or_b32 v46, v34, 16, v33
	ds_load_u8 v33, v121 offset:1104
	ds_load_u8 v34, v121 offset:1040
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v25 offset:13184
	ds_load_u8 v25, v25 offset:12928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v121 offset:1232
	ds_load_u8 v35, v121 offset:1168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v25, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v89, v25, 16, v26
	ds_load_u8 v25, v121 offset:848
	ds_load_u8 v26, v121 offset:784
	v_lshl_or_b32 v45, v34, 16, v33
	ds_load_u8 v33, v121 offset:2896
	ds_load_u8 v34, v121 offset:2832
	v_wmma_i32_16x16x16_iu8 v[17:24], v[89:92], v[38:41], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v121 offset:976
	ds_load_u8 v27, v121 offset:912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v121 offset:3024
	ds_load_u8 v35, v121 offset:2960
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v121 offset:592
	ds_load_u8 v26, v121 offset:528
	v_lshl_or_b32 v52, v34, 16, v33
	ds_load_u8 v33, v121 offset:2640
	ds_load_u8 v34, v121 offset:2576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v121 offset:720
	ds_load_u8 v27, v121 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v121 offset:2768
	ds_load_u8 v35, v121 offset:2704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v43, v26, 16, v25
	ds_load_u8 v25, v121 offset:336
	ds_load_u8 v26, v121 offset:272
	v_lshl_or_b32 v51, v34, 16, v33
	ds_load_u8 v33, v121 offset:2384
	ds_load_u8 v34, v121 offset:2320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v121 offset:464
	ds_load_u8 v27, v121 offset:400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v121 offset:2512
	ds_load_u8 v35, v121 offset:2448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v121 offset:80
	ds_load_u8 v26, v121 offset:16
	v_lshl_or_b32 v50, v34, 16, v33
	ds_load_u8 v33, v121 offset:2128
	ds_load_u8 v34, v121 offset:2064
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v121 offset:208
	ds_load_u8 v27, v121 offset:144
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v121 offset:2256
	ds_load_u8 v35, v121 offset:2192
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v41, v26, 16, v25
	v_lshl_or_b32 v49, v34, 16, v33
	ds_load_u8 v33, v121 offset:3920
	ds_load_u8 v34, v121 offset:3856
	v_wmma_i32_16x16x16_iu8 v[25:32], v[97:100], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[101:104], v[45:48], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[105:108], v[49:52], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v121 offset:4048
	ds_load_u8 v35, v121 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v34, 16, v33
	ds_load_u8 v33, v121 offset:3664
	ds_load_u8 v34, v121 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v121 offset:3792
	ds_load_u8 v35, v121 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v34, 16, v33
	ds_load_u8 v33, v121 offset:3408
	ds_load_u8 v34, v121 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v121 offset:3536
	ds_load_u8 v35, v121 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v34, 16, v33
	ds_load_u8 v33, v121 offset:3152
	ds_load_u8 v34, v121 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v121 offset:3280
	ds_load_u8 v35, v121 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[93:96], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v121 offset:864
	ds_load_u8 v42, v121 offset:800
	v_wmma_i32_16x16x16_iu8 v[25:32], v[109:112], v[53:56], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[81:84], v[45:48], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[49:52], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v49, v121 offset:1888
	ds_load_u8 v50, v121 offset:1824
	v_wmma_i32_16x16x16_iu8 v[33:40], v[89:92], v[53:56], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v121 offset:992
	ds_load_u8 v43, v121 offset:928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v121 offset:2016
	ds_load_u8 v51, v121 offset:1952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v42, 16, v41
	ds_load_u8 v41, v121 offset:608
	ds_load_u8 v42, v121 offset:544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v116, v50, 16, v49
	ds_load_u8 v49, v121 offset:1632
	ds_load_u8 v50, v121 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v121 offset:736
	ds_load_u8 v43, v121 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v121 offset:1760
	ds_load_u8 v51, v121 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v42, 16, v41
	ds_load_u8 v41, v121 offset:352
	ds_load_u8 v42, v121 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v115, v50, 16, v49
	ds_load_u8 v49, v121 offset:1376
	ds_load_u8 v50, v121 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v121 offset:480
	ds_load_u8 v43, v121 offset:416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v121 offset:1504
	ds_load_u8 v51, v121 offset:1440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v42, 16, v41
	ds_load_u8 v41, v121 offset:96
	ds_load_u8 v42, v121 offset:32
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v114, v50, 16, v49
	ds_load_u8 v49, v121 offset:1120
	ds_load_u8 v50, v121 offset:1056
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v121 offset:224
	ds_load_u8 v43, v121 offset:160
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v121 offset:1248
	ds_load_u8 v51, v121 offset:1184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v58, v42, 16, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[97:100], v[58:61], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v113, v50, 16, v49
	ds_load_u8 v49, v121 offset:2912
	ds_load_u8 v50, v121 offset:2848
	v_wmma_i32_16x16x16_iu8 v[41:48], v[101:104], v[113:116], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v121 offset:3040
	ds_load_u8 v51, v121 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v196, v50, 16, v49
	ds_load_u8 v49, v121 offset:2656
	ds_load_u8 v50, v121 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v121 offset:2784
	ds_load_u8 v51, v121 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v195, v50, 16, v49
	ds_load_u8 v49, v121 offset:2400
	ds_load_u8 v50, v121 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v121 offset:2528
	ds_load_u8 v51, v121 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v194, v50, 16, v49
	ds_load_u8 v49, v121 offset:2144
	ds_load_u8 v50, v121 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v121 offset:2272
	ds_load_u8 v51, v121 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v193, v50, 16, v49
	ds_load_u8 v49, v121 offset:3936
	ds_load_u8 v50, v121 offset:3872
	v_wmma_i32_16x16x16_iu8 v[41:48], v[105:108], v[193:196], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v121 offset:4064
	ds_load_u8 v51, v121 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v200, v50, 16, v49
	ds_load_u8 v49, v121 offset:3680
	ds_load_u8 v50, v121 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v121 offset:3808
	ds_load_u8 v51, v121 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v199, v50, 16, v49
	ds_load_u8 v49, v121 offset:3424
	ds_load_u8 v50, v121 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v121 offset:3552
	ds_load_u8 v51, v121 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v198, v50, 16, v49
	ds_load_u8 v49, v121 offset:3168
	ds_load_u8 v50, v121 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v121 offset:3296
	ds_load_u8 v51, v121 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v197, v50, 16, v49
	v_wmma_i32_16x16x16_iu8 v[49:56], v[93:96], v[58:61], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v58, v121 offset:880
	ds_load_u8 v59, v121 offset:816
	v_wmma_i32_16x16x16_iu8 v[41:48], v[109:112], v[197:200], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[113:116], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[85:88], v[193:196], v[49:56] neg_lo:[1,1,0]
	v_dual_mov_b32 v196, v63 :: v_dual_mov_b32 v195, v62
	v_wmma_i32_16x16x16_iu8 v[49:56], v[89:92], v[197:200], v[49:56] neg_lo:[1,1,0]
	v_dual_mov_b32 v197, v64 :: v_dual_mov_b32 v200, v205
	v_dual_mov_b32 v205, v210 :: v_dual_mov_b32 v210, v215
	v_dual_mov_b32 v199, v204 :: v_dual_mov_b32 v204, v209
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v57, v57
	ds_load_u8 v59, v121 offset:944
	v_dual_mov_b32 v215, v220 :: v_dual_mov_b32 v220, v225
	v_dual_mov_b32 v225, v230 :: v_dual_mov_b32 v230, v235
	v_dual_mov_b32 v209, v214 :: v_dual_mov_b32 v214, v219
	v_dual_mov_b32 v219, v224 :: v_dual_mov_b32 v224, v229
	v_dual_mov_b32 v229, v234 :: v_dual_mov_b32 v198, v203
	v_dual_mov_b32 v203, v208 :: v_dual_mov_b32 v208, v213
	v_dual_mov_b32 v213, v218 :: v_dual_mov_b32 v218, v223
	v_dual_mov_b32 v223, v228 :: v_dual_mov_b32 v228, v233
	v_mov_b32_e32 v233, v119
	v_mov_b32_e32 v119, v123
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v57, 16, v58
	ds_load_u8 v57, v121 offset:624
	ds_load_u8 v58, v121 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v121 offset:752
	ds_load_u8 v59, v121 offset:688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v115, v58, 16, v57
	ds_load_u8 v57, v121 offset:368
	ds_load_u8 v58, v121 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v121 offset:496
	ds_load_u8 v59, v121 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v58, 16, v57
	ds_load_u8 v57, v121 offset:112
	ds_load_u8 v58, v121 offset:48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v121 offset:240
	ds_load_u8 v59, v121 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[97:100], v[113:116], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v97, v121 offset:1904
	ds_load_u8 v98, v121 offset:1840
	v_wmma_i32_16x16x16_iu8 v[1:8], v[93:96], v[113:116], v[1:8] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v116, off, off offset:12
	scratch_load_b32 v115, off, off offset:16
	v_dual_mov_b32 v114, v247 :: v_dual_mov_b32 v247, v248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	scratch_load_b32 v98, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v98, v98
	ds_load_u8 v99, v121 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v98, 16, v97
	ds_load_u8 v97, v121 offset:1648
	ds_load_u8 v98, v121 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v121 offset:1776
	ds_load_u8 v99, v121 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v98, 16, v97
	ds_load_u8 v97, v121 offset:1392
	ds_load_u8 v98, v121 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v121 offset:1520
	ds_load_u8 v193, v121 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v193, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v98, 16, v97
	ds_load_u8 v97, v121 offset:1136
	ds_load_u8 v193, v121 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v193, v97, 0xc0c0004
	ds_load_u8 v193, v121 offset:1264
	ds_load_u8 v194, v121 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v193, v194, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v97, v193, 16, v97
	v_wmma_i32_16x16x16_iu8 v[57:64], v[101:104], v[97:100], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v101, v121 offset:2928
	ds_load_u8 v102, v121 offset:2864
	v_wmma_i32_16x16x16_iu8 v[1:8], v[81:84], v[97:100], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	scratch_load_b32 v102, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v102, v102
	ds_load_u8 v103, v121 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v102, 16, v101
	ds_load_u8 v101, v121 offset:2672
	ds_load_u8 v102, v121 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v121 offset:2800
	ds_load_u8 v103, v121 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v102, 16, v101
	ds_load_u8 v101, v121 offset:2416
	ds_load_u8 v102, v121 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v121 offset:2544
	ds_load_u8 v193, v121 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v193, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v102, 16, v101
	ds_load_u8 v101, v121 offset:2160
	ds_load_u8 v193, v121 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v193, v101, 0xc0c0004
	ds_load_u8 v193, v121 offset:2288
	ds_load_u8 v194, v121 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v193, v194, v193, 0xc0c0004
	v_mov_b32_e32 v194, v202
	v_dual_mov_b32 v202, v207 :: v_dual_mov_b32 v207, v212
	v_mov_b32_e32 v212, v217
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v101, v193, 16, v101
	v_dual_mov_b32 v217, v222 :: v_dual_mov_b32 v222, v227
	v_dual_mov_b32 v227, v232 :: v_dual_mov_b32 v232, v237
	v_wmma_i32_16x16x16_iu8 v[57:64], v[105:108], v[101:104], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v105, v121 offset:3952
	ds_load_u8 v106, v121 offset:3888
	v_dual_mov_b32 v237, v242 :: v_dual_mov_b32 v242, v251
	v_dual_mov_b32 v251, v118 :: v_dual_mov_b32 v118, v117
	v_mov_b32_e32 v117, v249
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v248, off, off offset:28
	scratch_load_b32 v249, off, off offset:20
	scratch_load_b32 v113, off, off offset:32
	scratch_load_b32 v123, off, off offset:24
	v_wmma_i32_16x16x16_iu8 v[1:8], v[85:88], v[101:104], v[1:8] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v86, off, off offset:36
	scratch_load_b32 v102, off, off offset:4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	scratch_load_b32 v106, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v106, v106
	ds_load_u8 v107, v121 offset:4016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v106, 16, v105
	ds_load_u8 v105, v121 offset:3696
	ds_load_u8 v106, v121 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v121 offset:3824
	ds_load_u8 v107, v121 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v106, 16, v105
	ds_load_u8 v105, v121 offset:3440
	ds_load_u8 v106, v121 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v121 offset:3568
	ds_load_u8 v193, v121 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v193, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v106, v106, 16, v105
	ds_load_u8 v105, v121 offset:3184
	ds_load_u8 v193, v121 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v193, v105, 0xc0c0004
	ds_load_u8 v193, v121 offset:3312
	ds_load_u8 v121, v121 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v121, v193, 0xc0c0004
	v_mov_b32_e32 v193, v201
	v_dual_mov_b32 v201, v206 :: v_dual_mov_b32 v206, v211
	v_mov_b32_e32 v211, v216
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v105, v121, 16, v105
	scratch_load_b32 v121, off, off offset:8 ; 4-byte Folded Reload
	v_dual_mov_b32 v216, v221 :: v_dual_mov_b32 v221, v226
	v_mov_b32_e32 v226, v231
	v_wmma_i32_16x16x16_iu8 v[57:64], v[109:112], v[105:108], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[89:92], v[105:108], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v231, v236
	v_cvt_f32_i32_e32 v107, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v11
	v_cvt_f32_i32_e32 v11, v12
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v13, v14
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v15, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v17, v18
	v_cvt_f32_i32_e32 v18, v19
	v_cvt_f32_i32_e32 v19, v20
	v_cvt_f32_i32_e32 v20, v21
	v_cvt_f32_i32_e32 v21, v22
	v_cvt_f32_i32_e32 v22, v23
	v_cvt_f32_i32_e32 v23, v24
	v_cvt_f32_i32_e32 v24, v25
	v_cvt_f32_i32_e32 v25, v26
	v_cvt_f32_i32_e32 v26, v27
	v_cvt_f32_i32_e32 v27, v28
	v_cvt_f32_i32_e32 v28, v29
	v_cvt_f32_i32_e32 v29, v30
	v_cvt_f32_i32_e32 v30, v31
	v_cvt_f32_i32_e32 v31, v32
	v_cvt_f32_i32_e32 v32, v33
	v_cvt_f32_i32_e32 v33, v34
	v_cvt_f32_i32_e32 v34, v35
	v_cvt_f32_i32_e32 v35, v36
	v_cvt_f32_i32_e32 v36, v37
	v_cvt_f32_i32_e32 v37, v38
	v_cvt_f32_i32_e32 v38, v39
	v_cvt_f32_i32_e32 v39, v40
	v_cvt_f32_i32_e32 v40, v41
	v_cvt_f32_i32_e32 v41, v42
	v_cvt_f32_i32_e32 v42, v43
	v_cvt_f32_i32_e32 v43, v44
	v_cvt_f32_i32_e32 v44, v45
	v_cvt_f32_i32_e32 v45, v46
	v_cvt_f32_i32_e32 v46, v47
	v_cvt_f32_i32_e32 v47, v48
	v_cvt_f32_i32_e32 v48, v49
	v_cvt_f32_i32_e32 v49, v50
	v_cvt_f32_i32_e32 v50, v51
	v_cvt_f32_i32_e32 v51, v52
	v_cvt_f32_i32_e32 v52, v53
	v_cvt_f32_i32_e32 v53, v54
	v_cvt_f32_i32_e32 v54, v55
	v_cvt_f32_i32_e32 v55, v56
	v_cvt_f32_i32_e32 v56, v57
	v_cvt_f32_i32_e32 v57, v58
	v_cvt_f32_i32_e32 v58, v59
	v_cvt_f32_i32_e32 v59, v60
	v_cvt_f32_i32_e32 v60, v61
	v_cvt_f32_i32_e32 v61, v62
	v_cvt_f32_i32_e32 v62, v63
	v_cvt_f32_i32_e32 v63, v64
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v64, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s49, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s0, s0, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s49, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s0, s0, 6
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s50
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s0, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v2, v160, s0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v81, v159, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v82, v156, s0, 1
	v_add_lshl_u32 v83, v157, s0, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v84, v158, s0, 1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v81, 0x80000000, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v82, 0x80000000, v82 :: v_dual_cndmask_b32 v83, 0x80000000, v83
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	s_clause 0x3
	buffer_load_u16 v85, v2, s[12:15], 0 offen
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	buffer_load_u16 v83, v83, s[12:15], 0 offen
	buffer_load_u16 v84, v84, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v81, v81, s[28:31], 0 offen
.Ltmp20:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v2.l, 0
.Ltmp21:
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v2.h, v86.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s0, 0x76543210
.Ltmp22:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s13, s25, 0xffff
.Ltmp23:
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v86, v80, v2
	v_mul_f32_e32 v87, v79, v2
	v_mul_f32_e32 v88, v78, v2
	v_mul_f32_e32 v89, v77, v2
	v_mul_f32_e32 v90, v76, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v86, v86, v249, v185
	v_fma_f32 v87, v87, v248, v192
.Ltmp24:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 s12, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp25:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v86, v185, v86, s3
	v_cndmask_b32_e64 v87, v192, v87, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v85, 16, v85
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v91, v75, v2
	v_mul_f32_e32 v92, v74, v2
	v_mul_f32_e32 v93, v73, v2
	v_mul_f32_e32 v94, v72, v2
	v_mul_f32_e32 v95, v71, v2
	v_mul_f32_e32 v96, v70, v2
	v_mul_f32_e32 v97, v69, v2
	v_mul_f32_e32 v98, v68, v2
	v_mul_f32_e32 v99, v67, v2
	v_mul_f32_e32 v100, v66, v2
	v_mul_f32_e32 v101, v65, v2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v2.h, v252.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v88, v88, v117, v191
	v_fma_f32 v92, v92, v244, v187
	v_fma_f32 v93, v93, v243, v186
	v_fma_f32 v94, v94, v242, v184
	v_fma_f32 v95, v95, v241, v183
	v_fma_f32 v96, v96, v121, v182
	v_fma_f32 v97, v97, v116, v181
	v_fma_f32 v98, v98, v115, v180
	v_fma_f32 v99, v99, v114, v179
	v_fma_f32 v100, v100, v113, v178
	v_fma_f32 v101, v101, v102, v177
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v102, v80, v2
	v_mul_f32_e32 v103, v79, v2
	v_mul_f32_e32 v104, v78, v2
	v_mul_f32_e32 v106, v76, v2
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v108, v75, v2 :: v_dual_lshlrev_b32 v83, 16, v83
	v_mul_f32_e32 v105, v77, v2
	v_mul_f32_e32 v109, v74, v2
	v_mul_f32_e32 v110, v73, v2
	v_mul_f32_e32 v111, v72, v2
	v_mul_f32_e32 v112, v71, v2
	v_mul_f32_e32 v113, v70, v2
	v_mul_f32_e32 v114, v69, v2
	v_mul_f32_e32 v115, v68, v2
	v_mul_f32_e32 v116, v67, v2
	v_mul_f32_e32 v117, v66, v2
	v_mul_f32_e32 v121, v65, v2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v2.h, v122.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v92, v187, v92, s3
	v_cndmask_b32_e64 v93, v186, v93, s3
	v_cndmask_b32_e64 v94, v184, v94, s3
	v_cndmask_b32_e64 v95, v183, v95, s3
	v_cndmask_b32_e64 v96, v182, v96, s3
	v_cndmask_b32_e64 v97, v181, v97, s3
	v_cndmask_b32_e64 v98, v180, v98, s3
	v_cndmask_b32_e64 v99, v179, v99, s3
	v_cndmask_b32_e64 v100, v178, v100, s3
	v_cndmask_b32_e64 v101, v177, v101, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v116, v116, v227, v163
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v156, v80, v2
	v_mul_f32_e32 v158, v78, v2
	v_mul_f32_e32 v160, v76, v2
	v_mul_f32_e32 v178, v74, v2
	v_mul_f32_e32 v182, v70, v2
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v157, v79, v2 :: v_dual_lshlrev_b32 v84, 16, v84
	v_mul_f32_e32 v159, v77, v2
	v_mul_f32_e32 v177, v75, v2
	v_mul_f32_e32 v179, v73, v2
	v_mul_f32_e32 v180, v72, v2
	v_mul_f32_e32 v181, v71, v2
	v_mul_f32_e32 v183, v69, v2
	v_mul_f32_e32 v184, v68, v2
	v_mul_f32_e32 v185, v67, v2
	v_mul_f32_e32 v186, v66, v2
	v_mul_f32_e32 v187, v65, v2
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v2.h, v250.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v116, v163, v116, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v163, v179, v217, v148
	v_fma_f32 v159, v159, v221, v152
	v_fma_f32 v160, v160, v220, v151
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v76, v76, v2
	v_mul_f32_e32 v75, v75, v2
	v_mul_f32_e32 v74, v74, v2
	v_mul_f32_e32 v73, v73, v2
	v_mul_f32_e32 v65, v65, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v148, v148, v163, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v76, v76, v203, v135
	v_fma_f32 v75, v75, v202, v134
	v_fma_f32 v74, v74, v201, v133
	v_fma_f32 v73, v73, v200, v132
	v_fma_f32 v163, v65, v208, v124
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v80, v80, v2 :: v_dual_lshlrev_b32 v65, 16, v81
	v_mul_f32_e32 v79, v79, v2
	v_mul_f32_e32 v77, v77, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v122, v135, v76, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v251, v65 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v134, v134, v75, s3
	v_cndmask_b32_e64 v133, v133, v74, s3
	v_cndmask_b32_e64 v132, v132, v73, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[73:76], v120 offset:41472
	v_mul_f32_e32 v78, v78, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v80, v80, v207, v139
	v_fma_f32 v79, v79, v206, v138
	v_fma_f32 v77, v77, v204, v136
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v69, v69, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v78, v78, v205, v137
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v81, v139, v80, s3
	v_cndmask_b32_e64 v138, v138, v79, s3
	v_cndmask_b32_e64 v136, v136, v77, s3
	v_cndmask_b32_e64 v152, v152, v159, s3
	v_cndmask_b32_e64 v137, v137, v78, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[77:80], v120 offset:41488
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v159, v69, v196, v128
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v67, v67, v2
	v_mul_f32_e32 v68, v68, v2
	v_mul_f32_e32 v66, v66, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v88, v191, v88, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v157, v157, v223, v154
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v72, v72, v2
	v_mul_f32_e32 v71, v71, v2
	v_mul_f32_e32 v70, v70, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v151, v151, v160, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v160, v68, v195, v127
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v191, v73, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v156, v156, v224, v155
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v154, v154, v157, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v157, v71, v198, v130
	v_fma_f32 v89, v89, v247, v190
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v127, v127, v160, s3
	v_cndmask_b32_e64 v155, v155, v156, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v156, v72, v199, v131
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v196, v78, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v121, v121, v225, v161
	v_fma_f32 v90, v90, v123, v189
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v89, v190, v89, s3
	v_cndmask_b32_e64 v131, v131, v156, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v109, v109, v253, v170
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v121, v161, v121, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v161, v177, v219, v150
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v90, v189, v90, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v110, v110, v233, v169
	v_fma_f32 v112, v112, v231, v167
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v109, v170, v109, s3
	v_cndmask_b32_e64 v150, v150, v161, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v161, v67, v194, v126
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v194, v76, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v117, v117, v226, v162
	v_fma_f32 v170, v186, v210, v141
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v110, v169, v110, s3
	v_cndmask_b32_e64 v112, v167, v112, s3
	v_cndmask_b32_e64 v117, v162, v117, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v162, v178, v218, v149
	v_fma_f32 v167, v183, v213, v144
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v141, v141, v170, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v177, v74, v82
	v_mul_f32_e32 v192, v74, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v149, v149, v162, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v162, v66, v193, v125
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[65:68], v120 offset:40960
	v_mul_f32_e32 v193, v75, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v158, v158, v222, v153
	v_fma_f32 v115, v115, v228, v164
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v125, v125, v162, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v162, v74, v85
	v_mul_f32_e32 v74, v74, v84
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v153, v153, v158, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v158, v70, v197, v129
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[69:72], v120 offset:40976
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v120, v126, v161, s3
	v_cndmask_b32_e64 v115, v164, v115, s3
	v_cndmask_b32_e64 v144, v144, v167, s3
	v_cndmask_b32_e64 v129, v129, v158, s3
	v_cndmask_b32_e64 v124, v124, v163, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v163, v75, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v102, v102, v240, v176
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v167, v79, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v106, v106, v255, v172
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v130, v130, v157, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v156, v68, v85
	v_mul_f32_e32 v126, v65, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v91, v91, v245, v188
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v135, v66, v85
	v_mul_f32_e32 v139, v67, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v156, v11, v127
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v183, v65, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v91, v188, v91, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v135, v9, v125
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v190, v72, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v113, v113, v230, v166
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v158, v70, v85
	v_mul_f32_e32 v188, v70, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v111, v111, v232, v168
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v189, v71, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v114, v114, v229, v165
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v113, v166, v113, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v166, v182, v214, v145
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v11, v127, v11, s2
	v_cndmask_b32_e64 v111, v168, v111, s3
	v_cndmask_b32_e64 v114, v165, v114, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v165, v181, v215, v146
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v145, v145, v166, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v160, v72, v85
	v_mul_f32_e32 v166, v78, v85
	v_mul_f32_e32 v181, v78, v82
	v_mul_f32_e32 v78, v78, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v169, v185, v211, v142
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v185, v67, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v158, v13, v129
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v9, v125, v9, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v11, v11, v11
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v170, v67, v82
	v_mul_f32_e32 v67, v67, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v168, v184, v212, v143
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v146, v146, v165, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v165, v77, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v104, v104, v238, v174
	v_fma_f32 v15, v160, v15, v131
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v143, v143, v168, s3
	v_cndmask_b32_e64 v13, v129, v13, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v9, v9, v9
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v168, v65, v82
	v_mul_f32_e32 v65, v65, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v164, v180, v216, v147
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v102, v176, v102, s3
	v_cndmask_b32_e64 v104, v174, v104, s3
	v_cndmask_b32_e64 v106, v172, v106, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v174, v71, v82 :: v_dual_max_f32 v13, v13, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v147, v147, v164, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v164, v76, v85
	v_mul_f32_e32 v176, v73, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v131, v15, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v172, v69, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v128, v128, v159, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v157, v69, v85
	v_mul_f32_e32 v159, v71, v85
	v_mul_f32_e32 v161, v73, v85
	v_mul_f32_e32 v85, v80, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v108, v108, v254, v171
	v_fma_f32 v19, v164, v19, v122
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v15, v15, v15
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v28, v172, v28, v144
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v13, 0, v13
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v32, v176, v32, v148
	v_fma_f32 v103, v103, v239, v175
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v108, v171, v108, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v171, v187, v209, v140
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v142, v142, v169, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v184, v66, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v105, v105, v237, v173
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v19, v122, v19, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v180, v77, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v28, v144, v28, s2
	v_cndmask_b32_e64 v32, v148, v32, s2
	v_cndmask_b32_e64 v103, v175, v103, s3
	v_cndmask_b32_e64 v105, v173, v105, s3
	v_cndmask_b32_e64 v140, v140, v171, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v169, v66, v82 :: v_dual_max_f32 v28, v28, v28
	v_mul_f32_e32 v171, v68, v82
	v_dual_mul_f32 v173, v70, v82 :: v_dual_max_f32 v32, v32, v32
	v_mul_f32_e32 v175, v72, v82
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v11, 0, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v26, v170, v26, v142
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v19, v19, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v36, v180, v36, v152
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v178, v75, v82 :: v_dual_max_f32 v15, 0, v15
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v17, v162, v17, v133
	v_fma_f32 v21, v166, v21, v137
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v142, v26, s2
	v_cndmask_b32_e64 v36, v152, v36, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v28, 0, v28
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v27, v171, v27, v143
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v32, 0, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v31, v175, v31, v147
	v_fma_f32 v34, v178, v34, v150
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v133, v17, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v182, v79, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v21, v137, v21, s2
	v_cndmask_b32_e64 v27, v143, v27, s2
	v_cndmask_b32_e64 v31, v147, v31, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v26, v26, v26
	v_max_f32_e32 v36, v36, v36
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v179, v76, v82
	v_dual_mul_f32 v82, v80, v82 :: v_dual_max_f32 v21, v21, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v33, v177, v33, v149
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v186, v68, v83
	v_mul_f32_e32 v187, v69, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v37, v181, v37, v153
	v_fma_f32 v39, v82, v39, v155
	v_fma_f32 v40, v183, v40, v121
	v_fma_f32 v41, v184, v41, v117
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v149, v33, s2
	v_cndmask_b32_e64 v34, v150, v34, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v17, v17, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v38, v182, v38, v154
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v27, v27, v27 :: v_dual_max_f32 v26, 0, v26
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v36, 0, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v35, v179, v35, v151
	v_fma_f32 v42, v185, v42, v116
	v_fma_f32 v43, v186, v43, v115
	v_fma_f32 v44, v187, v44, v114
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v153, v37, s2
	v_cndmask_b32_e64 v35, v151, v35, s2
	v_cndmask_b32_e64 v38, v154, v38, s2
	v_cndmask_b32_e64 v39, v155, v39, s2
	v_cndmask_b32_e64 v40, v121, v40, s2
	v_cndmask_b32_e64 v41, v117, v41, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v34, v34, v34
	v_max_f32_e32 v33, v33, v33
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v195, v77, v83
	v_mul_f32_e32 v197, v79, v83
	v_mul_f32_e32 v75, v75, v84
	v_mul_f32_e32 v76, v76, v84
	v_mul_f32_e32 v77, v77, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v45, v188, v45, v113
	v_fma_f32 v46, v189, v46, v112
	v_fma_f32 v47, v190, v47, v111
	v_fma_f32 v48, v191, v48, v110
	v_fma_f32 v49, v192, v49, v109
	v_fma_f32 v64, v74, v64, v92
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v116, v42, s2
	v_cndmask_b32_e64 v43, v115, v43, s2
	v_cndmask_b32_e64 v44, v114, v44, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v35, v35, v35 :: v_dual_max_f32 v74, 0, v34
	v_max_f32_e32 v33, 0, v33
	v_dual_max_f32 v34, v37, v37 :: v_dual_max_f32 v37, v38, v38
	v_dual_max_f32 v38, v39, v39 :: v_dual_max_f32 v39, v40, v40
	v_dual_max_f32 v40, v41, v41 :: v_dual_mul_f32 v83, v80, v83
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v66, v66, v84
	v_mul_f32_e32 v68, v68, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v50, v193, v50, v108
	v_fma_f32 v51, v194, v51, v106
	v_fma_f32 v52, v195, v52, v105
	v_fma_f32 v53, v196, v53, v104
	v_fma_f32 v54, v197, v54, v103
	v_fma_f32 v3, v75, v3, v91
	v_fma_f32 v4, v76, v4, v90
	v_fma_f32 v5, v77, v5, v89
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v113, v45, s2
	v_cndmask_b32_e64 v46, v112, v46, s2
	v_cndmask_b32_e64 v47, v111, v47, s2
	v_cndmask_b32_e64 v48, v110, v48, s2
	v_cndmask_b32_e64 v49, v109, v49, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v75, 0, v34 :: v_dual_max_f32 v40, 0, v40
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v76, 0, v37
	v_dual_max_f32 v34, v42, v42 :: v_dual_max_f32 v37, v43, v43
	v_dual_max_f32 v77, 0, v38 :: v_dual_max_f32 v38, v44, v44
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v69, v69, v84
	v_mul_f32_e32 v70, v70, v84
	v_mul_f32_e32 v71, v71, v84
	v_mul_f32_e32 v73, v73, v84
	v_mul_f32_e32 v79, v79, v84
	v_mul_f32_e32 v80, v80, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v85, v23, v81
	v_fma_f32 v55, v83, v55, v102
	v_fma_f32 v56, v65, v56, v101
	v_fma_f32 v57, v66, v57, v100
	v_fma_f32 v58, v67, v58, v99
	v_fma_f32 v59, v68, v59, v98
	v_fma_f32 v6, v78, v6, v88
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v50, v108, v50, s2
	v_cndmask_b32_e64 v51, v106, v51, s2
	v_cndmask_b32_e64 v52, v105, v52, s2
	v_cndmask_b32_e64 v53, v104, v53, s2
	v_cndmask_b32_e64 v54, v103, v54, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v39, 0, v39 :: v_dual_max_f32 v42, v46, v46
	v_max_f32_e32 v41, v45, v45
	v_dual_max_f32 v43, 0, v34 :: v_dual_max_f32 v34, v47, v47
	v_max_f32_e32 v78, 0, v38
	v_dual_max_f32 v44, 0, v37 :: v_dual_max_f32 v37, v48, v48
	v_max_f32_e32 v38, v49, v49
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v72, v72, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v84, v126, v107, v124
	v_fma_f32 v10, v139, v10, v120
	v_fma_f32 v12, v157, v12, v128
	v_fma_f32 v14, v159, v14, v130
	v_fma_f32 v16, v161, v16, v132
	v_fma_f32 v18, v163, v18, v134
	v_fma_f32 v20, v165, v20, v136
	v_fma_f32 v22, v167, v22, v138
	v_fma_f32 v25, v169, v25, v141
	v_fma_f32 v60, v69, v60, v97
	v_fma_f32 v61, v70, v61, v96
	v_fma_f32 v62, v71, v62, v95
	v_fma_f32 v1, v73, v1, v93
	v_fma_f32 v7, v79, v7, v87
	v_fma_f32 v8, v80, v8, v86
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v81, v23, s2
	v_cndmask_b32_e64 v55, v102, v55, s2
	v_cndmask_b32_e64 v56, v101, v56, s2
	v_cndmask_b32_e64 v57, v100, v57, s2
	v_cndmask_b32_e64 v58, v99, v58, s2
	v_cndmask_b32_e64 v59, v98, v59, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v80, 0, v42 :: v_dual_max_f32 v79, 0, v41
	v_dual_max_f32 v42, v51, v51 :: v_dual_max_f32 v41, v50, v50
	v_dual_max_f32 v82, 0, v37 :: v_dual_max_f32 v81, 0, v34
	v_dual_max_f32 v83, 0, v38 :: v_dual_max_f32 v34, v52, v52
	v_dual_max_f32 v37, v53, v53 :: v_dual_max_f32 v38, v54, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v29, v173, v29, v145
	v_fma_f32 v30, v174, v30, v146
	v_fma_f32 v63, v72, v63, v94
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v65, v124, v84, s2
	v_cndmask_b32_e64 v10, v120, v10, s2
	v_cndmask_b32_e64 v12, v128, v12, s2
	v_cndmask_b32_e64 v14, v130, v14, s2
	v_cndmask_b32_e64 v16, v132, v16, s2
	v_cndmask_b32_e64 v18, v134, v18, s2
	v_cndmask_b32_e64 v20, v136, v20, s2
	v_cndmask_b32_e64 v22, v138, v22, s2
	v_cndmask_b32_e64 v25, v141, v25, s2
	v_cndmask_b32_e64 v60, v97, v60, s2
	v_cndmask_b32_e64 v61, v96, v61, s2
	v_cndmask_b32_e64 v62, v95, v62, s2
	v_cndmask_b32_e64 v1, v93, v1, s2
	v_cndmask_b32_e64 v64, v92, v64, s2
	v_cndmask_b32_e64 v6, v88, v6, s2
	v_cndmask_b32_e64 v7, v87, v7, s2
	v_cndmask_b32_e64 v8, v86, v8, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v9, 0, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v24, v168, v24, v140
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v84, 0, v41 :: v_dual_max_f32 v85, 0, v42
	v_dual_max_f32 v42, v56, v56 :: v_dual_max_f32 v41, v55, v55
	v_dual_max_f32 v86, 0, v34 :: v_dual_max_f32 v87, 0, v37
	v_max_f32_e32 v88, 0, v38
	v_dual_max_f32 v34, v57, v57 :: v_dual_max_f32 v37, v58, v58
	v_max_f32_e32 v38, v59, v59
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v140, v24, s2
	v_cndmask_b32_e64 v29, v145, v29, s2
	v_cndmask_b32_e64 v30, v146, v30, s2
	v_cndmask_b32_e64 v63, v94, v63, s2
	v_cndmask_b32_e64 v3, v91, v3, s2
	v_cndmask_b32_e64 v4, v90, v4, s2
	v_cndmask_b32_e64 v5, v89, v5, s2
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v65, v65, v65 :: v_dual_max_f32 v10, v10, v10
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v12, v12, v12
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v21, 0, v21
	v_max_f32_e32 v16, v16, v16
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v25, v25, v25
	v_max_f32_e32 v20, v20, v20
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v89, 0, v41
	v_dual_max_f32 v90, 0, v42 :: v_dual_max_f32 v41, v60, v60
	v_dual_max_f32 v42, v61, v61 :: v_dual_max_f32 v57, 0, v34
	v_dual_max_f32 v91, 0, v37 :: v_dual_max_f32 v92, 0, v38
	v_dual_max_f32 v34, v62, v62 :: v_dual_max_f32 v37, v63, v63
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v38, v64, v64
	v_dual_max_f32 v65, 0, v65 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v23, v23, v23
	v_max_f32_e32 v16, 0, v16
	v_max_f32_e32 v18, 0, v18
	v_max_f32_e32 v20, 0, v20
	v_dual_max_f32 v24, v24, v24 :: v_dual_max_f32 v25, 0, v25
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v29, v29, v29
	v_dual_max_f32 v30, v30, v30 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v96, 0, v37
	v_dual_max_f32 v95, 0, v34 :: v_dual_max_f32 v4, v4, v4
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v6, v6, v6
	v_dual_max_f32 v97, 0, v38 :: v_dual_max_f32 v8, v8, v8
	v_max_f32_e32 v5, v5, v5
	v_max_f32_e32 v7, v7, v7
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v30, 0, v30
	v_dual_max_f32 v93, 0, v41 :: v_dual_max_f32 v94, 0, v42
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v5, 0, v5
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v38, v11, v11
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v98, 0, v8 :: v_dual_max_f32 v7, 0, v7
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v34, v9, v9
	v_dual_mul_f32 v99, v65, v65 :: v_dual_mul_f32 v46, v15, v15
	v_dual_mul_f32 v37, v10, v10 :: v_dual_mul_f32 v42, v13, v13
	v_dual_mul_f32 v41, v12, v12 :: v_dual_mul_f32 v50, v17, v17
	v_dual_mul_f32 v45, v14, v14 :: v_dual_mul_f32 v54, v19, v19
	v_dual_mul_f32 v49, v16, v16 :: v_dual_mul_f32 v62, v22, v22
	v_dual_mul_f32 v53, v18, v18 :: v_dual_mul_f32 v58, v20, v20
	v_dual_mul_f32 v59, v21, v21 :: v_dual_mul_f32 v66, v24, v24
	v_dual_mul_f32 v63, v23, v23 :: v_dual_mul_f32 v70, v26, v26
	v_dual_mul_f32 v67, v25, v25 :: v_dual_mul_f32 v68, v30, v30
	v_dual_mul_f32 v71, v27, v27 :: v_dual_mul_f32 v72, v29, v29
	v_dual_mul_f32 v73, v28, v28 :: v_dual_mul_f32 v60, v74, v74
	v_dual_mul_f32 v65, v33, v33 :: v_dual_mul_f32 v56, v75, v75
	v_dual_mul_f32 v61, v35, v35 :: v_dual_mul_f32 v52, v76, v76
	v_mul_f32_e32 v55, v36, v36
	v_dual_mul_f32 v19, v93, v93 :: v_dual_mul_f32 v8, v4, v4
	v_dual_mul_f32 v15, v96, v96 :: v_dual_mul_f32 v16, v1, v1
	v_mul_f32_e32 v13, v3, v3
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v99, v34
	v_max3_f32 v3, v38, v41, v42
	v_max3_f32 v4, v50, v53, v54
	v_max3_f32 v11, v58, v59, v62
.Ltmp27:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v69, v31, v31 :: v_dual_mul_f32 v64, v32, v32
	v_dual_mul_f32 v51, v77, v77 :: v_dual_mul_f32 v48, v40, v40
	v_dual_mul_f32 v40, v79, v79 :: v_dual_mul_f32 v17, v97, v97
	v_mul_f32_e32 v10, v6, v6
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v1, v1, v37, v3
	v_max3_f32 v3, v4, v11, v63
	v_max_f32_e32 v4, v66, v67
	v_max3_f32 v6, v71, v73, v72
	v_max3_f32 v11, v65, v60, v61
	v_max3_f32 v12, v55, v56, v52
.Ltmp29:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v25, v89, v89 :: v_dual_mul_f32 v20, v92, v92
	v_dual_mul_f32 v23, v90, v90 :: v_dual_mul_f32 v14, v95, v95
	v_dual_mul_f32 v21, v57, v57 :: v_dual_mul_f32 v18, v94, v94
	v_mul_f32_e32 v9, v5, v5
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v5, v45, v46, v49
	v_max3_f32 v30, v68, v69, v64
	v_max3_f32 v4, v4, v70, v6
	v_max3_f32 v6, v11, v12, v51
.Ltmp31:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v27, v86, v86 :: v_dual_mul_f32 v22, v91, v91
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v1, v1, v5, v3
	v_max_f32_e32 v5, v23, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v3, v4, v30, v6
	v_max3_f32 v6, v20, v19, v18
.Ltmp33:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v47, v39, v39 :: v_dual_mul_f32 v44, v44, v44
	v_dual_mul_f32 v39, v78, v78 :: v_dual_mul_f32 v28, v84, v84
	v_dual_mul_f32 v31, v83, v83 :: v_dual_mul_f32 v24, v88, v88
	v_dual_mul_f32 v29, v85, v85 :: v_dual_mul_f32 v26, v87, v87
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v5, v5, v22, v6
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v6, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp36:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v43, v43, v43 :: v_dual_mul_f32 v36, v81, v81
	v_dual_mul_f32 v35, v80, v80 :: v_dual_mul_f32 v32, v82, v82
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v57, v44, v39, v40
	v_max3_f32 v74, v31, v28, v29
	v_max3_f32 v75, v27, v26, v24
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v33, v47, v48
	v_max3_f32 v76, v35, v36, v32
.Ltmp38:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v12, v98, v98
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v30, v17, v13, v8
.Ltmp40:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v82.h, v2.l
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v33, v33, v43, v57
	v_max3_f32 v57, v74, v75, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_max3_f32 v4, v33, v76, v57
.Ltmp42:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v11, v7, v7
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v57, v3, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, v14, v15, v16
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v74, v4, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v33, v9, v10, v11
	v_max3_f32 v30, v30, v33, v12
	v_max_f32_e32 v33, v57, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v57, v74, v74
	v_max_f32_e32 v74, v1, v6
	v_max3_f32 v5, v5, v7, v30
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v30, 0x80, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v76, v4, v57
	v_and_b32_e32 v4, 3, v0
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v7, 0x60, v0
	v_permlanex16_b32 v1, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v79, 3, v30
	v_lshl_add_u32 v6, v4, 9, 0
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v75, v3, v33 :: v_dual_lshlrev_b32 v4, 5, v4
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v3, 4, v0
	v_and_b32_e32 v33, 8, v0
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_or_b32 v77, 0x680, v246, v4
	v_xor_b32_e32 v78, v4, v7
	v_lshl_add_u32 v57, v3, 2, v6
	v_lshlrev_b32_e32 v6, 1, v30
	v_lshl_add_u32 v81, v3, 6, 0
	v_xor_b32_e32 v80, v77, v7
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v77, v5, v1
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v57, v33, 4, v57
	v_add_nc_u32_e32 v30, 0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v5, v81, v79, v80
	v_add3_u32 v1, v57, v6, v78
	ds_store_b128 v1, v[74:77]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[74:77], v5
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, v74
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v74, v74, v74 :: v_dual_mov_b32 v5, v75
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v57, v76
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v78, v77, v77
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v57, v57 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v5, v5, v5
	v_max_f32_e32 v57, v57, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v1, v74, v1 :: v_dual_max_f32 v74, v76, v76
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v76, v1 :: v_dual_max_f32 v57, v74, v57
	v_lshlrev_b32_e32 v33, 3, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v76
	v_max_f32_e32 v5, v75, v5
	v_max_f32_e32 v75, v77, v77
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v77, v5 :: v_dual_max_f32 v74, v78, v75
	v_mov_b32_e32 v75, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v78, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v5, v5, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v77, v1 :: v_dual_max_f32 v76, v78, v78
	v_mov_b32_e32 v78, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v75, v75, v75
	v_max_f32_e32 v79, v74, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v74, v77, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v57, v57, v75
	v_max_f32_e32 v75, v78, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v74, v1, v74
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v76, v57
	v_lshrrev_b32_e32 v78, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v75, v5, v75
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v76, v76
	v_dual_max_f32 v76, v57, v1 :: v_dual_lshlrev_b32 v1, 5, v3
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	scratch_load_b32 v3, off, off           ; 4-byte Folded Reload
	v_mov_b32_e32 v80, v79
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v5, v80, v80
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v77, v79, v5
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v5, v30, v78, v33
	ds_store_b128 v5, v[74:77]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v1, v3, v1, v33
	ds_load_b128 v[74:77], v1
.Ltmp80:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_max_f32_e32 v1, v74, v74
	v_max_f32_e32 v33, v76, v76
	v_max_f32_e32 v75, v75, v75
	v_max_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v1, 0x2b8cbccc, v1
	v_max_f32_e32 v33, 0x2b8cbccc, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v75, 0x2b8cbccc, v75
	v_div_scale_f32 v3, null, 0x40e00000, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v74, null, 0x40e00000, 0x40e00000, v33
	v_div_scale_f32 v83, s0, v75, 0x40e00000, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v5, v3
	v_rcp_f32_e32 v78, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v3, v5, 1.0
	v_fmac_f32_e32 v5, v30, v5
	v_div_scale_f32 v30, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v57, v30, v5
	v_fma_f32 v76, -v3, v57, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v57, v76, v5
	v_max_f32_e32 v76, 0x2b8cbccc, v77
	v_div_scale_f32 v77, null, 0x40e00000, 0x40e00000, v75
	v_fma_f32 v3, -v3, v57, v30
	v_fma_f32 v30, -v74, v78, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v84, s1, v76, 0x40e00000, v76
	v_div_fmas_f32 v3, v3, v5, v57
	v_rcp_f32_e32 v5, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v30, v78
	v_div_scale_f32 v30, vcc_lo, v33, 0x40e00000, v33
	v_div_scale_f32 v57, null, 0x40e00000, 0x40e00000, v76
	v_div_fixup_f32 v1, v3, 0x40e00000, v1
	v_mul_f32_e32 v79, v30, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v80, v57
	v_fma_f32 v3, -v77, v5, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v82.l, v1.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v81, -v74, v79, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v5, v3, v5
	v_fmac_f32_e32 v79, v81, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v81, 1, v82
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v3, -v57, v80, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v82, v83, v5
	v_fma_f32 v30, -v74, v79, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v3, v80
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v3, v1, v81, 0x7fff
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v1, -v77, v82, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v30, v30, v78, v79
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v74, v84, v80
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v78, 0xffff0000, v3
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v82, v1, v5
	v_div_fixup_f32 v30, v30, 0x40e00000, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v1, -v57, v74, v84
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v79, null, v78, v78, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v33, -v77, v82, v83
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v77, null, v78, v78, v99
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v74, v1, v80
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v85, s0, v34, v78, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v1, v33, v5, v82
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v33, v77
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v57, -v57, v74, v84
	s_mov_b32 vcc_lo, s1
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v5.l, v30.h
	v_mov_b16_e32 v5.h, v2.l
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v75, v1, 0x40e00000, v75
	v_div_fmas_f32 v1, v57, v80, v74
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v81, vcc_lo, v99, v78, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v5, 1, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v57, -v77, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v74, v1, 0x40e00000, v76
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v76.l, v75.h
	v_mov_b16_e32 v76.h, v2.l
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v80, v79
	v_fmac_f32_e32 v33, v57, v33
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v1, v30, v5, 0x7fff
	v_mov_b16_e32 v5.l, v74.h
	v_mov_b16_e32 v5.h, v2.l
	v_and_b32_e32 v2, 1, v76
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v76, v81, v33
	v_div_scale_f32 v82, null, v78, v78, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v57, 1, v5
	v_add3_u32 v5, v75, v2, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v75, -v77, v76, v81
	v_div_scale_f32 v84, null, v78, v78, v38
	v_fma_f32 v30, -v79, v80, 1.0
	v_rcp_f32_e32 v83, v82
	v_fmac_f32_e32 v76, v75, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v75, v84
	v_div_scale_f32 v89, null, v78, v78, v41
	v_fmac_f32_e32 v80, v30, v80
	v_fma_f32 v77, -v77, v76, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v86, v85, v80
	v_fma_f32 v87, -v82, v83, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v84, v75, 1.0
	v_div_fmas_f32 v33, v77, v33, v76
	v_rcp_f32_e32 v77, v89
	v_fma_f32 v81, -v79, v86, v85
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, s1, v37, v78, v37
	v_fmac_f32_e32 v75, v88, v75
	v_div_scale_f32 v88, null, v78, v78, v42
	v_fmac_f32_e32 v86, v81, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v76, v87, v83
	v_div_scale_f32 v81, s2, v38, v78, v38
	v_rcp_f32_e32 v91, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v79, v86, v85
	v_fma_f32 v85, -v82, v76, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v90, v81, v75
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v92, -v89, v77, 1.0
	v_div_fmas_f32 v79, v79, v80, v86
	v_fmac_f32_e32 v76, v85, v83
	v_fma_f32 v80, -v84, v90, v81
	v_div_scale_f32 v85, s0, v41, v78, v41
	v_fma_f32 v86, -v88, v91, 1.0
	v_fmac_f32_e32 v77, v92, v77
	v_div_fixup_f32 v34, v79, v78, v34
	v_fma_f32 v79, -v82, v76, v87
	v_fmac_f32_e32 v90, v80, v75
	v_fmac_f32_e32 v91, v86, v91
	v_div_scale_f32 v86, null, v78, v78, v45
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v80, v85, v77
	v_div_scale_f32 v82, s3, v42, v78, v42
	v_div_fmas_f32 v76, v79, v83, v76
	v_fma_f32 v79, -v84, v90, v81
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v87, null, v78, v78, v46
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v81, -v89, v80, v85
	v_mul_f32_e32 v84, v82, v91
	v_div_fmas_f32 v75, v79, v75, v90
	v_rcp_f32_e32 v79, v87
	v_div_fixup_f32 v37, v76, v78, v37
	v_fmac_f32_e32 v80, v81, v77
	v_fma_f32 v81, -v88, v84, v82
	v_fma_f32 v90, -v86, v83, 1.0
	v_div_fixup_f32 v38, v75, v78, v38
	v_div_scale_f32 v76, s1, v45, v78, v45
	v_fma_f32 v75, -v89, v80, v85
	v_fmac_f32_e32 v84, v81, v91
	v_fmac_f32_e32 v83, v90, v83
	v_fma_f32 v81, -v87, v79, 1.0
	v_div_scale_f32 v85, null, v78, v78, v49
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v92, null, v78, v78, v54
	v_div_fmas_f32 v75, v75, v77, v80
	v_fma_f32 v77, -v88, v84, v82
	v_mul_f32_e32 v80, v76, v83
	v_fmac_f32_e32 v79, v81, v79
	v_rcp_f32_e32 v81, v85
	v_div_scale_f32 v88, null, v78, v78, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v82, s0, v46, v78, v46
	v_div_fmas_f32 v77, v77, v91, v84
	v_fma_f32 v84, -v86, v80, v76
	v_rcp_f32_e32 v91, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v89, v82, v79
	v_fma_f32 v90, -v85, v81, 1.0
	v_div_fixup_f32 v41, v75, v78, v41
	v_fmac_f32_e32 v80, v84, v83
	v_div_scale_f32 v84, null, v78, v78, v53
	v_div_fixup_f32 v42, v77, v78, v42
	v_fma_f32 v75, -v87, v89, v82
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v77, s2, v49, v78, v49
	v_fma_f32 v90, -v88, v91, 1.0
	v_fma_f32 v76, -v86, v80, v76
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v89, v75, v79
	v_mul_f32_e32 v75, v77, v81
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s3, v50, v78, v50
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v33, v33, v78, v99
	v_div_fmas_f32 v76, v76, v83, v80
	v_fma_f32 v80, -v87, v89, v82
	v_fma_f32 v82, -v85, v75, v77
	v_mul_f32_e32 v83, v90, v91
	v_fma_f32 v87, -v84, v86, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v45, v76, v78, v45
	v_div_fmas_f32 v79, v80, v79, v89
	v_fmac_f32_e32 v75, v82, v81
	v_rcp_f32_e32 v80, v92
	v_fma_f32 v82, -v88, v83, v90
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, s0, v53, v78, v53
	v_fma_f32 v76, -v85, v75, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v82, v91
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v77, v87, v86
	v_div_fixup_f32 v46, v79, v78, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v92, v80, 1.0
	v_div_scale_f32 v82, null, v78, v78, v58
	v_div_fmas_f32 v75, v76, v81, v75
	v_fma_f32 v76, -v88, v83, v90
	v_fma_f32 v81, -v84, v77, v87
	v_div_scale_f32 v88, null, v78, v78, v59
	v_fmac_f32_e32 v80, v79, v80
	v_rcp_f32_e32 v79, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v81, v86
	v_rcp_f32_e32 v81, v88
	v_div_scale_f32 v85, s1, v54, v78, v54
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v49, v75, v78, v49
	v_div_fmas_f32 v76, v76, v91, v83
	v_mul_f32_e32 v83, v85, v80
	v_fma_f32 v75, -v84, v77, v87
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v89, -v82, v79, 1.0
	v_div_scale_f32 v84, s2, v58, v78, v58
	v_fma_f32 v87, -v88, v81, 1.0
	v_div_fixup_f32 v50, v76, v78, v50
	v_fma_f32 v76, -v92, v83, v85
	v_fmac_f32_e32 v79, v89, v79
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v81, v87, v81
	v_div_scale_f32 v87, null, v78, v78, v63
	v_div_fmas_f32 v75, v75, v86, v77
	v_fmac_f32_e32 v83, v76, v80
	v_mul_f32_e32 v76, v84, v79
	v_div_scale_f32 v86, s0, v59, v78, v59
	v_rcp_f32_e32 v91, v87
	v_div_fixup_f32 v53, v75, v78, v53
	v_fma_f32 v75, -v92, v83, v85
	v_fma_f32 v85, -v82, v76, v84
	v_mul_f32_e32 v90, v86, v81
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v89, null, v78, v78, v62
	v_div_fmas_f32 v75, v75, v80, v83
	v_fmac_f32_e32 v76, v85, v79
	v_fma_f32 v80, -v88, v90, v86
	v_fma_f32 v85, -v87, v91, 1.0
	v_rcp_f32_e32 v77, v89
	v_div_fixup_f32 v54, v75, v78, v54
	v_fma_f32 v75, -v82, v76, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v90, v80, v81 :: v_dual_fmac_f32 v91, v85, v91
	v_div_scale_f32 v82, s3, v63, v78, v63
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v83, s1, v62, v78, v62
	v_div_fmas_f32 v75, v75, v79, v76
	v_fma_f32 v76, -v88, v90, v86
	v_mul_f32_e32 v86, v82, v91
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v92, -v89, v77, 1.0
	v_div_fixup_f32 v58, v75, v78, v58
	v_div_fmas_f32 v76, v76, v81, v90
	v_fma_f32 v81, -v87, v86, v82
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v77, v92, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v59, v76, v78, v59
	v_fmac_f32_e32 v86, v81, v91
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v74, v57, 0x7fff
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v74, 0xffff0000, v5
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v80, v83, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v30, 0xffff0000, v2
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v84, null, v74, v74, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v89, v80, v83
	v_div_scale_f32 v88, null, v74, v74, v67
	v_rcp_f32_e32 v85, v84
	v_div_scale_f32 v76, s0, v66, v74, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v79, v77
	v_rcp_f32_e32 v79, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v75, -v89, v80, v83
	v_div_scale_f32 v83, null, v74, v74, v70
	v_fma_f32 v90, -v84, v85, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v75, v75, v77, v80
	v_fma_f32 v81, -v88, v79, 1.0
	v_fma_f32 v77, -v87, v86, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v90, v85
	v_div_scale_f32 v82, s1, v67, v74, v67
	v_fmac_f32_e32 v79, v81, v79
	v_rcp_f32_e32 v81, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v80, v76, v85
	v_div_scale_f32 v87, null, v74, v74, v71
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v89, v82, v79
	v_div_fmas_f32 v77, v77, v91, v86
	v_fma_f32 v86, -v84, v80, v76
	v_rcp_f32_e32 v91, v87
	v_div_fixup_f32 v62, v75, v78, v62
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v83, v81, 1.0
	v_div_fixup_f32 v63, v77, v78, v63
	v_fmac_f32_e32 v80, v86, v85
	v_fma_f32 v75, -v88, v89, v82
	v_div_scale_f32 v78, null, v74, v74, v73
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v77, s2, v70, v74, v70
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v87, v91, 1.0
	v_fma_f32 v76, -v84, v80, v76
	v_fmac_f32_e32 v89, v75, v79
	v_rcp_f32_e32 v84, v78
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v75, v77, v81
	v_fmac_f32_e32 v91, v86, v91
	v_div_scale_f32 v86, s3, v71, v74, v71
	v_div_fmas_f32 v76, v76, v85, v80
	v_fma_f32 v80, -v88, v89, v82
	v_div_scale_f32 v90, null, v74, v74, v72
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v82, -v83, v75, v77
	v_mul_f32_e32 v85, v86, v91
	v_fma_f32 v88, -v78, v84, 1.0
	v_div_fmas_f32 v79, v80, v79, v89
	v_rcp_f32_e32 v80, v90
	v_fmac_f32_e32 v75, v82, v81
	v_fma_f32 v82, -v87, v85, v86
	v_fmac_f32_e32 v84, v88, v84
	v_div_scale_f32 v88, s0, v73, v74, v73
	v_div_fixup_f32 v66, v76, v74, v66
	v_div_fixup_f32 v67, v79, v74, v67
	v_fma_f32 v76, -v83, v75, v77
	v_fmac_f32_e32 v85, v82, v91
	v_mul_f32_e32 v77, v88, v84
	v_fma_f32 v79, -v90, v80, 1.0
	v_div_scale_f32 v82, null, v74, v74, v68
	s_mov_b32 vcc_lo, s2
	v_dual_fmac_f32 v80, v79, v80 :: v_dual_and_b32 v57, 0xffff0000, v1
	v_div_fmas_f32 v75, v76, v81, v75
	v_fma_f32 v76, -v87, v85, v86
	v_fma_f32 v81, -v78, v77, v88
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v86, null, v74, v74, v69
	v_div_scale_f32 v83, s1, v72, v74, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v81, v84
	v_rcp_f32_e32 v81, v86
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v70, v75, v74, v70
	v_div_fmas_f32 v76, v76, v91, v85
	v_mul_f32_e32 v85, v83, v80
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v82, v79, 1.0
	v_fma_f32 v75, -v78, v77, v88
	v_div_scale_f32 v88, null, v74, v74, v64
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v71, v76, v74, v71
	v_fma_f32 v76, -v90, v85, v83
	v_fmac_f32_e32 v79, v87, v79
	v_div_scale_f32 v78, s2, v68, v74, v68
	v_fma_f32 v87, -v86, v81, 1.0
	v_div_fmas_f32 v75, v75, v84, v77
	v_rcp_f32_e32 v77, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v76, v80 :: v_dual_mul_f32 v76, v78, v79
	v_fmac_f32_e32 v81, v87, v81
	v_div_scale_f32 v84, s0, v69, v74, v69
	v_div_scale_f32 v87, null, v74, v74, v65
	v_div_fixup_f32 v73, v75, v74, v73
	v_fma_f32 v75, -v90, v85, v83
	v_fma_f32 v83, -v82, v76, v78
	v_mul_f32_e32 v89, v84, v81
	v_rcp_f32_e32 v90, v87
	v_fma_f32 v91, -v88, v77, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v76, v83, v79
	v_div_fmas_f32 v75, v75, v80, v85
	v_fma_f32 v80, -v86, v89, v84
	v_fmac_f32_e32 v77, v91, v77
	v_div_scale_f32 v83, s1, v64, v74, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v72, v75, v74, v72
	v_fma_f32 v85, -v87, v90, 1.0
	v_fma_f32 v75, -v82, v76, v78
	v_fmac_f32_e32 v89, v80, v81
	v_mul_f32_e32 v78, v83, v77
	v_div_scale_f32 v82, null, v74, v74, v60
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v90, v85, v90
	v_div_scale_f32 v80, s3, v65, v74, v65
	v_div_fmas_f32 v75, v75, v79, v76
	v_fma_f32 v76, -v86, v89, v84
	v_fma_f32 v79, -v88, v78, v83
	v_rcp_f32_e32 v84, v82
	v_div_scale_f32 v86, null, v74, v74, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v85, v80, v90 :: v_dual_fmac_f32 v78, v79, v77
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v79, v86
	v_div_fmas_f32 v76, v76, v81, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v81, -v87, v85, v80
	v_div_fixup_f32 v68, v75, v74, v68
	v_fma_f32 v89, -v82, v84, 1.0
	v_fma_f32 v75, -v88, v78, v83
	v_div_fixup_f32 v69, v76, v74, v69
	v_fmac_f32_e32 v85, v81, v90
	v_div_scale_f32 v76, s0, v60, v74, v60
	v_fmac_f32_e32 v84, v89, v84
	v_fma_f32 v81, -v86, v79, 1.0
	v_div_scale_f32 v83, null, v74, v74, v55
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v91, null, v74, v74, v51
	v_div_fmas_f32 v75, v75, v77, v78
	v_fma_f32 v77, -v87, v85, v80
	v_dual_mul_f32 v78, v76, v84 :: v_dual_fmac_f32 v79, v81, v79
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v81, s1, v61, v74, v61
	v_div_scale_f32 v87, null, v74, v74, v56
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v88, v81, v79
	v_div_fmas_f32 v77, v77, v90, v85
	v_fma_f32 v85, -v82, v78, v76
	v_rcp_f32_e32 v90, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v83, v80, 1.0
	v_div_fixup_f32 v64, v75, v74, v64
	v_fma_f32 v75, -v86, v88, v81
	v_fmac_f32_e32 v78, v85, v84
	v_div_fixup_f32 v65, v77, v74, v65
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v77, s2, v55, v74, v55
	v_div_scale_f32 v85, null, v74, v74, v52
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v76, -v82, v78, v76
	v_fmac_f32_e32 v88, v75, v79
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v75, v77, v80
	v_rcp_f32_e32 v82, v85
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s3, v56, v74, v56
	v_div_fmas_f32 v76, v76, v84, v78
	v_fma_f32 v78, -v86, v88, v81
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v81, -v83, v75, v77
	v_mul_f32_e32 v84, v89, v90
	v_div_fixup_f32 v60, v76, v74, v60
	v_div_fmas_f32 v78, v78, v79, v88
	v_rcp_f32_e32 v79, v91
	v_fma_f32 v86, -v85, v82, 1.0
	v_fmac_f32_e32 v75, v81, v80
	v_fma_f32 v81, -v87, v84, v89
	v_div_fixup_f32 v61, v78, v74, v61
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s0, v52, v74, v52
	v_fmac_f32_e32 v84, v81, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v91, v79, 1.0
	v_div_scale_f32 v81, null, v57, v57, v47
	v_fma_f32 v76, -v83, v75, v77
	v_mul_f32_e32 v77, v86, v82
	v_fmac_f32_e32 v79, v78, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v78, v81
	v_div_scale_f32 v83, s1, v51, v74, v51
	v_div_fmas_f32 v75, v76, v80, v75
	v_fma_f32 v76, -v87, v84, v89
	v_fma_f32 v80, -v85, v77, v86
	v_div_scale_f32 v87, null, v57, v57, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v55, v75, v74, v55
	v_fmac_f32_e32 v77, v80, v82
	v_rcp_f32_e32 v80, v87
	v_fma_f32 v88, -v81, v78, 1.0
	v_div_fmas_f32 v76, v76, v90, v84
	v_mul_f32_e32 v84, v83, v79
	v_fma_f32 v75, -v85, v77, v86
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v78, v88, v78
	v_div_scale_f32 v88, null, v57, v57, v43
	v_div_fixup_f32 v56, v76, v74, v56
	v_fma_f32 v76, -v91, v84, v83
	v_div_scale_f32 v85, s2, v47, v57, v47
	v_fma_f32 v86, -v87, v80, 1.0
	v_div_fmas_f32 v75, v75, v82, v77
	v_rcp_f32_e32 v77, v88
	v_fmac_f32_e32 v84, v76, v79
	v_mul_f32_e32 v76, v85, v78
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v82, s0, v48, v57, v48
	v_div_scale_f32 v86, null, v57, v57, v44
	v_div_fixup_f32 v52, v75, v74, v52
	v_fma_f32 v75, -v91, v84, v83
	v_fma_f32 v83, -v81, v76, v85
	v_mul_f32_e32 v89, v82, v80
	v_rcp_f32_e32 v90, v86
	v_fma_f32 v91, -v88, v77, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v76, v83, v78
	v_div_fmas_f32 v75, v75, v79, v84
	v_fma_f32 v79, -v87, v89, v82
	v_fmac_f32_e32 v77, v91, v77
	v_div_scale_f32 v83, s1, v43, v57, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v51, v75, v74, v51
	v_fma_f32 v84, -v86, v90, 1.0
	v_fma_f32 v74, -v81, v76, v85
	v_fmac_f32_e32 v89, v79, v80
	v_mul_f32_e32 v75, v83, v77
	v_div_scale_f32 v81, null, v57, v57, v39
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v90, v84, v90
	v_div_scale_f32 v79, s3, v44, v57, v44
	v_div_fmas_f32 v74, v74, v78, v76
	v_fma_f32 v76, -v87, v89, v82
	v_fma_f32 v78, -v88, v75, v83
	v_rcp_f32_e32 v82, v81
	v_div_scale_f32 v85, null, v57, v57, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v84, v79, v90 :: v_dual_fmac_f32 v75, v78, v77
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v78, v85
	v_div_fmas_f32 v76, v76, v80, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v80, -v86, v84, v79
	v_div_fixup_f32 v47, v74, v57, v47
	v_fma_f32 v87, -v81, v82, 1.0
	v_fma_f32 v74, -v88, v75, v83
	v_div_fixup_f32 v48, v76, v57, v48
	v_fmac_f32_e32 v84, v80, v90
	v_div_scale_f32 v76, s0, v39, v57, v39
	v_fmac_f32_e32 v82, v87, v82
	v_fma_f32 v80, -v85, v78, 1.0
	v_div_scale_f32 v83, null, v57, v57, v35
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v52, v52
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v74, v74, v77, v75
	v_fma_f32 v75, -v86, v84, v79
	v_mul_f32_e32 v77, v76, v82
	v_fmac_f32_e32 v78, v80, v78
	v_rcp_f32_e32 v79, v83
	v_div_scale_f32 v80, s1, v40, v57, v40
	v_div_scale_f32 v86, null, v57, v57, v36
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v87, v80, v78
	v_div_fmas_f32 v75, v75, v90, v84
	v_fma_f32 v84, -v81, v77, v76
	v_rcp_f32_e32 v89, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v83, v79, 1.0
	v_div_fixup_f32 v43, v74, v57, v43
	v_fma_f32 v74, -v85, v87, v80
	v_fmac_f32_e32 v77, v84, v82
	v_div_scale_f32 v84, null, v57, v57, v32
	v_div_fixup_f32 v44, v75, v57, v44
	v_fmac_f32_e32 v79, v88, v79
	v_div_scale_f32 v75, s2, v35, v57, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v86, v89, 1.0
	v_fma_f32 v76, -v81, v77, v76
	v_fmac_f32_e32 v87, v74, v78
	v_rcp_f32_e32 v81, v84
	s_mov_b32 vcc_lo, s0
	v_dual_mul_f32 v74, v75, v79 :: v_dual_fmac_f32 v89, v88, v89
	v_div_scale_f32 v88, s3, v36, v57, v36
	v_div_fmas_f32 v76, v76, v82, v77
	v_fma_f32 v77, -v85, v87, v80
	v_div_scale_f32 v90, null, v57, v57, v31
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v80, -v83, v74, v75
	v_mul_f32_e32 v82, v88, v89
	v_fma_f32 v85, -v84, v81, 1.0
	v_div_fmas_f32 v77, v77, v78, v87
	v_rcp_f32_e32 v78, v90
	v_fmac_f32_e32 v74, v80, v79
	v_fma_f32 v80, -v86, v82, v88
	v_fmac_f32_e32 v81, v85, v81
	v_div_scale_f32 v85, s0, v32, v57, v32
	v_div_fixup_f32 v39, v76, v57, v39
	v_div_fixup_f32 v40, v77, v57, v40
	v_fma_f32 v75, -v83, v74, v75
	v_fmac_f32_e32 v82, v80, v89
	v_mul_f32_e32 v76, v85, v81
	v_fma_f32 v77, -v90, v78, 1.0
	v_div_scale_f32 v80, null, v57, v57, v28
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v83, s1, v31, v57, v31
	v_div_fmas_f32 v74, v75, v79, v74
	v_fma_f32 v75, -v86, v82, v88
	v_fma_f32 v79, -v84, v76, v85
	v_fmac_f32_e32 v78, v77, v78
	v_rcp_f32_e32 v77, v80
	v_div_scale_f32 v86, null, v57, v57, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v76, v79, v81
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v35, v74, v57, v35
	v_rcp_f32_e32 v79, v86
	v_div_fmas_f32 v75, v75, v89, v82
	v_mul_f32_e32 v82, v83, v78
	v_fma_f32 v74, -v84, v76, v85
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v80, v77, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v36, v75, v57, v36
	v_fma_f32 v75, -v90, v82, v83
	v_div_scale_f32 v84, s2, v28, v57, v28
	v_fmac_f32_e32 v77, v87, v77
	v_fma_f32 v85, -v86, v79, 1.0
	v_div_scale_f32 v87, null, v57, v57, v27
	v_div_fmas_f32 v74, v74, v81, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v82, v75, v78 :: v_dual_fmac_f32 v79, v85, v79
	v_rcp_f32_e32 v76, v87
	v_div_scale_f32 v85, null, v57, v57, v26
	v_mul_f32_e32 v75, v84, v77
	v_div_scale_f32 v81, s0, v29, v57, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v89, v85
	v_div_fixup_f32 v32, v74, v57, v32
	v_fma_f32 v74, -v90, v82, v83
	v_fma_f32 v83, -v80, v75, v84
	v_mul_f32_e32 v88, v81, v79
	v_fma_f32 v90, -v87, v76, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v43, v43
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v74, v74, v78, v82
	v_fmac_f32_e32 v75, v83, v77
	v_fma_f32 v78, -v86, v88, v81
	v_fmac_f32_e32 v76, v90, v76
	v_div_scale_f32 v82, s1, v27, v57, v27
	v_fma_f32 v83, -v85, v89, 1.0
	v_div_fixup_f32 v31, v74, v57, v31
	v_fma_f32 v74, -v80, v75, v84
	v_fmac_f32_e32 v88, v78, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v78, v82, v76 :: v_dual_fmac_f32 v89, v83, v89
	v_div_scale_f32 v83, null, v57, v57, v24
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v80, s3, v26, v57, v26
	v_div_fmas_f32 v74, v74, v77, v75
	v_fma_f32 v75, -v86, v88, v81
	v_fma_f32 v77, -v87, v78, v82
	v_rcp_f32_e32 v81, v83
	v_div_scale_f32 v86, null, v57, v57, v25
	v_mul_f32_e32 v84, v80, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v77, v76
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v77, v86
	v_div_fmas_f32 v75, v75, v79, v88
	v_fma_f32 v79, -v85, v84, v80
	v_div_fixup_f32 v28, v74, v57, v28
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v83, v81, 1.0
	v_fma_f32 v74, -v87, v78, v82
	v_div_fixup_f32 v29, v75, v57, v29
	v_fmac_f32_e32 v84, v79, v89
	v_div_scale_f32 v75, s0, v24, v57, v24
	v_fmac_f32_e32 v81, v88, v81
	v_fma_f32 v79, -v86, v77, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v87, null, v30, v30, v21
	v_div_fmas_f32 v74, v74, v76, v78
	v_fma_f32 v76, -v85, v84, v80
	v_mul_f32_e32 v78, v75, v81
	v_fmac_f32_e32 v77, v79, v77
	v_div_scale_f32 v79, null, v30, v30, v23
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v80, s1, v25, v57, v25
	v_div_fmas_f32 v76, v76, v89, v84
	v_rcp_f32_e32 v82, v79
	v_fma_f32 v84, -v83, v78, v75
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v85, v80, v77
	v_div_fixup_f32 v27, v74, v57, v27
	v_div_fixup_f32 v26, v76, v57, v26
	v_rcp_f32_e32 v76, v87
	v_fmac_f32_e32 v78, v84, v81
	v_fma_f32 v74, -v86, v85, v80
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v89, null, v30, v30, v20
	v_fma_f32 v84, -v79, v82, 1.0
	v_fma_f32 v75, -v83, v78, v75
	v_div_scale_f32 v83, null, v30, v30, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v74, v77 :: v_dual_fmac_f32 v82, v84, v82
	v_div_scale_f32 v74, s2, v23, v30, v23
	v_rcp_f32_e32 v84, v83
	v_fma_f32 v88, -v87, v76, 1.0
	v_div_fmas_f32 v75, v75, v81, v78
	v_fma_f32 v78, -v86, v85, v80
	v_mul_f32_e32 v80, v74, v82
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v76, v88, v76
	v_div_scale_f32 v81, s0, v21, v30, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v88, -v79, v80, v74
	v_fma_f32 v86, -v83, v84, 1.0
	v_rcp_f32_e32 v91, v89
	v_div_fmas_f32 v77, v78, v77, v85
	v_mul_f32_e32 v90, v81, v76
	v_fmac_f32_e32 v80, v88, v82
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, s3, v22, v30, v22
	v_div_fixup_f32 v24, v75, v57, v24
	v_div_fixup_f32 v25, v77, v57, v25
	v_fma_f32 v57, -v79, v80, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v85, v86, v84
	v_div_scale_f32 v77, null, v30, v30, v19
	v_fma_f32 v78, -v87, v90, v81
	v_fma_f32 v75, -v89, v91, 1.0
	v_fma_f32 v74, -v83, v85, v86
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v90, v78, v76 :: v_dual_fmac_f32 v91, v75, v91
	v_fmac_f32_e32 v85, v74, v84
	v_rcp_f32_e32 v74, v77
	v_div_scale_f32 v75, s1, v20, v30, v20
	v_div_fmas_f32 v57, v57, v82, v80
	v_fma_f32 v78, -v87, v90, v81
	v_div_scale_f32 v80, null, v30, v30, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v79, v75, v91
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v23, v57, v30, v23
	v_fma_f32 v81, -v77, v74, 1.0
	v_div_fmas_f32 v76, v78, v76, v90
	v_fma_f32 v78, -v83, v85, v86
	v_rcp_f32_e32 v82, v80
	v_fma_f32 v83, -v89, v79, v75
	v_fmac_f32_e32 v74, v81, v74
	v_div_scale_f32 v81, s0, v19, v30, v19
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v79, v83, v91
	v_div_fmas_f32 v78, v78, v84, v85
	v_mul_f32_e32 v57, v81, v74
	v_div_fixup_f32 v21, v76, v30, v21
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v76, -v80, v82, 1.0
	v_fma_f32 v75, -v89, v79, v75
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v83, -v77, v57, v81
	v_div_fixup_f32 v22, v78, v30, v22
	v_div_scale_f32 v78, null, v30, v30, v14
	v_fmac_f32_e32 v82, v76, v82
	v_div_scale_f32 v76, s2, v18, v30, v18
	v_div_fmas_f32 v75, v75, v91, v79
	v_fmac_f32_e32 v57, v83, v74
	v_rcp_f32_e32 v84, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v79, v76, v82
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v20, v75, v30, v20
	v_fma_f32 v75, -v77, v57, v81
	v_div_scale_f32 v83, null, v30, v30, v15
	v_fma_f32 v77, -v80, v79, v76
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v57, v75, v74, v57
	v_div_scale_f32 v74, null, v30, v30, v16
	v_fma_f32 v81, -v78, v84, 1.0
	v_rcp_f32_e32 v85, v83
	v_fmac_f32_e32 v79, v77, v82
	v_rcp_f32_e32 v77, v74
	v_div_scale_f32 v75, s0, v14, v30, v14
	v_fmac_f32_e32 v84, v81, v84
	v_div_scale_f32 v81, null, v30, v30, v17
	v_div_fixup_f32 v19, v57, v30, v19
	v_fma_f32 v76, -v80, v79, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v83, v85, 1.0
	v_rcp_f32_e32 v87, v81
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v86, -v74, v77, 1.0
	v_mul_f32_e32 v80, v75, v84
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v85, v57, v85
	v_div_scale_f32 v57, s1, v15, v30, v15
	v_fmac_f32_e32 v77, v86, v77
	v_div_scale_f32 v86, null, v30, v30, v13
	v_div_fmas_f32 v76, v76, v82, v79
	v_fma_f32 v79, -v78, v80, v75
	v_mul_f32_e32 v82, v57, v85
	v_div_scale_f32 v88, s2, v16, v30, v16
	v_fma_f32 v89, -v81, v87, 1.0
	v_rcp_f32_e32 v90, v86
	v_fmac_f32_e32 v80, v79, v84
	v_fma_f32 v79, -v83, v82, v57
	v_mul_f32_e32 v91, v88, v77
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, s3, v17, v30, v17
	v_div_fixup_f32 v18, v76, v30, v18
	v_fma_f32 v75, -v78, v80, v75
	v_fmac_f32_e32 v82, v79, v85
	v_fma_f32 v76, -v74, v91, v88
	v_mul_f32_e32 v78, v89, v87
	v_fma_f32 v79, -v86, v90, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v57, -v83, v82, v57
	v_fmac_f32_e32 v91, v76, v77
	v_fma_f32 v76, -v81, v78, v89
	v_fmac_f32_e32 v90, v79, v90
	v_div_scale_f32 v79, s0, v13, v30, v13
	v_div_fmas_f32 v75, v75, v84, v80
	v_fma_f32 v74, -v74, v91, v88
	v_fmac_f32_e32 v78, v76, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v76, v79, v90
	v_div_scale_f32 v80, null, v30, v30, v8
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v75, v30, v14
	v_div_fmas_f32 v57, v57, v85, v82
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v82, v80
	v_div_fmas_f32 v74, v74, v77, v91
	v_fma_f32 v77, -v81, v78, v89
	v_fma_f32 v81, -v86, v76, v79
	v_div_fixup_f32 v15, v57, v30, v15
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v16, v74, v30, v16
	v_div_scale_f32 v74, null, v30, v30, v9
	v_fmac_f32_e32 v76, v81, v90
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v75, -v80, v82, 1.0
	v_div_fmas_f32 v77, v77, v87, v78
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v84, null, v30, v30, v12
	v_fma_f32 v57, -v86, v76, v79
	v_fmac_f32_e32 v82, v75, v82
	v_div_scale_f32 v75, null, v30, v30, v10
	v_div_fixup_f32 v17, v77, v30, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v57, v57, v90, v76
	v_div_scale_f32 v78, vcc_lo, v8, v30, v8
	v_rcp_f32_e32 v76, v74
	v_div_scale_f32 v77, null, v30, v30, v11
	v_mul_f32_e32 v83, v78, v82
	v_div_fixup_f32 v13, v57, v30, v13
	v_rcp_f32_e32 v79, v75
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v81, v77
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v87, -v80, v83, v78
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v44, v44
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v57, -v74, v76, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v69, v69
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v83, v87, v82
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v76, v57, v76
	v_div_scale_f32 v57, s0, v9, v30, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v80, v83, v78
	v_fma_f32 v85, -v75, v79, 1.0
	v_fma_f32 v88, -v77, v81, 1.0
	v_mul_f32_e32 v89, v57, v76
	v_fma_f32 v90, -v84, v86, 1.0
	v_div_fmas_f32 v78, v78, v82, v83
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v87, -v74, v89, v57
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v79, v85, v79
	v_div_scale_f32 v85, s1, v10, v30, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v43, v43
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v89, v87, v76
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_cvt_i32_f32_e32 v52, v52
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v88, s2, v11, v30, v11
	v_fma_f32 v57, -v74, v89, v57
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s3, v12, v30, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v88, v81
	v_div_fmas_f32 v57, v57, v76, v89
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v27, v27, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v93, v90, v86
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v87, -v77, v92, v88
	v_div_fixup_f32 v9, v57, v30, v9
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v57, v59
	v_rndne_f32_e32 v59, v63
	v_rndne_f32_e32 v63, v67
	v_rndne_f32_e32 v67, v71
	v_rndne_f32_e32 v71, v72
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v72, v39
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v91, v85, v79
	v_fma_f32 v74, -v84, v93, v90
	v_fmac_f32_e32 v92, v87, v81
	v_div_fixup_f32 v8, v78, v30, v8
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v80, -v75, v91, v85
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v44, v44, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v28, v28
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v91, v80, v79
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v80, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v93, v74, v86
	v_fma_f32 v74, -v77, v92, v88
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v75, -v75, v91, v85
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v68, v68, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v76, -v84, v93, v90
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v75, v75, v79, v91
	s_mov_b32 vcc_lo, s2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v74, v74, v81, v92
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v75, v30, v10
	v_div_fmas_f32 v76, v76, v86, v93
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v44, v44
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v11, v74, v30, v11
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v12, v76, v30, v12
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v30, v33
	v_rndne_f32_e32 v33, v34
	v_rndne_f32_e32 v34, v37
	v_rndne_f32_e32 v37, v38
	v_rndne_f32_e32 v38, v41
	v_rndne_f32_e32 v41, v42
	v_rndne_f32_e32 v42, v45
	v_rndne_f32_e32 v45, v46
	v_rndne_f32_e32 v46, v49
	v_rndne_f32_e32 v49, v50
	v_rndne_f32_e32 v50, v53
	v_rndne_f32_e32 v53, v54
	v_rndne_f32_e32 v54, v58
	v_rndne_f32_e32 v58, v62
	v_rndne_f32_e32 v62, v66
	v_rndne_f32_e32 v66, v70
	v_rndne_f32_e32 v70, v73
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_cvt_i32_f32_e32 v66, v66
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v81, v26
	v_cvt_i32_f32_e32 v90, v14
	v_and_b32_e32 v14, 15, v42
	v_and_b32_e32 v26, 15, v66
	v_and_b32_e32 v42, 15, v43
	v_and_b32_e32 v43, 15, v44
	v_and_b32_e32 v44, 15, v72
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v66, 10, v0
	v_and_b32_e32 v72, 16, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v20, v20
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v73, v40
	v_cvt_i32_f32_e32 v77, v31
	v_cvt_i32_f32_e32 v78, v28
	v_cvt_i32_f32_e32 v95, v8
	v_and_b32_e32 v8, 15, v30
	v_and_b32_e32 v28, 15, v70
	v_and_b32_e32 v30, 15, v68
	v_and_b32_e32 v31, 15, v69
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v68, 0x1800, v66
	v_lshlrev_b32_e32 v69, 6, v72
	v_lshlrev_b32_e32 v70, 4, v119
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v12, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_cvt_i32_f32_e32 v79, v29
	v_cvt_i32_f32_e32 v91, v15
	v_and_b32_e32 v15, 15, v45
	v_and_b32_e32 v29, 15, v71
	v_and_b32_e32 v45, 15, v73
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v7, v70, v7
	v_lshlrev_b32_e32 v71, 6, v0
	v_add3_u32 v73, 0, v68, v69
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v18, v18
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v36
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v84, v23
	v_cvt_i32_f32_e32 v85, v21
	v_cvt_i32_f32_e32 v86, v22
	v_cvt_i32_f32_e32 v87, v20
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v4, 0x1b00, v71, v4
	v_add3_u32 v73, v73, v7, v6
	v_and_b32_e32 v6, 0xf0, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v76, v32
	v_cvt_i32_f32_e32 v92, v16
	v_cvt_i32_f32_e32 v93, v17
	v_cvt_i32_f32_e32 v94, v13
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v82, v24
	v_cvt_i32_f32_e32 v83, v25
	v_cvt_i32_f32_e32 v96, v9
	v_cvt_i32_f32_e32 v97, v10
	v_cvt_i32_f32_e32 v98, v11
	v_cvt_i32_f32_e32 v99, v12
	v_and_b32_e32 v9, 15, v33
	v_and_b32_e32 v10, 15, v34
	v_and_b32_e32 v11, 15, v37
	v_and_b32_e32 v12, 15, v38
	v_and_b32_e32 v13, 15, v41
	v_and_b32_e32 v21, 15, v57
	v_and_b32_e32 v22, 15, v58
	v_and_b32_e32 v23, 15, v59
	v_and_b32_e32 v24, 15, v62
	v_and_b32_e32 v25, 15, v63
	v_and_b32_e32 v27, 15, v67
	v_and_b32_e32 v37, 15, v56
	v_and_b32_e32 v40, 15, v47
	v_and_b32_e32 v41, 15, v48
	v_and_b32_e32 v56, 15, v84
	v_and_b32_e32 v57, 15, v85
	v_and_b32_e32 v58, 15, v86
	v_and_b32_e32 v59, 15, v87
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xad_u32 v4, v4, v6, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v74, v35
	v_cvt_i32_f32_e32 v88, v19
	v_cvt_i32_f32_e32 v89, v18
	v_and_b32_e32 v16, 15, v46
	v_and_b32_e32 v17, 15, v49
	v_and_b32_e32 v18, 15, v50
	v_and_b32_e32 v19, 15, v53
	v_and_b32_e32 v20, 15, v54
	v_and_b32_e32 v32, 15, v64
	v_and_b32_e32 v33, 15, v65
	v_and_b32_e32 v34, 15, v60
	v_and_b32_e32 v35, 15, v61
	v_and_b32_e32 v39, 15, v51
	v_and_b32_e32 v48, 15, v76
	v_and_b32_e32 v49, 15, v77
	v_and_b32_e32 v50, 15, v78
	v_and_b32_e32 v51, 15, v79
	v_and_b32_e32 v64, 15, v92
	v_and_b32_e32 v65, 15, v93
	v_and_b32_e32 v66, 15, v94
	v_and_b32_e32 v67, 15, v95
	v_cvt_i32_f32_e32 v75, v36
	v_and_b32_e32 v36, 15, v55
	v_and_b32_e32 v38, 15, v52
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v73, v[8:11]
	ds_store_b128 v73, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v4
	ds_load_b128 v[16:19], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[24:27]
	ds_store_b128 v73, v[32:35] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v4
	ds_load_b128 v[32:35], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[40:43]
	ds_store_b128 v73, v[48:51] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[40:43], v4
	ds_load_b128 v[48:51], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[56:59]
	ds_store_b128 v73, v[64:67] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[56:59], v4
	ds_load_b128 v[64:67], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[12:15]
	ds_store_b128 v73, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v4
	ds_load_b128 v[20:23], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[28:31]
	ds_store_b128 v73, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[28:31], v4
	ds_load_b128 v[36:39], v4 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v46, 15, v74
	v_and_b32_e32 v47, 15, v75
	v_and_b32_e32 v52, 15, v80
	v_and_b32_e32 v53, 15, v81
	v_and_b32_e32 v54, 15, v82
	v_and_b32_e32 v55, 15, v83
	v_and_b32_e32 v60, 15, v88
	v_and_b32_e32 v61, 15, v89
	v_and_b32_e32 v62, 15, v90
	v_and_b32_e32 v63, 15, v91
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[44:47]
	ds_store_b128 v73, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v4
	ds_load_b128 v[52:55], v4 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v68, 15, v96
	v_and_b32_e32 v69, 15, v97
	v_and_b32_e32 v70, 15, v98
	v_and_b32_e32 v71, 15, v99
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v73, v[60:63]
	ds_store_b128 v73, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v4
	ds_load_b128 v[68:71], v4 offset:1024
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v4, v16, 4, v6
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v6, v17, 4, v7
	v_lshl_or_b32 v7, v18, 4, v8
	v_lshl_or_b32 v8, v19, 4, v9
	v_lshl_or_b32 v9, v20, 4, v10
	v_lshl_or_b32 v10, v21, 4, v11
	v_lshl_or_b32 v11, v22, 4, v12
	v_lshl_or_b32 v12, v23, 4, v13
	v_lshl_or_b32 v16, v35, 4, v27
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v35, 3, v119
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v17, v36, 4, v28
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v36, s0, v118
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s48, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v13, v32, 4, v24
	v_lshl_or_b32 v14, v33, 4, v25
	v_lshl_or_b32 v15, v34, 4, v26
	v_lshl_or_b32 v18, v37, 4, v29
	v_lshl_or_b32 v19, v38, 4, v30
	v_lshl_or_b32 v20, v39, 4, v31
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v38, s2, s1, v35
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v2.l, 0xff, v7.l
	v_lshlrev_b16 v3.l, 8, v6.l
	v_and_b16 v4.l, 0xff, v4.l
	v_lshlrev_b16 v4.h, 8, v12.l
	v_and_b16 v5.l, 0xff, v11.l
	v_lshlrev_b16 v6.l, 8, v10.l
	v_and_b16 v6.h, 0xff, v9.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v21, v48, 4, v40
	v_lshl_or_b32 v22, v49, 4, v41
	v_lshl_or_b32 v27, v54, 4, v46
	v_lshl_or_b32 v28, v55, 4, v47
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v40, v38, v36
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.l, v4.h
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v1.l, 8, v16.l
	v_and_b16 v2.l, 0xff, v15.l
	v_lshlrev_b16 v3.l, 8, v14.l
	v_and_b16 v4.l, 0xff, v13.l
	v_lshlrev_b16 v4.h, 8, v20.l
	v_and_b16 v5.l, 0xff, v19.l
	v_lshlrev_b16 v6.l, 8, v18.l
	v_and_b16 v6.h, 0xff, v17.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s0, 4
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v23, v50, 4, v42
	v_lshl_or_b32 v24, v51, 4, v43
	v_lshl_or_b32 v25, v52, 4, v44
	v_lshl_or_b32 v26, v53, 4, v45
	v_lshl_or_b32 v29, v64, 4, v56
	v_lshl_or_b32 v30, v65, 4, v57
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v37, v70, 4, v62
	v_lshl_or_b32 v39, v71, 4, v63
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v41, v36, s1, v38
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[7:8], v40, s[12:15], 0 offen
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.l, v4.h
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v3.l, 8, v22.l
	v_and_b16 v4.l, 0xff, v21.l
	v_lshlrev_b16 v4.h, 8, v28.l
	v_and_b16 v5.l, 0xff, v27.l
	v_lshlrev_b16 v1.l, 8, v24.l
	v_and_b16 v2.l, 0xff, v23.l
	v_lshlrev_b16 v6.l, 8, v26.l
	v_and_b16 v6.h, 0xff, v25.l
	buffer_store_b64 v[7:8], v41, s[12:15], 0 offen
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.l, v4.h
	v_lshlrev_b16 v3.l, 8, v30.l
	v_and_b16 v4.l, 0xff, v29.l
	v_lshlrev_b16 v4.h, 8, v39.l
	v_and_b16 v5.l, 0xff, v37.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s2, s0, 5
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v31, v66, 4, v58
	v_lshl_or_b32 v32, v67, 4, v59
	v_lshl_or_b32 v33, v68, 4, v60
	v_lshl_or_b32 v34, v69, 4, v61
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v42, v36, s2, v38
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v8.l, v6.h, v6.l
	v_or_b16 v9.l, v4.l, v3.l
	v_or_b16 v10.h, v5.l, v4.h
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v4, 2, v72
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v32.l
	v_and_b16 v2.l, 0xff, v31.l
	v_lshlrev_b16 v6.l, 8, v34.l
	v_and_b16 v6.h, 0xff, v33.l
	buffer_store_b64 v[7:8], v42, s[12:15], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v7, 2, v118
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s0, s0, 48
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.h, v2.l, v1.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v36, v36, s0, v38
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v10.l, v6.h, v6.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v6, 0, v35
	v_mov_b16_e32 v2.l, v5.h
	v_mov_b16_e32 v1.l, v3.h
	v_add3_u32 v4, v4, v7, v35
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v3, v0, 63, s48
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[9:10], v36, s[12:15], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v6, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v2, v3, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s13, s27, 0xffff
	s_mov_b32 s12, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s33, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[12:15], 0 offen
.Ltmp81:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp82:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 56
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 56
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 40948
; TotalNumSgprs: 55
; NumVgprs: 256
; ScratchSize: 56
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x86 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	347                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	346                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	363                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x68:0x27 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	446                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x75:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x81:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 56
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 13
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
