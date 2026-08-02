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
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_load_b32 s31, s[0:1], 0x38
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v13, 0xf0, v0
	v_lshrrev_b32_e32 v2, 2, v0
	v_lshlrev_b32_e32 v10, 4, v0
	v_and_b32_e32 v14, 15, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v12, 14, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v83, 2, v13
	v_lshlrev_b32_e32 v92, 5, v0
	v_and_b32_e32 v9, 48, v10
	v_and_b32_e32 v90, 8, v0
	v_and_b32_e32 v91, 32, v0
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
	s_mul_i32 s24, s25, 3
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b64 s[20:21], s[14:15]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
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
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v1, s31, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v2, s25, v83
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v84, v14, 4, v2
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v85, s24, v84
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_hi_u32 s4, s9, s10
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_lshl_b32 s33, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s31, 0x7f
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s33, v9
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s7, s3, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s28, s3, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s25, s33
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s3, s2, s6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s33, v83
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s27, s3, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s3, s27, s31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s30, -1, 0
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v86, v1, v9, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s28, s4
	s_lshl_b32 s26, s25, 1
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s4, v84
	v_add_nc_u32_e32 v87, s26, v84
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s31, v3
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v2, s33, v86
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s30
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s25, v1
	v_add_nc_u32_e32 v5, s4, v87
	v_add_nc_u32_e32 v3, s4, v85
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s30
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0xff
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v8, 0x80000000, v4 :: v_dual_cndmask_b32 v11, 0x80000000, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_addk_i32 s33, 0x80
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[4:7], v2, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[15:18], v1, s[20:23], 0 offen
	buffer_load_b128 v[19:22], v8, s[20:23], 0 offen
	buffer_load_b128 v[23:26], v11, s[20:23], 0 offen
	buffer_load_b128 v[27:30], v3, s[20:23], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s33, v9
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s3, s25, 7
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s33, v83
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s4, s3
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v3, s33, v86
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v8, s4, v84
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s31, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s4, v87
	v_add_nc_u32_e32 v2, s4, v85
	v_add_nc_u32_e32 v11, s25, v8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_mov_b32 s4, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s2
	s_cmpk_gt_i32 s5, 0x17f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[31:34], v3, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[35:38], v8, s[20:23], 0 offen
	buffer_load_b128 v[39:42], v11, s[20:23], 0 offen
	buffer_load_b128 v[43:46], v1, s[20:23], 0 offen
	buffer_load_b128 v[47:50], v2, s[20:23], 0 offen
	v_bfe_i32 v1, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v2, 1, v0
	v_lshlrev_b32_e32 v3, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v1, 0x420, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v2, 48, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v1, v1, v83
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v93, v10, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v94, v12, 10, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v1, 0, v93
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v95, 0x90, v94
	v_xor_b32_e32 v96, 0x120, v94
	v_xor_b32_e32 v97, 0x1b0, v94
	v_xor_b32_e32 v98, 0x210, v94
	v_add_nc_u32_e32 v2, 0, v94
	v_xor_b32_e32 v99, 0x330, v94
	v_xor_b32_e32 v100, 0x3a0, v94
	v_add_nc_u32_e32 v8, 0, v95
	v_add_nc_u32_e32 v11, 0, v96
	v_add_nc_u32_e32 v51, 0, v97
	v_add_nc_u32_e32 v52, 0, v98
	v_add_nc_u32_e32 v53, 0, v99
	v_add_nc_u32_e32 v54, 0, v100
	v_add_nc_u32_e32 v55, 0x4000, v2
	v_add_nc_u32_e32 v56, 0x4000, v8
	v_add_nc_u32_e32 v57, 0x4000, v11
	v_add_nc_u32_e32 v58, 0x4000, v51
	v_add_nc_u32_e32 v59, 0x4000, v52
	v_add_nc_u32_e32 v60, 0x4000, v53
	v_add_nc_u32_e32 v61, 0x4000, v54
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(9)
	ds_store_b128 v1, v[4:7] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	v_perm_b32 v4, v19, v15, 0x4000501
	v_perm_b32 v6, v19, v15, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v5, v27, v23, 0x4000501
	v_perm_b32 v7, v27, v23, 0x6020703
	v_perm_b32 v15, v20, v16, 0x4000501
	v_perm_b32 v19, v28, v24, 0x4000501
	v_perm_b32 v16, v20, v16, 0x6020703
	v_perm_b32 v20, v28, v24, 0x6020703
	v_perm_b32 v23, v21, v17, 0x4000501
	v_perm_b32 v24, v29, v25, 0x4000501
	v_perm_b32 v17, v21, v17, 0x6020703
	v_perm_b32 v21, v29, v25, 0x6020703
	v_perm_b32 v25, v22, v18, 0x4000501
	v_perm_b32 v27, v30, v26, 0x4000501
	v_perm_b32 v18, v22, v18, 0x6020703
	v_perm_b32 v22, v30, v26, 0x6020703
	v_perm_b32 v26, v5, v4, 0x7060302
	v_perm_b32 v4, v5, v4, 0x5040100
	v_perm_b32 v5, v7, v6, 0x7060302
	v_perm_b32 v6, v7, v6, 0x5040100
	v_perm_b32 v7, v19, v15, 0x7060302
	v_perm_b32 v15, v19, v15, 0x5040100
	v_perm_b32 v19, v20, v16, 0x7060302
	v_perm_b32 v16, v20, v16, 0x5040100
	v_perm_b32 v20, v24, v23, 0x7060302
	v_perm_b32 v23, v24, v23, 0x5040100
	v_perm_b32 v24, v21, v17, 0x7060302
	v_perm_b32 v17, v21, v17, 0x5040100
	v_perm_b32 v21, v27, v25, 0x7060302
	v_perm_b32 v25, v27, v25, 0x5040100
	v_perm_b32 v27, v22, v18, 0x7060302
	v_perm_b32 v18, v22, v18, 0x5040100
	ds_store_2addr_b32 v2, v26, v4 offset1:16
	ds_store_2addr_b32 v8, v5, v6 offset1:16
	ds_store_2addr_b32 v11, v7, v15 offset1:16
	ds_store_2addr_b32 v51, v19, v16 offset1:16
	ds_store_2addr_b32 v52, v20, v23 offset1:16
	ds_store_2addr_b32 v2, v24, v17 offset0:160 offset1:176
	ds_store_2addr_b32 v53, v21, v25 offset1:16
	ds_store_2addr_b32 v54, v27, v18 offset1:16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v1, v[31:34] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v1, v39, v35, 0x4000501
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v47, v43, 0x4000501
	v_perm_b32 v4, v39, v35, 0x6020703
	v_perm_b32 v5, v47, v43, 0x6020703
	v_perm_b32 v6, v40, v36, 0x4000501
	v_perm_b32 v7, v48, v44, 0x4000501
	v_perm_b32 v8, v40, v36, 0x6020703
	v_perm_b32 v11, v48, v44, 0x6020703
	v_perm_b32 v15, v41, v37, 0x4000501
	v_perm_b32 v16, v49, v45, 0x4000501
	v_perm_b32 v17, v41, v37, 0x6020703
	v_perm_b32 v18, v49, v45, 0x6020703
	v_perm_b32 v19, v42, v38, 0x4000501
	v_perm_b32 v20, v50, v46, 0x4000501
	v_perm_b32 v21, v42, v38, 0x6020703
	v_perm_b32 v22, v50, v46, 0x6020703
	v_perm_b32 v23, v2, v1, 0x7060302
	v_perm_b32 v1, v2, v1, 0x5040100
	v_perm_b32 v2, v5, v4, 0x7060302
	v_perm_b32 v4, v5, v4, 0x5040100
	v_perm_b32 v5, v7, v6, 0x7060302
	v_perm_b32 v6, v7, v6, 0x5040100
	v_perm_b32 v7, v11, v8, 0x7060302
	v_perm_b32 v8, v11, v8, 0x5040100
	v_perm_b32 v11, v16, v15, 0x7060302
	v_perm_b32 v15, v16, v15, 0x5040100
	v_perm_b32 v16, v18, v17, 0x7060302
	v_perm_b32 v17, v18, v17, 0x5040100
	v_perm_b32 v18, v20, v19, 0x7060302
	v_perm_b32 v19, v20, v19, 0x5040100
	v_perm_b32 v20, v22, v21, 0x7060302
	v_perm_b32 v21, v22, v21, 0x5040100
	ds_store_2addr_b32 v55, v23, v1 offset1:16
	ds_store_2addr_b32 v56, v2, v4 offset1:16
	ds_store_2addr_b32 v57, v5, v6 offset1:16
	ds_store_2addr_b32 v58, v7, v8 offset1:16
	ds_store_2addr_b32 v59, v11, v15 offset1:16
	ds_store_2addr_b32 v55, v16, v17 offset0:160 offset1:176
	ds_store_2addr_b32 v60, v18, v19 offset1:16
	ds_store_2addr_b32 v61, v20, v21 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v88, 48, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v1, 5, v0
	v_and_b32_e32 v5, 8, v0
	v_and_b32_e32 v2, 32, v0
	s_mov_b32 s3, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v79, v14, 6, v88
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v89, 0x1800, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v80, 16, v79
	v_xor_b32_e32 v81, 32, v79
	v_xor_b32_e32 v82, 48, v79
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr2
.LBB0_3:                                ; %Flow69
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	v_lshlrev_b32_e32 v11, 6, v0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v1, v0, 3, 1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s34, s5, 7
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v88, 48, v3
	v_and_b32_e32 v1, 0x210, v1
	v_and_b32_e32 v2, 0x1c0, v11
	v_and_b32_e32 v89, 0x1800, v92
	v_bfe_i32 v3, v0, 5, 1
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v101, s25, v84
	v_xor_b32_e32 v1, v1, v88
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v3, 0x420, v3
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_or3_b32 v1, v2, v1, v89
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_mov_b32_e32 v70, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v102, v1, v3
	v_mov_b32_e32 v1, s4
	v_lshl_or_b32 v79, v14, 6, v88
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_xor_b32_e32 v103, 16, v102
	v_xor_b32_e32 v104, 32, v102
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v80, 16, v79
	v_xor_b32_e32 v81, 32, v79
	v_xor_b32_e32 v82, 48, v79
	v_xor_b32_e32 v105, 48, v102
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_mov_b32_e32 v8, s11
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v15, 0
	s_addk_i32 s33, 0x80
	s_add_i32 s36, 0, 0x8000
	s_add_i32 s29, 0, 0x9000
	s_add_i32 s3, 0, 0x4000
	s_add_i32 s34, s34, -3
	s_mov_b32 s35, 1
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s6, s5, 7
	s_mov_b32 s7, s4
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s4, s33, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v114, s7, v102
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v106, s4, v9
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v107, s4, v86
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v182, s36, v79
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v115, s7, v103
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v186, s36, v80
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v106
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v106, 0x80000000, v107, vcc_lo
	buffer_load_b128 v[170:173], v106, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[174:177], v114 offset:8192
	ds_load_b128 v[178:181], v115 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[122:125], v182
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[162:165], v114
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[126:129], v186
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[166:169], v115
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[138:141], v182 offset:1024
	ds_load_b128 v[142:145], v186 offset:1024
	ds_load_b128 v[154:157], v182 offset:2048
	ds_load_b128 v[158:161], v186 offset:2048
	ds_load_b128 v[182:185], v182 offset:3072
	ds_load_b128 v[186:189], v186 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[162:165], v[122:125], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[174:177], v[122:125], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[174:177], v[138:141], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[166:169], v[126:129], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[178:181], v[126:129], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[162:165], v[138:141], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[178:181], v[142:145], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[146:153], v[174:177], v[154:157], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[166:169], v[142:145], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[162:165], v[154:157], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[146:153], v[178:181], v[158:161], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[166:169], v[158:161], v[138:145] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[154:161], v[162:165], v[182:185], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[154:161], v[166:169], v[186:189], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[162:169], v[174:177], v[182:185], v[1:8] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v182, s7, v104
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[162:169], v[178:181], v[186:189], v[162:169] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v186, s36, v81
	ds_load_b128 v[174:177], v186
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[178:181], v182
	ds_load_b128 v[182:185], v182 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[178:181], v[174:177], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[182:185], v[174:177], v[114:121] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v186 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[178:181], v[174:177], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[182:185], v[174:177], v[130:137] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v186 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[138:145], v[178:181], v[174:177], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[182:185], v[174:177], v[146:153] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v186 offset:3072
	v_add_nc_u32_e32 v186, s36, v82
	s_mov_b32 s36, s29
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[162:169], v[182:185], v[174:177], v[162:169] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v182, s7, v105
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[154:161], v[178:181], v[174:177], v[154:161] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v186
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[178:181], v182
	ds_load_b128 v[182:185], v182 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[178:181], v[174:177], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[182:185], v[174:177], v[114:121] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v119, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v65, v65, v120
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v186 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v121, v121
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v69, v69, v116
	v_dual_add_f32 v67, v67, v118 :: v_dual_add_f32 v66, v66, v119
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[178:181], v[174:177], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[182:185], v[174:177], v[130:137] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v186 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v132, v132
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v59, v59, v126
	v_add_f32_e32 v61, v61, v124
	v_add_f32_e32 v55, v55, v130
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v134, v134
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v57, v57, v128
	v_add_f32_e32 v53, v53, v132
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v51, v51, v134
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v127, v127
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[138:145], v[178:181], v[174:177], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[182:185], v[174:177], v[146:153] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v186 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[154:161], v[178:181], v[174:177], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[162:169], v[182:185], v[174:177], v[162:169] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v176, v108
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v108, s4, v83
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s4, s25
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v177, v109
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s4, s28
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v179, v111
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v108
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v108, s4, v84
	v_add_nc_u32_e32 v109, s4, v101
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v180, v112
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v74, v74, v179
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v178, v110
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v108, 0x80000000, v108, vcc_lo
	v_cndmask_b32_e32 v112, 0x80000000, v109, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v181, v113
	v_cvt_f32_i32_e32 v182, v114
	v_cvt_f32_i32_e32 v183, v115
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[108:111], v108, s[20:23], 0 offen
	buffer_load_b128 v[112:115], v112, s[20:23], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v174, v106
	v_cvt_f32_i32_e32 v175, v107
	v_cvt_f32_i32_e32 v107, v168
	v_cvt_f32_i32_e32 v106, v169
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v70, v70, v183
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v167, v167
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v46, v46, v174
	v_dual_add_f32 v78, v78, v175 :: v_dual_add_f32 v77, v77, v176
	v_add_f32_e32 v75, v75, v178
	v_dual_add_f32 v73, v73, v180 :: v_dual_add_f32 v72, v72, v181
	v_add_f32_e32 v41, v41, v143
	v_dual_add_f32 v71, v71, v182 :: v_dual_add_f32 v68, v68, v117
	v_dual_add_f32 v37, v37, v147 :: v_dual_add_f32 v64, v64, v121
	v_add_f32_e32 v33, v33, v151
	v_dual_add_f32 v63, v63, v122 :: v_dual_add_f32 v62, v62, v123
	v_add_f32_e32 v43, v43, v141
	v_dual_add_f32 v60, v60, v125 :: v_dual_add_f32 v29, v29, v155
	v_dual_add_f32 v58, v58, v127 :: v_dual_add_f32 v39, v39, v145
	v_dual_add_f32 v56, v56, v129 :: v_dual_add_f32 v25, v25, v159
	v_dual_add_f32 v54, v54, v131 :: v_dual_add_f32 v35, v35, v149
	v_dual_add_f32 v52, v52, v133 :: v_dual_add_f32 v21, v21, v163
	v_dual_add_f32 v50, v50, v135 :: v_dual_add_f32 v31, v31, v153
	v_dual_add_f32 v44, v44, v140 :: v_dual_add_f32 v27, v27, v157
	v_dual_add_f32 v42, v42, v142 :: v_dual_add_f32 v23, v23, v161
	v_dual_add_f32 v40, v40, v144 :: v_dual_add_f32 v19, v19, v165
	v_dual_add_f32 v38, v38, v146 :: v_dual_add_f32 v17, v17, v167
	v_dual_add_f32 v36, v36, v148 :: v_dual_add_f32 v15, v15, v106
	v_add_f32_e32 v34, v34, v150
	v_add_f32_e32 v32, v32, v152
	v_add_f32_e32 v30, v30, v154
	v_add_f32_e32 v28, v28, v156
	v_add_f32_e32 v26, v26, v158
	v_add_f32_e32 v24, v24, v160
	v_add_f32_e32 v22, v22, v162
	v_add_f32_e32 v20, v20, v164
	v_add_f32_e32 v18, v18, v166
	v_dual_add_f32 v16, v16, v107 :: v_dual_add_f32 v49, v49, v136
	v_dual_add_f32 v47, v47, v138 :: v_dual_add_f32 v76, v76, v177
	v_add_f32_e32 v45, v45, v139
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v168, v112, v108, 0x4000501
	v_perm_b32 v169, v112, v108, 0x6020703
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v108, s4, v87
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v184, v113, v109, 0x4000501
	v_perm_b32 v185, v113, v109, 0x6020703
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v109, s4, v85
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v186, v114, v110, 0x4000501
	v_cndmask_b32_e32 v108, 0x80000000, v108, vcc_lo
	v_perm_b32 v187, v114, v110, 0x6020703
	v_perm_b32 v188, v115, v111, 0x4000501
	v_cndmask_b32_e32 v112, 0x80000000, v109, vcc_lo
	v_perm_b32 v189, v115, v111, 0x6020703
	s_clause 0x1
	buffer_load_b128 v[108:111], v108, s[20:23], 0 offen
	buffer_load_b128 v[112:115], v112, s[20:23], 0 offen
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_add_i32 s4, s35, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s4, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s35, s4, 0
	s_add_i32 s7, s5, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s4, s35, 12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s4, 0
	s_mov_b32 s4, s3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s3, s35, 14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s29, s6, 0x8000
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s3, s3, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v48, v48, v137
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s34
	s_mov_b32 s5, s7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v190, v112, v108, 0x4000501
	v_perm_b32 v108, v112, v108, 0x6020703
	v_perm_b32 v112, v113, v109, 0x4000501
	v_perm_b32 v109, v113, v109, 0x6020703
	v_perm_b32 v113, v114, v110, 0x4000501
	v_perm_b32 v110, v114, v110, 0x6020703
	v_perm_b32 v114, v115, v111, 0x4000501
	v_perm_b32 v111, v115, v111, 0x6020703
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v115, s6, v93
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v107, v113, v186, 0x7060302
	v_perm_b32 v113, v113, v186, 0x5040100
	v_perm_b32 v116, v114, v188, 0x7060302
	v_perm_b32 v114, v114, v188, 0x5040100
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v115, v[170:173] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v115, v190, v168, 0x7060302
	v_perm_b32 v168, v190, v168, 0x5040100
	v_add_nc_u32_e32 v170, s3, v94
	v_perm_b32 v117, v111, v189, 0x7060302
	v_perm_b32 v111, v111, v189, 0x5040100
	ds_store_2addr_b32 v170, v115, v168 offset1:16
	v_perm_b32 v115, v108, v169, 0x7060302
	v_perm_b32 v108, v108, v169, 0x5040100
	v_add_nc_u32_e32 v168, s3, v95
	ds_store_2addr_b32 v168, v115, v108 offset1:16
	v_perm_b32 v108, v112, v184, 0x7060302
	v_perm_b32 v112, v112, v184, 0x5040100
	v_add_nc_u32_e32 v115, s3, v96
	ds_store_2addr_b32 v115, v108, v112 offset1:16
	v_perm_b32 v108, v109, v185, 0x7060302
	v_perm_b32 v109, v109, v185, 0x5040100
	v_add_nc_u32_e32 v112, s3, v97
	v_perm_b32 v115, v110, v187, 0x7060302
	v_perm_b32 v110, v110, v187, 0x5040100
	ds_store_2addr_b32 v112, v108, v109 offset1:16
	v_add_nc_u32_e32 v108, s3, v98
	v_add_nc_u32_e32 v109, s3, v99
	v_add_nc_u32_e32 v112, s3, v100
	ds_store_2addr_b32 v108, v107, v113 offset1:16
	ds_store_2addr_b32 v170, v115, v110 offset0:160 offset1:176
	ds_store_2addr_b32 v109, v116, v114 offset1:16
	ds_store_2addr_b32 v112, v117, v111 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v1, v92 :: v_dual_mov_b32 v2, v91
	v_mov_b32_e32 v5, v90
	s_branch .LBB0_8
