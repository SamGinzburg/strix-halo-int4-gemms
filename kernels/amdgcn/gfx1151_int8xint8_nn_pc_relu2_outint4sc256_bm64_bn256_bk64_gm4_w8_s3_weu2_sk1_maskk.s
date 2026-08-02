	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_load_b32 s34, s[0:1], 0x38
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v14, 0xf0, v0
	v_and_b32_e32 v13, 15, v0
	v_and_b32_e32 v16, 3, v0
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v17, 14, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v82, 2, v14
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v9, 4, v13
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v15, 4, v16
	v_lshlrev_b32_e32 v86, 6, v0
	v_and_b32_e32 v87, 8, v0
	v_and_b32_e32 v88, 32, v0
	s_mov_b32 s12, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s28, 63
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
	v_mad_u64_u32 v[10:11], null, s29, v82, v[9:10]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b64 s[24:25], s[22:23]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[11:12], null, s29, 3, v[10:11]
	v_lshl_add_u32 v83, s29, 1, v10
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 349 16 is_stmt 1              ; generate_amdgcn.py:349:16
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
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v1, s34, v2
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
	s_lshl_b32 s14, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s4, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s14, v82
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s28, s3, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s13, s34, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s3, s28, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s31, s28, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s29, s14
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s14, v15
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s30, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s13, 63
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s34, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s33, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s3, s31, s4
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s4, s30, s34
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s3, v83
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v84, v1, v15, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s3, v11
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s3, v10
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s2, s33
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v8, s14, v84
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v7, 0x80000000, v4, s2
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s29, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[3:6], v3, s[24:27], 0 offen
	buffer_load_b128 v[18:21], v7, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	s_and_b32 s21, s21, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s13, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s14, s14, 64
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[22:25], v7, s[20:23], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[26:29], v1, s[24:27], 0 offen
	buffer_load_b128 v[30:33], v2, s[24:27], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s14, v15
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s4, s29, 6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s14, v82
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s3, s4
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v7, s14, v84
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v8, s4, v10
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v1
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s34, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s4, v83
	v_add_nc_u32_e32 v2, s4, v11
	v_add_nc_u32_e32 v12, s29, v8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s2
	s_cmpk_gt_i32 s13, 0xbf
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[34:37], v7, s[20:23], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[38:41], v8, s[24:27], 0 offen
	buffer_load_b128 v[42:45], v12, s[24:27], 0 offen
	buffer_load_b128 v[46:49], v1, s[24:27], 0 offen
	buffer_load_b128 v[50:53], v2, s[24:27], 0 offen
	v_bfe_i32 v1, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v2, 1, v0
	v_lshlrev_b32_e32 v12, 4, v0
	v_lshlrev_b32_e32 v89, 6, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v1, 0x420, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v7, 48, v2
	v_lshlrev_b32_e32 v2, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v1, v1, v82
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v90, v12, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v91, v17, 10, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v1, 0, v90
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v92, 0x90, v91
	v_xor_b32_e32 v93, 0x120, v91
	v_xor_b32_e32 v94, 0x1b0, v91
	v_xor_b32_e32 v95, 0x210, v91
	v_add_nc_u32_e32 v7, 0, v91
	v_xor_b32_e32 v96, 0x330, v91
	v_xor_b32_e32 v97, 0x3a0, v91
	v_add_nc_u32_e32 v8, 0, v92
	v_add_nc_u32_e32 v54, 0, v93
	v_add_nc_u32_e32 v55, 0, v94
	v_add_nc_u32_e32 v56, 0, v95
	v_add_nc_u32_e32 v57, 0, v96
	v_add_nc_u32_e32 v58, 0, v97
	v_add_nc_u32_e32 v59, 0x4000, v7
	v_add_nc_u32_e32 v60, 0x4000, v8
	v_add_nc_u32_e32 v61, 0x4000, v54
	v_add_nc_u32_e32 v62, 0x4000, v55
	v_add_nc_u32_e32 v63, 0x4000, v56
	v_add_nc_u32_e32 v64, 0x4000, v57
	v_add_nc_u32_e32 v65, 0x4000, v58
	s_waitcnt vmcnt(8)
	v_perm_b32 v66, v18, v3, 0x4000501
	v_perm_b32 v3, v18, v3, 0x6020703
	v_perm_b32 v18, v19, v4, 0x4000501
	v_perm_b32 v4, v19, v4, 0x6020703
	v_perm_b32 v19, v20, v5, 0x4000501
	v_perm_b32 v5, v20, v5, 0x6020703
	v_perm_b32 v20, v21, v6, 0x4000501
	v_perm_b32 v6, v21, v6, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v21, v30, v26, 0x4000501
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v1, v[22:25] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v22, v30, v26, 0x6020703
	v_perm_b32 v23, v31, v27, 0x4000501
	v_perm_b32 v24, v31, v27, 0x6020703
	v_perm_b32 v25, v32, v28, 0x4000501
	v_perm_b32 v26, v32, v28, 0x6020703
	v_perm_b32 v27, v33, v29, 0x4000501
	v_perm_b32 v28, v33, v29, 0x6020703
	v_perm_b32 v29, v66, v21, 0x7060302
	v_perm_b32 v21, v66, v21, 0x5040100
	v_perm_b32 v30, v3, v22, 0x7060302
	v_perm_b32 v3, v3, v22, 0x5040100
	v_perm_b32 v22, v18, v23, 0x7060302
	v_perm_b32 v18, v18, v23, 0x5040100
	v_perm_b32 v23, v4, v24, 0x7060302
	v_perm_b32 v4, v4, v24, 0x5040100
	v_perm_b32 v24, v19, v25, 0x7060302
	v_perm_b32 v19, v19, v25, 0x5040100
	v_perm_b32 v25, v5, v26, 0x7060302
	v_perm_b32 v5, v5, v26, 0x5040100
	v_perm_b32 v26, v20, v27, 0x7060302
	v_perm_b32 v20, v20, v27, 0x5040100
	v_perm_b32 v27, v6, v28, 0x7060302
	v_perm_b32 v6, v6, v28, 0x5040100
	ds_store_2addr_b32 v7, v29, v21 offset1:16
	ds_store_2addr_b32 v8, v30, v3 offset1:16
	ds_store_2addr_b32 v54, v22, v18 offset1:16
	ds_store_2addr_b32 v55, v23, v4 offset1:16
	ds_store_2addr_b32 v56, v24, v19 offset1:16
	ds_store_2addr_b32 v7, v25, v5 offset0:160 offset1:176
	ds_store_2addr_b32 v57, v26, v20 offset1:16
	ds_store_2addr_b32 v58, v27, v6 offset1:16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v1, v[34:37] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v1, v42, v38, 0x4000501
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v50, v46, 0x4000501
	v_perm_b32 v4, v42, v38, 0x6020703
	v_perm_b32 v5, v50, v46, 0x6020703
	v_perm_b32 v6, v43, v39, 0x4000501
	v_perm_b32 v7, v51, v47, 0x4000501
	v_perm_b32 v8, v43, v39, 0x6020703
	v_perm_b32 v18, v51, v47, 0x6020703
	v_perm_b32 v19, v44, v40, 0x4000501
	v_perm_b32 v20, v52, v48, 0x4000501
	v_perm_b32 v21, v44, v40, 0x6020703
	v_perm_b32 v22, v52, v48, 0x6020703
	v_perm_b32 v23, v45, v41, 0x4000501
	v_perm_b32 v24, v53, v49, 0x4000501
	v_perm_b32 v25, v45, v41, 0x6020703
	v_perm_b32 v26, v53, v49, 0x6020703
	v_perm_b32 v27, v3, v1, 0x7060302
	v_perm_b32 v1, v3, v1, 0x5040100
	v_perm_b32 v3, v5, v4, 0x7060302
	v_perm_b32 v4, v5, v4, 0x5040100
	v_perm_b32 v5, v7, v6, 0x7060302
	v_perm_b32 v6, v7, v6, 0x5040100
	v_perm_b32 v7, v18, v8, 0x7060302
	v_perm_b32 v8, v18, v8, 0x5040100
	v_perm_b32 v18, v20, v19, 0x7060302
	v_perm_b32 v19, v20, v19, 0x5040100
	v_perm_b32 v20, v22, v21, 0x7060302
	v_perm_b32 v21, v22, v21, 0x5040100
	v_perm_b32 v22, v24, v23, 0x7060302
	v_perm_b32 v23, v24, v23, 0x5040100
	v_perm_b32 v24, v26, v25, 0x7060302
	v_perm_b32 v25, v26, v25, 0x5040100
	ds_store_2addr_b32 v59, v27, v1 offset1:16
	ds_store_2addr_b32 v60, v3, v4 offset1:16
	ds_store_2addr_b32 v61, v5, v6 offset1:16
	ds_store_2addr_b32 v62, v7, v8 offset1:16
	ds_store_2addr_b32 v63, v18, v19 offset1:16
	ds_store_2addr_b32 v59, v20, v21 offset0:160 offset1:176
	ds_store_2addr_b32 v64, v22, v23 offset1:16
	ds_store_2addr_b32 v65, v24, v25 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v4, 6, v0
	v_and_b32_e32 v5, 0x1800, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v6, 6, v13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v1, 8, v0
	v_and_b32_e32 v3, 32, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v85, 0x1c0, v4, v5
	s_load_b256 s[4:11], s[0:1], 0x10
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
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
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v57, 0
	s_add_i32 s37, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s0, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr85
	s_load_b256 s[4:11], s[0:1], 0x10
