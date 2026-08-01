	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v90, 4, v0
	v_lshrrev_b32_e32 v91, 2, v0
	v_and_b32_e32 v103, 15, v0
	v_lshlrev_b32_e32 v243, 4, v0
	v_or_b32_e32 v99, 0x3f0, v0
	v_or_b32_e32 v92, 16, v90
	v_or_b32_e32 v93, 32, v90
	v_or_b32_e32 v94, 48, v90
	v_and_b32_e32 v7, 48, v243
	v_or_b32_e32 v100, 0x7f0, v0
	v_or_b32_e32 v101, 0xbf0, v0
	v_or_b32_e32 v102, 0xff0, v0
	scratch_store_b32 off, v7, off          ; 4-byte Folded Spill
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s26, 63
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
	v_mul_lo_u32 v2, s27, v90
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s33, s27, 48
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v95, v103, 4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_nc_u32_e32 v96, s33, v95
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
	v_mul_lo_u32 v1, s26, v91
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s39, s11
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s17, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s38, s10
	s_mov_b64 s[28:29], s[14:15]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
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
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s18, s31, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s2, s2, s19
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s3, s18, 31
.Ltmp15:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s2, s2, s19
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s7, s2, s7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s18, s18, s3
.Ltmp19:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s3, s5, s7
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s30, v90
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s3, s3, s6
.Ltmp20:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s17, s31, 0xff
.Ltmp21:
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s30, v91
	v_or_b32_e32 v4, s30, v92
	v_or_b32_e32 v5, s30, v93
	v_or_b32_e32 v6, s30, v94
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s51, s2, 8
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s48, s3, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s20, s27, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s17, 0xff
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s31, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s7, s51, s20
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s31, v4
	v_cmp_gt_i32_e64 s5, s31, v5
	v_cmp_gt_i32_e64 s6, s31, v6
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v89, v1, v7, s48
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s7, v95
	v_add_nc_u32_e32 v2, s7, v96
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s2, s3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s35, s27, 4
	s_lshl_b32 s34, s27, 5
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s4, s4, s3
	s_and_b32 s5, s5, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s6, s3
	s_cmpk_gt_i32 s17, 0x1ff
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s16, s26, s30
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v97, s35, v95
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s49, s30, 0x100
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v98, s34, v95
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v3, s16, v89
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v24, s49, v91
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s7, v97
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v25, s49, v90
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s7, v98
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v26, s49, v92
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s6, s26, 8
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s19, s27, 8
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v24
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v27, s49, v93
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v12, 0x80000000, v4, s4
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v29, s16, s6, v89
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s7, s7, s19
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s31, v25
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v28, s49, v94
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v16, 0x80000000, v5, s5
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[4:7], v3, s[8:11], 0 offen
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s7, v95
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s5, s31, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v30, s7, v97
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s6, s31, v27
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[8:11], v1, s[36:39], 0 offen
	buffer_load_b128 v[12:15], v12, s[36:39], 0 offen
	buffer_load_b128 v[16:19], v16, s[36:39], 0 offen
	buffer_load_b128 v[20:23], v2, s[36:39], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v1, 0x80000000, v29, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v31, s7, v98
	v_add_nc_u32_e32 v32, s7, v96
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s7, s31, v28
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v3, 0x80000000, v30 :: v_dual_add_nc_u32 v44, 0, v243
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s6, s2
	s_mov_b32 s16, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v36, 0x80000000, v31, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s7, s2
	s_cmpk_gt_i32 s17, 0x2ff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v40, 0x80000000, v32, vcc_lo
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[24:27], v1, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[28:31], v2, s[36:39], 0 offen
	buffer_load_b128 v[32:35], v3, s[36:39], 0 offen
	buffer_load_b128 v[36:39], v36, s[36:39], 0 offen
	buffer_load_b128 v[40:43], v40, s[36:39], 0 offen
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v1, 16, v103
	v_or_b32_e32 v2, 32, v103
	v_or_b32_e32 v3, 48, v103
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(9)
	ds_store_b128 v44, v[4:7] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v44, v[8:11]
	s_waitcnt vmcnt(7)
	ds_store_b128 v44, v[12:15] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v44, v[16:19] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v44, v[20:23] offset:12288
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v44, v[24:27] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v44, v[28:31] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v44, v[32:35] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v44, v[36:39] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v44, v[40:43] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v108, 0x3f0, v0
	v_or_b32_e32 v109, 0x7f0, v0
	v_or_b32_e32 v110, 0xbf0, v0
	v_or_b32_e32 v111, 0xff0, v0
	s_mov_b32 s4, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr108
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr110
                                        ; implicit-def: $vgpr111