.LBB0_7:
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
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v46, 0
	s_add_i32 s36, 0, 0x8000
	s_add_i32 s29, 0, 0x9000
	s_add_i32 s3, 0, 0x4000
.LBB0_8:                                ; %Flow70
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	v_and_b32_e32 v3, 7, v0
	v_and_b32_e32 v4, 1, v0
	s_mov_b32 s8, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v5, 0x210, 0, vcc_lo
	v_lshlrev_b32_e32 v6, 6, v3
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v5, v5, v88
	v_cndmask_b32_e64 v7, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s30
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or3_b32 v5, v6, v89, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v5, v5, v7
	v_xor_b32_e32 v6, 16, v5
	v_xor_b32_e32 v8, 32, v5
	v_xor_b32_e32 v7, 48, v5
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
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v83, s4, v8
	v_add_nc_u32_e32 v84, s4, v6
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v127, s36, v79
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v85, s4, v5
	v_add_nc_u32_e32 v91, s4, v7
	ds_load_b128 v[147:150], v83 offset:8192
	ds_load_b128 v[151:154], v83
	ds_load_b128 v[155:158], v84 offset:8192
	ds_load_b128 v[159:162], v84
	ds_load_b128 v[163:166], v85 offset:8192
	ds_load_b128 v[167:170], v85
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v90, s15
	v_dual_mov_b32 v87, s12 :: v_dual_add_nc_u32 v128, s36, v80
	v_mov_b32_e32 v84, s9
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[123:126], v127 offset:1024
	ds_load_b128 v[107:110], v127
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v85, s10 :: v_dual_add_nc_u32 v130, s36, v81
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[171:174], v128 offset:1024
	ds_load_b128 v[111:114], v128
	ds_load_b128 v[175:178], v130 offset:1024
	ds_load_b128 v[115:118], v130
	v_add_nc_u32_e32 v129, s36, v82
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v89, s14 :: v_dual_mov_b32 v88, s13
	v_dual_mov_b32 v86, s11 :: v_dual_mov_b32 v83, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[179:182], v91 offset:8192
	ds_load_b128 v[183:186], v91
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[187:190], v129 offset:1024
	ds_load_b128 v[119:122], v129
	ds_load_b128 v[191:194], v127 offset:3072
	ds_load_b128 v[139:142], v127 offset:2048
	ds_load_b128 v[195:198], v128 offset:3072
	ds_load_b128 v[199:202], v128 offset:2048
	ds_load_b128 v[203:206], v130 offset:3072
	ds_load_b128 v[207:210], v130 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[91:98], v[167:170], v[107:110], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[91:98], v[159:162], v[111:114], v[91:98] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[91:98], v[151:154], v[115:118], v[91:98] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[91:98], v[183:186], v[119:122], v[91:98] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v94, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v95, v95
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v76, v76, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[99:106], v[163:166], v[107:110], v[83:90] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v78, v78, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v96
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v77, v77, v93
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[99:106], v[155:158], v[111:114], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[167:170], v[123:126], v[83:90] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v93, v97
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[211:214], v129 offset:3072
	ds_load_b128 v[215:218], v129 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[99:106], v[147:150], v[115:118], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[159:162], v[171:174], v[107:114] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v94, v98
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v75, v75, v95 :: v_dual_add_f32 v74, v74, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[99:106], v[179:182], v[119:122], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[151:154], v[175:178], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[163:166], v[123:126], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[167:170], v[139:142], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[183:186], v[187:190], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[155:158], v[171:174], v[115:122] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v95, v99
	v_cvt_f32_i32_e32 v96, v100
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v73, v73, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v101
	v_cvt_f32_i32_e32 v93, v102
	v_wmma_i32_16x16x16_iu8 v[115:122], v[147:150], v[175:178], v[115:122] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v72, v72, v94 :: v_dual_add_f32 v71, v71, v95
	v_add_f32_e32 v70, v70, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v103
	v_cvt_f32_i32_e32 v95, v104
	v_cvt_f32_i32_e32 v96, v105
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v69, v69, v92 :: v_dual_add_f32 v68, v68, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v106
	v_cvt_f32_i32_e32 v93, v107
	v_wmma_i32_16x16x16_iu8 v[131:138], v[163:166], v[139:142], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[159:162], v[199:202], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[179:182], v[187:190], v[115:122] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v67, v67, v94 :: v_dual_add_f32 v64, v64, v92
	v_add_f32_e32 v66, v66, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v108
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v65, v65, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v95, v109
	v_cvt_f32_i32_e32 v96, v110
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v63, v63, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v111
	v_cvt_f32_i32_e32 v93, v112
	v_wmma_i32_16x16x16_iu8 v[131:138], v[155:158], v[199:202], v[131:138] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[151:154], v[207:210], v[123:130] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v62, v62, v94 :: v_dual_add_f32 v61, v61, v95
	v_add_f32_e32 v58, v58, v93
	v_add_f32_e32 v60, v60, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v113
	v_cvt_f32_i32_e32 v95, v114
	v_cvt_f32_i32_e32 v96, v115
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v59, v59, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v116
	v_cvt_f32_i32_e32 v93, v117
	v_wmma_i32_16x16x16_iu8 v[139:146], v[167:170], v[191:194], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[147:150], v[207:210], v[131:138] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[183:186], v[215:218], v[123:130] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v57, v57, v94 :: v_dual_add_f32 v54, v54, v92
	v_add_f32_e32 v56, v56, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v55, v55, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v95, v119
	v_cvt_f32_i32_e32 v96, v120
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v53, v53, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v121
	v_cvt_f32_i32_e32 v93, v122
	v_wmma_i32_16x16x16_iu8 v[139:146], v[159:162], v[195:198], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[163:166], v[191:194], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[179:182], v[215:218], v[131:138] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v52, v52, v94 :: v_dual_add_f32 v51, v51, v95
	v_add_f32_e32 v48, v48, v93
	v_add_f32_e32 v50, v50, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v123
	v_cvt_f32_i32_e32 v95, v124
	v_cvt_f32_i32_e32 v96, v125
	v_cvt_f32_i32_e32 v93, v127
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v49, v49, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v126
	v_wmma_i32_16x16x16_iu8 v[139:146], v[151:154], v[203:206], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[155:158], v[195:198], v[83:90] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v47, v47, v94 :: v_dual_add_f32 v44, v44, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v128
	v_cvt_f32_i32_e32 v96, v130
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v43, v43, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v131
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v45, v45, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v95, v129
	v_wmma_i32_16x16x16_iu8 v[139:146], v[183:186], v[211:214], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[147:150], v[203:206], v[83:90] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v39, v39, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v96, v135
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v41, v41, v94 :: v_dual_add_f32 v40, v40, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v133
	v_cvt_f32_i32_e32 v95, v134
	v_wmma_i32_16x16x16_iu8 v[83:90], v[179:182], v[211:214], v[83:90] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v42, v42, v93
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v132
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v38, v38, v92
	v_dual_add_f32 v36, v36, v94 :: v_dual_add_f32 v35, v35, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v136
	v_cvt_f32_i32_e32 v94, v138
	v_cvt_f32_i32_e32 v95, v139
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v37, v37, v93 :: v_dual_add_f32 v34, v34, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v137
	v_cvt_f32_i32_e32 v96, v140
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v31, v31, v94 :: v_dual_add_f32 v30, v30, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v143
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v33, v33, v92
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v141
	v_cvt_f32_i32_e32 v95, v144
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v32, v32, v93 :: v_dual_add_f32 v29, v29, v96
	v_add_f32_e32 v22, v22, v83
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v93, v142
	v_cvt_f32_i32_e32 v96, v145
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v28, v28, v92 :: v_dual_add_f32 v25, v25, v95
	v_add_f32_e32 v20, v20, v85
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v92, v146
	v_cvt_f32_i32_e32 v83, v87
	v_cvt_f32_i32_e32 v85, v89
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v21, v21, v84
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v84, v88
	v_cvt_f32_i32_e32 v87, v91
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v19, v19, v86
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v86, v90
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v27, v27, v93 :: v_dual_add_f32 v24, v24, v96
	v_dual_add_f32 v26, v26, v94 :: v_dual_add_f32 v23, v23, v92
	v_dual_add_f32 v18, v18, v83 :: v_dual_add_f32 v17, v17, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v16, v16, v85 :: v_dual_add_f32 v15, v15, v86
	v_add_f32_e32 v46, v46, v87