.LBB0_4:                                ; %.lr.ph
	v_bfe_i32 v3, v0, 3, 1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s35, s13, 6
	s_add_i32 s3, s14, 64
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_lshlrev_b32_e32 v1, 3, v0
	v_dual_mov_b32 v57, 0 :: v_dual_and_b32 v2, 0x1800, v2
	v_and_b32_e32 v3, 0x210, v3
	v_bfe_i32 v4, v0, 5, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v1, 48, v1
	v_and_or_b32 v85, 0x1c0, v86, v2
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v98, s29, v10
	v_mov_b32_e32 v74, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v2, v3, v1
	v_and_b32_e32 v3, 0x420, v4
	v_or_b32_e32 v99, v89, v1
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_mov_b32_e32 v72, 0
	v_or_b32_e32 v2, v85, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v101, 16, v99
	v_xor_b32_e32 v102, 32, v99
	v_xor_b32_e32 v103, 48, v99
	v_mov_b32_e32 v78, 0
	v_xor_b32_e32 v100, v2, v3
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v104, 16, v100
	v_xor_b32_e32 v105, 32, v100
	v_xor_b32_e32 v106, 48, v100
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v19, 0
	s_add_i32 s37, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s35, s35, -3
	s_mov_b32 s36, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s14, s13, 6
	s_mov_b32 s15, s12
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s12, s3, s14
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v115, s15, v100
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v107, s12, v15
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v108, s12, v84
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v183, s37, v99
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v116, s15, v104
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v187, s37, v101
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v107
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v107, 0x80000000, v108, vcc_lo
	buffer_load_b128 v[171:174], v107, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[175:178], v115 offset:8192
	ds_load_b128 v[179:182], v116 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[123:126], v183
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[163:166], v115
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[127:130], v187
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[167:170], v116
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[139:142], v183 offset:1024
	ds_load_b128 v[143:146], v187 offset:1024
	ds_load_b128 v[155:158], v183 offset:2048
	ds_load_b128 v[159:162], v187 offset:2048
	ds_load_b128 v[183:186], v183 offset:3072
	ds_load_b128 v[187:190], v187 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[163:166], v[123:126], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[175:178], v[123:126], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[131:138], v[175:178], v[139:142], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[167:170], v[127:130], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[179:182], v[127:130], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[163:166], v[139:142], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[131:138], v[179:182], v[143:146], v[131:138] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[175:178], v[155:158], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[167:170], v[143:146], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[163:166], v[155:158], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[179:182], v[159:162], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[167:170], v[159:162], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[163:166], v[183:186], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[167:170], v[187:190], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[175:178], v[183:186], v[1:8] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v183, s15, v105
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[163:170], v[179:182], v[187:190], v[163:170] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v187, s37, v102
	ds_load_b128 v[175:178], v187
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[179:182], v183
	ds_load_b128 v[183:186], v183 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[179:182], v[175:178], v[107:114] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[183:186], v[175:178], v[115:122] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[175:178], v187 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[179:182], v[175:178], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[183:186], v[175:178], v[131:138] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[175:178], v187 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[179:182], v[175:178], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[183:186], v[175:178], v[147:154] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[175:178], v187 offset:3072
	v_add_nc_u32_e32 v187, s37, v103
	s_mov_b32 s37, s1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[163:170], v[183:186], v[175:178], v[163:170] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v183, s15, v106
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[155:162], v[179:182], v[175:178], v[155:162] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[175:178], v187
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[179:182], v183
	ds_load_b128 v[183:186], v183 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[179:182], v[175:178], v[107:114] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[183:186], v[175:178], v[115:122] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v116, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v68, v68, v121
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[175:178], v187 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v74, v74, v115
	v_add_f32_e32 v72, v72, v117
	v_dual_add_f32 v70, v70, v119 :: v_dual_add_f32 v73, v73, v116
	v_add_f32_e32 v71, v71, v118
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[179:182], v[175:178], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[183:186], v[175:178], v[131:138] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[175:178], v187 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v131, v131
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v64, v64, v125
	v_add_f32_e32 v62, v62, v127
	v_add_f32_e32 v60, v60, v129
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v134, v134
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v56, v56, v132
	v_add_f32_e32 v58, v58, v131
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v54, v54, v134
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v126, v126
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v50, v50, v138
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[179:182], v[175:178], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[183:186], v[175:178], v[147:154] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[175:178], v187 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
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
	v_wmma_i32_16x16x16_iu8 v[155:162], v[179:182], v[175:178], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[183:186], v[175:178], v[163:170] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v175, v107
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v107, s12, v82
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s12, s12, s29
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v176, v108
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s12, s12, s31
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v179, v111
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v107
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v107, s12, v10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v81, v81, v176 :: v_dual_add_nc_u32 v108, s12, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v177, v109
	v_cvt_f32_i32_e32 v178, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	v_cndmask_b32_e32 v111, 0x80000000, v108, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v180, v112
	v_cvt_f32_i32_e32 v181, v113
	v_cvt_f32_i32_e32 v182, v114
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[107:110], v107, s[24:27], 0 offen
	buffer_load_b128 v[111:114], v111, s[24:27], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v152, v152
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v77, v77, v180
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v153, v153
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v75, v75, v182
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
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
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v170, v170
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v57, v57, v175 :: v_dual_add_f32 v80, v80, v177
	v_dual_add_f32 v79, v79, v178 :: v_dual_add_f32 v78, v78, v179
	v_dual_add_f32 v76, v76, v181 :: v_dual_add_f32 v69, v69, v120
	v_add_f32_e32 v46, v46, v142
	v_dual_add_f32 v67, v67, v122 :: v_dual_add_f32 v48, v48, v140
	v_dual_add_f32 v66, v66, v123 :: v_dual_add_f32 v65, v65, v124
	v_add_f32_e32 v42, v42, v146
	v_dual_add_f32 v63, v63, v126 :: v_dual_add_f32 v44, v44, v144
	v_dual_add_f32 v61, v61, v128 :: v_dual_add_f32 v38, v38, v150
	v_dual_add_f32 v59, v59, v130 :: v_dual_add_f32 v40, v40, v148
	v_dual_add_f32 v55, v55, v133 :: v_dual_add_f32 v36, v36, v152
	v_dual_add_f32 v53, v53, v135 :: v_dual_add_f32 v34, v34, v154
	v_dual_add_f32 v51, v51, v137 :: v_dual_add_f32 v32, v32, v156
	v_dual_add_f32 v49, v49, v139 :: v_dual_add_f32 v30, v30, v158
	v_dual_add_f32 v47, v47, v141 :: v_dual_add_f32 v28, v28, v160
	v_dual_add_f32 v45, v45, v143 :: v_dual_add_f32 v26, v26, v162
	v_dual_add_f32 v43, v43, v145 :: v_dual_add_f32 v24, v24, v164
	v_dual_add_f32 v41, v41, v147 :: v_dual_add_f32 v22, v22, v166
	v_dual_add_f32 v39, v39, v149 :: v_dual_add_f32 v20, v20, v168
	v_dual_add_f32 v35, v35, v153 :: v_dual_add_f32 v18, v18, v170
	v_add_f32_e32 v33, v33, v155
	v_add_f32_e32 v31, v31, v157
	v_add_f32_e32 v29, v29, v159
	v_add_f32_e32 v27, v27, v161
	v_add_f32_e32 v25, v25, v163
	v_add_f32_e32 v23, v23, v165
	v_add_f32_e32 v21, v21, v167
	v_dual_add_f32 v19, v19, v169 :: v_dual_add_f32 v52, v52, v136
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v183, v111, v107, 0x4000501
	v_perm_b32 v184, v111, v107, 0x6020703
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v107, s12, v83
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v185, v112, v108, 0x4000501
	v_perm_b32 v186, v112, v108, 0x6020703
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v108, s12, v11
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v187, v113, v109, 0x4000501
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	v_perm_b32 v188, v113, v109, 0x6020703
	v_perm_b32 v189, v114, v110, 0x4000501
	v_cndmask_b32_e32 v111, 0x80000000, v108, vcc_lo
	v_perm_b32 v190, v114, v110, 0x6020703
	s_clause 0x1
	buffer_load_b128 v[107:110], v107, s[24:27], 0 offen
	buffer_load_b128 v[111:114], v111, s[24:27], 0 offen
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_add_i32 s12, s36, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s12, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s36, s12, 0
	s_add_i32 s15, s13, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s12, s36, 12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s14, s12, 0
	s_mov_b32 s12, s0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s0, s36, 14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s1, s14, 0x8000
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s0, s0, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v37, v37, v151
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v117, s0, v97
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s35
	s_mov_b32 s13, s15
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v191, v111, v107, 0x4000501
	v_perm_b32 v107, v111, v107, 0x6020703
	v_perm_b32 v111, v112, v108, 0x4000501
	v_perm_b32 v108, v112, v108, 0x6020703
	v_perm_b32 v112, v113, v109, 0x4000501
	v_perm_b32 v109, v113, v109, 0x6020703
	v_perm_b32 v113, v114, v110, 0x4000501
	v_perm_b32 v110, v114, v110, 0x6020703
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v114, s14, v90
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v115, v113, v189, 0x7060302
	v_perm_b32 v113, v113, v189, 0x5040100
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v114, v[171:174] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v114, v191, v183, 0x7060302
	v_perm_b32 v171, v191, v183, 0x5040100
	v_add_nc_u32_e32 v172, s0, v91
	v_perm_b32 v116, v110, v190, 0x7060302
	v_perm_b32 v110, v110, v190, 0x5040100
	ds_store_2addr_b32 v172, v114, v171 offset1:16
	v_perm_b32 v114, v107, v184, 0x7060302
	v_perm_b32 v107, v107, v184, 0x5040100
	v_add_nc_u32_e32 v171, s0, v92
	ds_store_2addr_b32 v171, v114, v107 offset1:16
	v_perm_b32 v107, v111, v185, 0x7060302
	v_perm_b32 v111, v111, v185, 0x5040100
	v_add_nc_u32_e32 v114, s0, v93
	ds_store_2addr_b32 v114, v107, v111 offset1:16
	v_perm_b32 v107, v108, v186, 0x7060302
	v_perm_b32 v108, v108, v186, 0x5040100
	v_add_nc_u32_e32 v111, s0, v94
	v_perm_b32 v114, v109, v188, 0x7060302
	v_perm_b32 v109, v109, v188, 0x5040100
	ds_store_2addr_b32 v111, v107, v108 offset1:16
	v_add_nc_u32_e32 v107, s0, v95
	v_perm_b32 v111, v112, v187, 0x7060302
	v_perm_b32 v112, v112, v187, 0x5040100
	v_add_nc_u32_e32 v108, s0, v96
	ds_store_2addr_b32 v107, v111, v112 offset1:16
	ds_store_2addr_b32 v172, v114, v109 offset0:160 offset1:176
	ds_store_2addr_b32 v108, v115, v113 offset1:16
	ds_store_2addr_b32 v117, v116, v110 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v6, v89 :: v_dual_mov_b32 v1, v87
	v_dual_mov_b32 v4, v86 :: v_dual_mov_b32 v3, v88