.LBB0_3:                                ; %Flow94
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v5, s48, v103
	v_or_b32_e32 v1, s48, v1
	v_or_b32_e32 v2, s48, v2
	v_or_b32_e32 v3, s48, v3
	v_and_b32_e32 v4, 0xf0, v0
	s_ashr_i32 s50, s18, 6
	v_or_b32_e32 v118, s51, v0
	v_mul_lo_u32 v156, v5, s50
	v_mul_lo_u32 v153, v1, s50
	v_mul_lo_u32 v154, v2, s50
	v_mul_lo_u32 v155, v3, s50
	v_lshlrev_b32_e32 v104, 2, v4
	v_lshlrev_b32_e32 v196, 1, v0
	v_lshlrev_b32_e32 v106, 5, v0
	v_lshlrev_b32_e32 v105, 1, v4
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_lshrrev_b32_e32 v1, 1, v0
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s52, s17, 8
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	v_dual_mov_b32 v238, v196 :: v_dual_and_b32 v107, 0x70, v1
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v1, 32, v106
	v_and_b32_e32 v9, 28, v196
	v_mov_b32_e32 v121, 0
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v109, 0, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v10, 0, v104, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v8, s23
	v_mov_b32_e32 v2, s17
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v5, s20 :: v_dual_add_nc_u32 v108, v10, v9
	v_mov_b32_e32 v122, 0
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v187, 0
	v_mov_b32_e32 v181, 0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_add_i32 s14, s49, 0x100
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
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s4, s17, 8
	s_mov_b32 s5, s30
	s_mov_b32 s30, s49
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s49, s14, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v110, s0, v103
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v11, s49, v91
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s49, s26, v[89:90]
	s_mov_b32 s1, s16
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s16, s5, 31
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add3_u32 v111, s1, v107, v103
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s16, s16, 26
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s49, s27
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s5, s5, s16
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s16, s5, 6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s18, s18, s51
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s19, s16, s27
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s16, s50
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b128 v[65:68], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v110 offset:832
	ds_load_u8 v10, v110 offset:768
	ds_load_u8 v11, v110 offset:960
	ds_load_u8 v12, v110 offset:896
	ds_load_u8 v13, v110 offset:576
	ds_load_u8 v14, v110 offset:512
	ds_load_u8 v15, v110 offset:704
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s15, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s15, 2
	s_cselect_b32 s15, s15, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v110 offset:640
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v110 offset:320
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	v_lshl_or_b32 v28, v11, 16, v9
	ds_load_u8 v11, v110 offset:384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v10, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v10, 16, v13
	ds_load_u8 v9, v110 offset:256
	ds_load_u8 v10, v110 offset:448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v110 offset:64
	v_perm_b32 v9, v9, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v110
	ds_load_u8 v10, v110 offset:192
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v11, 0xc0c0004
	ds_load_u8 v11, v110 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v10, 16, v9
	ds_load_u8 v9, v111 offset:3328
	ds_load_u8 v10, v111 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:3840
	ds_load_u8 v11, v111 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v111 offset:2304
	ds_load_u8 v12, v111 offset:2048
	v_lshl_or_b32 v80, v10, 16, v9
	ds_load_u8 v9, v111 offset:1280
	ds_load_u8 v10, v111 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v111 offset:2816
	ds_load_u8 v13, v111 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v12, 16, v11
	ds_load_u8 v10, v111 offset:1792
	ds_load_u8 v11, v111 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v78, v10, 16, v9
	ds_load_u8 v9, v111 offset:256
	ds_load_u8 v10, v111
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:768
	ds_load_u8 v11, v111 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v10, 16, v9
	ds_load_u8 v9, v110 offset:1856
	ds_load_u8 v10, v110 offset:1792
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v110 offset:1984
	ds_load_u8 v11, v110 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v110 offset:1600
	ds_load_u8 v12, v110 offset:1536
	v_lshl_or_b32 v32, v10, 16, v9
	ds_load_u8 v9, v110 offset:1344
	ds_load_u8 v10, v110 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v110 offset:1728
	ds_load_u8 v13, v110 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v12, 16, v11
	ds_load_u8 v10, v110 offset:1472
	ds_load_u8 v11, v110 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v110 offset:1088
	ds_load_u8 v10, v110 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v110 offset:1216
	ds_load_u8 v11, v110 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v10, 16, v9
	ds_load_u8 v9, v111 offset:7424
	ds_load_u8 v10, v111 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:7936
	ds_load_u8 v11, v111 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v111 offset:6400
	ds_load_u8 v12, v111 offset:6144
	v_lshl_or_b32 v84, v10, 16, v9
	ds_load_u8 v9, v111 offset:5376
	ds_load_u8 v10, v111 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v111 offset:6912
	ds_load_u8 v13, v111 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v12, 16, v11
	ds_load_u8 v10, v111 offset:5888
	ds_load_u8 v11, v111 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v82, v10, 16, v9
	ds_load_u8 v9, v111 offset:4352
	ds_load_u8 v10, v111 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:4864
	ds_load_u8 v11, v111 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v10, 16, v9
	ds_load_u8 v9, v111 offset:3456
	ds_load_u8 v10, v111 offset:3200
	v_wmma_i32_16x16x16_iu8 v[17:24], v[81:84], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:3968
	ds_load_u8 v11, v111 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v111 offset:2432
	ds_load_u8 v12, v111 offset:2176
	v_lshl_or_b32 v72, v10, 16, v9
	ds_load_u8 v9, v111 offset:1408
	ds_load_u8 v10, v111 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v111 offset:2944
	ds_load_u8 v13, v111 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v12, 16, v11
	ds_load_u8 v10, v111 offset:1920
	ds_load_u8 v11, v111 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v70, v10, 16, v9
	ds_load_u8 v9, v111 offset:384
	ds_load_u8 v10, v111 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:896
	ds_load_u8 v11, v111 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v10, 16, v9
	ds_load_u8 v9, v111 offset:7552
	ds_load_u8 v10, v111 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:8064
	ds_load_u8 v11, v111 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v111 offset:6528
	ds_load_u8 v12, v111 offset:6272
	v_lshl_or_b32 v76, v10, 16, v9
	ds_load_u8 v9, v111 offset:5504
	ds_load_u8 v10, v111 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v111 offset:7040
	ds_load_u8 v13, v111 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v12, 16, v11
	ds_load_u8 v10, v111 offset:6016
	ds_load_u8 v11, v111 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v74, v10, 16, v9
	ds_load_u8 v9, v111 offset:4480
	ds_load_u8 v10, v111 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:4992
	ds_load_u8 v11, v111 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v110 offset:848
	ds_load_u8 v26, v110 offset:784
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v110 offset:976
	ds_load_u8 v27, v110 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v110 offset:592
	ds_load_u8 v28, v110 offset:528
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v110 offset:336
	ds_load_u8 v26, v110 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v110 offset:720
	ds_load_u8 v29, v110 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v27
	ds_load_u8 v26, v110 offset:464
	ds_load_u8 v27, v110 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v110 offset:16
	ds_load_u8 v26, v110 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v110 offset:208
	ds_load_u8 v27, v110 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	ds_load_u8 v25, v110 offset:1872
	ds_load_u8 v26, v110 offset:1808
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v110 offset:2000
	ds_load_u8 v27, v110 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v110 offset:1616
	ds_load_u8 v28, v110 offset:1552
	v_lshl_or_b32 v48, v26, 16, v25
	ds_load_u8 v25, v110 offset:1360
	ds_load_u8 v26, v110 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v110 offset:1744
	ds_load_u8 v29, v110 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v26, v110 offset:1488
	ds_load_u8 v27, v110 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v46, v26, 16, v25
	ds_load_u8 v25, v110 offset:1104
	ds_load_u8 v26, v110 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v110 offset:1232
	ds_load_u8 v27, v110 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[77:80], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v110 offset:864
	ds_load_u8 v42, v110 offset:800
	v_wmma_i32_16x16x16_iu8 v[33:40], v[73:76], v[45:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[81:84], v[45:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v110 offset:992
	ds_load_u8 v43, v110 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v110 offset:608
	ds_load_u8 v44, v110 offset:544
	v_lshl_or_b32 v60, v42, 16, v41
	ds_load_u8 v41, v110 offset:352
	ds_load_u8 v42, v110 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v110 offset:736
	ds_load_u8 v45, v110 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v44, 16, v43
	ds_load_u8 v42, v110 offset:480
	ds_load_u8 v43, v110 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v58, v42, 16, v41
	ds_load_u8 v41, v110 offset:32
	ds_load_u8 v42, v110 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v110 offset:224
	ds_load_u8 v43, v110 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v42, 16, v41
	ds_load_u8 v41, v110 offset:1888
	ds_load_u8 v42, v110 offset:1824
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[57:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v110 offset:2016
	ds_load_u8 v43, v110 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v110 offset:1632
	ds_load_u8 v44, v110 offset:1568
	v_lshl_or_b32 v64, v42, 16, v41
	ds_load_u8 v41, v110 offset:1376
	ds_load_u8 v42, v110 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v110 offset:1760
	ds_load_u8 v45, v110 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v44, 16, v43
	ds_load_u8 v42, v110 offset:1504
	ds_load_u8 v43, v110 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v62, v42, 16, v41
	ds_load_u8 v41, v110 offset:1120
	ds_load_u8 v42, v110 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v110 offset:1248
	ds_load_u8 v43, v110 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[77:80], v[57:60], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v57, v110 offset:880
	ds_load_u8 v58, v110 offset:816
	v_wmma_i32_16x16x16_iu8 v[49:56], v[73:76], v[61:64], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[81:84], v[61:64], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v58, s0, v99
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v58, v58
	ds_load_u8 v59, v110 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v110 offset:624
	ds_load_u8 v60, v110 offset:560
	v_lshl_or_b32 v88, v58, 16, v57
	ds_load_u8 v57, v110 offset:368
	ds_load_u8 v58, v110 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v110 offset:752
	ds_load_u8 v61, v110 offset:688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v87, v60, 16, v59
	ds_load_u8 v58, v110 offset:496
	ds_load_u8 v59, v110 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v86, v58, 16, v57
	ds_load_u8 v57, v110 offset:48
	ds_load_u8 v58, v110 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v58, 0xc0c0004
	ds_load_u8 v58, v110 offset:240
	ds_load_u8 v59, v110 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v58, 16, v57
	ds_load_u8 v57, v110 offset:1904
	ds_load_u8 v58, v110 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v58, s0, v100
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v58, v58
	ds_load_u8 v59, v110 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v110 offset:1648
	ds_load_u8 v60, v110 offset:1584
	v_lshl_or_b32 v115, v58, 16, v57
	ds_load_u8 v57, v110 offset:1392
	ds_load_u8 v58, v110 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v110 offset:1776
	ds_load_u8 v61, v110 offset:1712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v114, v60, 16, v59
	ds_load_u8 v58, v110 offset:1520
	ds_load_u8 v59, v110 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v113, v58, 16, v57
	ds_load_u8 v57, v110 offset:1136
	ds_load_u8 v58, v110 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v110 offset:1264
	ds_load_u8 v59, v110 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v112, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[77:80], v[85:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[81:84], v[112:115], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[69:72], v[85:88], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v69, v110 offset:2880
	ds_load_u8 v70, v110 offset:2816
	v_wmma_i32_16x16x16_iu8 v[77:84], v[73:76], v[112:115], v[77:84] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v110 offset:3008
	ds_load_u8 v71, v110 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v110 offset:2624
	ds_load_u8 v72, v110 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v110 offset:2752
	ds_load_u8 v73, v110 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v110 offset:2368
	ds_load_u8 v70, v110 offset:2304
	v_lshl_or_b32 v71, v73, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v110 offset:2496
	ds_load_u8 v73, v110 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v73, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v110 offset:2112
	ds_load_u8 v73, v110 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	ds_load_u8 v73, v110 offset:2240
	ds_load_u8 v74, v110 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v73, 16, v69
	ds_load_u8 v73, v111 offset:11520
	ds_load_u8 v74, v111 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v111 offset:12032
	ds_load_u8 v75, v111 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v111 offset:10496
	ds_load_u8 v76, v111 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v111 offset:11008
	ds_load_u8 v85, v111 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v85, v76, 0xc0c0004
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v111 offset:9472
	ds_load_u8 v74, v111 offset:9216
	v_lshl_or_b32 v75, v85, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v111 offset:9984
	ds_load_u8 v85, v111 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v85, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v111 offset:8448
	ds_load_u8 v85, v111 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v85, v73, 0xc0c0004
	ds_load_u8 v85, v111 offset:8960
	ds_load_u8 v86, v111 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v85, 16, v73
	ds_load_u8 v85, v111 offset:11648
	ds_load_u8 v86, v111 offset:11392
	v_wmma_i32_16x16x16_iu8 v[17:24], v[73:76], v[69:72], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v111 offset:12160
	ds_load_u8 v87, v111 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v111 offset:10624
	ds_load_u8 v88, v111 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v111 offset:11136
	ds_load_u8 v112, v111 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v112, v88, 0xc0c0004
	v_lshl_or_b32 v88, v86, 16, v85
	ds_load_u8 v85, v111 offset:9600
	ds_load_u8 v86, v111 offset:9344
	v_lshl_or_b32 v87, v112, 16, v87
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v111 offset:10112
	ds_load_u8 v112, v111 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v112, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v111 offset:8576
	ds_load_u8 v112, v111 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v112, v85, 0xc0c0004
	ds_load_u8 v112, v111 offset:9088
	ds_load_u8 v113, v111 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v112, 16, v85
	v_wmma_i32_16x16x16_iu8 v[9:16], v[85:88], v[69:72], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v69, v110 offset:2896
	ds_load_u8 v70, v110 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v110 offset:3024
	ds_load_u8 v71, v110 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v110 offset:2640
	ds_load_u8 v72, v110 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v110 offset:2768
	ds_load_u8 v112, v110 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v112, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v110 offset:2384
	ds_load_u8 v70, v110 offset:2320
	v_lshl_or_b32 v71, v112, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v110 offset:2512
	ds_load_u8 v112, v110 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v112, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v110 offset:2128
	ds_load_u8 v112, v110 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v112, v69, 0xc0c0004
	ds_load_u8 v112, v110 offset:2256
	ds_load_u8 v113, v110 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v112, 16, v69
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[69:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[69:72], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v69, v110 offset:2912
	ds_load_u8 v70, v110 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v110 offset:3040
	ds_load_u8 v71, v110 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v110 offset:2656
	ds_load_u8 v72, v110 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v110 offset:2784
	ds_load_u8 v112, v110 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v112, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v110 offset:2400
	ds_load_u8 v70, v110 offset:2336
	v_lshl_or_b32 v71, v112, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v110 offset:2528
	ds_load_u8 v112, v110 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v112, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v110 offset:2144
	ds_load_u8 v112, v110 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v112, v69, 0xc0c0004
	ds_load_u8 v112, v110 offset:2272
	ds_load_u8 v113, v110 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v112, 16, v69
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[69:72], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[85:88], v[69:72], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v69, v110 offset:2928
	ds_load_u8 v70, v110 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v70, s0, v101
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v70, v70
	ds_load_u8 v71, v110 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v110 offset:2672
	ds_load_u8 v72, v110 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v110 offset:2800
	ds_load_u8 v112, v110 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v112, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v110 offset:2416
	ds_load_u8 v70, v110 offset:2352
	v_lshl_or_b32 v71, v112, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v110 offset:2544
	ds_load_u8 v112, v110 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v112, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v110 offset:2160
	ds_load_u8 v112, v110 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v112, v69, 0xc0c0004
	ds_load_u8 v112, v110 offset:2288
	ds_load_u8 v113, v110 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v112, 16, v69
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[69:72], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[69:72], v[77:84] neg_lo:[1,1,0]
	ds_load_u8 v69, v110 offset:3904
	ds_load_u8 v70, v110 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v110 offset:4032
	ds_load_u8 v71, v110 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v110 offset:3648
	ds_load_u8 v72, v110 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v110 offset:3776
	ds_load_u8 v73, v110 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v110 offset:3392
	ds_load_u8 v70, v110 offset:3328
	v_lshl_or_b32 v71, v73, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v110 offset:3520
	ds_load_u8 v73, v110 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v73, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v110 offset:3136
	ds_load_u8 v73, v110 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	ds_load_u8 v73, v110 offset:3264
	ds_load_u8 v74, v110 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v73, 16, v69
	ds_load_u8 v73, v111 offset:15616
	ds_load_u8 v74, v111 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v111 offset:16128
	ds_load_u8 v75, v111 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v111 offset:14592
	ds_load_u8 v76, v111 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v111 offset:15104
	ds_load_u8 v85, v111 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v85, v76, 0xc0c0004
	v_lshl_or_b32 v76, v74, 16, v73
	ds_load_u8 v73, v111 offset:13568
	ds_load_u8 v74, v111 offset:13312
	v_lshl_or_b32 v75, v85, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v111 offset:14080
	ds_load_u8 v85, v111 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v85, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v111 offset:12544
	ds_load_u8 v85, v111 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v85, v73, 0xc0c0004
	ds_load_u8 v85, v111 offset:13056
	ds_load_u8 v86, v111 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v85, 16, v73
	ds_load_u8 v85, v111 offset:15744
	ds_load_u8 v86, v111 offset:15488
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
	ds_load_u8 v86, v111 offset:16256
	ds_load_u8 v87, v111 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v111 offset:14720
	ds_load_u8 v88, v111 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v111 offset:15232
	ds_load_u8 v112, v111 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v112, v88, 0xc0c0004
	v_lshl_or_b32 v88, v86, 16, v85
	ds_load_u8 v85, v111 offset:13696
	ds_load_u8 v86, v111 offset:13440
	v_lshl_or_b32 v87, v112, 16, v87
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v111 offset:14208
	ds_load_u8 v112, v111 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v112, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v111 offset:12672
	ds_load_u8 v112, v111 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v112, v85, 0xc0c0004
	ds_load_u8 v112, v111 offset:13184
	ds_load_u8 v111, v111 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v111, 16, v85
	v_wmma_i32_16x16x16_iu8 v[9:16], v[85:88], v[69:72], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v69, v110 offset:3920
	ds_load_u8 v70, v110 offset:3856
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v110 offset:4048
	ds_load_u8 v71, v110 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v110 offset:3664
	ds_load_u8 v72, v110 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v110 offset:3792
	ds_load_u8 v111, v110 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v110 offset:3408
	ds_load_u8 v70, v110 offset:3344
	v_lshl_or_b32 v71, v111, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v110 offset:3536
	ds_load_u8 v111, v110 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v111, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v110 offset:3152
	ds_load_u8 v111, v110 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v111, v69, 0xc0c0004
	ds_load_u8 v111, v110 offset:3280
	ds_load_u8 v112, v110 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v111, 16, v69
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[69:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[69:72], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v69, v110 offset:3936
	ds_load_u8 v70, v110 offset:3872
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
	ds_load_u8 v70, v110 offset:4064
	ds_load_u8 v71, v110 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v110 offset:3680
	ds_load_u8 v72, v110 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v110 offset:3808
	ds_load_u8 v111, v110 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v110 offset:3424
	ds_load_u8 v70, v110 offset:3360
	v_lshl_or_b32 v71, v111, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v110 offset:3552
	ds_load_u8 v111, v110 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v111, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v110 offset:3168
	ds_load_u8 v111, v110 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v111, v69, 0xc0c0004
	ds_load_u8 v111, v110 offset:3296
	ds_load_u8 v112, v110 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v111, 16, v69
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[69:72], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[85:88], v[69:72], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v69, v110 offset:3952
	ds_load_u8 v70, v110 offset:3888
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
	ds_load_u8 v71, v110 offset:4016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v110 offset:3696
	ds_load_u8 v72, v110 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v110 offset:3824
	ds_load_u8 v111, v110 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v72, 0xc0c0004
	v_lshl_or_b32 v72, v70, 16, v69
	ds_load_u8 v69, v110 offset:3440
	ds_load_u8 v70, v110 offset:3376
	v_lshl_or_b32 v71, v111, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v110 offset:3568
	ds_load_u8 v111, v110 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v111, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v110 offset:3184
	ds_load_u8 v111, v110 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v111, v69, 0xc0c0004
	ds_load_u8 v111, v110 offset:3312
	ds_load_u8 v110, v110 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v110, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v110, 16, v69
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[69:72], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[69:72], v[57:64] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v69, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v70, v77
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v77, s49, v90
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v71, v78
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v78, s18, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v74, v81
	v_cvt_f32_i32_e32 v72, v79
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v77
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v77, s49, v92
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v79, v153, s16, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v73, v80
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v80, v154, s16, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v75, v82
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s0, s31, v77
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v77, s49, v93
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v82, v155, s16, 1
	v_cndmask_b32_e64 v79, 0x80000000, v79, s5
	v_cndmask_b32_e64 v80, 0x80000000, v80, s5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v81, 0x80000000, v78, s0
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s1, s31, v77
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v77, s49, v94
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v78, s18, v98
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e64 v82, 0x80000000, v82, s5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v76, v83
	v_cvt_f32_i32_e32 v9, v84
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s31, v77
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v77, v118, s19, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v85, 0x80000000, v78, s1
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v78, s18, v96
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	s_lshl_b32 s0, s15, 12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v77, 0x80000000, v77, s5
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s1, s0, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v110, 0x80000000, v78, s4
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v78, v156, s16, 1
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
	buffer_load_u16 v120, v78, s[40:43], 0 offen
	buffer_load_u16 v201, v79, s[40:43], 0 offen
	buffer_load_u16 v202, v80, s[40:43], 0 offen
	buffer_load_u16 v203, v82, s[40:43], 0 offen
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
	ds_store_b32 v108, v77 offset:40960
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v77, s18, v95
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[77:80], v77, s[36:39], 0 offen
	buffer_load_b128 v[81:84], v81, s[36:39], 0 offen
	buffer_load_b128 v[85:88], v85, s[36:39], 0 offen
	buffer_load_b128 v[110:113], v110, s[36:39], 0 offen
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[114:117], v109 offset:40960
	ds_load_b128 v[189:192], v109 offset:40976
	ds_load_b128 v[193:196], v109 offset:41472
	ds_load_b128 v[197:200], v109 offset:41488
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v204, s1, v243
	ds_store_b128 v204, v[65:68] offset:32768
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v68, 16, v202
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v65, s6, v243
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v66, 16, v120
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v204, v117, v68 :: v_dual_lshlrev_b32 v67, 16, v201
	v_mul_f32_e32 v202, v115, v68
	v_mul_f32_e32 v201, v114, v68
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v205, v189, v66
	v_dual_mul_f32 v207, v191, v66 :: v_dual_mul_f32 v210, v190, v67
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v217, v193, v66 :: v_dual_mul_f32 v212, v192, v67
	v_dual_mul_f32 v219, v195, v66 :: v_dual_mul_f32 v214, v190, v68
	v_dual_mul_f32 v221, v193, v67 :: v_dual_mul_f32 v216, v192, v68
	v_mul_f32_e32 v223, v195, v67
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v222, v194, v67 :: v_dual_mul_f32 v229, v197, v66
	v_dual_mul_f32 v224, v196, v67 :: v_dual_mul_f32 v231, v199, v66
	v_mul_f32_e32 v226, v194, v68
	v_dual_mul_f32 v228, v196, v68 :: v_dual_mul_f32 v233, v198, v67
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v146, v222, v34 :: v_dual_fmac_f32 v157, v201, v41
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v65, v[77:80]
	s_waitcnt vmcnt(2)
	ds_store_b128 v65, v[81:84] offset:4096
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v206, v190, v66 :: v_dual_lshlrev_b32 v77, 16, v203
	v_mul_f32_e32 v78, v114, v66
	v_mul_f32_e32 v79, v115, v66
	v_mul_f32_e32 v80, v116, v66
	v_dual_mul_f32 v81, v117, v66 :: v_dual_mul_f32 v82, v114, v67
	v_mul_f32_e32 v213, v189, v68
	v_mul_f32_e32 v83, v115, v67
	v_dual_mul_f32 v84, v116, v67 :: v_dual_mul_f32 v215, v191, v68
	v_dual_mul_f32 v120, v117, v67 :: v_dual_mul_f32 v203, v116, v68
	v_dual_mul_f32 v114, v114, v77 :: v_dual_mul_f32 v209, v189, v67
	v_mul_f32_e32 v115, v115, v77
	v_dual_mul_f32 v116, v116, v77 :: v_dual_mul_f32 v211, v191, v67
	v_dual_mul_f32 v117, v117, v77 :: v_dual_mul_f32 v208, v192, v66
	v_mul_f32_e32 v189, v189, v77
	v_dual_mul_f32 v190, v190, v77 :: v_dual_mul_f32 v225, v193, v68
	v_mul_f32_e32 v191, v191, v77
	v_dual_mul_f32 v192, v192, v77 :: v_dual_mul_f32 v227, v195, v68
	v_dual_mul_f32 v218, v194, v66 :: v_dual_mul_f32 v193, v193, v77
	v_dual_mul_f32 v220, v196, v66 :: v_dual_mul_f32 v195, v195, v77
	v_dual_mul_f32 v194, v194, v77 :: v_dual_mul_f32 v235, v197, v68
	v_dual_mul_f32 v196, v196, v77 :: v_dual_mul_f32 v237, v199, v68
	v_mul_f32_e32 v230, v198, v66
	v_mul_f32_e32 v66, v200, v66
	v_mul_f32_e32 v232, v197, v67
	v_dual_mul_f32 v234, v199, v67 :: v_dual_fmac_f32 v121, v78, v17
	v_dual_mul_f32 v67, v200, v67 :: v_dual_mul_f32 v236, v198, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v123, v80, v19
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v68, v200, v68 :: v_dual_fmac_f32 v125, v205, v21
	v_mul_f32_e32 v197, v197, v77
	v_dual_mul_f32 v198, v198, v77 :: v_dual_fmac_f32 v127, v207, v23
	v_mul_f32_e32 v199, v199, v77
	v_dual_mul_f32 v77, v200, v77 :: v_dual_fmac_f32 v122, v79, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v129, v217, v69
	v_dual_fmac_f32 v124, v81, v20 :: v_dual_fmac_f32 v131, v219, v11
	v_dual_fmac_f32 v126, v206, v22 :: v_dual_fmac_f32 v133, v229, v13
	v_dual_fmac_f32 v128, v208, v24 :: v_dual_fmac_f32 v135, v231, v15
	v_dual_fmac_f32 v130, v218, v10 :: v_dual_fmac_f32 v139, v84, v27
	v_dual_fmac_f32 v132, v220, v12 :: v_dual_fmac_f32 v137, v82, v25
	v_dual_fmac_f32 v134, v230, v14 :: v_dual_fmac_f32 v141, v209, v29
	v_dual_fmac_f32 v136, v66, v16 :: v_dual_fmac_f32 v143, v211, v31
	v_dual_fmac_f32 v138, v83, v26 :: v_dual_fmac_f32 v145, v221, v33
	v_dual_fmac_f32 v140, v120, v28 :: v_dual_fmac_f32 v147, v223, v35
	v_dual_fmac_f32 v142, v210, v30 :: v_dual_fmac_f32 v149, v232, v37
	v_dual_fmac_f32 v144, v212, v32 :: v_dual_fmac_f32 v151, v234, v39
	v_dual_fmac_f32 v148, v224, v36 :: v_dual_fmac_f32 v159, v203, v43
	v_dual_fmac_f32 v150, v233, v38 :: v_dual_fmac_f32 v163, v215, v47
	v_dual_fmac_f32 v152, v67, v40 :: v_dual_fmac_f32 v161, v213, v45
	v_dual_fmac_f32 v158, v202, v42 :: v_dual_fmac_f32 v165, v225, v49
	v_dual_fmac_f32 v160, v204, v44 :: v_dual_fmac_f32 v167, v227, v51
	v_dual_fmac_f32 v162, v214, v46 :: v_dual_fmac_f32 v169, v235, v53
	v_dual_fmac_f32 v164, v216, v48 :: v_dual_fmac_f32 v171, v237, v55
	v_dual_fmac_f32 v166, v226, v50 :: v_dual_fmac_f32 v175, v116, v59
	v_dual_fmac_f32 v168, v228, v52 :: v_dual_fmac_f32 v173, v114, v57
	v_dual_fmac_f32 v170, v236, v54 :: v_dual_fmac_f32 v177, v189, v61
	v_dual_fmac_f32 v172, v68, v56 :: v_dual_fmac_f32 v179, v191, v63
	v_dual_fmac_f32 v174, v115, v58 :: v_dual_fmac_f32 v183, v194, v71
	v_dual_fmac_f32 v176, v117, v60 :: v_dual_fmac_f32 v185, v196, v73
	v_dual_fmac_f32 v178, v190, v62 :: v_dual_fmac_f32 v181, v77, v9
	v_dual_fmac_f32 v180, v192, v64 :: v_dual_fmac_f32 v187, v198, v75
	v_fmac_f32_e32 v182, v193, v70
	v_fmac_f32_e32 v184, v195, v72
	v_fmac_f32_e32 v186, v197, v74
	v_fmac_f32_e32 v188, v199, v76
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v65, v[85:88] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v65, v[110:113] offset:12288
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v108, v99 :: v_dual_mov_b32 v109, v100
	v_dual_mov_b32 v110, v101 :: v_dual_mov_b32 v111, v102
	v_mov_b32_e32 v196, v238
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v182, 0
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
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s7, 0, 0x9000
	s_add_i32 s6, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v204, 0 :: v_dual_and_b32 v1, 0xe0, v0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v120, 0
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v1, 1, v1
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v194, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v112, v1, v103
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v246, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v42, s16, v112
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
	v_add_nc_u32_e32 v113, s0, v103
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
	ds_load_u8 v17, v42 offset:3328
	ds_load_u8 v18, v42 offset:3072
	ds_load_u8 v19, v42 offset:3840
	ds_load_u8 v20, v42 offset:3584
	ds_load_u8 v21, v42 offset:2304
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_perm_b32 v2, v4, v3, 0xc0c0004
	v_perm_b32 v3, v6, v5, 0xc0c0004
	ds_load_u8 v4, v42 offset:2048
	ds_load_u8 v5, v42 offset:2816
	ds_load_u8 v6, v42 offset:2560
	ds_load_u8 v22, v42 offset:1280
	ds_load_u8 v23, v42 offset:1024
	ds_load_u8 v24, v42 offset:1792
	ds_load_u8 v25, v42 offset:1536
	v_lshl_or_b32 v37, v2, 16, v1
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v1, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v2, v12, v11, 0xc0c0004
	ds_load_u8 v8, v42 offset:256
	ds_load_u8 v9, v42
	ds_load_u8 v10, v42 offset:768
	ds_load_u8 v11, v42 offset:512
	v_lshl_or_b32 v36, v7, 16, v3
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v3, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v7, v16, v15, 0xc0c0004
	v_lshl_or_b32 v35, v2, 16, v1
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v12, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v13, v20, v19, 0xc0c0004
	v_lshl_or_b32 v34, v7, 16, v3
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v4, v4, v21, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	v_lshl_or_b32 v96, v13, 16, v12
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v6, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v14, v25, v24, 0xc0c0004
	v_lshl_or_b32 v95, v5, 16, v4
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v11, v10, 0xc0c0004
	v_lshl_or_b32 v94, v14, 16, v6
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v93, v2, 16, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	ds_load_u8 v15, v113 offset:1856
	ds_load_u8 v16, v113 offset:1792
	ds_load_u8 v17, v113 offset:1984
	ds_load_u8 v18, v113 offset:1920
	ds_load_u8 v19, v113 offset:1600
	ds_load_u8 v20, v113 offset:1536
	ds_load_u8 v50, v113 offset:2880
	ds_load_u8 v51, v113 offset:2816
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v21, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v20, v19, 0xc0c0004
	ds_load_u8 v9, v113 offset:1728
	ds_load_u8 v10, v113 offset:1664
	ds_load_u8 v11, v113 offset:1344
	ds_load_u8 v12, v113 offset:1280
	ds_load_u8 v13, v113 offset:1472
	ds_load_u8 v14, v113 offset:1408
	ds_load_u8 v19, v113 offset:1088
	ds_load_u8 v20, v113 offset:1024
	ds_load_u8 v22, v113 offset:1216
	ds_load_u8 v23, v113 offset:1152
	ds_load_u8 v24, v42 offset:7424
	ds_load_u8 v25, v42 offset:7168
	ds_load_u8 v26, v42 offset:7936
	ds_load_u8 v27, v42 offset:7680
	ds_load_u8 v28, v42 offset:6400
	ds_load_u8 v29, v42 offset:6144
	ds_load_u8 v30, v42 offset:6912
	ds_load_u8 v31, v42 offset:6656
	ds_load_u8 v32, v42 offset:5376
	ds_load_u8 v33, v42 offset:5120
	ds_load_u8 v38, v42 offset:5888
	ds_load_u8 v43, v42 offset:5632
	ds_load_u8 v44, v42 offset:4352
	ds_load_u8 v45, v42 offset:4096
	ds_load_u8 v46, v42 offset:4864
	ds_load_u8 v47, v42 offset:4608
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v39, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v48, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v49, v14, v13, 0xc0c0004
	v_lshl_or_b32 v41, v17, 16, v21
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v17, v20, v19, 0xc0c0004
	v_lshl_or_b32 v40, v39, 16, v18
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v18, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v19, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v20, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v21, v29, v28, 0xc0c0004
	v_lshl_or_b32 v39, v49, 16, v48
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v22, v31, v30, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[93:96], v[34:37], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v23, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v24, v43, v38, 0xc0c0004
	v_lshl_or_b32 v38, v18, 16, v17
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v45, v44, 0xc0c0004
	v_lshl_or_b32 v68, v20, 16, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v47, v46, 0xc0c0004
	v_lshl_or_b32 v67, v22, 16, v21
	v_lshl_or_b32 v66, v24, 16, v23
	v_perm_b32 v17, v51, v50, 0xc0c0004
	ds_load_u8 v33, v113 offset:16
	v_lshl_or_b32 v65, v26, 16, v25
	ds_load_u8 v18, v113 offset:3008
	ds_load_u8 v19, v113 offset:2944
	ds_load_u8 v20, v113 offset:2624
	ds_load_u8 v21, v113 offset:2560
	ds_load_u8 v22, v113 offset:2752
	ds_load_u8 v23, v113 offset:2688
	ds_load_u8 v24, v113 offset:2368
	ds_load_u8 v25, v113 offset:2304
	ds_load_u8 v26, v113 offset:2496
	ds_load_u8 v27, v113 offset:2432
	ds_load_u8 v29, v113 offset:2112
	ds_load_u8 v30, v113 offset:2048
	ds_load_u8 v31, v113 offset:2240
	ds_load_u8 v32, v113 offset:2176
	ds_load_u8 v43, v42 offset:11520
	ds_load_u8 v44, v42 offset:11264
	ds_load_u8 v45, v42 offset:12032
	ds_load_u8 v46, v42 offset:11776
	ds_load_u8 v47, v42 offset:10496
	ds_load_u8 v48, v42 offset:10240
	ds_load_u8 v49, v42 offset:11008
	ds_load_u8 v50, v42 offset:10752
	ds_load_u8 v51, v42 offset:9472
	ds_load_u8 v52, v42 offset:9216
	ds_load_u8 v53, v42 offset:9984
	ds_load_u8 v54, v42 offset:9728
	ds_load_u8 v55, v42 offset:8448
	ds_load_u8 v56, v42 offset:8192
	ds_load_u8 v57, v42 offset:8960
	ds_load_u8 v58, v42 offset:8704
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v19, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v20, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v21, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v22, v27, v26, 0xc0c0004
	v_lshl_or_b32 v28, v18, 16, v17
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v17, v30, v29, 0xc0c0004
	v_lshl_or_b32 v27, v20, 16, v19
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v18, v32, v31, 0xc0c0004
	v_lshl_or_b32 v26, v22, 16, v21
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v19, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v20, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v21, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v22, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v23, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v24, v54, v53, 0xc0c0004
	v_lshl_or_b32 v25, v18, 16, v17
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v29, v56, v55, 0xc0c0004
	v_lshl_or_b32 v72, v20, 16, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v58, v57, 0xc0c0004
	v_lshl_or_b32 v71, v22, 16, v21
	v_lshl_or_b32 v70, v24, 16, v23
	v_wmma_i32_16x16x16_iu8 v[9:16], v[65:68], v[38:41], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v69, v30, 16, v29
	ds_load_u8 v17, v113 offset:3904
	ds_load_u8 v18, v113 offset:3840
	ds_load_u8 v19, v113 offset:4032
	ds_load_u8 v20, v113 offset:3968
	ds_load_u8 v21, v113 offset:3648
	ds_load_u8 v22, v113 offset:3584
	ds_load_u8 v23, v113 offset:3776
	ds_load_u8 v24, v113 offset:3712
	ds_load_u8 v29, v113 offset:3392
	ds_load_u8 v30, v113 offset:3328
	ds_load_u8 v31, v113 offset:3520
	ds_load_u8 v43, v113 offset:3456
	ds_load_u8 v44, v113 offset:3136
	ds_load_u8 v45, v113 offset:3072
	ds_load_u8 v46, v113 offset:3264
	ds_load_u8 v47, v113 offset:3200
	ds_load_u8 v48, v42 offset:15616
	ds_load_u8 v49, v42 offset:15360
	ds_load_u8 v50, v42 offset:16128
	ds_load_u8 v51, v42 offset:15872
	ds_load_u8 v52, v42 offset:14592
	ds_load_u8 v53, v42 offset:14336
	ds_load_u8 v54, v42 offset:15104
	ds_load_u8 v55, v42 offset:14848
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v18, v20, v19, 0xc0c0004
	ds_load_u8 v19, v42 offset:13568
	ds_load_u8 v20, v42 offset:13312
	ds_load_u8 v56, v42 offset:14080
	ds_load_u8 v57, v42 offset:13824
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[25:28], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v32, v18, 16, v17
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v17, v22, v21, 0xc0c0004
	ds_load_u8 v18, v42 offset:3456
	ds_load_u8 v21, v42 offset:3200
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v22, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v23, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v24, v43, v31, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v29, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v43, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v44, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v45, v51, v50, 0xc0c0004
	v_lshl_or_b32 v31, v22, 16, v17
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v46, v53, v52, 0xc0c0004
	v_lshl_or_b32 v30, v24, 16, v23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v47, v55, v54, 0xc0c0004
	v_lshl_or_b32 v29, v43, 16, v29
	v_lshl_or_b32 v76, v45, 16, v44
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v43, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v44, v57, v56, 0xc0c0004
	v_lshl_or_b32 v75, v47, 16, v46
	ds_load_u8 v45, v42 offset:12544
	ds_load_u8 v46, v42 offset:12288
	ds_load_u8 v47, v42 offset:13056
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v17, v21, v18, 0xc0c0004
	ds_load_u8 v18, v42 offset:3968
	ds_load_u8 v19, v42 offset:3712
	ds_load_u8 v20, v42 offset:2432
	ds_load_u8 v21, v42 offset:2176
	ds_load_u8 v22, v42 offset:2944
	ds_load_u8 v23, v42 offset:2688
	ds_load_u8 v24, v42 offset:1408
	ds_load_u8 v48, v42 offset:1152
	ds_load_u8 v49, v42 offset:1920
	ds_load_u8 v50, v42 offset:1664
	ds_load_u8 v51, v42 offset:384
	ds_load_u8 v52, v42 offset:128
	ds_load_u8 v53, v42 offset:896
	ds_load_u8 v54, v42 offset:640
	ds_load_u8 v55, v42 offset:7552
	ds_load_u8 v56, v42 offset:7296
	ds_load_u8 v57, v42 offset:8064
	ds_load_u8 v58, v42 offset:7808
	ds_load_u8 v59, v42 offset:6528
	ds_load_u8 v60, v42 offset:6272
	ds_load_u8 v61, v42 offset:7040
	ds_load_u8 v62, v42 offset:6784
	ds_load_u8 v63, v42 offset:5504
	ds_load_u8 v64, v42 offset:5248
	ds_load_u8 v73, v42 offset:6016
	ds_load_u8 v74, v42 offset:5760
	ds_load_u8 v77, v42 offset:4480
	ds_load_u8 v78, v42 offset:4224
	ds_load_u8 v79, v42 offset:4992
	ds_load_u8 v80, v42 offset:4736
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v19, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v21, v48, v24, 0xc0c0004
	ds_load_u8 v48, v42 offset:12800
	v_perm_b32 v20, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v22, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v23, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v24, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v49, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v50, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v51, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v52, v62, v61, 0xc0c0004
	v_lshl_or_b32 v88, v18, 16, v17
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v53, v64, v63, 0xc0c0004
	v_lshl_or_b32 v87, v20, 16, v19
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v54, v74, v73, 0xc0c0004
	v_lshl_or_b32 v86, v22, 16, v21
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v55, v78, v77, 0xc0c0004
	v_lshl_or_b32 v85, v24, 16, v23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v56, v80, v79, 0xc0c0004
	ds_load_u8 v57, v42 offset:11648
	ds_load_u8 v58, v42 offset:11392
	ds_load_u8 v59, v42 offset:12160
	ds_load_u8 v60, v42 offset:11904
	ds_load_u8 v61, v42 offset:10624
	ds_load_u8 v62, v42 offset:10368
	ds_load_u8 v63, v42 offset:11136
	ds_load_u8 v64, v42 offset:10880
	ds_load_u8 v73, v42 offset:9600
	ds_load_u8 v77, v42 offset:9344
	ds_load_u8 v78, v42 offset:10112
	ds_load_u8 v79, v42 offset:9856
	ds_load_u8 v89, v42 offset:8576
	ds_load_u8 v90, v42 offset:8320
	ds_load_u8 v91, v42 offset:9088
	ds_load_u8 v92, v42 offset:8832
	v_lshl_or_b32 v84, v50, 16, v49
	v_lshl_or_b32 v83, v52, 16, v51
	v_wmma_i32_16x16x16_iu8 v[17:24], v[85:88], v[34:37], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v36, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v34, v58, v57, 0xc0c0004
	v_perm_b32 v37, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v35, v60, v59, 0xc0c0004
	ds_load_u8 v45, v42 offset:16256
	ds_load_u8 v46, v42 offset:16000
	ds_load_u8 v47, v42 offset:14720
	ds_load_u8 v48, v42 offset:14464
	v_lshl_or_b32 v82, v54, 16, v53
	v_lshl_or_b32 v81, v56, 16, v55
	v_lshl_or_b32 v74, v44, 16, v43
	v_lshl_or_b32 v80, v35, 16, v34
	ds_load_u8 v34, v42 offset:15744
	ds_load_u8 v35, v42 offset:15488
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v59, s0, v108
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[81:84], v[38:41], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v38, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v39, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v40, v77, v73, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v41, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v43, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v44, v92, v91, 0xc0c0004
	v_lshl_or_b32 v79, v39, 16, v38
	v_lshl_or_b32 v73, v37, 16, v36
	v_lshl_or_b32 v78, v41, 16, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v77, v44, 16, v43
	ds_load_u8 v38, v42 offset:15232
	ds_load_u8 v39, v42 offset:14976
	ds_load_u8 v40, v42 offset:13696
	ds_load_u8 v41, v42 offset:13440
	ds_load_u8 v43, v42 offset:14208
	ds_load_u8 v44, v42 offset:13952
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v46, v48, v47, 0xc0c0004
	ds_load_u8 v47, v113 offset:592
	ds_load_u8 v48, v113 offset:528
	ds_load_u8 v55, v113 offset:720
	ds_load_u8 v56, v113 offset:656
	ds_load_u8 v57, v113 offset:336
	ds_load_u8 v58, v113 offset:272
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[25:28], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v42 offset:12672
	ds_load_u8 v49, v42 offset:12416
	ds_load_u8 v50, v42 offset:13184
	ds_load_u8 v42, v42 offset:12928
	ds_load_u8 v51, v113 offset:848
	ds_load_u8 v52, v113 offset:784
	ds_load_u8 v53, v113 offset:976
	ds_load_u8 v54, v113 offset:912
	v_cvt_f32_i32_e32 v189, v10
	v_lshl_or_b32 v92, v45, 16, v34
	v_cvt_f32_i32_e32 v190, v11
	v_cvt_f32_i32_e32 v191, v12
	v_cvt_f32_i32_e32 v120, v13
	v_cvt_f32_i32_e32 v192, v14
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	v_cvt_f32_i32_e32 v193, v15
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v39, v41, v40, 0xc0c0004
	v_cvt_f32_i32_e32 v194, v16
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v40, v44, v43, 0xc0c0004
	v_lshl_or_b32 v91, v38, 16, v46
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v25, v49, v35, 0xc0c0004
	ds_load_u8 v34, v113 offset:464
	ds_load_u8 v35, v113 offset:400
	ds_load_u8 v36, v113 offset:80
	ds_load_u8 v37, v113 offset:208
	ds_load_u8 v38, v113 offset:144
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v26, v42, v50, 0xc0c0004
	v_lshl_or_b32 v90, v40, 16, v39
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v27, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v28, v54, v53, 0xc0c0004
	v_perm_b32 v39, v48, v47, 0xc0c0004
	v_perm_b32 v40, v56, v55, 0xc0c0004
	v_perm_b32 v41, v58, v57, 0xc0c0004
	ds_load_u8 v45, v113 offset:1872
	ds_load_u8 v46, v113 offset:1808
	ds_load_u8 v47, v113 offset:2000
	ds_load_u8 v48, v113 offset:1936
	ds_load_u8 v49, v113 offset:1616
	ds_load_u8 v50, v113 offset:1552
	ds_load_u8 v51, v113 offset:1744
	ds_load_u8 v52, v113 offset:1680
	ds_load_u8 v53, v113 offset:1360
	ds_load_u8 v54, v113 offset:1296
	ds_load_u8 v55, v113 offset:1488
	ds_load_u8 v56, v113 offset:1424
	ds_load_u8 v57, v113 offset:1104
	ds_load_u8 v58, v113 offset:1040
	v_lshl_or_b32 v89, v26, 16, v25
	v_lshl_or_b32 v44, v28, 16, v27
	v_lshl_or_b32 v43, v40, 16, v39
	v_cvt_f32_i32_e32 v204, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[89:92], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v33, v33, v36, 0xc0c0004
	v_cvt_f32_i32_e32 v195, v17
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v35, v38, v37, 0xc0c0004
	v_cvt_f32_i32_e32 v197, v18
	v_lshl_or_b32 v42, v34, 16, v41
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v34, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v36, v52, v51, 0xc0c0004
	v_lshl_or_b32 v41, v35, 16, v33
	v_perm_b32 v33, v46, v45, 0xc0c0004
	v_perm_b32 v35, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v37, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v58, v57, 0xc0c0004
	ds_load_u8 v40, v113 offset:1232
	ds_load_u8 v45, v113 offset:1168
	ds_load_u8 v46, v113 offset:2896
	ds_load_u8 v47, v113 offset:2832
	ds_load_u8 v49, v113 offset:3024
	ds_load_u8 v50, v113 offset:2960
	ds_load_u8 v51, v113 offset:2640
	ds_load_u8 v52, v113 offset:2576
	ds_load_u8 v53, v113 offset:2768
	ds_load_u8 v54, v113 offset:2704
	ds_load_u8 v55, v113 offset:2384
	ds_load_u8 v56, v113 offset:2320
	ds_load_u8 v57, v113 offset:2512
	ds_load_u8 v58, v113 offset:2448
	ds_load_u8 v60, v113 offset:2128
	ds_load_u8 v61, v113 offset:2064
	ds_load_u8 v62, v113 offset:2256
	ds_load_u8 v63, v113 offset:2192
	ds_load_u8 v64, v113 offset:3920
	ds_load_u8 v97, v113 offset:3856
	ds_load_u8 v98, v113 offset:4048
	ds_load_u8 v99, v113 offset:3984
	ds_load_u8 v100, v113 offset:3664
	ds_load_u8 v101, v113 offset:3600
	v_lshl_or_b32 v48, v34, 16, v33
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v34, v47, v46, 0xc0c0004
	v_lshl_or_b32 v46, v38, 16, v37
	ds_load_u8 v37, v113 offset:3792
	ds_load_u8 v38, v113 offset:3728
	v_perm_b32 v33, v45, v40, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v40, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v49, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v50, v54, v53, 0xc0c0004
	v_lshl_or_b32 v47, v36, 16, v35
	v_lshl_or_b32 v45, v33, 16, v39
	v_lshl_or_b32 v52, v40, 16, v34
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v33, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v34, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v35, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v36, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v39, v97, v64, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[93:96], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v40, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v53, v101, v100, 0xc0c0004
	ds_load_u8 v54, v113 offset:3408
	ds_load_u8 v55, v113 offset:3344
	ds_load_u8 v56, v113 offset:3536
	ds_load_u8 v57, v113 offset:864
	ds_load_u8 v58, v113 offset:800
	ds_load_u8 v60, v113 offset:992
	ds_load_u8 v61, v113 offset:928
	ds_load_u8 v62, v113 offset:608
	ds_load_u8 v63, v113 offset:544
	ds_load_u8 v64, v113 offset:736
	ds_load_u8 v99, v113 offset:672
	ds_load_u8 v100, v113 offset:352
	ds_load_u8 v101, v113 offset:288
	ds_load_u8 v102, v113 offset:480
	ds_load_u8 v115, v113 offset:416
	ds_load_u8 v116, v113 offset:3472
	v_lshl_or_b32 v51, v50, 16, v49
	v_lshl_or_b32 v50, v34, 16, v33
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	v_lshl_or_b32 v49, v36, 16, v35
	v_lshl_or_b32 v98, v40, 16, v39
	v_wmma_i32_16x16x16_iu8 v[25:32], v[65:68], v[45:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v114, v55, v54, 0xc0c0004
	v_lshl_or_b32 v97, v37, 16, v53
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v42, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v43, v61, v60, 0xc0c0004
	ds_load_u8 v41, v113 offset:32
	ds_load_u8 v53, v113 offset:48
	v_wmma_i32_16x16x16_iu8 v[33:40], v[81:84], v[45:48], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v45, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v46, v99, v64, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v47, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v48, v115, v102, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[49:52], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v115, v116, v56, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[33:40], v[77:80], v[49:52], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v44, v43, 16, v42
	v_lshl_or_b32 v43, v46, 16, v45
	v_lshl_or_b32 v42, v48, 16, v47
	ds_load_u8 v45, v113 offset:96
	ds_load_u8 v46, v113 offset:224
	ds_load_u8 v47, v113 offset:160
	ds_load_u8 v48, v113 offset:880
	ds_load_u8 v49, v113 offset:816
	ds_load_u8 v50, v59
	ds_load_u8 v51, v113 offset:944
	ds_load_u8 v52, v113 offset:624
	ds_load_u8 v54, v113 offset:560
	ds_load_u8 v55, v113 offset:752
	ds_load_u8 v56, v113 offset:688
	ds_load_u8 v57, v113 offset:368
	ds_load_u8 v58, v113 offset:304
	ds_load_u8 v59, v113 offset:496
	ds_load_u8 v60, v113 offset:432
	ds_load_u8 v61, v113 offset:112
	ds_load_u8 v62, v113 offset:240
	ds_load_u8 v63, v113 offset:176
	v_cvt_f32_i32_e32 v198, v19
	v_cvt_f32_i32_e32 v199, v20
	v_cvt_f32_i32_e32 v200, v21
	v_cvt_f32_i32_e32 v201, v22
	v_cvt_f32_i32_e32 v202, v23
	v_cvt_f32_i32_e32 v203, v24
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v41, v41, v45, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v45, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v46, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v47, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v48, v54, v52, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v49, v56, v55, 0xc0c0004
	v_lshl_or_b32 v41, v45, 16, v41
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v50, v58, v57, 0xc0c0004
	v_lshl_or_b32 v102, v47, 16, v46
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v51, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v52, v53, v61, 0xc0c0004
	v_lshl_or_b32 v101, v49, 16, v48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v63, v62, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[57:64], v[93:96], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v100, v51, 16, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v99, v53, 16, v52
	v_wmma_i32_16x16x16_iu8 v[49:56], v[85:88], v[41:44], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[93:96], v[99:102], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[85:88], v[99:102], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v85, v113 offset:1888
	ds_load_u8 v86, v113 offset:1824
	ds_load_u8 v87, v113 offset:2016
	ds_load_u8 v88, v113 offset:1952
	ds_load_u8 v93, v113 offset:1632
	ds_load_u8 v94, v113 offset:1568
	ds_load_u8 v95, v113 offset:1760
	ds_load_u8 v96, v113 offset:1696
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v86, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v87, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v96, v95, 0xc0c0004
	ds_load_u8 v94, v113 offset:1376
	ds_load_u8 v95, v113 offset:1312
	ds_load_u8 v99, v113 offset:1504
	ds_load_u8 v100, v113 offset:1440
	v_lshl_or_b32 v88, v86, 16, v85
	v_lshl_or_b32 v96, v115, 16, v114
	v_lshl_or_b32 v87, v93, 16, v87
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v85, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v100, v99, 0xc0c0004
	ds_load_u8 v93, v113 offset:1120
	ds_load_u8 v94, v113 offset:1056
	ds_load_u8 v95, v113 offset:1248
	ds_load_u8 v99, v113 offset:1184
	v_lshl_or_b32 v86, v86, 16, v85
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v85, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v99, v95, 0xc0c0004
	ds_load_u8 v94, v113 offset:2912
	ds_load_u8 v95, v113 offset:2848
	ds_load_u8 v99, v113 offset:3040
	ds_load_u8 v100, v113 offset:2976
	v_lshl_or_b32 v85, v93, 16, v85
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[65:68], v[85:88], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[85:88], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v85, v113 offset:3936
	ds_load_u8 v86, v113 offset:3872
	ds_load_u8 v87, v113 offset:4064
	ds_load_u8 v88, v113 offset:4000
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
	v_perm_b32 v85, v86, v85, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v86, s0, v109
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v88, v87, 0xc0c0004
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
	ds_load_u8 v88, v113 offset:1904
	ds_load_u8 v95, v113 offset:1840
	ds_load_u8 v86, v86
	ds_load_u8 v101, v113 offset:1968
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v102, v95, v88, 0xc0c0004
	ds_load_u8 v88, v113 offset:1648
	ds_load_u8 v95, v113 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v86, v101, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v86, 16, v102
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v95, v88, 0xc0c0004
	ds_load_u8 v88, v113 offset:1776
	ds_load_u8 v95, v113 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v95, v88, 0xc0c0004
	v_lshl_or_b32 v88, v87, 16, v85
	ds_load_u8 v85, v113 offset:1392
	ds_load_u8 v86, v113 offset:1328
	v_lshl_or_b32 v95, v94, 16, v93
	v_lshl_or_b32 v87, v100, 16, v99
	v_lshl_or_b32 v101, v114, 16, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[95:98], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[89:92], v[95:98], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v205, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v206, v26
	v_cvt_f32_i32_e32 v207, v27
	v_cvt_f32_i32_e32 v208, v28
	v_cvt_f32_i32_e32 v209, v29
	v_cvt_f32_i32_e32 v210, v30
	v_cvt_f32_i32_e32 v211, v31
	v_cvt_f32_i32_e32 v212, v32
	v_cvt_f32_i32_e32 v213, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v113 offset:1520
	ds_load_u8 v93, v113 offset:1456
	v_cvt_f32_i32_e32 v214, v34
	v_cvt_f32_i32_e32 v215, v35
	v_cvt_f32_i32_e32 v216, v36
	v_cvt_f32_i32_e32 v217, v37
	v_cvt_f32_i32_e32 v218, v38
	v_cvt_f32_i32_e32 v219, v39
	v_cvt_f32_i32_e32 v220, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v93, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v86, 16, v85
	ds_load_u8 v85, v113 offset:1136
	ds_load_u8 v86, v113 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v113 offset:1264
	ds_load_u8 v93, v113 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v93, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v86, 16, v85
	ds_load_u8 v85, v113 offset:3424
	ds_load_u8 v86, v113 offset:3360
	v_wmma_i32_16x16x16_iu8 v[41:48], v[65:68], v[99:102], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v65, v113 offset:3168
	ds_load_u8 v66, v113 offset:3104
	ds_load_u8 v67, v113 offset:3296
	ds_load_u8 v68, v113 offset:3232
	v_wmma_i32_16x16x16_iu8 v[1:8], v[81:84], v[99:102], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v113 offset:3552
	ds_load_u8 v93, v113 offset:3488
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v66, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v93, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v85, s0, v110
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v67, v113 offset:2928
	ds_load_u8 v68, v113 offset:2864
	ds_load_u8 v85, v85
	ds_load_u8 v93, v113 offset:2992
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v93, v85, 0xc0c0004
	ds_load_u8 v85, v113 offset:2672
	ds_load_u8 v93, v113 offset:2608
	v_lshl_or_b32 v68, v68, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v93, v85, 0xc0c0004
	ds_load_u8 v85, v113 offset:2800
	ds_load_u8 v94, v113 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v94, v85, 0xc0c0004
	v_lshl_or_b32 v85, v66, 16, v65
	ds_load_u8 v65, v113 offset:2416
	ds_load_u8 v66, v113 offset:2352
	v_lshl_or_b32 v67, v94, 16, v93
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[85:88], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[89:92], v[85:88], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v221, v57
	v_cvt_f32_i32_e32 v222, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v223, v59
	v_cvt_f32_i32_e32 v224, v60
	v_cvt_f32_i32_e32 v225, v61
	v_cvt_f32_i32_e32 v226, v62
	v_cvt_f32_i32_e32 v227, v63
	v_cvt_f32_i32_e32 v228, v64
	v_cvt_f32_i32_e32 v229, v49
	v_cvt_f32_i32_e32 v230, v50
	v_cvt_f32_i32_e32 v231, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v113 offset:2544
	ds_load_u8 v93, v113 offset:2480
	v_cvt_f32_i32_e32 v232, v52
	v_cvt_f32_i32_e32 v233, v53
	v_cvt_f32_i32_e32 v234, v54
	v_cvt_f32_i32_e32 v235, v55
	v_cvt_f32_i32_e32 v236, v56
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
	v_wmma_i32_16x16x16_iu8 v[1:8], v[89:92], v[69:72], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v102, v41
	v_cvt_f32_i32_e32 v113, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v114, v43
	v_cvt_f32_i32_e32 v115, v44
	v_cvt_f32_i32_e32 v116, v45
	v_cvt_f32_i32_e32 v117, v46
	v_cvt_f32_i32_e32 v237, v47
	v_cvt_f32_i32_e32 v238, v48
	v_cvt_f32_i32_e32 v239, v1
	v_cvt_f32_i32_e32 v240, v2
	v_cvt_f32_i32_e32 v251, v3
	v_cvt_f32_i32_e32 v252, v4
	v_cvt_f32_i32_e32 v250, v5
	v_cvt_f32_i32_e32 v244, v6
	v_cvt_f32_i32_e32 v245, v7
	v_cvt_f32_i32_e32 v246, v8
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
	s_mul_i32 s1, s0, s27
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s50
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v1, v156, s0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v2, v118, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v3, v153, s0, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_add_lshl_u32 v4, v154, s0, 1
	v_add_lshl_u32 v5, v155, s0, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_and_b32 s13, s13, 0xffff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_mov_b32_e32 v10, 0
	s_clause 0x3
	buffer_load_u16 v255, v1, s[12:15], 0 offen
	buffer_load_u16 v253, v3, s[12:15], 0 offen
	buffer_load_u16 v119, v4, s[12:15], 0 offen
	buffer_load_u16 v86, v5, s[12:15], 0 offen
	v_dual_mov_b32 v14, 0 :: v_dual_and_b32 v3, 32, v106
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v1, 28, v196
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v254, 0, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v3, 0, v104, v3
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v249, v3, v1
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
	v_mov_b32_e32 v55, 0
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
	v_mov_b32_e32 v2, 0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v249, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v254 offset:40960
	ds_load_b128 v[69:72], v254 offset:40976
	ds_load_b128 v[73:76], v254 offset:41472
	ds_load_b128 v[77:80], v254 offset:41488
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
	scratch_store_b32 off, v1, off offset:44
	scratch_store_b32 off, v117, off offset:12
	v_add_nc_u32_e32 v1, s7, v110
	v_add_nc_u32_e32 v117, s7, v103
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v102, off offset:8
	scratch_store_b32 off, v116, off offset:16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt vmcnt(0)
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v86, off offset:40
	scratch_store_b32 off, v1, off offset:48
	scratch_store_b32 off, v115, off offset:20
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v1, s7, v109
	v_add_nc_u32_e32 v58, s7, v108
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s7, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v26, s6, v112
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s6, s4
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v117 offset:832
	ds_load_u8 v2, v117 offset:768
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v246, off offset:24
	scratch_store_b32 off, v245, off offset:36
	v_mov_b32_e32 v245, v114
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v250, off offset:28
	scratch_store_b32 off, v113, off offset:32
	v_mov_b32_e32 v241, v235
	v_mov_b32_e32 v235, v229
	v_mov_b32_e32 v229, v223
	v_mov_b32_e32 v223, v217
	v_mov_b32_e32 v217, v211
	v_mov_b32_e32 v211, v205
	v_mov_b32_e32 v205, v199
	v_mov_b32_e32 v199, v192
	v_mov_b16_e64 v250.l, v119.l
	v_dual_mov_b32 v119, v249 :: v_dual_mov_b32 v248, v238
	v_dual_mov_b32 v249, v239 :: v_dual_mov_b32 v238, v232
	v_dual_mov_b32 v239, v233 :: v_dual_mov_b32 v232, v226
	v_dual_mov_b32 v233, v227 :: v_dual_mov_b32 v226, v220
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v117 offset:960
	ds_load_u8 v3, v117 offset:896
	v_dual_mov_b32 v227, v221 :: v_dual_mov_b32 v220, v214
	v_dual_mov_b32 v221, v215 :: v_dual_mov_b32 v214, v208
	v_dual_mov_b32 v215, v209 :: v_dual_mov_b32 v208, v202
	v_dual_mov_b32 v209, v203 :: v_dual_mov_b32 v242, v236
	v_dual_mov_b32 v203, v197 :: v_dual_mov_b32 v202, v195
	v_mov_b32_e32 v197, v190
	v_dual_mov_b32 v63, v196 :: v_dual_mov_b32 v236, v230
	v_mov_b32_e32 v247, v237
	v_mov_b32_e32 v237, v231
	v_mov_b32_e32 v231, v225
	v_dual_mov_b32 v225, v219 :: v_dual_mov_b32 v230, v224
	v_mov_b32_e32 v224, v218
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_mov_b32_e32 v218, v212
	v_mov_b32_e32 v212, v206
	v_mov_b32_e32 v206, v200
	v_mov_b32_e32 v246, v244
	v_lshl_or_b32 v30, v2, 16, v1
	ds_load_u8 v1, v117 offset:576
	ds_load_u8 v2, v117 offset:512
	v_mov_b32_e32 v64, v191
	v_mov_b32_e32 v244, v234
	v_mov_b32_e32 v234, v228
	v_mov_b32_e32 v228, v222
	v_mov_b32_e32 v222, v216
	v_mov_b32_e32 v216, v210
	v_mov_b32_e32 v210, v204
	v_mov_b32_e32 v204, v198
	v_mov_b32_e32 v198, v120
	v_mov_b32_e32 v120, v189
	v_mov_b32_e32 v219, v213
	v_dual_mov_b32 v213, v207 :: v_dual_mov_b32 v200, v193
	v_mov_b32_e32 v207, v201
	v_mov_b32_e32 v201, v194
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v117 offset:704
	ds_load_u8 v3, v117 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v2, 16, v1
	ds_load_u8 v1, v117 offset:320
	ds_load_u8 v2, v117 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v117 offset:448
	ds_load_u8 v3, v117 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v2, 16, v1
	ds_load_u8 v1, v117 offset:64
	ds_load_u8 v2, v117
	ds_load_u8 v25, v117 offset:16
	ds_load_u8 v41, v117 offset:32
	ds_load_u8 v57, v117 offset:48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v117 offset:192
	ds_load_u8 v3, v117 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v2, 16, v1
	ds_load_u8 v1, v26 offset:3328
	ds_load_u8 v2, v26 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:3840
	ds_load_u8 v3, v26 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v2, 16, v1
	ds_load_u8 v1, v26 offset:2304
	ds_load_u8 v2, v26 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:2816
	ds_load_u8 v3, v26 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v2, 16, v1
	ds_load_u8 v1, v26 offset:1280
	ds_load_u8 v2, v26 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:1792
	ds_load_u8 v3, v26 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v2, 16, v1
	ds_load_u8 v1, v26 offset:256
	ds_load_u8 v2, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:768
	ds_load_u8 v3, v26 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v101, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	ds_load_u8 v17, v117 offset:1856
	ds_load_u8 v18, v117 offset:1792
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[101:104], v[27:30], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v117 offset:1984
	ds_load_u8 v19, v117 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v18, 16, v17
	ds_load_u8 v17, v117 offset:1600
	ds_load_u8 v18, v117 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v117 offset:1728
	ds_load_u8 v19, v117 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v18, 16, v17
	ds_load_u8 v17, v117 offset:1344
	ds_load_u8 v18, v117 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v117 offset:1472
	ds_load_u8 v19, v117 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v117 offset:1088
	ds_load_u8 v18, v117 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v117 offset:1216
	ds_load_u8 v19, v117 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v26 offset:7424
	ds_load_u8 v18, v26 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:7936
	ds_load_u8 v19, v26 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v18, 16, v17
	ds_load_u8 v17, v26 offset:6400
	ds_load_u8 v18, v26 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:6912
	ds_load_u8 v19, v26 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v18, 16, v17
	ds_load_u8 v17, v26 offset:5376
	ds_load_u8 v18, v26 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:5888
	ds_load_u8 v19, v26 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v106, v18, 16, v17
	ds_load_u8 v17, v26 offset:4352
	ds_load_u8 v18, v26 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:4864
	ds_load_u8 v19, v26 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v18, 16, v17
	ds_load_u8 v17, v117 offset:2880
	ds_load_u8 v18, v117 offset:2816
	v_wmma_i32_16x16x16_iu8 v[9:16], v[105:108], v[31:34], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v117 offset:3008
	ds_load_u8 v19, v117 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v18, 16, v17
	ds_load_u8 v17, v117 offset:2624
	ds_load_u8 v18, v117 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v117 offset:2752
	ds_load_u8 v19, v117 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v18, 16, v17
	ds_load_u8 v17, v117 offset:2368
	ds_load_u8 v18, v117 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v117 offset:2496
	ds_load_u8 v19, v117 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v18, 16, v17
	ds_load_u8 v17, v117 offset:2112
	ds_load_u8 v18, v117 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v117 offset:2240
	ds_load_u8 v19, v117 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v18, 16, v17
	ds_load_u8 v17, v26 offset:11520
	ds_load_u8 v18, v26 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:12032
	ds_load_u8 v19, v26 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v18, 16, v17
	ds_load_u8 v17, v26 offset:10496
	ds_load_u8 v18, v26 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:11008
	ds_load_u8 v19, v26 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v18, 16, v17
	ds_load_u8 v17, v26 offset:9472
	ds_load_u8 v18, v26 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:9984
	ds_load_u8 v19, v26 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v110, v18, 16, v17
	ds_load_u8 v17, v26 offset:8448
	ds_load_u8 v18, v26 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:8960
	ds_load_u8 v19, v26 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v18, 16, v17
	ds_load_u8 v17, v117 offset:3904
	ds_load_u8 v18, v117 offset:3840
	v_wmma_i32_16x16x16_iu8 v[9:16], v[109:112], v[35:38], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v117 offset:4032
	ds_load_u8 v19, v117 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v18, 16, v17
	ds_load_u8 v17, v117 offset:3648
	ds_load_u8 v18, v117 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v117 offset:3776
	ds_load_u8 v19, v117 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v18, 16, v17
	ds_load_u8 v17, v117 offset:3392
	ds_load_u8 v18, v117 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v117 offset:3520
	ds_load_u8 v19, v117 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v18, 16, v17
	ds_load_u8 v17, v117 offset:3136
	ds_load_u8 v18, v117 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v117 offset:3264
	ds_load_u8 v19, v117 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v18, 16, v17
	ds_load_u8 v17, v26 offset:15616
	ds_load_u8 v18, v26 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:16128
	ds_load_u8 v19, v26 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v18, 16, v17
	ds_load_u8 v17, v26 offset:14592
	ds_load_u8 v18, v26 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:15104
	ds_load_u8 v19, v26 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v18, 16, v17
	ds_load_u8 v17, v26 offset:13568
	ds_load_u8 v18, v26 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:14080
	ds_load_u8 v19, v26 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v18, 16, v17
	ds_load_u8 v17, v26 offset:12544
	ds_load_u8 v18, v26 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:13056
	ds_load_u8 v19, v26 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v18, 16, v17
	ds_load_u8 v17, v26 offset:3456
	ds_load_u8 v18, v26 offset:3200
	v_wmma_i32_16x16x16_iu8 v[9:16], v[97:100], v[42:45], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:3968
	ds_load_u8 v19, v26 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v18, 16, v17
	ds_load_u8 v17, v26 offset:2432
	ds_load_u8 v18, v26 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:2944
	ds_load_u8 v19, v26 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v18, 16, v17
	ds_load_u8 v17, v26 offset:1408
	ds_load_u8 v18, v26 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:1920
	ds_load_u8 v19, v26 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v18, 16, v17
	ds_load_u8 v17, v26 offset:384
	ds_load_u8 v18, v26 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v26 offset:896
	ds_load_u8 v19, v26 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[81:84], v[27:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v27, v26 offset:7552
	ds_load_u8 v28, v26 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:8064
	ds_load_u8 v29, v26 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v28, 16, v27
	ds_load_u8 v27, v26 offset:6528
	ds_load_u8 v28, v26 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:7040
	ds_load_u8 v29, v26 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v87, v28, 16, v27
	ds_load_u8 v27, v26 offset:5504
	ds_load_u8 v28, v26 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:6016
	ds_load_u8 v29, v26 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v28, 16, v27
	ds_load_u8 v27, v26 offset:4480
	ds_load_u8 v28, v26 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:4992
	ds_load_u8 v29, v26 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v28, 16, v27
	ds_load_u8 v27, v26 offset:11648
	ds_load_u8 v28, v26 offset:11392
	v_wmma_i32_16x16x16_iu8 v[17:24], v[85:88], v[31:34], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v33, v117 offset:1872
	ds_load_u8 v34, v117 offset:1808
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:12160
	ds_load_u8 v29, v26 offset:11904
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v28, 16, v27
	ds_load_u8 v27, v26 offset:10624
	ds_load_u8 v28, v26 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:11136
	ds_load_u8 v29, v26 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v28, 16, v27
	ds_load_u8 v27, v26 offset:9600
	ds_load_u8 v28, v26 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:10112
	ds_load_u8 v29, v26 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v28, 16, v27
	ds_load_u8 v27, v26 offset:8576
	ds_load_u8 v28, v26 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:9088
	ds_load_u8 v29, v26 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v28, 16, v27
	ds_load_u8 v27, v26 offset:15744
	ds_load_u8 v28, v26 offset:15488
	v_wmma_i32_16x16x16_iu8 v[17:24], v[89:92], v[35:38], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v34, v117 offset:2000
	ds_load_u8 v35, v117 offset:1936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:16256
	ds_load_u8 v29, v26 offset:16000
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v34, 16, v33
	ds_load_u8 v33, v117 offset:1616
	ds_load_u8 v34, v117 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	v_lshl_or_b32 v96, v28, 16, v27
	ds_load_u8 v27, v26 offset:14720
	ds_load_u8 v28, v26 offset:14464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v117 offset:1744
	ds_load_u8 v35, v117 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:15232
	ds_load_u8 v29, v26 offset:14976
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v34, 16, v33
	ds_load_u8 v33, v117 offset:1360
	ds_load_u8 v34, v117 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	v_lshl_or_b32 v95, v28, 16, v27
	ds_load_u8 v27, v26 offset:13696
	ds_load_u8 v28, v26 offset:13440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v117 offset:1488
	ds_load_u8 v35, v117 offset:1424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:14208
	ds_load_u8 v29, v26 offset:13952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v34, 16, v33
	ds_load_u8 v33, v117 offset:1104
	ds_load_u8 v34, v117 offset:1040
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	v_lshl_or_b32 v94, v28, 16, v27
	ds_load_u8 v27, v26 offset:12672
	ds_load_u8 v28, v26 offset:12416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v117 offset:1232
	ds_load_u8 v35, v117 offset:1168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v26 offset:13184
	ds_load_u8 v26, v26 offset:12928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v34, 16, v33
	ds_load_u8 v33, v117 offset:2896
	ds_load_u8 v34, v117 offset:2832
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	v_lshl_or_b32 v93, v26, 16, v27
	ds_load_u8 v26, v117 offset:848
	ds_load_u8 v27, v117 offset:784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v117 offset:3024
	ds_load_u8 v35, v117 offset:2960
	v_wmma_i32_16x16x16_iu8 v[17:24], v[93:96], v[42:45], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v117 offset:976
	ds_load_u8 v28, v117 offset:912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v34, 16, v33
	ds_load_u8 v33, v117 offset:2640
	ds_load_u8 v34, v117 offset:2576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_lshl_or_b32 v45, v27, 16, v26
	ds_load_u8 v26, v117 offset:592
	ds_load_u8 v27, v117 offset:528
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v117 offset:2768
	ds_load_u8 v35, v117 offset:2704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v117 offset:720
	ds_load_u8 v28, v117 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v34, 16, v33
	ds_load_u8 v33, v117 offset:2384
	ds_load_u8 v34, v117 offset:2320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_lshl_or_b32 v44, v27, 16, v26
	ds_load_u8 v26, v117 offset:336
	ds_load_u8 v27, v117 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v117 offset:2512
	ds_load_u8 v35, v117 offset:2448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v117 offset:464
	ds_load_u8 v28, v117 offset:400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v51, v34, 16, v33
	ds_load_u8 v33, v117 offset:2128
	ds_load_u8 v34, v117 offset:2064
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_lshl_or_b32 v43, v27, 16, v26
	ds_load_u8 v26, v117 offset:80
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v117 offset:2256
	ds_load_u8 v35, v117 offset:2192
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v117 offset:208
	ds_load_u8 v27, v117 offset:144
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v34, 16, v33
	ds_load_u8 v33, v117 offset:3920
	ds_load_u8 v34, v117 offset:3856
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v117 offset:4048
	ds_load_u8 v35, v117 offset:3984
	v_wmma_i32_16x16x16_iu8 v[25:32], v[101:104], v[42:45], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[25:32], v[105:108], v[46:49], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[109:112], v[50:53], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v34, 16, v33
	ds_load_u8 v33, v117 offset:3664
	ds_load_u8 v34, v117 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v117 offset:3792
	ds_load_u8 v35, v117 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v34, 16, v33
	ds_load_u8 v33, v117 offset:3408
	ds_load_u8 v34, v117 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v117 offset:3536
	ds_load_u8 v35, v117 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v34, 16, v33
	ds_load_u8 v33, v117 offset:3152
	ds_load_u8 v34, v117 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v117 offset:3280
	ds_load_u8 v35, v117 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[81:84], v[42:45], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v42, v117 offset:864
	ds_load_u8 v43, v117 offset:800
	v_wmma_i32_16x16x16_iu8 v[25:32], v[97:100], v[59:62], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[85:88], v[46:49], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[33:40], v[89:92], v[50:53], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v49, v117 offset:1888
	ds_load_u8 v50, v117 offset:1824
	v_wmma_i32_16x16x16_iu8 v[33:40], v[93:96], v[59:62], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v117 offset:992
	ds_load_u8 v44, v117 offset:928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v117 offset:2016
	ds_load_u8 v51, v117 offset:1952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v43, 16, v42
	ds_load_u8 v42, v117 offset:608
	ds_load_u8 v43, v117 offset:544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v116, v50, 16, v49
	ds_load_u8 v49, v117 offset:1632
	ds_load_u8 v50, v117 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v117 offset:736
	ds_load_u8 v44, v117 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v117 offset:1760
	ds_load_u8 v51, v117 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v43, 16, v42
	ds_load_u8 v42, v117 offset:352
	ds_load_u8 v43, v117 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v115, v50, 16, v49
	ds_load_u8 v49, v117 offset:1376
	ds_load_u8 v50, v117 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v117 offset:480
	ds_load_u8 v44, v117 offset:416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v117 offset:1504
	ds_load_u8 v51, v117 offset:1440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v43, 16, v42
	ds_load_u8 v42, v117 offset:96
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v114, v50, 16, v49
	ds_load_u8 v49, v117 offset:1120
	ds_load_u8 v50, v117 offset:1056
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v117 offset:224
	ds_load_u8 v43, v117 offset:160
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v117 offset:1248
	ds_load_u8 v51, v117 offset:1184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v59, v42, 16, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[101:104], v[59:62], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v113, v50, 16, v49
	ds_load_u8 v49, v117 offset:2912
	ds_load_u8 v50, v117 offset:2848
	v_wmma_i32_16x16x16_iu8 v[41:48], v[105:108], v[113:116], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v117 offset:3040
	ds_load_u8 v51, v117 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v192, v50, 16, v49
	ds_load_u8 v49, v117 offset:2656
	ds_load_u8 v50, v117 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v117 offset:2784
	ds_load_u8 v51, v117 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v191, v50, 16, v49
	ds_load_u8 v49, v117 offset:2400
	ds_load_u8 v50, v117 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v117 offset:2528
	ds_load_u8 v51, v117 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v190, v50, 16, v49
	ds_load_u8 v49, v117 offset:2144
	ds_load_u8 v50, v117 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v117 offset:2272
	ds_load_u8 v51, v117 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v189, v50, 16, v49
	ds_load_u8 v49, v117 offset:3936
	ds_load_u8 v50, v117 offset:3872
	v_wmma_i32_16x16x16_iu8 v[41:48], v[109:112], v[189:192], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v117 offset:4064
	ds_load_u8 v51, v117 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v196, v50, 16, v49
	ds_load_u8 v49, v117 offset:3680
	ds_load_u8 v50, v117 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v117 offset:3808
	ds_load_u8 v51, v117 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v195, v50, 16, v49
	ds_load_u8 v49, v117 offset:3424
	ds_load_u8 v50, v117 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v117 offset:3552
	ds_load_u8 v51, v117 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v194, v50, 16, v49
	ds_load_u8 v49, v117 offset:3168
	ds_load_u8 v50, v117 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v117 offset:3296
	ds_load_u8 v51, v117 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v193, v50, 16, v49
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[59:62], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v59, v117 offset:880
	ds_load_u8 v60, v117 offset:816
	v_wmma_i32_16x16x16_iu8 v[41:48], v[97:100], v[193:196], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[85:88], v[113:116], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[89:92], v[189:192], v[49:56] neg_lo:[1,1,0]
	v_dual_mov_b32 v192, v199 :: v_dual_mov_b32 v199, v205
	v_mov_b32_e32 v205, v211
	v_mov_b32_e32 v211, v217
	v_mov_b32_e32 v217, v223
	v_mov_b32_e32 v223, v229
	v_mov_b32_e32 v191, v64
	v_wmma_i32_16x16x16_iu8 v[49:56], v[93:96], v[193:196], v[49:56] neg_lo:[1,1,0]
	v_dual_mov_b32 v195, v202 :: v_dual_mov_b32 v202, v208
	v_mov_b32_e32 v208, v214
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v58, v58
	ds_load_u8 v60, v117 offset:944
	v_dual_mov_b32 v214, v220 :: v_dual_mov_b32 v229, v235
	v_dual_mov_b32 v194, v201 :: v_dual_mov_b32 v201, v207
	v_mov_b32_e32 v207, v213
	v_mov_b32_e32 v213, v219
	v_mov_b32_e32 v219, v225
	v_mov_b32_e32 v225, v231
	v_dual_mov_b32 v231, v237 :: v_dual_mov_b32 v196, v63
	v_mov_b32_e32 v237, v247
	v_mov_b32_e32 v193, v200
	v_dual_mov_b32 v235, v241 :: v_dual_mov_b32 v200, v206
	v_mov_b32_e32 v220, v226
	v_mov_b32_e32 v226, v232
	v_mov_b32_e32 v232, v238
	v_mov_b32_e32 v238, v248
	v_mov_b32_e32 v206, v212
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v60, v58, 0xc0c0004
	v_mov_b32_e32 v212, v218
	v_mov_b32_e32 v218, v224
	v_mov_b32_e32 v224, v230
	v_mov_b32_e32 v230, v236
	v_lshl_or_b32 v116, v58, 16, v59
	ds_load_u8 v58, v117 offset:624
	ds_load_u8 v59, v117 offset:560
	v_mov_b32_e32 v236, v242
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v117 offset:752
	ds_load_u8 v60, v117 offset:688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v115, v59, 16, v58
	ds_load_u8 v58, v117 offset:368
	ds_load_u8 v59, v117 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v117 offset:496
	ds_load_u8 v60, v117 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v59, 16, v58
	ds_load_u8 v58, v117 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v58, 0xc0c0004
	ds_load_u8 v58, v117 offset:240
	ds_load_u8 v59, v117 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v113, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[101:104], v[113:116], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v101, v117 offset:1904
	ds_load_u8 v102, v117 offset:1840
	v_wmma_i32_16x16x16_iu8 v[1:8], v[81:84], v[113:116], v[1:8] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v116, off, off offset:16
	scratch_load_b32 v115, off, off offset:20
	v_mov_b32_e32 v114, v245
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	scratch_load_b32 v102, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v102, v102
	ds_load_u8 v103, v117 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v102, 16, v101
	ds_load_u8 v101, v117 offset:1648
	ds_load_u8 v102, v117 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v117 offset:1776
	ds_load_u8 v103, v117 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v102, 16, v101
	ds_load_u8 v101, v117 offset:1392
	ds_load_u8 v102, v117 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v117 offset:1520
	ds_load_u8 v189, v117 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v189, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v102, 16, v101
	ds_load_u8 v101, v117 offset:1136
	ds_load_u8 v189, v117 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v189, v101, 0xc0c0004
	ds_load_u8 v189, v117 offset:1264
	ds_load_u8 v190, v117 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v101, v189, 16, v101
	v_wmma_i32_16x16x16_iu8 v[57:64], v[105:108], v[101:104], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v105, v117 offset:2928
	ds_load_u8 v106, v117 offset:2864
	v_wmma_i32_16x16x16_iu8 v[1:8], v[85:88], v[101:104], v[1:8] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v86, off, off offset:40
	scratch_load_b32 v102, off, off offset:8
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	scratch_load_b32 v106, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v106, v106
	ds_load_u8 v107, v117 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v106, 16, v105
	ds_load_u8 v105, v117 offset:2672
	ds_load_u8 v106, v117 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v117 offset:2800
	ds_load_u8 v107, v117 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v106, 16, v105
	ds_load_u8 v105, v117 offset:2416
	ds_load_u8 v106, v117 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v117 offset:2544
	ds_load_u8 v189, v117 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v189, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v106, v106, 16, v105
	ds_load_u8 v105, v117 offset:2160
	ds_load_u8 v189, v117 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v189, v105, 0xc0c0004
	ds_load_u8 v189, v117 offset:2288
	ds_load_u8 v190, v117 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	v_dual_mov_b32 v190, v197 :: v_dual_mov_b32 v197, v203
	v_mov_b32_e32 v203, v209
	v_mov_b32_e32 v209, v215
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v105, v189, 16, v105
	v_mov_b32_e32 v215, v221
	v_mov_b32_e32 v221, v227
	v_mov_b32_e32 v227, v233
	v_mov_b32_e32 v233, v239
	v_wmma_i32_16x16x16_iu8 v[57:64], v[109:112], v[105:108], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v109, v117 offset:3952
	ds_load_u8 v110, v117 offset:3888
	v_mov_b32_e32 v239, v249
	v_mov_b32_e32 v249, v119
	v_mov_b16_e64 v119.l, v250.l
	v_wmma_i32_16x16x16_iu8 v[1:8], v[89:92], v[105:108], v[1:8] neg_lo:[1,1,0]
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
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	scratch_load_b32 v110, off, off offset:44 ; 4-byte Folded Reload
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
	s_waitcnt vmcnt(0)
	ds_load_u8 v110, v110
	ds_load_u8 v111, v117 offset:4016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v110, 16, v109
	ds_load_u8 v109, v117 offset:3696
	ds_load_u8 v110, v117 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v117 offset:3824
	ds_load_u8 v111, v117 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v110, 16, v109
	ds_load_u8 v109, v117 offset:3440
	ds_load_u8 v110, v117 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v117 offset:3568
	ds_load_u8 v189, v117 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v189, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v110, v110, 16, v109
	ds_load_u8 v109, v117 offset:3184
	ds_load_u8 v189, v117 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v189, v109, 0xc0c0004
	ds_load_u8 v189, v117 offset:3312
	ds_load_u8 v117, v117 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v117, v189, 0xc0c0004
	v_dual_mov_b32 v189, v120 :: v_dual_mov_b32 v120, v198
	v_mov_b32_e32 v198, v204
	v_mov_b32_e32 v204, v210
	v_mov_b32_e32 v210, v216
	v_mov_b32_e32 v216, v222
	v_mov_b32_e32 v222, v228
	v_mov_b32_e32 v228, v234
	v_mov_b32_e32 v234, v244
	v_mov_b32_e32 v244, v246
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v245, off, off offset:36
	scratch_load_b32 v246, off, off offset:24
	scratch_load_b32 v113, off, off offset:32
	scratch_load_b32 v250, off, off offset:28
	v_lshl_or_b32 v109, v117, 16, v109
	scratch_load_b32 v117, off, off offset:12 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[57:64], v[97:100], v[109:112], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[93:96], v[109:112], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v56, v57
	v_cvt_f32_i32_e32 v57, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v58, v59
	v_cvt_f32_i32_e32 v59, v60
	v_cvt_f32_i32_e32 v60, v61
	v_cvt_f32_i32_e32 v61, v62
	v_cvt_f32_i32_e32 v62, v63
	v_cvt_f32_i32_e32 v63, v64
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
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
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s38, s48, s27
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 6
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s26, s27, 28
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s50
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s0, s27
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v64, v156, s0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v81, v118, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v82, v153, s0, 1
	v_add_lshl_u32 v83, v154, s0, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v84, v155, s0, 1
	v_dual_cndmask_b32 v64, 0x80000000, v64 :: v_dual_cndmask_b32 v81, 0x80000000, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v82, 0x80000000, v82 :: v_dual_cndmask_b32 v83, 0x80000000, v83
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	s_clause 0x3
	buffer_load_u16 v85, v64, s[12:15], 0 offen
	buffer_load_u16 v82, v82, s[12:15], 0 offen
	buffer_load_u16 v83, v83, s[12:15], 0 offen
	buffer_load_u16 v84, v84, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v81, v81, s[28:31], 0 offen
	v_mov_b16_e32 v64.l, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v64.h, v86.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s0, s27, 3
	s_add_i32 s70, s38, s27
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v86, v80, v64
	v_mul_f32_e32 v87, v79, v64
	v_mul_f32_e32 v89, v77, v64
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_lshl1_add_u32 s69, s27, s38
	s_add_i32 s68, s38, s0
	s_mul_i32 s1, s27, 5
	s_mul_i32 s4, s27, 9
	s_mul_i32 s5, s27, 10
	s_mul_i32 s6, s27, 11
	s_mul_i32 s7, s27, 12
	s_mul_i32 s8, s27, 13
	s_mul_i32 s9, s27, 14
	s_mul_i32 s10, s27, 15
	s_mul_i32 s11, s27, 17
	s_mul_i32 s12, s27, 18
	s_mul_i32 s13, s27, 19
	s_mul_i32 s16, s27, 20
	s_mul_i32 s17, s27, 21
	s_mul_i32 s18, s27, 22
	s_mul_i32 s19, s27, 23
	s_mul_i32 s20, s27, 24
	s_mul_i32 s21, s27, 25
	s_mul_i32 s22, s27, 26
	s_mul_i32 s23, s27, 27
	s_mul_i32 s28, s27, 29
	s_mul_i32 s29, s27, 30
	s_mul_i32 s30, s27, 31
	s_mul_i32 s31, s27, 33
	s_mul_i32 s36, s27, 34
	s_mul_i32 s71, s27, 35
	s_mul_i32 s72, s27, 36
	s_mul_i32 s73, s27, 37
	s_mul_i32 s74, s27, 38
	s_mul_i32 s75, s27, 39
	s_mul_i32 s76, s27, 40
	s_mul_i32 s77, s27, 41
	s_mul_i32 s78, s27, 42
	s_mul_i32 s79, s27, 43
	s_mul_i32 s80, s27, 44
	s_mul_i32 s81, s27, 45
	s_mul_i32 s82, s27, 46
	s_mul_i32 s83, s27, 47
	s_mul_i32 s84, s27, 49
	s_mul_i32 s85, s27, 50
	s_mul_i32 s86, s27, 51
	s_mul_i32 s87, s27, 52
	s_mul_i32 s88, s27, 53
	s_mul_i32 s89, s27, 54
	s_mul_i32 s90, s27, 55
	s_mul_i32 s91, s27, 56
	s_mul_i32 s92, s27, 57
	s_mul_i32 s93, s27, 58
	s_mul_i32 s94, s27, 59
	s_mul_i32 s95, s27, 60
	s_mul_i32 s96, s27, 61
	s_mul_i32 s97, s27, 62
	s_mul_i32 s98, s27, 63
	s_lshl2_add_u32 s67, s27, s38
	s_lshl3_add_u32 s63, s27, s38
	s_add_i32 s43, s38, s26
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s14
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s66, s38, s1
	s_add_i32 s62, s38, s4
	s_add_i32 s61, s38, s5
	s_add_i32 s60, s38, s6
	s_add_i32 s59, s38, s7
	s_add_i32 s58, s38, s8
	s_add_i32 s57, s38, s9
	s_add_i32 s56, s38, s10
	s_add_i32 s55, s38, s35
	s_add_i32 s54, s38, s11
	s_add_i32 s53, s38, s12
	s_add_i32 s52, s38, s13
	s_add_i32 s51, s38, s16
	s_add_i32 s50, s38, s17
	s_add_i32 s49, s38, s18
	s_add_i32 s48, s38, s19
	s_add_i32 s47, s38, s20
	s_add_i32 s46, s38, s21
	s_add_i32 s45, s38, s22
	s_add_i32 s44, s38, s23
	s_add_i32 s42, s38, s28
	s_add_i32 s41, s38, s29
	s_add_i32 s40, s38, s30
	s_add_i32 s39, s38, s34
	s_add_i32 s37, s38, s31
	s_add_i32 s36, s38, s36
	s_add_i32 s35, s38, s71
	s_add_i32 s34, s38, s72
	s_add_i32 s31, s38, s73
	s_add_i32 s30, s38, s74
	s_add_i32 s20, s38, s75
	s_add_i32 s19, s38, s76
	s_add_i32 s17, s38, s77
	s_add_i32 s13, s38, s78
	s_add_i32 s11, s38, s79
	s_add_i32 s8, s38, s80
	s_add_i32 s6, s38, s81
	s_add_i32 s4, s38, s82
	s_add_i32 s1, s38, s83
	s_add_i32 s33, s38, s33
	s_add_i32 s28, s38, s84
	s_add_i32 s22, s38, s85
	s_add_i32 s29, s38, s86
	s_add_i32 s23, s38, s87
	s_add_i32 s21, s38, s88
	s_add_i32 s18, s38, s89
	s_add_i32 s16, s38, s90
	s_add_i32 s12, s38, s91
	s_add_i32 s9, s38, s92
	s_add_i32 s10, s38, s93
	s_add_i32 s7, s38, s94
	s_add_i32 s5, s38, s95
	s_add_i32 s0, s38, s98
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v88, v78, v64 :: v_dual_lshlrev_b32 v85, 16, v85
	v_mul_f32_e32 v90, v76, v64
	v_mul_f32_e32 v91, v75, v64
	v_mul_f32_e32 v92, v74, v64
	v_mul_f32_e32 v93, v73, v64
	v_mul_f32_e32 v94, v72, v64
	v_mul_f32_e32 v95, v71, v64
	v_mul_f32_e32 v96, v70, v64
	v_mul_f32_e32 v97, v69, v64
	v_mul_f32_e32 v98, v68, v64
	v_mul_f32_e32 v99, v67, v64
	v_mul_f32_e32 v100, v66, v64
	v_mul_f32_e32 v101, v65, v64
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v64.h, v119.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v90, v90, v252, v185
	v_fma_f32 v91, v91, v251, v184
	v_fma_f32 v92, v92, v240, v183
	v_fma_f32 v93, v93, v239, v182
	v_fma_f32 v94, v94, v238, v180
	v_fma_f32 v95, v95, v237, v179
	v_fma_f32 v96, v96, v117, v178
	v_fma_f32 v97, v97, v116, v177
	v_fma_f32 v98, v98, v115, v176
	v_fma_f32 v99, v99, v114, v175
	v_fma_f32 v100, v100, v113, v174
	v_fma_f32 v101, v101, v102, v173
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v102, v80, v64
	v_mul_f32_e32 v103, v79, v64
	v_mul_f32_e32 v104, v78, v64
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v105, v77, v64 :: v_dual_lshlrev_b32 v82, 16, v82
	v_mul_f32_e32 v106, v76, v64
	v_mul_f32_e32 v108, v75, v64
	v_mul_f32_e32 v109, v74, v64
	v_mul_f32_e32 v110, v73, v64
	v_mul_f32_e32 v111, v72, v64
	v_mul_f32_e32 v112, v71, v64
	v_mul_f32_e32 v113, v70, v64
	v_mul_f32_e32 v114, v69, v64
	v_mul_f32_e32 v115, v68, v64
	v_mul_f32_e32 v116, v67, v64
	v_mul_f32_e32 v117, v66, v64
	v_mul_f32_e32 v153, v65, v64
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v64.h, v253.l
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v83, 16, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v86, v86, v246, v181
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v90, v185, v90, s3
	v_cndmask_b32_e64 v91, v184, v91, s3
	v_cndmask_b32_e64 v92, v183, v92, s3
	v_cndmask_b32_e64 v93, v182, v93, s3
	v_cndmask_b32_e64 v86, v181, v86, s3
	v_cndmask_b32_e64 v94, v180, v94, s3
	v_cndmask_b32_e64 v95, v179, v95, s3
	v_cndmask_b32_e64 v96, v178, v96, s3
	v_cndmask_b32_e64 v97, v177, v97, s3
	v_cndmask_b32_e64 v98, v176, v98, s3
	v_cndmask_b32_e64 v99, v175, v99, s3
	v_cndmask_b32_e64 v100, v174, v100, s3
	v_cndmask_b32_e64 v101, v173, v101, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v117, v117, v222, v158
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v154, v80, v64
	v_mul_f32_e32 v155, v79, v64
	v_mul_f32_e32 v156, v78, v64
	v_mul_f32_e32 v173, v77, v64
	v_mul_f32_e32 v174, v76, v64
	v_mul_f32_e32 v175, v75, v64
	v_mul_f32_e32 v176, v74, v64
	v_mul_f32_e32 v177, v73, v64
	v_mul_f32_e32 v178, v72, v64
	v_mul_f32_e32 v179, v71, v64
	v_mul_f32_e32 v180, v70, v64
	v_mul_f32_e32 v181, v69, v64
	v_mul_f32_e32 v182, v68, v64
	v_mul_f32_e32 v183, v67, v64
	v_mul_f32_e32 v184, v66, v64
	v_mul_f32_e32 v185, v65, v64
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v64.h, v255.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v117, v158, v117, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v158, v174, v216, v148
	v_fma_f32 v153, v153, v221, v157
	v_fma_f32 v111, v111, v228, v164
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v80, v80, v64
	v_mul_f32_e32 v79, v79, v64
	v_mul_f32_e32 v78, v78, v64
	v_mul_f32_e32 v77, v77, v64
	v_mul_f32_e32 v76, v76, v64
	v_mul_f32_e32 v75, v75, v64
	v_mul_f32_e32 v74, v74, v64
	v_mul_f32_e32 v73, v73, v64
	v_mul_f32_e32 v72, v72, v64
	v_mul_f32_e32 v71, v71, v64
	v_mul_f32_e32 v70, v70, v64
	v_mul_f32_e32 v69, v69, v64
	v_mul_f32_e32 v68, v68, v64
	v_mul_f32_e32 v67, v67, v64
	v_mul_f32_e32 v66, v66, v64
	v_mul_f32_e32 v64, v65, v64
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v148, v148, v158, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v79, v79, v202, v135
	v_fma_f32 v78, v78, v201, v134
	v_fma_f32 v77, v77, v200, v133
	v_fma_f32 v76, v76, v199, v132
	v_fma_f32 v75, v75, v198, v131
	v_fma_f32 v74, v74, v197, v130
	v_fma_f32 v73, v73, v195, v129
	v_fma_f32 v72, v72, v194, v128
	v_fma_f32 v158, v64, v204, v121
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v64, 16, v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v135, v135, v79, s3
	v_cndmask_b32_e64 v134, v134, v78, s3
	v_cndmask_b32_e64 v133, v133, v77, s3
	v_cndmask_b32_e64 v132, v132, v76, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v249, v64 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v131, v131, v75, s3
	v_cndmask_b32_e64 v130, v130, v74, s3
	v_cndmask_b32_e64 v129, v129, v73, s3
	v_cndmask_b32_e64 v128, v128, v72, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[72:75], v254 offset:41472
	ds_load_b128 v[76:79], v254 offset:41488
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v153, v157, v153, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v157, v173, v217, v149
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v111, v164, v111, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v154, v154, v220, v152
	v_fma_f32 v156, v156, v218, v150
	v_fma_f32 v120, v69, v120, v125
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v149, v149, v157, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v157, v66, v189, v122
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v152, v152, v154, s3
	v_cndmask_b32_e64 v150, v150, v156, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v154, v70, v192, v126
	v_fma_f32 v156, v67, v190, v123
	v_fma_f32 v87, v87, v245, v188
	v_fma_f32 v110, v110, v229, v165
	v_fma_f32 v116, v116, v223, v159
	v_fma_f32 v89, v89, v250, v186
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v120, v125, v120, s3
	v_cndmask_b32_e64 v87, v188, v87, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v189, v72, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v164, v180, v210, v142
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v180, v78, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v155, v155, v219, v151
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v195, v78, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v80, v203, v136
	v_fma_f32 v80, v71, v193, v127
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v142, v142, v164, s3
	v_cndmask_b32_e64 v151, v151, v155, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v155, v68, v191, v124
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v81, v136, v65, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[64:67], v254 offset:40960
	ds_load_b128 v[68:71], v254 offset:40976
	v_mul_f32_e32 v164, v77, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v103, v103, v235, v171
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v110, v165, v110, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v190, v73, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v116, v159, v116, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v159, v175, v215, v147
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v103, v171, v103, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v174, v72, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v113, v113, v226, v162
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v175, v73, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v112, v112, v227, v163
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v89, v186, v89, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v193, v76, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v113, v162, v113, s3
	v_cndmask_b32_e64 v147, v147, v159, s3
	v_cndmask_b32_e64 v112, v163, v112, s3
	v_cndmask_b32_e64 v80, v127, v80, s3
	v_cndmask_b32_e64 v126, v126, v154, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v125, v64, v85
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v171, v69, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v108, v108, v231, v167
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v188, v71, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v165, v181, v209, v141
	v_fma_f32 v88, v88, v244, v187
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v173, v71, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v108, v167, v108, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v167, v183, v207, v139
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v141, v141, v165, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v165, v78, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v102, v102, v236, v172
	v_fma_f32 v114, v114, v225, v161
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v139, v139, v167, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v167, v65, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v106, v106, v232, v168
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v102, v172, v102, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v172, v70, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v115, v115, v224, v160
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v88, v187, v88, s3
	v_cndmask_b32_e64 v106, v168, v106, s3
	v_cndmask_b32_e64 v114, v161, v114, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v168, v184, v206, v138
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v115, v160, v115, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v160, v176, v214, v146
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v184, v67, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v161, v177, v213, v145
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v186, v69, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v163, v179, v211, v143
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v187, v70, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v162, v178, v212, v144
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v146, v146, v160, s3
	v_cndmask_b32_e64 v145, v145, v161, s3
	v_cndmask_b32_e64 v143, v143, v163, s3
	v_cndmask_b32_e64 v124, v124, v155, s3
	v_cndmask_b32_e64 v144, v144, v162, s3
	v_cndmask_b32_e64 v123, v123, v156, s3
	v_cndmask_b32_e64 v122, v122, v157, s3
	v_cndmask_b32_e64 v121, v121, v158, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v127, v65, v85
	v_mul_f32_e32 v136, v66, v85
	v_mul_f32_e32 v154, v67, v85
	v_mul_f32_e32 v155, v68, v85
	v_mul_f32_e32 v156, v69, v85
	v_mul_f32_e32 v157, v70, v85
	v_mul_f32_e32 v158, v71, v85
	v_mul_f32_e32 v159, v72, v85
	v_mul_f32_e32 v160, v73, v85
	v_mul_f32_e32 v161, v74, v85
	v_mul_f32_e32 v162, v75, v85
	v_mul_f32_e32 v163, v76, v85
	v_mul_f32_e32 v85, v79, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v104, v104, v234, v170
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v191, v74, v83 :: v_dual_lshlrev_b32 v84, 16, v84
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v138, v138, v168, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v168, v66, v82
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v104, v170, v104, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v170, v68, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v109, v109, v230, v166
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v181, v64, v83
	v_mul_f32_e32 v183, v66, v83
	v_mul_f32_e32 v192, v75, v83
	v_mul_f32_e32 v66, v66, v84
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v109, v166, v109, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v166, v182, v208, v140
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v182, v65, v83
	v_mul_f32_e32 v65, v65, v84
	v_mul_f32_e32 v69, v69, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v155, v12, v120
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v140, v140, v166, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v166, v64, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v105, v105, v233, v169
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v64, v64, v84
	v_mul_f32_e32 v176, v74, v82
	v_mul_f32_e32 v177, v75, v82
	v_mul_f32_e32 v178, v76, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v105, v169, v105, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v169, v185, v205, v137
	v_fma_f32 v56, v64, v56, v101
	v_fma_f32 v64, v65, v57, v100
	v_fma_f32 v65, v66, v58, v99
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v179, v77, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v137, v137, v169, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v169, v67, v82
	v_mul_f32_e32 v67, v67, v84
	v_dual_mul_f32 v82, v79, v82 :: v_dual_mul_f32 v185, v68, v83
	v_mul_f32_e32 v194, v77, v83
	v_dual_mul_f32 v83, v79, v83 :: v_dual_mul_f32 v68, v68, v84
	v_mul_f32_e32 v70, v70, v84
	v_mul_f32_e32 v71, v71, v84
	v_mul_f32_e32 v72, v72, v84
	v_mul_f32_e32 v73, v73, v84
	v_mul_f32_e32 v74, v74, v84
	v_mul_f32_e32 v75, v75, v84
	v_mul_f32_e32 v76, v76, v84
	v_mul_f32_e32 v77, v77, v84
	v_mul_f32_e32 v78, v78, v84
	v_mul_f32_e32 v79, v79, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v84, v125, v107, v121
	v_fma_f32 v16, v159, v16, v129
	v_fma_f32 v125, v160, v17, v130
	v_fma_f32 v24, v166, v24, v137
	v_fma_f32 v66, v67, v59, v98
	v_fma_f32 v67, v69, v61, v96
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v120, v12, s2
	v_cndmask_b32_e64 v12, v99, v65, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v65, 16, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v154, v11, v124
	v_fma_f32 v18, v161, v18, v131
	v_fma_f32 v28, v170, v28, v141
	v_fma_f32 v154, v175, v33, v146
	v_fma_f32 v60, v68, v60, v97
	v_fma_f32 v68, v70, v62, v95
	v_fma_f32 v69, v71, v63, v94
	v_fma_f32 v71, v73, v2, v92
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v129, v16, s2
	v_cndmask_b32_e64 v2, v137, v24, s2
	v_cndmask_b32_e64 v16, v98, v66, s2
	v_cndmask_b32_e64 v24, v96, v67, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v66, 0xcf0, v243
	v_and_or_b32 v67, v196, 64, v65
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v39, v82, v39, v152
	v_fma_f32 v82, v182, v41, v117
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v131, v18, s2
	v_cndmask_b32_e64 v18, v141, v28, s2
	v_cndmask_b32_e64 v28, v95, v68, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v68, 13, v0
	v_xor_b32_e32 v66, v67, v66
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v40, v181, v40, v153
	v_fma_f32 v9, v127, v9, v122
	v_fma_f32 v10, v136, v10, v123
	v_fma_f32 v15, v158, v15, v128
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_or_b32 v66, 0xe000, v68, v66
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v26, v168, v26, v139
	v_fma_f32 v158, v183, v42, v116
	v_fma_f32 v19, v162, v19, v132
	v_fma_f32 v20, v163, v20, v133
	v_fma_f32 v44, v185, v44, v114
	v_fma_f32 v14, v157, v14, v80
	v_fma_f32 v27, v169, v27, v140
	v_fma_f32 v30, v172, v30, v143
	v_fma_f32 v160, v187, v46, v112
	v_fma_f32 v32, v174, v32, v145
	v_fma_f32 v35, v177, v35, v148
	v_fma_f32 v36, v178, v36, v149
	v_fma_f32 v48, v189, v48, v110
	v_fma_f32 v70, v72, v1, v93
	v_fma_f32 v155, v176, v34, v147
	v_fma_f32 v43, v184, v43, v115
	v_fma_f32 v162, v191, v50, v108
	v_fma_f32 v72, v74, v3, v91
	v_fma_f32 v73, v75, v4, v90
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v1, v121, v84, s2
	v_cndmask_b32_e64 v3, v153, v40, s2
	v_cndmask_b32_e64 v4, v101, v56, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v67, 0, v66
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v107, v156, v13, v126
	v_fma_f32 v74, v76, v5, v89
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v5, v122, v9, s2
	v_cndmask_b32_e64 v9, v123, v10, s2
	v_cndmask_b32_e64 v13, v124, v11, s2
	v_cndmask_b32_e64 v10, v139, v26, s2
	v_cndmask_b32_e64 v11, v116, v158, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v159, v186, v45, v113
	v_fma_f32 v161, v190, v49, v109
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v132, v19, s2
	v_cndmask_b32_e64 v49, v133, v20, s2
	v_cndmask_b32_e64 v19, v114, v44, s2
	v_cndmask_b32_e64 v20, v97, v60, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v23, v85, v23, v81
	v_fma_f32 v85, v167, v25, v138
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v80, v14, s2
	v_cndmask_b32_e64 v14, v140, v27, s2
	v_cndmask_b32_e64 v26, v143, v30, s2
	v_cndmask_b32_e64 v27, v112, v160, s2
	v_cndmask_b32_e64 v34, v145, v32, s2
	v_cndmask_b32_e64 v46, v148, v35, s2
	v_cndmask_b32_e64 v50, v149, v36, s2
	v_cndmask_b32_e64 v35, v110, v48, s2
	v_cndmask_b32_e64 v36, v93, v70, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v136, v171, v29, v142
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v128, v15, s2
	v_cndmask_b32_e64 v42, v147, v155, s2
	v_cndmask_b32_e64 v15, v115, v43, s2
	v_cndmask_b32_e64 v43, v108, v162, s2
	v_cndmask_b32_e64 v44, v91, v72, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v67, v[1:4]
	ds_store_b128 v67, v[9:12] offset:256
	ds_store_b128 v67, v[17:20] offset:512
	ds_store_b128 v67, v[25:28] offset:768
	ds_store_b128 v67, v[33:36] offset:4096
	ds_store_b128 v67, v[41:44] offset:4352
	scratch_load_b32 v1, off, off offset:4  ; 4-byte Folded Reload
	v_lshlrev_b32_e32 v0, 6, v0
	v_lshlrev_b32_e32 v3, 2, v65
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v31, v173, v31, v144
	v_fma_f32 v47, v188, v47, v111
	v_fma_f32 v51, v192, v51, v106
	v_fma_f32 v52, v193, v52, v105
	v_fma_f32 v127, v164, v21, v134
	v_fma_f32 v22, v165, v22, v135
	v_fma_f32 v157, v180, v38, v151
	v_fma_f32 v164, v195, v54, v103
	v_fma_f32 v76, v78, v7, v87
	v_fma_f32 v156, v179, v37, v150
	v_fma_f32 v163, v194, v53, v104
	v_fma_f32 v75, v77, v6, v88
	v_fma_f32 v83, v83, v55, v102
	v_fma_f32 v77, v79, v8, v86
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v130, v125, s2
	v_cndmask_b32_e64 v6, v138, v85, s2
	v_cndmask_b32_e64 v30, v144, v31, s2
	v_cndmask_b32_e64 v38, v146, v154, s2
	v_cndmask_b32_e64 v62, v152, v39, s2
	v_cndmask_b32_e64 v7, v117, v82, s2
	v_cndmask_b32_e64 v31, v111, v47, s2
	v_cndmask_b32_e64 v39, v109, v161, s2
	v_cndmask_b32_e64 v47, v106, v51, s2
	v_cndmask_b32_e64 v51, v105, v52, s2
	v_cndmask_b32_e64 v8, v100, v64, s2
	v_cndmask_b32_e64 v40, v92, v71, s2
	v_cndmask_b32_e64 v52, v89, v74, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v2, v66, 32, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v135, v22, s2
	v_cndmask_b32_e64 v58, v151, v157, s2
	v_cndmask_b32_e64 v59, v103, v164, s2
	v_cndmask_b32_e64 v48, v90, v73, s2
	v_cndmask_b32_e64 v60, v87, v76, s2
	v_cndmask_b32_e64 v21, v126, v107, s2
	v_cndmask_b32_e64 v53, v134, v127, s2
	v_cndmask_b32_e64 v61, v81, v23, s2
	v_cndmask_b32_e64 v22, v142, v136, s2
	v_cndmask_b32_e64 v54, v150, v156, s2
	v_cndmask_b32_e64 v23, v113, v159, s2
	v_cndmask_b32_e64 v55, v104, v163, s2
	v_cndmask_b32_e64 v56, v88, v75, s2
	v_cndmask_b32_e64 v63, v102, v83, s2
	v_cndmask_b32_e64 v32, v94, v69, s2
	v_cndmask_b32_e64 v64, v86, v77, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_b128 v67, v[49:52] offset:4608
	ds_store_b128 v67, v[57:60] offset:4864
	ds_store_b128 v2, v[5:8]
	ds_store_b128 v2, v[13:16] offset:256
	ds_store_b128 v2, v[21:24] offset:512
	ds_store_b128 v2, v[29:32] offset:768
	ds_store_b128 v2, v[37:40] offset:4096
	ds_store_b128 v2, v[45:48] offset:4352
	ds_store_b128 v2, v[53:56] offset:4608
	ds_store_b128 v2, v[61:64] offset:4864
	v_add_lshl_u32 v64, s38, v118, 2
	v_add_lshl_u32 v65, s70, v118, 2
	v_add_lshl_u32 v66, s69, v118, 2
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s2, s27, 6
	s_mul_i32 s3, s27, 7
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_mov_b32 s27, s15
	v_add_lshl_u32 v67, s68, v118, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s65, s38, s2
	s_add_i32 s64, s38, s3
	s_add_i32 s2, s38, s96
	s_add_i32 s3, s38, s97
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 5, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_and_or_b32 v0, 0x300, v0, v1
	scratch_load_b32 v1, off, off           ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_or3_b32 v41, v0, v3, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v4, 0, v41
	v_xad_u32 v12, 0x2010, v41, 0
	v_xad_u32 v28, 0x6030, v41, 0
	v_xad_u32 v20, 0x4020, v41, 0
	v_xad_u32 v44, 0xa050, v41, 0
	ds_load_b128 v[0:3], v4
	ds_load_b128 v[4:7], v4 offset:128
	ds_load_b128 v[8:11], v12
	ds_load_b128 v[12:15], v12 offset:128
	ds_load_b128 v[16:19], v20
	ds_load_b128 v[20:23], v20 offset:128
	v_xad_u32 v36, 0x8040, v41, 0
	ds_load_b128 v[24:27], v28
	ds_load_b128 v[28:31], v28 offset:128
	v_xad_u32 v52, 0xc060, v41, 0
	v_xad_u32 v60, 0xe070, v41, 0
	ds_load_b128 v[40:43], v44
	ds_load_b128 v[44:47], v44 offset:128
	ds_load_b128 v[48:51], v52
	ds_load_b128 v[52:55], v52 offset:128
	ds_load_b128 v[56:59], v60
	ds_load_b128 v[32:35], v36
	ds_load_b128 v[36:39], v36 offset:128
	ds_load_b128 v[60:63], v60 offset:128
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v64, s[24:27], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v8, v65, s[24:27], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v16, v66, s[24:27], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v24, v67, s[24:27], 0 offen
	v_add_lshl_u32 v0, s67, v118, 2
	v_add_lshl_u32 v8, s66, v118, 2
	v_add_lshl_u32 v16, s65, v118, 2
	v_add_lshl_u32 v24, s64, v118, 2
	v_add_lshl_u32 v64, s63, v118, 2
	s_waitcnt lgkmcnt(2)
	s_clause 0x4
	buffer_atomic_add_f32 v32, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v40, v8, s[24:27], 0 offen
	buffer_atomic_add_f32 v48, v16, s[24:27], 0 offen
	buffer_atomic_add_f32 v56, v24, s[24:27], 0 offen
	buffer_atomic_add_f32 v4, v64, s[24:27], 0 offen
	v_add_lshl_u32 v0, s62, v118, 2
	v_add_lshl_u32 v4, s61, v118, 2
	v_add_lshl_u32 v8, s60, v118, 2
	v_add_lshl_u32 v16, s59, v118, 2
	v_add_lshl_u32 v24, s58, v118, 2
	s_clause 0x2
	buffer_atomic_add_f32 v12, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v20, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v28, v8, s[24:27], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v36, v16, s[24:27], 0 offen
	buffer_atomic_add_f32 v44, v24, s[24:27], 0 offen
	v_add_lshl_u32 v0, s57, v118, 2
	v_add_lshl_u32 v4, s56, v118, 2
	v_add_lshl_u32 v8, s55, v118, 2
	v_add_lshl_u32 v12, s54, v118, 2
	v_add_lshl_u32 v16, s53, v118, 2
	buffer_atomic_add_f32 v52, v0, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v60, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v1, v8, s[24:27], 0 offen
	buffer_atomic_add_f32 v9, v12, s[24:27], 0 offen
	buffer_atomic_add_f32 v17, v16, s[24:27], 0 offen
	v_add_lshl_u32 v0, s52, v118, 2
	v_add_lshl_u32 v1, s51, v118, 2
	v_add_lshl_u32 v4, s50, v118, 2
	v_add_lshl_u32 v8, s49, v118, 2
	v_add_lshl_u32 v9, s48, v118, 2
	s_clause 0x4
	buffer_atomic_add_f32 v25, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v33, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v41, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v49, v8, s[24:27], 0 offen
	buffer_atomic_add_f32 v57, v9, s[24:27], 0 offen
	v_add_lshl_u32 v0, s47, v118, 2
	v_add_lshl_u32 v1, s46, v118, 2
	v_add_lshl_u32 v4, s45, v118, 2
	v_add_lshl_u32 v8, s44, v118, 2
	v_add_lshl_u32 v9, s43, v118, 2
	s_clause 0x4
	buffer_atomic_add_f32 v5, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v13, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v21, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v29, v8, s[24:27], 0 offen
	buffer_atomic_add_f32 v37, v9, s[24:27], 0 offen
	v_add_lshl_u32 v0, s42, v118, 2
	v_add_lshl_u32 v1, s41, v118, 2
	v_add_lshl_u32 v4, s40, v118, 2
	v_add_lshl_u32 v5, s39, v118, 2
	v_add_lshl_u32 v8, s37, v118, 2
	s_clause 0x4
	buffer_atomic_add_f32 v45, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v53, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v61, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v2, v5, s[24:27], 0 offen
	buffer_atomic_add_f32 v10, v8, s[24:27], 0 offen
	v_add_lshl_u32 v0, s36, v118, 2
	v_add_lshl_u32 v1, s35, v118, 2
	v_add_lshl_u32 v2, s34, v118, 2
	v_add_lshl_u32 v4, s31, v118, 2
	v_add_lshl_u32 v5, s30, v118, 2
	s_clause 0x4
	buffer_atomic_add_f32 v18, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v26, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v34, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v42, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v50, v5, s[24:27], 0 offen
	v_add_lshl_u32 v0, s20, v118, 2
	v_add_lshl_u32 v1, s19, v118, 2
	v_add_lshl_u32 v2, s17, v118, 2
	v_add_lshl_u32 v4, s13, v118, 2
	v_add_lshl_u32 v5, s11, v118, 2
	s_clause 0x4
	buffer_atomic_add_f32 v58, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v6, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v14, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v22, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v30, v5, s[24:27], 0 offen
	v_add_lshl_u32 v0, s8, v118, 2
	v_add_lshl_u32 v1, s6, v118, 2
	v_add_lshl_u32 v2, s4, v118, 2
	v_add_lshl_u32 v4, s1, v118, 2
	v_add_lshl_u32 v5, s33, v118, 2
	s_clause 0x4
	buffer_atomic_add_f32 v38, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v46, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v54, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v62, v4, s[24:27], 0 offen
	buffer_atomic_add_f32 v3, v5, s[24:27], 0 offen
	v_add_lshl_u32 v0, s28, v118, 2
	v_add_lshl_u32 v1, s22, v118, 2
	v_add_lshl_u32 v2, s29, v118, 2
	v_add_lshl_u32 v3, s23, v118, 2
	v_add_lshl_u32 v4, s21, v118, 2
	s_clause 0x4
	buffer_atomic_add_f32 v11, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v19, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v27, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v35, v3, s[24:27], 0 offen
	buffer_atomic_add_f32 v43, v4, s[24:27], 0 offen
	v_add_lshl_u32 v0, s18, v118, 2
	v_add_lshl_u32 v1, s16, v118, 2
	v_add_lshl_u32 v2, s12, v118, 2
	v_add_lshl_u32 v3, s9, v118, 2
	v_add_lshl_u32 v4, s10, v118, 2
	s_clause 0x4
	buffer_atomic_add_f32 v51, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v59, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v7, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v15, v3, s[24:27], 0 offen
	buffer_atomic_add_f32 v23, v4, s[24:27], 0 offen
	v_add_lshl_u32 v0, s7, v118, 2
	v_add_lshl_u32 v1, s5, v118, 2
	v_add_lshl_u32 v2, s2, v118, 2
	v_add_lshl_u32 v3, s3, v118, 2
	v_add_lshl_u32 v4, s0, v118, 2
	s_clause 0x4
	buffer_atomic_add_f32 v31, v0, s[24:27], 0 offen
	buffer_atomic_add_f32 v39, v1, s[24:27], 0 offen
	buffer_atomic_add_f32 v47, v2, s[24:27], 0 offen
	buffer_atomic_add_f32 v55, v3, s[24:27], 0 offen
	buffer_atomic_add_f32 v63, v4, s[24:27], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 60
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
		.amdhsa_next_free_sgpr 99
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 99
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 60
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 32740
; TotalNumSgprs: 101
; NumVgprs: 256
; ScratchSize: 60
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 101
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
	.short	417                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	363                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 60
    .sgpr_count:     101
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc64_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 14
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