.LBB0_10:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
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
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v121, s29, v80
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v146, s11 :: v_dual_add_nc_u32 v83, s3, v8
	v_dual_mov_b32 v145, s10 :: v_dual_add_nc_u32 v84, s3, v6
	v_dual_mov_b32 v143, s8 :: v_dual_add_nc_u32 v86, s3, v5
	v_dual_mov_b32 v144, s9 :: v_dual_add_nc_u32 v85, s3, v7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[5:8], v83 offset:8192
	ds_load_b128 v[147:150], v83
	ds_load_b128 v[151:154], v84 offset:8192
	ds_load_b128 v[155:158], v84
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v142, s7 :: v_dual_add_nc_u32 v83, s29, v79
	v_dual_mov_b32 v140, s5 :: v_dual_add_nc_u32 v119, s29, v81
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[159:162], v86 offset:8192
	ds_load_b128 v[163:166], v86
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v141, s6 :: v_dual_add_nc_u32 v120, s29, v82
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[79:82], v83 offset:1024
	ds_load_b128 v[99:102], v83
	ds_load_b128 v[167:170], v119 offset:1024
	ds_load_b128 v[107:110], v119
	ds_load_b128 v[171:174], v121 offset:1024
	ds_load_b128 v[111:114], v121
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[175:178], v85 offset:8192
	ds_load_b128 v[179:182], v85
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v139, s4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[183:186], v120 offset:1024
	ds_load_b128 v[115:118], v120
	ds_load_b128 v[187:190], v83 offset:3072
	ds_load_b128 v[131:134], v83 offset:2048
	ds_load_b128 v[191:194], v121 offset:3072
	ds_load_b128 v[195:198], v121 offset:2048
	ds_load_b128 v[199:202], v119 offset:3072
	ds_load_b128 v[203:206], v119 offset:2048
	ds_load_b128 v[207:210], v120 offset:3072
	ds_load_b128 v[211:214], v120 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(16)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[163:166], v[99:102], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[159:162], v[99:102], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[163:166], v[79:82], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[155:158], v[111:114], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[151:154], v[111:114], v[91:98] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[159:162], v[131:134], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[155:158], v[171:174], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[147:150], v[107:110], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[5:8], v[107:110], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[159:162], v[79:82], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[151:154], v[195:198], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[179:182], v[115:118], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[175:178], v[115:118], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[163:166], v[131:134], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[163:166], v[187:190], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[159:162], v[187:190], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[151:154], v[171:174], v[107:114] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[155:158], v[195:198], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[155:158], v[191:194], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[147:150], v[167:170], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[151:154], v[191:194], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[5:8], v[167:170], v[107:114] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[147:150], v[203:206], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[5:8], v[203:206], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[147:150], v[199:202], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[5:8], v[199:202], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[179:182], v[183:186], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[175:178], v[183:186], v[107:114] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[179:182], v[211:214], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[175:178], v[211:214], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[179:182], v[207:210], v[131:138] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[175:178], v[207:210], v[139:146] neg_lo:[1,1,0]
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
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
.LBB0_12:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v6, s27, v14
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	v_or_b32_e32 v5, s28, v0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s5, s17, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v81, v78, v84 :: v_dual_lshlrev_b32 v6, 1, v6
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s4, s16
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v80, v46, v83 :: v_dual_lshlrev_b32 v79, 1, v5
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v7, 32, v6
	v_or_b32_e32 v8, 64, v6
	v_or_b32_e32 v14, 0x60, v6
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v82, v77, v85 :: v_dual_add_f32 v83, v76, v86
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x3
	buffer_load_u16 v6, v6, s[4:7], 0 offen
	buffer_load_u16 v7, v7, s[4:7], 0 offen
	buffer_load_u16 v8, v8, s[4:7], 0 offen
	buffer_load_u16 v14, v14, s[4:7], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s5, s19, 0xffff
	s_mov_b32 s4, s18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v84, v75, v87 :: v_dual_add_f32 v85, v74, v88
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v79, v79, s[4:7], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v86, v73, v89 :: v_dual_add_f32 v87, v72, v90
	v_dual_add_f32 v88, v71, v91 :: v_dual_add_f32 v89, v70, v92
	v_dual_add_f32 v90, v69, v93 :: v_dual_add_f32 v91, v68, v94
	v_dual_add_f32 v92, v67, v95 :: v_dual_add_f32 v93, v66, v96
	v_dual_add_f32 v94, v65, v97 :: v_dual_add_f32 v95, v64, v98
	v_dual_add_f32 v96, v63, v99 :: v_dual_add_f32 v97, v62, v100
	v_dual_add_f32 v98, v61, v101 :: v_dual_add_f32 v99, v60, v102
	v_dual_add_f32 v100, v59, v103 :: v_dual_add_f32 v101, v58, v104
	v_dual_add_f32 v102, v57, v105 :: v_dual_add_f32 v103, v56, v106
	v_dual_add_f32 v104, v55, v107 :: v_dual_add_f32 v105, v54, v108
	v_dual_add_f32 v106, v53, v109 :: v_dual_add_f32 v107, v52, v110
	v_dual_add_f32 v108, v51, v111 :: v_dual_add_f32 v109, v50, v112
	v_dual_add_f32 v110, v49, v113 :: v_dual_add_f32 v111, v48, v114
	v_dual_add_f32 v112, v47, v115 :: v_dual_add_f32 v113, v45, v116
	v_dual_add_f32 v114, v44, v117 :: v_dual_add_f32 v115, v43, v118
	v_dual_add_f32 v116, v42, v119 :: v_dual_add_f32 v117, v41, v120
	v_dual_add_f32 v118, v40, v121 :: v_dual_add_f32 v119, v39, v122
	v_dual_add_f32 v120, v38, v123 :: v_dual_add_f32 v121, v37, v124
	v_dual_add_f32 v122, v36, v125 :: v_dual_add_f32 v123, v35, v126
	v_dual_add_f32 v124, v34, v127 :: v_dual_add_f32 v125, v33, v128
	v_dual_add_f32 v126, v32, v129 :: v_dual_add_f32 v127, v31, v130
	v_dual_add_f32 v128, v30, v131 :: v_dual_add_f32 v129, v29, v132
	v_dual_add_f32 v130, v28, v133 :: v_dual_add_f32 v131, v27, v134
	v_dual_add_f32 v132, v26, v135 :: v_dual_add_f32 v133, v25, v136
	v_dual_add_f32 v134, v24, v137 :: v_dual_add_f32 v135, v23, v138
	v_dual_add_f32 v136, v22, v139 :: v_dual_add_f32 v137, v21, v140
	v_dual_add_f32 v138, v20, v141 :: v_dual_add_f32 v139, v19, v142
	v_dual_add_f32 v140, v18, v143 :: v_dual_add_f32 v141, v17, v144
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v78, v78, v81, s2
	v_cndmask_b32_e64 v61, v61, v98, s2
	v_cndmask_b32_e64 v81, v60, v99, s2
	v_cndmask_b32_e64 v59, v59, v100, s2
	v_cndmask_b32_e64 v98, v30, v128, s2
	v_cndmask_b32_e64 v99, v29, v129, s2
	v_cndmask_b32_e64 v100, v27, v131, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v46, v46, v80, s2
	v_cndmask_b32_e64 v77, v77, v82, s2
	v_cndmask_b32_e64 v69, v69, v90, s2
	v_cndmask_b32_e64 v68, v68, v91, s2
	v_cndmask_b32_e64 v67, v67, v92, s2
	v_cndmask_b32_e64 v66, v66, v93, s2
	v_cndmask_b32_e64 v65, v65, v94, s2
	v_cndmask_b32_e64 v80, v64, v95, s2
	v_cndmask_b32_e64 v63, v63, v96, s2
	v_cndmask_b32_e64 v62, v62, v97, s2
	v_cndmask_b32_e64 v57, v57, v102, s2
	v_cndmask_b32_e64 v82, v56, v103, s2
	v_cndmask_b32_e64 v55, v55, v104, s2
	v_cndmask_b32_e64 v54, v54, v105, s2
	v_cndmask_b32_e64 v90, v38, v120, s2
	v_cndmask_b32_e64 v91, v37, v121, s2
	v_cndmask_b32_e64 v92, v36, v122, s2
	v_cndmask_b32_e64 v93, v35, v123, s2
	v_cndmask_b32_e64 v94, v34, v124, s2
	v_cndmask_b32_e64 v95, v33, v125, s2
	v_cndmask_b32_e64 v96, v32, v126, s2
	v_cndmask_b32_e64 v97, v31, v127, s2
	v_cndmask_b32_e64 v102, v24, v134, s2
	v_cndmask_b32_e64 v103, v23, v135, s2
	v_cndmask_b32_e64 v104, v22, v136, s2
	v_cndmask_b32_e64 v105, v21, v137, s2
	v_cndmask_b32_e64 v73, v73, v86, s2
	v_cndmask_b32_e64 v86, v45, v113, s2
	v_cndmask_b32_e64 v76, v76, v83, s2
	v_cndmask_b32_e64 v74, v74, v85, s2
	v_cndmask_b32_e64 v72, v72, v87, s2
	v_cndmask_b32_e64 v71, v71, v88, s2
	v_cndmask_b32_e64 v58, v58, v101, s2
	v_cndmask_b32_e64 v83, v52, v107, s2
	v_cndmask_b32_e64 v51, v51, v108, s2
	v_cndmask_b32_e64 v87, v44, v114, s2
	v_cndmask_b32_e64 v43, v43, v115, s2
	v_cndmask_b32_e64 v88, v41, v117, s2
	v_cndmask_b32_e64 v101, v25, v133, s2
	v_cndmask_b32_e64 v107, v19, v139, s2
	v_cndmask_b32_e64 v108, v18, v140, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v142, v16, v145 :: v_dual_add_f32 v143, v15, v146
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v70, v70, v89, s2
	v_cndmask_b32_e64 v50, v50, v109, s2
	v_cndmask_b32_e64 v47, v47, v112, s2
	v_cndmask_b32_e64 v89, v40, v118, s2
	v_cndmask_b32_e64 v39, v39, v119, s2
	v_cndmask_b32_e64 v109, v17, v141, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v2, v2, 1, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v75, v75, v84, s2
	v_cndmask_b32_e64 v84, v49, v110, s2
	v_cndmask_b32_e64 v85, v48, v111, s2
	v_cndmask_b32_e64 v42, v42, v116, s2
	v_cndmask_b32_e64 v110, v16, v142, s2
	v_cndmask_b32_e64 v111, v15, v143, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshlrev_b32_e32 v0, 2, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v53, v106, s2
	v_cndmask_b32_e64 v106, v20, v138, s2
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s4, s27, s25
	s_mul_i32 s3, s25, 62
	s_add_i32 s23, s4, s25
	s_add_i32 s22, s4, s26
	s_add_i32 s21, s4, s24
	s_mul_i32 s5, s25, 5
	s_mul_i32 s8, s25, 6
	s_lshl2_add_u32 s20, s25, s4
	s_add_i32 s26, s4, s3
	.loc	1 450 9 is_stmt 0               ; generate_amdgcn.py:450:9
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s3, s7
	.loc	1 450 23                        ; generate_amdgcn.py:450:23
	s_mul_i32 s9, s25, 7
	s_add_i32 s19, s4, s5
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
	s_add_i32 s27, s4, s56
	s_mul_i32 s53, s25, 63
	s_add_i32 s25, s4, s57
	s_add_i32 s24, s4, s53
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_and_b32_e32 v1, 0x1c00, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_and_or_b32 v1, 0x300, v11, v1
	.loc	1 434 14 is_stmt 1              ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v7, 16, v7
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v144, 2, v13
	v_lshlrev_b32_e32 v4, 5, v4
	v_lshl_add_u32 v13, v13, 1, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v4, 0, v144, v4
	v_lshl_add_u32 v4, v12, 1, v4
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v79
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v79, v28, v130, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v4, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v13
	ds_load_b128 v[31:34], v13 offset:16
	ds_load_b128 v[21:24], v13 offset:512
	ds_load_b128 v[35:38], v13 offset:528
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v12, 16, v14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v4, v26, v132, s2
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s2, s6
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v113, v27, v7 :: v_dual_lshlrev_b32 v8, 16, v8
	v_mul_f32_e32 v19, v32, v6
	v_mul_f32_e32 v14, v28, v6
	v_dual_mul_f32 v18, v31, v6 :: v_dual_mul_f32 v119, v33, v7
	v_dual_mul_f32 v25, v33, v6 :: v_dual_mul_f32 v114, v28, v7
	v_dual_mul_f32 v26, v34, v6 :: v_dual_mul_f32 v117, v31, v7
	v_dual_mul_f32 v64, v36, v6 :: v_dual_mul_f32 v123, v23, v7
	v_dual_mul_f32 v115, v29, v7 :: v_dual_mul_f32 v132, v31, v8
	v_mul_f32_e32 v31, v31, v12
	v_mul_f32_e32 v17, v30, v6
	v_dual_mul_f32 v45, v22, v6 :: v_dual_mul_f32 v118, v32, v7
	v_dual_mul_f32 v112, v37, v6 :: v_dual_mul_f32 v125, v35, v7
	v_dual_mul_f32 v122, v22, v7 :: v_dual_mul_f32 v133, v32, v8
	v_mul_f32_e32 v140, v35, v8
	v_mul_f32_e32 v146, v32, v12
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v32, v74, v19
	v_dual_mul_f32 v64, v66, v64 :: v_dual_mul_f32 v31, v4, v31
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_and_b32_e32 v4, 0xcf0, v10
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v13, v27, v6
	v_mul_f32_e32 v15, v29, v6
	v_dual_mul_f32 v41, v21, v6 :: v_dual_mul_f32 v116, v30, v7
	v_dual_mul_f32 v49, v23, v6 :: v_dual_mul_f32 v120, v34, v7
	v_dual_mul_f32 v56, v24, v6 :: v_dual_mul_f32 v121, v21, v7
	v_dual_mul_f32 v60, v35, v6 :: v_dual_mul_f32 v127, v37, v7
	v_dual_mul_f32 v6, v38, v6 :: v_dual_mul_f32 v129, v28, v8
	v_dual_mul_f32 v124, v24, v7 :: v_dual_mul_f32 v131, v30, v8
	v_dual_mul_f32 v126, v36, v7 :: v_dual_mul_f32 v135, v34, v8
	v_dual_mul_f32 v7, v38, v7 :: v_dual_mul_f32 v128, v27, v8
	v_mul_f32_e32 v139, v24, v8
	v_mul_f32_e32 v142, v37, v8
	v_mul_f32_e32 v27, v27, v12
	v_mul_f32_e32 v152, v24, v12
	v_dual_mul_f32 v155, v37, v12 :: v_dual_mul_f32 v24, v76, v17
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v17, v62, v114
	v_dual_mul_f32 v37, v57, v119 :: v_dual_mul_f32 v62, v94, v140
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_xor_b32_e32 v2, v2, v4
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v136, v21, v8
	v_mul_f32_e32 v130, v29, v8
	v_mul_f32_e32 v134, v33, v8
	v_mul_f32_e32 v144, v29, v12
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_lshl_or_b32 v2, v3, 13, v2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v147, v33, v12 :: v_dual_mul_f32 v40, v72, v26
	v_dual_mul_f32 v149, v21, v12 :: v_dual_mul_f32 v44, v71, v41
	v_dual_mul_f32 v137, v22, v8 :: v_dual_mul_f32 v20, v77, v15
	v_dual_mul_f32 v138, v23, v8 :: v_dual_mul_f32 v21, v61, v115
	v_dual_mul_f32 v141, v36, v8 :: v_dual_mul_f32 v16, v78, v14
	v_dual_mul_f32 v143, v28, v12 :: v_dual_mul_f32 v28, v75, v18
	v_mul_f32_e32 v145, v30, v12
	v_mul_f32_e32 v148, v34, v12
	v_mul_f32_e32 v150, v22, v12
	v_dual_mul_f32 v151, v23, v12 :: v_dual_mul_f32 v48, v70, v45
	v_dual_mul_f32 v153, v35, v12 :: v_dual_mul_f32 v52, v69, v49
	v_dual_mul_f32 v154, v36, v12 :: v_dual_mul_f32 v15, v98, v27
	v_dual_mul_f32 v156, v38, v12 :: v_dual_mul_f32 v19, v99, v143
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v12, v46, v13
	v_mul_f32_e32 v13, v63, v113
	v_dual_mul_f32 v33, v58, v118 :: v_dual_mul_f32 v14, v47, v128
	v_dual_mul_f32 v47, v104, v149 :: v_dual_mul_f32 v46, v90, v136
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	v_add_nc_u32_e32 v3, 0, v2
	v_or3_b32 v4, v1, v0, v9
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v8, v38, v8 :: v_dual_mul_f32 v53, v53, v123
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v29, v59, v117
	v_dual_mul_f32 v41, v82, v120 :: v_dual_mul_f32 v22, v87, v130
	v_mul_f32_e32 v49, v54, v122
	v_dual_mul_f32 v38, v89, v134 :: v_dual_mul_f32 v23, v79, v144
	v_dual_mul_f32 v30, v42, v132 :: v_dual_mul_f32 v63, v108, v153
	v_mul_f32_e32 v36, v73, v25
	v_dual_mul_f32 v61, v51, v125 :: v_dual_mul_f32 v56, v68, v56
	v_mul_f32_e32 v35, v101, v146
	v_mul_f32_e32 v68, v65, v112
	v_mul_f32_e32 v42, v39, v135
	v_mul_f32_e32 v39, v102, v147
	v_mul_f32_e32 v45, v55, v121
	v_dual_mul_f32 v60, v67, v60 :: v_dual_mul_f32 v27, v100, v145
	v_dual_mul_f32 v72, v80, v6 :: v_dual_mul_f32 v25, v81, v116
	v_mul_f32_e32 v18, v86, v129
	v_mul_f32_e32 v65, v50, v126
	v_mul_f32_e32 v69, v84, v127
	v_mul_f32_e32 v73, v85, v7
	v_dual_mul_f32 v26, v43, v131 :: v_dual_mul_f32 v51, v105, v150
	v_dual_mul_f32 v50, v91, v137 :: v_dual_mul_f32 v55, v106, v151
	v_dual_mul_f32 v54, v92, v138 :: v_dual_mul_f32 v43, v103, v148
	.loc	1 450 9 is_stmt 1               ; generate_amdgcn.py:450:9
	ds_store_b128 v3, v[12:15]
	ds_store_b128 v3, v[20:23] offset:256
	ds_store_b128 v3, v[28:31] offset:512
	ds_store_b128 v3, v[36:39] offset:768
	ds_store_b128 v3, v[44:47] offset:4096
	ds_store_b128 v3, v[52:55] offset:4352
	v_xad_u32 v2, v2, 32, 0
	v_add_nc_u32_e32 v6, 0, v4
	v_xad_u32 v14, 0x2010, v4, 0
	v_xad_u32 v30, 0x6030, v4, 0
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v57, v83, v124 :: v_dual_mul_f32 v34, v88, v133
	v_dual_mul_f32 v58, v93, v139 :: v_dual_mul_f32 v59, v107, v152
	v_dual_mul_f32 v66, v95, v141 :: v_dual_mul_f32 v71, v110, v155
	v_dual_mul_f32 v70, v96, v142 :: v_dual_mul_f32 v75, v111, v156
	v_mul_f32_e32 v67, v109, v154
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v22, 0x4020, v4, 0
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v74, v97, v8
	.loc	1 450 9                         ; generate_amdgcn.py:450:9
	v_xad_u32 v46, 0xa050, v4, 0
	ds_store_b128 v3, v[60:63] offset:4608
	ds_store_b128 v3, v[68:71] offset:4864
	ds_store_b128 v2, v[16:19]
	ds_store_b128 v2, v[24:27] offset:256
	ds_store_b128 v2, v[32:35] offset:512
	ds_store_b128 v2, v[40:43] offset:768
	ds_store_b128 v2, v[48:51] offset:4096
	ds_store_b128 v2, v[56:59] offset:4352
	ds_store_b128 v2, v[64:67] offset:4608
	ds_store_b128 v2, v[72:75] offset:4864
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v6
	ds_load_b128 v[6:9], v6 offset:128
	ds_load_b128 v[10:13], v14
	ds_load_b128 v[14:17], v14 offset:128
	ds_load_b128 v[18:21], v22
	ds_load_b128 v[22:25], v22 offset:128
	v_xad_u32 v38, 0x8040, v4, 0
	ds_load_b128 v[26:29], v30
	ds_load_b128 v[30:33], v30 offset:128
	v_xad_u32 v54, 0xc060, v4, 0
	v_xad_u32 v4, 0xe070, v4, 0
	ds_load_b128 v[42:45], v46
	ds_load_b128 v[46:49], v46 offset:128
	ds_load_b128 v[50:53], v54
	ds_load_b128 v[54:57], v54 offset:128
	ds_load_b128 v[58:61], v4
	ds_load_b128 v[34:37], v38
	ds_load_b128 v[38:41], v38 offset:128
	v_add_lshl_u32 v66, s4, v5, 2
	v_add_lshl_u32 v67, s23, v5, 2
	ds_load_b128 v[62:65], v4 offset:128
	v_add_lshl_u32 v68, s22, v5, 2
	v_add_lshl_u32 v69, s21, v5, 2
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v66, s[0:3], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v10, v67, s[0:3], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v18, v68, s[0:3], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v26, v69, s[0:3], 0 offen
	v_add_lshl_u32 v0, s20, v5, 2
	v_add_lshl_u32 v4, s19, v5, 2
	v_add_lshl_u32 v10, s18, v5, 2
	v_add_lshl_u32 v18, s17, v5, 2
	v_add_lshl_u32 v26, s16, v5, 2
	s_waitcnt lgkmcnt(2)
	s_clause 0x4
	buffer_atomic_add_f32 v34, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v42, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v50, v10, s[0:3], 0 offen
	buffer_atomic_add_f32 v58, v18, s[0:3], 0 offen
	buffer_atomic_add_f32 v6, v26, s[0:3], 0 offen
	v_add_lshl_u32 v0, s15, v5, 2
	v_add_lshl_u32 v4, s14, v5, 2
	v_add_lshl_u32 v6, s13, v5, 2
	v_add_lshl_u32 v10, s12, v5, 2
	v_add_lshl_u32 v18, s11, v5, 2
	s_clause 0x2
	buffer_atomic_add_f32 v14, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v22, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v30, v6, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	s_clause 0x1
	buffer_atomic_add_f32 v38, v10, s[0:3], 0 offen
	buffer_atomic_add_f32 v46, v18, s[0:3], 0 offen
	v_add_lshl_u32 v0, s10, v5, 2
	v_add_lshl_u32 v4, s9, v5, 2
	v_add_lshl_u32 v6, s8, v5, 2
	v_add_lshl_u32 v10, s5, v5, 2
	v_add_lshl_u32 v14, s88, v5, 2
	buffer_atomic_add_f32 v54, v0, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x3
	buffer_atomic_add_f32 v62, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v1, v6, s[0:3], 0 offen
	buffer_atomic_add_f32 v11, v10, s[0:3], 0 offen
	buffer_atomic_add_f32 v19, v14, s[0:3], 0 offen
	v_add_lshl_u32 v0, s87, v5, 2
	v_add_lshl_u32 v1, s86, v5, 2
	v_add_lshl_u32 v4, s72, v5, 2
	v_add_lshl_u32 v6, s71, v5, 2
	v_add_lshl_u32 v10, s70, v5, 2
	s_clause 0x4
	buffer_atomic_add_f32 v27, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v35, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v43, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v51, v6, s[0:3], 0 offen
	buffer_atomic_add_f32 v59, v10, s[0:3], 0 offen
	v_add_lshl_u32 v0, s69, v5, 2
	v_add_lshl_u32 v1, s68, v5, 2
	v_add_lshl_u32 v4, s67, v5, 2
	v_add_lshl_u32 v6, s66, v5, 2
	v_add_lshl_u32 v10, s65, v5, 2
	s_clause 0x4
	buffer_atomic_add_f32 v7, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v15, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v23, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v31, v6, s[0:3], 0 offen
	buffer_atomic_add_f32 v39, v10, s[0:3], 0 offen
	v_add_lshl_u32 v0, s64, v5, 2
	v_add_lshl_u32 v1, s63, v5, 2
	v_add_lshl_u32 v4, s62, v5, 2
	v_add_lshl_u32 v6, s61, v5, 2
	v_add_lshl_u32 v7, s60, v5, 2
	s_clause 0x4
	buffer_atomic_add_f32 v47, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v55, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v63, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v2, v6, s[0:3], 0 offen
	buffer_atomic_add_f32 v12, v7, s[0:3], 0 offen
	v_add_lshl_u32 v0, s54, v5, 2
	v_add_lshl_u32 v1, s51, v5, 2
	v_add_lshl_u32 v2, s50, v5, 2
	v_add_lshl_u32 v4, s49, v5, 2
	v_add_lshl_u32 v6, s48, v5, 2
	s_clause 0x4
	buffer_atomic_add_f32 v20, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v28, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v36, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v44, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v52, v6, s[0:3], 0 offen
	v_add_lshl_u32 v0, s42, v5, 2
	v_add_lshl_u32 v1, s41, v5, 2
	v_add_lshl_u32 v2, s40, v5, 2
	v_add_lshl_u32 v4, s38, v5, 2
	v_add_lshl_u32 v6, s36, v5, 2
	s_clause 0x4
	buffer_atomic_add_f32 v60, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v8, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v16, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v24, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v32, v6, s[0:3], 0 offen
	v_add_lshl_u32 v0, s31, v5, 2
	v_add_lshl_u32 v1, s30, v5, 2
	v_add_lshl_u32 v2, s28, v5, 2
	v_add_lshl_u32 v4, s55, v5, 2
	v_add_lshl_u32 v6, s52, v5, 2
	s_clause 0x4
	buffer_atomic_add_f32 v40, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v48, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v56, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v64, v4, s[0:3], 0 offen
	buffer_atomic_add_f32 v3, v6, s[0:3], 0 offen
	v_add_lshl_u32 v0, s45, v5, 2
	v_add_lshl_u32 v1, s47, v5, 2
	v_add_lshl_u32 v2, s46, v5, 2
	v_add_lshl_u32 v3, s44, v5, 2
	v_add_lshl_u32 v4, s43, v5, 2
	s_clause 0x4
	buffer_atomic_add_f32 v13, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v21, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v29, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v37, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v45, v4, s[0:3], 0 offen
	v_add_lshl_u32 v0, s39, v5, 2
	v_add_lshl_u32 v1, s37, v5, 2
	v_add_lshl_u32 v2, s35, v5, 2
	v_add_lshl_u32 v3, s33, v5, 2
	v_add_lshl_u32 v4, s34, v5, 2
	s_clause 0x4
	buffer_atomic_add_f32 v53, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v61, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v9, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v17, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v25, v4, s[0:3], 0 offen
	v_add_lshl_u32 v0, s29, v5, 2
	v_add_lshl_u32 v1, s27, v5, 2
	v_add_lshl_u32 v2, s25, v5, 2
	v_add_lshl_u32 v3, s26, v5, 2
	v_add_lshl_u32 v4, s24, v5, 2
	s_clause 0x4
	buffer_atomic_add_f32 v33, v0, s[0:3], 0 offen
	buffer_atomic_add_f32 v41, v1, s[0:3], 0 offen
	buffer_atomic_add_f32 v49, v2, s[0:3], 0 offen
	buffer_atomic_add_f32 v57, v3, s[0:3], 0 offen
	buffer_atomic_add_f32 v65, v4, s[0:3], 0 offen
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_vgpr, 219
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.numbered_sgpr, 89
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10536
; TotalNumSgprs: 91
; NumVgprs: 219
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
    .sgpr_count:     91
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     219
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