.LBB0_7:                                ; %Flow72
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_and_b32_e32 v5, 6, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_and_b32_e32 v2, 1, v0
	s_mov_b32 s16, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v8, 3, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v7, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v7, v7, v8
	v_cndmask_b32_e64 v10, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v11, v85, v7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_or_b32_e32 v7, v6, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v11, v11, v10
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v6, 16, v7
	v_xor_b32_e32 v8, 32, v7
	v_xor_b32_e32 v10, 48, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v82, 16, v11
	v_xor_b32_e32 v84, 32, v11
	v_xor_b32_e32 v83, 48, v11
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v85, s12, v84
	v_add_nc_u32_e32 v86, s12, v82
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v129, s37, v7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v87, s12, v11
	v_add_nc_u32_e32 v93, s12, v83
	ds_load_b128 v[149:152], v85 offset:8192
	ds_load_b128 v[153:156], v85
	ds_load_b128 v[157:160], v86 offset:8192
	ds_load_b128 v[161:164], v86
	ds_load_b128 v[165:168], v87 offset:8192
	ds_load_b128 v[169:172], v87
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v92, s23
	v_dual_mov_b32 v89, s20 :: v_dual_add_nc_u32 v130, s37, v6
	v_mov_b32_e32 v86, s17
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[125:128], v129 offset:1024
	ds_load_b128 v[109:112], v129
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v87, s18 :: v_dual_add_nc_u32 v132, s37, v8
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[173:176], v130 offset:1024
	ds_load_b128 v[113:116], v130
	ds_load_b128 v[177:180], v132 offset:1024
	ds_load_b128 v[117:120], v132
	v_add_nc_u32_e32 v131, s37, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v91, s22 :: v_dual_mov_b32 v90, s21
	v_dual_mov_b32 v88, s19 :: v_dual_mov_b32 v85, s16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[181:184], v93 offset:8192
	ds_load_b128 v[185:188], v93
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[189:192], v131 offset:1024
	ds_load_b128 v[121:124], v131
	ds_load_b128 v[193:196], v129 offset:3072
	ds_load_b128 v[141:144], v129 offset:2048
	ds_load_b128 v[197:200], v130 offset:3072
	ds_load_b128 v[201:204], v130 offset:2048
	ds_load_b128 v[205:208], v132 offset:3072
	ds_load_b128 v[209:212], v132 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[169:172], v[109:112], v[85:92] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[161:164], v[113:116], v[93:100] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[153:156], v[117:120], v[93:100] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[185:188], v[121:124], v[93:100] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v97, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v94, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v96, v96
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v78, v78, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[101:108], v[165:168], v[109:112], v[85:92] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v80, v80, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v95, v99
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[213:216], v131 offset:3072
	ds_load_b128 v[217:220], v131 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[101:108], v[157:160], v[113:116], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[169:172], v[125:128], v[85:92] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v81, v81, v94 :: v_dual_add_f32 v76, v76, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[101:108], v[149:152], v[117:120], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[161:164], v[173:176], v[109:116] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v94, v98
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[165:168], v[141:144], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[181:184], v[121:124], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[153:156], v[177:180], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[165:168], v[125:128], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[169:172], v[141:144], v[85:92] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[109:116], v[185:188], v[189:192], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[157:160], v[173:176], v[117:124] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v97, v101
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v79, v79, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v96, v100
	v_cvt_f32_i32_e32 v98, v102
	v_cvt_f32_i32_e32 v95, v104
	v_wmma_i32_16x16x16_iu8 v[117:124], v[149:152], v[177:180], v[117:124] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[161:164], v[201:204], v[125:132] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v75, v75, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v96, v105
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v77, v77, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v103
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v71, v71, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v95, v109
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v73, v73, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v98, v107
	v_wmma_i32_16x16x16_iu8 v[117:124], v[181:184], v[189:192], v[117:124] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v74, v74, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v106
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v72, v72, v94
	v_add_f32_e32 v70, v70, v96
	v_add_f32_e32 v68, v68, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v108
	v_cvt_f32_i32_e32 v96, v110
	v_cvt_f32_i32_e32 v98, v112
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[153:156], v[209:212], v[125:132] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v66, v66, v95 :: v_dual_add_f32 v67, v67, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v113
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v69, v69, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v111
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v63, v63, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v95, v114
	v_cvt_f32_i32_e32 v98, v117
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v65, v65, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v96, v115
	v_wmma_i32_16x16x16_iu8 v[141:148], v[169:172], v[193:196], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[157:160], v[201:204], v[133:140] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[185:188], v[217:220], v[125:132] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v64, v64, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v116
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v62, v62, v94
	v_add_f32_e32 v60, v60, v96
	v_add_f32_e32 v58, v58, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v61, v61, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v95, v119
	v_cvt_f32_i32_e32 v96, v120
	v_cvt_f32_i32_e32 v98, v122
	v_wmma_i32_16x16x16_iu8 v[141:148], v[161:164], v[197:200], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[165:168], v[193:196], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[149:152], v[209:212], v[133:140] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v59, v59, v97 :: v_dual_add_f32 v54, v54, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v121
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v56, v56, v94 :: v_dual_add_f32 v55, v55, v95
	v_add_f32_e32 v52, v52, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v123
	v_cvt_f32_i32_e32 v95, v124
	v_cvt_f32_i32_e32 v96, v125
	v_cvt_f32_i32_e32 v98, v127
	v_wmma_i32_16x16x16_iu8 v[141:148], v[153:156], v[205:208], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[157:160], v[197:200], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[181:184], v[217:220], v[133:140] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v53, v53, v97 :: v_dual_add_f32 v50, v50, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v126
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v51, v51, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v128
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v49, v49, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v95, v129
	v_cvt_f32_i32_e32 v96, v130
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v47, v47, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v98, v132
	v_wmma_i32_16x16x16_iu8 v[141:148], v[185:188], v[213:216], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[149:152], v[205:208], v[85:92] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v48, v48, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v131
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v46, v46, v94 :: v_dual_add_f32 v45, v45, v95
	v_add_f32_e32 v42, v42, v98
	v_add_f32_e32 v44, v44, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v133
	v_cvt_f32_i32_e32 v95, v134
	v_cvt_f32_i32_e32 v96, v135
	v_cvt_f32_i32_e32 v98, v137
	v_wmma_i32_16x16x16_iu8 v[85:92], v[181:184], v[213:216], v[85:92] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v43, v43, v97 :: v_dual_add_f32 v40, v40, v95
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v136
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v41, v41, v94
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v138
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v39, v39, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v95, v139
	v_cvt_f32_i32_e32 v96, v140
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v37, v37, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v98, v142
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v38, v38, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v141
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v36, v36, v94 :: v_dual_add_f32 v35, v35, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v32, v32, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v143
	v_cvt_f32_i32_e32 v98, v147
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v34, v34, v96
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v95, v144
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v33, v33, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v96, v145
	v_cvt_f32_i32_e32 v97, v146
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v31, v31, v94
	v_dual_add_f32 v27, v27, v98 :: v_dual_add_f32 v22, v22, v88
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v94, v148
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v25, v25, v85 :: v_dual_add_f32 v24, v24, v86
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v85, v89
	v_cvt_f32_i32_e32 v86, v90
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v23, v23, v87
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v87, v91
	v_cvt_f32_i32_e32 v88, v92
	v_cvt_f32_i32_e32 v89, v93
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v30, v30, v95 :: v_dual_add_f32 v29, v29, v96
	v_add_f32_e32 v26, v26, v94
	v_add_f32_e32 v28, v28, v97
	v_dual_add_f32 v21, v21, v85 :: v_dual_add_f32 v18, v18, v88
	v_dual_add_f32 v20, v20, v86 :: v_dual_add_f32 v19, v19, v87
	v_add_f32_e32 v57, v57, v89
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
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
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v6, s1, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v11, s0, v11
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v7, s1, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v148, s19 :: v_dual_add_nc_u32 v83, s0, v83
	v_dual_mov_b32 v143, s14 :: v_dual_add_nc_u32 v8, s1, v8
	v_dual_mov_b32 v147, s18 :: v_dual_add_nc_u32 v84, s0, v84
	v_mov_b32_e32 v146, s17
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[165:168], v11 offset:8192
	ds_load_b128 v[169:172], v11
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v145, s16 :: v_dual_add_nc_u32 v82, s0, v82
	v_mov_b32_e32 v144, s15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[117:120], v7 offset:1024
	ds_load_b128 v[101:104], v7
	ds_load_b128 v[173:176], v8 offset:1024
	ds_load_b128 v[109:112], v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[149:152], v84 offset:8192
	ds_load_b128 v[153:156], v84
	ds_load_b128 v[157:160], v82 offset:8192
	ds_load_b128 v[161:164], v82
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[177:180], v6 offset:1024
	ds_load_b128 v[113:116], v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v141, s12 :: v_dual_add_nc_u32 v10, s1, v10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[181:184], v83 offset:8192
	ds_load_b128 v[185:188], v83
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v142, s13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[189:192], v10 offset:1024
	ds_load_b128 v[121:124], v10
	ds_load_b128 v[193:196], v7 offset:3072
	ds_load_b128 v[133:136], v7 offset:2048
	ds_load_b128 v[197:200], v6 offset:3072
	ds_load_b128 v[201:204], v6 offset:2048
	ds_load_b128 v[205:208], v8 offset:3072
	ds_load_b128 v[209:212], v8 offset:2048
	ds_load_b128 v[213:216], v10 offset:3072
	ds_load_b128 v[217:220], v10 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(20)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[169:172], v[101:104], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[165:168], v[101:104], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[169:172], v[117:120], v[141:148] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[85:92], v[161:164], v[113:116], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[157:160], v[113:116], v[93:100] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[161:164], v[177:180], v[101:108] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[165:168], v[133:136], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[153:156], v[109:112], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[149:152], v[109:112], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[165:168], v[117:120], v[141:148] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[157:160], v[201:204], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[185:188], v[121:124], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[181:184], v[121:124], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[169:172], v[133:136], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[169:172], v[193:196], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[165:168], v[193:196], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[157:160], v[177:180], v[109:116] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[161:164], v[201:204], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[161:164], v[197:200], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[153:156], v[173:176], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[157:160], v[197:200], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[149:152], v[173:176], v[109:116] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[153:156], v[209:212], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[149:152], v[209:212], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[153:156], v[205:208], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[149:152], v[205:208], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[185:188], v[189:192], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[181:184], v[189:192], v[109:116] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[185:188], v[217:220], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[181:184], v[217:220], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[185:188], v[213:216], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[181:184], v[213:216], v[141:148] neg_lo:[1,1,0]
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
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
.LBB0_11:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v6, s30, v13
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v7, s31, v0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s13, s5, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 434 22 is_stmt 0              ; generate_amdgcn.py:434:22
	v_lshlrev_b32_e32 v6, 1, v6
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v82, v57, v85 :: v_dual_lshlrev_b32 v7, 1, v7
	v_add_f32_e32 v85, v79, v88
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s12, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v8, 32, v6
	v_or_b32_e32 v10, 64, v6
	v_or_b32_e32 v11, 0x60, v6
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v83, v81, v86 :: v_dual_add_f32 v84, v80, v87
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x3
	buffer_load_u16 v6, v6, s[12:15], 0 offen
	buffer_load_u16 v8, v8, s[12:15], 0 offen
	buffer_load_u16 v10, v10, s[12:15], 0 offen
	buffer_load_u16 v11, v11, s[12:15], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s13, s7, 0xffff
	s_mov_b32 s12, s6
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v86, v78, v89 :: v_dual_add_f32 v87, v77, v90
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v7, v7, s[12:15], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v88, v76, v91 :: v_dual_add_f32 v89, v75, v92
	v_dual_add_f32 v90, v74, v93 :: v_dual_add_f32 v91, v73, v94
	v_dual_add_f32 v92, v72, v95 :: v_dual_add_f32 v93, v71, v96
	v_dual_add_f32 v94, v70, v97 :: v_dual_add_f32 v95, v69, v98
	v_dual_add_f32 v96, v68, v99 :: v_dual_add_f32 v97, v67, v100
	v_dual_add_f32 v98, v66, v101 :: v_dual_add_f32 v99, v65, v102
	v_dual_add_f32 v100, v64, v103 :: v_dual_add_f32 v101, v63, v104
	v_dual_add_f32 v102, v62, v105 :: v_dual_add_f32 v103, v61, v106
	v_dual_add_f32 v104, v60, v107 :: v_dual_add_f32 v105, v59, v108
	v_dual_add_f32 v106, v58, v109 :: v_dual_add_f32 v107, v56, v110
	v_dual_add_f32 v108, v55, v111 :: v_dual_add_f32 v109, v54, v112
	v_dual_add_f32 v110, v53, v113 :: v_dual_add_f32 v111, v52, v114
	v_dual_add_f32 v112, v51, v115 :: v_dual_add_f32 v113, v50, v116
	v_dual_add_f32 v114, v49, v117 :: v_dual_add_f32 v115, v48, v118
	v_dual_add_f32 v116, v47, v119 :: v_dual_add_f32 v117, v46, v120
	v_dual_add_f32 v118, v45, v121 :: v_dual_add_f32 v119, v44, v122
	v_dual_add_f32 v120, v43, v123 :: v_dual_add_f32 v121, v42, v124
	v_dual_add_f32 v122, v41, v125 :: v_dual_add_f32 v123, v40, v126
	v_dual_add_f32 v124, v39, v127 :: v_dual_add_f32 v125, v38, v128
	v_dual_add_f32 v126, v37, v129 :: v_dual_add_f32 v127, v36, v130
	v_dual_add_f32 v128, v35, v131 :: v_dual_add_f32 v129, v34, v132
	v_dual_add_f32 v130, v33, v133 :: v_dual_add_f32 v131, v32, v134
	v_dual_add_f32 v132, v31, v135 :: v_dual_add_f32 v133, v30, v136
	v_dual_add_f32 v134, v29, v137 :: v_dual_add_f32 v135, v28, v138
	v_dual_add_f32 v136, v27, v139 :: v_dual_add_f32 v137, v26, v140
	v_dual_add_f32 v138, v25, v141 :: v_dual_add_f32 v139, v24, v142
	v_dual_add_f32 v140, v23, v143 :: v_dual_add_f32 v141, v22, v144
	v_dual_add_f32 v142, v21, v145 :: v_dual_add_f32 v143, v20, v146
	v_dual_add_f32 v144, v19, v147 :: v_dual_add_f32 v145, v18, v148
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v147, v14, 1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v57, v57, v82, s2
	v_cndmask_b32_e64 v81, v81, v83, s2
	v_cndmask_b32_e64 v80, v80, v84, s2
	v_cndmask_b32_e64 v79, v79, v85, s2
	v_cndmask_b32_e64 v78, v78, v86, s2
	v_cndmask_b32_e64 v77, v77, v87, s2
	v_cndmask_b32_e64 v76, v76, v88, s2
	v_cndmask_b32_e64 v75, v75, v89, s2
	v_cndmask_b32_e64 v74, v74, v90, s2
	v_cndmask_b32_e64 v73, v73, v91, s2
	v_cndmask_b32_e64 v72, v72, v92, s2
	v_cndmask_b32_e64 v71, v71, v93, s2
	v_cndmask_b32_e64 v70, v70, v94, s2
	v_cndmask_b32_e64 v82, v41, v122, s2
	v_cndmask_b32_e64 v83, v40, v123, s2
	v_cndmask_b32_e64 v84, v39, v124, s2
	v_cndmask_b32_e64 v85, v38, v125, s2
	v_cndmask_b32_e64 v86, v37, v126, s2
	v_cndmask_b32_e64 v87, v36, v127, s2
	v_cndmask_b32_e64 v88, v35, v128, s2
	v_cndmask_b32_e64 v89, v34, v129, s2
	v_cndmask_b32_e64 v90, v33, v130, s2
	v_cndmask_b32_e64 v91, v32, v131, s2
	v_cndmask_b32_e64 v92, v30, v133, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v93, v25, v138, s2
	v_cndmask_b32_e64 v94, v24, v139, s2
	v_cndmask_b32_e64 v69, v69, v95, s2
	v_cndmask_b32_e64 v68, v68, v96, s2
	v_cndmask_b32_e64 v66, v66, v98, s2
	v_cndmask_b32_e64 v65, v65, v99, s2
	v_cndmask_b32_e64 v64, v64, v100, s2
	v_cndmask_b32_e64 v63, v63, v101, s2
	v_cndmask_b32_e64 v61, v61, v103, s2
	v_cndmask_b32_e64 v60, v60, v104, s2
	v_cndmask_b32_e64 v59, v59, v105, s2
	v_cndmask_b32_e64 v58, v58, v106, s2
	v_cndmask_b32_e64 v56, v56, v107, s2
	v_cndmask_b32_e64 v55, v55, v108, s2
	v_cndmask_b32_e64 v54, v54, v109, s2
	v_cndmask_b32_e64 v48, v48, v115, s2
	v_cndmask_b32_e64 v67, v67, v97, s2
	v_cndmask_b32_e64 v62, v62, v102, s2
	v_cndmask_b32_e64 v53, v53, v110, s2
	v_cndmask_b32_e64 v52, v52, v111, s2
	v_cndmask_b32_e64 v51, v51, v112, s2
	v_cndmask_b32_e64 v50, v50, v113, s2
	v_cndmask_b32_e64 v49, v49, v114, s2
	v_cndmask_b32_e64 v47, v47, v116, s2
	v_cndmask_b32_e64 v46, v46, v117, s2
	v_cndmask_b32_e64 v45, v45, v118, s2
	v_cndmask_b32_e64 v44, v44, v119, s2
	v_cndmask_b32_e64 v43, v43, v120, s2
	v_cndmask_b32_e64 v42, v42, v121, s2
	v_cndmask_b32_e64 v23, v23, v140, s2
	v_cndmask_b32_e64 v22, v22, v141, s2
	v_cndmask_b32_e64 v20, v20, v143, s2
	v_cndmask_b32_e64 v19, v19, v144, s2
	v_cndmask_b32_e64 v18, v18, v145, s2
	v_cndmask_b32_e64 v21, v21, v142, s2
	s_mov_b32 s0, 0x76543210
