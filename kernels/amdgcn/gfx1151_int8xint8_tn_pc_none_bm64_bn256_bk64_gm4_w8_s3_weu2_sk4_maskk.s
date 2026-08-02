	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_load_b32 s33, s[0:1], 0x38
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v105, 0xf0, v0
	v_lshrrev_b32_e32 v82, 2, v0
	v_lshlrev_b32_e32 v102, 4, v0
	v_and_b32_e32 v106, 15, v0
	v_or_b32_e32 v89, 0x3f0, v0
	v_lshrrev_b32_e32 v83, 2, v105
	v_or_b32_e32 v90, 0x7f0, v0
	v_and_b32_e32 v101, 48, v102
	v_or_b32_e32 v91, 0xbf0, v0
	v_or_b32_e32 v92, 0xff0, v0
	v_lshlrev_b32_e32 v93, 5, v0
	v_and_b32_e32 v95, 32, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v104, 14, v0
	v_and_b32_e32 v94, 8, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s24, 63
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
	v_mul_lo_u32 v2, s25, v83
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s26, s25, 3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b64 s[20:21], s[14:15]
	s_mov_b32 s15, 0x31027000
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v84, v106, 4, v2
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_mov_b32 s23, s15
	s_mov_b32 s22, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v85, s26, v84
	.loc	1 349 16 is_stmt 1              ; generate_amdgcn.py:349:16
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
	v_mul_lo_u32 v1, s24, v82
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
	s_lshl_b32 s35, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s33, 0xff
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s35, v82
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s7, s3, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s28, s3, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s8, s25, s35
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s3, s2, s6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s35, v83
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s27, s3, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xff
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v81, v1, v101, s27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s31, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s6, s28, s8
	s_lshl_b32 s3, s25, 1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_mul_i32 s4, s24, s35
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s6, v84
	v_add_nc_u32_e32 v86, s3, v84
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s33, v3
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add_nc_u32_e32 v2, s4, v81
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s25, v1
	v_add_nc_u32_e32 v5, s6, v86
	v_add_nc_u32_e32 v3, s6, v85
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s31
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x1ff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v11, 0x80000000, v4, vcc_lo
	v_cndmask_b32_e32 v15, 0x80000000, v5, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_addk_i32 s35, 0x100
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v19, 0x80000000, v3, vcc_lo
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_lshl_b32 s7, s25, 8
	.loc	1 402 22 is_stmt 1              ; generate_amdgcn.py:402:22
	buffer_load_b128 v[3:6], v2, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[7:10], v1, s[20:23], 0 offen
	buffer_load_b128 v[11:14], v11, s[20:23], 0 offen
	buffer_load_b128 v[15:18], v15, s[20:23], 0 offen
	buffer_load_b128 v[19:22], v19, s[20:23], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s35, v83
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v2, s6, v84
	v_add_nc_u32_e32 v23, s6, v86
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v1
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v24, s6, v85
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	s_lshl_b32 s6, s24, 8
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s25, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v31, 0x80000000, v23, vcc_lo
	v_cndmask_b32_e32 v35, 0x80000000, v24, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[23:26], v2, s[20:23], 0 offen
	buffer_load_b128 v[27:30], v1, s[20:23], 0 offen
	buffer_load_b128 v[31:34], v31, s[20:23], 0 offen
	buffer_load_b128 v[35:38], v35, s[20:23], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s35, v82
	v_lshlrev_b32_e32 v2, 3, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v1
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_add3_u32 v1, s4, s6, v81
	s_mov_b32 s4, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s5, 0x2ff
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_load_b128 v[39:42], v1, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 0x420, v1
	v_xor_b32_e32 v1, v1, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v96, v104, 10, v1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v1, 0, v102
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v97, 0x90, v96
	v_xor_b32_e32 v98, 0x120, v96
	v_xor_b32_e32 v99, 0x1b0, v96
	v_xor_b32_e32 v100, 0x210, v96
	v_add_nc_u32_e32 v43, 0, v96
	v_xor_b32_e32 v173, 0x330, v96
	v_xor_b32_e32 v174, 0x3a0, v96
	v_add_nc_u32_e32 v44, 0, v97
	v_add_nc_u32_e32 v45, 0, v98
	v_add_nc_u32_e32 v46, 0, v99
	v_add_nc_u32_e32 v47, 0, v100
	v_add_nc_u32_e32 v48, 0, v173
	v_add_nc_u32_e32 v49, 0, v174
	v_add_nc_u32_e32 v50, 0x4000, v43
	v_add_nc_u32_e32 v51, 0x4000, v44
	v_add_nc_u32_e32 v52, 0x4000, v45
	v_add_nc_u32_e32 v53, 0x4000, v46
	v_add_nc_u32_e32 v54, 0x4000, v47
	v_add_nc_u32_e32 v55, 0x4000, v48
	v_add_nc_u32_e32 v56, 0x4000, v49
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt vmcnt(9)
	ds_store_b128 v1, v[3:6] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	v_perm_b32 v3, v11, v7, 0x4000501
	v_perm_b32 v5, v11, v7, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v4, v19, v15, 0x4000501
	v_perm_b32 v6, v19, v15, 0x6020703
	v_perm_b32 v7, v12, v8, 0x4000501
	v_perm_b32 v11, v20, v16, 0x4000501
	v_perm_b32 v8, v12, v8, 0x6020703
	v_perm_b32 v12, v20, v16, 0x6020703
	v_perm_b32 v15, v13, v9, 0x4000501
	v_perm_b32 v16, v21, v17, 0x4000501
	v_perm_b32 v9, v13, v9, 0x6020703
	v_perm_b32 v13, v21, v17, 0x6020703
	v_perm_b32 v17, v14, v10, 0x4000501
	v_perm_b32 v19, v22, v18, 0x4000501
	v_perm_b32 v10, v14, v10, 0x6020703
	v_perm_b32 v14, v22, v18, 0x6020703
	v_perm_b32 v18, v4, v3, 0x7060302
	v_perm_b32 v3, v4, v3, 0x5040100
	v_perm_b32 v4, v6, v5, 0x7060302
	v_perm_b32 v5, v6, v5, 0x5040100
	v_perm_b32 v6, v11, v7, 0x7060302
	v_perm_b32 v7, v11, v7, 0x5040100
	v_perm_b32 v11, v12, v8, 0x7060302
	v_perm_b32 v8, v12, v8, 0x5040100
	v_perm_b32 v12, v16, v15, 0x7060302
	v_perm_b32 v15, v16, v15, 0x5040100
	v_perm_b32 v16, v13, v9, 0x7060302
	v_perm_b32 v9, v13, v9, 0x5040100
	v_perm_b32 v13, v19, v17, 0x7060302
	v_perm_b32 v17, v19, v17, 0x5040100
	v_perm_b32 v19, v14, v10, 0x7060302
	v_perm_b32 v10, v14, v10, 0x5040100
	s_waitcnt vmcnt(3)
	v_perm_b32 v14, v27, v23, 0x4000501
	s_waitcnt vmcnt(1)
	v_perm_b32 v20, v35, v31, 0x4000501
	v_perm_b32 v21, v27, v23, 0x6020703
	v_perm_b32 v22, v35, v31, 0x6020703
	v_perm_b32 v23, v28, v24, 0x4000501
	v_perm_b32 v27, v36, v32, 0x4000501
	v_perm_b32 v24, v28, v24, 0x6020703
	v_perm_b32 v28, v36, v32, 0x6020703
	v_perm_b32 v31, v29, v25, 0x4000501
	v_perm_b32 v32, v37, v33, 0x4000501
	v_perm_b32 v25, v29, v25, 0x6020703
	v_perm_b32 v29, v37, v33, 0x6020703
	v_perm_b32 v33, v30, v26, 0x4000501
	v_perm_b32 v35, v38, v34, 0x4000501
	v_perm_b32 v26, v30, v26, 0x6020703
	v_perm_b32 v30, v38, v34, 0x6020703
	ds_store_2addr_b32 v43, v18, v3 offset1:16
	ds_store_2addr_b32 v44, v4, v5 offset1:16
	ds_store_2addr_b32 v45, v6, v7 offset1:16
	ds_store_2addr_b32 v46, v11, v8 offset1:16
	ds_store_2addr_b32 v47, v12, v15 offset1:16
	ds_store_2addr_b32 v43, v16, v9 offset0:160 offset1:176
	ds_store_2addr_b32 v48, v13, v17 offset1:16
	ds_store_2addr_b32 v49, v19, v10 offset1:16
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[39:42] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v1, v20, v14, 0x7060302
	v_perm_b32 v3, v20, v14, 0x5040100
	v_perm_b32 v4, v22, v21, 0x7060302
	v_perm_b32 v5, v22, v21, 0x5040100
	v_perm_b32 v6, v27, v23, 0x7060302
	v_perm_b32 v7, v27, v23, 0x5040100
	v_perm_b32 v8, v28, v24, 0x7060302
	v_perm_b32 v9, v28, v24, 0x5040100
	v_perm_b32 v10, v32, v31, 0x7060302
	v_perm_b32 v11, v32, v31, 0x5040100
	v_perm_b32 v12, v29, v25, 0x7060302
	v_perm_b32 v13, v29, v25, 0x5040100
	v_perm_b32 v14, v35, v33, 0x7060302
	v_perm_b32 v15, v35, v33, 0x5040100
	v_perm_b32 v16, v30, v26, 0x7060302
	v_perm_b32 v17, v30, v26, 0x5040100
	ds_store_2addr_b32 v50, v1, v3 offset1:16
	ds_store_2addr_b32 v51, v4, v5 offset1:16
	ds_store_2addr_b32 v52, v6, v7 offset1:16
	ds_store_2addr_b32 v53, v8, v9 offset1:16
	ds_store_2addr_b32 v54, v10, v11 offset1:16
	ds_store_2addr_b32 v50, v12, v13 offset0:160 offset1:176
	ds_store_2addr_b32 v55, v14, v15 offset1:16
	ds_store_2addr_b32 v56, v16, v17 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v171, 5, v0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_or_b32_e32 v175, 0x3f0, v0
	v_or_b32_e32 v176, 0x7f0, v0
	v_or_b32_e32 v177, 0xbf0, v0
	v_or_b32_e32 v178, 0xff0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v87, 0x1800, v171
	v_and_b32_e32 v88, 48, v2
	v_and_b32_e32 v1, 8, v0
	v_and_b32_e32 v172, 32, v0
	s_mov_b32 s6, 0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr175
                                        ; implicit-def: $vgpr176
                                        ; implicit-def: $vgpr177
                                        ; implicit-def: $vgpr178
                                        ; implicit-def: $vgpr171
                                        ; implicit-def: $vgpr87
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr172
.LBB0_3:                                ; %Flow69
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	v_lshlrev_b32_e32 v103, 6, v0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 3, 1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s36, s5, 8
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v88, 48, v2
	v_and_b32_e32 v1, 0x210, v1
	v_and_b32_e32 v2, 0x1c0, v103
	v_and_b32_e32 v87, 0x1800, v93
	v_bfe_i32 v3, v0, 5, 1
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v171, s25, v84
	v_xor_b32_e32 v1, v1, v88
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v168, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v3, 0x420, v3
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v166, 0
	v_or3_b32 v1, v2, v1, v87
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v163, 0
	v_mov_b32_e32 v162, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v172, v1, v3
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_xor_b32_e32 v175, 16, v172
	v_xor_b32_e32 v176, 32, v172
	v_xor_b32_e32 v177, 48, v172
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v108, 0
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v107, 0
	s_addk_i32 s35, 0x100
	s_add_i32 s34, 0, 0x8000
	s_add_i32 s30, 0, 0x9000
	s_add_i32 s29, 0, 0x4000
	s_add_i32 s36, s36, -3
	s_mov_b32 s37, 1
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s6, s5, 8
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v178, s34, v106
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s6, s35, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v17, s4, v172
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v11, s6, v82
	.loc	1 402 30                        ; generate_amdgcn.py:402:30
	v_mad_u64_u32 v[9:10], null, s6, s24, v[81:82]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v18, s4, v175
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v11
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b128 v[57:60], v9, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v9, v178 offset:832
	ds_load_u8 v10, v178 offset:768
	ds_load_u8 v11, v178 offset:960
	ds_load_u8 v12, v178 offset:896
	ds_load_u8 v13, v178 offset:576
	ds_load_u8 v14, v178 offset:512
	ds_load_u8 v15, v178 offset:704
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[69:72], v17
	ds_load_b128 v[73:76], v18
	ds_load_b128 v[61:64], v17 offset:8192
	ds_load_b128 v[65:68], v18 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v178 offset:640
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v178 offset:320
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	v_lshl_or_b32 v28, v11, 16, v9
	ds_load_u8 v11, v178 offset:384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v10, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v10, 16, v13
	ds_load_u8 v9, v178 offset:256
	ds_load_u8 v10, v178 offset:448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v178 offset:64
	v_perm_b32 v9, v9, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v178
	ds_load_u8 v10, v178 offset:192
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v11, 0xc0c0004
	ds_load_u8 v11, v178 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v178 offset:1856
	v_lshl_or_b32 v25, v10, 16, v9
	ds_load_u8 v9, v178 offset:1792
	ds_load_u8 v10, v178 offset:1984
	v_wmma_i32_16x16x16_iu8 v[17:24], v[61:64], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v11, 0xc0c0004
	ds_load_u8 v11, v178 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v178 offset:1600
	ds_load_u8 v12, v178 offset:1536
	v_lshl_or_b32 v32, v10, 16, v9
	ds_load_u8 v9, v178 offset:1344
	ds_load_u8 v10, v178 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v178 offset:1728
	ds_load_u8 v13, v178 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v12, 16, v11
	ds_load_u8 v10, v178 offset:1472
	ds_load_u8 v11, v178 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v178 offset:1088
	ds_load_u8 v10, v178 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v178 offset:1216
	ds_load_u8 v11, v178 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v10, 16, v9
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v178 offset:848
	ds_load_u8 v26, v178 offset:784
	v_wmma_i32_16x16x16_iu8 v[17:24], v[65:68], v[29:32], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[73:76], v[29:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v178 offset:976
	ds_load_u8 v27, v178 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v178 offset:592
	ds_load_u8 v28, v178 offset:528
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v178 offset:336
	ds_load_u8 v26, v178 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v178 offset:720
	ds_load_u8 v29, v178 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v28, 16, v27
	ds_load_u8 v26, v178 offset:464
	ds_load_u8 v27, v178 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v178 offset:16
	ds_load_u8 v26, v178 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v178 offset:208
	ds_load_u8 v27, v178 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	ds_load_u8 v25, v178 offset:1872
	ds_load_u8 v26, v178 offset:1808
	v_wmma_i32_16x16x16_iu8 v[33:40], v[61:64], v[41:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v178 offset:2000
	ds_load_u8 v27, v178 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v178 offset:1616
	ds_load_u8 v28, v178 offset:1552
	v_lshl_or_b32 v48, v26, 16, v25
	ds_load_u8 v25, v178 offset:1360
	ds_load_u8 v26, v178 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v178 offset:1744
	ds_load_u8 v29, v178 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v28, 16, v27
	ds_load_u8 v26, v178 offset:1488
	ds_load_u8 v27, v178 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v46, v26, 16, v25
	ds_load_u8 v25, v178 offset:1104
	ds_load_u8 v26, v178 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v178 offset:1232
	ds_load_u8 v27, v178 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[41:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v41, v178 offset:864
	ds_load_u8 v42, v178 offset:800
	v_wmma_i32_16x16x16_iu8 v[33:40], v[65:68], v[45:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[73:76], v[45:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v178 offset:992
	ds_load_u8 v43, v178 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v178 offset:608
	ds_load_u8 v44, v178 offset:544
	v_lshl_or_b32 v80, v42, 16, v41
	ds_load_u8 v41, v178 offset:352
	ds_load_u8 v42, v178 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v178 offset:736
	ds_load_u8 v45, v178 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v44, 16, v43
	ds_load_u8 v42, v178 offset:480
	ds_load_u8 v43, v178 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v78, v42, 16, v41
	ds_load_u8 v41, v178 offset:32
	ds_load_u8 v42, v178 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v178 offset:224
	ds_load_u8 v43, v178 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v42, 16, v41
	ds_load_u8 v41, v178 offset:1888
	ds_load_u8 v42, v178 offset:1824
	v_wmma_i32_16x16x16_iu8 v[49:56], v[61:64], v[77:80], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v178 offset:2016
	ds_load_u8 v43, v178 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v178 offset:1632
	ds_load_u8 v44, v178 offset:1568
	v_lshl_or_b32 v182, v42, 16, v41
	ds_load_u8 v41, v178 offset:1376
	ds_load_u8 v42, v178 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v178 offset:1760
	ds_load_u8 v45, v178 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v181, v44, 16, v43
	ds_load_u8 v42, v178 offset:1504
	ds_load_u8 v43, v178 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_lshl_or_b32 v180, v42, 16, v41
	ds_load_u8 v41, v178 offset:1120
	ds_load_u8 v42, v178 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v178 offset:1248
	ds_load_u8 v43, v178 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[41:48], v[69:72], v[77:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v77, v178 offset:880
	ds_load_u8 v78, v178 offset:816
	v_wmma_i32_16x16x16_iu8 v[49:56], v[65:68], v[179:182], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[73:76], v[179:182], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v78, s34, v89
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v78, v78
	ds_load_u8 v79, v178 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v178 offset:624
	ds_load_u8 v80, v178 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v178 offset:752
	ds_load_u8 v179, v178 offset:688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v179, v80, 0xc0c0004
	v_lshl_or_b32 v80, v78, 16, v77
	ds_load_u8 v77, v178 offset:368
	ds_load_u8 v78, v178 offset:304
	v_lshl_or_b32 v79, v179, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v178 offset:496
	ds_load_u8 v179, v178 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v179, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v178 offset:48
	ds_load_u8 v179, v178 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v77, v179, 0xc0c0004
	ds_load_u8 v179, v178 offset:240
	ds_load_u8 v180, v178 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v179, 16, v77
	ds_load_u8 v179, v178 offset:1904
	ds_load_u8 v180, v178 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v180, s34, v90
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v180, v180
	ds_load_u8 v181, v178 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v178 offset:1648
	ds_load_u8 v182, v178 offset:1584
	v_lshl_or_b32 v190, v180, 16, v179
	ds_load_u8 v179, v178 offset:1392
	ds_load_u8 v180, v178 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v178 offset:1776
	ds_load_u8 v183, v178 offset:1712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v189, v182, 16, v181
	ds_load_u8 v180, v178 offset:1520
	ds_load_u8 v181, v178 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	v_lshl_or_b32 v188, v180, 16, v179
	ds_load_u8 v179, v178 offset:1136
	ds_load_u8 v180, v178 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v178 offset:1264
	ds_load_u8 v181, v178 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v187, v180, 16, v179
	v_wmma_i32_16x16x16_iu8 v[179:186], v[69:72], v[77:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[179:186], v[73:76], v[187:190], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[61:64], v[77:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v61, v178 offset:2880
	ds_load_u8 v62, v178 offset:2816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v77, s4, v176
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[69:76], v[65:68], v[187:190], v[69:76] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:3008
	ds_load_u8 v63, v178 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v178 offset:2624
	ds_load_u8 v64, v178 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v178 offset:2752
	ds_load_u8 v65, v178 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v65, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v178 offset:2368
	ds_load_u8 v62, v178 offset:2304
	v_lshl_or_b32 v63, v65, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:2496
	ds_load_u8 v65, v178 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v65, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v178 offset:2112
	ds_load_u8 v65, v178 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v65, v61, 0xc0c0004
	ds_load_u8 v65, v178 offset:2240
	ds_load_u8 v66, v178 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v65, 16, v61
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[65:68], v77
	ds_load_b128 v[77:80], v77 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[65:68], v[61:64], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[61:64], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v61, v178 offset:2896
	ds_load_u8 v62, v178 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:3024
	ds_load_u8 v63, v178 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v178 offset:2640
	ds_load_u8 v64, v178 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v178 offset:2768
	ds_load_u8 v187, v178 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v178 offset:2384
	ds_load_u8 v62, v178 offset:2320
	v_lshl_or_b32 v63, v187, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:2512
	ds_load_u8 v187, v178 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v187, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v178 offset:2128
	ds_load_u8 v187, v178 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v187, v61, 0xc0c0004
	ds_load_u8 v187, v178 offset:2256
	ds_load_u8 v188, v178 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v187, 16, v61
	v_wmma_i32_16x16x16_iu8 v[25:32], v[65:68], v[61:64], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[77:80], v[61:64], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v61, v178 offset:2912
	ds_load_u8 v62, v178 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:3040
	ds_load_u8 v63, v178 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v178 offset:2656
	ds_load_u8 v64, v178 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v178 offset:2784
	ds_load_u8 v187, v178 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v178 offset:2400
	ds_load_u8 v62, v178 offset:2336
	v_lshl_or_b32 v63, v187, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:2528
	ds_load_u8 v187, v178 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v187, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v178 offset:2144
	ds_load_u8 v187, v178 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v187, v61, 0xc0c0004
	ds_load_u8 v187, v178 offset:2272
	ds_load_u8 v188, v178 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v187, 16, v61
	v_wmma_i32_16x16x16_iu8 v[41:48], v[65:68], v[61:64], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[77:80], v[61:64], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v61, v178 offset:2928
	ds_load_u8 v62, v178 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v62, s34, v91
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v62, v62
	ds_load_u8 v63, v178 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v178 offset:2672
	ds_load_u8 v64, v178 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v178 offset:2800
	ds_load_u8 v187, v178 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v178 offset:2416
	ds_load_u8 v62, v178 offset:2352
	v_lshl_or_b32 v63, v187, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:2544
	ds_load_u8 v187, v178 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v187, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v178 offset:2160
	ds_load_u8 v187, v178 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v187, v61, 0xc0c0004
	ds_load_u8 v187, v178 offset:2288
	ds_load_u8 v188, v178 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v187, 16, v61
	v_wmma_i32_16x16x16_iu8 v[179:186], v[65:68], v[61:64], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[77:80], v[61:64], v[69:76] neg_lo:[1,1,0]
	ds_load_u8 v61, v178 offset:3904
	ds_load_u8 v62, v178 offset:3840
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v77, s4, v177
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s6, s25
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s4, s4, s28
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:4032
	ds_load_u8 v63, v178 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v178 offset:3648
	ds_load_u8 v64, v178 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v178 offset:3776
	ds_load_u8 v65, v178 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v65, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v178 offset:3392
	ds_load_u8 v62, v178 offset:3328
	v_lshl_or_b32 v63, v65, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:3520
	ds_load_u8 v65, v178 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v65, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v178 offset:3136
	ds_load_u8 v65, v178 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v65, v61, 0xc0c0004
	ds_load_u8 v65, v178 offset:3264
	ds_load_u8 v66, v178 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v65, 16, v61
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[65:68], v77
	ds_load_b128 v[77:80], v77 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[65:68], v[61:64], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[61:64], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v61, v178 offset:3920
	ds_load_u8 v62, v178 offset:3856
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v157, v157, v23 :: v_dual_add_f32 v160, v160, v20
	v_dual_add_f32 v156, v156, v24 :: v_dual_add_f32 v159, v159, v21
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:4048
	ds_load_u8 v63, v178 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v178 offset:3664
	ds_load_u8 v64, v178 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v178 offset:3792
	ds_load_u8 v187, v178 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v178 offset:3408
	ds_load_u8 v62, v178 offset:3344
	v_lshl_or_b32 v63, v187, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:3536
	ds_load_u8 v187, v178 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v187, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v178 offset:3152
	ds_load_u8 v187, v178 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v187, v61, 0xc0c0004
	ds_load_u8 v187, v178 offset:3280
	ds_load_u8 v188, v178 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v187, 16, v61
	v_wmma_i32_16x16x16_iu8 v[25:32], v[65:68], v[61:64], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[77:80], v[61:64], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v61, v178 offset:3936
	ds_load_u8 v62, v178 offset:3872
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v153, v153, v27
	v_add_f32_e32 v155, v155, v25
	v_add_f32_e32 v151, v151, v29
	v_add_f32_e32 v149, v149, v31
	v_add_f32_e32 v147, v147, v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:4064
	ds_load_u8 v63, v178 offset:4000
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v158, v158, v22 :: v_dual_add_f32 v145, v145, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v154, v154, v26 :: v_dual_add_f32 v141, v141, v39
	v_dual_add_f32 v150, v150, v30 :: v_dual_add_f32 v139, v139, v40
	v_add_f32_e32 v143, v143, v37
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v178 offset:3680
	ds_load_u8 v64, v178 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v178 offset:3808
	ds_load_u8 v187, v178 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v178 offset:3424
	ds_load_u8 v62, v178 offset:3360
	v_lshl_or_b32 v63, v187, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:3552
	ds_load_u8 v187, v178 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v187, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v178 offset:3168
	ds_load_u8 v187, v178 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v187, v61, 0xc0c0004
	ds_load_u8 v187, v178 offset:3296
	ds_load_u8 v188, v178 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v187, 16, v61
	v_wmma_i32_16x16x16_iu8 v[41:48], v[65:68], v[61:64], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[77:80], v[61:64], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v61, v178 offset:3952
	ds_load_u8 v62, v178 offset:3888
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
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v152, v152, v28 :: v_dual_add_f32 v137, v137, v42
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v62, s34, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v62, v62
	ds_load_u8 v63, v178 offset:4016
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v148, v148, v32 :: v_dual_add_f32 v133, v133, v46
	v_dual_add_f32 v146, v146, v34 :: v_dual_add_f32 v135, v135, v44
	v_dual_add_f32 v144, v144, v36 :: v_dual_add_f32 v129, v129, v50
	v_dual_add_f32 v142, v142, v38 :: v_dual_add_f32 v131, v131, v48
	v_dual_add_f32 v138, v138, v41 :: v_dual_add_f32 v127, v127, v52
	v_dual_add_f32 v136, v136, v43 :: v_dual_add_f32 v125, v125, v54
	v_dual_add_f32 v134, v134, v45 :: v_dual_add_f32 v123, v123, v56
	s_mov_b32 s34, s30
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v178 offset:3696
	ds_load_u8 v64, v178 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v178 offset:3824
	ds_load_u8 v187, v178 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v64, 0xc0c0004
	v_lshl_or_b32 v64, v62, 16, v61
	ds_load_u8 v61, v178 offset:3440
	ds_load_u8 v62, v178 offset:3376
	v_lshl_or_b32 v63, v187, 16, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v178 offset:3568
	ds_load_u8 v187, v178 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v187, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v178 offset:3184
	ds_load_u8 v187, v178 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v187, v61, 0xc0c0004
	ds_load_u8 v187, v178 offset:3312
	ds_load_u8 v178, v178 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v178, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v178, 16, v61
	v_wmma_i32_16x16x16_iu8 v[179:186], v[65:68], v[61:64], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[77:80], v[61:64], v[69:76] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v64, v12
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v12, s6, v83
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v65, v13
	v_cvt_f32_i32_e32 v66, v14
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s4, v171
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v68, v16
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v12
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v12, s4, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v166, v166, v66
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v67, v15
	v_cvt_f32_i32_e32 v77, v17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v16, 0x80000000, v13, vcc_lo
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v78, v18
	v_cvt_f32_i32_e32 v79, v19
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[12:15], v12, s[20:23], 0 offen
	buffer_load_b128 v[16:19], v16, s[20:23], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v62, v10
	v_cvt_f32_i32_e32 v63, v11
	v_cvt_f32_i32_e32 v11, v74
	v_cvt_f32_i32_e32 v10, v75
	v_cvt_f32_i32_e32 v61, v9
	v_cvt_f32_i32_e32 v80, v179
	v_cvt_f32_i32_e32 v179, v181
	v_cvt_f32_i32_e32 v181, v183
	v_cvt_f32_i32_e32 v183, v185
	v_cvt_f32_i32_e32 v9, v76
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v164, v164, v68
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v178, v180
	v_cvt_f32_i32_e32 v180, v182
	v_cvt_f32_i32_e32 v182, v184
	v_cvt_f32_i32_e32 v184, v186
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v162, v162, v78
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v140, v140, v61
	v_dual_add_f32 v170, v170, v62 :: v_dual_add_f32 v169, v169, v63
	v_dual_add_f32 v168, v168, v64 :: v_dual_add_f32 v167, v167, v65
	v_add_f32_e32 v165, v165, v67
	v_add_f32_e32 v163, v163, v77
	v_add_f32_e32 v161, v161, v79
	v_dual_add_f32 v132, v132, v47 :: v_dual_add_f32 v121, v121, v178
	v_dual_add_f32 v130, v130, v49 :: v_dual_add_f32 v119, v119, v180
	v_dual_add_f32 v128, v128, v51 :: v_dual_add_f32 v117, v117, v182
	v_dual_add_f32 v126, v126, v53 :: v_dual_add_f32 v115, v115, v184
	v_dual_add_f32 v124, v124, v55 :: v_dual_add_f32 v113, v113, v70
	v_dual_add_f32 v122, v122, v80 :: v_dual_add_f32 v109, v109, v11
	v_dual_add_f32 v120, v120, v179 :: v_dual_add_f32 v111, v111, v72
	v_dual_add_f32 v116, v116, v183 :: v_dual_add_f32 v107, v107, v9
	v_add_f32_e32 v112, v112, v71
	v_add_f32_e32 v110, v110, v73
	v_add_f32_e32 v108, v108, v10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v74, v16, v12, 0x4000501
	v_perm_b32 v75, v16, v12, 0x6020703
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v12, s4, v86
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v76, v17, v13, 0x4000501
	v_perm_b32 v185, v17, v13, 0x6020703
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v13, s4, v85
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v186, v18, v14, 0x4000501
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	v_perm_b32 v187, v18, v14, 0x6020703
	v_perm_b32 v188, v19, v15, 0x4000501
	v_cndmask_b32_e32 v16, 0x80000000, v13, vcc_lo
	v_perm_b32 v189, v19, v15, 0x6020703
	s_clause 0x1
	buffer_load_b128 v[12:15], v12, s[20:23], 0 offen
	buffer_load_b128 v[16:19], v16, s[20:23], 0 offen
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_add_i32 s4, s37, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s4, 2
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s37, s4, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_lshl_b32 s4, s37, 12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s7, s37, 14
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s6, s4, 0
	s_mov_b32 s4, s29
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s29, s7, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v118, v118, v181 :: v_dual_add_nc_u32 v11, s29, v100
	v_add_f32_e32 v114, v114, v69
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s7, s5, 1
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_add_i32 s30, s6, 0x8000
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v10, s29, v173
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s36
	s_mov_b32 s5, s7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v190, v16, v12, 0x4000501
	v_perm_b32 v12, v16, v12, 0x6020703
	v_perm_b32 v16, v17, v13, 0x4000501
	v_perm_b32 v13, v17, v13, 0x6020703
	v_perm_b32 v17, v18, v14, 0x4000501
	v_perm_b32 v14, v18, v14, 0x6020703
	v_perm_b32 v18, v19, v15, 0x4000501
	v_perm_b32 v15, v19, v15, 0x6020703
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v19, s6, v102
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v9, v17, v186, 0x7060302
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	ds_store_b128 v19, v[57:60] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v19, v190, v74, 0x7060302
	v_perm_b32 v57, v190, v74, 0x5040100
	v_add_nc_u32_e32 v58, s29, v96
	ds_store_2addr_b32 v58, v19, v57 offset1:16
	v_perm_b32 v19, v12, v75, 0x7060302
	v_perm_b32 v12, v12, v75, 0x5040100
	v_add_nc_u32_e32 v57, s29, v97
	ds_store_2addr_b32 v57, v19, v12 offset1:16
	v_perm_b32 v12, v16, v76, 0x7060302
	v_perm_b32 v16, v16, v76, 0x5040100
	v_add_nc_u32_e32 v19, s29, v98
	ds_store_2addr_b32 v19, v12, v16 offset1:16
	v_perm_b32 v12, v13, v185, 0x7060302
	v_perm_b32 v13, v13, v185, 0x5040100
	v_add_nc_u32_e32 v16, s29, v99
	v_add_nc_u32_e32 v19, s29, v174
	ds_store_2addr_b32 v16, v12, v13 offset1:16
	v_perm_b32 v12, v17, v186, 0x5040100
	v_perm_b32 v13, v14, v187, 0x7060302
	v_perm_b32 v14, v14, v187, 0x5040100
	v_perm_b32 v16, v18, v188, 0x7060302
	v_perm_b32 v17, v18, v188, 0x5040100
	v_perm_b32 v18, v15, v189, 0x7060302
	v_perm_b32 v15, v15, v189, 0x5040100
	ds_store_2addr_b32 v11, v9, v12 offset1:16
	ds_store_2addr_b32 v58, v13, v14 offset0:160 offset1:176
	ds_store_2addr_b32 v10, v16, v17 offset1:16
	ds_store_2addr_b32 v19, v18, v15 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v175, v89 :: v_dual_mov_b32 v176, v90
	v_dual_mov_b32 v177, v91 :: v_dual_mov_b32 v178, v92
	v_dual_mov_b32 v171, v93 :: v_dual_mov_b32 v172, v95
	v_mov_b32_e32 v1, v94
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v140, 0
	s_add_i32 s34, 0, 0x8000
	s_add_i32 s30, 0, 0x9000
	s_add_i32 s29, 0, 0x4000
.LBB0_8:                                ; %Flow70
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_and_b32_e32 v173, 7, v0
	v_and_b32_e32 v174, 1, v0
	s_mov_b32 s8, 0
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_waitcnt lgkmcnt(0)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x210, 0, vcc_lo
	v_lshlrev_b32_e32 v2, 6, v173
	v_cmp_eq_u32_e32 vcc_lo, 0, v172
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v1, v1, v88
	v_cndmask_b32_e64 v3, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s31
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or3_b32 v1, v2, v87, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v77, v1, v3
	v_xor_b32_e32 v73, 16, v77
	v_xor_b32_e32 v74, 32, v77
	v_xor_b32_e32 v75, 48, v77
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v76, s34, v106
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v2, v76 offset:832
	ds_load_u8 v3, v76 offset:768
	ds_load_u8 v4, v76 offset:960
	ds_load_u8 v5, v76 offset:896
	ds_load_u8 v6, v76 offset:576
	ds_load_u8 v7, v76 offset:512
	ds_load_u8 v8, v76 offset:704
	ds_load_u8 v9, v76 offset:640
	ds_load_u8 v10, v76 offset:320
	ds_load_u8 v11, v76 offset:256
	ds_load_u8 v12, v76 offset:448
	ds_load_u8 v13, v76 offset:384
	ds_load_u8 v14, v76 offset:64
	ds_load_u8 v15, v76
	ds_load_u8 v16, v76 offset:192
	ds_load_u8 v17, v76 offset:128
	ds_load_u8 v21, v76 offset:848
	ds_load_u8 v22, v76 offset:784
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s4, v77
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v3, v3, v2, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v2, s34, v175
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[82:85], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v5, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v6, v9, v8, 0xc0c0004
	v_lshl_or_b32 v20, v4, 16, v3
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v7, v11, v10, 0xc0c0004
	ds_load_u8 v9, v76 offset:16
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v13, v12, 0xc0c0004
	v_lshl_or_b32 v19, v6, 16, v5
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v17, v16, 0xc0c0004
	v_lshl_or_b32 v18, v8, 16, v7
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v22, v21, 0xc0c0004
	ds_load_u8 v6, v76 offset:976
	ds_load_u8 v7, v76 offset:912
	ds_load_u8 v8, v76 offset:592
	ds_load_u8 v10, v76 offset:528
	ds_load_u8 v11, v76 offset:720
	ds_load_u8 v12, v76 offset:656
	ds_load_u8 v13, v76 offset:336
	ds_load_u8 v14, v76 offset:272
	ds_load_u8 v15, v76 offset:464
	ds_load_u8 v16, v76 offset:400
	ds_load_u8 v21, v76 offset:80
	ds_load_u8 v22, v76 offset:208
	ds_load_u8 v25, v76 offset:144
	ds_load_u8 v26, v76 offset:864
	ds_load_u8 v27, v76 offset:800
	ds_load_u8 v28, v76 offset:992
	ds_load_u8 v29, v76 offset:928
	ds_load_u8 v30, v76 offset:608
	ds_load_u8 v31, v76 offset:544
	ds_load_u8 v32, v76 offset:736
	ds_load_u8 v33, v76 offset:672
	ds_load_u8 v34, v76 offset:352
	ds_load_u8 v35, v76 offset:288
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v76 offset:480
	ds_load_u8 v36, v76 offset:416
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v8, v10, v8, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v10, v12, v11, 0xc0c0004
	ds_load_u8 v11, v76 offset:32
	ds_load_u8 v12, v76 offset:48
	v_lshl_or_b32 v17, v4, 16, v3
	v_lshl_or_b32 v24, v6, 16, v5
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v3, v14, v13, 0xc0c0004
	v_lshl_or_b32 v23, v10, 16, v8
	ds_load_u8 v8, v76 offset:96
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v4, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v5, v9, v21, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v6, v25, v22, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v9, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v10, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v13, v31, v30, 0xc0c0004
	ds_load_u8 v16, v76 offset:224
	ds_load_u8 v25, v76 offset:160
	ds_load_u8 v26, v76 offset:880
	ds_load_u8 v27, v76 offset:816
	ds_load_u8 v2, v2
	ds_load_u8 v28, v76 offset:944
	ds_load_u8 v29, v76 offset:624
	ds_load_u8 v30, v76 offset:560
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v14, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v15, v35, v34, 0xc0c0004
	v_lshl_or_b32 v22, v4, 16, v3
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v7, v36, v7, 0xc0c0004
	v_lshl_or_b32 v21, v6, 16, v5
	v_lshl_or_b32 v81, v10, 16, v9
	v_lshl_or_b32 v80, v14, 16, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v79, v7, 16, v15
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v3, v11, v8, 0xc0c0004
	ds_load_u8 v4, v76 offset:752
	ds_load_u8 v5, v76 offset:688
	ds_load_u8 v6, v76 offset:368
	ds_load_u8 v7, v76 offset:304
	ds_load_u8 v8, v76 offset:496
	ds_load_u8 v9, v76 offset:432
	ds_load_u8 v11, v76 offset:112
	ds_load_u8 v13, v76 offset:240
	ds_load_u8 v14, v76 offset:176
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[65:68], v1 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v15, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v28, v2, 0xc0c0004
	v_perm_b32 v10, v25, v16, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v16, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v72, v2, 16, v15
	v_lshl_or_b32 v78, v10, 16, v3
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v1, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v9, v8, 0xc0c0004
	v_lshl_or_b32 v71, v1, 16, v16
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v2, v14, v13, 0xc0c0004
	v_mov_b32_e32 v16, s15
	v_lshl_or_b32 v70, v4, 16, v3
	v_dual_mov_b32 v15, s14 :: v_dual_mov_b32 v14, s13
	v_mov_b32_e32 v11, s10
	v_dual_mov_b32 v13, s12 :: v_dual_mov_b32 v12, s11
	v_dual_mov_b32 v9, s8 :: v_dual_mov_b32 v10, s9
	v_lshl_or_b32 v69, v2, 16, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[82:85], v[17:20], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[65:68], v[17:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[82:85], v[21:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[65:68], v[21:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[82:85], v[78:81], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[65:68], v[78:81], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[82:85], v[69:72], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[65:68], v[69:72], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:1856
	ds_load_u8 v66, v76 offset:1792
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v78, s4, v73
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:1984
	ds_load_u8 v67, v76 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:1600
	ds_load_u8 v68, v76 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:1728
	ds_load_u8 v69, v76 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:1344
	ds_load_u8 v66, v76 offset:1280
	v_lshl_or_b32 v67, v69, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:1472
	ds_load_u8 v69, v76 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v69, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:1088
	ds_load_u8 v69, v76 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v69, v65, 0xc0c0004
	ds_load_u8 v69, v76 offset:1216
	ds_load_u8 v70, v76 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v69, 16, v65
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[69:72], v78
	ds_load_b128 v[78:81], v78 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[69:72], v[65:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[78:81], v[65:68], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:1872
	ds_load_u8 v66, v76 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:2000
	ds_load_u8 v67, v76 offset:1936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:1616
	ds_load_u8 v68, v76 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:1744
	ds_load_u8 v82, v76 offset:1680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:1360
	ds_load_u8 v66, v76 offset:1296
	v_lshl_or_b32 v67, v82, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:1488
	ds_load_u8 v82, v76 offset:1424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v82, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:1104
	ds_load_u8 v82, v76 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v82, v65, 0xc0c0004
	ds_load_u8 v82, v76 offset:1232
	ds_load_u8 v83, v76 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v82, 16, v65
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[65:68], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[78:81], v[65:68], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:1888
	ds_load_u8 v66, v76 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:2016
	ds_load_u8 v67, v76 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:1632
	ds_load_u8 v68, v76 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:1760
	ds_load_u8 v82, v76 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:1376
	ds_load_u8 v66, v76 offset:1312
	v_lshl_or_b32 v67, v82, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:1504
	ds_load_u8 v82, v76 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v82, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:1120
	ds_load_u8 v82, v76 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v82, v65, 0xc0c0004
	ds_load_u8 v82, v76 offset:1248
	ds_load_u8 v83, v76 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v82, 16, v65
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[65:68], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[78:81], v[65:68], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:1904
	ds_load_u8 v66, v76 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v66, s34, v176
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v66, v66
	ds_load_u8 v67, v76 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:1648
	ds_load_u8 v68, v76 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:1776
	ds_load_u8 v82, v76 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:1392
	ds_load_u8 v66, v76 offset:1328
	v_lshl_or_b32 v67, v82, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:1520
	ds_load_u8 v82, v76 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v82, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:1136
	ds_load_u8 v82, v76 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v82, v65, 0xc0c0004
	ds_load_u8 v82, v76 offset:1264
	ds_load_u8 v83, v76 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v82, 16, v65
	v_wmma_i32_16x16x16_iu8 v[17:24], v[69:72], v[65:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[78:81], v[65:68], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:2880
	ds_load_u8 v66, v76 offset:2816
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v78, s4, v74
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:3008
	ds_load_u8 v67, v76 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:2624
	ds_load_u8 v68, v76 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:2752
	ds_load_u8 v69, v76 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:2368
	ds_load_u8 v66, v76 offset:2304
	v_lshl_or_b32 v67, v69, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:2496
	ds_load_u8 v69, v76 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v69, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:2112
	ds_load_u8 v69, v76 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v69, v65, 0xc0c0004
	ds_load_u8 v69, v76 offset:2240
	ds_load_u8 v70, v76 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v69, 16, v65
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[69:72], v78
	ds_load_b128 v[78:81], v78 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[69:72], v[65:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[78:81], v[65:68], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:2896
	ds_load_u8 v66, v76 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:3024
	ds_load_u8 v67, v76 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:2640
	ds_load_u8 v68, v76 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:2768
	ds_load_u8 v82, v76 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:2384
	ds_load_u8 v66, v76 offset:2320
	v_lshl_or_b32 v67, v82, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:2512
	ds_load_u8 v82, v76 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v82, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:2128
	ds_load_u8 v82, v76 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v82, v65, 0xc0c0004
	ds_load_u8 v82, v76 offset:2256
	ds_load_u8 v83, v76 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v82, 16, v65
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[65:68], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[78:81], v[65:68], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:2912
	ds_load_u8 v66, v76 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:3040
	ds_load_u8 v67, v76 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:2656
	ds_load_u8 v68, v76 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:2784
	ds_load_u8 v82, v76 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:2400
	ds_load_u8 v66, v76 offset:2336
	v_lshl_or_b32 v67, v82, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:2528
	ds_load_u8 v82, v76 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v82, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:2144
	ds_load_u8 v82, v76 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v82, v65, 0xc0c0004
	ds_load_u8 v82, v76 offset:2272
	ds_load_u8 v83, v76 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v82, 16, v65
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[65:68], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[78:81], v[65:68], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:2928
	ds_load_u8 v66, v76 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v66, s34, v177
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v66, v66
	ds_load_u8 v67, v76 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:2672
	ds_load_u8 v68, v76 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:2800
	ds_load_u8 v82, v76 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:2416
	ds_load_u8 v66, v76 offset:2352
	v_lshl_or_b32 v67, v82, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:2544
	ds_load_u8 v82, v76 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v82, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:2160
	ds_load_u8 v82, v76 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v82, v65, 0xc0c0004
	ds_load_u8 v82, v76 offset:2288
	ds_load_u8 v83, v76 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v82, 16, v65
	v_wmma_i32_16x16x16_iu8 v[17:24], v[69:72], v[65:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[78:81], v[65:68], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:3904
	ds_load_u8 v66, v76 offset:3840
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v78, s4, v75
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:4032
	ds_load_u8 v67, v76 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:3648
	ds_load_u8 v68, v76 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:3776
	ds_load_u8 v69, v76 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:3392
	ds_load_u8 v66, v76 offset:3328
	v_lshl_or_b32 v67, v69, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:3520
	ds_load_u8 v69, v76 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v69, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:3136
	ds_load_u8 v69, v76 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v69, v65, 0xc0c0004
	ds_load_u8 v69, v76 offset:3264
	ds_load_u8 v70, v76 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v69, 16, v65
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[69:72], v78
	ds_load_b128 v[78:81], v78 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[69:72], v[65:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[78:81], v[65:68], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:3920
	ds_load_u8 v66, v76 offset:3856
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v163, v163, v57
	v_add_f32_e32 v161, v161, v59
	v_add_f32_e32 v159, v159, v61
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v157, v157, v63 :: v_dual_add_f32 v140, v140, v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:4048
	ds_load_u8 v67, v76 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:3664
	ds_load_u8 v68, v76 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:3792
	ds_load_u8 v82, v76 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:3408
	ds_load_u8 v66, v76 offset:3344
	v_lshl_or_b32 v67, v82, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:3536
	ds_load_u8 v82, v76 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v82, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:3152
	ds_load_u8 v82, v76 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v82, v65, 0xc0c0004
	ds_load_u8 v82, v76 offset:3280
	ds_load_u8 v83, v76 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v82, 16, v65
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[65:68], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[78:81], v[65:68], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:3936
	ds_load_u8 v66, v76 offset:3872
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v170, v170, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v3
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v169, v169, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v4
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v168, v168, v2 :: v_dual_add_f32 v153, v153, v51
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v5
	v_cvt_f32_i32_e32 v56, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:4064
	ds_load_u8 v67, v76 offset:4000
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v167, v167, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v166, v166, v2 :: v_dual_add_f32 v151, v151, v53
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v7
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v162, v162, v58 :: v_dual_add_f32 v147, v147, v41
	v_dual_add_f32 v160, v160, v60 :: v_dual_add_f32 v145, v145, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v165, v165, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v8
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v158, v158, v62 :: v_dual_add_f32 v143, v143, v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:3680
	ds_load_u8 v68, v76 offset:3616
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v164, v164, v2 :: v_dual_add_f32 v149, v149, v55
	v_dual_add_f32 v156, v156, v64 :: v_dual_add_f32 v141, v141, v47
	v_dual_add_f32 v155, v155, v49 :: v_dual_add_f32 v154, v154, v50
	v_add_f32_e32 v139, v139, v48
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:3808
	ds_load_u8 v82, v76 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:3424
	ds_load_u8 v66, v76 offset:3360
	v_lshl_or_b32 v67, v82, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:3552
	ds_load_u8 v82, v76 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v82, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:3168
	ds_load_u8 v82, v76 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v82, v65, 0xc0c0004
	ds_load_u8 v82, v76 offset:3296
	ds_load_u8 v83, v76 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v82, 16, v65
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[65:68], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[78:81], v[65:68], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v65, v76 offset:3952
	ds_load_u8 v66, v76 offset:3888
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v3, v27
	v_cvt_f32_i32_e32 v4, v28
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v142, v142, v46
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v128, v128, v3 :: v_dual_add_f32 v127, v127, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v31
	v_cvt_f32_i32_e32 v4, v32
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v136, v136, v35
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v123, v123, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v36, v36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v66, s34, v178
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v66, v66
	ds_load_u8 v67, v76 offset:4016
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v152, v152, v52 :: v_dual_add_f32 v137, v137, v34
	v_dual_add_f32 v150, v150, v54 :: v_dual_add_f32 v135, v135, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v148, v148, v56 :: v_dual_add_f32 v133, v133, v38
	v_dual_add_f32 v146, v146, v42 :: v_dual_add_f32 v131, v131, v40
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v76 offset:3696
	ds_load_u8 v68, v76 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v76 offset:3824
	ds_load_u8 v82, v76 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v68, 0xc0c0004
	v_lshl_or_b32 v68, v66, 16, v65
	ds_load_u8 v65, v76 offset:3440
	ds_load_u8 v66, v76 offset:3376
	v_lshl_or_b32 v67, v82, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v76 offset:3568
	ds_load_u8 v82, v76 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v82, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v76 offset:3184
	ds_load_u8 v82, v76 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v82, v65, 0xc0c0004
	ds_load_u8 v82, v76 offset:3312
	ds_load_u8 v76, v76 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v76, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v76, 16, v65
	v_wmma_i32_16x16x16_iu8 v[17:24], v[69:72], v[65:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[78:81], v[65:68], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v6, v18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v134, v134, v37
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v4, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v121, v121, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v23
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v118, v118, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v4, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v126, v126, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v116, v116, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v124, v124, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v130, v130, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v26
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v144, v144, v44
	v_add_f32_e32 v113, v113, v4
	v_add_f32_e32 v119, v119, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v9
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v129, v129, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v30
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v138, v138, v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v4, v15
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v114, v114, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v3, v14
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v122, v122, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v132, v132, v39 :: v_dual_add_f32 v125, v125, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v111, v111, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_f32_e32 v117, v117, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v109, v109, v3 :: v_dual_add_f32 v108, v108, v4
	v_add_f32_e32 v112, v112, v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v5, v16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v120, v120, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v107, v107, v5
	v_add_f32_e32 v115, v115, v2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v2, v13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v110, v110, v2
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v179, s30, v106
	s_mov_b32 s4, 0
	v_add_nc_u32_e32 v177, s30, v177
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	ds_load_u8 v17, v179 offset:1856
	ds_load_u8 v18, v179 offset:1792
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s29, v75
	ds_load_b128 v[65:68], v1 offset:8192
	ds_load_b128 v[81:84], v1
	v_add_nc_u32_e32 v1, s29, v74
	ds_load_b128 v[69:72], v1 offset:8192
	ds_load_b128 v[85:88], v1
	v_add_nc_u32_e32 v1, s29, v73
	ds_load_b128 v[73:76], v1 offset:8192
	ds_load_b128 v[89:92], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v179 offset:1984
	ds_load_u8 v19, v179 offset:1920
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v1, s29, v77
	ds_load_b128 v[77:80], v1 offset:8192
	ds_load_b128 v[93:96], v1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	ds_load_u8 v1, v179 offset:832
	ds_load_u8 v2, v179 offset:768
	.loc	1 402 22                        ; generate_amdgcn.py:402:22
	v_add_nc_u32_e32 v178, s30, v178
	v_add_nc_u32_e32 v176, s30, v176
	v_add_nc_u32_e32 v58, s30, v175
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v179 offset:1600
	ds_load_u8 v18, v179 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v179 offset:960
	ds_load_u8 v3, v179 offset:896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v179 offset:1728
	ds_load_u8 v19, v179 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v2, 16, v1
	ds_load_u8 v1, v179 offset:576
	ds_load_u8 v2, v179 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v179 offset:1344
	ds_load_u8 v18, v179 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v179 offset:704
	ds_load_u8 v3, v179 offset:640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v179 offset:1472
	ds_load_u8 v19, v179 offset:1408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v2, 16, v1
	ds_load_u8 v1, v179 offset:320
	ds_load_u8 v2, v179 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v179 offset:1088
	ds_load_u8 v18, v179 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v179 offset:448
	ds_load_u8 v3, v179 offset:384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v179 offset:1216
	ds_load_u8 v19, v179 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v2, 16, v1
	ds_load_u8 v1, v179 offset:64
	ds_load_u8 v2, v179
	ds_load_u8 v42, v179 offset:16
	ds_load_u8 v41, v179 offset:32
	ds_load_u8 v57, v179 offset:48
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v29, v18, 16, v17
	ds_load_u8 v17, v179 offset:2880
	ds_load_u8 v18, v179 offset:2816
	ds_load_u8 v2, v179 offset:192
	ds_load_u8 v3, v179 offset:128
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v179 offset:3008
	ds_load_u8 v19, v179 offset:2944
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_wmma_i32_16x16x16_iu8 v[9:16], v[93:96], v[25:28], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[89:92], v[29:32], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v36, v18, 16, v17
	ds_load_u8 v17, v179 offset:2624
	ds_load_u8 v18, v179 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v179 offset:2752
	ds_load_u8 v19, v179 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v18, 16, v17
	ds_load_u8 v17, v179 offset:2368
	ds_load_u8 v18, v179 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v179 offset:2496
	ds_load_u8 v19, v179 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v18, 16, v17
	ds_load_u8 v17, v179 offset:2112
	ds_load_u8 v18, v179 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v179 offset:2240
	ds_load_u8 v19, v179 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v18, 16, v17
	ds_load_u8 v17, v179 offset:3904
	ds_load_u8 v18, v179 offset:3840
	v_wmma_i32_16x16x16_iu8 v[9:16], v[85:88], v[33:36], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v179 offset:4032
	ds_load_u8 v19, v179 offset:3968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v18, 16, v17
	ds_load_u8 v17, v179 offset:3648
	ds_load_u8 v18, v179 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v179 offset:3776
	ds_load_u8 v19, v179 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v18, 16, v17
	ds_load_u8 v17, v179 offset:3392
	ds_load_u8 v18, v179 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v179 offset:3520
	ds_load_u8 v19, v179 offset:3456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v18, 16, v17
	ds_load_u8 v17, v179 offset:3136
	ds_load_u8 v18, v179 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v179 offset:3264
	ds_load_u8 v19, v179 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v18, 16, v17
	v_wmma_i32_16x16x16_iu8 v[17:24], v[77:80], v[25:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v179 offset:848
	ds_load_u8 v26, v179 offset:784
	v_wmma_i32_16x16x16_iu8 v[9:16], v[81:84], v[37:40], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[73:76], v[29:32], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v9, v9
	v_wmma_i32_16x16x16_iu8 v[17:24], v[69:72], v[33:36], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v33, v179 offset:1872
	ds_load_u8 v34, v179 offset:1808
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_wmma_i32_16x16x16_iu8 v[17:24], v[65:68], v[37:40], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v179 offset:976
	ds_load_u8 v27, v179 offset:912
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v179 offset:2000
	ds_load_u8 v35, v179 offset:1936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v26, 16, v25
	ds_load_u8 v25, v179 offset:592
	ds_load_u8 v26, v179 offset:528
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_lshl_or_b32 v49, v34, 16, v33
	ds_load_u8 v33, v179 offset:1616
	ds_load_u8 v34, v179 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v179 offset:720
	ds_load_u8 v27, v179 offset:656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v179 offset:1744
	ds_load_u8 v35, v179 offset:1680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v26, 16, v25
	ds_load_u8 v25, v179 offset:336
	ds_load_u8 v26, v179 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_lshl_or_b32 v48, v34, 16, v33
	ds_load_u8 v33, v179 offset:1360
	ds_load_u8 v34, v179 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v179 offset:464
	ds_load_u8 v27, v179 offset:400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v179 offset:1488
	ds_load_u8 v35, v179 offset:1424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v26, 16, v25
	ds_load_u8 v25, v179 offset:80
	ds_load_u8 v26, v179 offset:208
	ds_load_u8 v27, v179 offset:144
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v34, 16, v33
	ds_load_u8 v33, v179 offset:1104
	ds_load_u8 v34, v179 offset:1040
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v25, v42, v25, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v26, 16, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v179 offset:1232
	ds_load_u8 v35, v179 offset:1168
	v_wmma_i32_16x16x16_iu8 v[25:32], v[93:96], v[42:45], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v34, 16, v33
	ds_load_u8 v33, v179 offset:2896
	ds_load_u8 v34, v179 offset:2832
	v_wmma_i32_16x16x16_iu8 v[25:32], v[89:92], v[46:49], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v179 offset:3024
	ds_load_u8 v35, v179 offset:2960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v34, 16, v33
	ds_load_u8 v33, v179 offset:2640
	ds_load_u8 v34, v179 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v179 offset:2768
	ds_load_u8 v35, v179 offset:2704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v34, 16, v33
	ds_load_u8 v33, v179 offset:2384
	ds_load_u8 v34, v179 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v179 offset:2512
	ds_load_u8 v35, v179 offset:2448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v34, 16, v33
	ds_load_u8 v33, v179 offset:2128
	ds_load_u8 v34, v179 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v179 offset:2256
	ds_load_u8 v35, v179 offset:2192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v34, 16, v33
	ds_load_u8 v33, v179 offset:3920
	ds_load_u8 v34, v179 offset:3856
	v_wmma_i32_16x16x16_iu8 v[25:32], v[85:88], v[50:53], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v179 offset:4048
	ds_load_u8 v35, v179 offset:3984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v34, 16, v33
	ds_load_u8 v33, v179 offset:3664
	ds_load_u8 v34, v179 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v179 offset:3792
	ds_load_u8 v35, v179 offset:3728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v34, 16, v33
	ds_load_u8 v33, v179 offset:3408
	ds_load_u8 v34, v179 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v179 offset:3536
	ds_load_u8 v35, v179 offset:3472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v34, 16, v33
	ds_load_u8 v33, v179 offset:3152
	ds_load_u8 v34, v179 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v179 offset:3280
	ds_load_u8 v35, v179 offset:3216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v34, 16, v33
	v_wmma_i32_16x16x16_iu8 v[33:40], v[77:80], v[42:45], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v42, v179 offset:864
	ds_load_u8 v43, v179 offset:800
	v_wmma_i32_16x16x16_iu8 v[25:32], v[81:84], v[59:62], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[73:76], v[46:49], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v25, v25
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[50:53], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v49, v179 offset:1888
	ds_load_u8 v50, v179 offset:1824
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_wmma_i32_16x16x16_iu8 v[33:40], v[65:68], v[59:62], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v179 offset:992
	ds_load_u8 v44, v179 offset:928
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v179 offset:2016
	ds_load_u8 v51, v179 offset:1952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v43, 16, v42
	ds_load_u8 v42, v179 offset:608
	ds_load_u8 v43, v179 offset:544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v100, v50, 16, v49
	ds_load_u8 v49, v179 offset:1632
	ds_load_u8 v50, v179 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v179 offset:736
	ds_load_u8 v44, v179 offset:672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v179 offset:1760
	ds_load_u8 v51, v179 offset:1696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v43, 16, v42
	ds_load_u8 v42, v179 offset:352
	ds_load_u8 v43, v179 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v99, v50, 16, v49
	ds_load_u8 v49, v179 offset:1376
	ds_load_u8 v50, v179 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v179 offset:480
	ds_load_u8 v44, v179 offset:416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v179 offset:1504
	ds_load_u8 v51, v179 offset:1440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v43, 16, v42
	ds_load_u8 v42, v179 offset:96
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v98, v50, 16, v49
	ds_load_u8 v49, v179 offset:1120
	ds_load_u8 v50, v179 offset:1056
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	ds_load_u8 v42, v179 offset:224
	ds_load_u8 v43, v179 offset:160
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v179 offset:1248
	ds_load_u8 v51, v179 offset:1184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v59, v42, 16, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[41:48], v[93:96], v[59:62], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v97, v50, 16, v49
	ds_load_u8 v49, v179 offset:2912
	ds_load_u8 v50, v179 offset:2848
	v_wmma_i32_16x16x16_iu8 v[41:48], v[89:92], v[97:100], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v179 offset:3040
	ds_load_u8 v51, v179 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v183, v50, 16, v49
	ds_load_u8 v49, v179 offset:2656
	ds_load_u8 v50, v179 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v179 offset:2784
	ds_load_u8 v51, v179 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v182, v50, 16, v49
	ds_load_u8 v49, v179 offset:2400
	ds_load_u8 v50, v179 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v179 offset:2528
	ds_load_u8 v51, v179 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v181, v50, 16, v49
	ds_load_u8 v49, v179 offset:2144
	ds_load_u8 v50, v179 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v179 offset:2272
	ds_load_u8 v51, v179 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v50, 16, v49
	ds_load_u8 v49, v179 offset:3936
	ds_load_u8 v50, v179 offset:3872
	v_wmma_i32_16x16x16_iu8 v[41:48], v[85:88], v[180:183], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v179 offset:4064
	ds_load_u8 v51, v179 offset:4000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v187, v50, 16, v49
	ds_load_u8 v49, v179 offset:3680
	ds_load_u8 v50, v179 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v179 offset:3808
	ds_load_u8 v51, v179 offset:3744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v186, v50, 16, v49
	ds_load_u8 v49, v179 offset:3424
	ds_load_u8 v50, v179 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v179 offset:3552
	ds_load_u8 v51, v179 offset:3488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v185, v50, 16, v49
	ds_load_u8 v49, v179 offset:3168
	ds_load_u8 v50, v179 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v179 offset:3296
	ds_load_u8 v51, v179 offset:3232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v184, v50, 16, v49
	v_wmma_i32_16x16x16_iu8 v[49:56], v[77:80], v[59:62], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v59, v179 offset:880
	ds_load_u8 v60, v179 offset:816
	v_wmma_i32_16x16x16_iu8 v[41:48], v[81:84], v[184:187], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[73:76], v[97:100], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v41, v41
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[180:183], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_wmma_i32_16x16x16_iu8 v[49:56], v[65:68], v[184:187], v[49:56] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v58, v58
	ds_load_u8 v60, v179 offset:944
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v60, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v58, 16, v59
	ds_load_u8 v58, v179 offset:624
	ds_load_u8 v59, v179 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v179 offset:752
	ds_load_u8 v60, v179 offset:688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v59, 16, v58
	ds_load_u8 v58, v179 offset:368
	ds_load_u8 v59, v179 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v179 offset:496
	ds_load_u8 v60, v179 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v59, 16, v58
	ds_load_u8 v58, v179 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v58, 0xc0c0004
	ds_load_u8 v58, v179 offset:240
	ds_load_u8 v59, v179 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v97, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[57:64], v[93:96], v[97:100], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v93, v179 offset:1904
	ds_load_u8 v94, v179 offset:1840
	v_wmma_i32_16x16x16_iu8 v[1:8], v[77:80], v[97:100], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v176
	ds_load_u8 v95, v179 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v94, 16, v93
	ds_load_u8 v93, v179 offset:1648
	ds_load_u8 v94, v179 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v179 offset:1776
	ds_load_u8 v95, v179 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v94, 16, v93
	ds_load_u8 v93, v179 offset:1392
	ds_load_u8 v94, v179 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v179 offset:1520
	ds_load_u8 v175, v179 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v175, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v94, 16, v93
	ds_load_u8 v93, v179 offset:1136
	ds_load_u8 v175, v179 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v175, v93, 0xc0c0004
	ds_load_u8 v175, v179 offset:1264
	ds_load_u8 v176, v179 offset:1200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v93, v175, 16, v93
	v_wmma_i32_16x16x16_iu8 v[57:64], v[89:92], v[93:96], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v89, v179 offset:2928
	ds_load_u8 v90, v179 offset:2864
	v_wmma_i32_16x16x16_iu8 v[1:8], v[73:76], v[93:96], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v177
	ds_load_u8 v91, v179 offset:2992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v90, 16, v89
	ds_load_u8 v89, v179 offset:2672
	ds_load_u8 v90, v179 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v179 offset:2800
	ds_load_u8 v91, v179 offset:2736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v90, 16, v89
	ds_load_u8 v89, v179 offset:2416
	ds_load_u8 v90, v179 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v179 offset:2544
	ds_load_u8 v175, v179 offset:2480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v175, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v179 offset:2160
	ds_load_u8 v175, v179 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v175, v89, 0xc0c0004
	ds_load_u8 v175, v179 offset:2288
	ds_load_u8 v176, v179 offset:2224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v175, 16, v89
	v_wmma_i32_16x16x16_iu8 v[57:64], v[85:88], v[89:92], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v85, v179 offset:3952
	ds_load_u8 v86, v179 offset:3888
	v_wmma_i32_16x16x16_iu8 v[1:8], v[69:72], v[89:92], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v178
	ds_load_u8 v87, v179 offset:4016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v86, 16, v85
	ds_load_u8 v85, v179 offset:3696
	ds_load_u8 v86, v179 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v179 offset:3824
	ds_load_u8 v87, v179 offset:3760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v87, v86, 16, v85
	ds_load_u8 v85, v179 offset:3440
	ds_load_u8 v86, v179 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v179 offset:3568
	ds_load_u8 v175, v179 offset:3504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v175, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v179 offset:3184
	ds_load_u8 v175, v179 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v175, v85, 0xc0c0004
	ds_load_u8 v175, v179 offset:3312
	ds_load_u8 v176, v179 offset:3248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v175, 16, v85
	v_wmma_i32_16x16x16_iu8 v[57:64], v[81:84], v[85:88], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[65:68], v[85:88], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_12:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v66, s27, v106
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	v_or_b32_e32 v1, s28, v0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s5, s17, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v9, v140, v9 :: v_dual_lshlrev_b32 v66, 1, v66
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s4, s16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v11, v169, v11 :: v_dual_lshlrev_b32 v70, 1, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v67, 32, v66
	v_or_b32_e32 v68, 64, v66
	v_or_b32_e32 v69, 0x60, v66
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v10, v170, v10 :: v_dual_add_f32 v13, v167, v13
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x3
	buffer_load_u16 v66, v66, s[4:7], 0 offen
	buffer_load_u16 v67, v67, s[4:7], 0 offen
	buffer_load_u16 v68, v68, s[4:7], 0 offen
	buffer_load_u16 v69, v69, s[4:7], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s5, s19, 0xffff
	s_mov_b32 s4, s18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v18, v162, v18 :: v_dual_add_f32 v21, v159, v21
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v70, v70, s[4:7], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v22, v158, v22 :: v_dual_add_f32 v25, v155, v25
	v_dual_add_f32 v64, v115, v64 :: v_dual_add_f32 v71, v113, v2
	v_dual_add_f32 v72, v112, v3 :: v_dual_add_f32 v73, v111, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v80, v170, v10, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v3, 5, v174
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v88, v162, v18, s2
	v_cndmask_b32_e64 v25, v155, v25, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v12, v168, v12 :: v_dual_add_f32 v15, v165, v15
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v78, v105, 1, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v14, v166, v14 :: v_dual_add_f32 v17, v163, v17
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v82, v168, v12, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v16, v164, v16 :: v_dual_add_f32 v19, v161, v19
	v_dual_add_f32 v74, v110, v5 :: v_dual_add_f32 v75, v109, v6
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v76, v108, v7 :: v_dual_add_f32 v77, v107, v8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v79, v140, v9, s2
	v_cndmask_b32_e64 v81, v169, v11, s2
	v_cndmask_b32_e64 v83, v167, v13, s2
	v_cndmask_b32_e64 v84, v166, v14, s2
	v_cndmask_b32_e64 v85, v165, v15, s2
	v_cndmask_b32_e64 v86, v164, v16, s2
	v_cndmask_b32_e64 v87, v163, v17, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v26, v154, v26 :: v_dual_add_f32 v29, v151, v29
	v_dual_add_f32 v30, v150, v30 :: v_dual_add_f32 v33, v147, v33
	v_dual_add_f32 v60, v119, v60 :: v_dual_add_f32 v63, v116, v63
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v89, v158, v22, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v20, v160, v20 :: v_dual_add_f32 v23, v157, v23
	v_dual_add_f32 v24, v156, v24 :: v_dual_add_f32 v27, v153, v27
	v_dual_add_f32 v28, v152, v28 :: v_dual_add_f32 v31, v149, v31
	v_dual_add_f32 v32, v148, v32 :: v_dual_add_f32 v35, v145, v35
	v_dual_add_f32 v34, v146, v34 :: v_dual_add_f32 v37, v143, v37
	v_dual_add_f32 v36, v144, v36 :: v_dual_add_f32 v39, v141, v39
	v_dual_add_f32 v38, v142, v38 :: v_dual_add_f32 v43, v136, v43
	v_dual_add_f32 v40, v139, v40 :: v_dual_add_f32 v41, v138, v41
	v_dual_add_f32 v42, v137, v42 :: v_dual_add_f32 v45, v134, v45
	v_dual_add_f32 v44, v135, v44 :: v_dual_add_f32 v47, v132, v47
	v_dual_add_f32 v46, v133, v46 :: v_dual_add_f32 v49, v130, v49
	v_dual_add_f32 v48, v131, v48 :: v_dual_add_f32 v51, v128, v51
	v_dual_add_f32 v50, v129, v50 :: v_dual_add_f32 v53, v126, v53
	v_dual_add_f32 v52, v127, v52 :: v_dual_add_f32 v55, v124, v55
	v_dual_add_f32 v54, v125, v54 :: v_dual_add_f32 v57, v122, v57
	v_dual_add_f32 v56, v123, v56 :: v_dual_add_f32 v59, v120, v59
	v_dual_add_f32 v58, v121, v58 :: v_dual_add_f32 v61, v118, v61
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v90, v154, v26, s2
	v_cndmask_b32_e64 v91, v150, v30, s2
	v_cndmask_b32_e64 v116, v116, v63, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v62, v117, v62 :: v_dual_add_f32 v65, v114, v65
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v157, v23, s2
	v_cndmask_b32_e64 v27, v153, v27, s2
	v_cndmask_b32_e64 v31, v149, v31, s2
	v_cndmask_b32_e64 v32, v148, v32, s2
	v_cndmask_b32_e64 v93, v145, v35, s2
	v_cndmask_b32_e64 v37, v143, v37, s2
	v_cndmask_b32_e64 v95, v141, v39, s2
	v_cndmask_b32_e64 v40, v139, v40, s2
	v_cndmask_b32_e64 v96, v137, v42, s2
	v_cndmask_b32_e64 v97, v136, v43, s2
	v_cndmask_b32_e64 v44, v135, v44, s2
	v_cndmask_b32_e64 v98, v133, v46, s2
	v_cndmask_b32_e64 v99, v132, v47, s2
	v_cndmask_b32_e64 v48, v131, v48, s2
	v_cndmask_b32_e64 v100, v129, v50, s2
	v_cndmask_b32_e64 v52, v127, v52, s2
	v_cndmask_b32_e64 v106, v125, v54, s2
	v_cndmask_b32_e64 v124, v124, v55, s2
	v_cndmask_b32_e64 v121, v121, v58, s2
	v_cndmask_b32_e64 v115, v115, v64, s2
	v_cndmask_b32_e64 v72, v112, v72, s2
	v_cndmask_b32_e64 v20, v160, v20, s2
	v_cndmask_b32_e64 v21, v159, v21, s2
	v_cndmask_b32_e64 v24, v156, v24, s2
	v_cndmask_b32_e64 v28, v152, v28, s2
	v_cndmask_b32_e64 v29, v151, v29, s2
	v_cndmask_b32_e64 v33, v147, v33, s2
	v_cndmask_b32_e64 v92, v146, v34, s2
	v_cndmask_b32_e64 v36, v144, v36, s2
	v_cndmask_b32_e64 v94, v142, v38, s2
	v_cndmask_b32_e64 v41, v138, v41, s2
	v_cndmask_b32_e64 v123, v123, v56, s2
	v_cndmask_b32_e64 v117, v117, v62, s2
	v_cndmask_b32_e64 v65, v114, v65, s2
	v_cndmask_b32_e64 v73, v111, v73, s2
	v_cndmask_b32_e64 v75, v109, v75, s2
	v_cndmask_b32_e64 v49, v130, v49, s2
	v_cndmask_b32_e64 v61, v118, v61, s2
	v_cndmask_b32_e64 v71, v113, v71, s2
	v_cndmask_b32_e64 v74, v110, v74, s2
	v_cndmask_b32_e64 v76, v108, v76, s2
	v_cndmask_b32_e64 v57, v122, v57, s2
	v_cndmask_b32_e64 v19, v161, v19, s2
	v_cndmask_b32_e64 v45, v134, v45, s2
	v_cndmask_b32_e64 v53, v126, v53, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s4, s27, s25
	s_mul_i32 s5, s25, 5
	s_add_i32 s23, s4, s25
	s_add_i32 s22, s4, s3
	s_add_i32 s21, s4, s26
	s_mul_i32 s8, s25, 6
	s_lshl2_add_u32 s20, s25, s4
	s_mul_i32 s9, s25, 7
	s_add_i32 s19, s4, s5
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s3, s7
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_add_i32 s18, s4, s8
	s_mul_i32 s10, s25, 9
	s_add_i32 s17, s4, s9
	s_mul_i32 s11, s25, 10
	s_lshl3_add_u32 s16, s25, s4
	s_mul_i32 s12, s25, 11
	s_add_i32 s15, s4, s10
	s_mul_i32 s60, s25, 12
	s_add_i32 s14, s4, s11
	s_mul_i32 s61, s25, 13
	s_add_i32 s13, s4, s12
	s_mul_i32 s62, s25, 14
	s_add_i32 s12, s4, s60
	s_mul_i32 s63, s25, 15
	s_add_i32 s11, s4, s61
	s_add_i32 s10, s4, s62
	s_mul_i32 s64, s25, 17
	s_add_i32 s9, s4, s63
	s_mul_i32 s28, s25, 18
	s_lshl4_add_u32 s8, s25, s4
	s_mul_i32 s30, s25, 19
	s_add_i32 s5, s4, s64
	s_mul_i32 s31, s25, 20
	s_add_i32 s88, s4, s28
	s_mul_i32 s36, s25, 21
	s_add_i32 s87, s4, s30
	s_mul_i32 s38, s25, 22
	s_add_i32 s86, s4, s31
	s_mul_i32 s40, s25, 23
	s_add_i32 s72, s4, s36
	s_mul_i32 s41, s25, 24
	s_add_i32 s71, s4, s38
	s_mul_i32 s42, s25, 25
	s_add_i32 s70, s4, s40
	s_mul_i32 s47, s25, 26
	s_add_i32 s69, s4, s41
	s_mul_i32 s48, s25, 27
	s_add_i32 s68, s4, s42
	s_mul_i32 s49, s25, 28
	s_add_i32 s67, s4, s47
	s_mul_i32 s50, s25, 29
	s_add_i32 s66, s4, s48
	s_mul_i32 s51, s25, 30
	s_add_i32 s65, s4, s49
	s_mul_i32 s52, s25, 31
	s_add_i32 s64, s4, s50
	s_lshl_b32 s54, s25, 5
	s_add_i32 s63, s4, s51
	s_mul_i32 s55, s25, 33
	s_add_i32 s62, s4, s52
	s_mul_i32 s73, s25, 34
	s_add_i32 s61, s4, s54
	s_mul_i32 s74, s25, 35
	s_add_i32 s60, s4, s55
	s_mul_i32 s75, s25, 36
	s_add_i32 s54, s4, s73
	s_mul_i32 s76, s25, 37
	s_add_i32 s51, s4, s74
	s_mul_i32 s77, s25, 38
	s_add_i32 s50, s4, s75
	s_mul_i32 s78, s25, 39
	s_add_i32 s49, s4, s76
	s_mul_i32 s79, s25, 40
	s_add_i32 s48, s4, s77
	s_mul_i32 s80, s25, 41
	s_add_i32 s42, s4, s78
	s_mul_i32 s81, s25, 42
	s_add_i32 s41, s4, s79
	s_mul_i32 s82, s25, 43
	s_add_i32 s40, s4, s80
	s_mul_i32 s83, s25, 44
	s_add_i32 s38, s4, s81
	s_mul_i32 s84, s25, 45
	s_add_i32 s36, s4, s82
	s_mul_i32 s85, s25, 46
	s_add_i32 s31, s4, s83
	s_mul_i32 s44, s25, 47
	s_add_i32 s30, s4, s84
	s_mul_i32 s45, s25, 48
	s_add_i32 s28, s4, s85
	s_mul_i32 s46, s25, 49
	s_add_i32 s55, s4, s44
	s_mul_i32 s37, s25, 50
	s_add_i32 s52, s4, s45
	s_mul_i32 s39, s25, 51
	s_add_i32 s45, s4, s46
	s_mul_i32 s43, s25, 52
	s_add_i32 s47, s4, s37
	s_mul_i32 s59, s25, 53
	s_add_i32 s46, s4, s39
	s_mul_i32 s33, s25, 54
	s_add_i32 s44, s4, s43
	s_mul_i32 s34, s25, 55
	s_add_i32 s43, s4, s59
	s_mul_i32 s35, s25, 56
	s_add_i32 s39, s4, s33
	s_mul_i32 s58, s25, 57
	s_add_i32 s37, s4, s34
	s_mul_i32 s27, s25, 58
	s_add_i32 s35, s4, s35
	s_mul_i32 s29, s25, 59
	s_add_i32 s33, s4, s58
	s_mul_i32 s56, s25, 60
	s_add_i32 s34, s4, s27
	s_mul_i32 s57, s25, 61
	s_add_i32 s29, s4, s29
	s_mul_i32 s24, s25, 62
	s_add_i32 s27, s4, s56
	s_mul_i32 s53, s25, 63
	s_add_i32 s25, s4, s57
	s_add_i32 s26, s4, s24
	s_add_i32 s24, s4, s53
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v18, 16, v66
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v2, 2, v105
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v105, v128, v51, s2
	v_cndmask_b32_e64 v66, v107, v77, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_add3_u32 v2, 0, v2, v3
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v70
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v70, v120, v59, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v2, v104, 1, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v104, v119, v60, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_mov_b32 s2, s6
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v78
	ds_load_b128 v[6:9], v78 offset:16
	ds_load_b128 v[10:13], v78 offset:512
	ds_load_b128 v[14:17], v78 offset:528
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v22, 16, v67
	v_lshlrev_b32_e32 v26, 16, v68
	v_lshlrev_b32_e32 v30, 16, v69
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v63, v2, v22
	v_mul_f32_e32 v35, v3, v18
	v_mul_f32_e32 v64, v3, v22
	v_mul_f32_e32 v120, v3, v26
	v_mul_f32_e32 v139, v3, v30
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v3, v25, v63
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v39, v5, v18
	v_mul_f32_e32 v43, v7, v18
	v_mul_f32_e32 v47, v9, v18
	v_mul_f32_e32 v67, v4, v22
	v_mul_f32_e32 v78, v8, v22
	v_mul_f32_e32 v107, v9, v22
	v_mul_f32_e32 v136, v16, v26
	v_mul_f32_e32 v135, v15, v26
	v_mul_f32_e32 v133, v13, v26
	v_mul_f32_e32 v129, v9, v26
	v_mul_f32_e32 v125, v5, v26
	v_mul_f32_e32 v137, v17, v26
	v_mul_f32_e32 v153, v17, v30
	v_mul_f32_e32 v132, v12, v26
	v_mul_f32_e32 v34, v2, v18
	v_mul_f32_e32 v38, v4, v18
	v_mul_f32_e32 v51, v11, v18
	v_mul_f32_e32 v55, v13, v18
	v_mul_f32_e32 v131, v11, v26
	v_mul_f32_e32 v138, v2, v30
	v_mul_f32_e32 v140, v4, v30
	v_mul_f32_e32 v141, v5, v30
	v_mul_f32_e32 v142, v6, v30
	v_mul_f32_e32 v143, v7, v30
	v_mul_f32_e32 v144, v8, v30
	v_mul_f32_e32 v145, v9, v30
	v_mul_f32_e32 v114, v16, v22
	v_mul_f32_e32 v146, v10, v30
	v_mul_f32_e32 v147, v11, v30
	v_mul_f32_e32 v148, v12, v30
	v_mul_f32_e32 v149, v13, v30
	v_mul_f32_e32 v150, v14, v30
	v_mul_f32_e32 v151, v15, v30
	v_mul_f32_e32 v128, v8, v26
	v_mul_f32_e32 v119, v2, v26
	v_mul_f32_e32 v109, v11, v22
	v_mul_f32_e32 v152, v16, v30
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v30, v86, v47
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v69, v6, v22
	v_dual_mul_f32 v46, v8, v18 :: v_dual_mul_f32 v11, v27, v67
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v8, v96, v120
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v56, v14, v18 :: v_dual_mul_f32 v9, v121, v139
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v27, v31, v78
	v_mul_f32_e32 v31, v32, v107
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v59, v16, v18
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v32, v48, v129 :: v_dual_mul_f32 v111, v13, v22
	v_mul_f32_e32 v16, v44, v125
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v60, v17, v18
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v44, v105, v132 :: v_dual_mul_f32 v127, v7, v26
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v67, v172, 1, v0
	v_lshlrev_b32_e32 v0, 2, v0
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v112, v14, v22 :: v_dual_mul_f32 v25, v117, v143
	v_dual_mul_f32 v110, v12, v22 :: v_dual_mul_f32 v13, v70, v140
	v_mul_f32_e32 v113, v15, v22
	v_mul_f32_e32 v118, v17, v22
	v_dual_mul_f32 v130, v10, v26 :: v_dual_mul_f32 v47, v36, v111
	v_dual_mul_f32 v77, v7, v22 :: v_dual_mul_f32 v62, v24, v60
	v_mul_f32_e32 v50, v10, v18
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v7, v90, v64
	v_mul_f32_e32 v24, v98, v127
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v68, v5, v22
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v64, v123, v137
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v108, v10, v22 :: v_dual_mul_f32 v17, v104, v141
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v10, v81, v38
	v_mul_f32_e32 v22, v84, v43
	v_dual_mul_f32 v38, v88, v51 :: v_dual_mul_f32 v51, v37, v112
	v_mul_f32_e32 v37, v65, v146
	v_dual_mul_f32 v65, v66, v153 :: v_dual_and_b32 v66, 0xcf0, v102
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v122, v4, v26
	v_mul_f32_e32 v42, v6, v18
	v_mul_f32_e32 v54, v12, v18
	v_mul_f32_e32 v126, v6, v26
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v66, v67, v66
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v4, v41, v119
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v58, v15, v18
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v2, v79, v34
	v_mul_f32_e32 v5, v57, v138
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v66, v173, 13, v66
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v41, v71, v147 :: v_dual_mul_f32 v12, v97, v122
	.loc	1 436 16 is_stmt 0              ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v134, v14, v26
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v6, v80, v35 :: v_dual_add_nc_u32 v67, 0, v66
	v_dual_mul_f32 v14, v82, v39 :: v_dual_mul_f32 v15, v28, v68
	v_dual_mul_f32 v18, v83, v42 :: v_dual_mul_f32 v35, v33, v108
	v_dual_mul_f32 v42, v19, v54 :: v_dual_mul_f32 v19, v29, v69
	v_mul_f32_e32 v26, v85, v46
	v_mul_f32_e32 v46, v20, v55
	v_dual_mul_f32 v39, v92, v109 :: v_dual_mul_f32 v54, v89, v58
	v_mul_f32_e32 v58, v23, v59
	v_mul_f32_e32 v23, v91, v77
	v_mul_f32_e32 v34, v87, v50
	v_mul_f32_e32 v50, v21, v56
	v_mul_f32_e32 v21, v61, v142
	v_dual_mul_f32 v61, v76, v152 :: v_dual_mul_f32 v36, v49, v130
	v_mul_f32_e32 v49, v73, v149
	v_dual_mul_f32 v20, v45, v126 :: v_dual_mul_f32 v29, v116, v144
	v_mul_f32_e32 v57, v75, v151
	v_dual_mul_f32 v28, v99, v128 :: v_dual_mul_f32 v43, v93, v110
	v_mul_f32_e32 v45, v72, v148
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	ds_store_b128 v67, v[2:5]
	ds_store_b128 v67, v[10:13] offset:256
	ds_store_b128 v67, v[18:21] offset:512
	ds_store_b128 v67, v[26:29] offset:768
	ds_store_b128 v67, v[34:37] offset:4096
	ds_store_b128 v67, v[42:45] offset:4352
	v_and_b32_e32 v2, 0x1c00, v171
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v60, v124, v136
	v_mul_f32_e32 v56, v106, v135
	v_mul_f32_e32 v48, v52, v133
	v_mul_f32_e32 v52, v53, v134
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_or_b32 v2, 0x300, v103, v2
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v53, v74, v150
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v3, v66, 32, 0
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v33, v115, v145
	v_mul_f32_e32 v59, v95, v114
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_or3_b32 v0, v2, v0, v101
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v63, v40, v118
	v_dual_mul_f32 v40, v100, v131 :: v_dual_mul_f32 v55, v94, v113
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	ds_store_b128 v67, v[50:53] offset:4608
	ds_store_b128 v67, v[58:61] offset:4864
	ds_store_b128 v3, v[6:9]
	ds_store_b128 v3, v[14:17] offset:256
	ds_store_b128 v3, v[22:25] offset:512
	ds_store_b128 v3, v[30:33] offset:768
	v_add_nc_u32_e32 v6, 0, v0
	v_xad_u32 v14, 0x2010, v0, 0
	v_xad_u32 v30, 0x6030, v0, 0
	v_xad_u32 v22, 0x4020, v0, 0
	ds_store_b128 v3, v[38:41] offset:4096
	ds_store_b128 v3, v[46:49] offset:4352
	ds_store_b128 v3, v[54:57] offset:4608
	ds_store_b128 v3, v[62:65] offset:4864
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
	v_add_lshl_u32 v66, s4, v1, 2
	ds_load_b128 v[62:65], v0 offset:128
	v_add_lshl_u32 v67, s23, v1, 2
	v_add_lshl_u32 v68, s22, v1, 2
	v_add_lshl_u32 v69, s21, v1, 2
	v_add_lshl_u32 v0, s20, v1, 2
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v2, v66, s[0:3], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v10, v67, s[0:3], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v18, v68, s[0:3], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v26, v69, s[0:3], 0 offen
	v_add_lshl_u32 v2, s19, v1, 2
	v_add_lshl_u32 v10, s18, v1, 2
	v_add_lshl_u32 v18, s17, v1, 2
	v_add_lshl_u32 v26, s16, v1, 2
	s_waitcnt lgkmcnt(2)
	s_clause 0x4
	buffer_atomic_add_f32 v34, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v42, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v50, v10, s[0:3], 0 offen
	buffer_atomic_add_f32 v58, v18, s[0:3], 0 offen
	buffer_atomic_add_f32 v6, v26, s[0:3], 0 offen
	v_add_lshl_u32 v0, s15, v1, 2
	v_add_lshl_u32 v2, s14, v1, 2
	v_add_lshl_u32 v6, s13, v1, 2
	v_add_lshl_u32 v10, s12, v1, 2
	v_add_lshl_u32 v18, s11, v1, 2
	s_clause 0x2
	buffer_atomic_add_f32 v14, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v22, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v30, v6, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v38, v10, s[0:3], 0 offen
	buffer_atomic_add_f32 v46, v18, s[0:3], 0 offen
	v_add_lshl_u32 v0, s10, v1, 2
	v_add_lshl_u32 v2, s9, v1, 2
	v_add_lshl_u32 v6, s8, v1, 2
	v_add_lshl_u32 v10, s5, v1, 2
	v_add_lshl_u32 v14, s88, v1, 2
	buffer_atomic_add_f32 v54, v0, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v62, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v3, v6, s[0:3], 0 offen
	buffer_atomic_add_f32 v11, v10, s[0:3], 0 offen
	buffer_atomic_add_f32 v19, v14, s[0:3], 0 offen
	v_add_lshl_u32 v0, s87, v1, 2
	v_add_lshl_u32 v2, s86, v1, 2
	v_add_lshl_u32 v3, s72, v1, 2
	v_add_lshl_u32 v6, s71, v1, 2
	v_add_lshl_u32 v10, s70, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v27, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v35, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v43, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v51, v6, s[0:3], 0 offen
	buffer_atomic_add_f32 v59, v10, s[0:3], 0 offen
	v_add_lshl_u32 v0, s69, v1, 2
	v_add_lshl_u32 v2, s68, v1, 2
	v_add_lshl_u32 v3, s67, v1, 2
	v_add_lshl_u32 v6, s66, v1, 2
	v_add_lshl_u32 v10, s65, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v7, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v15, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v23, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v31, v6, s[0:3], 0 offen
	buffer_atomic_add_f32 v39, v10, s[0:3], 0 offen
	v_add_lshl_u32 v0, s64, v1, 2
	v_add_lshl_u32 v2, s63, v1, 2
	v_add_lshl_u32 v3, s62, v1, 2
	v_add_lshl_u32 v6, s61, v1, 2
	v_add_lshl_u32 v7, s60, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v47, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v55, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v63, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v4, v6, s[0:3], 0 offen
	buffer_atomic_add_f32 v12, v7, s[0:3], 0 offen
	v_add_lshl_u32 v0, s54, v1, 2
	v_add_lshl_u32 v2, s51, v1, 2
	v_add_lshl_u32 v3, s50, v1, 2
	v_add_lshl_u32 v4, s49, v1, 2
	v_add_lshl_u32 v6, s48, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v20, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v28, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v36, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v44, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v52, v6, s[0:3], 0 offen
	v_add_lshl_u32 v0, s42, v1, 2
	v_add_lshl_u32 v2, s41, v1, 2
	v_add_lshl_u32 v3, s40, v1, 2
	v_add_lshl_u32 v4, s38, v1, 2
	v_add_lshl_u32 v6, s36, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v60, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v8, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v16, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v24, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v32, v6, s[0:3], 0 offen
	v_add_lshl_u32 v0, s31, v1, 2
	v_add_lshl_u32 v2, s30, v1, 2
	v_add_lshl_u32 v3, s28, v1, 2
	v_add_lshl_u32 v4, s55, v1, 2
	v_add_lshl_u32 v6, s52, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v40, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v48, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v56, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v64, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v5, v6, s[0:3], 0 offen
	v_add_lshl_u32 v0, s45, v1, 2
	v_add_lshl_u32 v2, s47, v1, 2
	v_add_lshl_u32 v3, s46, v1, 2
	v_add_lshl_u32 v4, s44, v1, 2
	v_add_lshl_u32 v5, s43, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v13, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v21, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v29, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v37, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v45, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s39, v1, 2
	v_add_lshl_u32 v2, s37, v1, 2
	v_add_lshl_u32 v3, s35, v1, 2
	v_add_lshl_u32 v4, s33, v1, 2
	v_add_lshl_u32 v5, s34, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v53, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v61, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v9, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v17, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v25, v5, s[0:3], 0 offen
	v_add_lshl_u32 v0, s29, v1, 2
	v_add_lshl_u32 v2, s27, v1, 2
	v_add_lshl_u32 v3, s25, v1, 2
	v_add_lshl_u32 v4, s26, v1, 2
	v_add_lshl_u32 v1, s24, v1, 2
	s_clause 0x4
	buffer_atomic_add_f32 v33, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v41, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v49, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v57, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v65, v1, s[0:3], 0 offen
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
		.amdhsa_next_free_sgpr 89
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_vgpr, 191
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.numbered_sgpr, 89
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 24416
; TotalNumSgprs: 91
; NumVgprs: 191
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 91
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     91
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     191
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
