	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_load_b32 s36, s[0:1], 0x38
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v2, 2, v0
	v_lshlrev_b32_e32 v30, 4, v0
	v_lshrrev_b32_e32 v13, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v29, 48, v30
	v_or_b32_e32 v14, 16, v13
	v_or_b32_e32 v15, 32, v13
	v_or_b32_e32 v16, 48, v13
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s14, 63
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
	s_mov_b64 s[24:25], s[22:23]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s14, s15, 48
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
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
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s6, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s7, s8, s6
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s4, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s8, s7, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s4
	s_abs_i32 s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s7
	s_sub_i32 s10, 0, s7
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v1, s36, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v2, s15, v13
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s8
	s_mul_i32 s10, s2, s7
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s2, 1
	s_sub_i32 s11, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s2, s10, s2
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s2, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s2, s10, s2
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s37, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s2, s2, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s37, v13
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s2, s2, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s37, v14
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s5, s2, s8
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s31, s2, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s5, s4, s5
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s36, v3
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s6, s5, s6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v5, s37, v15
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s30, s6, 6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v6, s37, v16
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s6, s30, s36
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s7, s36, 0x7f
.Ltmp13:
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v19, v1, v29, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s9, s15, s37
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s7, 0x7f
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s36, v4
	v_cmp_gt_i32_e64 s4, s36, v5
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v3, s37, v19
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v35, 15, v0
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s5, s36, v6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s35, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s8, s31, s9
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v17, v35, 4, v2
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s37, v29
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s29, s15, 4
	s_lshl_b32 s28, s15, 5
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s8, v17
	.loc	1 399 23 is_stmt 1              ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s36, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v18, s14, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s5, s5, s35
	s_and_b32 s3, s3, s35
	s_and_b32 s4, s4, s35
	s_and_b32 vcc_lo, vcc_lo, s35
	s_and_b32 s2, s2, s35
	s_cmpk_gt_i32 s7, 0xff
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v20, s29, v17
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_addk_i32 s37, 0x80
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v21, s28, v17
	v_add_nc_u32_e32 v2, s8, v18
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v22, s37, v29
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s8, v20
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v27, s37, v13
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s8, v21
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v28, s37, v14
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v10, 0x80000000, v2, s5
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s5, s15, 7
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s36, v22
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v31, s37, v15
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v11, 0x80000000, v4, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_add_i32 s8, s8, s5
	.loc	1 404 30 is_stmt 1              ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v33, s37, v19
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s36, v27
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v32, s37, v16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v12, 0x80000000, v5, s4
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v34, s8, v17
	.loc	1 400 23 is_stmt 1              ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s36, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v44, s8, v20
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s5, s36, v31
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[2:5], v2, s[20:23], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[6:9], v1, s[24:27], 0 offen
	buffer_load_b128 v[23:26], v11, s[24:27], 0 offen
	buffer_load_b128 v[36:39], v12, s[24:27], 0 offen
	buffer_load_b128 v[40:43], v10, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v1, 0x80000000, v33, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v45, s8, v21
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s6, s36, v32
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v10, 0x80000000, v34, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v46, s8, v18
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v11, 0x80000000, v44, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v12, 0x80000000, v45 :: v_dual_lshlrev_b32 v31, 1, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s6, s2
	s_mov_b32 s4, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v22, 0x80000000, v46, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[44:47], v1, s[20:23], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[48:51], v10, s[24:27], 0 offen
	buffer_load_b128 v[52:55], v11, s[24:27], 0 offen
	buffer_load_b128 v[56:59], v12, s[24:27], 0 offen
	buffer_load_b128 v[60:63], v22, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v1, 48, v31
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, 0, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s7, 0x17f
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v22, v30, v1
	v_lshlrev_b32_e32 v1, 3, v0
	v_add_nc_u32_e32 v10, 0, v22
	s_waitcnt vmcnt(9)
	ds_store_b128 v10, v[2:5] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v11, v[6:9]
	s_waitcnt vmcnt(7)
	ds_store_b128 v11, v[23:26] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v11, v[36:39] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v11, v[40:43] offset:12288
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v10, v[44:47] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v11, v[48:51] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v11, v[52:55] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v11, v[56:59] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v11, v[60:63] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v2, 48, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v97, v35, 6, v2
	v_xor_b32_e32 v98, 16, v97
	v_xor_b32_e32 v99, 32, v97
	v_xor_b32_e32 v100, 48, v97
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v90, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s33, 0, 0x9000
	s_add_i32 s34, 0, 0x4000
	s_branch .LBB0_6