.Ltmp16:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s13, s9, 0xffff
	s_mov_b32 s12, s8
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v3, 4, v3
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v5, 10, v5
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v13, 3, v13
.Ltmp17:
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v146, 2, v14
	v_lshlrev_b32_e32 v2, 5, v2
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_add3_u32 v2, 0, v146, v2
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v2, v17, 1, v2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v31, v132, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v2, v7
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v147
	ds_load_b128 v[34:37], v147 offset:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v29, v134, s2
	v_cndmask_b32_e64 v7, v28, v135, s2
	v_cndmask_b32_e64 v28, v27, v136, s2
	v_cndmask_b32_e64 v29, v26, v137, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[24:27], v147 offset:512
	ds_load_b128 v[38:41], v147 offset:528
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp19:
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v115, v35, v8
	v_dual_mul_f32 v98, v33, v6 :: v_dual_lshlrev_b32 v11, 16, v11
	v_mul_f32_e32 v95, v30, v6
	v_dual_mul_f32 v117, v37, v8 :: v_dual_lshlrev_b32 v10, 16, v10
	v_mul_f32_e32 v96, v31, v6
	v_dual_mul_f32 v99, v34, v6 :: v_dual_mul_f32 v112, v32, v8
	v_dual_mul_f32 v100, v35, v6 :: v_dual_mul_f32 v119, v25, v8
	v_dual_mul_f32 v101, v36, v6 :: v_dual_mul_f32 v114, v34, v8
	v_dual_mul_f32 v103, v24, v6 :: v_dual_mul_f32 v120, v26, v8
	v_dual_mul_f32 v104, v25, v6 :: v_dual_mul_f32 v123, v39, v8
	v_dual_mul_f32 v105, v26, v6 :: v_dual_mul_f32 v116, v36, v8
	v_mul_f32_e32 v106, v27, v6
	v_dual_mul_f32 v107, v38, v6 :: v_dual_mul_f32 v118, v24, v8
	v_mul_f32_e32 v108, v39, v6
	v_dual_mul_f32 v109, v40, v6 :: v_dual_mul_f32 v122, v38, v8
	v_dual_mul_f32 v97, v32, v6 :: v_dual_mul_f32 v110, v30, v8
	v_dual_mul_f32 v102, v37, v6 :: v_dual_mul_f32 v121, v27, v8
	v_dual_mul_f32 v6, v41, v6 :: v_dual_mul_f32 v111, v31, v8
	v_mul_f32_e32 v113, v33, v8
	v_dual_mul_f32 v124, v40, v8 :: v_dual_mul_f32 v125, v30, v10
	v_dual_mul_f32 v8, v41, v8 :: v_dual_mul_f32 v127, v32, v10
	v_mul_f32_e32 v126, v31, v10
	v_mul_f32_e32 v128, v33, v10
	v_dual_mul_f32 v129, v34, v10 :: v_dual_mul_f32 v32, v32, v11
	v_mul_f32_e32 v130, v35, v10
	v_dual_mul_f32 v131, v36, v10 :: v_dual_mul_f32 v30, v30, v11
	v_mul_f32_e32 v132, v37, v10
	v_dual_mul_f32 v133, v24, v10 :: v_dual_mul_f32 v34, v34, v11
	v_mul_f32_e32 v134, v25, v10
	v_dual_mul_f32 v135, v26, v10 :: v_dual_mul_f32 v36, v36, v11
	v_mul_f32_e32 v136, v27, v10
	v_dual_mul_f32 v137, v38, v10 :: v_dual_mul_f32 v24, v24, v11
	v_mul_f32_e32 v138, v39, v10
	v_dual_mul_f32 v139, v40, v10 :: v_dual_mul_f32 v26, v26, v11
	v_dual_mul_f32 v10, v41, v10 :: v_dual_mul_f32 v63, v63, v113
	v_mul_f32_e32 v31, v31, v11
	v_mul_f32_e32 v33, v33, v11
	v_mul_f32_e32 v35, v35, v11
	v_mul_f32_e32 v37, v37, v11
	v_mul_f32_e32 v25, v25, v11
	v_mul_f32_e32 v27, v27, v11
	v_dual_mul_f32 v38, v38, v11 :: v_dual_mul_f32 v79, v79, v98
	v_mul_f32_e32 v39, v39, v11
	v_dual_mul_f32 v40, v40, v11 :: v_dual_mul_f32 v77, v77, v100
	v_mul_f32_e32 v11, v41, v11
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v41, v57, v95
	v_dual_mul_f32 v57, v81, v96 :: v_dual_mul_f32 v78, v78, v99
	v_dual_mul_f32 v73, v73, v104 :: v_dual_mul_f32 v76, v76, v101
	v_dual_mul_f32 v71, v71, v106 :: v_dual_mul_f32 v74, v74, v103
	v_dual_mul_f32 v69, v69, v108 :: v_dual_mul_f32 v72, v72, v105
	v_mul_f32_e32 v65, v65, v111
	v_dual_mul_f32 v70, v70, v107 :: v_dual_mul_f32 v59, v59, v117
	v_dual_mul_f32 v68, v68, v109 :: v_dual_mul_f32 v61, v61, v115
	v_dual_mul_f32 v80, v80, v97 :: v_dual_mul_f32 v75, v75, v102
	v_dual_mul_f32 v6, v67, v6 :: v_dual_mul_f32 v49, v49, v125
	v_dual_mul_f32 v66, v66, v110 :: v_dual_mul_f32 v55, v55, v120
	v_dual_mul_f32 v64, v64, v112 :: v_dual_mul_f32 v53, v53, v122
	v_dual_mul_f32 v62, v62, v114 :: v_dual_mul_f32 v51, v51, v124
	v_dual_mul_f32 v60, v60, v116 :: v_dual_mul_f32 v47, v47, v127
	v_dual_mul_f32 v58, v58, v118 :: v_dual_mul_f32 v45, v45, v129
	v_dual_mul_f32 v8, v50, v8 :: v_dual_mul_f32 v81, v84, v135
	v_dual_mul_f32 v48, v48, v126 :: v_dual_mul_f32 v31, v91, v31
	v_dual_mul_f32 v44, v44, v130 :: v_dual_mul_f32 v17, v17, v32
	v_dual_mul_f32 v42, v42, v132 :: v_dual_mul_f32 v7, v7, v35
	v_dual_mul_f32 v50, v82, v133 :: v_dual_mul_f32 v23, v23, v26
	v_dual_mul_f32 v82, v85, v136 :: v_dual_mul_f32 v25, v94, v25
	v_dual_mul_f32 v10, v89, v10 :: v_dual_mul_f32 v19, v19, v40
	v_mul_f32_e32 v30, v90, v30
	v_dual_mul_f32 v32, v92, v33 :: v_dual_mul_f32 v21, v21, v38
	v_dual_mul_f32 v2, v2, v34 :: v_dual_max_f32 v33, 0, v79
	v_dual_mul_f32 v28, v28, v36 :: v_dual_mul_f32 v11, v18, v11
	v_dual_mul_f32 v24, v93, v24 :: v_dual_max_f32 v35, 0, v77
	v_mul_f32_e32 v22, v22, v27
	v_dual_mul_f32 v20, v20, v39 :: v_dual_max_f32 v69, 0, v69
	.loc	1 443 15 is_stmt 1              ; generate_amdgcn.py:443:15
	v_max_f32_e32 v18, 0, v41
	v_dual_max_f32 v26, 0, v57 :: v_dual_max_f32 v71, 0, v71
	v_dual_max_f32 v34, 0, v78 :: v_dual_max_f32 v63, 0, v63
	v_dual_max_f32 v39, 0, v73 :: v_dual_max_f32 v40, 0, v72
	v_dual_max_f32 v55, 0, v55 :: v_dual_max_f32 v70, 0, v70
	v_dual_max_f32 v68, 0, v68 :: v_dual_max_f32 v51, 0, v51
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v56, v56, v119 :: v_dual_mul_f32 v67, v83, v134
	v_dual_mul_f32 v54, v54, v121 :: v_dual_mul_f32 v43, v43, v131
	v_dual_mul_f32 v52, v52, v123 :: v_dual_mul_f32 v83, v86, v137
	v_dual_mul_f32 v46, v46, v128 :: v_dual_mul_f32 v85, v88, v139
	v_dual_mul_f32 v84, v87, v138 :: v_dual_mul_f32 v29, v29, v37
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v27, 0, v80
	v_dual_max_f32 v36, 0, v76 :: v_dual_max_f32 v37, 0, v75
	v_dual_max_f32 v38, 0, v74 :: v_dual_max_f32 v59, 0, v59
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v89, 0, v49
	v_dual_max_f32 v72, 0, v66 :: v_dual_max_f32 v47, 0, v47
	v_dual_max_f32 v74, 0, v65 :: v_dual_max_f32 v43, 0, v43
	v_dual_max_f32 v64, 0, v64 :: v_dual_max_f32 v91, 0, v45
	v_dual_max_f32 v75, 0, v61 :: v_dual_max_f32 v76, 0, v60
	v_max_f32_e32 v93, 0, v42
	v_dual_max_f32 v58, 0, v58 :: v_dual_max_f32 v81, 0, v81
	v_dual_max_f32 v87, 0, v53 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v90, 0, v48
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v94, 0, v50
	v_dual_max_f32 v101, 0, v25 :: v_dual_max_f32 v96, 0, v82
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v30, 0, v30
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v45, v33, v33 :: v_dual_max_f32 v2, 0, v2
	v_dual_mul_f32 v49, v35, v35 :: v_dual_max_f32 v98, 0, v28
	v_dual_mul_f32 v41, v26, v26 :: v_dual_max_f32 v102, 0, v23
	v_dual_mul_f32 v65, v70, v70 :: v_dual_max_f32 v20, 0, v20
	v_mul_f32_e32 v57, v39, v39
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_max_f32_e32 v104, 0, v19
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v82, v18, v18 :: v_dual_mul_f32 v61, v71, v71
	v_dual_mul_f32 v48, v34, v34 :: v_dual_mul_f32 v77, v64, v64
	v_dual_mul_f32 v60, v40, v40 :: v_dual_mul_f32 v71, v58, v58
	v_dual_mul_f32 v66, v69, v69 :: v_dual_mul_f32 v69, v68, v68
	.loc	1 443 15                        ; generate_amdgcn.py:443:15
	v_dual_max_f32 v62, 0, v62 :: v_dual_max_f32 v95, 0, v67
	v_dual_max_f32 v86, 0, v56 :: v_dual_max_f32 v83, 0, v83
	v_dual_max_f32 v54, 0, v54 :: v_dual_max_f32 v85, 0, v85
	v_dual_max_f32 v88, 0, v52 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v46, 0, v46 :: v_dual_max_f32 v97, 0, v32
	v_dual_max_f32 v92, 0, v44 :: v_dual_max_f32 v99, 0, v29
	v_dual_max_f32 v84, 0, v84 :: v_dual_max_f32 v103, 0, v22
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v100, 0, v24 :: v_dual_mul_f32 v53, v37, v37
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v44, v27, v27 :: v_dual_mul_f32 v73, v72, v72
	v_dual_mul_f32 v52, v36, v36 :: v_dual_mul_f32 v79, v75, v75
	v_dual_mul_f32 v56, v38, v38 :: v_dual_mul_f32 v75, v76, v76
	v_dual_mul_f32 v70, v6, v6 :: v_dual_mul_f32 v67, v55, v55
	v_dual_mul_f32 v58, v8, v8 :: v_dual_mul_f32 v33, v85, v85
	v_dual_mul_f32 v40, v94, v94 :: v_dual_mul_f32 v27, v7, v7
	v_mul_f32_e32 v28, v2, v2
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v82, v41
	v_max3_f32 v6, v45, v48, v49
	v_max3_f32 v7, v57, v60, v61
	v_max3_f32 v8, v65, v66, v69
.Ltmp21:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v74, v74, v74
	v_dual_mul_f32 v78, v63, v63 :: v_dual_mul_f32 v55, v90, v90
	v_mul_f32_e32 v80, v62, v62
	v_mul_f32_e32 v76, v59, v59
	v_mul_f32_e32 v72, v86, v86
	v_dual_mul_f32 v68, v54, v54 :: v_dual_mul_f32 v39, v95, v95
	v_dual_mul_f32 v62, v87, v87 :: v_dual_mul_f32 v37, v81, v81
	v_mul_f32_e32 v63, v88, v88
	v_dual_mul_f32 v59, v51, v51 :: v_dual_mul_f32 v54, v89, v89
	v_dual_mul_f32 v35, v84, v84 :: v_dual_mul_f32 v50, v47, v47
	v_dual_mul_f32 v51, v46, v46 :: v_dual_mul_f32 v46, v91, v91
	v_mul_f32_e32 v29, v97, v97
	v_mul_f32_e32 v47, v92, v92
	v_mul_f32_e32 v38, v96, v96
	v_dual_mul_f32 v36, v83, v83 :: v_dual_mul_f32 v25, v100, v100
	v_dual_mul_f32 v34, v10, v10 :: v_dual_mul_f32 v19, v20, v20
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v10, v52, v53, v56
	v_max3_f32 v2, v2, v44, v6
	v_max3_f32 v6, v7, v8, v70
