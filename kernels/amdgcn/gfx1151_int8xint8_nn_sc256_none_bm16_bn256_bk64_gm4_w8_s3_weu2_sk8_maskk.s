	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
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
	v_and_b32_e32 v2, 0xf0, v0
	v_lshrrev_b32_e32 v4, 4, v0
	v_and_b32_e32 v41, 8, v0
	v_and_b32_e32 v42, 32, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v10, 2, v2
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s34, 15
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
	s_lshr_b32 s10, s10, 28
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
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s33, s35, 3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s6, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v9, 2, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
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
	s_lshl_b32 s7, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s6, s8, s7
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s6, s6, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s16, s6
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v3, s17
	v_readfirstlane_b32 s17, v3
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v3, s31, v4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v4, s35, v10
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_cvt_u32_f32 s17, s17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v11, v1, 4, v4
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	.loc	1 353 13 is_stmt 1              ; generate_amdgcn.py:353:13
	s_mul_i32 s18, s18, s17
	s_mov_b64 s[28:29], s[14:15]
	s_mul_hi_u32 s4, s17, s18
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v12, s35, 1, v11
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_add_i32 s17, s17, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s33, v11
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_hi_u32 s4, s5, s17
	s_xor_b32 s17, s2, s6
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
	s_cselect_b32 s4, s18, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s30, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s3, s31, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s4, s4, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s16, s3, 31
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s6, s4, s6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v5, s30, v10
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s6
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_lshr_b32 s16, s16, 24
.Ltmp17:
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s7
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s31, 0x1ff
.Ltmp19:
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s34, s4, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s6, s3, s16
.Ltmp21:
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s26, s2, 4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s18, s35, s30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x1ff
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s30, v9
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s31, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s34, s18
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s7, s26, s31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s4, v12
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v14, v3, v9, s7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v6, s4, v13
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s4, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s3, s3, s2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v7, s30, v14
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	v_cndmask_b32_e64 v3, 0x80000000, v4, s3
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s35, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[15:18], v5, s[36:39], 0 offen
	buffer_load_b128 v[19:22], v6, s[36:39], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v5, 0x80000000, v7, vcc_lo
	s_and_b32 s9, s9, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x3ff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s27, s30, 0x200
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v6, v5, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[23:26], v3, s[36:39], 0 offen
	buffer_load_b128 v[27:30], v4, s[36:39], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s27, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s7, s35, 9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s27, v10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s7, s4, s7
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v5, s27, v14
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v7, s7, v11
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s4, s31, v4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s7, v12
	v_add_nc_u32_e32 v4, s7, v13
	v_add_nc_u32_e32 v8, s35, v7
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_mov_b32 s16, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s4, s3
	s_cmpk_gt_i32 s5, 0x5ff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v39, v5, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[31:34], v7, s[36:39], 0 offen
	buffer_load_b128 v[35:38], v8, s[36:39], 0 offen
	buffer_load_b128 v[51:54], v3, s[36:39], 0 offen
	buffer_load_b128 v[55:58], v4, s[36:39], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshrrev_b32_e32 v4, 1, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v3, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v7, 2, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v4, 48, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v5, 0x420, v3
	v_and_b32_e32 v3, 14, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v43, v7, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v8, v5, v10
	v_lshlrev_b32_e32 v5, 3, v0
	v_lshlrev_b32_e32 v4, 5, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v7, 0, v43
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v44, v3, 10, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v45, 0x90, v44
	v_xor_b32_e32 v46, 0x120, v44
	v_xor_b32_e32 v47, 0x1b0, v44
	v_xor_b32_e32 v48, 0x210, v44
	v_add_nc_u32_e32 v8, 0, v44
	v_xor_b32_e32 v49, 0x330, v44
	v_xor_b32_e32 v50, 0x3a0, v44
	v_add_nc_u32_e32 v40, 0, v45
	v_add_nc_u32_e32 v59, 0, v46
	v_add_nc_u32_e32 v60, 0, v47
	v_add_nc_u32_e32 v61, 0, v48
	v_add_nc_u32_e32 v62, 0, v49
	v_add_nc_u32_e32 v63, 0, v50
	v_add_nc_u32_e32 v64, 0x4000, v8
	v_add_nc_u32_e32 v65, 0x4000, v40
	v_add_nc_u32_e32 v66, 0x4000, v59
	v_add_nc_u32_e32 v67, 0x4000, v60
	v_add_nc_u32_e32 v68, 0x4000, v61
	v_add_nc_u32_e32 v69, 0x4000, v62
	v_add_nc_u32_e32 v70, 0x4000, v63
	s_waitcnt vmcnt(8)
	v_perm_b32 v71, v19, v15, 0x4000501
	v_perm_b32 v15, v19, v15, 0x6020703
	v_perm_b32 v19, v20, v16, 0x4000501
	v_perm_b32 v16, v20, v16, 0x6020703
	v_perm_b32 v20, v21, v17, 0x4000501
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(7)
	ds_store_b32 v7, v6 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v17, v21, v17, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v6, v27, v23, 0x4000501
	v_perm_b32 v21, v22, v18, 0x4000501
	v_perm_b32 v18, v22, v18, 0x6020703
	v_perm_b32 v22, v27, v23, 0x6020703
	v_perm_b32 v23, v28, v24, 0x4000501
	v_perm_b32 v24, v28, v24, 0x6020703
	v_perm_b32 v27, v29, v25, 0x4000501
	v_perm_b32 v25, v29, v25, 0x6020703
	v_perm_b32 v28, v30, v26, 0x4000501
	v_perm_b32 v26, v30, v26, 0x6020703
	v_perm_b32 v29, v71, v6, 0x7060302
	v_perm_b32 v6, v71, v6, 0x5040100
	v_perm_b32 v30, v15, v22, 0x7060302
	v_perm_b32 v15, v15, v22, 0x5040100
	v_perm_b32 v22, v19, v23, 0x7060302
	v_perm_b32 v19, v19, v23, 0x5040100
	v_perm_b32 v23, v16, v24, 0x7060302
	v_perm_b32 v16, v16, v24, 0x5040100
	v_perm_b32 v24, v20, v27, 0x7060302
	v_perm_b32 v20, v20, v27, 0x5040100
	v_perm_b32 v27, v17, v25, 0x7060302
	v_perm_b32 v17, v17, v25, 0x5040100
	v_perm_b32 v25, v21, v28, 0x7060302
	v_perm_b32 v21, v21, v28, 0x5040100
	v_perm_b32 v28, v18, v26, 0x7060302
	v_perm_b32 v18, v18, v26, 0x5040100
	ds_store_2addr_b32 v8, v29, v6 offset1:16
	ds_store_2addr_b32 v40, v30, v15 offset1:16
	ds_store_2addr_b32 v59, v22, v19 offset1:16
	ds_store_2addr_b32 v60, v23, v16 offset1:16
	ds_store_2addr_b32 v61, v24, v20 offset1:16
	ds_store_2addr_b32 v8, v27, v17 offset0:160 offset1:176
	ds_store_2addr_b32 v62, v25, v21 offset1:16
	ds_store_2addr_b32 v63, v28, v18 offset1:16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v7, v39 offset:33792
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v6, v35, v31, 0x4000501
	s_waitcnt vmcnt(0)
	v_perm_b32 v7, v55, v51, 0x4000501
	v_perm_b32 v8, v35, v31, 0x6020703
	v_perm_b32 v15, v55, v51, 0x6020703
	v_perm_b32 v16, v36, v32, 0x4000501
	v_perm_b32 v17, v56, v52, 0x4000501
	v_perm_b32 v18, v36, v32, 0x6020703
	v_perm_b32 v19, v56, v52, 0x6020703
	v_perm_b32 v20, v37, v33, 0x4000501
	v_perm_b32 v21, v57, v53, 0x4000501
	v_perm_b32 v22, v37, v33, 0x6020703
	v_perm_b32 v23, v57, v53, 0x6020703
	v_perm_b32 v24, v38, v34, 0x4000501
	v_perm_b32 v25, v58, v54, 0x4000501
	v_perm_b32 v26, v38, v34, 0x6020703
	v_perm_b32 v27, v58, v54, 0x6020703
	v_perm_b32 v28, v7, v6, 0x7060302
	v_perm_b32 v6, v7, v6, 0x5040100
	v_perm_b32 v7, v15, v8, 0x7060302
	v_perm_b32 v8, v15, v8, 0x5040100
	v_perm_b32 v15, v17, v16, 0x7060302
	v_perm_b32 v16, v17, v16, 0x5040100
	v_perm_b32 v17, v19, v18, 0x7060302
	v_perm_b32 v18, v19, v18, 0x5040100
	v_perm_b32 v19, v21, v20, 0x7060302
	v_perm_b32 v20, v21, v20, 0x5040100
	v_perm_b32 v21, v23, v22, 0x7060302
	v_perm_b32 v22, v23, v22, 0x5040100
	v_perm_b32 v23, v25, v24, 0x7060302
	v_perm_b32 v24, v25, v24, 0x5040100
	v_perm_b32 v25, v27, v26, 0x7060302
	v_perm_b32 v26, v27, v26, 0x5040100
	ds_store_2addr_b32 v64, v28, v6 offset1:16
	ds_store_2addr_b32 v65, v7, v8 offset1:16
	ds_store_2addr_b32 v66, v15, v16 offset1:16
	ds_store_2addr_b32 v67, v17, v18 offset1:16
	ds_store_2addr_b32 v68, v19, v20 offset1:16
	ds_store_2addr_b32 v64, v21, v22 offset0:160 offset1:176
	ds_store_2addr_b32 v69, v23, v24 offset1:16
	ds_store_2addr_b32 v70, v25, v26 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v51, 48, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v52, 0x1800, v4
	v_and_b32_e32 v6, 8, v0
	v_and_b32_e32 v7, 32, v0
	s_mov_b32 s4, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v35, v1, 6, v51
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v38, 16, v35
	v_xor_b32_e32 v37, 32, v35
	v_xor_b32_e32 v36, 48, v35
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr7
.LBB0_3:                                ; %Flow43
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v8, s26, v1
	s_ashr_i32 s1, s6, 8
	v_and_b32_e32 v17, 1, v0
	v_or_b32_e32 v16, s34, v0
	v_lshlrev_b32_e32 v15, 2, v2
	v_mul_lo_u32 v34, v8, s1
	v_lshlrev_b32_e32 v39, 1, v3
	v_lshlrev_b32_e32 v40, 5, v17
	v_lshlrev_b32_e32 v30, 1, v2
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v2, v0, 3, 1
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v2, 0x210, v2
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v51, 48, v5
	v_lshlrev_b32_e32 v3, 6, v0
	v_and_b32_e32 v52, 0x1800, v4
	v_bfe_i32 v4, v0, 5, 1
	v_add3_u32 v18, 0, v15, v40
	v_xor_b32_e32 v2, v2, v51
	v_and_b32_e32 v3, 0x1c0, v3
	v_lshl_or_b32 v35, v1, 6, v51
	v_and_b32_e32 v4, 0x420, v4
	.loc	1 408 30 is_stmt 1              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v53, s35, v11
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v59, 0, v30
	v_or3_b32 v2, v3, v2, v52
	v_xor_b32_e32 v38, 16, v35
	v_xor_b32_e32 v37, 32, v35
	v_xor_b32_e32 v36, 48, v35
	v_add_nc_u32_e32 v58, v18, v39
	v_xor_b32_e32 v54, v2, v4
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v55, 16, v54
	v_xor_b32_e32 v56, 32, v54
	v_xor_b32_e32 v57, 48, v54
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v8, s23 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v33, 0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s46, s5, 9
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_add_i32 s15, s27, 0x200
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_mov_b32 s47, 1
	s_add_i32 s14, 0, 0x8000
	s_add_i32 s44, 0, 0x8400
	s_add_i32 s45, 0, 0x4000
	s_add_i32 s46, s46, -3
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s18, s17, 9
	s_mov_b32 s0, s30
	s_mov_b32 s30, s27
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s27, s15, s18
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s18, s0, 31
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v60, s27, v9
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s18, s18, 24
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v61, s27, v10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s0, s18
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v62, s27, v14
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s19, s27, s35
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s18, s0, 8
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e64 s0, s31, v60
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s19, s19, s34
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v61
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v63, s19, v11
	v_add_nc_u32_e32 v64, s19, v53
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v60, 0x80000000, v62, s0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v65, s19, v12
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s18, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v61, v34, s18, 1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s18, s18, s35
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v66, s19, v13
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v62, v16, s18, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v136, v60, s[8:11], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v60, 0x80000000, v64, vcc_lo
	v_dual_cndmask_b32 v64, 0x80000000, v65 :: v_dual_cndmask_b32 v65, 0x80000000, v66
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e64 v61, 0x80000000, v61, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v62, 0x80000000, v62, s0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x2
	buffer_load_b128 v[76:79], v63, s[36:39], 0 offen
	buffer_load_b128 v[80:83], v60, s[36:39], 0 offen
	buffer_load_b128 v[84:87], v64, s[36:39], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v137, v61, s[4:7], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v138, v62, s[40:43], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[88:91], v65, s[36:39], 0 offen
	s_mov_b32 s0, s14
	s_mov_b32 s18, s16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v60, s0, v35
	v_add_nc_u32_e32 v61, s0, v38
	v_add_nc_u32_e32 v62, s0, v37
	v_add_nc_u32_e32 v63, s0, v36
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v64, s18, v54
	v_add_nc_u32_e32 v65, s18, v55
	v_add_nc_u32_e32 v66, s18, v56
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[92:95], v60
	ds_load_b128 v[96:99], v61
	ds_load_b128 v[100:103], v62
	ds_load_b128 v[104:107], v63
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[68:71], v64
	ds_load_b128 v[108:111], v64 offset:8192
	ds_load_b128 v[112:115], v65
	ds_load_b128 v[116:119], v65 offset:8192
	ds_load_b128 v[120:123], v66
	ds_load_b128 v[124:127], v66 offset:8192
	v_add_nc_u32_e32 v67, s18, v57
	ds_load_b128 v[128:131], v67
	ds_load_b128 v[132:135], v67 offset:8192
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s0, s47, 1
	s_mov_b32 s16, s45
	s_cmp_lt_i32 s0, 2
	s_mov_b32 s14, s44
	s_cselect_b32 s47, s0, 0
	s_add_i32 s0, s17, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s18, s47, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s19, s47, 14
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[68:71], v[92:95], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[108:111], v[92:95], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s18, s18, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[112:115], v[96:99], v[60:67] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s45, s19, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[116:119], v[96:99], v[68:75] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s44, s18, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s46
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[120:123], v[100:103], v[60:67] neg_lo:[1,1,0]
	s_mov_b32 s17, s0
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[124:127], v[100:103], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[60:67], v[128:131], v[104:107], v[60:67] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[68:75], v[132:135], v[104:107], v[68:75] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v92, v60
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v93, v61
	v_cvt_f32_i32_e32 v94, v62
	v_cvt_f32_i32_e32 v95, v63
	v_cvt_f32_i32_e32 v96, v64
	v_cvt_f32_i32_e32 v97, v65
	v_cvt_f32_i32_e32 v98, v66
	v_cvt_f32_i32_e32 v99, v67
	v_cvt_f32_i32_e32 v100, v68
	v_cvt_f32_i32_e32 v101, v69
	v_cvt_f32_i32_e32 v102, v70
	v_cvt_f32_i32_e32 v103, v71
	v_cvt_f32_i32_e32 v104, v72
	v_cvt_f32_i32_e32 v105, v73
	v_cvt_f32_i32_e32 v106, v74
	v_cvt_f32_i32_e32 v107, v75
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(4)
	v_perm_b32 v60, v80, v76, 0x4000501
	v_perm_b32 v62, v80, v76, 0x6020703
	v_perm_b32 v64, v81, v77, 0x4000501
	v_perm_b32 v66, v81, v77, 0x6020703
	s_waitcnt vmcnt(0)
	v_perm_b32 v61, v88, v84, 0x4000501
	v_perm_b32 v63, v88, v84, 0x6020703
	v_perm_b32 v65, v89, v85, 0x4000501
	v_perm_b32 v67, v89, v85, 0x6020703
	v_perm_b32 v68, v82, v78, 0x4000501
	v_perm_b32 v69, v90, v86, 0x4000501
	v_perm_b32 v70, v82, v78, 0x6020703
	v_perm_b32 v71, v90, v86, 0x6020703
	v_perm_b32 v72, v83, v79, 0x4000501
	v_perm_b32 v73, v91, v87, 0x4000501
	v_perm_b32 v74, v83, v79, 0x6020703
	v_perm_b32 v75, v91, v87, 0x6020703
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v77, 16, v138
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v78, v61, v60, 0x7060302
	v_perm_b32 v79, v61, v60, 0x5040100
	v_perm_b32 v80, v63, v62, 0x7060302
	v_perm_b32 v81, v63, v62, 0x5040100
	v_perm_b32 v82, v65, v64, 0x7060302
	v_perm_b32 v83, v65, v64, 0x5040100
	v_perm_b32 v84, v67, v66, 0x7060302
	v_perm_b32 v85, v67, v66, 0x5040100
	v_perm_b32 v86, v69, v68, 0x7060302
	v_perm_b32 v87, v69, v68, 0x5040100
	v_perm_b32 v88, v71, v70, 0x7060302
	v_perm_b32 v89, v71, v70, 0x5040100
	v_perm_b32 v90, v73, v72, 0x7060302
	v_perm_b32 v91, v73, v72, 0x5040100
	v_perm_b32 v108, v75, v74, 0x7060302
	v_perm_b32 v109, v75, v74, 0x5040100
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v58, v77 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v59 offset:34816
	ds_load_b128 v[64:67], v59 offset:34832
	ds_load_b128 v[68:71], v59 offset:35328
	ds_load_b128 v[72:75], v59 offset:35344
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v76, 16, v137
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v60, v60, v76
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v17, v60, v92
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v68, v68, v76 :: v_dual_add_nc_u32 v139, s18, v43
	v_dual_mul_f32 v70, v70, v76 :: v_dual_add_nc_u32 v141, s45, v45
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v73, v73, v76 :: v_dual_add_nc_u32 v142, s45, v46
	v_dual_mul_f32 v72, v72, v76 :: v_dual_add_nc_u32 v143, s45, v47
	v_dual_mul_f32 v74, v74, v76 :: v_dual_add_nc_u32 v145, s45, v49
	v_dual_mul_f32 v75, v75, v76 :: v_dual_add_nc_u32 v146, s45, v50
	v_mul_f32_e32 v61, v61, v76
	v_mul_f32_e32 v62, v62, v76
	v_mul_f32_e32 v63, v63, v76
	v_mul_f32_e32 v64, v64, v76
	v_mul_f32_e32 v65, v65, v76
	v_mul_f32_e32 v66, v66, v76
	v_mul_f32_e32 v67, v67, v76
	v_mul_f32_e32 v69, v69, v76
	v_mul_f32_e32 v71, v71, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v23, v66, v98 :: v_dual_add_nc_u32 v140, s45, v44
	v_dual_fmac_f32 v27, v69, v101 :: v_dual_add_nc_u32 v144, s45, v48
	v_dual_fmac_f32 v18, v61, v93 :: v_dual_fmac_f32 v19, v62, v94
	v_dual_fmac_f32 v20, v63, v95 :: v_dual_fmac_f32 v21, v64, v96
	v_fmac_f32_e32 v24, v67, v99
	v_dual_fmac_f32 v22, v65, v97 :: v_dual_fmac_f32 v25, v68, v100
	v_dual_fmac_f32 v28, v70, v102 :: v_dual_fmac_f32 v29, v71, v103
	v_dual_fmac_f32 v32, v73, v105 :: v_dual_fmac_f32 v31, v72, v104
	v_dual_fmac_f32 v26, v75, v107 :: v_dual_fmac_f32 v33, v74, v106
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b32 v139, v136 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v140, v78, v79 offset1:16
	ds_store_2addr_b32 v141, v80, v81 offset1:16
	ds_store_2addr_b32 v142, v82, v83 offset1:16
	ds_store_2addr_b32 v143, v84, v85 offset1:16
	ds_store_2addr_b32 v144, v86, v87 offset1:16
	ds_store_2addr_b32 v140, v88, v89 offset0:160 offset1:176
	ds_store_2addr_b32 v145, v90, v91 offset1:16
	ds_store_2addr_b32 v146, v108, v109 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v6, v41 :: v_dual_mov_b32 v7, v42
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v18, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v17, 0
	s_add_i32 s14, 0, 0x8000
	s_add_i32 s44, 0, 0x8400
	s_add_i32 s45, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e64 s0, 0, v6
	v_dual_mov_b32 v42, 0 :: v_dual_and_b32 v41, 7, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v7
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v0, 0x210, 0, s0
	v_dual_mov_b32 v44, 0 :: v_dual_lshlrev_b32 v1, 6, v41
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v0, v0, v51
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_mov_b32_e32 v49, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_or3_b32 v0, v1, v52, v0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_mov_b32_e32 v58, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v76, v0, v2
	v_mov_b32_e32 v57, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v77, 16, v76
	v_xor_b32_e32 v78, 32, v76
	v_xor_b32_e32 v79, 48, v76
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v0, s16, v76
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v3, s14, v38
	v_add_nc_u32_e32 v4, s14, v35
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[8:11], v0 offset:8192
	ds_load_b128 v[43:46], v0
	v_add_nc_u32_e32 v1, s16, v78
	v_add_nc_u32_e32 v2, s16, v77
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[55:58], v3
	ds_load_b128 v[59:62], v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[63:66], v1 offset:8192
	ds_load_b128 v[67:70], v1
	ds_load_b128 v[71:74], v2 offset:8192
	ds_load_b128 v[80:83], v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v0, s14, v37
	v_add_nc_u32_e32 v1, s14, v36
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v12, s16, v79
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[84:87], v0
	ds_load_b128 v[88:91], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v0, s4 :: v_dual_mov_b32 v1, s5
	v_dual_mov_b32 v2, s6 :: v_dual_mov_b32 v3, s7
	v_dual_mov_b32 v4, s8 :: v_dual_mov_b32 v5, s9
	v_dual_mov_b32 v6, s10 :: v_dual_mov_b32 v7, s11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[92:95], v12
	ds_load_b128 v[96:99], v12 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[43:46], v[59:62], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[0:7], v[8:11], v[59:62], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[80:83], v[55:58], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[0:7], v[71:74], v[55:58], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[67:70], v[84:87], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[0:7], v[63:66], v[84:87], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[47:54], v[92:95], v[88:91], v[47:54] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[0:7], v[96:99], v[88:91], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v43, v48
	v_cvt_f32_i32_e32 v44, v49
	v_cvt_f32_i32_e32 v45, v50
	v_cvt_f32_i32_e32 v46, v51
	v_cvt_f32_i32_e32 v48, v52
	v_cvt_f32_i32_e32 v49, v53
	v_cvt_f32_i32_e32 v50, v54
	v_cvt_f32_i32_e32 v51, v0
	v_cvt_f32_i32_e32 v52, v1
	v_cvt_f32_i32_e32 v53, v2
	v_cvt_f32_i32_e32 v54, v3
	v_cvt_f32_i32_e32 v55, v4
	v_cvt_f32_i32_e32 v56, v5
	v_cvt_f32_i32_e32 v57, v6
	v_cvt_f32_i32_e32 v58, v7
	v_cvt_f32_i32_e32 v47, v47
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s4, s30, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 8
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v0, v34, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v1, v16, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s4, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_and_b32 s13, s13, 0xffff
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_or3_b32 v74, v15, v40, v39
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v40, 0, v30
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v75, v0, s[12:15], 0 offen
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v1, v1, s[28:31], 0 offen
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v39, 0, v74
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v59, 0 :: v_dual_lshlrev_b32 v0, 16, v1
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v39, v0 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v40 offset:34816
	ds_load_b128 v[4:7], v40 offset:34832
	ds_load_b128 v[8:11], v40 offset:35328
	ds_load_b128 v[12:15], v40 offset:35344
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
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
	v_add_nc_u32_e32 v65, s45, v76
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v38, s44, v38
	v_add_nc_u32_e32 v35, s44, v35
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v73, s11 :: v_dual_add_nc_u32 v42, s45, v78
	v_dual_mov_b32 v71, s9 :: v_dual_add_nc_u32 v64, s45, v77
	v_mov_b32_e32 v70, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[88:91], v65 offset:8192
	ds_load_b128 v[92:95], v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v69, s7 :: v_dual_mov_b32 v68, s6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[96:99], v38
	ds_load_b128 v[100:103], v35
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[104:107], v64 offset:8192
	ds_load_b128 v[108:111], v64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v66, s4 :: v_dual_add_nc_u32 v37, s44, v37
	v_dual_mov_b32 v72, s10 :: v_dual_add_nc_u32 v63, s45, v79
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[59:62], v42 offset:8192
	ds_load_b128 v[84:87], v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v67, s5 :: v_dual_add_nc_u32 v42, s44, v36
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[35:38], v37
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[116:119], v63
	ds_load_b128 v[120:123], v63 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[112:115], v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[92:95], v[100:103], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[88:91], v[100:103], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[108:111], v[96:99], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[104:107], v[96:99], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[84:87], v[35:38], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[59:62], v[35:38], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[76:83], v[116:119], v[112:115], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[120:123], v[112:115], v[66:73] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v42, v76
	v_cvt_f32_i32_e32 v59, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v60, v78
	v_cvt_f32_i32_e32 v61, v79
	v_cvt_f32_i32_e32 v62, v80
	v_cvt_f32_i32_e32 v63, v81
	v_cvt_f32_i32_e32 v64, v82
	v_cvt_f32_i32_e32 v65, v83
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s27, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s30, s14
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s4, s4, 24
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s31, s15
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s4, s27, s4
	v_mov_b16_e32 v38.l, 0
	s_ashr_i32 s4, s4, 8
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v38.h, v75.l
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s4, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v34, v34, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v35, v16, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v30, v41, 2, v30
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v75, 0x808, v74, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v76, 0xc0c, v74, 0
	v_xad_u32 v77, 0x1010, v74, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v36, v35, s[28:31], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	buffer_load_u16 v37, v34, s[12:15], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v14, v14, v38
	v_mul_f32_e32 v15, v15, v38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	v_mad_u64_u32 v[34:35], null, s26, s35, v[16:17]
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v16, 0x2040, 0, s0
	v_xad_u32 v35, 0x404, v74, 0
	v_xad_u32 v78, 0x1414, v74, 0
	v_xad_u32 v79, 0x1818, v74, 0
	v_xad_u32 v80, 0x1c1c, v74, 0
	v_xor_b32_e32 v16, v30, v16
	v_xad_u32 v81, 0x2040, v74, 0
	v_xad_u32 v82, 0x2444, v74, 0
	v_xad_u32 v83, 0x2848, v74, 0
	v_xad_u32 v84, 0x2c4c, v74, 0
	v_lshl_or_b32 v16, v41, 10, v16
	.loc	1 424 24 is_stmt 1              ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v13, v13, v38
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v85, 0x3050, v74, 0
	v_xad_u32 v86, 0x3454, v74, 0
	v_xad_u32 v87, 0x3858, v74, 0
	v_xad_u32 v41, v16, 4, 0
	v_xad_u32 v74, 0x3c5c, v74, 0
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_mul_i32 s4, s35, 5
	s_mul_i32 s5, s35, 6
	s_mul_i32 s6, s35, 7
	s_mul_i32 s7, s35, 9
	s_mul_i32 s8, s35, 10
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
	v_add_lshl_u32 v88, v34, s33, 2
	s_and_b32 s25, s25, 0xffff
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s9, s35, 11
	s_mul_i32 s10, s35, 12
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v89, v34, s4, 2
	v_add_lshl_u32 v90, v34, s5, 2
	v_add_lshl_u32 v91, v34, s6, 2
	v_add_lshl_u32 v92, v34, s7, 2
	v_add_lshl_u32 v93, v34, s8, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s11, s35, 13
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v94, v34, s9, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s12, s35, 14
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v95, v34, s10, 2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s1, s35, 15
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v96, v34, s11, 2
	v_add_lshl_u32 v97, v34, s12, 2
	.loc	1 420 22 is_stmt 1              ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v7, v7, v38
	v_mul_f32_e32 v6, v6, v38
	v_mul_f32_e32 v5, v5, v38
	v_mul_f32_e32 v4, v4, v38
	v_mul_f32_e32 v0, v0, v38
	v_mul_f32_e32 v3, v3, v38
	v_mul_f32_e32 v2, v2, v38
	v_mul_f32_e32 v1, v1, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v7, v50, v24
	v_fma_f32 v6, v6, v49, v23
	v_fma_f32 v5, v5, v48, v22
	v_fma_f32 v4, v4, v46, v21
	v_fma_f32 v46, v0, v47, v17
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v0, 16, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v45, v3, v45, v20
	v_fma_f32 v44, v2, v44, v19
	v_fma_f32 v43, v1, v43, v18
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v7, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v39, v0 offset:34816
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v40 offset:34816
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v6, s2
	v_cndmask_b32_e64 v22, v22, v5, s2
	v_cndmask_b32_e64 v21, v21, v4, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[4:7], v40 offset:34832
	v_mul_f32_e32 v11, v11, v38
	v_mul_f32_e32 v10, v10, v38
	v_mul_f32_e32 v9, v9, v38
	v_mul_f32_e32 v8, v8, v38
	v_mul_f32_e32 v12, v12, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v15, v58, v26
	v_fma_f32 v14, v14, v57, v33
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v36, 0, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v13, v13, v56, v32
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v46, s2
	v_cndmask_b32_e64 v26, v26, v15, s2
	v_cndmask_b32_e64 v33, v33, v14, s2
	v_cndmask_b32_e64 v18, v18, v43, s2
	v_cndmask_b32_e64 v32, v32, v13, s2
	v_cndmask_b32_e64 v19, v19, v44, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v0, v0, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v54, v29
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v2, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v52, v27
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v3, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v10, v10, v53, v28
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v5, v5, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v51, v25
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v1, v1, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v55, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v29, v29, v11, s2
	v_cndmask_b32_e64 v28, v28, v10, s2
	v_cndmask_b32_e64 v27, v27, v9, s2
	v_cndmask_b32_e64 v25, v25, v8, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[8:11], v40 offset:35328
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v12, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[12:15], v40 offset:35344
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v20, v45, s2
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v4, v4, v37
	v_mul_f32_e32 v6, v6, v37
	v_dual_mul_f32 v7, v7, v37 :: v_dual_lshlrev_b32 v30, 2, v34
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v0, v0, v42, v17
	v_fma_f32 v1, v1, v59, v18
	v_fma_f32 v2, v2, v60, v19
	v_fma_f32 v3, v3, v61, v20
	v_fma_f32 v4, v4, v62, v21
	v_fma_f32 v5, v5, v63, v22
	v_fma_f32 v6, v6, v64, v23
	v_fma_f32 v7, v7, v65, v24
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v0, v17, v0, s3
	v_cndmask_b32_e64 v1, v18, v1, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v40, v16, 8, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v19, v2, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v8, v8, v37
	v_mul_f32_e32 v9, v9, v37
	v_mul_f32_e32 v10, v10, v37
	v_mul_f32_e32 v11, v11, v37
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v12, v12, v37
	v_mul_f32_e32 v13, v13, v37
	v_mul_f32_e32 v14, v14, v37
	v_mul_f32_e32 v15, v15, v37
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v66, v25
	v_fma_f32 v9, v9, v67, v27
	v_fma_f32 v10, v10, v68, v28
	v_fma_f32 v11, v11, v69, v29
	v_fma_f32 v12, v12, v70, v31
	v_fma_f32 v13, v13, v71, v32
	v_fma_f32 v14, v14, v72, v33
	v_fma_f32 v15, v15, v73, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v8, v25, v8, s3
	v_cndmask_b32_e64 v9, v27, v9, s3
	v_cndmask_b32_e64 v10, v28, v10, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v43, v16, 12, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v3, v20, v3, s3
	v_cndmask_b32_e64 v11, v29, v11, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v44, v16, 16, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v21, v4, s3
	v_cndmask_b32_e64 v5, v22, v5, s3
	v_cndmask_b32_e64 v6, v23, v6, s3
	v_cndmask_b32_e64 v7, v24, v7, s3
	v_cndmask_b32_e64 v12, v31, v12, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v45, v16, 20, 0
	v_xad_u32 v46, v16, 24, 0
	v_xad_u32 v16, v16, 28, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v32, v13, s3
	v_cndmask_b32_e64 v14, v33, v14, s3
	v_cndmask_b32_e64 v15, v26, v15, s3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b32 v36, v0, v8 offset1:2
	ds_store_2addr_stride64_b32 v41, v1, v9 offset1:2
	ds_store_2addr_stride64_b32 v40, v2, v10 offset1:2
	ds_store_2addr_stride64_b32 v43, v3, v11 offset1:2
	ds_store_2addr_stride64_b32 v44, v4, v12 offset1:2
	ds_store_2addr_stride64_b32 v45, v5, v13 offset1:2
	ds_store_2addr_stride64_b32 v46, v6, v14 offset1:2
	ds_store_2addr_stride64_b32 v16, v7, v15 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v39
	ds_load_b32 v1, v35
	ds_load_b32 v2, v75
	ds_load_b32 v3, v76
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
	ds_load_b32 v15, v74
	v_add_lshl_u32 v38, v34, s35, 2
	v_lshl_add_u32 v16, s35, 3, v30
	v_lshl_add_u32 v17, s35, 4, v30
	v_lshl_add_u32 v18, s35, 5, v30
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v30, s[24:27], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v1, v38, s[24:27], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v2, v16, s[24:27], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v3, v88, s[24:27], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v4, v17, s[24:27], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v5, v89, s[24:27], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v6, v90, s[24:27], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v7, v91, s[24:27], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v8, v18, s[24:27], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v9, v92, s[24:27], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v10, v93, s[24:27], 0 offen
	v_add_lshl_u32 v0, v34, s1, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v11, v94, s[24:27], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v12, v95, s[24:27], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v13, v96, s[24:27], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v14, v97, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v15, v0, s[24:27], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
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
		.amdhsa_next_free_sgpr 48
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
		.amdhsa_inst_pref_size 53
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_vgpr, 147
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6720
; TotalNumSgprs: 50
; NumVgprs: 147
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 50
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     147
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