.LBB0_3:
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr99
                                        ; implicit-def: $vgpr100
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v1, 48, v1
	v_lshrrev_b32_e32 v2, 1, v0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s38, s7, 7
	s_mov_b32 s5, s4
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v97, v35, 6, v1
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v23, 0x70, v2
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	v_xor_b32_e32 v98, 16, v97
	v_xor_b32_e32 v99, 32, v97
	v_xor_b32_e32 v100, 48, v97
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v32, 0
	s_addk_i32 s37, 0x80
	s_mov_b32 s39, 1
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s33, 0, 0x9000
	s_add_i32 s34, 0, 0x4000
	s_add_i32 s38, s38, -3
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s1, s5, 7
	s_mov_b32 s3, s4
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s4, s37, s1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add3_u32 v28, s3, v23, v35
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s4, v29
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v10, s4, v19
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v161, s0, v97
	v_add_nc_u32_e32 v162, s0, v98
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_add_i32 s6, s39, 1
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s36, v9
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v24, v28 offset:3328
	ds_load_u8 v25, v28 offset:3072
	ds_load_u8 v26, v28 offset:3840
	ds_load_u8 v27, v28 offset:3584
	ds_load_u8 v101, v28 offset:2304
	ds_load_u8 v102, v28 offset:2048
	ds_load_u8 v103, v28 offset:2816
	ds_load_u8 v104, v28 offset:2560
	ds_load_u8 v105, v28 offset:1280
	ds_load_u8 v106, v28 offset:1024
	ds_load_u8 v107, v28 offset:1792
	ds_load_u8 v108, v28 offset:1536
	ds_load_u8 v109, v28 offset:256
	ds_load_u8 v110, v28
	ds_load_u8 v111, v28 offset:768
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[117:120], v161
	ds_load_b128 v[121:124], v162
	ds_load_b128 v[133:136], v161 offset:1024
	ds_load_b128 v[137:140], v162 offset:1024
	ds_load_b128 v[149:152], v161 offset:2048
	ds_load_b128 v[153:156], v162 offset:2048
	ds_load_b128 v[173:176], v161 offset:3072
	ds_load_b128 v[177:180], v162 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v25, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v26, v102, v101, 0xc0c0004
	ds_load_u8 v102, v28 offset:7936
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v101, v104, v103, 0xc0c0004
	v_lshl_or_b32 v27, v25, 16, v24
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v25, v106, v105, 0xc0c0004
	ds_load_u8 v104, v28 offset:7680
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v103, v108, v107, 0xc0c0004
	ds_load_u8 v107, v28 offset:6912
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v106, v110, v109, 0xc0c0004
	ds_load_u8 v109, v28 offset:6656
	ds_load_u8 v110, v28 offset:5376
	v_lshl_or_b32 v25, v103, 16, v25
	ds_load_u8 v103, v28 offset:6400
	ds_load_u8 v105, v28 offset:6144
	v_lshl_or_b32 v26, v101, 16, v26
	ds_load_u8 v24, v28 offset:7424
	ds_load_u8 v101, v28 offset:7168
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v103, v105, v103, 0xc0c0004
	ds_load_u8 v105, v28 offset:5888
	v_perm_b32 v107, v109, v107, 0xc0c0004
	ds_load_u8 v109, v28 offset:5632
	v_perm_b32 v102, v104, v102, 0xc0c0004
	ds_load_u8 v104, v28 offset:5120
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v101, v101, v24, 0xc0c0004
	v_lshl_or_b32 v159, v107, 16, v103
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v160, v102, 16, v101
	ds_load_u8 v101, v28 offset:4352
	ds_load_u8 v102, v28 offset:4096
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v103, v104, v110, 0xc0c0004
	ds_load_u8 v104, v28 offset:4864
	v_perm_b32 v105, v109, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v158, v105, 16, v103
	ds_load_u8 v103, v28 offset:3456
	ds_load_u8 v105, v28 offset:3200
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v28 offset:3968
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v103, v105, v103, 0xc0c0004
	ds_load_u8 v105, v28 offset:2432
	ds_load_u8 v112, v28 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v24, v108, 16, v106
	ds_load_u8 v106, v28 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v106, v104, 0xc0c0004
	ds_load_u8 v106, v28 offset:3712
	v_lshl_or_b32 v157, v104, 16, v101
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v106, v102, 0xc0c0004
	ds_load_u8 v106, v28 offset:2176
	v_lshl_or_b32 v168, v102, 16, v103
	ds_load_u8 v101, v28 offset:1408
	ds_load_u8 v102, v28 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v28 offset:2944
	ds_load_u8 v107, v28 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v28 offset:1920
	ds_load_u8 v103, v28 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v167, v106, 16, v105
	v_lshl_or_b32 v166, v102, 16, v101
	ds_load_u8 v101, v28 offset:384
	ds_load_u8 v102, v28 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v28 offset:896
	ds_load_u8 v103, v28 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v102, 16, v101
	ds_load_u8 v101, v28 offset:7552
	ds_load_u8 v102, v28 offset:7296
	v_wmma_i32_16x16x16_iu8 v[109:116], v[165:168], v[117:120], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[165:168], v[133:136], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[165:168], v[149:152], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v28 offset:8064
	ds_load_u8 v103, v28 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v28 offset:6528
	ds_load_u8 v104, v28 offset:6272
	v_lshl_or_b32 v172, v102, 16, v101
	ds_load_u8 v101, v28 offset:5504
	ds_load_u8 v102, v28 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v28 offset:7040
	ds_load_u8 v105, v28 offset:6784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v171, v104, 16, v103
	ds_load_u8 v102, v28 offset:6016
	ds_load_u8 v103, v28 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	v_lshl_or_b32 v170, v102, 16, v101
	ds_load_u8 v101, v28 offset:4480
	ds_load_u8 v102, v28 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v28 offset:4992
	ds_load_u8 v103, v28 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v169, v102, 16, v101
	v_wmma_i32_16x16x16_iu8 v[101:108], v[24:27], v[117:120], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[169:172], v[121:124], v[109:116] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[157:160], v[121:124], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[24:27], v[133:136], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[169:172], v[137:140], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[169:172], v[153:156], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[157:160], v[137:140], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[24:27], v[149:152], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[157:160], v[153:156], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[24:27], v[173:176], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v24, v28 offset:11520
	ds_load_u8 v25, v28 offset:11264
	v_wmma_i32_16x16x16_iu8 v[149:156], v[157:160], v[177:180], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[165:168], v[173:176], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v173, s0, v99
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[157:164], v[169:172], v[177:180], v[157:164] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v28 offset:12032
	ds_load_u8 v26, v28 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v28 offset:10496
	ds_load_u8 v27, v28 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v28 offset:11008
	ds_load_u8 v165, v28 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v165, v27, 0xc0c0004
	v_lshl_or_b32 v27, v25, 16, v24
	ds_load_u8 v24, v28 offset:9472
	ds_load_u8 v25, v28 offset:9216
	v_lshl_or_b32 v26, v165, 16, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v28 offset:9984
	ds_load_u8 v165, v28 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v165, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v25, 16, v24
	ds_load_u8 v24, v28 offset:8448
	ds_load_u8 v165, v28 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v165, v24, 0xc0c0004
	ds_load_u8 v165, v28 offset:8960
	ds_load_u8 v166, v28 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v24, v165, 16, v24
	ds_load_u8 v165, v28 offset:11648
	ds_load_u8 v166, v28 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v28 offset:12160
	ds_load_u8 v167, v28 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v28 offset:10624
	ds_load_u8 v168, v28 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v28 offset:11136
	ds_load_u8 v169, v28 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v169, v168, 0xc0c0004
	v_lshl_or_b32 v168, v166, 16, v165
	ds_load_u8 v165, v28 offset:9600
	ds_load_u8 v166, v28 offset:9344
	v_lshl_or_b32 v167, v169, 16, v167
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v28 offset:10112
	ds_load_u8 v169, v28 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v169, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v166, 16, v165
	ds_load_u8 v165, v28 offset:8576
	ds_load_u8 v169, v28 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v169, v165, 0xc0c0004
	ds_load_u8 v169, v28 offset:9088
	ds_load_u8 v170, v28 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v169, 16, v165
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[169:172], v173
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[24:27], v[169:172], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[165:168], v[169:172], v[109:116] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[169:172], v173 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[24:27], v[169:172], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[165:168], v[169:172], v[125:132] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[169:172], v173 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[24:27], v[169:172], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[165:168], v[169:172], v[141:148] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[169:172], v173 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[149:156], v[24:27], v[169:172], v[149:156] neg_lo:[1,1,0]
	ds_load_u8 v24, v28 offset:15616
	ds_load_u8 v25, v28 offset:15360
	v_wmma_i32_16x16x16_iu8 v[157:164], v[165:168], v[169:172], v[157:164] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v28 offset:16128
	ds_load_u8 v26, v28 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v28 offset:14592
	ds_load_u8 v27, v28 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v28 offset:15104
	ds_load_u8 v165, v28 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v165, v27, 0xc0c0004
	v_lshl_or_b32 v27, v25, 16, v24
	ds_load_u8 v24, v28 offset:13568
	ds_load_u8 v25, v28 offset:13312
	v_lshl_or_b32 v26, v165, 16, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v28 offset:14080
	ds_load_u8 v165, v28 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v165, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v25, 16, v24
	ds_load_u8 v24, v28 offset:12544
	ds_load_u8 v165, v28 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v165, v24, 0xc0c0004
	ds_load_u8 v165, v28 offset:13056
	ds_load_u8 v166, v28 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v24, v165, 16, v24
	ds_load_u8 v165, v28 offset:15744
	ds_load_u8 v166, v28 offset:15488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v28 offset:16256
	ds_load_u8 v167, v28 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v28 offset:14720
	ds_load_u8 v168, v28 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v28 offset:15232
	ds_load_u8 v169, v28 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v169, v168, 0xc0c0004
	v_lshl_or_b32 v168, v166, 16, v165
	ds_load_u8 v165, v28 offset:13696
	ds_load_u8 v166, v28 offset:13440
	v_lshl_or_b32 v167, v169, 16, v167
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v28 offset:14208
	ds_load_u8 v169, v28 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v169, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v166, 16, v165
	ds_load_u8 v165, v28 offset:12672
	ds_load_u8 v169, v28 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v169, v165, 0xc0c0004
	ds_load_u8 v169, v28 offset:13184
	ds_load_u8 v28, v28 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v28, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v28, 16, v165
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v28, s0, v100
	ds_load_b128 v[169:172], v28
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[24:27], v[169:172], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[165:168], v[169:172], v[109:116] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[169:172], v28 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[24:27], v[169:172], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[165:168], v[169:172], v[125:132] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[169:172], v28 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[24:27], v[169:172], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[165:168], v[169:172], v[141:148] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[169:172], v28 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v28, v102
	v_cvt_f32_i32_e32 v102, v104
	v_cvt_f32_i32_e32 v104, v106
	v_cvt_f32_i32_e32 v106, v108
	v_cvt_f32_i32_e32 v108, v110
	v_cvt_f32_i32_e32 v110, v112
	v_cvt_f32_i32_e32 v112, v114
	v_cvt_f32_i32_e32 v114, v116
	v_cvt_f32_i32_e32 v116, v118
	v_cvt_f32_i32_e32 v118, v120
	v_cvt_f32_i32_e32 v120, v122
	v_cvt_f32_i32_e32 v122, v124
	v_cvt_f32_i32_e32 v124, v126
	v_cvt_f32_i32_e32 v126, v128
	v_cvt_f32_i32_e32 v128, v130
	v_cvt_f32_i32_e32 v130, v132
	v_cvt_f32_i32_e32 v132, v134
	v_cvt_f32_i32_e32 v134, v136
	v_cvt_f32_i32_e32 v136, v138
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[149:156], v[24:27], v[169:172], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[165:168], v[169:172], v[157:164] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v138, v140
	v_cvt_f32_i32_e32 v140, v142
	v_cvt_f32_i32_e32 v142, v144
	v_cvt_f32_i32_e32 v144, v146
	v_cvt_f32_i32_e32 v146, v148
	v_cvt_f32_i32_e32 v148, v150
	v_cvt_f32_i32_e32 v150, v152
	v_cvt_f32_i32_e32 v152, v154
	v_cvt_f32_i32_e32 v154, v156
	v_cvt_f32_i32_e32 v156, v158
	v_cvt_f32_i32_e32 v158, v160
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v160, s4, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v27, v101
	v_cvt_f32_i32_e32 v101, v103
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v105, v107
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s36, v160
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v160, s4, v14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v107, v109
	v_cvt_f32_i32_e32 v109, v111
	v_cvt_f32_i32_e32 v111, v113
	v_cvt_f32_i32_e32 v113, v115
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s0, s36, v160
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v160, s4, v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v115, v117
	v_cvt_f32_i32_e32 v117, v119
	v_cvt_f32_i32_e32 v119, v121
	v_cvt_f32_i32_e32 v121, v123
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s1, s36, v160
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v160, s4, v16
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s4, s15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v123, v125
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s4, s31
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v125, v127
	v_cvt_f32_i32_e32 v127, v129
	v_cvt_f32_i32_e32 v129, v131
	v_cvt_f32_i32_e32 v131, v133
	v_cvt_f32_i32_e32 v133, v135
	v_cvt_f32_i32_e32 v135, v137
	v_cvt_f32_i32_e32 v137, v139
	v_cvt_f32_i32_e32 v139, v141
	v_cvt_f32_i32_e32 v141, v143
	v_cvt_f32_i32_e32 v143, v145
	v_cvt_f32_i32_e32 v145, v147
	v_cvt_f32_i32_e32 v147, v149
	v_cvt_f32_i32_e32 v149, v151
	v_cvt_f32_i32_e32 v151, v153
	v_cvt_f32_i32_e32 v153, v155
	v_cvt_f32_i32_e32 v155, v157
	v_cvt_f32_i32_e32 v157, v159
	v_cvt_f32_i32_e32 v159, v161
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v94, v94, v102 :: v_dual_add_nc_u32 v161, s4, v20
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v25, v164
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s36, v160
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v89, v89, v106 :: v_dual_add_nc_u32 v160, s4, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v164, 0x80000000, v161, s0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v92, v92, v104 :: v_dual_add_nc_u32 v161, s4, v21
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v160, 0x80000000, v160, vcc_lo
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v88, v88, v107
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v26, v162
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v168, 0x80000000, v161, s1
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v161, s4, v18
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v24, v163
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s6, 2
	s_mov_b32 s4, s34
	s_cselect_b32 s39, s6, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v172, 0x80000000, v161, s3
	s_clause 0x3
	buffer_load_b128 v[160:163], v160, s[24:27], 0 offen
	buffer_load_b128 v[164:167], v164, s[24:27], 0 offen
	buffer_load_b128 v[168:171], v168, s[24:27], 0 offen
	buffer_load_b128 v[172:175], v172, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s6, s39, 12
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s6, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s6, s39, 14
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v87, v87, v108 :: v_dual_add_nc_u32 v176, s3, v22
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s34, s6, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v90, v90, v27
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v176, v[9:12] offset:32768
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v96, v96, v28 :: v_dual_add_f32 v95, v95, v101
	v_add_f32_e32 v93, v93, v103
	v_add_f32_e32 v91, v91, v105
	v_dual_add_f32 v86, v86, v109 :: v_dual_add_f32 v85, v85, v110
	v_dual_add_f32 v84, v84, v111 :: v_dual_add_f32 v83, v83, v112
	v_dual_add_f32 v82, v82, v113 :: v_dual_add_f32 v81, v81, v114
	v_dual_add_f32 v80, v80, v115 :: v_dual_add_f32 v79, v79, v116
	v_dual_add_f32 v78, v78, v117 :: v_dual_add_f32 v77, v77, v118
	v_dual_add_f32 v76, v76, v119 :: v_dual_add_f32 v75, v75, v120
	v_dual_add_f32 v74, v74, v121 :: v_dual_add_f32 v73, v73, v122
	v_dual_add_f32 v72, v72, v123 :: v_dual_add_f32 v71, v71, v124
	v_dual_add_f32 v70, v70, v125 :: v_dual_add_f32 v69, v69, v126
	v_dual_add_f32 v68, v68, v127 :: v_dual_add_f32 v67, v67, v128
	v_dual_add_f32 v66, v66, v129 :: v_dual_add_f32 v65, v65, v130
	v_dual_add_f32 v64, v64, v131 :: v_dual_add_f32 v63, v63, v132
	v_dual_add_f32 v62, v62, v133 :: v_dual_add_f32 v61, v61, v134
	v_dual_add_f32 v60, v60, v135 :: v_dual_add_f32 v59, v59, v136
	v_dual_add_f32 v58, v58, v137 :: v_dual_add_f32 v57, v57, v138
	v_dual_add_f32 v56, v56, v139 :: v_dual_add_f32 v55, v55, v140
	v_dual_add_f32 v54, v54, v141 :: v_dual_add_f32 v53, v53, v142
	v_dual_add_f32 v52, v52, v143 :: v_dual_add_f32 v51, v51, v144
	v_dual_add_f32 v50, v50, v145 :: v_dual_add_f32 v49, v49, v146
	v_dual_add_f32 v48, v48, v147 :: v_dual_add_f32 v47, v47, v148
	v_dual_add_f32 v46, v46, v149 :: v_dual_add_f32 v45, v45, v150
	v_dual_add_f32 v44, v44, v151 :: v_dual_add_f32 v43, v43, v152
	v_dual_add_f32 v42, v42, v153 :: v_dual_add_f32 v41, v41, v154
	v_dual_add_f32 v40, v40, v155 :: v_dual_add_f32 v39, v39, v156
	v_dual_add_f32 v38, v38, v157 :: v_dual_add_f32 v37, v37, v158
	v_dual_add_f32 v36, v36, v159 :: v_dual_add_nc_u32 v9, s34, v30
	v_dual_add_f32 v34, v34, v26 :: v_dual_add_f32 v33, v33, v24
	v_add_f32_e32 v32, v32, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s1, s5, 1
	s_mov_b32 s0, s33
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s33, s3, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s38
	s_mov_b32 s5, s1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v9, v[160:163]
	s_waitcnt vmcnt(2)
	ds_store_b128 v9, v[164:167] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v9, v[168:171] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[172:175] offset:12288
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow72
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v101, 0xe0, v0
	v_and_b32_e32 v102, 0xf0, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s35
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshrrev_b32_e32 v1, 1, v101
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v103, v1, v35
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v113, s4, v103
	s_mov_b32 s4, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v104, s0, v100
	v_add_nc_u32_e32 v1, s0, v99
	v_add_nc_u32_e32 v114, s0, v98
	ds_load_b128 v[9:12], v104 offset:1024
	ds_load_b128 v[129:132], v104
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v2, v113 offset:3328
	ds_load_u8 v3, v113 offset:3072
	ds_load_u8 v4, v113 offset:3840
	ds_load_u8 v5, v113 offset:3584
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[13:16], v1 offset:3072
	ds_load_b128 v[17:20], v1 offset:2048
	ds_load_b128 v[21:24], v1 offset:1024
	ds_load_b128 v[121:124], v1
	ds_load_b128 v[25:28], v114 offset:1024
	ds_load_b128 v[125:128], v114
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v113 offset:2304
	ds_load_u8 v6, v113 offset:2048
	ds_load_u8 v7, v113 offset:2816
	ds_load_u8 v8, v113 offset:2560
	ds_load_u8 v105, v113 offset:1280
	ds_load_u8 v106, v113 offset:1024
	ds_load_u8 v107, v113 offset:1792
	ds_load_u8 v108, v113 offset:1536
	ds_load_u8 v116, v113 offset:3968
	ds_load_u8 v117, v113 offset:3712
	ds_load_u8 v118, v113 offset:3456
	ds_load_u8 v119, v113 offset:3200
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v115, s0, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v6, v1, 0xc0c0004
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v8, v7, 0xc0c0004
	v_perm_b32 v3, v5, v4, 0xc0c0004
	ds_load_u8 v4, v113 offset:256
	ds_load_u8 v5, v113
	ds_load_u8 v109, v113 offset:768
	ds_load_u8 v110, v113 offset:512
	ds_load_u8 v120, v113 offset:2944
	ds_load_u8 v141, v113 offset:2688
	ds_load_u8 v142, v113 offset:2432
	ds_load_u8 v143, v113 offset:2176
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v108, v107, 0xc0c0004
	v_lshl_or_b32 v163, v6, 16, v1
	v_lshl_or_b32 v164, v3, 16, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v162, v8, 16, v7
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v110, v109, 0xc0c0004
	v_lshl_or_b32 v161, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	ds_load_u8 v105, v113 offset:7424
	ds_load_u8 v106, v113 offset:7168
	ds_load_u8 v107, v113 offset:7936
	ds_load_u8 v108, v113 offset:7680
	ds_load_u8 v109, v113 offset:6400
	ds_load_u8 v110, v113 offset:6144
	ds_load_u8 v111, v113 offset:6912
	ds_load_u8 v112, v113 offset:6656
	ds_load_u8 v152, v113 offset:5376
	ds_load_u8 v153, v113 offset:5120
	ds_load_u8 v154, v113 offset:5888
	ds_load_u8 v155, v113 offset:5632
	ds_load_u8 v157, v113 offset:8064
	ds_load_u8 v158, v113 offset:7808
	ds_load_u8 v159, v113 offset:7552
	ds_load_u8 v160, v113 offset:7296
	ds_load_u8 v177, v113 offset:9472
	ds_load_u8 v178, v113 offset:9216
	ds_load_u8 v181, v113 offset:9984
	ds_load_u8 v182, v113 offset:9728
	ds_load_u8 v183, v113 offset:8448
	ds_load_u8 v184, v113 offset:8192
	ds_load_u8 v185, v113 offset:8960
	ds_load_u8 v186, v113 offset:8704
	ds_load_u8 v205, v113 offset:11136
	ds_load_u8 v206, v113 offset:10880
	ds_load_u8 v207, v113 offset:10624
	ds_load_u8 v208, v113 offset:10368
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v6, s9
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[137:140], v115 offset:1024
	ds_load_b128 v[133:136], v115
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v144, v113 offset:1920
	ds_load_u8 v145, v113 offset:1664
	ds_load_u8 v146, v113 offset:1408
	ds_load_u8 v147, v113 offset:1152
	ds_load_u8 v148, v113 offset:896
	ds_load_u8 v149, v113 offset:640
	ds_load_u8 v150, v113 offset:384
	ds_load_u8 v151, v113 offset:128
	ds_load_u8 v193, v113 offset:6016
	ds_load_u8 v194, v113 offset:5760
	ds_load_u8 v195, v113 offset:5504
	ds_load_u8 v196, v113 offset:5248
	ds_load_u8 v212, v113 offset:9088
	ds_load_u8 v213, v113 offset:8832
	ds_load_u8 v214, v113 offset:8576
	ds_load_u8 v215, v113 offset:8320
	ds_load_u8 v228, v113 offset:15232
	ds_load_u8 v229, v113 offset:14976
	ds_load_u8 v230, v113 offset:14720
	ds_load_u8 v231, v113 offset:14464
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v166, v110, v109, 0xc0c0004
	v_mov_b32_e32 v4, s7
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v167, v112, v111, 0xc0c0004
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v8, s11
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v153, v155, v154, 0xc0c0004
	v_perm_b32 v156, v106, v105, 0xc0c0004
	v_lshl_or_b32 v167, v167, 16, v166
	v_perm_b32 v165, v108, v107, 0xc0c0004
	ds_load_u8 v105, v113 offset:4352
	ds_load_u8 v106, v113 offset:4096
	ds_load_u8 v107, v113 offset:4864
	ds_load_u8 v108, v113 offset:4608
	ds_load_u8 v189, v113 offset:7040
	ds_load_u8 v190, v113 offset:6784
	ds_load_u8 v191, v113 offset:6528
	ds_load_u8 v192, v113 offset:6272
	v_lshl_or_b32 v166, v153, 16, v152
	ds_load_u8 v154, v113 offset:11520
	ds_load_u8 v155, v113 offset:11264
	ds_load_u8 v169, v113 offset:12032
	ds_load_u8 v170, v113 offset:11776
	ds_load_u8 v197, v113 offset:4992
	ds_load_u8 v198, v113 offset:4736
	ds_load_u8 v199, v113 offset:4480
	ds_load_u8 v200, v113 offset:4224
	v_mov_b32_e32 v7, s10
	v_lshl_or_b32 v168, v165, 16, v156
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v171, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v172, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v155, v170, v169, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[105:112], v[161:164], v[133:136], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v165, v172, 16, v171
	ds_load_u8 v152, v113 offset:10496
	ds_load_u8 v153, v113 offset:10240
	ds_load_u8 v156, v113 offset:11008
	ds_load_u8 v171, v113 offset:10752
	ds_load_u8 v201, v113 offset:12160
	ds_load_u8 v202, v113 offset:11904
	ds_load_u8 v203, v113 offset:11648
	ds_load_u8 v204, v113 offset:11392
	v_lshl_or_b32 v180, v155, 16, v154
	v_perm_b32 v155, v186, v185, 0xc0c0004
	ds_load_u8 v185, v113 offset:15616
	ds_load_u8 v186, v113 offset:15360
	v_perm_b32 v154, v184, v183, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[105:112], v[165:168], v[125:128], v[105:112] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v153, v171, v156, 0xc0c0004
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[169:172], v114 offset:3072
	ds_load_b128 v[173:176], v114 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_perm_b32 v114, v178, v177, 0xc0c0004
	v_lshl_or_b32 v177, v155, 16, v154
	v_lshl_or_b32 v179, v153, 16, v152
	v_perm_b32 v153, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v226, v186, v185, 0xc0c0004
	ds_load_u8 v185, v113 offset:12544
	ds_load_u8 v186, v113 offset:12288
	ds_load_u8 v152, v113 offset:10112
	ds_load_u8 v209, v113 offset:9856
	ds_load_u8 v210, v113 offset:9600
	ds_load_u8 v211, v113 offset:9344
	v_lshl_or_b32 v178, v153, 16, v114
	ds_load_u8 v114, v113 offset:16128
	ds_load_u8 v187, v113 offset:15872
	ds_load_u8 v188, v113 offset:14592
	ds_load_u8 v216, v113 offset:14336
	ds_load_u8 v217, v113 offset:15104
	ds_load_u8 v218, v113 offset:14848
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[181:184], v115 offset:3072
	ds_load_b128 v[153:156], v115 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v115, v113 offset:13568
	ds_load_u8 v219, v113 offset:13312
	ds_load_u8 v220, v113 offset:14080
	ds_load_u8 v221, v113 offset:13824
	ds_load_u8 v222, v113 offset:16256
	ds_load_u8 v223, v113 offset:16000
	ds_load_u8 v224, v113 offset:15744
	ds_load_u8 v225, v113 offset:15488
	v_wmma_i32_16x16x16_iu8 v[105:112], v[177:180], v[121:124], v[105:112] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v219, v219, v115, 0xc0c0004
	v_perm_b32 v115, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v220, v221, v220, 0xc0c0004
	v_perm_b32 v217, v218, v217, 0xc0c0004
	v_perm_b32 v227, v187, v114, 0xc0c0004
	ds_load_u8 v114, v113 offset:13056
	ds_load_u8 v187, v113 offset:12800
	ds_load_u8 v218, v113 offset:14208
	ds_load_u8 v232, v113 offset:13952
	ds_load_u8 v233, v113 offset:13696
	ds_load_u8 v234, v113 offset:13440
	ds_load_u8 v221, v113 offset:13184
	ds_load_u8 v235, v113 offset:12928
	ds_load_u8 v236, v113 offset:12672
	ds_load_u8 v237, v113 offset:12416
	v_perm_b32 v113, v119, v118, 0xc0c0004
	v_perm_b32 v116, v143, v142, 0xc0c0004
	v_perm_b32 v117, v141, v120, 0xc0c0004
	v_perm_b32 v118, v147, v146, 0xc0c0004
	v_perm_b32 v119, v145, v144, 0xc0c0004
	v_perm_b32 v120, v151, v150, 0xc0c0004
	v_perm_b32 v141, v149, v148, 0xc0c0004
	v_perm_b32 v216, v216, v188, 0xc0c0004
	v_perm_b32 v238, v186, v185, 0xc0c0004
	v_lshl_or_b32 v188, v115, 16, v113
	v_lshl_or_b32 v186, v119, 16, v118
	v_lshl_or_b32 v185, v141, 16, v120
	v_perm_b32 v141, v160, v159, 0xc0c0004
	v_perm_b32 v143, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v142, v187, v114, 0xc0c0004
	v_lshl_or_b32 v187, v117, 16, v116
	v_perm_b32 v144, v192, v191, 0xc0c0004
	v_perm_b32 v145, v190, v189, 0xc0c0004
	v_perm_b32 v146, v196, v195, 0xc0c0004
	v_perm_b32 v147, v194, v193, 0xc0c0004
	v_perm_b32 v148, v200, v199, 0xc0c0004
	v_perm_b32 v149, v198, v197, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[113:120], v[185:188], v[133:136], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v192, v143, 16, v141
	v_lshl_or_b32 v191, v145, 16, v144
	v_lshl_or_b32 v190, v147, 16, v146
	v_lshl_or_b32 v189, v149, 16, v148
	v_perm_b32 v133, v204, v203, 0xc0c0004
	v_perm_b32 v134, v202, v201, 0xc0c0004
	v_perm_b32 v135, v208, v207, 0xc0c0004
	v_perm_b32 v136, v206, v205, 0xc0c0004
	v_perm_b32 v141, v211, v210, 0xc0c0004
	v_perm_b32 v143, v209, v152, 0xc0c0004
	v_perm_b32 v144, v215, v214, 0xc0c0004
	v_perm_b32 v145, v213, v212, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[113:120], v[189:192], v[125:128], v[113:120] neg_lo:[1,1,0]
	v_lshl_or_b32 v196, v134, 16, v133
	v_lshl_or_b32 v195, v136, 16, v135
	v_lshl_or_b32 v194, v143, 16, v141
	v_lshl_or_b32 v193, v145, 16, v144
	v_lshl_or_b32 v197, v142, 16, v238
	v_perm_b32 v133, v225, v224, 0xc0c0004
	v_perm_b32 v134, v223, v222, 0xc0c0004
	v_perm_b32 v135, v231, v230, 0xc0c0004
	v_perm_b32 v136, v229, v228, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v141, v234, v233, 0xc0c0004
	v_perm_b32 v142, v232, v218, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v237, v236, 0xc0c0004
	v_perm_b32 v144, v235, v221, 0xc0c0004
	v_lshl_or_b32 v200, v227, 16, v226
	v_lshl_or_b32 v199, v217, 16, v216
	v_lshl_or_b32 v198, v220, 16, v219
	v_wmma_i32_16x16x16_iu8 v[113:120], v[193:196], v[121:124], v[113:120] neg_lo:[1,1,0]
	v_lshl_or_b32 v204, v134, 16, v133
	v_lshl_or_b32 v203, v136, 16, v135
	v_lshl_or_b32 v202, v142, 16, v141
	v_lshl_or_b32 v201, v144, 16, v143
	v_wmma_i32_16x16x16_iu8 v[121:128], v[161:164], v[137:140], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[197:200], v[129:132], v[105:112] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[205:208], v104 offset:3072
	ds_load_b128 v[209:212], v104 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[113:120], v[201:204], v[129:132], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[185:188], v[137:140], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[165:168], v[25:28], v[121:128] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[189:192], v[25:28], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[177:180], v[21:24], v[121:128] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[193:196], v[21:24], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[197:200], v[9:12], v[121:128] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[201:204], v[9:12], v[129:136] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v106
	v_cvt_f32_i32_e32 v10, v107
	v_cvt_f32_i32_e32 v11, v108
	v_cvt_f32_i32_e32 v12, v109
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v96, v96, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[137:144], v[161:164], v[153:156], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[185:188], v[153:156], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[161:164], v[181:184], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[185:188], v[181:184], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v110
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v95, v95, v10 :: v_dual_add_f32 v94, v94, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[153:160], v[165:168], v[169:172], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[189:192], v[169:172], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v93, v93, v12 :: v_dual_add_f32 v92, v92, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v111
	v_cvt_f32_i32_e32 v11, v112
	v_cvt_f32_i32_e32 v12, v113
	v_cvt_f32_i32_e32 v9, v115
	v_wmma_i32_16x16x16_iu8 v[153:160], v[177:180], v[13:16], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[193:196], v[13:16], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v13, v114
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v91, v91, v10 :: v_dual_add_f32 v88, v88, v12
	v_dual_add_f32 v89, v89, v11 :: v_dual_add_f32 v86, v86, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v116
	v_cvt_f32_i32_e32 v11, v117
	v_cvt_f32_i32_e32 v12, v118
	v_cvt_f32_i32_e32 v9, v120
	v_wmma_i32_16x16x16_iu8 v[137:144], v[165:168], v[173:176], v[137:144] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v87, v87, v13 :: v_dual_add_f32 v84, v84, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v119
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v85, v85, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v121
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v83, v83, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v122
	v_cvt_f32_i32_e32 v12, v123
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v81, v81, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v125
	v_wmma_i32_16x16x16_iu8 v[145:152], v[189:192], v[173:176], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[177:180], v[17:20], v[137:144] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v82, v82, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v124
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v80, v80, v10 :: v_dual_add_f32 v79, v79, v11
	v_add_f32_e32 v76, v76, v9
	v_add_f32_e32 v78, v78, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v126
	v_cvt_f32_i32_e32 v11, v127
	v_cvt_f32_i32_e32 v12, v128
	v_cvt_f32_i32_e32 v9, v130
	v_wmma_i32_16x16x16_iu8 v[145:152], v[193:196], v[17:20], v[145:152] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[197:200], v[209:212], v[137:144] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v77, v77, v13 :: v_dual_add_f32 v74, v74, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v129
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v75, v75, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v131
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v73, v73, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v132
	v_cvt_f32_i32_e32 v12, v133
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v71, v71, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v135
	v_wmma_i32_16x16x16_iu8 v[145:152], v[201:204], v[209:212], v[145:152] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v72, v72, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v134
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v70, v70, v10 :: v_dual_add_f32 v69, v69, v11
	v_add_f32_e32 v66, v66, v9
	v_add_f32_e32 v68, v68, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v136
	v_cvt_f32_i32_e32 v11, v137
	v_cvt_f32_i32_e32 v12, v138
	v_cvt_f32_i32_e32 v9, v140
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v67, v67, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v139
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v65, v65, v10 :: v_dual_add_f32 v64, v64, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v141
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v63, v63, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v142
	v_cvt_f32_i32_e32 v12, v143
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v61, v61, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v145
	v_wmma_i32_16x16x16_iu8 v[153:160], v[197:200], v[205:208], v[153:160] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v62, v62, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v144
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v60, v60, v10 :: v_dual_add_f32 v59, v59, v11
	v_add_f32_e32 v56, v56, v9
	v_add_f32_e32 v58, v58, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v146
	v_cvt_f32_i32_e32 v11, v147
	v_cvt_f32_i32_e32 v12, v148
	v_cvt_f32_i32_e32 v9, v150
	v_wmma_i32_16x16x16_iu8 v[1:8], v[201:204], v[205:208], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v57, v57, v13 :: v_dual_add_f32 v54, v54, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v149
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v55, v55, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v151
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v53, v53, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v11, v152
	v_cvt_f32_i32_e32 v12, v153
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v51, v51, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v155
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v52, v52, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v154
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v49, v49, v11 :: v_dual_add_f32 v48, v48, v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v12, v158
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v46, v46, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v160
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v50, v50, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v156
	v_cvt_f32_i32_e32 v11, v157
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v47, v47, v13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v13, v159
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v43, v43, v12 :: v_dual_add_f32 v40, v40, v1
	v_dual_add_f32 v41, v41, v9 :: v_dual_add_f32 v38, v38, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v39, v39, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v6
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v37, v37, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v4, v8
	v_cvt_f32_i32_e32 v5, v105
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v45, v45, v10 :: v_dual_add_f32 v42, v42, v13
	v_add_f32_e32 v44, v44, v11
	v_add_f32_e32 v36, v36, v1
	v_dual_add_f32 v34, v34, v2 :: v_dual_add_f32 v33, v33, v3
	v_add_f32_e32 v32, v32, v4
	v_add_f32_e32 v90, v90, v5