.Ltmp23:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v42, v43, v43 :: v_dual_mul_f32 v23, v98, v98
	v_dual_mul_f32 v43, v93, v93 :: v_dual_mul_f32 v32, v30, v30
	v_dual_mul_f32 v30, v31, v31 :: v_dual_max_f32 v7, v73, v74
	v_mul_f32_e32 v31, v17, v17
	v_dual_mul_f32 v26, v101, v101 :: v_dual_max_f32 v81, v54, v55
	v_mul_f32_e32 v17, v103, v103
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v8, v78, v80, v79
	v_max3_f32 v20, v72, v67, v68
	v_max3_f32 v83, v51, v46, v47
	v_max3_f32 v84, v39, v37, v38
	v_max3_f32 v85, v36, v35, v33
	v_max3_f32 v2, v2, v10, v6
.Ltmp25:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v18, v21, v21
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v21, v62, v63, v59
	v_max3_f32 v64, v75, v76, v71
	v_max3_f32 v7, v7, v77, v8
	v_max3_f32 v86, v42, v43, v40
	v_max3_f32 v81, v81, v50, v83
	v_max3_f32 v8, v20, v21, v58
	v_max3_f32 v83, v84, v85, v34
.Ltmp27:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_dual_mul_f32 v20, v104, v104 :: v_dual_mul_f32 v21, v11, v11
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v10, v29, v28, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v6, v7, v64, v8
	v_max3_f32 v7, v81, v86, v83
	v_max_f32_e32 v8, v32, v30
	v_max3_f32 v81, v18, v19, v20
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v83, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v84, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v85, v7, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp30:
	.loc	1 444 15                        ; generate_amdgcn.py:444:15
	v_mul_f32_e32 v24, v99, v99
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v8, v8, v31, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v85, v85, v85 :: v_dual_mul_f32 v22, v102, v102
	v_max3_f32 v11, v23, v24, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v85, v7, v85
	v_max3_f32 v64, v26, v22, v17
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v7, 5, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v10, v64, v81, v21
	v_dual_max_f32 v64, v83, v83 :: v_dual_max_f32 v81, v84, v84
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_or_b32 v12, 0x680, v12, v7
.Ltmp35:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v4, 0x1b00, v4, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v8, v8, v11, v10
	v_max_f32_e32 v83, v2, v64
	v_max_f32_e32 v84, v6, v81
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v2, 4, v0
	v_lshl_add_u32 v6, v16, 9, 0
	v_permlanex16_b32 v10, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v16, 0x80, v0
	v_and_b32_e32 v11, 0x60, v0
	v_lshl_add_u32 v88, v2, 6, 0
	v_lshl_add_u32 v6, v2, 2, v6
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v64, v10, v10
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v10, 1, v16
	v_xor_b32_e32 v81, v7, v11
	v_lshrrev_b32_e32 v87, 3, v16
	v_lshl_add_u32 v6, v1, 4, v6
	v_xor_b32_e32 v12, v12, v11
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v86, v8, v64 :: v_dual_lshlrev_b32 v1, 3, v1
.Ltmp41:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v9, v9, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v6, v6, v10, v81
	v_add3_u32 v8, v88, v87, v12
.Ltmp43:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xad_u32 v4, v4, v14, 0
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	ds_store_b128 v6, v[83:86]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[83:86], v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v6, v83
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v64, v83, v83
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v8, v84
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v81, v84, v84
	v_max_f32_e32 v83, v86, v86
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v86, v86 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v6, v64, v6
	v_max_f32_e32 v64, v85, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v84, v6
	v_mov_b32_dpp v84, v84 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v84, v84, v84
	v_max_f32_e32 v6, v6, v84
	v_max_f32_e32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v84, v6
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v8, v81, v8 :: v_dual_max_f32 v81, v86, v86
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v2, 5, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v84, v84 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v12, v85 :: v_dual_mov_b32 v85, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v85, v85 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v85, v85, v85
	v_max_f32_e32 v12, v64, v12
	v_max_f32_e32 v64, v83, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v8, v8, v85
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v81, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v83, v64
	v_dual_mov_b32 v85, v8 :: v_dual_add_nc_u32 v16, 0, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v85, v85 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v81, v81, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v83, v83, v83 :: v_dual_max_f32 v12, v12, v81
	v_max_f32_e32 v64, v64, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v83, v84, v84 :: v_dual_max_f32 v84, v85, v85
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v81, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v86, v64 :: v_dual_max_f32 v83, v6, v83
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v84, v8, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v86, v86 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v81, v81
	v_max_f32_e32 v8, v86, v86
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v81, 1, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v85, v12, v6 :: v_dual_add_nc_u32 v6, 0, v15
	v_max_f32_e32 v86, v64, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v8, v16, v81, v1
	v_add3_u32 v1, v6, v2, v1
	ds_store_b128 v8, v[83:86]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[83:86], v1
.Ltmp65:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v1, v83, v83 :: v_dual_max_f32 v12, v85, v85
	v_dual_max_f32 v83, v84, v84 :: v_dual_max_f32 v84, v86, v86
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v86.h, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v1, 0x2b8cbccc, v1 :: v_dual_max_f32 v12, 0x2b8cbccc, v12
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v89.h, v86.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v16, null, 0x40e00000, 0x40e00000, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v6, v2
	v_rcp_f32_e32 v81, v16
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v2, v6, 1.0
	v_fmac_f32_e32 v6, v8, v6
	v_div_scale_f32 v8, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v15, v8, v6
	v_fma_f32 v64, -v2, v15, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v15, v64, v6 :: v_dual_max_f32 v64, 0x2b8cbccc, v83
	v_max_f32_e32 v83, 0x2b8cbccc, v84
	v_fma_f32 v2, -v2, v15, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v8, -v16, v81, 1.0
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v2, v2, v6, v15
	v_fmac_f32_e32 v81, v8, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v8, v84
	v_div_scale_f32 v15, null, 0x40e00000, 0x40e00000, v83
	v_div_scale_f32 v6, vcc_lo, v12, 0x40e00000, v12
	v_div_fixup_f32 v1, v2, 0x40e00000, v1
	v_rcp_f32_e32 v85, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v2, v6, v81
	v_fma_f32 v87, -v84, v8, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v89.l, v1.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v88, -v16, v2, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v8, v87, v8
	v_div_scale_f32 v87, s0, v64, 0x40e00000, v64
	v_fma_f32 v90, -v15, v85, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v2, v88, v81
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v88, 1, v89
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v89, v87, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v90, v85
	v_div_scale_f32 v90, s1, v83, 0x40e00000, v83
	v_fma_f32 v16, -v16, v2, v6
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v6, v1, v88, 0x7fff
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v1, -v84, v89, v87
	v_mul_f32_e32 v88, v90, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v2, v16, v81, v2
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v91, 0xffff0000, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v89, v1, v8
	v_fma_f32 v1, -v15, v88, v90
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v2, v2, 0x40e00000, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v16, null, v91, v91, v82
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v12, -v84, v89, v87
	v_fmac_f32_e32 v88, v1, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v86.l, v2.h
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v84, v16
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v81.h, v86.h
	.loc	1 76 14 is_stmt 0               ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v1, v12, v8, v89
	v_fma_f32 v8, -v15, v88, v90
	s_mov_b32 vcc_lo, s1
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v89, null, v91, v91, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v15, v1, 0x40e00000, v64
	v_div_fmas_f32 v1, v8, v85, v88
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v85, null, v91, v91, v41
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v8, 1, v86
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v12, -v16, v84, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v64, v1, 0x40e00000, v83
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v81.l, v15.h
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v83, v85
	v_div_scale_f32 v87, vcc_lo, v82, v91, v82
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v86.l, v64.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v84, v12, v84
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v1, v2, v8, 0x7fff
	v_and_b32_e32 v2, 1, v81
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v92, null, v91, v91, v45
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v86, 1, v86
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v88, v87, v84
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v85, v83, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v8, v15, v2, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v90, v89
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v64, v86, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v86, v92
	v_fma_f32 v15, -v16, v88, v87
	v_fmac_f32_e32 v83, v81, v83
	v_div_scale_f32 v93, s0, v41, v91, v41
	v_div_scale_f32 v97, null, v91, v91, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v88, v15, v84
	v_mul_f32_e32 v94, v93, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v95, -v89, v90, 1.0
	v_fma_f32 v96, -v92, v86, 1.0
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v81, 0xffff0000, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v16, -v16, v88, v87
	v_fma_f32 v87, -v85, v94, v93
	v_fmac_f32_e32 v90, v95, v90
	v_div_scale_f32 v95, s1, v44, v91, v44
	v_fmac_f32_e32 v86, v96, v86
	v_div_scale_f32 v96, null, v91, v91, v49
	v_div_fmas_f32 v16, v16, v84, v88
	v_fmac_f32_e32 v94, v87, v83
	v_mul_f32_e32 v84, v95, v90
	v_rcp_f32_e32 v87, v97
	v_div_scale_f32 v88, s2, v45, v91, v45
	v_rcp_f32_e32 v98, v96
	v_div_fixup_f32 v16, v16, v91, v82
	v_fma_f32 v82, -v85, v94, v93
	v_fma_f32 v85, -v89, v84, v95
	v_mul_f32_e32 v93, v88, v86
	s_mov_b32 vcc_lo, s0
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v15, 0xffff0000, v2
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v99, -v97, v87, 1.0
	v_div_fmas_f32 v82, v82, v83, v94
	v_fmac_f32_e32 v84, v85, v90
	v_fma_f32 v83, -v92, v93, v88
	v_fma_f32 v94, -v96, v98, 1.0
	v_fmac_f32_e32 v87, v99, v87
	v_div_scale_f32 v85, s0, v48, v91, v48
	v_div_fixup_f32 v41, v82, v91, v41
	v_fma_f32 v82, -v89, v84, v95
	v_fmac_f32_e32 v93, v83, v86
	v_fmac_f32_e32 v98, v94, v98
	v_div_scale_f32 v94, null, v91, v91, v52
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v83, v85, v87
	v_div_scale_f32 v89, s3, v49, v91, v49
	v_div_fmas_f32 v82, v82, v90, v84
	v_fma_f32 v84, -v92, v93, v88
	v_rcp_f32_e32 v90, v94
	v_div_scale_f32 v95, null, v91, v91, v53
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v88, -v97, v83, v85
	v_mul_f32_e32 v92, v89, v98
	v_div_fmas_f32 v84, v84, v86, v93
	v_rcp_f32_e32 v86, v95
	v_div_fixup_f32 v44, v82, v91, v44
	v_fmac_f32_e32 v83, v88, v87
	v_fma_f32 v88, -v96, v92, v89
	v_fma_f32 v93, -v94, v90, 1.0
	v_div_fixup_f32 v45, v84, v91, v45
	v_div_scale_f32 v84, s1, v52, v91, v52
	v_fma_f32 v82, -v97, v83, v85
	v_fmac_f32_e32 v92, v88, v98
	v_fmac_f32_e32 v90, v93, v90
	v_fma_f32 v85, -v95, v86, 1.0
	v_div_scale_f32 v88, null, v91, v91, v56
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v93, null, v91, v91, v57
	v_div_fmas_f32 v82, v82, v87, v83
	v_fma_f32 v83, -v96, v92, v89
	v_mul_f32_e32 v87, v84, v90
	v_fmac_f32_e32 v86, v85, v86
	v_rcp_f32_e32 v85, v88
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v89, s0, v53, v91, v53
	v_div_fmas_f32 v83, v83, v98, v92
	v_fma_f32 v92, -v94, v87, v84
	v_rcp_f32_e32 v98, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v96, v89, v86
	v_div_fixup_f32 v48, v82, v91, v48
	v_div_fixup_f32 v49, v83, v91, v49
	v_fma_f32 v97, -v88, v85, 1.0
	v_fmac_f32_e32 v87, v92, v90
	v_div_scale_f32 v92, null, v91, v91, v60
	v_fma_f32 v82, -v95, v96, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v85, v97, v85
	v_div_scale_f32 v83, s2, v56, v91, v56
	v_fma_f32 v97, -v93, v98, 1.0
	v_fma_f32 v84, -v94, v87, v84
	v_rcp_f32_e32 v94, v92
	v_fmac_f32_e32 v96, v82, v86
	v_mul_f32_e32 v82, v83, v85
	v_fmac_f32_e32 v98, v97, v98
	v_div_scale_f32 v97, s3, v57, v91, v57
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v99, null, v91, v91, v61
	v_div_fmas_f32 v84, v84, v90, v87
	v_fma_f32 v87, -v95, v96, v89
	v_fma_f32 v89, -v88, v82, v83
	v_mul_f32_e32 v90, v97, v98
	v_fma_f32 v95, -v92, v94, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v52, v84, v91, v52
	v_div_fmas_f32 v86, v87, v86, v96
	v_fmac_f32_e32 v82, v89, v85
	v_rcp_f32_e32 v87, v99
	v_fma_f32 v89, -v93, v90, v97
	v_fmac_f32_e32 v94, v95, v94
	v_div_scale_f32 v95, s0, v60, v91, v60
	v_fma_f32 v83, -v88, v82, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v90, v89, v98
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v84, v95, v94
	v_div_fixup_f32 v53, v86, v91, v53
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v99, v87, 1.0
	v_div_scale_f32 v88, null, v91, v91, v65
	v_div_fmas_f32 v82, v83, v85, v82
	v_fma_f32 v83, -v93, v90, v97
	v_fma_f32 v85, -v92, v84, v95
	v_div_scale_f32 v93, null, v91, v91, v66
	v_fmac_f32_e32 v87, v86, v87
	v_rcp_f32_e32 v86, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v85, v94
	v_rcp_f32_e32 v85, v93
	v_div_scale_f32 v89, s1, v61, v91, v61
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v56, v82, v91, v56
	v_div_fmas_f32 v83, v83, v98, v90
	v_mul_f32_e32 v90, v89, v87
	v_fma_f32 v82, -v92, v84, v95
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v96, -v88, v86, 1.0
	v_div_scale_f32 v92, s2, v65, v91, v65
	v_fma_f32 v95, -v93, v85, 1.0
	v_div_fixup_f32 v57, v83, v91, v57
	v_fma_f32 v83, -v99, v90, v89
	v_fmac_f32_e32 v86, v96, v86
	v_div_scale_f32 v96, null, v91, v91, v69
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v91, v91, v70
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v90, v83, v87
	v_div_fmas_f32 v82, v82, v94, v84
	v_mul_f32_e32 v83, v92, v86
	v_rcp_f32_e32 v84, v96
	v_div_scale_f32 v94, s0, v66, v91, v66
	v_rcp_f32_e32 v98, v95
	v_div_fixup_f32 v60, v82, v91, v60
	v_fma_f32 v82, -v99, v90, v89
	v_fma_f32 v89, -v88, v83, v92
	v_mul_f32_e32 v97, v94, v85
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v99, -v96, v84, 1.0
	v_div_fmas_f32 v82, v82, v87, v90
	v_fmac_f32_e32 v83, v89, v86
	v_fma_f32 v87, -v93, v97, v94
	v_fma_f32 v90, -v95, v98, 1.0
	v_fmac_f32_e32 v84, v99, v84
	v_div_scale_f32 v89, s1, v69, v91, v69
	v_div_fixup_f32 v61, v82, v91, v61
	v_fma_f32 v82, -v88, v83, v92
	v_dual_fmac_f32 v97, v87, v85 :: v_dual_fmac_f32 v98, v90, v98
	v_div_scale_f32 v90, null, v81, v81, v73
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v87, v89, v84
	v_div_scale_f32 v88, s3, v70, v91, v70
	v_div_fmas_f32 v82, v82, v86, v83
	v_fma_f32 v83, -v93, v97, v94
	v_rcp_f32_e32 v92, v90
	v_div_scale_f32 v94, null, v81, v81, v74
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v86, -v96, v87, v89
	v_mul_f32_e32 v93, v88, v98
	v_div_fmas_f32 v83, v83, v85, v97
	v_rcp_f32_e32 v85, v94
	v_div_fixup_f32 v65, v82, v91, v65
	v_fmac_f32_e32 v87, v86, v84
	v_fma_f32 v86, -v95, v93, v88
	v_fma_f32 v97, -v90, v92, 1.0
	v_div_fixup_f32 v66, v83, v91, v66
	v_div_scale_f32 v83, s0, v73, v81, v73
	v_fma_f32 v82, -v96, v87, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v93, v86, v98 :: v_dual_fmac_f32 v92, v97, v92
	v_fma_f32 v86, -v94, v85, 1.0
	v_div_scale_f32 v89, null, v81, v81, v77
	s_mov_b32 vcc_lo, s1
