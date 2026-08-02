	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v65, 2, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v64, 3, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v28, 0xf0, v0
	s_load_b32 s33, s[0:1], 0x38
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v30, 1, v0
	v_or_b32_e32 v70, 0x3f0, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v2, 24, v64
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v66, 2, v28
	v_or_b32_e32 v71, 0x7f0, v0
	v_and_b32_e32 v72, 8, v0
	v_and_b32_e32 v73, 32, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v29, 14, v0
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
	v_mul_lo_u32 v3, s29, v66
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s30, s29, 3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b64 s[24:25], s[14:15]
	s_mov_b32 s15, 0x31027000
	v_rcp_iflag_f32_e32 v1, s6
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s27, s15
	s_mov_b32 s26, s14
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
	s_sub_i32 s2, s2, s5
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s7, s7, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mul_lo_u32 v1, s28, v65
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
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
	v_or_b32_e32 v4, s34, v66
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s33, 0xff
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s4, s3, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s18, s3, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s4
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s7, s28, s34
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s29, s34
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s3, s2, 5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xff
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v25, v1, v2, s3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s31, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s18, s4
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s33, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v11, s7, v25
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v31, 15, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s2, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v67, v31, 4, v3
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s34, v65
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v68, s29, 1, v67
	v_add_nc_u32_e32 v69, s30, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s4, v67
	v_add_nc_u32_e32 v4, s4, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v5, s4, v69
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v12, s29, v3
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x80000000, v3, s2
	v_cndmask_b32_e64 v2, 0x80000000, v4, s2
	v_cndmask_b32_e64 v7, 0x80000000, v5, s2
	s_clause 0x1
	buffer_load_b128 v[3:6], v2, s[24:27], 0 offen
	buffer_load_b128 v[7:10], v7, s[24:27], 0 offen
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v2, 0x80000000, v11, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x1ff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v15, 0x80000000, v12, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_addk_i32 s34, 0x100
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s6, s29, 8
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	buffer_load_b64 v[23:24], v2, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[11:14], v1, s[24:27], 0 offen
	buffer_load_b128 v[15:18], v15, s[24:27], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s34, v66
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v2, s4, v67
	v_add_nc_u32_e32 v19, s4, v68
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v1
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v20, s4, v69
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s4, s28, 8
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s29, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v27, 0x80000000, v20
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v26, 0x80000000, v19
	s_clause 0x3
	buffer_load_b128 v[19:22], v2, s[24:27], 0 offen
	buffer_load_b128 v[32:35], v1, s[24:27], 0 offen
	buffer_load_b128 v[36:39], v26, s[24:27], 0 offen
	buffer_load_b128 v[40:43], v27, s[24:27], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s34, v65
	v_lshlrev_b32_e32 v2, 5, v0
	v_and_b32_e32 v74, 48, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v1, s7, s4, v25
	s_mov_b32 s4, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s5, 0x2ff
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_b64 v[26:27], v1, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 0x420, v1
	v_xor_b32_e32 v44, v1, v66
	v_lshlrev_b32_e32 v1, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v76, v29, 10, v44
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v44, 0, v64
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v77, 0x90, v76
	v_xor_b32_e32 v78, 0x120, v76
	v_xor_b32_e32 v79, 0x1b0, v76
	v_xor_b32_e32 v80, 0x210, v76
	v_add_nc_u32_e32 v45, 0, v76
	v_xor_b32_e32 v81, 0x330, v76
	v_xor_b32_e32 v82, 0x3a0, v76
	v_add_nc_u32_e32 v46, 0, v77
	v_add_nc_u32_e32 v47, 0, v78
	v_add_nc_u32_e32 v48, 0, v79
	v_add_nc_u32_e32 v49, 0, v80
	v_add_nc_u32_e32 v50, 0, v81
	v_add_nc_u32_e32 v51, 0, v82
	v_add_nc_u32_e32 v52, 0x4000, v45
	v_add_nc_u32_e32 v53, 0x4000, v46
	v_add_nc_u32_e32 v54, 0x4000, v47
	v_add_nc_u32_e32 v55, 0x4000, v48
	v_add_nc_u32_e32 v56, 0x4000, v49
	v_add_nc_u32_e32 v57, 0x4000, v50
	v_add_nc_u32_e32 v58, 0x4000, v51
	s_waitcnt vmcnt(8)
	v_perm_b32 v59, v7, v3, 0x4000501
	v_perm_b32 v3, v7, v3, 0x6020703
	v_perm_b32 v7, v8, v4, 0x4000501
	v_perm_b32 v4, v8, v4, 0x6020703
	v_perm_b32 v8, v9, v5, 0x4000501
	v_perm_b32 v5, v9, v5, 0x6020703
	v_perm_b32 v9, v10, v6, 0x4000501
	v_perm_b32 v6, v10, v6, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v10, v15, v11, 0x4000501
	v_perm_b32 v11, v15, v11, 0x6020703
	v_perm_b32 v15, v16, v12, 0x4000501
	v_perm_b32 v12, v16, v12, 0x6020703
	v_perm_b32 v16, v17, v13, 0x4000501
	v_perm_b32 v13, v17, v13, 0x6020703
	v_perm_b32 v17, v18, v14, 0x4000501
	v_perm_b32 v14, v18, v14, 0x6020703
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b64 v44, v[23:24] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v18, v59, v10, 0x7060302
	v_perm_b32 v10, v59, v10, 0x5040100
	v_perm_b32 v23, v3, v11, 0x7060302
	v_perm_b32 v3, v3, v11, 0x5040100
	v_perm_b32 v11, v7, v15, 0x7060302
	v_perm_b32 v7, v7, v15, 0x5040100
	v_perm_b32 v15, v4, v12, 0x7060302
	v_perm_b32 v4, v4, v12, 0x5040100
	v_perm_b32 v12, v8, v16, 0x7060302
	v_perm_b32 v8, v8, v16, 0x5040100
	v_perm_b32 v16, v5, v13, 0x7060302
	v_perm_b32 v5, v5, v13, 0x5040100
	v_perm_b32 v13, v9, v17, 0x7060302
	v_perm_b32 v9, v9, v17, 0x5040100
	v_perm_b32 v17, v6, v14, 0x7060302
	v_perm_b32 v6, v6, v14, 0x5040100
	s_waitcnt vmcnt(3)
	v_perm_b32 v14, v32, v19, 0x4000501
	s_waitcnt vmcnt(1)
	v_perm_b32 v24, v40, v36, 0x4000501
	v_perm_b32 v19, v32, v19, 0x6020703
	v_perm_b32 v32, v40, v36, 0x6020703
	v_perm_b32 v36, v33, v20, 0x4000501
	v_perm_b32 v40, v41, v37, 0x4000501
	v_perm_b32 v20, v33, v20, 0x6020703
	v_perm_b32 v33, v41, v37, 0x6020703
	v_perm_b32 v37, v34, v21, 0x4000501
	v_perm_b32 v41, v42, v38, 0x4000501
	v_perm_b32 v21, v34, v21, 0x6020703
	v_perm_b32 v34, v42, v38, 0x6020703
	v_perm_b32 v38, v35, v22, 0x4000501
	v_perm_b32 v42, v43, v39, 0x4000501
	v_perm_b32 v22, v35, v22, 0x6020703
	v_perm_b32 v35, v43, v39, 0x6020703
	ds_store_2addr_b32 v45, v18, v10 offset1:16
	ds_store_2addr_b32 v46, v23, v3 offset1:16
	ds_store_2addr_b32 v47, v11, v7 offset1:16
	ds_store_2addr_b32 v48, v15, v4 offset1:16
	ds_store_2addr_b32 v49, v12, v8 offset1:16
	ds_store_2addr_b32 v45, v16, v5 offset0:160 offset1:176
	ds_store_2addr_b32 v50, v13, v9 offset1:16
	ds_store_2addr_b32 v51, v17, v6 offset1:16
	v_perm_b32 v3, v24, v14, 0x7060302
	v_perm_b32 v4, v24, v14, 0x5040100
	v_perm_b32 v5, v32, v19, 0x7060302
	v_perm_b32 v6, v32, v19, 0x5040100
	v_perm_b32 v7, v40, v36, 0x7060302
	v_perm_b32 v8, v40, v36, 0x5040100
	v_perm_b32 v9, v33, v20, 0x7060302
	v_perm_b32 v10, v33, v20, 0x5040100
	v_perm_b32 v11, v41, v37, 0x7060302
	v_perm_b32 v12, v41, v37, 0x5040100
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v44, v[26:27] offset:34816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v13, v34, v21, 0x7060302
	v_perm_b32 v14, v34, v21, 0x5040100
	v_perm_b32 v15, v42, v38, 0x7060302
	v_perm_b32 v16, v42, v38, 0x5040100
	v_perm_b32 v17, v35, v22, 0x7060302
	v_perm_b32 v18, v35, v22, 0x5040100
	ds_store_2addr_b32 v52, v3, v4 offset1:16
	ds_store_2addr_b32 v53, v5, v6 offset1:16
	ds_store_2addr_b32 v54, v7, v8 offset1:16
	ds_store_2addr_b32 v55, v9, v10 offset1:16
	ds_store_2addr_b32 v56, v11, v12 offset1:16
	ds_store_2addr_b32 v52, v13, v14 offset0:160 offset1:176
	ds_store_2addr_b32 v57, v15, v16 offset1:16
	ds_store_2addr_b32 v58, v17, v18 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 0x1800, v2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v9, 0x3f0, v0
	v_or_b32_e32 v10, 0x7f0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v3, 48, v64
	v_and_b32_e32 v5, 8, v0
	v_and_b32_e32 v4, 32, v0
	v_and_or_b32 v75, 0x1c0, v1, v6
	s_mov_b32 s6, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr10
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr75
.LBB0_3:                                ; %Flow37
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
	v_cmp_eq_u32_e64 s0, 0, v30
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v3, v0, 3, 1
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v2, 0x1800, v2
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s35, s5, 8
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v3, 0x210, v3
	v_bfe_i32 v4, v0, 5, 1
	v_and_or_b32 v75, 0x1c0, v1, v2
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v83, s29, v67
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_xor_b32_e32 v1, v3, v74
	v_dual_mov_b32 v61, 0 :: v_dual_and_b32 v2, 0x420, v4
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v62, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v1, v75, v1
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v54, 0
	v_xor_b32_e32 v84, v1, v2
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v85, 16, v84
	v_xor_b32_e32 v86, 32, v84
	v_xor_b32_e32 v87, 48, v84
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v8, s11 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v32, 0
	s_addk_i32 s34, 0x100
	s_add_i32 s36, 0, 0x8000
	s_add_i32 s19, 0, 0x8800
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s35, s35, -3
	s_mov_b32 s37, 1
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s7, s5, 8
	s_mov_b32 s6, s4
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s4, s34, s7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, s6, v84
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v13, s4, v65
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s4, s28, v[25:26]
	.loc	1 402 22 is_stmt 0              ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v124, s36, v31
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v12, s6, v85
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v13
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v104, s36, v70
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v125, s6, v86
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b64 v[26:27], v9, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[88:91], v11
	ds_load_b128 v[108:111], v11 offset:8192
	ds_load_b128 v[100:103], v12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v124 offset:416
	ds_load_u8 v10, v124 offset:384
	ds_load_u8 v11, v124 offset:480
	ds_load_u8 v13, v124 offset:448
	ds_load_u8 v14, v124 offset:288
	ds_load_u8 v15, v124 offset:256
	ds_load_u8 v16, v124 offset:352
	ds_load_u8 v17, v124 offset:320
	ds_load_u8 v18, v124 offset:160
	ds_load_u8 v19, v124 offset:128
	ds_load_u8 v20, v124 offset:224
	ds_load_u8 v21, v124 offset:192
	ds_load_u8 v22, v124 offset:96
	ds_load_u8 v23, v124 offset:64
	ds_load_u8 v24, v124
	ds_load_u8 v92, v124 offset:32
	ds_load_u8 v93, v124 offset:928
	ds_load_u8 v94, v124 offset:896
	ds_load_u8 v95, v124 offset:992
	ds_load_u8 v96, v124 offset:960
	ds_load_u8 v97, v124 offset:800
	ds_load_u8 v98, v124 offset:768
	ds_load_u8 v99, v124 offset:864
	ds_load_u8 v105, v124 offset:832
	ds_load_u8 v106, v124 offset:672
	ds_load_u8 v107, v124 offset:640
	ds_load_u8 v116, v124 offset:736
	ds_load_u8 v117, v124 offset:704
	ds_load_u8 v118, v124 offset:544
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v124 offset:512
	ds_load_u8 v122, v124 offset:464
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v124 offset:608
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v124 offset:576
	ds_load_u8 v121, v124 offset:496
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v17, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v18, v21, v20, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[112:115], v12 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v12, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v19, v24, v92, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v20, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v21, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v22, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v23, v105, v99, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v24, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v96, v117, v116, 0xc0c0004
	v_lshl_or_b32 v95, v11, 16, v9
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v10, v10, v118, 0xc0c0004
	v_lshl_or_b32 v94, v16, 16, v14
	v_lshl_or_b32 v93, v18, 16, v17
	v_lshl_or_b32 v92, v12, 16, v19
	ds_load_u8 v119, v124 offset:432
	ds_load_u8 v120, v124 offset:400
	ds_load_u8 v123, v124 offset:304
	ds_load_u8 v105, v124 offset:272
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	v_lshl_or_b32 v99, v21, 16, v20
	v_lshl_or_b32 v98, v23, 16, v22
	v_lshl_or_b32 v97, v96, 16, v24
	v_wmma_i32_16x16x16_iu8 v[17:24], v[108:111], v[92:95], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v96, v13, 16, v10
	v_wmma_i32_16x16x16_iu8 v[9:16], v[88:91], v[92:95], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v92, v124 offset:368
	ds_load_u8 v93, v124 offset:336
	ds_load_u8 v94, v124 offset:176
	ds_load_u8 v95, v124 offset:144
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[112:115], v[96:99], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[100:103], v[96:99], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v97, v124 offset:240
	ds_load_u8 v99, v124 offset:208
	v_perm_b32 v98, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v96, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v105, v105, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v119, v98, 16, v96
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v124 offset:80
	v_lshl_or_b32 v118, v92, 16, v105
	ds_load_u8 v92, v124 offset:16
	ds_load_u8 v93, v124 offset:112
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v96, v99, v97, 0xc0c0004
	ds_load_u8 v97, v124 offset:48
	v_lshl_or_b32 v117, v96, 16, v94
	ds_load_u8 v94, v124 offset:944
	ds_load_u8 v96, v124 offset:912
	ds_load_u8 v98, v104
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v93, v95, v93, 0xc0c0004
	ds_load_u8 v95, v124 offset:976
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v92, v92, v97, 0xc0c0004
	ds_load_u8 v97, v124 offset:816
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v94, v96, v94, 0xc0c0004
	v_lshl_or_b32 v116, v93, 16, v92
	ds_load_u8 v92, v124 offset:656
	ds_load_u8 v93, v124 offset:752
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v95, v95, v98, 0xc0c0004
	ds_load_u8 v98, v124 offset:880
	ds_load_u8 v96, v124 offset:784
	v_lshl_or_b32 v123, v95, 16, v94
	ds_load_u8 v94, v124 offset:720
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v96, v96, v97, 0xc0c0004
	ds_load_u8 v97, v124 offset:848
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v124 offset:560
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v97, v97, v98, 0xc0c0004
	ds_load_u8 v98, v124 offset:688
	v_lshl_or_b32 v122, v97, 16, v96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v92, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v121, v93, 16, v92
	ds_load_u8 v92, v124 offset:528
	ds_load_u8 v93, v124 offset:624
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v92, v92, v94, 0xc0c0004
	ds_load_u8 v94, v124 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v120, v93, 16, v92
	v_wmma_i32_16x16x16_iu8 v[92:99], v[88:91], v[116:119], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v88, v124 offset:1440
	ds_load_u8 v89, v124 offset:1408
	v_wmma_i32_16x16x16_iu8 v[92:99], v[100:103], v[120:123], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[108:111], v[116:119], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[100:107], v[112:115], v[120:123], v[100:107] neg_lo:[1,1,0]
	ds_load_u8 v90, v124 offset:1504
	ds_load_u8 v91, v124 offset:1472
	ds_load_u8 v108, v124 offset:1312
	ds_load_u8 v109, v124 offset:1280
	ds_load_u8 v110, v124 offset:1376
	ds_load_u8 v111, v124 offset:1344
	ds_load_u8 v112, v124 offset:1184
	ds_load_u8 v113, v124 offset:1152
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v124 offset:1248
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v124 offset:1216
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v124 offset:1056
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v124 offset:1120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v89, v91, v89, 0xc0c0004
	ds_load_u8 v91, v124 offset:1088
	ds_load_u8 v111, v124 offset:1024
	v_lshl_or_b32 v89, v89, 16, v112
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v113, v91, v113, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v111, v109, 0xc0c0004
	v_lshl_or_b32 v91, v90, 16, v88
	v_lshl_or_b32 v90, v110, 16, v108
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[108:111], v125
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v88, v113, 16, v114
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[112:115], v125 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[108:111], v[88:91], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[112:115], v[88:91], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v88, v124 offset:1456
	ds_load_u8 v89, v124 offset:1424
	ds_load_u8 v90, v124 offset:1520
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v124 offset:1488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v89, v90, 0xc0c0004
	ds_load_u8 v90, v124 offset:1328
	ds_load_u8 v91, v124 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v124 offset:1392
	ds_load_u8 v116, v124 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v91, 0xc0c0004
	v_lshl_or_b32 v91, v89, 16, v88
	ds_load_u8 v88, v124 offset:1200
	ds_load_u8 v89, v124 offset:1168
	v_lshl_or_b32 v90, v116, 16, v90
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v124 offset:1264
	ds_load_u8 v116, v124 offset:1232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v116, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v89, 16, v88
	ds_load_u8 v88, v124 offset:1072
	ds_load_u8 v116, v124 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v116, v88, 0xc0c0004
	ds_load_u8 v116, v124 offset:1136
	ds_load_u8 v117, v124 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_lshl_or_b32 v88, v116, 16, v88
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v116, s6, v87
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s6, s4, s29
	s_add_i32 s6, s6, s18
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[92:99], v[108:111], v[88:91], v[92:99] neg_lo:[1,1,0]
	ds_load_u8 v108, v124 offset:1952
	ds_load_u8 v109, v124 offset:1920
	v_wmma_i32_16x16x16_iu8 v[100:107], v[112:115], v[88:91], v[100:107] neg_lo:[1,1,0]
	ds_load_u8 v88, v124 offset:2016
	ds_load_u8 v89, v124 offset:1984
	ds_load_u8 v90, v124 offset:1824
	ds_load_u8 v91, v124 offset:1792
	ds_load_u8 v110, v124 offset:1888
	ds_load_u8 v111, v124 offset:1856
	ds_load_u8 v112, v124 offset:1696
	ds_load_u8 v113, v124 offset:1664
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v124 offset:1728
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v124 offset:1568
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v124 offset:1760
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v124 offset:1632
	v_lshl_or_b32 v90, v110, 16, v90
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v89, v89, v109, 0xc0c0004
	ds_load_u8 v109, v124 offset:1600
	ds_load_u8 v111, v124 offset:1536
	v_lshl_or_b32 v89, v89, 16, v112
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v113, v109, v113, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v111, v91, 0xc0c0004
	v_lshl_or_b32 v91, v88, 16, v108
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[108:111], v116
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v88, v113, 16, v114
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[112:115], v116 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[108:111], v[88:91], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[112:115], v[88:91], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v120, v9
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v88, s36, v71
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v121, v10
	v_cvt_f32_i32_e32 v122, v11
	v_cvt_f32_i32_e32 v123, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v33, v33, v120
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v89, v124 offset:1968
	ds_load_u8 v90, v124 offset:1936
	ds_load_u8 v88, v88
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v63, v63, v121 :: v_dual_add_f32 v62, v62, v122
	v_add_f32_e32 v61, v61, v123
	s_mov_b32 s36, s19
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v124 offset:2000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v90, v88, 0xc0c0004
	ds_load_u8 v90, v124 offset:1840
	ds_load_u8 v91, v124 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v124 offset:1904
	ds_load_u8 v116, v124 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v91, 0xc0c0004
	v_lshl_or_b32 v91, v88, 16, v89
	ds_load_u8 v88, v124 offset:1712
	ds_load_u8 v89, v124 offset:1680
	v_lshl_or_b32 v90, v116, 16, v90
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v124 offset:1776
	ds_load_u8 v116, v124 offset:1744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v116, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v89, 16, v88
	ds_load_u8 v88, v124 offset:1584
	ds_load_u8 v116, v124 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v116, v88, 0xc0c0004
	ds_load_u8 v116, v124 offset:1648
	ds_load_u8 v117, v124 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v88, v116, 16, v88
	v_wmma_i32_16x16x16_iu8 v[92:99], v[108:111], v[88:91], v[92:99] neg_lo:[1,1,0]
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v108, s4, v66
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[100:107], v[112:115], v[88:91], v[100:107] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v113, v15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v109, s6, v67
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v115, v13
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v108
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v108, s6, v69
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v58, v58, v113
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v114, v14
	v_cvt_f32_i32_e32 v112, v16
	v_cvt_f32_i32_e32 v88, v21
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v119, 0x80000000, v108, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v108, v20
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v110, s6, v83
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v89, v22
	v_cvt_f32_i32_e32 v90, v23
	v_cvt_f32_i32_e32 v91, v24
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v53, v53, v108 :: v_dual_cndmask_b32 v116, 0x80000000, v109
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v117, 0x80000000, v110, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v109, v19
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v111, s6, v68
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v110, v18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v116, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v117, s[24:27], 0 offen
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s6, s37, 1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v54, v54, v109
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v118, 0x80000000, v111, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v111, v17
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s6, 2
	s_mov_b32 s4, s1
	s_cselect_b32 s37, s6, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[17:20], v118, s[24:27], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v56, v56, v111
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	buffer_load_b128 v[21:24], v119, s[24:27], 0 offen
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s1, s37, 11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v60, v60, v115
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s8, s1, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v50, v50, v90 :: v_dual_add_nc_u32 v115, s8, v64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
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
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v115, v[26:27] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s7, s37, 14
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v59, v59, v114
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s1, s7, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v57, v57, v112
	v_dual_add_f32 v51, v51, v89 :: v_dual_add_nc_u32 v114, s1, v76
	v_dual_add_f32 v52, v52, v88 :: v_dual_add_nc_u32 v113, s1, v77
	v_dual_add_f32 v49, v49, v91 :: v_dual_add_nc_u32 v112, s1, v78
	v_dual_add_f32 v48, v48, v92 :: v_dual_add_nc_u32 v111, s1, v79
	v_dual_add_f32 v55, v55, v110 :: v_dual_add_nc_u32 v110, s1, v80
	v_add_f32_e32 v47, v47, v93
	v_dual_add_f32 v46, v46, v94 :: v_dual_add_nc_u32 v109, s1, v81
	v_dual_add_f32 v45, v45, v95 :: v_dual_add_nc_u32 v108, s1, v82
	v_dual_add_f32 v44, v44, v96 :: v_dual_add_f32 v43, v43, v97
	v_dual_add_f32 v42, v42, v98 :: v_dual_add_f32 v41, v41, v99
	v_dual_add_f32 v40, v40, v100 :: v_dual_add_f32 v39, v39, v101
	v_dual_add_f32 v38, v38, v102 :: v_dual_add_f32 v37, v37, v103
	v_dual_add_f32 v36, v36, v104 :: v_dual_add_f32 v35, v35, v105
	v_add_f32_e32 v34, v34, v106
	v_add_f32_e32 v32, v32, v107
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s6, s5, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s19, s8, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s35
	s_mov_b32 s5, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v26, v13, v9, 0x4000501
	v_perm_b32 v9, v13, v9, 0x6020703
	s_waitcnt vmcnt(0)
	v_perm_b32 v27, v21, v17, 0x4000501
	v_perm_b32 v13, v21, v17, 0x6020703
	v_perm_b32 v17, v14, v10, 0x4000501
	v_perm_b32 v21, v22, v18, 0x4000501
	v_perm_b32 v10, v14, v10, 0x6020703
	v_perm_b32 v14, v22, v18, 0x6020703
	v_perm_b32 v18, v15, v11, 0x4000501
	v_perm_b32 v22, v23, v19, 0x4000501
	v_perm_b32 v11, v15, v11, 0x6020703
	v_perm_b32 v15, v23, v19, 0x6020703
	v_perm_b32 v19, v16, v12, 0x4000501
	v_perm_b32 v23, v24, v20, 0x4000501
	v_perm_b32 v12, v16, v12, 0x6020703
	v_perm_b32 v16, v24, v20, 0x6020703
	v_perm_b32 v20, v27, v26, 0x7060302
	v_perm_b32 v24, v27, v26, 0x5040100
	v_perm_b32 v26, v13, v9, 0x7060302
	v_perm_b32 v9, v13, v9, 0x5040100
	v_perm_b32 v13, v21, v17, 0x7060302
	v_perm_b32 v17, v21, v17, 0x5040100
	v_perm_b32 v21, v14, v10, 0x7060302
	v_perm_b32 v10, v14, v10, 0x5040100
	v_perm_b32 v14, v22, v18, 0x7060302
	v_perm_b32 v18, v22, v18, 0x5040100
	v_perm_b32 v22, v15, v11, 0x7060302
	v_perm_b32 v11, v15, v11, 0x5040100
	v_perm_b32 v15, v23, v19, 0x7060302
	v_perm_b32 v19, v23, v19, 0x5040100
	v_perm_b32 v23, v16, v12, 0x7060302
	v_perm_b32 v12, v16, v12, 0x5040100
	ds_store_2addr_b32 v114, v20, v24 offset1:16
	ds_store_2addr_b32 v113, v26, v9 offset1:16
	ds_store_2addr_b32 v112, v13, v17 offset1:16
	ds_store_2addr_b32 v111, v21, v10 offset1:16
	ds_store_2addr_b32 v110, v14, v18 offset1:16
	ds_store_2addr_b32 v114, v22, v11 offset0:160 offset1:176
	ds_store_2addr_b32 v109, v15, v19 offset1:16
	ds_store_2addr_b32 v108, v23, v12 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v9, v70 :: v_dual_mov_b32 v10, v71
	v_dual_mov_b32 v3, v74 :: v_dual_mov_b32 v4, v73
	v_mov_b32_e32 v5, v72
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
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
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v33, 0
	s_add_i32 s36, 0, 0x8000
	s_add_i32 s19, 0, 0x8800
	s_add_i32 s1, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	s_mov_b32 s8, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v1, v1, v3
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s31
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v1, v75, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v5, v1, v2
	v_xor_b32_e32 v6, 16, v5
	v_xor_b32_e32 v7, 32, v5
	v_xor_b32_e32 v8, 48, v5
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
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v27, s36, v31
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v12, v27 offset:416
	ds_load_u8 v13, v27 offset:384
	ds_load_u8 v14, v27 offset:480
	ds_load_u8 v15, v27 offset:448
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v116, s4, v8
	v_add_nc_u32_e32 v11, s4, v6
	ds_load_b128 v[1:4], v116
	ds_load_b128 v[80:83], v11 offset:8192
	ds_load_b128 v[84:87], v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v11, v27 offset:288
	ds_load_u8 v17, v27 offset:256
	ds_load_u8 v18, v27 offset:352
	ds_load_u8 v19, v27 offset:320
	ds_load_u8 v20, v27 offset:160
	ds_load_u8 v21, v27 offset:128
	ds_load_u8 v22, v27 offset:224
	ds_load_u8 v23, v27 offset:192
	ds_load_u8 v112, v27 offset:464
	ds_load_u8 v113, v27 offset:432
	ds_load_u8 v114, v27 offset:400
	ds_load_u8 v115, v27 offset:368
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v16, s4, v5
	ds_load_b128 v[88:91], v16 offset:8192
	ds_load_b128 v[92:95], v16
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v16, s36, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v127, v27 offset:16
	ds_load_u8 v128, v16
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v11, v17, v11, 0xc0c0004
	v_perm_b32 v13, v15, v14, 0xc0c0004
	ds_load_u8 v14, v27 offset:96
	ds_load_u8 v15, v27 offset:64
	ds_load_u8 v24, v27
	ds_load_u8 v25, v27 offset:32
	ds_load_u8 v117, v27 offset:336
	ds_load_u8 v118, v27 offset:304
	ds_load_u8 v119, v27 offset:272
	ds_load_u8 v120, v27 offset:240
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v17, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v18, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v19, v23, v22, 0xc0c0004
	v_lshl_or_b32 v75, v13, 16, v12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v64, s4, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v74, v17, 16, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v19, 16, v18
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v11, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v12, v24, v25, 0xc0c0004
	v_lshl_or_b32 v72, v11, 16, v12
	v_mov_b32_e32 v18, s15
	ds_load_u8 v19, v27 offset:928
	ds_load_u8 v20, v27 offset:896
	ds_load_u8 v21, v27 offset:992
	ds_load_u8 v22, v27 offset:960
	ds_load_u8 v23, v27 offset:800
	ds_load_u8 v24, v27 offset:768
	ds_load_u8 v25, v27 offset:864
	ds_load_u8 v26, v27 offset:832
	ds_load_u8 v65, v27 offset:672
	ds_load_u8 v66, v27 offset:640
	ds_load_u8 v67, v27 offset:736
	ds_load_u8 v68, v27 offset:704
	ds_load_u8 v129, v27 offset:976
	ds_load_u8 v130, v27 offset:944
	ds_load_u8 v131, v27 offset:912
	ds_load_u8 v132, v27 offset:880
	v_mov_b32_e32 v15, s12
	v_dual_mov_b32 v17, s14 :: v_dual_mov_b32 v16, s13
	v_dual_mov_b32 v14, s11 :: v_dual_mov_b32 v13, s10
	v_dual_mov_b32 v12, s9 :: v_dual_mov_b32 v11, s8
	ds_load_u8 v121, v27 offset:208
	ds_load_u8 v122, v27 offset:176
	ds_load_u8 v123, v27 offset:144
	ds_load_u8 v124, v27 offset:112
	ds_load_u8 v125, v27 offset:80
	ds_load_u8 v126, v27 offset:48
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v71, v24, v23, 0xc0c0004
	ds_load_u8 v137, v27 offset:720
	ds_load_u8 v138, v27 offset:688
	ds_load_u8 v139, v27 offset:656
	ds_load_u8 v140, v27 offset:624
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v76, v26, v25, 0xc0c0004
	ds_load_u8 v154, v27 offset:1264
	ds_load_u8 v155, v27 offset:1232
	ds_load_u8 v156, v27 offset:1200
	ds_load_u8 v157, v27 offset:1168
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v158, v27 offset:1136
	ds_load_u8 v159, v27 offset:1104
	ds_load_u8 v160, v27 offset:1072
	ds_load_u8 v161, v27 offset:1040
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v66, v68, v67, 0xc0c0004
	v_perm_b32 v69, v20, v19, 0xc0c0004
	ds_load_u8 v67, v27 offset:1440
	ds_load_u8 v68, v27 offset:1408
	ds_load_u8 v96, v27 offset:1504
	ds_load_u8 v97, v27 offset:1472
	ds_load_u8 v141, v27 offset:592
	ds_load_u8 v142, v27 offset:560
	ds_load_u8 v143, v27 offset:528
	ds_load_u8 v144, v27 offset:496
	v_perm_b32 v70, v22, v21, 0xc0c0004
	ds_load_u8 v19, v27 offset:544
	ds_load_u8 v20, v27 offset:512
	ds_load_u8 v21, v27 offset:608
	ds_load_u8 v22, v27 offset:576
	ds_load_u8 v133, v27 offset:848
	ds_load_u8 v134, v27 offset:816
	ds_load_u8 v135, v27 offset:784
	ds_load_u8 v136, v27 offset:752
	v_lshl_or_b32 v77, v66, 16, v65
	v_lshl_or_b32 v78, v76, 16, v71
	ds_load_u8 v71, v27 offset:1184
	ds_load_u8 v104, v27 offset:1152
	ds_load_u8 v105, v27 offset:1248
	ds_load_u8 v108, v27 offset:1216
	ds_load_u8 v109, v27 offset:1056
	ds_load_u8 v110, v27 offset:1024
	ds_load_u8 v111, v27 offset:1120
	ds_load_u8 v149, v27 offset:1088
	ds_load_u8 v150, v27 offset:1392
	ds_load_u8 v151, v27 offset:1360
	ds_load_u8 v152, v27 offset:1328
	ds_load_u8 v153, v27 offset:1296
	v_lshl_or_b32 v79, v70, 16, v69
	ds_load_u8 v65, v27 offset:1312
	ds_load_u8 v66, v27 offset:1280
	ds_load_u8 v69, v27 offset:1376
	ds_load_u8 v70, v27 offset:1344
	ds_load_u8 v145, v27 offset:1520
	ds_load_u8 v146, v27 offset:1488
	ds_load_u8 v147, v27 offset:1456
	ds_load_u8 v148, v27 offset:1424
	ds_load_u8 v170, v27 offset:1904
	ds_load_u8 v171, v27 offset:1872
	ds_load_u8 v172, v27 offset:1840
	ds_load_u8 v173, v27 offset:1808
	ds_load_u8 v174, v27 offset:1776
	ds_load_u8 v175, v27 offset:1744
	ds_load_u8 v176, v27 offset:1712
	ds_load_u8 v177, v27 offset:1680
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v68, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v98, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v99, v22, v21, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[19:26], v[92:95], v[72:75], v[11:18] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_lshl_or_b32 v107, v68, 16, v67
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v66, v70, v69, 0xc0c0004
	v_perm_b32 v67, v110, v109, 0xc0c0004
	v_perm_b32 v68, v149, v111, 0xc0c0004
	v_lshl_or_b32 v76, v99, 16, v98
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[96:99], v64 offset:8192
	ds_load_b128 v[100:103], v64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v106, v66, 16, v65
	v_perm_b32 v65, v104, v71, 0xc0c0004
	v_perm_b32 v66, v108, v105, 0xc0c0004
	ds_load_u8 v69, v27 offset:1952
	ds_load_u8 v70, v27 offset:1920
	ds_load_u8 v71, v27 offset:2016
	ds_load_u8 v108, v27 offset:1984
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v64, s36, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v104, v68, 16, v67
	v_wmma_i32_16x16x16_iu8 v[19:26], v[84:87], v[76:79], v[19:26] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v66, 16, v65
	ds_load_u8 v65, v27 offset:1824
	ds_load_u8 v66, v27 offset:1792
	ds_load_u8 v67, v27 offset:1888
	ds_load_u8 v68, v27 offset:1856
	ds_load_u8 v109, v27 offset:1696
	ds_load_u8 v110, v27 offset:1664
	ds_load_u8 v111, v27 offset:1760
	ds_load_u8 v149, v27 offset:1728
	ds_load_u8 v162, v27 offset:1568
	ds_load_u8 v163, v27 offset:1536
	ds_load_u8 v164, v27 offset:1632
	ds_load_u8 v165, v27 offset:1600
	ds_load_u8 v166, v64
	ds_load_u8 v167, v27 offset:2000
	ds_load_u8 v168, v27 offset:1968
	ds_load_u8 v169, v27 offset:1936
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v66, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v67, v110, v109, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[19:26], v[100:103], v[104:107], v[19:26] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v68, v149, v111, 0xc0c0004
	v_perm_b32 v64, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v70, v163, v162, 0xc0c0004
	v_perm_b32 v69, v108, v71, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v71, v165, v164, 0xc0c0004
	v_lshl_or_b32 v110, v66, 16, v65
	v_lshl_or_b32 v109, v68, 16, v67
	ds_load_u8 v149, v27 offset:1648
	ds_load_u8 v178, v27 offset:1616
	ds_load_u8 v179, v27 offset:1584
	ds_load_u8 v27, v27 offset:1552
	v_lshl_or_b32 v111, v69, 16, v64
	v_lshl_or_b32 v108, v71, 16, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[19:26], v[1:4], v[108:111], v[19:26] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v63, v63, v20
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[64:71], v[88:91], v[72:75], v[11:18] neg_lo:[1,1,0]
	v_perm_b32 v72, v114, v113, 0xc0c0004
	v_perm_b32 v73, v112, v144, 0xc0c0004
	v_perm_b32 v74, v119, v118, 0xc0c0004
	v_perm_b32 v75, v117, v115, 0xc0c0004
	v_perm_b32 v112, v123, v122, 0xc0c0004
	v_perm_b32 v113, v121, v120, 0xc0c0004
	v_perm_b32 v117, v125, v124, 0xc0c0004
	v_perm_b32 v118, v127, v126, 0xc0c0004
	v_lshl_or_b32 v115, v73, 16, v72
	v_lshl_or_b32 v114, v75, 16, v74
	v_lshl_or_b32 v113, v113, 16, v112
	v_perm_b32 v119, v135, v134, 0xc0c0004
	v_lshl_or_b32 v112, v117, 16, v118
	v_perm_b32 v117, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v118, v129, v166, 0xc0c0004
	v_perm_b32 v120, v133, v132, 0xc0c0004
	v_perm_b32 v121, v139, v138, 0xc0c0004
	v_perm_b32 v122, v137, v136, 0xc0c0004
	v_perm_b32 v123, v143, v142, 0xc0c0004
	v_perm_b32 v124, v141, v140, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[64:71], v[80:83], v[76:79], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[72:79], v[92:95], v[112:115], v[11:18] neg_lo:[1,1,0]
	v_lshl_or_b32 v95, v118, 16, v117
	v_lshl_or_b32 v94, v120, 16, v119
	v_lshl_or_b32 v93, v122, 16, v121
	v_lshl_or_b32 v92, v124, 16, v123
	v_perm_b32 v117, v148, v147, 0xc0c0004
	v_perm_b32 v118, v146, v145, 0xc0c0004
	v_perm_b32 v119, v153, v152, 0xc0c0004
	v_perm_b32 v120, v151, v150, 0xc0c0004
	v_perm_b32 v121, v157, v156, 0xc0c0004
	v_perm_b32 v122, v155, v154, 0xc0c0004
	v_perm_b32 v123, v161, v160, 0xc0c0004
	v_perm_b32 v124, v159, v158, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[72:79], v[84:87], v[92:95], v[72:79] neg_lo:[1,1,0]
	v_lshl_or_b32 v87, v118, 16, v117
	v_lshl_or_b32 v86, v120, 16, v119
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[116:119], v116 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_lshl_or_b32 v85, v122, 16, v121
	v_lshl_or_b32 v84, v124, 16, v123
	v_wmma_i32_16x16x16_iu8 v[11:18], v[88:91], v[112:115], v[11:18] neg_lo:[1,1,0]
	v_perm_b32 v88, v177, v176, 0xc0c0004
	v_perm_b32 v89, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v27, v27, v179, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[72:79], v[100:103], v[84:87], v[72:79] neg_lo:[1,1,0]
	v_perm_b32 v100, v169, v168, 0xc0c0004
	v_perm_b32 v101, v167, v128, 0xc0c0004
	v_perm_b32 v102, v173, v172, 0xc0c0004
	v_perm_b32 v103, v171, v170, 0xc0c0004
	v_perm_b32 v90, v178, v149, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[64:71], v[96:99], v[104:107], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[11:18], v[80:83], v[92:95], v[11:18] neg_lo:[1,1,0]
	v_lshl_or_b32 v83, v101, 16, v100
	v_lshl_or_b32 v82, v103, 16, v102
	v_lshl_or_b32 v81, v89, 16, v88
	v_lshl_or_b32 v80, v90, 16, v27
	v_wmma_i32_16x16x16_iu8 v[11:18], v[96:99], v[84:87], v[11:18] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[64:71], v[116:119], v[108:111], v[64:71] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v20, v26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v62, v62, v21
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[72:79], v[1:4], v[80:83], v[72:79] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v22
	v_cvt_f32_i32_e32 v2, v23
	v_cvt_f32_i32_e32 v3, v24
	v_cvt_f32_i32_e32 v4, v25
	v_wmma_i32_16x16x16_iu8 v[11:18], v[116:119], v[80:83], v[11:18] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v61, v61, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v59, v59, v3 :: v_dual_add_f32 v58, v58, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v66
	v_cvt_f32_i32_e32 v4, v67
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v60, v60, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v65
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v57, v57, v20 :: v_dual_add_f32 v54, v54, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v71
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v56, v56, v1 :: v_dual_add_f32 v55, v55, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v69
	v_cvt_f32_i32_e32 v2, v70
	v_cvt_f32_i32_e32 v20, v68
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v53, v53, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v4, v72
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v51, v51, v1 :: v_dual_add_f32 v50, v50, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v74
	v_cvt_f32_i32_e32 v2, v75
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v52, v52, v20
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v20, v73
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v49, v49, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v76
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v46, v46, v1 :: v_dual_add_f32 v45, v45, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v79
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v48, v48, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v4, v77
	v_cvt_f32_i32_e32 v2, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v47, v47, v20
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v20, v78
	v_cvt_f32_i32_e32 v11, v14
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v43, v43, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v4, v13
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v40, v40, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v44, v44, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v42, v42, v20 :: v_dual_add_f32 v41, v41, v1
	v_add_f32_e32 v37, v37, v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v1, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v39, v39, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v17
	v_cvt_f32_i32_e32 v11, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v38, v38, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v4, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v36, v36, v1 :: v_dual_add_f32 v35, v35, v2
	v_add_f32_e32 v34, v34, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v33, v33, v11 :: v_dual_add_f32 v32, v32, v4
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
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
	v_add_nc_u32_e32 v8, s1, v8
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v17, s19, v31
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, s1, v7
	v_add_nc_u32_e32 v16, s1, v6
	v_add_nc_u32_e32 v18, s1, v5
	ds_load_b128 v[1:4], v8 offset:8192
	ds_load_b128 v[5:8], v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v19, v17 offset:288
	ds_load_u8 v20, v17 offset:256
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[83:86], v11 offset:8192
	ds_load_b128 v[87:90], v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v11, v17 offset:352
	ds_load_u8 v21, v17 offset:320
	ds_load_u8 v22, v17 offset:160
	ds_load_u8 v23, v17 offset:128
	ds_load_u8 v24, v17 offset:224
	ds_load_u8 v25, v17 offset:192
	ds_load_u8 v26, v17 offset:464
	ds_load_u8 v27, v17 offset:432
	ds_load_u8 v64, v17 offset:400
	ds_load_u8 v65, v17 offset:368
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v10, s19, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v120, v17 offset:16
	ds_load_u8 v121, v10
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v17
	ds_load_u8 v67, v17 offset:32
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v11, v21, v11, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v21, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v22, v25, v24, 0xc0c0004
	v_lshl_or_b32 v77, v11, 16, v19
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v27, v64, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v76, v22, 16, v21
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v22, s19, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v20, v67, 0xc0c0004
	v_dual_mov_b32 v74, s11 :: v_dual_mov_b32 v71, s8
	v_mov_b32_e32 v69, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[91:94], v18 offset:8192
	ds_load_b128 v[95:98], v18
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v18, v17 offset:928
	ds_load_u8 v19, v17 offset:896
	ds_load_u8 v20, v17 offset:992
	ds_load_u8 v21, v17 offset:960
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[99:102], v16 offset:8192
	ds_load_b128 v[103:106], v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v23, v17 offset:800
	ds_load_u8 v24, v17 offset:768
	ds_load_u8 v79, v17 offset:864
	ds_load_u8 v80, v17 offset:832
	ds_load_u8 v81, v17 offset:672
	ds_load_u8 v82, v17 offset:640
	ds_load_u8 v107, v17 offset:736
	ds_load_u8 v108, v17 offset:704
	ds_load_u8 v122, v17 offset:976
	ds_load_u8 v123, v17 offset:944
	ds_load_u8 v124, v17 offset:912
	ds_load_u8 v125, v17 offset:880
	ds_load_u8 v12, v17 offset:416
	ds_load_u8 v13, v17 offset:384
	ds_load_u8 v14, v17 offset:480
	ds_load_u8 v15, v17 offset:448
	ds_load_u8 v115, v17 offset:208
	ds_load_u8 v116, v17 offset:176
	ds_load_u8 v117, v17 offset:144
	ds_load_u8 v118, v17 offset:112
	ds_load_u8 v25, v17 offset:80
	ds_load_u8 v119, v17 offset:48
	ds_load_u8 v134, v17 offset:592
	ds_load_u8 v135, v17 offset:560
	ds_load_u8 v136, v17 offset:528
	ds_load_u8 v137, v17 offset:496
	ds_load_u8 v130, v17 offset:720
	ds_load_u8 v131, v17 offset:688
	ds_load_u8 v132, v17 offset:656
	ds_load_u8 v133, v17 offset:624
	ds_load_u8 v149, v17 offset:1264
	ds_load_u8 v150, v17 offset:1232
	ds_load_u8 v151, v17 offset:1200
	ds_load_u8 v152, v17 offset:1168
	v_dual_mov_b32 v73, s10 :: v_dual_mov_b32 v72, s9
	v_mov_b32_e32 v70, s7
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	v_mov_b32_e32 v68, s5
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v24, v80, v79, 0xc0c0004
	v_mov_b32_e32 v67, s4
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v79, v82, v81, 0xc0c0004
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v17 offset:544
	ds_load_u8 v109, v17 offset:512
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v17 offset:608
	ds_load_u8 v110, v17 offset:576
	ds_load_u8 v126, v17 offset:848
	ds_load_u8 v127, v17 offset:816
	ds_load_u8 v128, v17 offset:784
	ds_load_u8 v129, v17 offset:752
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v80, v108, v107, 0xc0c0004
	ds_load_u8 v107, v17 offset:1440
	ds_load_u8 v108, v17 offset:1408
	v_lshl_or_b32 v81, v24, 16, v23
	v_lshl_or_b32 v82, v20, 16, v18
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	v_lshl_or_b32 v80, v80, 16, v79
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v13, v15, v14, 0xc0c0004
	ds_load_u8 v14, v17 offset:96
	ds_load_u8 v15, v17 offset:64
	ds_load_u8 v66, v17 offset:336
	ds_load_u8 v111, v17 offset:304
	ds_load_u8 v112, v17 offset:272
	ds_load_u8 v113, v17 offset:240
	ds_load_u8 v165, v17 offset:1904
	ds_load_u8 v166, v17 offset:1872
	ds_load_u8 v167, v17 offset:1840
	ds_load_u8 v168, v17 offset:1808
	ds_load_u8 v171, v17 offset:1776
	ds_load_u8 v172, v17 offset:1744
	ds_load_u8 v173, v17 offset:1712
	ds_load_u8 v174, v17 offset:1680
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v26, v26, v137, 0xc0c0004
	v_lshl_or_b32 v78, v13, 16, v12
	v_perm_b32 v25, v25, v118, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v21, v110, v21, 0xc0c0004
	v_lshl_or_b32 v118, v26, 16, v27
	v_perm_b32 v19, v109, v19, 0xc0c0004
	ds_load_u8 v109, v17 offset:1504
	ds_load_u8 v110, v17 offset:1472
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v27, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v17 offset:1056
	ds_load_u8 v143, v17 offset:1024
	v_lshl_or_b32 v79, v21, 16, v19
	ds_load_u8 v18, v17 offset:1312
	ds_load_u8 v19, v17 offset:1280
	ds_load_u8 v20, v17 offset:1376
	ds_load_u8 v21, v17 offset:1344
	ds_load_u8 v23, v17 offset:1184
	ds_load_u8 v24, v17 offset:1152
	ds_load_u8 v114, v17 offset:1248
	ds_load_u8 v138, v17 offset:1216
	ds_load_u8 v139, v17 offset:1520
	ds_load_u8 v140, v17 offset:1488
	ds_load_u8 v141, v17 offset:1456
	ds_load_u8 v142, v17 offset:1424
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v11, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v64, v112, v111, 0xc0c0004
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_perm_b32 v66, v117, v116, 0xc0c0004
	v_perm_b32 v111, v136, v135, 0xc0c0004
	v_lshl_or_b32 v75, v11, 16, v10
	v_perm_b32 v112, v134, v133, 0xc0c0004
	v_lshl_or_b32 v117, v65, 16, v64
	v_perm_b32 v64, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[95:98], v[75:78], v[67:74] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v19, v21, v20, 0xc0c0004
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v17 offset:1120
	ds_load_u8 v144, v17 offset:1088
	ds_load_u8 v145, v17 offset:1392
	ds_load_u8 v146, v17 offset:1360
	ds_load_u8 v147, v17 offset:1328
	ds_load_u8 v148, v17 offset:1296
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v20, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v21, v138, v114, 0xc0c0004
	v_perm_b32 v23, v143, v108, 0xc0c0004
	ds_load_u8 v24, v17 offset:1952
	ds_load_u8 v114, v17 offset:1920
	ds_load_u8 v143, v17 offset:2016
	ds_load_u8 v156, v17 offset:1984
	ds_load_u8 v138, v17 offset:1136
	ds_load_u8 v153, v17 offset:1104
	ds_load_u8 v154, v17 offset:1072
	ds_load_u8 v155, v17 offset:1040
	v_perm_b32 v65, v132, v131, 0xc0c0004
	v_lshl_or_b32 v108, v21, 16, v20
	v_wmma_i32_16x16x16_iu8 v[9:16], v[103:106], v[79:82], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v144, v144, v110, 0xc0c0004
	v_lshl_or_b32 v110, v109, 16, v107
	v_lshl_or_b32 v109, v19, 16, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v107, v144, 16, v23
	ds_load_u8 v18, v17 offset:1824
	ds_load_u8 v19, v17 offset:1792
	ds_load_u8 v20, v17 offset:1888
	ds_load_u8 v21, v17 offset:1856
	ds_load_u8 v23, v17 offset:1696
	ds_load_u8 v144, v17 offset:1664
	ds_load_u8 v157, v17 offset:1760
	ds_load_u8 v158, v17 offset:1728
	ds_load_u8 v159, v22
	ds_load_u8 v160, v17 offset:2000
	ds_load_u8 v161, v17 offset:1968
	ds_load_u8 v162, v17 offset:1936
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v22, v114, v24, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v24, v156, v143, 0xc0c0004
	ds_load_u8 v143, v17 offset:1568
	ds_load_u8 v156, v17 offset:1536
	ds_load_u8 v163, v17 offset:1632
	ds_load_u8 v164, v17 offset:1600
	v_wmma_i32_16x16x16_iu8 v[9:16], v[87:90], v[107:110], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v114, v24, 16, v22
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v169, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v170, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v144, v144, v23, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v17 offset:1648
	ds_load_u8 v175, v17 offset:1616
	ds_load_u8 v176, v17 offset:1584
	ds_load_u8 v177, v17 offset:1552
	v_wmma_i32_16x16x16_iu8 v[17:24], v[91:94], v[75:78], v[67:74] neg_lo:[1,1,0]
	v_perm_b32 v75, v115, v113, 0xc0c0004
	v_perm_b32 v76, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v26, v122, v159, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[99:102], v[79:82], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v143, v156, v143, 0xc0c0004
	v_lshl_or_b32 v116, v75, 16, v66
	v_lshl_or_b32 v115, v25, 16, v76
	v_perm_b32 v25, v124, v123, 0xc0c0004
	v_perm_b32 v66, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v156, v164, v163, 0xc0c0004
	v_lshl_or_b32 v113, v170, 16, v169
	v_wmma_i32_16x16x16_iu8 v[75:82], v[95:98], v[115:118], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v98, v26, 16, v25
	v_lshl_or_b32 v97, v64, 16, v27
	v_lshl_or_b32 v96, v66, 16, v65
	v_lshl_or_b32 v95, v112, 16, v111
	v_perm_b32 v25, v142, v141, 0xc0c0004
	v_perm_b32 v26, v140, v139, 0xc0c0004
	v_perm_b32 v27, v148, v147, 0xc0c0004
	v_perm_b32 v64, v146, v145, 0xc0c0004
	v_perm_b32 v65, v152, v151, 0xc0c0004
	v_perm_b32 v66, v150, v149, 0xc0c0004
	v_perm_b32 v111, v155, v154, 0xc0c0004
	v_perm_b32 v112, v153, v138, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[75:82], v[103:106], v[95:98], v[75:82] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v26, 16, v25
	v_lshl_or_b32 v105, v64, 16, v27
	v_lshl_or_b32 v104, v66, 16, v65
	v_lshl_or_b32 v103, v112, 16, v111
	v_wmma_i32_16x16x16_iu8 v[67:74], v[91:94], v[115:118], v[67:74] neg_lo:[1,1,0]
	v_perm_b32 v25, v162, v161, 0xc0c0004
	v_perm_b32 v26, v160, v121, 0xc0c0004
	v_perm_b32 v27, v168, v167, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[75:82], v[87:90], v[103:106], v[75:82] neg_lo:[1,1,0]
	v_perm_b32 v64, v166, v165, 0xc0c0004
	v_perm_b32 v65, v174, v173, 0xc0c0004
	v_perm_b32 v66, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v177, v176, 0xc0c0004
	v_perm_b32 v91, v175, v158, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[67:74], v[99:102], v[95:98], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v112, v157, 16, v144
	v_lshl_or_b32 v111, v156, 16, v143
	v_wmma_i32_16x16x16_iu8 v[17:24], v[83:86], v[107:110], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v90, v26, 16, v25
	v_lshl_or_b32 v89, v64, 16, v27
	v_lshl_or_b32 v88, v66, 16, v65
	v_lshl_or_b32 v87, v91, 16, v87
	v_wmma_i32_16x16x16_iu8 v[67:74], v[83:86], v[103:106], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[5:8], v[111:114], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[1:4], v[111:114], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[75:82], v[5:8], v[87:90], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[67:74], v[1:4], v[87:90], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v9
	v_cvt_f32_i32_e32 v2, v10
	v_cvt_f32_i32_e32 v3, v11
	v_cvt_f32_i32_e32 v4, v12
	v_cvt_f32_i32_e32 v11, v13
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v13, v15
	v_cvt_f32_i32_e32 v14, v16
	v_cvt_f32_i32_e32 v15, v17
	v_cvt_f32_i32_e32 v16, v18
	v_cvt_f32_i32_e32 v17, v19
	v_cvt_f32_i32_e32 v18, v20
	v_cvt_f32_i32_e32 v19, v21
	v_cvt_f32_i32_e32 v20, v22
	v_cvt_f32_i32_e32 v21, v23
	v_cvt_f32_i32_e32 v22, v24
	v_cvt_f32_i32_e32 v23, v75
	v_cvt_f32_i32_e32 v24, v76
	v_cvt_f32_i32_e32 v25, v77
	v_cvt_f32_i32_e32 v26, v78
	v_cvt_f32_i32_e32 v27, v79
	v_cvt_f32_i32_e32 v64, v80
	v_cvt_f32_i32_e32 v65, v81
	v_cvt_f32_i32_e32 v66, v82
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
.LBB0_12:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v5, s3, v31
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s5, s21, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s20
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v3, v62, v3 :: v_dual_lshlrev_b32 v6, 1, v5
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	v_or_b32_e32 v5, s18, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v1, v33, v1 :: v_dual_add_f32 v2, v63, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v7, 32, v6
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v10, v57, v14
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v8, 1, v5
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v14, v53, v18
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x1
	buffer_load_u16 v31, v6, s[4:7], 0 offen
	buffer_load_u16 v75, v7, s[4:7], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s5, s23, 0xffff
	s_mov_b32 s4, s22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v7, v60, v11
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v6, v8, s[4:7], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v8, v59, v12 :: v_dual_add_f32 v11, v56, v15
	v_dual_add_f32 v12, v55, v16 :: v_dual_add_f32 v15, v52, v19
	v_dual_add_f32 v16, v51, v20 :: v_dual_add_f32 v19, v48, v23
	v_add_f32_e32 v18, v49, v22
	v_dual_add_f32 v20, v47, v24 :: v_dual_add_f32 v23, v44, v27
	v_add_f32_e32 v22, v45, v26
	v_dual_add_f32 v24, v43, v64 :: v_dual_add_f32 v27, v40, v67
	v_add_f32_e32 v26, v41, v66
	v_dual_add_f32 v64, v39, v68 :: v_dual_add_f32 v67, v36, v71
	v_add_f32_e32 v66, v37, v70
	v_add_f32_e32 v68, v35, v72
	v_dual_add_f32 v70, v32, v74 :: v_dual_lshlrev_b32 v71, 2, v28
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v19, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v4, v61, v4 :: v_dual_add_f32 v9, v58, v13
	v_add_f32_e32 v13, v54, v17
	v_add_f32_e32 v17, v50, v21
	v_add_f32_e32 v21, v46, v25
	v_add_f32_e32 v25, v42, v65
	v_add_f32_e32 v65, v38, v69
	v_add_f32_e32 v69, v34, v73
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v73, v28, 1, 0
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_cndmask_b32_e64 v74, 0x840, 0, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v33, v1, s2
	v_cndmask_b32_e64 v63, v63, v2, s2
	v_cndmask_b32_e64 v61, v61, v4, s2
	v_cndmask_b32_e64 v62, v62, v3, s2
	v_cndmask_b32_e64 v18, v49, v18, s2
	v_cndmask_b32_e64 v20, v47, v20, s2
	v_cndmask_b32_e64 v22, v45, v22, s2
	v_cndmask_b32_e64 v24, v43, v24, s2
	v_cndmask_b32_e64 v26, v41, v26, s2
	v_cndmask_b32_e64 v39, v39, v64, s2
	v_cndmask_b32_e64 v38, v38, v65, s2
	v_cndmask_b32_e64 v37, v37, v66, s2
	v_cndmask_b32_e64 v36, v36, v67, s2
	v_cndmask_b32_e64 v34, v34, v69, s2
	v_cndmask_b32_e64 v32, v32, v70, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v51, v51, v16, s2
	v_cndmask_b32_e64 v50, v50, v17, s2
	v_cndmask_b32_e64 v60, v60, v7, s2
	v_cndmask_b32_e64 v59, v59, v8, s2
	v_cndmask_b32_e64 v58, v58, v9, s2
	v_cndmask_b32_e64 v57, v57, v10, s2
	v_cndmask_b32_e64 v56, v56, v11, s2
	v_cndmask_b32_e64 v55, v55, v12, s2
	v_cndmask_b32_e64 v54, v54, v13, s2
	v_cndmask_b32_e64 v53, v53, v14, s2
	v_cndmask_b32_e64 v52, v52, v15, s2
	v_cndmask_b32_e64 v46, v46, v21, s2
	v_cndmask_b32_e64 v44, v44, v23, s2
	v_cndmask_b32_e64 v40, v40, v27, s2
	v_cndmask_b32_e64 v42, v42, v25, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s11, s29, 5
	s_mul_i32 s12, s29, 6
	s_mul_i32 s13, s29, 7
	s_mul_i32 s14, s29, 9
	s_mul_i32 s15, s29, 10
	s_mul_i32 s20, s29, 11
	s_mul_i32 s21, s29, 12
	s_mul_i32 s22, s29, 13
	s_mul_i32 s23, s29, 14
	s_mul_i32 s24, s29, 15
	s_mul_i32 s25, s29, 17
	s_mul_i32 s26, s29, 18
	s_mul_i32 s27, s29, 19
	s_mul_i32 s28, s29, 20
	s_mul_i32 s31, s29, 21
	s_mul_i32 s33, s29, 22
	s_mul_i32 s34, s29, 23
	s_mul_i32 s35, s29, 24
	s_mul_i32 s36, s29, 25
	s_mul_i32 s10, s29, 26
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s9, s29, 27
	s_mul_i32 s8, s29, 28
	s_mul_i32 s5, s29, 29
	s_mul_i32 s4, s29, 30
	s_mul_i32 s1, s29, 31
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v31
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v72, 5, v30
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v0, 2, v0
	v_lshlrev_b32_e32 v28, 3, v28
	v_lshlrev_b32_e32 v76, 2, v29
	v_lshlrev_b32_e32 v30, 6, v30
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_add3_u32 v1, 0, v71, v72
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v0, 0x3f8, v0
	.loc	1 450 23 is_stmt 0              ; generate_amdgcn.py:450:23
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[16:17], null, s3, s29, v[5:6]
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_or3_b32 v2, v28, v30, v76
	.loc	1 436 16 is_stmt 1              ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v1, v29, 1, v1
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v4, v74, v0
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v0, 16, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v41, 0, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v35, v35, v68, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v43, 0x840, v2, 0
	v_xad_u32 v45, 0x1008, v2, 0
	v_xad_u32 v47, 0x1848, v2, 0
	v_xad_u32 v49, 0x2010, v2, 0
	v_xad_u32 v64, 0x2850, v2, 0
	v_xad_u32 v65, 0x3018, v2, 0
	v_xad_u32 v66, 0x3858, v2, 0
	v_xad_u32 v67, 0x4020, v2, 0
	v_xad_u32 v68, 0x4860, v2, 0
	v_xad_u32 v69, 0x5028, v2, 0
	v_xad_u32 v70, 0x5868, v2, 0
	v_xad_u32 v71, 0x6030, v2, 0
	v_xad_u32 v72, 0x6870, v2, 0
	v_xad_u32 v74, 0x7038, v2, 0
	v_xad_u32 v76, 0x7878, v2, 0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v73
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v17, v29, 11, v4
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[4:7], v73 offset:16
	ds_load_b128 v[8:11], v73 offset:512
	ds_load_b128 v[12:15], v73 offset:528
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v104, 0, v17
	v_xad_u32 v105, v17, 8, 0
	v_xad_u32 v106, v17, 16, 0
	v_xad_u32 v107, v17, 24, 0
	v_xad_u32 v108, v17, 32, 0
	v_xad_u32 v73, v17, 40, 0
	v_xad_u32 v109, v17, 48, 0
	v_xad_u32 v110, v17, 56, 0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v17, 16, v75
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_barrier
	v_add_lshl_u32 v78, v16, s29, 2
	v_add_lshl_u32 v79, v16, s30, 2
	v_add_lshl_u32 v80, v16, s11, 2
	v_add_lshl_u32 v81, v16, s12, 2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v118, v0, v17
	v_mul_f32_e32 v21, v0, v19
	v_mul_f32_e32 v23, v1, v19
	v_mul_f32_e32 v31, v7, v19
	v_mul_f32_e32 v75, v8, v19
	v_mul_f32_e32 v111, v9, v19
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v0, v33, v21 :: v_dual_mul_f32 v113, v11, v19
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v120, v2, v17 :: v_dual_mul_f32 v117, v15, v19
	v_mul_f32_e32 v124, v6, v17
	v_mul_f32_e32 v126, v8, v17
	v_dual_mul_f32 v30, v6, v19 :: v_dual_mul_f32 v119, v1, v17
	v_mul_f32_e32 v127, v9, v17
	v_mul_f32_e32 v25, v2, v19
	v_mul_f32_e32 v27, v3, v19
	v_dual_mul_f32 v112, v10, v19 :: v_dual_mul_f32 v121, v3, v17
	v_mul_f32_e32 v128, v10, v17
	v_dual_mul_f32 v114, v12, v19 :: v_dual_mul_f32 v123, v5, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v129, v11, v17 :: v_dual_mul_f32 v6, v61, v27
	v_dual_mul_f32 v28, v4, v19 :: v_dual_lshlrev_b32 v77, 2, v16
	v_mul_f32_e32 v29, v5, v19
	v_dual_mul_f32 v115, v13, v19 :: v_dual_mul_f32 v122, v4, v17
	v_dual_mul_f32 v116, v14, v19 :: v_dual_mul_f32 v125, v7, v17
	v_dual_mul_f32 v130, v12, v17 :: v_dual_mul_f32 v21, v54, v112
	v_dual_mul_f32 v131, v13, v17 :: v_dual_mul_f32 v8, v60, v28
	v_mul_f32_e32 v132, v14, v17
	v_dual_mul_f32 v133, v15, v17 :: v_dual_mul_f32 v12, v58, v30
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v2, v63, v23
	v_dual_mul_f32 v14, v57, v31 :: v_dual_mul_f32 v31, v18, v117
	v_mul_f32_e32 v17, v56, v75
	v_mul_f32_e32 v19, v55, v111
	v_dual_mul_f32 v23, v53, v113 :: v_dual_mul_f32 v18, v40, v126
	v_mul_f32_e32 v1, v48, v118
	v_mul_f32_e32 v3, v20, v119
	v_mul_f32_e32 v20, v39, v127
	v_dual_mul_f32 v4, v62, v25 :: v_dual_mul_f32 v27, v51, v115
	v_mul_f32_e32 v5, v46, v120
	v_mul_f32_e32 v7, v22, v121
	v_dual_mul_f32 v22, v38, v128 :: v_dual_mul_f32 v25, v52, v114
	v_dual_mul_f32 v11, v24, v123 :: v_dual_mul_f32 v30, v34, v132
	v_mul_f32_e32 v24, v37, v129
	v_dual_mul_f32 v10, v59, v29 :: v_dual_mul_f32 v29, v50, v116
	v_dual_mul_f32 v9, v44, v122 :: v_dual_mul_f32 v28, v35, v131
	v_dual_mul_f32 v13, v42, v124 :: v_dual_mul_f32 v32, v32, v133
	v_dual_mul_f32 v15, v26, v125 :: v_dual_mul_f32 v26, v36, v130
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	ds_store_2addr_stride64_b64 v104, v[0:1], v[17:18] offset1:2
	ds_store_2addr_stride64_b64 v105, v[2:3], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v106, v[4:5], v[21:22] offset1:2
	ds_store_2addr_stride64_b64 v107, v[6:7], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v108, v[8:9], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v73, v[10:11], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v109, v[12:13], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v110, v[14:15], v[31:32] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v41
	ds_load_b64 v[2:3], v43
	ds_load_b64 v[4:5], v45
	ds_load_b64 v[6:7], v47
	ds_load_b64 v[8:9], v49
	ds_load_b64 v[10:11], v64
	ds_load_b64 v[12:13], v65
	ds_load_b64 v[14:15], v66
	ds_load_b64 v[17:18], v67
	ds_load_b64 v[19:20], v68
	ds_load_b64 v[21:22], v69
	ds_load_b64 v[23:24], v70
	ds_load_b64 v[25:26], v71
	ds_load_b64 v[27:28], v72
	ds_load_b64 v[29:30], v74
	ds_load_b64 v[31:32], v76
	v_lshl_add_u32 v33, s29, 3, v77
	v_lshl_add_u32 v34, s29, 4, v77
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
	v_add_lshl_u32 v93, v16, s28, 2
	v_add_lshl_u32 v94, v16, s31, 2
	v_add_lshl_u32 v95, v16, s33, 2
	v_add_lshl_u32 v96, v16, s34, 2
	v_add_lshl_u32 v97, v16, s35, 2
	v_add_lshl_u32 v98, v16, s36, 2
	v_add_lshl_u32 v99, v16, s10, 2
	v_lshl_add_u32 v35, s29, 5, v77
	v_lshl_add_u32 v36, s29, 6, v77
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v77, s[16:19], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v2, v78, s[16:19], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v4, v33, s[16:19], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v6, v79, s[16:19], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v8, v34, s[16:19], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v10, v80, s[16:19], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v12, v81, s[16:19], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v14, v82, s[16:19], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v17, v35, s[16:19], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v19, v83, s[16:19], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v21, v84, s[16:19], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v23, v85, s[16:19], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v25, v86, s[16:19], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v27, v87, s[16:19], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v29, v88, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0xb
	buffer_atomic_add_f32 v31, v89, s[16:19], 0 offen
	buffer_atomic_add_f32 v1, v36, s[16:19], 0 offen
	buffer_atomic_add_f32 v3, v90, s[16:19], 0 offen
	buffer_atomic_add_f32 v5, v91, s[16:19], 0 offen
	buffer_atomic_add_f32 v7, v92, s[16:19], 0 offen
	buffer_atomic_add_f32 v9, v93, s[16:19], 0 offen
	buffer_atomic_add_f32 v11, v94, s[16:19], 0 offen
	buffer_atomic_add_f32 v13, v95, s[16:19], 0 offen
	buffer_atomic_add_f32 v15, v96, s[16:19], 0 offen
	buffer_atomic_add_f32 v18, v97, s[16:19], 0 offen
	buffer_atomic_add_f32 v20, v98, s[16:19], 0 offen
	buffer_atomic_add_f32 v22, v99, s[16:19], 0 offen
	v_add_lshl_u32 v100, v16, s9, 2
	v_add_lshl_u32 v101, v16, s8, 2
	v_add_lshl_u32 v102, v16, s5, 2
	v_add_lshl_u32 v103, v16, s4, 2
	v_add_lshl_u32 v0, v16, s1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v24, v100, s[16:19], 0 offen
	buffer_atomic_add_f32 v26, v101, s[16:19], 0 offen
	buffer_atomic_add_f32 v28, v102, s[16:19], 0 offen
	buffer_atomic_add_f32 v30, v103, s[16:19], 0 offen
	buffer_atomic_add_f32 v32, v0, s[16:19], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_next_free_sgpr 38
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 180
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13796
; TotalNumSgprs: 40
; NumVgprs: 180
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 40
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm32_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     180
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
