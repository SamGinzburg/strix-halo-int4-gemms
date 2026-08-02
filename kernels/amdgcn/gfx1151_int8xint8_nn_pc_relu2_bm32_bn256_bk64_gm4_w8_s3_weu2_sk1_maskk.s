	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_load_b32 s30, s[0:1], 0x38
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_and_b32_e32 v13, 0xf0, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v3, 3, v0
	v_and_b32_e32 v12, 15, v0
	v_and_b32_e32 v56, 8, v0
	v_and_b32_e32 v57, 32, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v51, 2, v13
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s18, 31
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
	s_mov_b64 s[24:25], s[14:15]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b32 s15, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s27, s15
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s6, v1
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v1, 7, v0
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v50, 3, v1
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
	v_mul_lo_u32 v2, s30, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v3, s19, v51
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v9, v12, 4, v3
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[10:11], null, s19, 3, v[9:10]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_hi_u32 s4, s9, s10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v52, s19, 1, v9
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
	s_lshl_b32 s31, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s31, v51
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s30, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s4, s3, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s28, s3, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s7, s19, s31
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s31, v50
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s18, s2, 5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s30, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s29, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s3, s28, s7
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s4, s18, s30
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s3, v52
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v53, v2, v50, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s3, v10
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s3, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s2, s29
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v11, s31, v53
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v8, 0x80000000, v5, s2
	v_cndmask_b32_e64 v2, 0x80000000, v3, s2
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s19, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s29
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[4:7], v4, s[24:27], 0 offen
	buffer_load_b128 v[14:17], v8, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v8, 0x80000000, v11, vcc_lo
	s_and_b32 s13, s13, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s31, s31, 64
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[42:43], v8, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[18:21], v2, s[24:27], 0 offen
	buffer_load_b128 v[22:25], v3, s[24:27], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s31, v50
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s4, s19, 6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s31, v51
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s3, s4
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v8, s31, v53
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v11, s4, v9
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v2
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s30, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s4, v52
	v_add_nc_u32_e32 v3, s4, v10
	v_add_nc_u32_e32 v26, s19, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_mov_b32 s4, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s2
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v30, 0x80000000, v26
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[44:45], v8, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[26:29], v11, s[24:27], 0 offen
	buffer_load_b128 v[30:33], v30, s[24:27], 0 offen
	buffer_load_b128 v[34:37], v2, s[24:27], 0 offen
	buffer_load_b128 v[38:41], v3, s[24:27], 0 offen
	v_bfe_i32 v2, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v8, 48, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v11, 14, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 0x420, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v2, 3, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v3, v3, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v54, v2, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v55, v11, 10, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v8, 0, v54
	v_lshlrev_b32_e32 v3, 5, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v60, 0x90, v55
	v_xor_b32_e32 v61, 0x120, v55
	v_xor_b32_e32 v62, 0x1b0, v55
	v_xor_b32_e32 v63, 0x210, v55
	v_add_nc_u32_e32 v46, 0, v55
	v_xor_b32_e32 v64, 0x330, v55
	v_xor_b32_e32 v65, 0x3a0, v55
	v_add_nc_u32_e32 v47, 0, v60
	v_add_nc_u32_e32 v48, 0, v61
	v_add_nc_u32_e32 v49, 0, v62
	v_add_nc_u32_e32 v58, 0, v63
	v_add_nc_u32_e32 v59, 0, v64
	v_add_nc_u32_e32 v66, 0, v65
	v_add_nc_u32_e32 v67, 0x4000, v46
	v_add_nc_u32_e32 v68, 0x4000, v47
	v_add_nc_u32_e32 v69, 0x4000, v48
	v_add_nc_u32_e32 v70, 0x4000, v49
	v_add_nc_u32_e32 v71, 0x4000, v58
	v_add_nc_u32_e32 v72, 0x4000, v59
	v_add_nc_u32_e32 v73, 0x4000, v66
	s_waitcnt vmcnt(8)
	v_perm_b32 v74, v14, v4, 0x4000501
	v_perm_b32 v4, v14, v4, 0x6020703
	v_perm_b32 v14, v15, v5, 0x4000501
	v_perm_b32 v5, v15, v5, 0x6020703
	v_perm_b32 v15, v16, v6, 0x4000501
	v_perm_b32 v6, v16, v6, 0x6020703
	v_perm_b32 v16, v17, v7, 0x4000501
	v_perm_b32 v7, v17, v7, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v17, v22, v18, 0x4000501
	v_perm_b32 v18, v22, v18, 0x6020703
	v_perm_b32 v22, v23, v19, 0x4000501
	v_perm_b32 v19, v23, v19, 0x6020703
	v_perm_b32 v23, v24, v20, 0x4000501
	v_perm_b32 v20, v24, v20, 0x6020703
	v_perm_b32 v24, v25, v21, 0x4000501
	v_perm_b32 v21, v25, v21, 0x6020703
	v_perm_b32 v25, v74, v17, 0x7060302
	v_perm_b32 v17, v74, v17, 0x5040100
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b64 v8, v[42:43] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v42, v4, v18, 0x7060302
	v_perm_b32 v4, v4, v18, 0x5040100
	v_perm_b32 v18, v14, v22, 0x7060302
	v_perm_b32 v14, v14, v22, 0x5040100
	v_perm_b32 v22, v5, v19, 0x7060302
	v_perm_b32 v5, v5, v19, 0x5040100
	v_perm_b32 v19, v15, v23, 0x7060302
	v_perm_b32 v15, v15, v23, 0x5040100
	v_perm_b32 v23, v6, v20, 0x7060302
	v_perm_b32 v6, v6, v20, 0x5040100
	v_perm_b32 v20, v16, v24, 0x7060302
	v_perm_b32 v16, v16, v24, 0x5040100
	v_perm_b32 v24, v7, v21, 0x7060302
	v_perm_b32 v7, v7, v21, 0x5040100
	ds_store_2addr_b32 v46, v25, v17 offset1:16
	ds_store_2addr_b32 v47, v42, v4 offset1:16
	ds_store_2addr_b32 v48, v18, v14 offset1:16
	ds_store_2addr_b32 v49, v22, v5 offset1:16
	ds_store_2addr_b32 v58, v19, v15 offset1:16
	ds_store_2addr_b32 v46, v23, v6 offset0:160 offset1:176
	ds_store_2addr_b32 v59, v20, v16 offset1:16
	ds_store_2addr_b32 v66, v24, v7 offset1:16
	s_waitcnt vmcnt(2)
	v_perm_b32 v4, v30, v26, 0x4000501
	s_waitcnt vmcnt(0)
	v_perm_b32 v5, v38, v34, 0x4000501
	v_perm_b32 v6, v30, v26, 0x6020703
	v_perm_b32 v7, v38, v34, 0x6020703
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v8, v[44:45] offset:34816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v8, v31, v27, 0x4000501
	v_perm_b32 v14, v39, v35, 0x4000501
	v_perm_b32 v15, v31, v27, 0x6020703
	v_perm_b32 v16, v39, v35, 0x6020703
	v_perm_b32 v17, v32, v28, 0x4000501
	v_perm_b32 v18, v40, v36, 0x4000501
	v_perm_b32 v19, v32, v28, 0x6020703
	v_perm_b32 v20, v40, v36, 0x6020703
	v_perm_b32 v21, v33, v29, 0x4000501
	v_perm_b32 v22, v41, v37, 0x4000501
	v_perm_b32 v23, v33, v29, 0x6020703
	v_perm_b32 v24, v41, v37, 0x6020703
	v_perm_b32 v25, v5, v4, 0x7060302
	v_perm_b32 v4, v5, v4, 0x5040100
	v_perm_b32 v5, v7, v6, 0x7060302
	v_perm_b32 v6, v7, v6, 0x5040100
	v_perm_b32 v7, v14, v8, 0x7060302
	v_perm_b32 v8, v14, v8, 0x5040100
	v_perm_b32 v14, v16, v15, 0x7060302
	v_perm_b32 v15, v16, v15, 0x5040100
	v_perm_b32 v16, v18, v17, 0x7060302
	v_perm_b32 v17, v18, v17, 0x5040100
	v_perm_b32 v18, v20, v19, 0x7060302
	v_perm_b32 v19, v20, v19, 0x5040100
	v_perm_b32 v20, v22, v21, 0x7060302
	v_perm_b32 v21, v22, v21, 0x5040100
	v_perm_b32 v22, v24, v23, 0x7060302
	v_perm_b32 v23, v24, v23, 0x5040100
	ds_store_2addr_b32 v67, v25, v4 offset1:16
	ds_store_2addr_b32 v68, v5, v6 offset1:16
	ds_store_2addr_b32 v69, v7, v8 offset1:16
	ds_store_2addr_b32 v70, v14, v15 offset1:16
	ds_store_2addr_b32 v71, v16, v17 offset1:16
	ds_store_2addr_b32 v67, v18, v19 offset0:160 offset1:176
	ds_store_2addr_b32 v72, v20, v21 offset1:16
	ds_store_2addr_b32 v73, v22, v23 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v58, 48, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 0x1800, v3
	v_and_b32_e32 v5, 8, v0
	v_and_b32_e32 v4, 32, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v46, v12, 6, v58
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v59, v1, 6, v6
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v47, 16, v46
	v_xor_b32_e32 v49, 32, v46
	v_xor_b32_e32 v48, 48, v46
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v15, 0
	s_add_i32 s3, 0, 0x8000
	s_add_i32 s0, 0, 0x8800
	s_add_i32 s1, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr58
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr59
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_bfe_i32 v4, v0, 3, 1
	v_dual_mov_b32 v15, 0 :: v_dual_and_b32 v58, 48, v2
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s33, s5, 6
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
	v_lshl_or_b32 v46, v12, 6, v58
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v66, s19, v9
	v_lshl_or_b32 v59, v1, 6, v2
	v_xor_b32_e32 v1, v3, v58
	v_and_b32_e32 v2, 0x420, v4
	v_xor_b32_e32 v47, 16, v46
	v_xor_b32_e32 v49, 32, v46
	v_xor_b32_e32 v48, 48, v46
	v_or_b32_e32 v1, v1, v59
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v43, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v67, v1, v2
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_mov_b32_e32 v7, s10
	v_xor_b32_e32 v68, 16, v67
	v_xor_b32_e32 v69, 32, v67
	v_xor_b32_e32 v70, 48, v67
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_mov_b32_e32 v8, s11
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v14, 0
	s_add_i32 s31, s31, 64
	s_add_i32 s3, 0, 0x8000
	s_add_i32 s0, 0, 0x8800
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s33, s33, -3
	s_mov_b32 s34, 1
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s6, s5, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s6, s31, s6
	v_or_b32_e32 v71, s6, v50
	v_or_b32_e32 v72, s6, v51
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v73, s6, v53
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s7, s6, s19
	s_mov_b32 s6, s3
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v71
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s7, s7, s28
	s_mov_b32 s3, s0
	v_add_nc_u32_e32 v74, s7, v9
	v_add_nc_u32_e32 v75, s7, v66
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v71, 0x80000000, v73, vcc_lo
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v72
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v76, s7, v52
	v_add_nc_u32_e32 v77, s7, v10
	s_mov_b32 s0, s4
	s_mov_b32 s4, s1
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v72, 0x80000000, v74, vcc_lo
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	buffer_load_b64 v[175:176], v71, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v71, 0x80000000, v75 :: v_dual_cndmask_b32 v74, 0x80000000, v77
	v_cndmask_b32_e32 v73, 0x80000000, v76, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[103:106], v72, s[24:27], 0 offen
	buffer_load_b128 v[107:110], v71, s[24:27], 0 offen
	buffer_load_b128 v[111:114], v73, s[24:27], 0 offen
	buffer_load_b128 v[115:118], v74, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v71, s6, v46
	v_add_nc_u32_e32 v72, s6, v47
	v_add_nc_u32_e32 v73, s6, v49
	v_add_nc_u32_e32 v74, s6, v48
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v75, s0, v67
	v_add_nc_u32_e32 v76, s0, v68
	v_add_nc_u32_e32 v77, s0, v69
	v_add_nc_u32_e32 v78, s0, v70
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[87:90], v71
	ds_load_b128 v[119:122], v71 offset:1024
	ds_load_b128 v[123:126], v72
	ds_load_b128 v[127:130], v72 offset:1024
	ds_load_b128 v[131:134], v73
	ds_load_b128 v[135:138], v73 offset:1024
	ds_load_b128 v[139:142], v74
	ds_load_b128 v[143:146], v74 offset:1024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[95:98], v75
	ds_load_b128 v[147:150], v75 offset:8192
	ds_load_b128 v[151:154], v76
	ds_load_b128 v[155:158], v76 offset:8192
	ds_load_b128 v[159:162], v77
	ds_load_b128 v[163:166], v77 offset:8192
	ds_load_b128 v[167:170], v78
	ds_load_b128 v[171:174], v78 offset:8192
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s1, s34, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s1, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s34, s1, 0
	s_add_i32 s6, s5, 1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s1, s34, 14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s0, s34, 11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s1, s1, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s7, s0, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	s_add_i32 s0, s7, 0x8000
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[71:78], v[95:98], v[87:90], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[147:150], v[87:90], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[95:98], v[119:122], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[147:150], v[119:122], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[71:78], v[151:154], v[123:126], v[71:78] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[79:86], v[155:158], v[123:126], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[151:154], v[127:130], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[95:102], v[155:158], v[127:130], v[95:102] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[71:78], v[159:162], v[131:134], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[163:166], v[131:134], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[159:162], v[135:138], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[163:166], v[135:138], v[95:102] neg_lo:[1,1,0]
	s_mov_b32 s5, s6
	v_wmma_i32_16x16x16_iu8 v[71:78], v[167:170], v[139:142], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[79:86], v[171:174], v[139:142], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[87:94], v[167:170], v[143:146], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[95:102], v[171:174], v[143:146], v[95:102] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v71, v71
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
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v15, v15, v71
	v_dual_add_f32 v45, v45, v72 :: v_dual_add_f32 v44, v44, v73
	v_dual_add_f32 v43, v43, v74 :: v_dual_add_f32 v42, v42, v75
	v_dual_add_f32 v41, v41, v76 :: v_dual_add_f32 v40, v40, v77
	v_dual_add_f32 v39, v39, v78 :: v_dual_add_nc_u32 v178, s1, v55
	v_dual_add_f32 v37, v37, v80 :: v_dual_add_f32 v38, v38, v79
	v_dual_add_f32 v28, v28, v89 :: v_dual_add_nc_u32 v177, s7, v54
	v_dual_add_f32 v26, v26, v91 :: v_dual_add_nc_u32 v179, s1, v60
	v_dual_add_f32 v33, v33, v84 :: v_dual_add_nc_u32 v180, s1, v61
	v_dual_add_f32 v24, v24, v93 :: v_dual_add_nc_u32 v181, s1, v62
	v_dual_add_f32 v31, v31, v86 :: v_dual_add_nc_u32 v182, s1, v63
	v_dual_add_f32 v22, v22, v95 :: v_dual_add_nc_u32 v183, s1, v64
	v_dual_add_f32 v29, v29, v88 :: v_dual_add_nc_u32 v184, s1, v65
	v_dual_add_f32 v36, v36, v81 :: v_dual_add_f32 v35, v35, v82
	v_add_f32_e32 v34, v34, v83
	v_add_f32_e32 v32, v32, v85
	v_dual_add_f32 v30, v30, v87 :: v_dual_add_f32 v27, v27, v90
	v_dual_add_f32 v20, v20, v97 :: v_dual_add_f32 v25, v25, v92
	v_dual_add_f32 v18, v18, v99 :: v_dual_add_f32 v23, v23, v94
	v_dual_add_f32 v16, v16, v101 :: v_dual_add_f32 v21, v21, v96
	v_add_f32_e32 v14, v14, v102
	v_add_f32_e32 v19, v19, v98
	v_add_f32_e32 v17, v17, v100
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(4)
	ds_store_b64 v177, v[175:176] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v71, v107, v103, 0x4000501
	v_perm_b32 v73, v107, v103, 0x6020703
	s_waitcnt vmcnt(0)
	v_perm_b32 v72, v115, v111, 0x4000501
	v_perm_b32 v74, v115, v111, 0x6020703
	v_perm_b32 v75, v108, v104, 0x4000501
	v_perm_b32 v76, v116, v112, 0x4000501
	v_perm_b32 v77, v108, v104, 0x6020703
	v_perm_b32 v78, v116, v112, 0x6020703
	v_perm_b32 v79, v109, v105, 0x4000501
	v_perm_b32 v80, v117, v113, 0x4000501
	v_perm_b32 v81, v109, v105, 0x6020703
	v_perm_b32 v82, v117, v113, 0x6020703
	v_perm_b32 v83, v110, v106, 0x4000501
	v_perm_b32 v84, v118, v114, 0x4000501
	v_perm_b32 v85, v110, v106, 0x6020703
	v_perm_b32 v86, v118, v114, 0x6020703
	v_perm_b32 v87, v72, v71, 0x7060302
	v_perm_b32 v71, v72, v71, 0x5040100
	v_perm_b32 v72, v74, v73, 0x7060302
	v_perm_b32 v73, v74, v73, 0x5040100
	v_perm_b32 v74, v76, v75, 0x7060302
	v_perm_b32 v75, v76, v75, 0x5040100
	v_perm_b32 v76, v78, v77, 0x7060302
	v_perm_b32 v77, v78, v77, 0x5040100
	v_perm_b32 v78, v80, v79, 0x7060302
	v_perm_b32 v79, v80, v79, 0x5040100
	v_perm_b32 v80, v82, v81, 0x7060302
	v_perm_b32 v81, v82, v81, 0x5040100
	v_perm_b32 v82, v84, v83, 0x7060302
	v_perm_b32 v83, v84, v83, 0x5040100
	v_perm_b32 v84, v86, v85, 0x7060302
	v_perm_b32 v85, v86, v85, 0x5040100
	ds_store_2addr_b32 v178, v87, v71 offset1:16
	ds_store_2addr_b32 v179, v72, v73 offset1:16
	ds_store_2addr_b32 v180, v74, v75 offset1:16
	ds_store_2addr_b32 v181, v76, v77 offset1:16
	ds_store_2addr_b32 v182, v78, v79 offset1:16
	ds_store_2addr_b32 v178, v80, v81 offset0:160 offset1:176
	ds_store_2addr_b32 v183, v82, v83 offset1:16
	ds_store_2addr_b32 v184, v84, v85 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v5, v56 :: v_dual_mov_b32 v4, v57