.Ltmp66:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v12, 4, v14
.Ltmp67:
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v82, v82, v84, v87
	v_fma_f32 v84, -v95, v93, v88
	v_mul_f32_e32 v87, v83, v92
	v_fmac_f32_e32 v85, v86, v85
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v88, s1, v74, v81, v74
	v_div_scale_f32 v95, null, v81, v81, v78
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v96, v88, v85
	v_div_fmas_f32 v84, v84, v98, v93
	v_fma_f32 v93, -v90, v87, v83
	v_rcp_f32_e32 v98, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v89, v86, 1.0
	v_div_fixup_f32 v69, v82, v91, v69
	v_fma_f32 v82, -v94, v96, v88
	v_fmac_f32_e32 v87, v93, v92
	v_div_fixup_f32 v70, v84, v91, v70
	v_fmac_f32_e32 v86, v97, v86
	v_div_scale_f32 v84, s2, v77, v81, v77
	v_div_scale_f32 v91, null, v81, v81, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v95, v98, 1.0
	v_fma_f32 v83, -v90, v87, v83
	v_fmac_f32_e32 v96, v82, v85
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v82, v84, v86
	v_rcp_f32_e32 v90, v91
	v_fmac_f32_e32 v98, v93, v98
	v_div_scale_f32 v93, s3, v78, v81, v78
	v_div_fmas_f32 v83, v83, v92, v87
	v_fma_f32 v87, -v94, v96, v88
	v_div_scale_f32 v97, null, v81, v81, v79
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v88, -v89, v82, v84
	v_mul_f32_e32 v92, v93, v98
	v_div_fmas_f32 v85, v87, v85, v96
	v_rcp_f32_e32 v87, v97
	v_fma_f32 v94, -v91, v90, 1.0
	v_fmac_f32_e32 v82, v88, v86
	v_fma_f32 v88, -v95, v92, v93
	v_div_fixup_f32 v74, v85, v81, v74
	v_div_fixup_f32 v73, v83, v81, v73
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s0, v80, v81, v80
	v_fmac_f32_e32 v92, v88, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v97, v87, 1.0
	v_div_scale_f32 v88, null, v81, v81, v75
	v_fma_f32 v83, -v89, v82, v84
	v_dual_mul_f32 v84, v94, v90 :: v_dual_fmac_f32 v87, v85, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v85, v88
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v89, s1, v79, v81, v79
	v_div_fmas_f32 v82, v83, v86, v82
	v_fma_f32 v83, -v95, v92, v93
	v_fma_f32 v86, -v91, v84, v94
	v_div_scale_f32 v93, null, v81, v81, v76
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v88, v85, 1.0
	v_fmac_f32_e32 v84, v86, v90
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v83, v83, v98, v92
	v_mul_f32_e32 v92, v89, v87
	v_div_fixup_f32 v77, v82, v81, v77
	v_fma_f32 v82, -v91, v84, v94
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v81, v81, v71
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v78, v83, v81, v78
	v_fma_f32 v83, -v97, v92, v89
	v_div_scale_f32 v91, s2, v75, v81, v75
	v_fma_f32 v94, -v93, v86, 1.0
	v_div_fmas_f32 v82, v82, v90, v84
	v_rcp_f32_e32 v84, v95
	v_fmac_f32_e32 v92, v83, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v83, v91, v85 :: v_dual_fmac_f32 v86, v94, v86
	v_div_scale_f32 v90, s0, v76, v81, v76
	v_div_scale_f32 v94, null, v81, v81, v72
	v_div_fixup_f32 v80, v82, v81, v80
	v_fma_f32 v82, -v97, v92, v89
	v_fma_f32 v89, -v88, v83, v91
	v_mul_f32_e32 v96, v90, v86
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v83, v89, v85
	v_div_fmas_f32 v82, v82, v87, v92
	v_fma_f32 v87, -v93, v96, v90
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v89, s1, v71, v81, v71
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v64, 0xffff0000, v1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v92, -v94, v97, 1.0
	v_div_fixup_f32 v79, v82, v81, v79
	v_fma_f32 v82, -v88, v83, v91
	v_dual_fmac_f32 v96, v87, v86 :: v_dual_mul_f32 v87, v89, v84
	v_div_scale_f32 v91, null, v81, v81, v67
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v97, v92, v97
	v_div_scale_f32 v88, s3, v72, v81, v72
	v_div_fmas_f32 v82, v82, v85, v83
	v_fma_f32 v83, -v93, v96, v90
	v_fma_f32 v85, -v95, v87, v89
	v_rcp_f32_e32 v90, v91
	v_div_scale_f32 v93, null, v81, v81, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v92, v88, v97 :: v_dual_fmac_f32 v87, v85, v84
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v85, v93
	v_div_fmas_f32 v83, v83, v86, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v86, -v94, v92, v88
	v_div_fixup_f32 v75, v82, v81, v75
	v_fma_f32 v96, -v91, v90, 1.0
	v_fma_f32 v82, -v95, v87, v89
	v_div_fixup_f32 v76, v83, v81, v76
	v_fmac_f32_e32 v92, v86, v97
	v_div_scale_f32 v83, s0, v67, v81, v67
	v_fmac_f32_e32 v90, v96, v90
	v_fma_f32 v86, -v93, v85, 1.0
	v_div_scale_f32 v89, null, v81, v81, v62
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v98, null, v81, v81, v58
	v_div_fmas_f32 v82, v82, v84, v87
	v_fma_f32 v84, -v94, v92, v88
	v_mul_f32_e32 v87, v83, v90
	v_fmac_f32_e32 v85, v86, v85
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v88, s1, v68, v81, v68
	v_div_scale_f32 v94, null, v81, v81, v63
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v95, v88, v85
	v_div_fmas_f32 v84, v84, v97, v92
	v_fma_f32 v92, -v91, v87, v83
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v89, v86, 1.0
	v_div_fixup_f32 v71, v82, v81, v71
	v_fma_f32 v82, -v93, v95, v88
	v_fmac_f32_e32 v87, v92, v90
	v_div_fixup_f32 v72, v84, v81, v72
	v_fmac_f32_e32 v86, v96, v86
	v_div_scale_f32 v84, s2, v62, v81, v62
	v_div_scale_f32 v92, null, v81, v81, v59
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v94, v97, 1.0
	v_fma_f32 v83, -v91, v87, v83
	v_fmac_f32_e32 v95, v82, v85
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v82, v84, v86
	v_rcp_f32_e32 v91, v92
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s3, v63, v81, v63
	v_div_fmas_f32 v83, v83, v90, v87
	v_fma_f32 v87, -v93, v95, v88
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v88, -v89, v82, v84
	v_mul_f32_e32 v90, v96, v97
	v_div_fixup_f32 v67, v83, v81, v67
	v_div_fmas_f32 v85, v87, v85, v95
	v_rcp_f32_e32 v87, v98
	v_fma_f32 v93, -v92, v91, 1.0
	v_fmac_f32_e32 v82, v88, v86
	v_fma_f32 v88, -v94, v90, v96
	v_div_fixup_f32 v68, v85, v81, v68
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s0, v59, v81, v59
	v_fmac_f32_e32 v90, v88, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v98, v87, 1.0
	v_div_scale_f32 v88, null, v64, v64, v54
	v_fma_f32 v83, -v89, v82, v84
	v_mul_f32_e32 v84, v93, v91
	v_fmac_f32_e32 v87, v85, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v89, s1, v58, v81, v58
	v_div_fmas_f32 v82, v83, v86, v82
	v_fma_f32 v83, -v94, v90, v96
	v_fma_f32 v86, -v92, v84, v93
	v_div_scale_f32 v94, null, v64, v64, v55
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v62, v82, v81, v62
	v_fmac_f32_e32 v84, v86, v91
	v_rcp_f32_e32 v86, v94
	v_fma_f32 v95, -v88, v85, 1.0
	v_div_fmas_f32 v83, v83, v97, v90
	v_mul_f32_e32 v90, v89, v87
	v_fma_f32 v82, -v92, v84, v93
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v64, v64, v50
	v_div_fixup_f32 v63, v83, v81, v63
	v_fma_f32 v83, -v98, v90, v89
	v_div_scale_f32 v92, s2, v54, v64, v54
	v_fma_f32 v93, -v94, v86, 1.0
	v_div_fmas_f32 v82, v82, v91, v84
	v_rcp_f32_e32 v84, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v83, v87 :: v_dual_mul_f32 v83, v92, v85
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, null, v64, v64, v51
	v_div_scale_f32 v91, s0, v55, v64, v55
	v_div_fixup_f32 v59, v82, v81, v59
	v_fma_f32 v82, -v98, v90, v89
	v_fma_f32 v89, -v88, v83, v92
	v_rcp_f32_e32 v97, v93
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v96, v91, v86
	v_div_fmas_f32 v82, v82, v87, v90
	v_dual_fmac_f32 v83, v89, v85 :: v_dual_fmac_f32 v84, v98, v84
	v_div_scale_f32 v89, s1, v50, v64, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v87, -v94, v96, v91
	v_fma_f32 v90, -v93, v97, 1.0
	v_div_fixup_f32 v58, v82, v81, v58
	v_fma_f32 v81, -v88, v83, v92
	v_mul_f32_e32 v82, v89, v84
	v_div_scale_f32 v88, null, v64, v64, v46
	s_mov_b32 vcc_lo, s2
	v_dual_fmac_f32 v96, v87, v86 :: v_dual_fmac_f32 v97, v90, v97
	v_div_scale_f32 v87, s3, v51, v64, v51
	v_div_fmas_f32 v81, v81, v85, v83
	v_fma_f32 v85, -v95, v82, v89
	v_rcp_f32_e32 v90, v88
	v_div_scale_f32 v92, null, v64, v64, v47
	v_fma_f32 v83, -v94, v96, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v91, v87, v97 :: v_dual_fmac_f32 v82, v85, v84
	v_rcp_f32_e32 v85, v92
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v54, v81, v64, v54
	v_div_fmas_f32 v83, v83, v86, v96
	v_fma_f32 v86, -v93, v91, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v90, 1.0
	v_fma_f32 v81, -v95, v82, v89
	v_div_scale_f32 v89, null, v64, v64, v42
	v_div_fixup_f32 v55, v83, v64, v55
	v_fmac_f32_e32 v91, v86, v97
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v83, s0, v46, v64, v46
	v_fma_f32 v86, -v92, v85, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v75, v75
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v93, v91, v87
	v_dual_mul_f32 v84, v83, v90 :: v_dual_fmac_f32 v85, v86, v85
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v87, s1, v47, v64, v47
	v_div_scale_f32 v93, null, v64, v64, v43
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v94, v87, v85
	v_div_fmas_f32 v82, v82, v97, v91
	v_fma_f32 v91, -v88, v84, v83
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v89, v86, 1.0
	v_div_fixup_f32 v50, v81, v64, v50
	v_fma_f32 v81, -v92, v94, v87
	v_fmac_f32_e32 v84, v91, v90
	v_div_scale_f32 v91, null, v64, v64, v40
	v_div_fixup_f32 v51, v82, v64, v51
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v82, s2, v42, v64, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v93, v96, 1.0
	v_fma_f32 v83, -v88, v84, v83
	v_fmac_f32_e32 v94, v81, v85
	v_rcp_f32_e32 v88, v91
	s_mov_b32 vcc_lo, s0
	v_dual_mul_f32 v81, v82, v86 :: v_dual_fmac_f32 v96, v95, v96
	v_div_scale_f32 v95, s3, v43, v64, v43
	v_div_fmas_f32 v83, v83, v90, v84
	v_fma_f32 v84, -v92, v94, v87
	v_div_scale_f32 v97, null, v64, v64, v39
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v87, -v89, v81, v82
	v_mul_f32_e32 v90, v95, v96
	v_fma_f32 v92, -v91, v88, 1.0
	v_div_fmas_f32 v84, v84, v85, v94
	v_rcp_f32_e32 v85, v97
	v_fmac_f32_e32 v81, v87, v86
	v_fma_f32 v87, -v93, v90, v95
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s0, v40, v64, v40
	v_div_fixup_f32 v46, v83, v64, v46
	v_div_fixup_f32 v47, v84, v64, v47
	v_fma_f32 v82, -v89, v81, v82
	v_fmac_f32_e32 v90, v87, v96
	v_mul_f32_e32 v83, v92, v88
	v_fma_f32 v84, -v97, v85, 1.0
	v_div_scale_f32 v87, null, v64, v64, v37
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v89, s1, v39, v64, v39
	v_div_fmas_f32 v81, v82, v86, v81
	v_fma_f32 v82, -v93, v90, v95
	v_fma_f32 v86, -v91, v83, v92
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v93, null, v64, v64, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v86, v88
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v42, v81, v64, v42
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v82, v82, v96, v90
	v_mul_f32_e32 v90, v89, v85
	v_fma_f32 v81, -v91, v83, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v43, v82, v64, v43
	v_fma_f32 v82, -v97, v90, v89
	v_div_scale_f32 v91, s2, v37, v64, v37
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v92, -v93, v86, 1.0
	v_div_scale_f32 v94, null, v64, v64, v36
	v_div_fmas_f32 v81, v81, v88, v83
	v_fmac_f32_e32 v90, v82, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v92, v86
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v92, null, v64, v64, v35
	v_mul_f32_e32 v82, v91, v84
	v_div_scale_f32 v88, s0, v38, v64, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v92
	v_div_fixup_f32 v40, v81, v64, v40
	v_fma_f32 v81, -v97, v90, v89
	v_fma_f32 v89, -v87, v82, v91
	v_mul_f32_e32 v95, v88, v86
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v50, v50
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v81, v81, v85, v90
	v_fmac_f32_e32 v82, v89, v84
	v_fma_f32 v85, -v93, v95, v88
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v89, s1, v36, v64, v36
	v_fma_f32 v90, -v92, v96, 1.0
	v_div_fixup_f32 v39, v81, v64, v39
	v_fma_f32 v81, -v87, v82, v91
	v_fmac_f32_e32 v95, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v85, v89, v83 :: v_dual_fmac_f32 v96, v90, v96
	v_div_scale_f32 v90, null, v64, v64, v33
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v87, s3, v35, v64, v35
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v93, v95, v88
	v_fma_f32 v84, -v94, v85, v89
	v_rcp_f32_e32 v88, v90
	v_div_scale_f32 v93, null, v64, v64, v34
	v_mul_f32_e32 v91, v87, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v84, v83
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v84, v93
	v_div_fmas_f32 v82, v82, v86, v95
	v_fma_f32 v86, -v92, v91, v87
	v_div_fixup_f32 v37, v81, v64, v37
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v88, 1.0
	v_fma_f32 v81, -v94, v85, v89
	v_div_fixup_f32 v38, v82, v64, v38
	v_fmac_f32_e32 v91, v86, v96
	v_div_scale_f32 v82, s0, v33, v64, v33
	v_fmac_f32_e32 v88, v95, v88
	v_fma_f32 v86, -v93, v84, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v94, null, v15, v15, v30
	v_div_fmas_f32 v81, v81, v83, v85
	v_fma_f32 v83, -v92, v91, v87
	v_mul_f32_e32 v85, v82, v88
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, null, v15, v15, v32
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v87, s1, v34, v64, v34
	v_div_fmas_f32 v83, v83, v96, v91
	v_rcp_f32_e32 v89, v86
	v_fma_f32 v91, -v90, v85, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v92, v87, v84
	v_div_fixup_f32 v36, v81, v64, v36
	v_div_fixup_f32 v35, v83, v64, v35
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v85, v91, v88
	v_fma_f32 v81, -v93, v92, v87
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v96, null, v15, v15, v29
	v_fma_f32 v91, -v86, v89, 1.0
	v_fma_f32 v82, -v90, v85, v82
	v_div_scale_f32 v90, null, v15, v15, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v81, v84 :: v_dual_fmac_f32 v89, v91, v89
	v_div_scale_f32 v81, s2, v32, v15, v32
	v_rcp_f32_e32 v91, v90
	v_fma_f32 v95, -v94, v83, 1.0
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v85, -v93, v92, v87
	v_mul_f32_e32 v87, v81, v89
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v83, v95, v83
	v_div_scale_f32 v88, s0, v30, v15, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v95, -v86, v87, v81
	v_fma_f32 v93, -v90, v91, 1.0
	v_rcp_f32_e32 v98, v96
	v_div_fmas_f32 v84, v85, v84, v92
	v_mul_f32_e32 v97, v88, v83
	v_fmac_f32_e32 v87, v95, v89
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s3, v31, v15, v31
	v_div_fixup_f32 v33, v82, v64, v33
	v_div_fixup_f32 v34, v84, v64, v34
	v_fma_f32 v64, -v86, v87, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v93, v91
	v_div_scale_f32 v84, null, v15, v15, v28
	v_fma_f32 v85, -v94, v97, v88
	v_fma_f32 v82, -v96, v98, 1.0
	v_fma_f32 v81, -v90, v92, v93
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v97, v85, v83 :: v_dual_fmac_f32 v98, v82, v98
	v_fmac_f32_e32 v92, v81, v91
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v82, s1, v29, v15, v29
	v_div_fmas_f32 v64, v64, v89, v87
	v_fma_f32 v85, -v94, v97, v88
	v_div_scale_f32 v87, null, v15, v15, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v86, v82, v98
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v32, v64, v15, v32
	v_fma_f32 v88, -v84, v81, 1.0
	v_div_fmas_f32 v83, v85, v83, v97
	v_fma_f32 v85, -v90, v92, v93
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v90, -v96, v86, v82
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v88, s0, v28, v15, v28
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v86, v90, v98
	v_div_fmas_f32 v85, v85, v91, v92
	v_mul_f32_e32 v64, v88, v81
	v_div_fixup_f32 v30, v83, v15, v30
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v83, -v87, v89, 1.0
	v_fma_f32 v82, -v96, v86, v82
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v90, -v84, v64, v88
	v_div_fixup_f32 v31, v85, v15, v31
	v_div_scale_f32 v85, null, v15, v15, v23
	v_fmac_f32_e32 v89, v83, v89
	v_div_scale_f32 v83, s2, v27, v15, v27
	v_div_fmas_f32 v82, v82, v98, v86
	v_fmac_f32_e32 v64, v90, v81
	v_rcp_f32_e32 v91, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v83, v89
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v29, v82, v15, v29
	v_fma_f32 v82, -v84, v64, v88
	v_div_scale_f32 v90, null, v15, v15, v24
	v_fma_f32 v84, -v87, v86, v83
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v64, v82, v81, v64
	v_div_scale_f32 v81, null, v15, v15, v25
	v_fma_f32 v88, -v85, v91, 1.0
	v_rcp_f32_e32 v92, v90
	v_fmac_f32_e32 v86, v84, v89
	v_rcp_f32_e32 v84, v81
	v_div_scale_f32 v82, s0, v23, v15, v23
	v_fmac_f32_e32 v91, v88, v91
	v_div_scale_f32 v88, null, v15, v15, v26
	v_div_fixup_f32 v28, v64, v15, v28
	v_fma_f32 v83, -v87, v86, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v90, v92, 1.0
	v_rcp_f32_e32 v94, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v81, v84, 1.0
	v_mul_f32_e32 v87, v82, v91
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v92, v64, v92
	v_div_scale_f32 v64, s1, v24, v15, v24
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v93, null, v15, v15, v22
	v_div_fmas_f32 v83, v83, v89, v86
	v_fma_f32 v86, -v85, v87, v82
	v_mul_f32_e32 v89, v64, v92
	v_div_scale_f32 v95, s2, v25, v15, v25
	v_fma_f32 v96, -v88, v94, 1.0
	v_rcp_f32_e32 v97, v93
	v_fmac_f32_e32 v87, v86, v91
	v_fma_f32 v86, -v90, v89, v64
	v_mul_f32_e32 v98, v95, v84
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s3, v26, v15, v26
	v_div_fixup_f32 v27, v83, v15, v27
	v_fma_f32 v82, -v85, v87, v82
	v_fmac_f32_e32 v89, v86, v92
	v_fma_f32 v83, -v81, v98, v95
	v_mul_f32_e32 v85, v96, v94
	v_fma_f32 v86, -v93, v97, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v64, -v90, v89, v64
	v_fmac_f32_e32 v98, v83, v84
	v_fma_f32 v83, -v88, v85, v96
	v_fmac_f32_e32 v97, v86, v97
	v_div_scale_f32 v86, s0, v22, v15, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v81, v98, v95
	v_fmac_f32_e32 v85, v83, v94
	v_div_fmas_f32 v82, v82, v91, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v83, v86, v97
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v87, null, v15, v15, v17
	v_div_fmas_f32 v64, v64, v92, v89
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v23, v82, v15, v23
	v_div_fmas_f32 v81, v81, v84, v98
	v_fma_f32 v84, -v88, v85, v96
	v_fma_f32 v88, -v93, v83, v86
	v_rcp_f32_e32 v89, v87
	v_div_fixup_f32 v24, v64, v15, v24
	v_div_fixup_f32 v25, v81, v15, v25
	v_div_scale_f32 v81, null, v15, v15, v18
	v_fmac_f32_e32 v83, v88, v97
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v91, null, v15, v15, v21
	v_div_fmas_f32 v84, v84, v94, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v64, -v93, v83, v86
	v_fma_f32 v82, -v87, v89, 1.0
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v93, v91
	v_div_fixup_f32 v26, v84, v15, v26
	v_div_fmas_f32 v64, v64, v97, v83
	v_rcp_f32_e32 v83, v81
	v_fmac_f32_e32 v89, v82, v89
	v_div_scale_f32 v82, null, v15, v15, v19
	v_div_scale_f32 v84, null, v15, v15, v20
	v_div_scale_f32 v85, vcc_lo, v17, v15, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v86, v82
	v_rcp_f32_e32 v88, v84
	v_div_fixup_f32 v22, v64, v15, v22
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v64, -v81, v83, 1.0
	v_mul_f32_e32 v90, v85, v89
	v_fma_f32 v97, -v91, v93, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v63, v63
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v83, v64, v83
	v_div_scale_f32 v64, s0, v18, v15, v18
	v_fma_f32 v92, -v82, v86, 1.0
	v_fma_f32 v95, -v84, v88, 1.0
	v_fma_f32 v94, -v87, v90, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v96, v64, v83 :: v_dual_fmac_f32 v93, v97, v93
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v92, s1, v19, v15, v19
	v_fmac_f32_e32 v88, v95, v88
	v_div_scale_f32 v95, s2, v20, v15, v20
	v_fmac_f32_e32 v90, v94, v89
	v_fma_f32 v94, -v81, v96, v64
	v_div_scale_f32 v97, s3, v21, v15, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v98, v92, v86 :: v_dual_mul_f32 v99, v95, v88
	v_fmac_f32_e32 v96, v94, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v100, v97, v93
	v_fma_f32 v85, -v87, v90, v85
	v_fma_f32 v87, -v82, v98, v92
	v_fma_f32 v94, -v84, v99, v95
	v_fma_f32 v64, -v81, v96, v64
	v_fma_f32 v81, -v91, v100, v97
	v_div_fmas_f32 v85, v85, v89, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v98, v87, v86 :: v_dual_fmac_f32 v99, v94, v88
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v100, v81, v93
	v_div_fmas_f32 v64, v64, v83, v96
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v82, -v82, v98, v92
	v_fma_f32 v81, -v84, v99, v95
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v83, -v91, v100, v97
	v_div_fixup_f32 v17, v85, v15, v17
	v_div_fmas_f32 v82, v82, v86, v98
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v18, v64, v15, v18
	v_div_fmas_f32 v81, v81, v88, v99
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v19, v82, v15, v19
	v_div_fmas_f32 v83, v83, v93, v100
	s_mov_b32 s0, 0xc1000000
	v_div_fixup_f32 v20, v81, v15, v20
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v15, v83, v15, v21
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v41
	v_rndne_f32_e32 v41, v44
	v_rndne_f32_e32 v44, v45
	v_rndne_f32_e32 v45, v48
	v_rndne_f32_e32 v48, v49
	v_rndne_f32_e32 v49, v52
	v_rndne_f32_e32 v15, v15
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v64, v66
	v_rndne_f32_e32 v66, v70
	v_rndne_f32_e32 v70, v74
	v_rndne_f32_e32 v74, v78
	v_rndne_f32_e32 v78, v79
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v75, v75, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v79, v46
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v52, v53
	v_rndne_f32_e32 v53, v56
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v60
	v_rndne_f32_e32 v60, v61
	v_rndne_f32_e32 v61, v65
	v_rndne_f32_e32 v65, v69
	v_rndne_f32_e32 v69, v73
	v_rndne_f32_e32 v73, v77
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v29, v29
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v106, v15
	v_and_b32_e32 v15, 15, v16
	v_and_b32_e32 v16, 15, v21
	v_and_b32_e32 v21, 15, v49
	v_and_b32_e32 v49, 15, v50
	v_and_b32_e32 v50, 15, v51
	v_and_b32_e32 v51, 15, v79
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v79, 16, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v77, v80
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v20, v20
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v73, v73, s0, 0x40e00000
	v_med3_f32 v74, v74, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_cvt_i32_f32_e32 v85, v37
	v_and_b32_e32 v37, 15, v75
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v75, 6, v79
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v24, v24
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v77, v77, s0, 0x40e00000
	v_med3_f32 v78, v78, s0, 0x40e00000
	v_med3_f32 v76, v76, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v91, v32
	v_cvt_i32_f32_e32 v92, v30
	v_cvt_i32_f32_e32 v93, v31
	v_cvt_i32_f32_e32 v94, v29
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v5, 0, v5, v75
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v43, v43
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v83, v40
	v_cvt_i32_f32_e32 v84, v39
	v_cvt_i32_f32_e32 v86, v38
	v_cvt_i32_f32_e32 v99, v25
	v_cvt_i32_f32_e32 v100, v26
	v_cvt_i32_f32_e32 v101, v22
	v_cvt_i32_f32_e32 v102, v17
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v80, v47
	v_cvt_i32_f32_e32 v89, v33
	v_cvt_i32_f32_e32 v90, v34
	v_cvt_i32_f32_e32 v95, v28
	v_cvt_i32_f32_e32 v103, v18
	v_cvt_i32_f32_e32 v104, v19
	v_cvt_i32_f32_e32 v105, v20
	v_and_b32_e32 v17, 15, v41
	v_and_b32_e32 v18, 15, v44
	v_and_b32_e32 v19, 15, v45
	v_and_b32_e32 v20, 15, v48
	v_and_b32_e32 v22, 15, v52
	v_and_b32_e32 v28, 15, v64
	v_and_b32_e32 v29, 15, v65
	v_and_b32_e32 v30, 15, v66
	v_and_b32_e32 v31, 15, v69
	v_and_b32_e32 v32, 15, v70
	v_and_b32_e32 v33, 15, v73
	v_and_b32_e32 v34, 15, v74
	v_and_b32_e32 v44, 15, v63
	v_and_b32_e32 v47, 15, v54
	v_and_b32_e32 v48, 15, v55
	v_and_b32_e32 v63, 15, v91
	v_and_b32_e32 v64, 15, v92
	v_and_b32_e32 v65, 15, v93
	v_and_b32_e32 v66, 15, v94
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v5, v5, v9, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v81, v42
	v_cvt_i32_f32_e32 v96, v27
	v_cvt_i32_f32_e32 v97, v23
	v_cvt_i32_f32_e32 v98, v24
	v_and_b32_e32 v23, 15, v53
	v_and_b32_e32 v24, 15, v56
	v_and_b32_e32 v25, 15, v57
	v_and_b32_e32 v26, 15, v60
	v_and_b32_e32 v27, 15, v61
	v_and_b32_e32 v39, 15, v71
	v_and_b32_e32 v40, 15, v72
	v_and_b32_e32 v41, 15, v67
	v_and_b32_e32 v42, 15, v68
	v_and_b32_e32 v46, 15, v58
	v_and_b32_e32 v55, 15, v83
	v_and_b32_e32 v56, 15, v84
	v_and_b32_e32 v57, 15, v85
	v_and_b32_e32 v58, 15, v86
	v_and_b32_e32 v71, 15, v99
	v_and_b32_e32 v72, 15, v100
	v_and_b32_e32 v73, 15, v101
	v_and_b32_e32 v74, 15, v102
	v_cvt_i32_f32_e32 v87, v36
	v_cvt_i32_f32_e32 v88, v35
	v_and_b32_e32 v35, 15, v77
	v_and_b32_e32 v36, 15, v78
	v_and_b32_e32 v38, 15, v76
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v5, v[15:18]
	ds_store_b128 v5, v[23:26] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v4
	ds_load_b128 v[23:26], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v5, v[31:34]
	ds_store_b128 v5, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v4
	ds_load_b128 v[39:42], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v5, v[47:50]
	ds_store_b128 v5, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v4
	ds_load_b128 v[55:58], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v5, v[63:66]
	ds_store_b128 v5, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[63:66], v4
	ds_load_b128 v[71:74], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v5, v[19:22]
	ds_store_b128 v5, v[27:30] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v4
	ds_load_b128 v[27:30], v4 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v82, v43
	v_and_b32_e32 v43, 15, v62
	v_and_b32_e32 v45, 15, v59
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v5, v[35:38]
	ds_store_b128 v5, v[43:46] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v4
	ds_load_b128 v[43:46], v4 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v52, 15, v80
	v_and_b32_e32 v53, 15, v81
	v_and_b32_e32 v54, 15, v82
	v_and_b32_e32 v67, 15, v95
	v_and_b32_e32 v68, 15, v96
	v_and_b32_e32 v69, 15, v97
	v_and_b32_e32 v70, 15, v98
	v_and_b32_e32 v59, 15, v87
	v_and_b32_e32 v60, 15, v88
	v_and_b32_e32 v61, 15, v89
	v_and_b32_e32 v62, 15, v90
	v_and_b32_e32 v75, 15, v103
	v_and_b32_e32 v76, 15, v104
	v_and_b32_e32 v77, 15, v105
	v_and_b32_e32 v78, 15, v106
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s29, 31
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_barrier
	ds_store_b128 v5, v[51:54]
	ds_store_b128 v5, v[59:62] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v4
	ds_load_b128 v[59:62], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v5, v[67:70]
	ds_store_b128 v5, v[75:78] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[67:70], v4
	ds_load_b128 v[75:78], v4 offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v5, v23, 4, v14
	v_lshl_or_b32 v4, v24, 4, v15
	v_lshl_or_b32 v7, v25, 4, v16
	v_lshl_or_b32 v9, v26, 4, v17
	v_lshl_or_b32 v10, v27, 4, v18
	v_lshl_or_b32 v11, v28, 4, v19
	v_lshl_or_b32 v14, v29, 4, v20
	v_lshl_or_b32 v15, v30, 4, v21
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s28, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v12, s0, v12
	s_mul_i32 s2, s30, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v16, v39, 4, v31
	v_lshl_or_b32 v17, v40, 4, v32
	v_lshl_or_b32 v18, v41, 4, v33
	v_lshl_or_b32 v19, v42, 4, v34
	v_lshl_or_b32 v20, v43, 4, v35
	v_lshl_or_b32 v21, v44, 4, v36
	v_lshl_or_b32 v22, v45, 4, v37
	v_lshl_or_b32 v23, v46, 4, v38
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v39, s2, s1, v13
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v9.l
	v_and_b16 v2.l, 0xff, v7.l
	v_lshlrev_b16 v4.l, 8, v4.l
	v_and_b16 v4.h, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v15.l
	v_and_b16 v5.h, 0xff, v14.l
	v_lshlrev_b16 v6.l, 8, v11.l
	v_and_b16 v7.l, 0xff, v10.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v24, v55, 4, v47
	v_lshl_or_b32 v25, v56, 4, v48
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v41, v39, v12
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.h, v2.l, v1.l
	v_or_b16 v9.l, v4.h, v4.l
	v_or_b16 v10.h, v5.h, v5.l
	v_or_b16 v10.l, v7.l, v6.l
	v_lshlrev_b16 v1.l, 8, v19.l
	v_and_b16 v2.l, 0xff, v18.l
	v_lshlrev_b16 v4.l, 8, v17.l
	v_and_b16 v4.h, 0xff, v16.l
	v_lshlrev_b16 v5.l, 8, v23.l
	v_and_b16 v5.h, 0xff, v22.l
	v_lshlrev_b16 v6.l, 8, v21.l
	v_and_b16 v7.l, 0xff, v20.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s0, 4
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v32, v71, 4, v63
	v_lshl_or_b32 v33, v72, 4, v64
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v42, v12, s1, v39
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[9:10], v41, s[12:15], 0 offen
	v_or_b16 v9.h, v2.l, v1.l
	v_or_b16 v9.l, v4.h, v4.l
	v_or_b16 v10.h, v5.h, v5.l
	v_or_b16 v10.l, v7.l, v6.l
	v_lshlrev_b16 v4.l, 8, v25.l
	v_and_b16 v4.h, 0xff, v24.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v26, v57, 4, v49
	v_lshl_or_b32 v27, v58, 4, v50
	v_lshl_or_b32 v28, v59, 4, v51
	v_lshl_or_b32 v29, v60, 4, v52
	v_lshl_or_b32 v30, v61, 4, v53
	v_lshl_or_b32 v31, v62, 4, v54
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[9:10], v42, s[12:15], 0 offen
	v_or_b16 v9.l, v4.h, v4.l
	v_lshlrev_b16 v4.l, 8, v33.l
	v_and_b16 v4.h, 0xff, v32.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v34, v73, 4, v65
	v_lshl_or_b32 v35, v74, 4, v66
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v36, v75, 4, v67
	v_lshl_or_b32 v37, v76, 4, v68
	v_lshl_or_b32 v38, v77, 4, v69
	v_lshl_or_b32 v40, v78, 4, v70
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v27.l
	v_and_b16 v2.l, 0xff, v26.l
	v_lshlrev_b16 v5.l, 8, v31.l
	v_and_b16 v5.h, 0xff, v30.l
	v_lshlrev_b16 v6.l, 8, v29.l
	v_and_b16 v7.l, 0xff, v28.l
	v_or_b16 v11.l, v4.h, v4.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v4, 2, v79
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.h, v2.l, v1.l
	v_or_b16 v10.h, v5.h, v5.l
	v_or_b16 v10.l, v7.l, v6.l
	v_lshlrev_b16 v1.l, 8, v35.l
	v_and_b16 v2.l, 0xff, v34.l
	v_lshlrev_b16 v5.l, 8, v40.l
	v_and_b16 v5.h, 0xff, v38.l
	v_lshlrev_b16 v6.l, 8, v37.l
	v_and_b16 v7.l, 0xff, v36.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s2, s0, 5
	s_mul_i32 s0, s0, 48
	v_add3_u32 v43, v12, s2, v39
	v_add3_u32 v39, v12, s0, v39
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s29, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v11.h, v2.l, v1.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v7.l, v6.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v5, 0, v13
	v_mov_b16_e32 v2.l, v8.h
	v_mov_b16_e32 v1.l, v6.h
	v_add3_u32 v3, v4, v3, v13
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v6, v0, 63, s30
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_clause 0x1
	buffer_store_b64 v[9:10], v43, s[12:15], 0 offen
	buffer_store_b64 v[11:12], v39, s[12:15], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v5, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v3
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v2, v6, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s13, s11, 0xffff
	s_mov_b32 s12, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s28, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[12:15], 0 offen
.Ltmp68:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp69:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 221
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18556
; TotalNumSgprs: 40
; NumVgprs: 221
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     221
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