.LBB0_8:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_mov_b32_e32 v138, 0
	v_mov_b32_e32 v140, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v26, s34, v103
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v140, s11 :: v_dual_add_nc_u32 v21, s33, v100
	v_dual_mov_b32 v134, s5 :: v_dual_add_nc_u32 v111, s33, v97
	v_mov_b32_e32 v139, s10
	ds_load_u8 v97, v26 offset:2304
	ds_load_u8 v103, v26 offset:2048
	ds_load_u8 v104, v26 offset:2816
	ds_load_u8 v105, v26 offset:2560
	ds_load_u8 v106, v26 offset:1280
	ds_load_u8 v107, v26 offset:1024
	ds_load_u8 v108, v26 offset:1792
	ds_load_u8 v109, v26 offset:1536
	ds_load_u8 v112, v26 offset:3968
	ds_load_u8 v113, v26 offset:3712
	ds_load_u8 v114, v26 offset:3456
	ds_load_u8 v115, v26 offset:3200
	ds_load_u8 v116, v26 offset:256
	ds_load_u8 v117, v26
	ds_load_u8 v118, v26 offset:768
	ds_load_u8 v131, v26 offset:512
	ds_load_u8 v132, v26 offset:2944
	ds_load_u8 v141, v26 offset:2688
	ds_load_u8 v142, v26 offset:2432
	ds_load_u8 v143, v26 offset:2176
	v_dual_mov_b32 v138, s9 :: v_dual_add_nc_u32 v17, s33, v99
	v_dual_mov_b32 v136, s7 :: v_dual_add_nc_u32 v27, s33, v98
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[1:4], v21 offset:1024
	ds_load_b128 v[22:25], v21
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v28, v26 offset:3328
	ds_load_u8 v98, v26 offset:3072
	ds_load_u8 v99, v26 offset:3840
	ds_load_u8 v100, v26 offset:3584
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[5:8], v17 offset:3072
	ds_load_b128 v[9:12], v17 offset:2048
	ds_load_b128 v[13:16], v17 offset:1024
	ds_load_b128 v[119:122], v17
	ds_load_b128 v[17:20], v27 offset:1024
	ds_load_b128 v[123:126], v27
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v197, v26 offset:15616
	ds_load_u8 v198, v26 offset:15360
	ds_load_u8 v144, v26 offset:1920
	ds_load_u8 v145, v26 offset:1664
	ds_load_u8 v146, v26 offset:1408
	ds_load_u8 v147, v26 offset:1152
	ds_load_u8 v163, v26 offset:6016
	ds_load_u8 v164, v26 offset:5760
	ds_load_u8 v169, v26 offset:5504
	ds_load_u8 v170, v26 offset:5248
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v103, v103, v97, 0xc0c0004
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[181:184], v27 offset:3072
	ds_load_b128 v[185:188], v27 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v209, v26 offset:9088
	ds_load_u8 v210, v26 offset:8832
	ds_load_u8 v211, v26 offset:8576
	ds_load_u8 v212, v26 offset:8320
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v105, v107, v106, 0xc0c0004
	ds_load_u8 v223, v26 offset:15232
	ds_load_u8 v224, v26 offset:14976
	ds_load_u8 v225, v26 offset:14720
	ds_load_u8 v226, v26 offset:14464
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v106, v109, v108, 0xc0c0004
	v_lshl_or_b32 v175, v104, 16, v103
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v28, v98, v28, 0xc0c0004
	v_perm_b32 v103, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v110, v100, v99, 0xc0c0004
	v_lshl_or_b32 v174, v106, 16, v105
	ds_load_u8 v105, v26 offset:7424
	ds_load_u8 v106, v26 offset:7168
	ds_load_u8 v107, v26 offset:7936
	ds_load_u8 v108, v26 offset:7680
	v_perm_b32 v104, v131, v118, 0xc0c0004
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[97:100], v111 offset:1024
	ds_load_b128 v[127:130], v111
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v176, v110, 16, v28
	ds_load_u8 v28, v26 offset:896
	ds_load_u8 v148, v26 offset:640
	ds_load_u8 v149, v26 offset:384
	ds_load_u8 v150, v26 offset:128
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v221, v198, v197, 0xc0c0004
	v_lshl_or_b32 v173, v104, 16, v103
	ds_load_u8 v103, v26 offset:6400
	ds_load_u8 v104, v26 offset:6144
	ds_load_u8 v109, v26 offset:6912
	ds_load_u8 v110, v26 offset:6656
	ds_load_u8 v116, v26 offset:5376
	ds_load_u8 v117, v26 offset:5120
	ds_load_u8 v118, v26 offset:5888
	ds_load_u8 v131, v26 offset:5632
	ds_load_u8 v151, v26 offset:8064
	ds_load_u8 v152, v26 offset:7808
	ds_load_u8 v153, v26 offset:7552
	ds_load_u8 v154, v26 offset:7296
	ds_load_u8 v197, v26 offset:12544
	ds_load_u8 v198, v26 offset:12288
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_perm_b32 v113, v143, v142, 0xc0c0004
	v_mov_b32_e32 v137, s8
	v_mov_b32_e32 v135, s6
	v_mov_b32_e32 v133, s4
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v161, v104, v103, 0xc0c0004
	v_perm_b32 v155, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v162, v110, v109, 0xc0c0004
	v_perm_b32 v156, v108, v107, 0xc0c0004
	ds_load_u8 v105, v26 offset:4352
	ds_load_u8 v106, v26 offset:4096
	ds_load_u8 v107, v26 offset:4864
	ds_load_u8 v108, v26 offset:4608
	ds_load_u8 v157, v26 offset:7040
	ds_load_u8 v158, v26 offset:6784
	ds_load_u8 v159, v26 offset:6528
	ds_load_u8 v160, v26 offset:6272
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v117, v131, v118, 0xc0c0004
	ds_load_u8 v118, v26 offset:11520
	ds_load_u8 v131, v26 offset:11264
	ds_load_u8 v165, v26 offset:12032
	ds_load_u8 v166, v26 offset:11776
	ds_load_u8 v171, v26 offset:4992
	ds_load_u8 v172, v26 offset:4736
	ds_load_u8 v201, v26 offset:4480
	ds_load_u8 v202, v26 offset:4224
	v_lshl_or_b32 v180, v156, 16, v155
	v_lshl_or_b32 v179, v162, 16, v161
	v_perm_b32 v28, v148, v28, 0xc0c0004
	v_lshl_or_b32 v178, v117, 16, v116
	ds_load_u8 v116, v26 offset:10496
	ds_load_u8 v117, v26 offset:10240
	ds_load_u8 v155, v26 offset:11008
	ds_load_u8 v156, v26 offset:10752
	ds_load_u8 v161, v26 offset:12160
	ds_load_u8 v162, v26 offset:11904
	ds_load_u8 v203, v26 offset:11648
	ds_load_u8 v204, v26 offset:11392
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v234, v198, v197, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v167, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v168, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v118, v131, v118, 0xc0c0004
	v_perm_b32 v143, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v131, v166, v165, 0xc0c0004
	v_perm_b32 v142, v160, v159, 0xc0c0004
	v_lshl_or_b32 v177, v168, 16, v167
	ds_load_u8 v165, v26 offset:9472
	ds_load_u8 v166, v26 offset:9216
	ds_load_u8 v167, v26 offset:9984
	ds_load_u8 v168, v26 offset:9728
	ds_load_u8 v189, v26 offset:8448
	ds_load_u8 v190, v26 offset:8192
	ds_load_u8 v193, v26 offset:8960
	ds_load_u8 v194, v26 offset:8704
	ds_load_u8 v205, v26 offset:11136
	ds_load_u8 v206, v26 offset:10880
	ds_load_u8 v207, v26 offset:10624
	ds_load_u8 v208, v26 offset:10368
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v117, v156, v155, 0xc0c0004
	v_lshl_or_b32 v192, v131, 16, v118
	ds_load_u8 v27, v26 offset:10112
	ds_load_u8 v131, v26 offset:9856
	ds_load_u8 v155, v26 offset:9600
	ds_load_u8 v156, v26 offset:9344
	v_wmma_i32_16x16x16_iu8 v[103:110], v[173:176], v[127:130], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v191, v117, 16, v116
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v116, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[177:180], v[123:126], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v117, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v118, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v165, v194, v193, 0xc0c0004
	v_lshl_or_b32 v190, v117, 16, v116
	ds_load_u8 v116, v26 offset:16128
	ds_load_u8 v117, v26 offset:15872
	v_lshl_or_b32 v189, v165, 16, v118
	ds_load_u8 v118, v26 offset:14592
	ds_load_u8 v199, v26 offset:14336
	ds_load_u8 v200, v26 offset:15104
	ds_load_u8 v213, v26 offset:14848
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[193:196], v111 offset:3072
	ds_load_b128 v[165:168], v111 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v111, v26 offset:13568
	ds_load_u8 v214, v26 offset:13312
	ds_load_u8 v215, v26 offset:14080
	ds_load_u8 v216, v26 offset:13824
	ds_load_u8 v217, v26 offset:16256
	ds_load_u8 v218, v26 offset:16000
	ds_load_u8 v219, v26 offset:15744
	ds_load_u8 v220, v26 offset:15488
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v27, v131, v27, 0xc0c0004
	v_perm_b32 v131, v212, v211, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[103:110], v[189:192], v[119:122], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v214, v214, v111, 0xc0c0004
	v_perm_b32 v222, v117, v116, 0xc0c0004
	ds_load_u8 v116, v26 offset:13056
	ds_load_u8 v117, v26 offset:12800
	ds_load_u8 v228, v26 offset:14208
	ds_load_u8 v229, v26 offset:13952
	ds_load_u8 v230, v26 offset:13696
	ds_load_u8 v231, v26 offset:13440
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v215, v216, v215, 0xc0c0004
	ds_load_u8 v216, v26 offset:13184
	ds_load_u8 v232, v26 offset:12928
	ds_load_u8 v233, v26 offset:12672
	ds_load_u8 v26, v26 offset:12416
	v_perm_b32 v227, v199, v118, 0xc0c0004
	v_perm_b32 v111, v115, v114, 0xc0c0004
	v_perm_b32 v114, v141, v132, 0xc0c0004
	v_perm_b32 v115, v147, v146, 0xc0c0004
	v_perm_b32 v118, v145, v144, 0xc0c0004
	v_perm_b32 v132, v150, v149, 0xc0c0004
	v_perm_b32 v213, v213, v200, 0xc0c0004
	v_lshl_or_b32 v200, v112, 16, v111
	v_lshl_or_b32 v199, v114, 16, v113
	v_lshl_or_b32 v198, v118, 16, v115
	v_lshl_or_b32 v197, v28, 16, v132
	v_perm_b32 v28, v154, v153, 0xc0c0004
	v_perm_b32 v132, v152, v151, 0xc0c0004
	v_perm_b32 v144, v170, v169, 0xc0c0004
	v_perm_b32 v145, v164, v163, 0xc0c0004
	v_perm_b32 v146, v202, v201, 0xc0c0004
	v_perm_b32 v147, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v141, v117, v116, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[111:118], v[197:200], v[127:130], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v130, v132, 16, v28
	v_lshl_or_b32 v129, v143, 16, v142
	v_lshl_or_b32 v128, v145, 16, v144
	v_lshl_or_b32 v127, v147, 16, v146
	v_perm_b32 v28, v204, v203, 0xc0c0004
	v_perm_b32 v132, v162, v161, 0xc0c0004
	v_perm_b32 v142, v208, v207, 0xc0c0004
	v_perm_b32 v143, v206, v205, 0xc0c0004
	v_perm_b32 v144, v156, v155, 0xc0c0004
	v_perm_b32 v145, v210, v209, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[111:118], v[127:130], v[123:126], v[111:118] neg_lo:[1,1,0]
	v_lshl_or_b32 v204, v132, 16, v28
	v_lshl_or_b32 v203, v143, 16, v142
	v_lshl_or_b32 v202, v27, 16, v144
	v_lshl_or_b32 v201, v145, 16, v131
	v_lshl_or_b32 v207, v213, 16, v227
	v_lshl_or_b32 v206, v215, 16, v214
	v_lshl_or_b32 v205, v141, 16, v234
	v_perm_b32 v27, v220, v219, 0xc0c0004
	v_perm_b32 v28, v218, v217, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v141, v231, v230, 0xc0c0004
	v_perm_b32 v142, v229, v228, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v233, 0xc0c0004
	v_perm_b32 v143, v232, v216, 0xc0c0004
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[213:216], v21 offset:3072
	ds_load_b128 v[217:220], v21 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[111:118], v[201:204], v[119:122], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[173:176], v[97:100], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v210, v142, 16, v141
	v_lshl_or_b32 v209, v143, 16, v26
	v_wmma_i32_16x16x16_iu8 v[141:148], v[197:200], v[97:100], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[173:176], v[165:168], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[197:200], v[165:168], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[165:172], v[173:176], v[193:196], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[197:200], v[193:196], v[133:140] neg_lo:[1,1,0]
	v_perm_b32 v131, v226, v225, 0xc0c0004
	v_perm_b32 v132, v224, v223, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[119:126], v[177:180], v[17:20], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[127:130], v[17:20], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[177:180], v[185:188], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[127:130], v[185:188], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[165:172], v[177:180], v[181:184], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[127:130], v[181:184], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v208, v222, 16, v221
	v_lshl_or_b32 v212, v28, 16, v27
	v_lshl_or_b32 v211, v132, 16, v131
	v_wmma_i32_16x16x16_iu8 v[119:126], v[189:192], v[13:16], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[201:204], v[13:16], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[189:192], v[9:12], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[201:204], v[9:12], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[165:172], v[189:192], v[5:8], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[201:204], v[5:8], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[103:110], v[205:208], v[22:25], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[209:212], v[22:25], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[205:208], v[1:4], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[209:212], v[1:4], v[141:148] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[149:156], v[205:208], v[217:220], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[157:164], v[209:212], v[217:220], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[165:172], v[205:208], v[213:216], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[209:212], v[213:216], v[133:140] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v103
	v_cvt_f32_i32_e32 v3, v104
	v_cvt_f32_i32_e32 v4, v105
	v_cvt_f32_i32_e32 v5, v106
	v_cvt_f32_i32_e32 v6, v107
	v_cvt_f32_i32_e32 v7, v108
	v_cvt_f32_i32_e32 v8, v109
	v_cvt_f32_i32_e32 v9, v110
	v_cvt_f32_i32_e32 v10, v111
	v_cvt_f32_i32_e32 v11, v112
	v_cvt_f32_i32_e32 v12, v113
	v_cvt_f32_i32_e32 v13, v114
	v_cvt_f32_i32_e32 v14, v115
	v_cvt_f32_i32_e32 v15, v116
	v_cvt_f32_i32_e32 v16, v117
	v_cvt_f32_i32_e32 v17, v118
	v_cvt_f32_i32_e32 v18, v119
	v_cvt_f32_i32_e32 v19, v120
	v_cvt_f32_i32_e32 v20, v121
	v_cvt_f32_i32_e32 v21, v122
	v_cvt_f32_i32_e32 v22, v123
	v_cvt_f32_i32_e32 v23, v124
	v_cvt_f32_i32_e32 v24, v125
	v_cvt_f32_i32_e32 v25, v126
	v_cvt_f32_i32_e32 v26, v141
	v_cvt_f32_i32_e32 v27, v142
	v_cvt_f32_i32_e32 v28, v143
	v_cvt_f32_i32_e32 v104, v144
	v_cvt_f32_i32_e32 v105, v145
	v_cvt_f32_i32_e32 v106, v146
	v_cvt_f32_i32_e32 v107, v147
	v_cvt_f32_i32_e32 v108, v148
	v_cvt_f32_i32_e32 v109, v149
	v_cvt_f32_i32_e32 v110, v150
	v_cvt_f32_i32_e32 v111, v151
	v_cvt_f32_i32_e32 v112, v152
	v_cvt_f32_i32_e32 v113, v153
	v_cvt_f32_i32_e32 v114, v154
	v_cvt_f32_i32_e32 v115, v155
	v_cvt_f32_i32_e32 v116, v156
	v_cvt_f32_i32_e32 v117, v157
	v_cvt_f32_i32_e32 v118, v158
	v_cvt_f32_i32_e32 v119, v159
	v_cvt_f32_i32_e32 v120, v160
	v_cvt_f32_i32_e32 v121, v161
	v_cvt_f32_i32_e32 v122, v162
	v_cvt_f32_i32_e32 v123, v163
	v_cvt_f32_i32_e32 v124, v164
	v_cvt_f32_i32_e32 v125, v165
	v_cvt_f32_i32_e32 v126, v166
	v_cvt_f32_i32_e32 v127, v167
	v_cvt_f32_i32_e32 v128, v168
	v_cvt_f32_i32_e32 v129, v169
	v_cvt_f32_i32_e32 v130, v170
	v_cvt_f32_i32_e32 v131, v171
	v_cvt_f32_i32_e32 v132, v172
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
.LBB0_10:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v35, s30, v35
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	v_or_b32_e32 v1, s31, v0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s5, s17, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v2, v90, v2 :: v_dual_lshlrev_b32 v35, 1, v35
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s4, s16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v3, v96, v3 :: v_dual_lshlrev_b32 v100, 1, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v97, 32, v35
	v_or_b32_e32 v98, 64, v35
	v_or_b32_e32 v99, 0x60, v35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v18, v80, v18 :: v_dual_add_f32 v19, v79, v19
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x3
	buffer_load_u16 v35, v35, s[4:7], 0 offen
	buffer_load_u16 v97, v97, s[4:7], 0 offen
	buffer_load_u16 v98, v98, s[4:7], 0 offen
	buffer_load_u16 v99, v99, s[4:7], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s5, s19, 0xffff
	s_mov_b32 s4, s18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v22, v76, v22 :: v_dual_add_f32 v23, v75, v23
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v100, v100, s[4:7], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v80, v80, v18, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v28, v70, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v76, v76, v22, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v103, v69, v104 :: v_dual_add_f32 v104, v68, v105
	v_dual_add_f32 v105, v67, v106 :: v_dual_add_f32 v106, v66, v107
	v_dual_add_f32 v107, v65, v108 :: v_dual_add_f32 v108, v64, v109
	v_dual_add_f32 v109, v63, v110 :: v_dual_add_f32 v110, v62, v111
	v_dual_add_f32 v111, v61, v112 :: v_dual_add_f32 v112, v60, v113
	v_dual_add_f32 v113, v59, v114 :: v_dual_add_f32 v114, v58, v115
	v_dual_add_f32 v115, v57, v116 :: v_dual_add_f32 v116, v56, v117
	v_dual_add_f32 v117, v55, v118 :: v_dual_add_f32 v118, v54, v119
	v_dual_add_f32 v119, v53, v120 :: v_dual_add_f32 v120, v52, v121
	v_dual_add_f32 v121, v51, v122 :: v_dual_add_f32 v122, v50, v123
	v_dual_add_f32 v123, v49, v124 :: v_dual_add_f32 v124, v48, v125
	v_dual_add_f32 v125, v47, v126 :: v_dual_add_f32 v126, v46, v127
	v_dual_add_f32 v127, v45, v128 :: v_dual_add_f32 v128, v44, v129
	v_dual_add_f32 v129, v43, v130 :: v_dual_add_f32 v130, v42, v131
	v_dual_add_f32 v131, v41, v132 :: v_dual_add_f32 v132, v40, v133
	v_dual_add_f32 v133, v39, v134 :: v_dual_add_f32 v134, v38, v135
	v_dual_add_f32 v135, v37, v136 :: v_dual_add_f32 v136, v36, v137
	v_dual_add_f32 v137, v34, v138 :: v_dual_add_f32 v138, v33, v139
	v_add_f32_e32 v139, v32, v140
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v142, v102, 2, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v90, v90, v2, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v4, v95, v4 :: v_dual_add_f32 v5, v94, v5
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v102, v102, 1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v96, v96, v3, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v6, v93, v6 :: v_dual_add_f32 v7, v92, v7
	v_dual_add_f32 v8, v91, v8 :: v_dual_add_f32 v9, v89, v9
	v_dual_add_f32 v10, v88, v10 :: v_dual_add_f32 v11, v87, v11
	v_dual_add_f32 v12, v86, v12 :: v_dual_add_f32 v13, v85, v13
	v_dual_add_f32 v14, v84, v14 :: v_dual_add_f32 v15, v83, v15
	v_dual_add_f32 v16, v82, v16 :: v_dual_add_f32 v17, v81, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v95, v95, v4, s2
	v_cndmask_b32_e64 v94, v94, v5, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v93, v93, v6, s2
	v_cndmask_b32_e64 v92, v92, v7, s2
	v_cndmask_b32_e64 v91, v91, v8, s2
	v_cndmask_b32_e64 v89, v89, v9, s2
	v_cndmask_b32_e64 v88, v88, v10, s2
	v_cndmask_b32_e64 v87, v87, v11, s2
	v_cndmask_b32_e64 v86, v86, v12, s2
	v_cndmask_b32_e64 v85, v85, v13, s2
	v_cndmask_b32_e64 v84, v84, v14, s2
	v_cndmask_b32_e64 v83, v83, v15, s2
	v_cndmask_b32_e64 v82, v82, v16, s2
	v_cndmask_b32_e64 v81, v81, v17, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v24, v74, v24 :: v_dual_add_f32 v25, v73, v25
	v_dual_add_f32 v20, v78, v20 :: v_dual_add_f32 v21, v77, v21
	v_dual_add_f32 v26, v72, v26 :: v_dual_add_f32 v27, v71, v27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v75, v23, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v25, v73, v25, s2
	v_cndmask_b32_e64 v73, v61, v111, s2
	v_cndmask_b32_e64 v75, v57, v115, s2
	v_cndmask_b32_e64 v115, v33, v138, s2
	v_cndmask_b32_e64 v19, v79, v19, s2
	v_cndmask_b32_e64 v20, v78, v20, s2
	v_cndmask_b32_e64 v21, v77, v21, s2
	v_cndmask_b32_e64 v24, v74, v24, s2
	v_cndmask_b32_e64 v26, v72, v26, s2
	v_cndmask_b32_e64 v67, v67, v105, s2
	v_cndmask_b32_e64 v63, v63, v109, s2
	v_cndmask_b32_e64 v62, v62, v110, s2
	v_cndmask_b32_e64 v74, v60, v112, s2
	v_cndmask_b32_e64 v59, v59, v113, s2
	v_cndmask_b32_e64 v58, v58, v114, s2
	v_cndmask_b32_e64 v77, v56, v116, s2
	v_cndmask_b32_e64 v78, v53, v119, s2
	v_cndmask_b32_e64 v79, v52, v120, s2
	v_cndmask_b32_e64 v47, v47, v125, s2
	v_cndmask_b32_e64 v109, v41, v131, s2
	v_cndmask_b32_e64 v110, v40, v132, s2
	v_cndmask_b32_e64 v111, v39, v133, s2
	v_cndmask_b32_e64 v112, v38, v134, s2
	v_cndmask_b32_e64 v113, v37, v135, s2
	v_cndmask_b32_e64 v114, v36, v136, s2
	v_cndmask_b32_e64 v116, v32, v139, s2
	v_cndmask_b32_e64 v27, v71, v27, s2
	v_cndmask_b32_e64 v28, v70, v28, s2
	v_cndmask_b32_e64 v69, v69, v103, s2
	v_cndmask_b32_e64 v70, v68, v104, s2
	v_cndmask_b32_e64 v66, v66, v106, s2
	v_cndmask_b32_e64 v71, v65, v107, s2
	v_cndmask_b32_e64 v72, v64, v108, s2
	v_cndmask_b32_e64 v54, v54, v118, s2
	v_cndmask_b32_e64 v51, v51, v121, s2
	v_cndmask_b32_e64 v103, v50, v122, s2
	v_cndmask_b32_e64 v104, v49, v123, s2
	v_cndmask_b32_e64 v105, v48, v124, s2
	v_cndmask_b32_e64 v106, v45, v127, s2
	v_cndmask_b32_e64 v107, v44, v128, s2
	v_cndmask_b32_e64 v43, v43, v129, s2
	v_cndmask_b32_e64 v108, v42, v130, s2
	v_cndmask_b32_e64 v55, v55, v117, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s0, s30, s15
	s_mul_i32 s1, s15, 3
	s_add_i32 s24, s0, s15
	s_lshl1_add_u32 s23, s15, s0
	s_mul_i32 s3, s15, 5
	s_mul_i32 s50, s15, 20
	s_mul_i32 s38, s15, 37
	s_mul_i32 s53, s15, 42
	s_add_i32 s22, s0, s1
	s_mul_i32 s4, s15, 6
	s_lshl2_add_u32 s21, s15, s0
	s_mul_i32 s5, s15, 7
	s_mul_i32 s8, s15, 9
	s_mul_i32 s9, s15, 10
	s_mul_i32 s10, s15, 11
	s_mul_i32 s64, s15, 12
	s_mul_i32 s65, s15, 13
	s_mul_i32 s66, s15, 14
	s_mul_i32 s67, s15, 15
	s_mul_i32 s68, s15, 17
	s_mul_i32 s43, s15, 18
	s_mul_i32 s49, s15, 19
	s_mul_i32 s51, s15, 21
	s_mul_i32 s52, s15, 22
	s_mul_i32 s54, s15, 23
	s_mul_i32 s59, s15, 24
	s_mul_i32 s60, s15, 25
	s_mul_i32 s61, s15, 26
	s_mul_i32 s62, s15, 27
	s_mul_i32 s63, s15, 28
	s_mul_i32 s79, s15, 29
	s_mul_i32 s80, s15, 30
	s_mul_i32 s81, s15, 31
	s_mul_i32 s25, s15, 33
	s_mul_i32 s30, s15, 34
	s_mul_i32 s33, s15, 35
	s_mul_i32 s36, s15, 36
	s_mul_i32 s40, s15, 38
	s_mul_i32 s42, s15, 39
	s_mul_i32 s47, s15, 40
	s_mul_i32 s48, s15, 41
	s_mul_i32 s74, s15, 43
	s_mul_i32 s75, s15, 44
	s_mul_i32 s76, s15, 45
	s_mul_i32 s77, s15, 46
	s_mul_i32 s78, s15, 47
	s_mul_i32 s45, s15, 49
	s_mul_i32 s46, s15, 50
	s_mul_i32 s39, s15, 51
	s_mul_i32 s41, s15, 52
	s_mul_i32 s44, s15, 53
	s_mul_i32 s34, s15, 54
	s_mul_i32 s35, s15, 55
	s_mul_i32 s37, s15, 56
	s_mul_i32 s58, s15, 57
	s_mul_i32 s26, s15, 58
	s_mul_i32 s31, s15, 59
	s_mul_i32 s56, s15, 60
	s_mul_i32 s57, s15, 61
	s_mul_i32 s27, s15, 62
	s_mul_i32 s55, s15, 63
	s_add_i32 s20, s0, s3
	s_lshl3_add_u32 s17, s15, s0
	s_add_i32 s72, s0, s50
	s_add_i32 s50, s0, s38
	s_add_i32 s38, s0, s53
	s_add_i32 s53, s0, s14
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s19, s0, s4
	s_add_i32 s18, s0, s5
	s_add_i32 s16, s0, s8
	s_add_i32 s11, s0, s9
	s_add_i32 s10, s0, s10
	s_add_i32 s9, s0, s64
	s_add_i32 s8, s0, s65
	s_add_i32 s5, s0, s66
	s_add_i32 s4, s0, s67
	s_add_i32 s3, s0, s29
	s_add_i32 s1, s0, s68
	s_add_i32 s82, s0, s43
	s_add_i32 s73, s0, s49
	s_add_i32 s71, s0, s51
	s_add_i32 s70, s0, s52
	s_add_i32 s69, s0, s54
	s_add_i32 s68, s0, s59
	s_add_i32 s67, s0, s60
	s_add_i32 s66, s0, s61
	s_add_i32 s65, s0, s62
	s_add_i32 s64, s0, s63
	s_add_i32 s63, s0, s79
	s_add_i32 s62, s0, s80
	s_add_i32 s61, s0, s81
	s_add_i32 s60, s0, s28
	s_add_i32 s59, s0, s25
	s_add_i32 s54, s0, s30
	s_add_i32 s52, s0, s33
	s_add_i32 s51, s0, s36
	s_add_i32 s49, s0, s40
	s_add_i32 s43, s0, s42
	s_add_i32 s42, s0, s47
	s_add_i32 s40, s0, s48
	s_add_i32 s36, s0, s74
	s_add_i32 s33, s0, s75
	s_add_i32 s30, s0, s76
	s_add_i32 s28, s0, s77
	s_add_i32 s25, s0, s78
	s_add_i32 s47, s0, s45
	s_add_i32 s45, s0, s46
	s_add_i32 s48, s0, s39
	s_add_i32 s46, s0, s41
	s_add_i32 s44, s0, s44
	s_add_i32 s41, s0, s34
	s_add_i32 s39, s0, s35
	s_add_i32 s37, s0, s37
	s_add_i32 s34, s0, s58
	s_add_i32 s35, s0, s26
	s_add_i32 s31, s0, s31
	s_add_i32 s29, s0, s56
	s_add_i32 s26, s0, s57
	s_add_i32 s27, s0, s27
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v22, 16, v97
	v_lshlrev_b32_e32 v18, 16, v35
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v141, 5, v0
	v_and_b32_e32 v140, 28, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_and_b32_e32 v2, 32, v141
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v100
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v100, v46, v126, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_add3_u32 v2, v142, v2, v140
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v102
	ds_load_b128 v[6:9], v102 offset:16
	ds_load_b128 v[10:13], v102 offset:512
	ds_load_b128 v[14:17], v102 offset:528
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v102, v34, v137, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_add_i32 s2, s0, s55
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v61, v2, v22
	v_dual_mul_f32 v38, v6, v18 :: v_dual_lshlrev_b32 v33, 16, v99
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v32, 16, v98
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v36, v4, v18
	v_mul_f32_e32 v37, v5, v18
	v_mul_f32_e32 v39, v7, v18
	v_dual_mul_f32 v119, v9, v22 :: v_dual_mul_f32 v146, v4, v33
	v_dual_mul_f32 v125, v15, v22 :: v_dual_mul_f32 v152, v10, v33
	v_dual_mul_f32 v145, v3, v33 :: v_dual_mul_f32 v40, v8, v18
	v_mul_f32_e32 v129, v3, v32
	v_dual_mul_f32 v41, v9, v18 :: v_dual_mul_f32 v128, v2, v32
	v_dual_mul_f32 v46, v13, v18 :: v_dual_mul_f32 v133, v7, v32
	v_dual_mul_f32 v120, v10, v22 :: v_dual_mul_f32 v143, v17, v32
	v_dual_mul_f32 v158, v16, v33 :: v_dual_mul_f32 v35, v3, v18
	v_dual_mul_f32 v42, v10, v18 :: v_dual_mul_f32 v131, v5, v32
	v_dual_mul_f32 v44, v11, v18 :: v_dual_mul_f32 v135, v9, v32
	v_dual_mul_f32 v45, v12, v18 :: v_dual_mul_f32 v132, v6, v32
	v_dual_mul_f32 v49, v14, v18 :: v_dual_mul_f32 v130, v4, v32
	v_dual_mul_f32 v50, v15, v18 :: v_dual_mul_f32 v139, v13, v32
	v_dual_mul_f32 v53, v16, v18 :: v_dual_mul_f32 v136, v10, v32
	v_dual_mul_f32 v57, v17, v18 :: v_dual_mul_f32 v134, v8, v32
	v_dual_mul_f32 v65, v3, v22 :: v_dual_mul_f32 v138, v12, v32
	v_dual_mul_f32 v97, v4, v22 :: v_dual_mul_f32 v140, v14, v32
	v_dual_mul_f32 v98, v5, v22 :: v_dual_mul_f32 v137, v11, v32
	v_dual_mul_f32 v99, v6, v22 :: v_dual_mul_f32 v142, v16, v32
	v_dual_mul_f32 v118, v8, v22 :: v_dual_mul_f32 v141, v15, v32
	v_dual_mul_f32 v121, v11, v22 :: v_dual_mul_f32 v148, v6, v33
	v_dual_mul_f32 v122, v12, v22 :: v_dual_mul_f32 v147, v5, v33
	v_dual_mul_f32 v124, v14, v22 :: v_dual_mul_f32 v149, v7, v33
	v_mul_f32_e32 v156, v14, v33
	v_dual_mul_f32 v159, v17, v33 :: v_dual_mul_f32 v10, v95, v36
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v14, v94, v37
	v_dual_mul_f32 v32, v91, v40 :: v_dual_mul_f32 v3, v80, v61
	v_mul_f32_e32 v36, v89, v41
	v_dual_mul_f32 v52, v85, v46 :: v_dual_mul_f32 v41, v26, v120
	v_mul_f32_e32 v37, v25, v119
	v_mul_f32_e32 v61, v67, v125
	v_dual_mul_f32 v67, v115, v158 :: v_dual_and_b32 v26, 16, v0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v123, v13, v22 :: v_dual_mul_f32 v150, v8, v33
	v_dual_mul_f32 v127, v17, v22 :: v_dual_mul_f32 v154, v12, v33
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v48, v86, v45
	v_mul_f32_e32 v56, v84, v49
	v_dual_mul_f32 v45, v27, v121 :: v_dual_mul_f32 v4, v72, v128
	v_mul_f32_e32 v49, v28, v122
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_and_b32_e32 v27, 0xcf0, v30
	v_and_or_b32 v28, v31, 64, v26
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v64, v82, v53 :: v_dual_mul_f32 v53, v69, v123
	v_mul_f32_e32 v69, v71, v127
	v_dual_mul_f32 v71, v116, v159 :: v_dual_lshlrev_b32 v30, 13, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v27, v28, v27
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v34, v2, v18
	v_dual_mul_f32 v117, v7, v22 :: v_dual_mul_f32 v144, v2, v33
	v_mul_f32_e32 v153, v11, v33
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_or_b32 v27, 0xe000, v30, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v2, v90, v34
	v_dual_mul_f32 v8, v63, v129 :: v_dual_mul_f32 v5, v105, v144
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v155, v13, v33 :: v_dual_mul_f32 v6, v96, v35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v28, 0, v27
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v44, v87, v44 :: v_dual_mul_f32 v11, v20, v97
	v_mul_f32_e32 v12, v62, v130
	v_dual_mul_f32 v20, v74, v132 :: v_dual_mul_f32 v13, v100, v146
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v126, v16, v22 :: v_dual_mul_f32 v151, v9, v33
	v_dual_mul_f32 v157, v15, v33 :: v_dual_mul_f32 v18, v93, v38
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v22, v92, v39 :: v_dual_mul_f32 v7, v19, v65
	v_mul_f32_e32 v15, v21, v98
	v_dual_mul_f32 v19, v76, v99 :: v_dual_mul_f32 v34, v58, v134
	v_mul_f32_e32 v21, v107, v148
	v_dual_mul_f32 v33, v24, v118 :: v_dual_mul_f32 v38, v75, v135
	v_mul_f32_e32 v35, v108, v150
	v_dual_mul_f32 v40, v88, v42 :: v_dual_mul_f32 v23, v23, v117
	v_dual_mul_f32 v42, v77, v136 :: v_dual_mul_f32 v25, v43, v149
	v_dual_mul_f32 v62, v51, v141 :: v_dual_mul_f32 v43, v110, v152
	v_mul_f32_e32 v60, v83, v50
	v_dual_mul_f32 v16, v73, v131 :: v_dual_mul_f32 v9, v47, v145
	v_dual_mul_f32 v50, v54, v138 :: v_dual_mul_f32 v47, v111, v153
	v_dual_mul_f32 v54, v78, v139 :: v_dual_mul_f32 v51, v112, v154
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	ds_store_b128 v28, v[2:5]
	ds_store_b128 v28, v[10:13] offset:256
	ds_store_b128 v28, v[18:21] offset:512
	ds_store_b128 v28, v[32:35] offset:768
	ds_store_b128 v28, v[40:43] offset:4096
	ds_store_b128 v28, v[48:51] offset:4352
	v_lshlrev_b32_e32 v0, 6, v0
	v_lshlrev_b32_e32 v2, 5, v101
	v_lshlrev_b32_e32 v4, 2, v26
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v68, v81, v57 :: v_dual_mul_f32 v65, v66, v126
	v_mul_f32_e32 v57, v70, v124
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_or_b32 v0, 0x300, v0, v2
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v24, v59, v133 :: v_dual_mul_f32 v17, v106, v147
	v_mul_f32_e32 v58, v79, v140
	v_dual_mul_f32 v66, v103, v142 :: v_dual_mul_f32 v59, v114, v156
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v3, v27, 32, 0
	v_or3_b32 v0, v0, v4, v29
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v46, v55, v137 :: v_dual_mul_f32 v39, v109, v151
	v_mul_f32_e32 v55, v113, v155
	v_dual_mul_f32 v70, v104, v143 :: v_dual_mul_f32 v63, v102, v157
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_b128 v28, v[56:59] offset:4608
	ds_store_b128 v28, v[64:67] offset:4864
	ds_store_b128 v3, v[6:9]
	ds_store_b128 v3, v[14:17] offset:256
	ds_store_b128 v3, v[22:25] offset:512
	ds_store_b128 v3, v[36:39] offset:768
	v_add_nc_u32_e32 v6, 0, v0
	v_xad_u32 v14, 0x2010, v0, 0
	v_xad_u32 v30, 0x6030, v0, 0
	v_xad_u32 v22, 0x4020, v0, 0
	ds_store_b128 v3, v[44:47] offset:4096
	ds_store_b128 v3, v[52:55] offset:4352
	ds_store_b128 v3, v[60:63] offset:4608
	ds_store_b128 v3, v[68:71] offset:4864
	v_xad_u32 v46, 0xa050, v0, 0
	v_xad_u32 v38, 0x8040, v0, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v6
	ds_load_b128 v[6:9], v6 offset:128
	ds_load_b128 v[10:13], v14
	ds_load_b128 v[14:17], v14 offset:128
	ds_load_b128 v[18:21], v22
	ds_load_b128 v[22:25], v22 offset:128
	ds_load_b128 v[26:29], v30
	ds_load_b128 v[30:33], v30 offset:128
	v_xad_u32 v54, 0xc060, v0, 0
	v_xad_u32 v0, 0xe070, v0, 0
	ds_load_b128 v[42:45], v46
	ds_load_b128 v[46:49], v46 offset:128
	ds_load_b128 v[50:53], v54
	ds_load_b128 v[54:57], v54 offset:128
	ds_load_b128 v[58:61], v0
	ds_load_b128 v[34:37], v38
	ds_load_b128 v[38:41], v38 offset:128
	v_add_lshl_u32 v66, s0, v1, 2
	ds_load_b128 v[62:65], v0 offset:128
	v_add_lshl_u32 v67, s24, v1, 2
	v_add_lshl_u32 v68, s23, v1, 2
	v_add_lshl_u32 v69, s22, v1, 2
	v_add_lshl_u32 v0, s21, v1, 2
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v2, v66, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v10, v67, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v18, v68, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v26, v69, s[12:15], 0 offen
	v_add_lshl_u32 v2, s20, v1, 2
	v_add_lshl_u32 v10, s19, v1, 2
	v_add_lshl_u32 v18, s18, v1, 2
	v_add_lshl_u32 v26, s17, v1, 2
	s_waitcnt lgkmcnt(2)
	s_clause 0x4
	buffer_atomic_add_f32 v34, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v42, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v50, v10, s[12:15], 0 offen
	buffer_atomic_add_f32 v58, v18, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v26, s[12:15], 0 offen
	v_add_lshl_u32 v0, s16, v1, 2
	v_add_lshl_u32 v2, s11, v1, 2
	v_add_lshl_u32 v6, s10, v1, 2
	v_add_lshl_u32 v10, s9, v1, 2
	v_add_lshl_u32 v18, s8, v1, 2
	s_clause 0x2
	buffer_atomic_add_f32 v14, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v6, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v38, v10, s[12:15], 0 offen
	buffer_atomic_add_f32 v46, v18, s[12:15], 0 offen
	v_add_lshl_u32 v0, s5, v1, 2
	v_add_lshl_u32 v2, s4, v1, 2
	v_add_lshl_u32 v6, s3, v1, 2
	v_add_lshl_u32 v10, s1, v1, 2
	v_add_lshl_u32 v14, s82, v1, 2
	buffer_atomic_add_f32 v54, v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v62, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v3, v6, s[12:15], 0 offen
	buffer_atomic_add_f32 v11, v10, s[12:15], 0 offen
	buffer_atomic_add_f32 v19, v14, s[12:15], 0 offen
	v_add_lshl_u32 v0, s73, v1, 2
	v_add_lshl_u32 v2, s72, v1, 2
	v_add_lshl_u32 v3, s71, v1, 2
	v_add_lshl_u32 v6, s70, v1, 2
	v_add_lshl_u32 v10, s69, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v27, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v35, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v43, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v51, v6, s[12:15], 0 offen
	buffer_atomic_add_f32 v59, v10, s[12:15], 0 offen
	v_add_lshl_u32 v0, s68, v1, 2
	v_add_lshl_u32 v2, s67, v1, 2
	v_add_lshl_u32 v3, s66, v1, 2
	v_add_lshl_u32 v6, s65, v1, 2
	v_add_lshl_u32 v10, s64, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v7, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v15, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v23, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v31, v6, s[12:15], 0 offen
	buffer_atomic_add_f32 v39, v10, s[12:15], 0 offen
	v_add_lshl_u32 v0, s63, v1, 2
	v_add_lshl_u32 v2, s62, v1, 2
	v_add_lshl_u32 v3, s61, v1, 2
	v_add_lshl_u32 v6, s60, v1, 2
	v_add_lshl_u32 v7, s59, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v47, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v55, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v63, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v4, v6, s[12:15], 0 offen
	buffer_atomic_add_f32 v12, v7, s[12:15], 0 offen
	v_add_lshl_u32 v0, s54, v1, 2
	v_add_lshl_u32 v2, s52, v1, 2
	v_add_lshl_u32 v3, s51, v1, 2
	v_add_lshl_u32 v4, s50, v1, 2
	v_add_lshl_u32 v6, s49, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v20, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v28, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v36, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v44, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v52, v6, s[12:15], 0 offen
	v_add_lshl_u32 v0, s43, v1, 2
	v_add_lshl_u32 v2, s42, v1, 2
	v_add_lshl_u32 v3, s40, v1, 2
	v_add_lshl_u32 v4, s38, v1, 2
	v_add_lshl_u32 v6, s36, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v60, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v8, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v16, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v24, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v32, v6, s[12:15], 0 offen
	v_add_lshl_u32 v0, s33, v1, 2
	v_add_lshl_u32 v2, s30, v1, 2
	v_add_lshl_u32 v3, s28, v1, 2
	v_add_lshl_u32 v4, s25, v1, 2
	v_add_lshl_u32 v6, s53, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v40, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v48, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v56, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v64, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v5, v6, s[12:15], 0 offen
	v_add_lshl_u32 v0, s47, v1, 2
	v_add_lshl_u32 v2, s45, v1, 2
	v_add_lshl_u32 v3, s48, v1, 2
	v_add_lshl_u32 v4, s46, v1, 2
	v_add_lshl_u32 v5, s44, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v13, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v21, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v29, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v37, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v45, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, s41, v1, 2
	v_add_lshl_u32 v2, s39, v1, 2
	v_add_lshl_u32 v3, s37, v1, 2
	v_add_lshl_u32 v4, s34, v1, 2
	v_add_lshl_u32 v5, s35, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v53, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v61, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v9, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v17, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v25, v5, s[12:15], 0 offen
	v_add_lshl_u32 v0, s31, v1, 2
	v_add_lshl_u32 v2, s29, v1, 2
	v_add_lshl_u32 v3, s26, v1, 2
	v_add_lshl_u32 v4, s27, v1, 2
	v_add_lshl_u32 v1, s2, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v33, v0, s[12:15], 0 offen
	buffer_atomic_add_f32 v41, v2, s[12:15], 0 offen
	buffer_atomic_add_f32 v49, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v57, v4, s[12:15], 0 offen
	buffer_atomic_add_f32 v65, v1, s[12:15], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
		.amdhsa_next_free_sgpr 83
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_vgpr, 239
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.numbered_sgpr, 83
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15480
; TotalNumSgprs: 85
; NumVgprs: 239
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 85
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     85
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     239
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