.LBB0_7:                                ; %Flow38
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	v_and_b32_e32 v1, 1, v0
	s_mov_b32 s8, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v2, v2, v58
	v_cndmask_b32_e64 v3, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s29
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v2, v2, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v2, v2, v3
	v_xor_b32_e32 v3, 16, v2
	v_xor_b32_e32 v5, 32, v2
	v_xor_b32_e32 v4, 48, v2
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v10, s4, v5
	v_add_nc_u32_e32 v50, s4, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v52, s3, v46
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v51, s4, v3
	ds_load_b128 v[6:9], v10
	ds_load_b128 v[82:85], v50 offset:8192
	ds_load_b128 v[86:89], v50
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v50, s3, v47
	ds_load_b128 v[90:93], v52 offset:1024
	ds_load_b128 v[74:77], v52
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[94:97], v51 offset:8192
	ds_load_b128 v[98:101], v51
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v58, s3, v49
	ds_load_b128 v[102:105], v50 offset:1024
	ds_load_b128 v[106:109], v50
	ds_load_b128 v[110:113], v58
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v66, s4, v4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v67, s3, v48
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v57, s15 :: v_dual_mov_b32 v56, s14
	v_dual_mov_b32 v55, s13 :: v_dual_mov_b32 v54, s12
	v_mov_b32_e32 v53, s11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[114:117], v66
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v52, s10 :: v_dual_mov_b32 v51, s9
	v_mov_b32_e32 v50, s8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[118:121], v67
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[122:125], v10 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[126:129], v58 offset:1024
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[130:133], v66 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[134:137], v67 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[86:89], v[74:77], v[50:57] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[98:101], v[106:109], v[58:65] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[6:9], v[110:113], v[58:65] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[58:65], v[114:117], v[118:121], v[58:65] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v39, v39, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[66:73], v[82:85], v[74:77], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[86:89], v[90:93], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[94:97], v[106:109], v[66:73] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[74:81], v[98:101], v[102:105], v[74:81] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[122:125], v[110:113], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[74:81], v[6:9], v[126:129], v[74:81] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v6, v59
	v_cvt_f32_i32_e32 v8, v63
	v_cvt_f32_i32_e32 v7, v60
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[130:133], v[118:121], v[66:73] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v64
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v45, v45, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v61
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v41, v41, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[50:57], v[82:85], v[90:93], v[50:57] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[74:81], v[114:117], v[134:137], v[74:81] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v40, v40, v9 :: v_dual_add_f32 v43, v43, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v66
	v_wmma_i32_16x16x16_iu8 v[50:57], v[94:97], v[102:105], v[50:57] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v8, v68
	v_cvt_f32_i32_e32 v9, v69
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v44, v44, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v62
	v_cvt_f32_i32_e32 v10, v70
	v_wmma_i32_16x16x16_iu8 v[50:57], v[122:125], v[126:129], v[50:57] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v35, v35, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v74
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v34, v34, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v75
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v36, v36, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v73
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v38, v38, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v71
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v42, v42, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v67
	v_wmma_i32_16x16x16_iu8 v[50:57], v[130:133], v[134:137], v[50:57] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v31, v31, v8
	v_add_f32_e32 v33, v33, v6
	v_add_f32_e32 v29, v29, v10
	v_add_f32_e32 v37, v37, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v72
	v_cvt_f32_i32_e32 v6, v76
	v_cvt_f32_i32_e32 v8, v78
	v_cvt_f32_i32_e32 v10, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v24, v24, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v53
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v26, v26, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v51
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v28, v28, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v81
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v30, v30, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v79
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v32, v32, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v77
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v23, v23, v6
	v_add_f32_e32 v21, v21, v8
	v_add_f32_e32 v25, v25, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v52
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v27, v27, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v50
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v19, v19, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v20, v20, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v56
	v_cvt_f32_i32_e32 v9, v57
	v_cvt_f32_i32_e32 v10, v58
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v22, v22, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v55
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v18, v18, v6
	v_add_f32_e32 v16, v16, v8
	v_dual_add_f32 v14, v14, v9 :: v_dual_add_f32 v15, v15, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v17, v17, v7
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v51, 0
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
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v76, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
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
	v_add_nc_u32_e32 v6, s1, v5
	v_add_nc_u32_e32 v10, s1, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v76, s11 :: v_dual_add_nc_u32 v51, s1, v2
	v_dual_mov_b32 v71, s6 :: v_dual_add_nc_u32 v50, s1, v4
	v_mov_b32_e32 v75, s10
	v_mov_b32_e32 v73, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[2:5], v6 offset:8192
	ds_load_b128 v[6:9], v6
	ds_load_b128 v[62:65], v10 offset:8192
	ds_load_b128 v[85:88], v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v69, s4 :: v_dual_add_nc_u32 v10, s0, v46
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[89:92], v51 offset:8192
	ds_load_b128 v[93:96], v51
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v74, s9 :: v_dual_add_nc_u32 v47, s0, v47
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[97:100], v10 offset:1024
	ds_load_b128 v[77:80], v10
	v_add_nc_u32_e32 v46, s0, v49
	ds_load_b128 v[109:112], v47 offset:1024
	ds_load_b128 v[113:116], v47
	v_add_nc_u32_e32 v10, s0, v48
	ds_load_b128 v[101:104], v46 offset:1024
	ds_load_b128 v[105:108], v46
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v72, s7
	v_mov_b32_e32 v70, s5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[117:120], v10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[121:124], v50
	ds_load_b128 v[125:128], v50 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[129:132], v10 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[93:96], v[77:80], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[89:92], v[77:80], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[93:96], v[97:100], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[89:92], v[97:100], v[69:76] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[85:88], v[113:116], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[62:65], v[113:116], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[85:88], v[109:112], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[62:65], v[109:112], v[69:76] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[6:9], v[105:108], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[54:61], v[2:5], v[105:108], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[6:9], v[101:104], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[2:5], v[101:104], v[69:76] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[121:124], v[117:120], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[54:61], v[125:128], v[117:120], v[54:61] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[77:84], v[121:124], v[129:132], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[125:128], v[129:132], v[69:76] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v6, v46
	v_cvt_f32_i32_e32 v7, v47
	v_cvt_f32_i32_e32 v8, v48
	v_cvt_f32_i32_e32 v9, v49
	v_cvt_f32_i32_e32 v10, v50
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
	v_cvt_f32_i32_e32 v61, v77
	v_cvt_f32_i32_e32 v62, v78
	v_cvt_f32_i32_e32 v63, v79
	v_cvt_f32_i32_e32 v64, v80
	v_cvt_f32_i32_e32 v65, v81
	v_cvt_f32_i32_e32 v66, v82
	v_cvt_f32_i32_e32 v67, v83
	v_cvt_f32_i32_e32 v68, v84
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
.LBB0_11:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v2, s18, v12
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v3, s28, v0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s5, s21, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v7, v45, v7 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s4, s20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v6, v15, v6 :: v_dual_lshlrev_b32 v5, 1, v3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v4, 32, v2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v46, v41, v50 :: v_dual_add_f32 v49, v38, v53
	v_dual_add_f32 v50, v37, v54 :: v_dual_add_f32 v53, v34, v57
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x1
	buffer_load_u16 v3, v2, s[4:7], 0 offen
	buffer_load_u16 v2, v4, s[4:7], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s5, s23, 0xffff
	s_mov_b32 s4, s22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v54, v33, v58 :: v_dual_add_f32 v57, v30, v61
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v4, v5, s[4:7], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v58, v29, v62 :: v_dual_add_f32 v61, v26, v65
	v_dual_add_f32 v62, v25, v66 :: v_dual_add_f32 v65, v22, v69
	v_dual_add_f32 v66, v21, v70 :: v_dual_add_f32 v69, v18, v73
	v_dual_add_f32 v70, v17, v74 :: v_dual_lshlrev_b32 v73, 2, v13
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b32_e32 v78, 0x7632
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v5, 1, v13
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v10, v42, v10 :: v_dual_add_f32 v47, v40, v51
	v_dual_add_f32 v48, v39, v52 :: v_dual_add_f32 v51, v36, v55
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v79, v15, v6, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s1, s18, s19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v8, v44, v8 :: v_dual_add_f32 v9, v43, v9
	v_dual_add_f32 v52, v35, v56 :: v_dual_add_f32 v55, v32, v59
	v_dual_add_f32 v56, v31, v60 :: v_dual_add_f32 v59, v28, v63
	v_dual_add_f32 v60, v27, v64 :: v_dual_add_f32 v63, v24, v67
	v_dual_add_f32 v64, v23, v68 :: v_dual_add_f32 v67, v20, v71
	v_dual_add_f32 v68, v19, v72 :: v_dual_add_f32 v71, v16, v75
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v75, v13, 1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v36, v36, v51, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v51, s1, s28, v5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v72, v14, v76 :: v_dual_mov_b32 v77, 0x5410
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v7, s2
	v_cndmask_b32_e64 v44, v44, v8, s2
	v_cndmask_b32_e64 v43, v43, v9, s2
	v_cndmask_b32_e64 v42, v42, v10, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v76, s19, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v41, v46, s2
	v_cndmask_b32_e64 v40, v40, v47, s2
	v_cndmask_b32_e64 v39, v39, v48, s2
	v_cndmask_b32_e64 v38, v38, v49, s2
	v_cndmask_b32_e64 v37, v37, v50, s2
	v_cndmask_b32_e64 v46, v19, v68, s2
	v_cndmask_b32_e64 v47, v18, v69, s2
	v_cndmask_b32_e64 v48, v17, v70, s2
	v_cndmask_b32_e64 v49, v16, v71, s2
	v_cndmask_b32_e64 v50, v14, v72, s2
	v_cndmask_b32_e64 v21, v21, v66, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v66, s19, 4, v76
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v56, s2
	v_cndmask_b32_e64 v26, v26, v61, s2
	v_cndmask_b32_e64 v24, v24, v63, s2
	v_cndmask_b32_e64 v23, v23, v64, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v69, v51, v76, 1
	v_add_lshl_u32 v51, v51, v66, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v35, v52, s2
	v_cndmask_b32_e64 v34, v34, v53, s2
	v_cndmask_b32_e64 v33, v33, v54, s2
	v_cndmask_b32_e64 v29, v29, v58, s2
	v_cndmask_b32_e64 v28, v28, v59, s2
	v_cndmask_b32_e64 v20, v20, v67, s2
	v_cndmask_b32_e64 v25, v25, v62, s2
	v_cndmask_b32_e64 v22, v22, v65, s2
	v_cndmask_b32_e64 v27, v27, v60, s2
	v_cndmask_b32_e64 v30, v30, v57, s2
	v_cndmask_b32_e64 v32, v32, v55, s2
	s_mov_b32 s0, 0x76543210
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v74, 5, v1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.h, 0
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v4, 16, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_add3_u32 v6, 0, v73, v74
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v54.h, v1.h
	v_mov_b16_e32 v52.h, v1.h
	v_mov_b16_e32 v62.h, v1.h
	v_mov_b16_e32 v67.h, v1.h
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v5, v11, 1, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v55.h, v1.h
	v_mov_b16_e32 v53.h, v1.h
	v_mov_b16_e32 v56.h, v1.h
	v_mov_b16_e32 v58.h, v1.h
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v5, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v75
	ds_load_b128 v[8:11], v75 offset:16
	ds_load_b128 v[12:15], v75 offset:512
	ds_load_b128 v[16:19], v75 offset:528
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v60.h, v1.h
	v_mov_b16_e32 v57.h, v1.h
	v_mov_b16_e32 v59.h, v1.h
	v_mov_b16_e32 v61.h, v1.h
	v_mov_b16_e32 v65.h, v1.h
	v_mov_b16_e32 v63.h, v1.h
	v_mov_b16_e32 v64.h, v1.h
	v_mov_b16_e32 v68.h, v1.h
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v71, v6, v3
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v73, v8, v3
	v_mul_f32_e32 v75, v10, v3
	v_mul_f32_e32 v76, v11, v3
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v81, v13, v3
	v_mul_f32_e32 v66, v4, v3
	v_mul_f32_e32 v70, v5, v3
	v_mul_f32_e32 v72, v7, v3
	v_dual_mul_f32 v74, v9, v3 :: v_dual_mul_f32 v11, v11, v2
	v_mul_f32_e32 v80, v12, v3
	v_mul_f32_e32 v82, v14, v3
	v_dual_mul_f32 v83, v15, v3 :: v_dual_mul_f32 v4, v4, v2
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v85, v17, v3 :: v_dual_mul_f32 v6, v6, v2
	v_dual_mul_f32 v5, v5, v2 :: v_dual_mul_f32 v84, v16, v3
	v_dual_mul_f32 v7, v7, v2 :: v_dual_mul_f32 v86, v18, v3
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v45, v45, v70
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v3, v19, v3 :: v_dual_mul_f32 v8, v8, v2
	v_mul_f32_e32 v9, v9, v2
	v_dual_mul_f32 v10, v10, v2 :: v_dual_mul_f32 v43, v43, v72
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v42, v42, v73 :: v_dual_mul_f32 v3, v31, v3
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v13, v13, v2
	v_dual_mul_f32 v12, v12, v2 :: v_dual_mul_f32 v39, v39, v76
	v_dual_mul_f32 v14, v14, v2 :: v_dual_mul_f32 v37, v37, v81
	v_mul_f32_e32 v15, v15, v2
	v_dual_mul_f32 v16, v16, v2 :: v_dual_mul_f32 v35, v35, v83
	v_mul_f32_e32 v17, v17, v2
	v_dual_mul_f32 v18, v18, v2 :: v_dual_mul_f32 v33, v33, v85
	v_dual_mul_f32 v2, v19, v2 :: v_dual_mul_f32 v5, v29, v5
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v19, v79, v66 :: v_dual_mul_f32 v44, v44, v71
	v_mul_f32_e32 v41, v41, v74
	v_dual_mul_f32 v36, v36, v82 :: v_dual_mul_f32 v11, v23, v11
	v_dual_mul_f32 v8, v26, v8 :: v_dual_max_f32 v23, 0, v42
	v_mul_f32_e32 v10, v24, v10
	v_dual_mul_f32 v40, v40, v75 :: v_dual_mul_f32 v9, v25, v9
	v_dual_mul_f32 v34, v34, v84 :: v_dual_mul_f32 v13, v21, v13
	v_dual_mul_f32 v6, v28, v6 :: v_dual_max_f32 v19, 0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v14, v20, v14 :: v_dual_max_f32 v25, 0, v40
	v_dual_mul_f32 v16, v47, v16 :: v_dual_max_f32 v31, 0, v34
	.loc	1 443 15 is_stmt 1              ; generate_amdgcn.py:443:15
	v_dual_max_f32 v20, 0, v45 :: v_dual_max_f32 v3, 0, v3
	v_max_f32_e32 v21, 0, v44
	v_max_f32_e32 v8, 0, v8
	v_dual_max_f32 v10, 0, v10 :: v_dual_mul_f32 v23, v23, v23
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v38, v38, v80 :: v_dual_mul_f32 v7, v27, v7
	v_mul_f32_e32 v12, v22, v12
	v_dual_mul_f32 v18, v49, v18 :: v_dual_max_f32 v29, 0, v36
	v_dual_mul_f32 v2, v50, v2 :: v_dual_max_f32 v33, 0, v33
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v22, 0, v43 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v6, 0, v6 :: v_dual_mul_f32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v16, 0, v16 :: v_dual_mul_f32 v29, v29, v29
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v20, v20, v20 :: v_dual_mul_f32 v3, v3, v3
	v_mul_f32_e32 v21, v21, v21
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v54.l, v23.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v8, v8, v8
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v24, 0, v41 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v28, 0, v37 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v2, 0, v2 :: v_dual_mul_f32 v33, v33, v33
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v22, v22, v22 :: v_dual_mul_f32 v5, v5, v5
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v1.l, v20.h
	v_mov_b16_e32 v52.l, v19.h
	v_and_b32_e32 v37, 1, v54
	v_mov_b16_e32 v62.l, v8.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v16, v16, v16
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v4, v30, v4 :: v_dual_mul_f32 v17, v48, v17
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v26, 0, v39 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v30, 0, v35 :: v_dual_max_f32 v13, 0, v13
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v24, v24, v24 :: v_dual_mul_f32 v7, v7, v7
	v_dual_mul_f32 v6, v6, v6 :: v_dual_and_b32 v35, 1, v52
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v45, 1, v62
	v_mov_b16_e32 v67.l, v16.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v34, v2, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v2, 1, v1
	v_mov_b16_e32 v1.l, v22.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v27, 0, v38 :: v_dual_max_f32 v12, 0, v12
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v25, v25, v25 :: v_dual_mul_f32 v26, v26, v26
	v_mul_f32_e32 v9, v9, v9
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v19, v19, v35, 0x7fff
	v_add3_u32 v2, v20, v2, 0x7fff
	v_and_b32_e32 v20, 1, v1
	v_mov_b16_e32 v1.l, v24.h
	v_mov_b16_e32 v55.l, v25.h
	v_mov_b16_e32 v2.l, v19.h
	v_mov_b16_e32 v53.l, v21.h
	v_add3_u32 v19, v22, v20, 0x7fff
	v_and_b32_e32 v35, 1, v1
	v_mov_b16_e32 v1.l, v26.h
	v_and_b32_e32 v38, 1, v55
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v28, v28, v28 :: v_dual_mul_f32 v11, v11, v11
	v_dual_mul_f32 v30, v30, v30 :: v_dual_mul_f32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v20, 1, v1
	v_add3_u32 v25, v25, v38, 0x7fff
	v_add3_u32 v23, v23, v37, 0x7fff
	v_mov_b16_e32 v1.l, v28.h
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v17, 0, v17
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v0, v26, v20, 0x7fff
	v_mov_b16_e32 v0.l, v25.h
	v_and_b32_e32 v36, 1, v53
	v_and_b32_e32 v20, 1, v1
	v_mov_b16_e32 v1.l, v30.h
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v32, v32, v86 :: v_dual_mul_f32 v15, v46, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v21, v21, v36, 0x7fff
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v14, 0, v14 :: v_dual_mul_f32 v27, v27, v27
	v_dual_max_f32 v18, 0, v18 :: v_dual_mul_f32 v31, v31, v31
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b16_e32 v19.l, v21.h
	v_add3_u32 v21, v24, v35, 0x7fff
	v_mov_b16_e32 v21.l, v23.h
	v_dual_cndmask_b32 v23, 0x3276, v78 :: v_dual_and_b32 v24, 1, v1
	v_mov_b16_e32 v1.l, v33.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v4, v4, v4 :: v_dual_mul_f32 v17, v17, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e32 v22, v21, v2, vcc_lo
	v_cndmask_b32_e32 v2, v2, v21, vcc_lo
	v_cndmask_b32_e32 v21, 0x1054, v77, vcc_lo
	v_dual_cndmask_b32 v25, v0, v19 :: v_dual_cndmask_b32 v0, v19, v0
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v15, 0, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_permlanex16_b32 v19, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v2, v21, 8, v21
	v_lshl_or_b32 v21, v23, 8, v23
	v_add3_u32 v23, v30, v24, 0x7fff
	v_and_b32_e32 v24, 1, v1
	v_mov_b16_e32 v1.l, v3.h
	v_mov_b16_e32 v56.l, v27.h
	v_mov_b16_e32 v58.l, v31.h
	v_mov_b16_e32 v60.l, v4.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v32, v32, v32 :: v_dual_mul_f32 v15, v15, v15
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_and_b32_e32 v26, 1, v1
	v_mov_b16_e32 v1.l, v5.h
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v10, v10, v10 :: v_dual_and_b32 v39, 1, v56
	v_dual_mul_f32 v12, v12, v12 :: v_dual_and_b32 v41, 1, v58
	v_dual_mul_f32 v14, v14, v14 :: v_dual_and_b32 v43, 1, v60
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v3, v3, v26, 0x7fff
	v_and_b32_e32 v26, 1, v1
	v_mov_b16_e32 v57.l, v29.h
	v_mov_b16_e32 v59.l, v32.h
	v_add3_u32 v27, v27, v39, 0x7fff
	v_add3_u32 v31, v31, v41, 0x7fff
	v_add3_u32 v4, v4, v43, 0x7fff
	v_add3_u32 v20, v28, v20, 0x7fff
	v_add3_u32 v24, v33, v24, 0x7fff
	v_add3_u32 v26, v5, v26, 0x7fff
	v_mov_b16_e32 v20.l, v27.h
	v_mov_b16_e32 v24.l, v31.h
	v_and_b32_e32 v40, 1, v57
	v_mov_b16_e32 v26.l, v4.h
	v_and_b32_e32 v42, 1, v59
	v_and_b32_e32 v2, 0x540054, v2
	v_and_b32_e32 v21, 0x760076, v21
	v_mov_b16_e32 v1.l, v7.h
	v_cndmask_b32_e32 v27, v24, v20, vcc_lo
	v_add3_u32 v29, v29, v40, 0x7fff
	v_add3_u32 v32, v32, v42, 0x7fff
	v_mov_b16_e32 v61.l, v6.h
	v_mov_b16_e32 v65.l, v14.h
	v_lshl_or_b32 v2, v2, 4, v2
	v_mov_b16_e32 v23.l, v29.h
	v_lshl_or_b32 v21, v21, 4, v21
	v_mov_b16_e32 v3.l, v32.h
	v_and_b32_e32 v28, 1, v1
	v_mov_b16_e32 v1.l, v9.h
	v_and_b32_e32 v44, 1, v61
	v_and_b32_e32 v48, 1, v65
	v_dual_cndmask_b32 v20, v20, v24 :: v_dual_and_b32 v21, 0x7060706, v21
	v_dual_cndmask_b32 v29, v3, v23 :: v_dual_and_b32 v24, 0x5040504, v2
	v_dual_cndmask_b32 v23, v23, v3 :: v_dual_and_b32 v30, 1, v1
	v_add3_u32 v8, v8, v45, 0x7fff
	v_mov_b16_e32 v1.l, v11.h
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v19, v22, v24
	v_perm_b32 v3, v19, v22, v21
	v_permlanex16_b32 v22, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v23, v9, v30, 0x7fff
	v_add3_u32 v6, v6, v44, 0x7fff
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v23.l, v8.h
	v_and_b32_e32 v19, 1, v1
	v_mov_b16_e32 v1.l, v13.h
	v_perm_b32 v4, v0, v25, v24
	v_perm_b32 v5, v0, v25, v21
	v_add3_u32 v0, v7, v28, 0x7fff
	v_mov_b16_e32 v0.l, v6.h
	v_perm_b32 v6, v20, v27, v24
	v_perm_b32 v7, v20, v27, v21
	v_and_b32_e32 v20, 1, v1
	v_mov_b16_e32 v1.l, v15.h
	v_perm_b32 v8, v22, v29, v24
	v_perm_b32 v9, v22, v29, v21
	v_mov_b16_e32 v63.l, v10.h
	v_add3_u32 v14, v14, v48, 0x7fff
	v_and_b32_e32 v22, 1, v1
	v_mov_b16_e32 v64.l, v12.h
	v_mov_b16_e32 v1.l, v17.h
	v_add3_u32 v11, v11, v19, 0x7fff
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v18, v18, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v15, v15, v22, 0x7fff
	v_mov_b16_e32 v15.l, v14.h
	v_and_b32_e32 v46, 1, v63
	v_and_b32_e32 v47, 1, v64
	v_and_b32_e32 v49, 1, v67
	v_cndmask_b32_e32 v19, v23, v26, vcc_lo
	v_mov_b16_e32 v68.l, v18.h
	v_add3_u32 v10, v10, v46, 0x7fff
	v_add3_u32 v12, v12, v47, 0x7fff
	v_add3_u32 v13, v13, v20, 0x7fff
	v_add3_u32 v16, v16, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v11.l, v10.h
	v_dual_cndmask_b32 v10, v26, v23 :: v_dual_and_b32 v23, 1, v1
	v_mov_b16_e32 v1.l, v34.h
	v_mov_b16_e32 v13.l, v12.h
	v_cndmask_b32_e32 v12, v0, v11, vcc_lo
	v_cndmask_b32_e32 v0, v11, v0, vcc_lo
	v_add3_u32 v14, v17, v23, 0x7fff
	v_and_b32_e32 v1, 1, v1
	v_mov_b16_e32 v14.l, v16.h
	v_permlanex16_b32 v20, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v12, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v34, v1, 0x7fff
	v_and_b32_e32 v50, 1, v68
	v_cndmask_b32_e32 v12, v13, v14, vcc_lo
	v_perm_b32 v10, v20, v19, v24
	v_perm_b32 v11, v20, v19, v21
	v_add3_u32 v18, v18, v50, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v19, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v16, v0, v24
	v_mov_b16_e32 v1.l, v18.h
	v_cndmask_b32_e32 v18, v14, v13, vcc_lo
	v_perm_b32 v13, v16, v0, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v17, v15, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v15, vcc_lo
	v_perm_b32 v14, v19, v18, v24
	v_perm_b32 v15, v19, v18, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v16, v17, v1, v24
	v_perm_b32 v17, v17, v1, v21
	s_clause 0x3
	buffer_store_b128 v[2:5], v69, s[16:19], 0 offen
	buffer_store_b128 v[6:9], v69, s[16:19], 0 offen offset:256
	buffer_store_b128 v[10:13], v51, s[16:19], 0 offen
	buffer_store_b128 v[14:17], v51, s[16:19], 0 offen offset:256
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 35
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
		.amdhsa_inst_pref_size 61
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 185
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7708
; TotalNumSgprs: 37
; NumVgprs: 185
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 37
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm32_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     185
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
