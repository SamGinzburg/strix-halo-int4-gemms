	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_load_b32 s31, s[0:1], 0x38
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v9, 0xf0, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 3, v0
	v_and_b32_e32 v12, 15, v0
	v_and_b32_e32 v57, 8, v0
	v_and_b32_e32 v58, 32, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v50, 2, v9
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s28, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s4, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s28, s29, 3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b64 s[24:25], s[14:15]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s6, v1
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v1, 7, v0
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v49, 3, v1
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
	s_lshl_b32 s6, s5, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s5, s5, s4
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s7, s8, s6
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s7, s7, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v2, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v2, s31, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v3, s29, v50
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v51, v12, 4, v3
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v52, s29, 1, v51
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_hi_u32 s4, s9, s10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v53, s28, v51
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s34, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s34, v50
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s31, 0x1ff
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s4, s3, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s18, s3, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s7, s29, s34
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s34, v49
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s30, s2, 5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x1ff
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s31, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s19, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s3, s18, s7
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s4, s30, s31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s3, v52
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v54, v2, v49, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s3, v53
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s3, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s2, s19
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v10, s34, v54
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v8, 0x80000000, v5, s2
	v_cndmask_b32_e64 v2, 0x80000000, v3, s2
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s29, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[4:7], v4, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v8, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	s_and_b32 s13, s13, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x3ff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_addk_i32 s34, 0x200
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[41:42], v8, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[17:20], v2, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v3, s[24:27], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s34, v49
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s4, s29, 9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s34, v50
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s3, s4
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v8, s34, v54
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v10, s4, v51
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s31, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s4, v52
	v_add_nc_u32_e32 v3, s4, v53
	v_add_nc_u32_e32 v11, s29, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_mov_b32 s4, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s2
	s_cmpk_gt_i32 s5, 0x5ff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[43:44], v8, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[25:28], v10, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v11, s[24:27], 0 offen
	buffer_load_b128 v[33:36], v2, s[24:27], 0 offen
	buffer_load_b128 v[37:40], v3, s[24:27], 0 offen
	v_bfe_i32 v2, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v8, 48, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v10, 14, v0
	v_and_b32_e32 v11, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 0x420, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v2, 3, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v3, v3, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v55, v2, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v56, v10, 10, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v8, 0, v55
	v_lshlrev_b32_e32 v3, 5, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v61, 0x90, v56
	v_xor_b32_e32 v62, 0x120, v56
	v_xor_b32_e32 v63, 0x1b0, v56
	v_xor_b32_e32 v64, 0x210, v56
	v_add_nc_u32_e32 v45, 0, v56
	v_xor_b32_e32 v65, 0x330, v56
	v_xor_b32_e32 v66, 0x3a0, v56
	v_add_nc_u32_e32 v46, 0, v61
	v_add_nc_u32_e32 v47, 0, v62
	v_add_nc_u32_e32 v48, 0, v63
	v_add_nc_u32_e32 v59, 0, v64
	v_add_nc_u32_e32 v60, 0, v65
	v_add_nc_u32_e32 v67, 0, v66
	v_add_nc_u32_e32 v68, 0x4000, v45
	v_add_nc_u32_e32 v69, 0x4000, v46
	v_add_nc_u32_e32 v70, 0x4000, v47
	v_add_nc_u32_e32 v71, 0x4000, v48
	v_add_nc_u32_e32 v72, 0x4000, v59
	v_add_nc_u32_e32 v73, 0x4000, v60
	v_add_nc_u32_e32 v74, 0x4000, v67
	s_waitcnt vmcnt(8)
	v_perm_b32 v75, v13, v4, 0x4000501
	v_perm_b32 v4, v13, v4, 0x6020703
	v_perm_b32 v13, v14, v5, 0x4000501
	v_perm_b32 v5, v14, v5, 0x6020703
	v_perm_b32 v14, v15, v6, 0x4000501
	v_perm_b32 v6, v15, v6, 0x6020703
	v_perm_b32 v15, v16, v7, 0x4000501
	v_perm_b32 v7, v16, v7, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v16, v21, v17, 0x4000501
	v_perm_b32 v17, v21, v17, 0x6020703
	v_perm_b32 v21, v22, v18, 0x4000501
	v_perm_b32 v18, v22, v18, 0x6020703
	v_perm_b32 v22, v23, v19, 0x4000501
	v_perm_b32 v19, v23, v19, 0x6020703
	v_perm_b32 v23, v24, v20, 0x4000501
	v_perm_b32 v20, v24, v20, 0x6020703
	v_perm_b32 v24, v75, v16, 0x7060302
	v_perm_b32 v16, v75, v16, 0x5040100
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b64 v8, v[41:42] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v41, v4, v17, 0x7060302
	v_perm_b32 v4, v4, v17, 0x5040100
	v_perm_b32 v17, v13, v21, 0x7060302
	v_perm_b32 v13, v13, v21, 0x5040100
	v_perm_b32 v21, v5, v18, 0x7060302
	v_perm_b32 v5, v5, v18, 0x5040100
	v_perm_b32 v18, v14, v22, 0x7060302
	v_perm_b32 v14, v14, v22, 0x5040100
	v_perm_b32 v22, v6, v19, 0x7060302
	v_perm_b32 v6, v6, v19, 0x5040100
	v_perm_b32 v19, v15, v23, 0x7060302
	v_perm_b32 v15, v15, v23, 0x5040100
	v_perm_b32 v23, v7, v20, 0x7060302
	v_perm_b32 v7, v7, v20, 0x5040100
	ds_store_2addr_b32 v45, v24, v16 offset1:16
	ds_store_2addr_b32 v46, v41, v4 offset1:16
	ds_store_2addr_b32 v47, v17, v13 offset1:16
	ds_store_2addr_b32 v48, v21, v5 offset1:16
	ds_store_2addr_b32 v59, v18, v14 offset1:16
	ds_store_2addr_b32 v45, v22, v6 offset0:160 offset1:176
	ds_store_2addr_b32 v60, v19, v15 offset1:16
	ds_store_2addr_b32 v67, v23, v7 offset1:16
	s_waitcnt vmcnt(2)
	v_perm_b32 v4, v29, v25, 0x4000501
	s_waitcnt vmcnt(0)
	v_perm_b32 v5, v37, v33, 0x4000501
	v_perm_b32 v6, v29, v25, 0x6020703
	v_perm_b32 v7, v37, v33, 0x6020703
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v8, v[43:44] offset:34816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v8, v30, v26, 0x4000501
	v_perm_b32 v13, v38, v34, 0x4000501
	v_perm_b32 v14, v30, v26, 0x6020703
	v_perm_b32 v15, v38, v34, 0x6020703
	v_perm_b32 v16, v31, v27, 0x4000501
	v_perm_b32 v17, v39, v35, 0x4000501
	v_perm_b32 v18, v31, v27, 0x6020703
	v_perm_b32 v19, v39, v35, 0x6020703
	v_perm_b32 v20, v32, v28, 0x4000501
	v_perm_b32 v21, v40, v36, 0x4000501
	v_perm_b32 v22, v32, v28, 0x6020703
	v_perm_b32 v23, v40, v36, 0x6020703
	v_perm_b32 v24, v5, v4, 0x7060302
	v_perm_b32 v4, v5, v4, 0x5040100
	v_perm_b32 v5, v7, v6, 0x7060302
	v_perm_b32 v6, v7, v6, 0x5040100
	v_perm_b32 v7, v13, v8, 0x7060302
	v_perm_b32 v8, v13, v8, 0x5040100
	v_perm_b32 v13, v15, v14, 0x7060302
	v_perm_b32 v14, v15, v14, 0x5040100
	v_perm_b32 v15, v17, v16, 0x7060302
	v_perm_b32 v16, v17, v16, 0x5040100
	v_perm_b32 v17, v19, v18, 0x7060302
	v_perm_b32 v18, v19, v18, 0x5040100
	v_perm_b32 v19, v21, v20, 0x7060302
	v_perm_b32 v20, v21, v20, 0x5040100
	v_perm_b32 v21, v23, v22, 0x7060302
	v_perm_b32 v22, v23, v22, 0x5040100
	ds_store_2addr_b32 v68, v24, v4 offset1:16
	ds_store_2addr_b32 v69, v5, v6 offset1:16
	ds_store_2addr_b32 v70, v7, v8 offset1:16
	ds_store_2addr_b32 v71, v13, v14 offset1:16
	ds_store_2addr_b32 v72, v15, v16 offset1:16
	ds_store_2addr_b32 v68, v17, v18 offset0:160 offset1:176
	ds_store_2addr_b32 v73, v19, v20 offset1:16
	ds_store_2addr_b32 v74, v21, v22 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v59, 48, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 0x1800, v3
	v_and_b32_e32 v5, 8, v0
	v_and_b32_e32 v4, 32, v0
	s_mov_b32 s3, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v45, v12, 6, v59
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v60, v1, 6, v6
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v46, 16, v45
	v_xor_b32_e32 v48, 32, v45
	v_xor_b32_e32 v47, 48, v45
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr59
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr60
.LBB0_3:                                ; %Flow37
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v11
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v4, v0, 3, 1
	v_dual_mov_b32 v14, 0 :: v_dual_and_b32 v59, 48, v2
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s35, s5, 9
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v2, 0x1800, v3
	v_and_b32_e32 v3, 0x210, v4
	v_bfe_i32 v4, v0, 5, 1
	v_lshl_or_b32 v45, v12, 6, v59
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v67, s29, v51
	v_lshl_or_b32 v60, v1, 6, v2
	v_xor_b32_e32 v1, v3, v59
	v_and_b32_e32 v2, 0x420, v4
	v_xor_b32_e32 v46, 16, v45
	v_xor_b32_e32 v48, 32, v45
	v_xor_b32_e32 v47, 48, v45
	v_or_b32_e32 v1, v1, v60
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v68, v1, v2
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_xor_b32_e32 v69, 16, v68
	v_xor_b32_e32 v70, 32, v68
	v_xor_b32_e32 v71, 48, v68
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_mov_b32_e32 v13, 0
	s_addk_i32 s34, 0x200
	s_add_i32 s33, 0, 0x8000
	s_add_i32 s1, 0, 0x8800
	s_add_i32 s3, 0, 0x4000
	s_add_i32 s35, s35, -3
	s_mov_b32 s36, 1
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s6, s5, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s6, s34, s6
	v_or_b32_e32 v72, s6, v49
	v_or_b32_e32 v73, s6, v50
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v74, s6, v54
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s7, s6, s29
	s_mov_b32 s6, s33
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v72
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s7, s7, s18
	s_mov_b32 s33, s1
	v_add_nc_u32_e32 v75, s7, v51
	v_add_nc_u32_e32 v76, s7, v67
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v72, 0x80000000, v74, vcc_lo
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v73
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v77, s7, v52
	v_add_nc_u32_e32 v78, s7, v53
	s_mov_b32 s1, s4
	s_mov_b32 s4, s3
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v73, 0x80000000, v75, vcc_lo
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	buffer_load_b64 v[176:177], v72, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v72, 0x80000000, v76 :: v_dual_cndmask_b32 v75, 0x80000000, v78
	v_cndmask_b32_e32 v74, 0x80000000, v77, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[104:107], v73, s[24:27], 0 offen
	buffer_load_b128 v[108:111], v72, s[24:27], 0 offen
	buffer_load_b128 v[112:115], v74, s[24:27], 0 offen
	buffer_load_b128 v[116:119], v75, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v72, s6, v45
	v_add_nc_u32_e32 v73, s6, v46
	v_add_nc_u32_e32 v74, s6, v48
	v_add_nc_u32_e32 v75, s6, v47
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v76, s1, v68
	v_add_nc_u32_e32 v77, s1, v69
	v_add_nc_u32_e32 v78, s1, v70
	v_add_nc_u32_e32 v79, s1, v71
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[88:91], v72
	ds_load_b128 v[120:123], v72 offset:1024
	ds_load_b128 v[124:127], v73
	ds_load_b128 v[128:131], v73 offset:1024
	ds_load_b128 v[132:135], v74
	ds_load_b128 v[136:139], v74 offset:1024
	ds_load_b128 v[140:143], v75
	ds_load_b128 v[144:147], v75 offset:1024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[96:99], v76
	ds_load_b128 v[148:151], v76 offset:8192
	ds_load_b128 v[152:155], v77
	ds_load_b128 v[156:159], v77 offset:8192
	ds_load_b128 v[160:163], v78
	ds_load_b128 v[164:167], v78 offset:8192
	ds_load_b128 v[168:171], v79
	ds_load_b128 v[172:175], v79 offset:8192
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s3, s36, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s3, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s36, s3, 0
	s_add_i32 s6, s5, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s1, s36, 11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s3, s36, 14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s7, s1, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s3, s3, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s1, s7, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s35
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[72:79], v[96:99], v[88:91], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[148:151], v[88:91], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[88:95], v[96:99], v[120:123], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[148:151], v[120:123], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[152:155], v[124:127], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[156:159], v[124:127], v[80:87] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[152:155], v[128:131], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[156:159], v[128:131], v[96:103] neg_lo:[1,1,0]
	s_mov_b32 s5, s6
	v_wmma_i32_16x16x16_iu8 v[72:79], v[160:163], v[132:135], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[164:167], v[132:135], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[88:95], v[160:163], v[136:139], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[164:167], v[136:139], v[96:103] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[168:171], v[140:143], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[172:175], v[140:143], v[80:87] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[88:95], v[168:171], v[144:147], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[96:103], v[172:175], v[144:147], v[96:103] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v14, v14, v72
	v_dual_add_f32 v44, v44, v73 :: v_dual_add_f32 v43, v43, v74
	v_dual_add_f32 v42, v42, v75 :: v_dual_add_f32 v41, v41, v76
	v_dual_add_f32 v40, v40, v77 :: v_dual_add_f32 v39, v39, v78
	v_dual_add_f32 v38, v38, v79 :: v_dual_add_f32 v37, v37, v80
	v_add_f32_e32 v36, v36, v81
	v_dual_add_f32 v29, v29, v88 :: v_dual_add_nc_u32 v178, s7, v55
	v_dual_add_f32 v34, v34, v83 :: v_dual_add_nc_u32 v179, s3, v56
	v_dual_add_f32 v25, v25, v92 :: v_dual_add_nc_u32 v180, s3, v61
	v_dual_add_f32 v32, v32, v85 :: v_dual_add_nc_u32 v181, s3, v62
	v_dual_add_f32 v23, v23, v94 :: v_dual_add_nc_u32 v182, s3, v63
	v_dual_add_f32 v30, v30, v87 :: v_dual_add_nc_u32 v183, s3, v64
	v_dual_add_f32 v21, v21, v96 :: v_dual_add_nc_u32 v184, s3, v65
	v_dual_add_f32 v28, v28, v89 :: v_dual_add_nc_u32 v185, s3, v66
	v_add_f32_e32 v35, v35, v82
	v_add_f32_e32 v33, v33, v84
	v_add_f32_e32 v31, v31, v86
	v_dual_add_f32 v27, v27, v90 :: v_dual_add_f32 v26, v26, v91
	v_dual_add_f32 v19, v19, v98 :: v_dual_add_f32 v24, v24, v93
	v_dual_add_f32 v17, v17, v100 :: v_dual_add_f32 v22, v22, v95
	v_dual_add_f32 v15, v15, v102 :: v_dual_add_f32 v20, v20, v97
	v_add_f32_e32 v13, v13, v103
	v_add_f32_e32 v18, v18, v99
	v_add_f32_e32 v16, v16, v101
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(4)
	ds_store_b64 v178, v[176:177] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v72, v108, v104, 0x4000501
	v_perm_b32 v74, v108, v104, 0x6020703
	s_waitcnt vmcnt(0)
	v_perm_b32 v73, v116, v112, 0x4000501
	v_perm_b32 v75, v116, v112, 0x6020703
	v_perm_b32 v76, v109, v105, 0x4000501
	v_perm_b32 v77, v117, v113, 0x4000501
	v_perm_b32 v78, v109, v105, 0x6020703
	v_perm_b32 v79, v117, v113, 0x6020703
	v_perm_b32 v80, v110, v106, 0x4000501
	v_perm_b32 v81, v118, v114, 0x4000501
	v_perm_b32 v82, v110, v106, 0x6020703
	v_perm_b32 v83, v118, v114, 0x6020703
	v_perm_b32 v84, v111, v107, 0x4000501
	v_perm_b32 v85, v119, v115, 0x4000501
	v_perm_b32 v86, v111, v107, 0x6020703
	v_perm_b32 v87, v119, v115, 0x6020703
	v_perm_b32 v88, v73, v72, 0x7060302
	v_perm_b32 v72, v73, v72, 0x5040100
	v_perm_b32 v73, v75, v74, 0x7060302
	v_perm_b32 v74, v75, v74, 0x5040100
	v_perm_b32 v75, v77, v76, 0x7060302
	v_perm_b32 v76, v77, v76, 0x5040100
	v_perm_b32 v77, v79, v78, 0x7060302
	v_perm_b32 v78, v79, v78, 0x5040100
	v_perm_b32 v79, v81, v80, 0x7060302
	v_perm_b32 v80, v81, v80, 0x5040100
	v_perm_b32 v81, v83, v82, 0x7060302
	v_perm_b32 v82, v83, v82, 0x5040100
	v_perm_b32 v83, v85, v84, 0x7060302
	v_perm_b32 v84, v85, v84, 0x5040100
	v_perm_b32 v85, v87, v86, 0x7060302
	v_perm_b32 v86, v87, v86, 0x5040100
	ds_store_2addr_b32 v179, v88, v72 offset1:16
	ds_store_2addr_b32 v180, v73, v74 offset1:16
	ds_store_2addr_b32 v181, v75, v76 offset1:16
	ds_store_2addr_b32 v182, v77, v78 offset1:16
	ds_store_2addr_b32 v183, v79, v80 offset1:16
	ds_store_2addr_b32 v179, v81, v82 offset0:160 offset1:176
	ds_store_2addr_b32 v184, v83, v84 offset1:16
	ds_store_2addr_b32 v185, v85, v86 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v5, v57 :: v_dual_mov_b32 v4, v58
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v14, 0
	s_add_i32 s33, 0, 0x8000
	s_add_i32 s1, 0, 0x8800
	s_add_i32 s3, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	s_mov_b32 s8, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v1, v1, v59
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v1, v1, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v1, v1, v2
	v_xor_b32_e32 v2, 16, v1
	v_xor_b32_e32 v4, 32, v1
	v_xor_b32_e32 v3, 48, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v57, s4, v4
	v_add_nc_u32_e32 v49, s4, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v51, s33, v45
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v50, s4, v2
	ds_load_b128 v[5:8], v57
	ds_load_b128 v[81:84], v49 offset:8192
	ds_load_b128 v[85:88], v49
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v49, s33, v46
	ds_load_b128 v[89:92], v51 offset:1024
	ds_load_b128 v[73:76], v51
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[93:96], v50 offset:8192
	ds_load_b128 v[97:100], v50
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v58, s33, v48
	ds_load_b128 v[101:104], v49 offset:1024
	ds_load_b128 v[105:108], v49
	ds_load_b128 v[109:112], v58
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v65, s4, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v66, s33, v47
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v56, s15 :: v_dual_mov_b32 v55, s14
	v_dual_mov_b32 v54, s13 :: v_dual_mov_b32 v53, s12
	v_mov_b32_e32 v52, s11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[113:116], v65
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v51, s10 :: v_dual_mov_b32 v50, s9
	v_mov_b32_e32 v49, s8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[117:120], v66
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[121:124], v57 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[125:128], v58 offset:1024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[129:132], v65 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[133:136], v66 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[85:88], v[73:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[81:84], v[73:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[85:88], v[89:92], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[97:100], v[105:108], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[65:72], v[93:96], v[105:108], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[97:100], v[101:104], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[5:8], v[109:112], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[121:124], v[109:112], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[113:116], v[117:120], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[5:8], v[125:128], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[129:132], v[117:120], v[65:72] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v5, v58
	v_cvt_f32_i32_e32 v6, v59
	v_cvt_f32_i32_e32 v7, v62
	v_cvt_f32_i32_e32 v8, v63
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[73:80], v[113:116], v[133:136], v[73:80] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v44, v44, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v60
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v43, v43, v6 :: v_dual_add_f32 v40, v40, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v61
	v_cvt_f32_i32_e32 v58, v64
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v42, v42, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[49:56], v[81:84], v[89:92], v[49:56] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v39, v39, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v65
	v_cvt_f32_i32_e32 v7, v67
	v_cvt_f32_i32_e32 v8, v68
	v_wmma_i32_16x16x16_iu8 v[49:56], v[93:96], v[101:104], v[49:56] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v41, v41, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v66
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v38, v38, v58
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v58, v69
	v_wmma_i32_16x16x16_iu8 v[49:56], v[121:124], v[125:128], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v37, v37, v5 :: v_dual_add_f32 v36, v36, v6
	v_add_f32_e32 v34, v34, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v70
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v35, v35, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v71
	v_cvt_f32_i32_e32 v7, v72
	v_cvt_f32_i32_e32 v8, v73
	v_wmma_i32_16x16x16_iu8 v[49:56], v[129:132], v[133:136], v[49:56] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v33, v33, v58
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v58, v74
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v32, v32, v5
	v_dual_add_f32 v30, v30, v7 :: v_dual_add_f32 v29, v29, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v75
	v_cvt_f32_i32_e32 v7, v77
	v_cvt_f32_i32_e32 v8, v78
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v31, v31, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v76
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v28, v28, v58
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v58, v79
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v27, v27, v5 :: v_dual_add_f32 v24, v24, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v26, v26, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v80
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v25, v25, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v49
	v_cvt_f32_i32_e32 v7, v50
	v_cvt_f32_i32_e32 v8, v51
	v_cvt_f32_i32_e32 v49, v52
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v23, v23, v58 :: v_dual_add_f32 v22, v22, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v21, v21, v6 :: v_dual_add_f32 v20, v20, v7
	v_add_f32_e32 v18, v18, v49
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v53
	v_cvt_f32_i32_e32 v6, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v19, v19, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v55
	v_cvt_f32_i32_e32 v8, v56
	v_cvt_f32_i32_e32 v49, v57
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v17, v17, v5 :: v_dual_add_f32 v16, v16, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v15, v15, v7
	v_dual_add_f32 v13, v13, v8 :: v_dual_add_f32 v14, v14, v49
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
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
	v_add_nc_u32_e32 v51, s3, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v45, s1, v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v76, s11 :: v_dual_add_nc_u32 v5, s3, v4
	v_dual_mov_b32 v71, s6 :: v_dual_add_nc_u32 v46, s1, v46
	v_mov_b32_e32 v72, s7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[85:88], v51 offset:8192
	ds_load_b128 v[89:92], v51
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v70, s5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[93:96], v45 offset:1024
	ds_load_b128 v[61:64], v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v74, s9 :: v_dual_add_nc_u32 v49, s3, v2
	v_dual_mov_b32 v75, s10 :: v_dual_add_nc_u32 v50, s3, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v5 offset:8192
	ds_load_b128 v[5:8], v5
	ds_load_b128 v[77:80], v49 offset:8192
	ds_load_b128 v[81:84], v49
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v73, s8 :: v_dual_add_nc_u32 v48, s1, v48
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[105:108], v46 offset:1024
	ds_load_b128 v[109:112], v46
	v_add_nc_u32_e32 v45, s1, v47
	ds_load_b128 v[97:100], v48 offset:1024
	ds_load_b128 v[101:104], v48
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v69, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[117:120], v50
	ds_load_b128 v[121:124], v50 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[125:128], v45 offset:1024
	ds_load_b128 v[113:116], v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[89:92], v[61:64], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[85:88], v[61:64], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[61:68], v[89:92], v[93:96], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[85:88], v[93:96], v[69:76] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[81:84], v[109:112], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[77:80], v[109:112], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[61:68], v[81:84], v[105:108], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[77:80], v[105:108], v[69:76] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[5:8], v[101:104], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[1:4], v[101:104], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[61:68], v[5:8], v[97:100], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[1:4], v[97:100], v[69:76] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[117:120], v[113:116], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[53:60], v[121:124], v[113:116], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[61:68], v[117:120], v[125:128], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[121:124], v[125:128], v[69:76] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v45
	v_cvt_f32_i32_e32 v6, v46
	v_cvt_f32_i32_e32 v7, v47
	v_cvt_f32_i32_e32 v8, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
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
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v1, s30, v12
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s5, s21, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s20
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_lshlrev_b32_e32 v2, 1, v1
	.loc	1 356 14 is_stmt 1              ; generate_amdgcn.py:356:14
	v_or_b32_e32 v1, s18, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v48, v37, v53 :: v_dual_add_f32 v53, v32, v58
	v_dual_add_f32 v58, v27, v63 :: v_dual_add_f32 v63, v22, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v3, 32, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v47, v38, v52 :: v_dual_lshlrev_b32 v4, 1, v1
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x1
	buffer_load_u16 v45, v2, s[4:7], 0 offen
	buffer_load_u16 v46, v3, s[4:7], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s5, s23, 0xffff
	s_mov_b32 s4, s22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v52, v33, v57 :: v_dual_add_f32 v57, v28, v62
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v2, v4, s[4:7], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v62, v23, v67 :: v_dual_add_f32 v67, v18, v72
	v_dual_add_f32 v3, v14, v5 :: v_dual_add_f32 v4, v44, v6
	v_dual_add_f32 v68, v17, v73 :: v_dual_lshlrev_b32 v73, 5, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v37, v37, v48, s2
	v_cndmask_b32_e64 v32, v32, v53, s2
	v_cndmask_b32_e64 v53, v18, v67, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v5, v43, v7 :: v_dual_add_f32 v6, v42, v8
	v_dual_add_f32 v7, v41, v49 :: v_dual_add_f32 v8, v40, v50
	v_dual_add_f32 v12, v39, v51 :: v_dual_add_f32 v49, v36, v54
	v_dual_add_f32 v50, v35, v55 :: v_dual_add_f32 v55, v30, v60
	v_dual_add_f32 v54, v31, v59 :: v_dual_add_f32 v59, v26, v64
	v_dual_add_f32 v60, v25, v65 :: v_dual_add_f32 v65, v20, v70
	v_dual_add_f32 v64, v21, v69 :: v_dual_add_f32 v69, v16, v74
	v_add_f32_e32 v70, v15, v75
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v75, 0x840, 0, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v77, v14, v3, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v74, v9, 1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v5, s2
	v_cndmask_b32_e64 v31, v31, v54, s2
	v_cndmask_b32_e64 v30, v30, v55, s2
	v_cndmask_b32_e64 v54, v17, v68, s2
	v_cndmask_b32_e64 v55, v16, v69, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v51, v34, v56 :: v_dual_add_f32 v56, v29, v61
	v_dual_add_f32 v61, v24, v66 :: v_dual_add_f32 v66, v19, v71
	v_add_f32_e32 v71, v13, v76
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v44, v44, v4, s2
	v_cndmask_b32_e64 v40, v40, v8, s2
	v_cndmask_b32_e64 v42, v42, v6, s2
	v_cndmask_b32_e64 v41, v41, v7, s2
	v_cndmask_b32_e64 v39, v39, v12, s2
	v_cndmask_b32_e64 v38, v38, v47, s2
	v_cndmask_b32_e64 v36, v36, v49, s2
	v_cndmask_b32_e64 v35, v35, v50, s2
	v_cndmask_b32_e64 v34, v34, v51, s2
	v_cndmask_b32_e64 v33, v33, v52, s2
	v_cndmask_b32_e64 v47, v29, v56, s2
	v_cndmask_b32_e64 v28, v28, v57, s2
	v_cndmask_b32_e64 v48, v27, v58, s2
	v_cndmask_b32_e64 v26, v26, v59, s2
	v_cndmask_b32_e64 v49, v25, v60, s2
	v_cndmask_b32_e64 v24, v24, v61, s2
	v_cndmask_b32_e64 v50, v23, v62, s2
	v_cndmask_b32_e64 v22, v22, v63, s2
	v_cndmask_b32_e64 v51, v21, v64, s2
	v_cndmask_b32_e64 v20, v20, v65, s2
	v_cndmask_b32_e64 v52, v19, v66, s2
	v_cndmask_b32_e64 v57, v13, v71, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s10, s29, 5
	s_mul_i32 s11, s29, 6
	s_mul_i32 s12, s29, 7
	s_mul_i32 s13, s29, 9
	s_mul_i32 s14, s29, 10
	s_mul_i32 s15, s29, 11
	s_mul_i32 s20, s29, 12
	s_mul_i32 s21, s29, 13
	s_mul_i32 s22, s29, 14
	s_mul_i32 s23, s29, 15
	s_mul_i32 s24, s29, 17
	s_mul_i32 s25, s29, 18
	s_mul_i32 s26, s29, 19
	s_mul_i32 s27, s29, 20
	s_mul_i32 s31, s29, 21
	s_mul_i32 s33, s29, 22
	s_mul_i32 s34, s29, 23
	s_mul_i32 s35, s29, 24
	s_mul_i32 s36, s29, 25
	s_mul_i32 s9, s29, 26
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s8, s29, 27
	s_mul_i32 s5, s29, 28
	s_mul_i32 s4, s29, 29
	s_mul_i32 s3, s29, 30
	s_mul_i32 s1, s29, 31
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v18, 16, v45
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v72, 2, v9
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v0, 2, v0
	v_lshlrev_b32_e32 v9, 3, v9
	v_lshlrev_b32_e32 v11, 6, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v15, v70, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_add3_u32 v3, 0, v72, v73
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v0, 0x3f8, v0
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[16:17], null, s30, s29, v[1:2]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v1, v10, 1, v3
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v5, v75, v0
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v0, 16, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v78, v16, s28, 2
	v_lshl_or_b32 v17, v10, 11, v5
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v74
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v76, 2, v10
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[12:15], v74 offset:528
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v104, v17, 8, 0
	v_xad_u32 v105, v17, 16, 0
	v_xad_u32 v106, v17, 24, 0
	v_or3_b32 v4, v9, v11, v76
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[8:11], v74 offset:512
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v75, 2, v16
	v_add_nc_u32_e32 v103, 0, v17
	v_xad_u32 v107, v17, 32, 0
	v_add_nc_u32_e32 v58, 0, v4
	v_xad_u32 v59, 0x840, v4, 0
	v_xad_u32 v60, 0x1008, v4, 0
	v_xad_u32 v61, 0x1848, v4, 0
	v_xad_u32 v62, 0x2010, v4, 0
	v_xad_u32 v63, 0x2850, v4, 0
	v_xad_u32 v64, 0x3018, v4, 0
	v_xad_u32 v65, 0x3858, v4, 0
	v_xad_u32 v66, 0x4020, v4, 0
	v_xad_u32 v67, 0x4860, v4, 0
	v_xad_u32 v68, 0x5028, v4, 0
	v_xad_u32 v69, 0x5868, v4, 0
	v_xad_u32 v70, 0x6030, v4, 0
	v_xad_u32 v71, 0x6870, v4, 0
	v_xad_u32 v72, 0x7038, v4, 0
	v_xad_u32 v73, 0x7878, v4, 0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[4:7], v74 offset:16
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v74, v17, 40, 0
	v_xad_u32 v108, v17, 48, 0
	v_xad_u32 v45, v17, 56, 0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v17, 16, v46
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v110, v8, v18
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_lshl_u32 v76, v16, s29, 2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v117, v0, v17
	v_mul_f32_e32 v118, v1, v17
	v_mul_f32_e32 v119, v2, v17
	v_mul_f32_e32 v120, v3, v17
	v_mul_f32_e32 v126, v9, v17
	v_mul_f32_e32 v128, v11, v17
	v_mul_f32_e32 v125, v8, v17
	v_mul_f32_e32 v130, v13, v17
	v_mul_f32_e32 v127, v10, v17
	v_mul_f32_e32 v131, v14, v17
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_lshl_u32 v79, v16, s10, 2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v121, v4, v17
	v_mul_f32_e32 v122, v5, v17
	v_mul_f32_e32 v123, v6, v17
	v_mul_f32_e32 v124, v7, v17
	v_mul_f32_e32 v132, v15, v17
	v_mul_f32_e32 v129, v12, v17
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v17, v37, v110
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v21, v1, v18
	v_mul_f32_e32 v23, v2, v18
	v_mul_f32_e32 v25, v3, v18
	v_mul_f32_e32 v27, v4, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v29, v5, v18 :: v_dual_mul_f32 v2, v44, v21
	v_mul_f32_e32 v19, v0, v18
	v_mul_f32_e32 v46, v6, v18
	v_dual_mul_f32 v109, v7, v18 :: v_dual_mul_f32 v6, v42, v25
	v_mul_f32_e32 v111, v9, v18
	v_mul_f32_e32 v112, v10, v18
	v_mul_f32_e32 v114, v12, v18
	v_dual_mul_f32 v115, v13, v18 :: v_dual_mul_f32 v4, v43, v23
	v_dual_mul_f32 v113, v11, v18 :: v_dual_mul_f32 v8, v41, v27
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v10, v40, v29
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v116, v14, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v18, v15, v18 :: v_dual_mul_f32 v23, v34, v113
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v0, v77, v19
	v_dual_mul_f32 v14, v38, v109 :: v_dual_mul_f32 v19, v36, v111
	v_mul_f32_e32 v21, v35, v112
	v_mul_f32_e32 v25, v33, v114
	v_mul_f32_e32 v27, v32, v115
	v_mul_f32_e32 v29, v31, v116
	v_mul_f32_e32 v31, v30, v18
	v_mul_f32_e32 v3, v28, v118
	v_mul_f32_e32 v5, v48, v119
	v_mul_f32_e32 v7, v26, v120
	v_mul_f32_e32 v11, v24, v122
	v_dual_mul_f32 v15, v22, v124 :: v_dual_mul_f32 v20, v20, v126
	v_dual_mul_f32 v24, v53, v128 :: v_dual_mul_f32 v13, v50, v123
	v_mul_f32_e32 v18, v51, v125
	v_mul_f32_e32 v28, v55, v130
	v_dual_mul_f32 v22, v52, v127 :: v_dual_mul_f32 v1, v47, v117
	v_mul_f32_e32 v30, v56, v131
	v_dual_mul_f32 v12, v39, v46 :: v_dual_mul_f32 v9, v49, v121
	v_mul_f32_e32 v32, v57, v132
	v_mul_f32_e32 v26, v54, v129
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b64 v103, v[0:1], v[17:18] offset1:2
	ds_store_2addr_stride64_b64 v104, v[2:3], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v105, v[4:5], v[21:22] offset1:2
	ds_store_2addr_stride64_b64 v106, v[6:7], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v107, v[8:9], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v74, v[10:11], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v108, v[12:13], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v45, v[14:15], v[31:32] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v58
	ds_load_b64 v[2:3], v59
	ds_load_b64 v[4:5], v60
	ds_load_b64 v[6:7], v61
	ds_load_b64 v[8:9], v62
	ds_load_b64 v[10:11], v63
	ds_load_b64 v[12:13], v64
	ds_load_b64 v[14:15], v65
	ds_load_b64 v[17:18], v66
	ds_load_b64 v[19:20], v67
	ds_load_b64 v[21:22], v68
	ds_load_b64 v[23:24], v69
	ds_load_b64 v[25:26], v70
	ds_load_b64 v[27:28], v71
	ds_load_b64 v[29:30], v72
	ds_load_b64 v[31:32], v73
	v_lshl_add_u32 v33, s29, 3, v75
	v_lshl_add_u32 v34, s29, 4, v75
	v_add_lshl_u32 v80, v16, s11, 2
	v_add_lshl_u32 v81, v16, s12, 2
	v_add_lshl_u32 v82, v16, s13, 2
	v_add_lshl_u32 v83, v16, s14, 2
	v_add_lshl_u32 v84, v16, s15, 2
	v_add_lshl_u32 v85, v16, s20, 2
	v_add_lshl_u32 v86, v16, s21, 2
	v_add_lshl_u32 v87, v16, s22, 2
	v_add_lshl_u32 v88, v16, s23, 2
	v_add_lshl_u32 v89, v16, s24, 2
	v_add_lshl_u32 v90, v16, s25, 2
	v_add_lshl_u32 v91, v16, s26, 2
	v_add_lshl_u32 v92, v16, s27, 2
	v_add_lshl_u32 v93, v16, s31, 2
	v_add_lshl_u32 v94, v16, s33, 2
	v_add_lshl_u32 v95, v16, s34, 2
	v_add_lshl_u32 v96, v16, s35, 2
	v_add_lshl_u32 v97, v16, s36, 2
	v_add_lshl_u32 v98, v16, s9, 2
	v_lshl_add_u32 v35, s29, 5, v75
	v_lshl_add_u32 v36, s29, 6, v75
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v75, s[16:19], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v2, v76, s[16:19], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v4, v33, s[16:19], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v6, v78, s[16:19], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v8, v34, s[16:19], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v10, v79, s[16:19], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v12, v80, s[16:19], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v14, v81, s[16:19], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v17, v35, s[16:19], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v19, v82, s[16:19], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v21, v83, s[16:19], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v23, v84, s[16:19], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v25, v85, s[16:19], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v27, v86, s[16:19], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v29, v87, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0xb
	buffer_atomic_add_f32 v31, v88, s[16:19], 0 offen
	buffer_atomic_add_f32 v1, v36, s[16:19], 0 offen
	buffer_atomic_add_f32 v3, v89, s[16:19], 0 offen
	buffer_atomic_add_f32 v5, v90, s[16:19], 0 offen
	buffer_atomic_add_f32 v7, v91, s[16:19], 0 offen
	buffer_atomic_add_f32 v9, v92, s[16:19], 0 offen
	buffer_atomic_add_f32 v11, v93, s[16:19], 0 offen
	buffer_atomic_add_f32 v13, v94, s[16:19], 0 offen
	buffer_atomic_add_f32 v15, v95, s[16:19], 0 offen
	buffer_atomic_add_f32 v18, v96, s[16:19], 0 offen
	buffer_atomic_add_f32 v20, v97, s[16:19], 0 offen
	buffer_atomic_add_f32 v22, v98, s[16:19], 0 offen
	v_add_lshl_u32 v99, v16, s8, 2
	v_add_lshl_u32 v100, v16, s5, 2
	v_add_lshl_u32 v101, v16, s4, 2
	v_add_lshl_u32 v102, v16, s3, 2
	v_add_lshl_u32 v0, v16, s1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v24, v99, s[16:19], 0 offen
	buffer_atomic_add_f32 v26, v100, s[16:19], 0 offen
	buffer_atomic_add_f32 v28, v101, s[16:19], 0 offen
	buffer_atomic_add_f32 v30, v102, s[16:19], 0 offen
	buffer_atomic_add_f32 v32, v0, s[16:19], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
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
		.amdhsa_next_free_sgpr 37
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
		.amdhsa_inst_pref_size 58
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_vgpr, 186
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7344
; TotalNumSgprs: 39
; NumVgprs: 186
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 39
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     186
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
