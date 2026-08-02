	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x0
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_load_b32 s30, s[0:1], 0x38
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v13, 0xf0, v0
	v_lshrrev_b32_e32 v3, 2, v0
	v_and_b32_e32 v12, 15, v0
	v_lshlrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v88, 8, v0
	v_lshrrev_b32_e32 v83, 2, v13
	v_and_b32_e32 v89, 32, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v82, 48, v2
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s22, 63
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
	v_mul_lo_u32 v1, s30, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v3, s23, v83
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v9, v12, 4, v3
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[10:11], null, s23, 3, v[9:10]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_hi_u32 s4, s9, s10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v84, s23, 1, v9
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_add_i32 s9, s9, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v11, 14, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
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
	s_lshl_b32 s3, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v4, s3, v83
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s4, s4, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s30, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s7, s4, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s22, s4, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s7
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s8, s23, s3
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s3, v82
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s28, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s30, v4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s29, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s22, s8
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s6, s28, s30
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s4, v84
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v85, v1, v82, s6
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s4, v10
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s4, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s2, s29
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v6, s3, v85
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v1, 0x80000000, v3, s2
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s23, v3
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s29
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[14:17], v4, s[24:27], 0 offen
	buffer_load_b128 v[18:21], v5, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	s_and_b32 s13, s13, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s6, s3, 64
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[22:25], v4, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[26:29], v1, s[24:27], 0 offen
	buffer_load_b128 v[30:33], v3, s[24:27], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s6, v82
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s3, s23, 6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s6, v83
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s4, s3
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v4, s6, v85
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v5, s4, v9
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s30, v3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s4, v84
	v_add_nc_u32_e32 v3, s4, v10
	v_add_nc_u32_e32 v6, s23, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_mov_b32 s4, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s2
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[34:37], v4, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[38:41], v5, s[24:27], 0 offen
	buffer_load_b128 v[42:45], v6, s[24:27], 0 offen
	buffer_load_b128 v[46:49], v1, s[24:27], 0 offen
	buffer_load_b128 v[50:53], v3, s[24:27], 0 offen
	v_bfe_i32 v1, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v3, 1, v0
	v_lshlrev_b32_e32 v4, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v1, 0x420, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v3, 48, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v5, v1, v83
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v90, v2, v3
	v_lshlrev_b32_e32 v1, 6, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v91, v11, 10, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v2, 0, v90
	v_lshlrev_b32_e32 v5, 5, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v92, 0x90, v91
	v_xor_b32_e32 v93, 0x120, v91
	v_xor_b32_e32 v94, 0x1b0, v91
	v_xor_b32_e32 v95, 0x210, v91
	v_add_nc_u32_e32 v3, 0, v91
	v_xor_b32_e32 v96, 0x330, v91
	v_xor_b32_e32 v97, 0x3a0, v91
	v_add_nc_u32_e32 v6, 0, v92
	v_add_nc_u32_e32 v7, 0, v93
	v_add_nc_u32_e32 v8, 0, v94
	v_add_nc_u32_e32 v54, 0, v95
	v_add_nc_u32_e32 v55, 0, v96
	v_add_nc_u32_e32 v56, 0, v97
	v_add_nc_u32_e32 v57, 0x4000, v3
	v_add_nc_u32_e32 v58, 0x4000, v6
	v_add_nc_u32_e32 v59, 0x4000, v7
	v_add_nc_u32_e32 v60, 0x4000, v8
	v_add_nc_u32_e32 v61, 0x4000, v54
	v_add_nc_u32_e32 v62, 0x4000, v55
	v_add_nc_u32_e32 v63, 0x4000, v56
	s_waitcnt vmcnt(8)
	v_perm_b32 v64, v18, v14, 0x4000501
	v_perm_b32 v14, v18, v14, 0x6020703
	v_perm_b32 v18, v19, v15, 0x4000501
	v_perm_b32 v15, v19, v15, 0x6020703
	v_perm_b32 v19, v20, v16, 0x4000501
	v_perm_b32 v16, v20, v16, 0x6020703
	v_perm_b32 v20, v21, v17, 0x4000501
	v_perm_b32 v17, v21, v17, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v21, v30, v26, 0x4000501
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v2, v[22:25] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v22, v30, v26, 0x6020703
	v_perm_b32 v23, v31, v27, 0x4000501
	v_perm_b32 v24, v31, v27, 0x6020703
	v_perm_b32 v25, v32, v28, 0x4000501
	v_perm_b32 v26, v32, v28, 0x6020703
	v_perm_b32 v27, v33, v29, 0x4000501
	v_perm_b32 v28, v33, v29, 0x6020703
	v_perm_b32 v29, v64, v21, 0x7060302
	v_perm_b32 v21, v64, v21, 0x5040100
	v_perm_b32 v30, v14, v22, 0x7060302
	v_perm_b32 v14, v14, v22, 0x5040100
	v_perm_b32 v22, v18, v23, 0x7060302
	v_perm_b32 v18, v18, v23, 0x5040100
	v_perm_b32 v23, v15, v24, 0x7060302
	v_perm_b32 v15, v15, v24, 0x5040100
	v_perm_b32 v24, v19, v25, 0x7060302
	v_perm_b32 v19, v19, v25, 0x5040100
	v_perm_b32 v25, v16, v26, 0x7060302
	v_perm_b32 v16, v16, v26, 0x5040100
	v_perm_b32 v26, v20, v27, 0x7060302
	v_perm_b32 v20, v20, v27, 0x5040100
	v_perm_b32 v27, v17, v28, 0x7060302
	v_perm_b32 v17, v17, v28, 0x5040100
	ds_store_2addr_b32 v3, v29, v21 offset1:16
	ds_store_2addr_b32 v6, v30, v14 offset1:16
	ds_store_2addr_b32 v7, v22, v18 offset1:16
	ds_store_2addr_b32 v8, v23, v15 offset1:16
	ds_store_2addr_b32 v54, v24, v19 offset1:16
	ds_store_2addr_b32 v3, v25, v16 offset0:160 offset1:176
	ds_store_2addr_b32 v55, v26, v20 offset1:16
	ds_store_2addr_b32 v56, v27, v17 offset1:16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v2, v[34:37] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v42, v38, 0x4000501
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v50, v46, 0x4000501
	v_perm_b32 v6, v42, v38, 0x6020703
	v_perm_b32 v7, v50, v46, 0x6020703
	v_perm_b32 v8, v43, v39, 0x4000501
	v_perm_b32 v14, v51, v47, 0x4000501
	v_perm_b32 v15, v43, v39, 0x6020703
	v_perm_b32 v16, v51, v47, 0x6020703
	v_perm_b32 v17, v44, v40, 0x4000501
	v_perm_b32 v18, v52, v48, 0x4000501
	v_perm_b32 v19, v44, v40, 0x6020703
	v_perm_b32 v20, v52, v48, 0x6020703
	v_perm_b32 v21, v45, v41, 0x4000501
	v_perm_b32 v22, v53, v49, 0x4000501
	v_perm_b32 v23, v45, v41, 0x6020703
	v_perm_b32 v24, v53, v49, 0x6020703
	v_perm_b32 v25, v3, v2, 0x7060302
	v_perm_b32 v2, v3, v2, 0x5040100
	v_perm_b32 v3, v7, v6, 0x7060302
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
	ds_store_2addr_b32 v57, v25, v2 offset1:16
	ds_store_2addr_b32 v58, v3, v6 offset1:16
	ds_store_2addr_b32 v59, v7, v8 offset1:16
	ds_store_2addr_b32 v60, v14, v15 offset1:16
	ds_store_2addr_b32 v61, v16, v17 offset1:16
	ds_store_2addr_b32 v57, v18, v19 offset0:160 offset1:176
	ds_store_2addr_b32 v62, v20, v21 offset1:16
	ds_store_2addr_b32 v63, v22, v23 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v86, 48, v4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 0x1800, v5
	v_and_b32_e32 v3, 8, v0
	v_and_b32_e32 v2, 32, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v78, v12, 6, v86
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_or_b32 v87, 0x1c0, v1, v6
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v79, 16, v78
	v_xor_b32_e32 v80, 32, v78
	v_xor_b32_e32 v81, 48, v78
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[20:21], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
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
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v45, 0
	s_add_i32 s34, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s0, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr86
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr87
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[20:21], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_bfe_i32 v2, v0, 3, 1
	v_dual_mov_b32 v45, 0 :: v_dual_and_b32 v86, 48, v4
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s31, s5, 6
	s_add_i32 s3, s6, 64
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v3, 0x1800, v5
	v_and_b32_e32 v2, 0x210, v2
	v_bfe_i32 v4, v0, 5, 1
	v_lshl_or_b32 v78, v12, 6, v86
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v98, s23, v9
	v_and_or_b32 v87, 0x1c0, v1, v3
	v_xor_b32_e32 v1, v2, v86
	v_and_b32_e32 v2, 0x420, v4
	v_xor_b32_e32 v79, 16, v78
	v_xor_b32_e32 v80, 32, v78
	v_xor_b32_e32 v81, 48, v78
	v_or_b32_e32 v1, v87, v1
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v75, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v99, v1, v2
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_mov_b32_e32 v7, s10
	v_xor_b32_e32 v100, 16, v99
	v_xor_b32_e32 v101, 32, v99
	v_xor_b32_e32 v102, 48, v99
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_mov_b32_e32 v8, s11
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v15, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v14, 0
	s_add_i32 s34, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s31, s31, -3
	s_mov_b32 s33, 1
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s6, s5, 6
	s_mov_b32 s7, s4
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s4, s3, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v111, s7, v99
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v103, s4, v82
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v104, s4, v85
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v179, s34, v78
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v112, s7, v100
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v183, s34, v79
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v103
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v103, 0x80000000, v104, vcc_lo
	buffer_load_b128 v[167:170], v103, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[171:174], v111 offset:8192
	ds_load_b128 v[175:178], v112 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[119:122], v179
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[159:162], v111
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[123:126], v183
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[163:166], v112
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[135:138], v179 offset:1024
	ds_load_b128 v[139:142], v183 offset:1024
	ds_load_b128 v[151:154], v179 offset:2048
	ds_load_b128 v[155:158], v183 offset:2048
	ds_load_b128 v[179:182], v179 offset:3072
	ds_load_b128 v[183:186], v183 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[159:162], v[119:122], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[171:174], v[119:122], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[171:174], v[135:138], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[163:166], v[123:126], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[111:118], v[175:178], v[123:126], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[159:162], v[135:138], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[127:134], v[175:178], v[139:142], v[127:134] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[171:174], v[151:154], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[119:126], v[163:166], v[139:142], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[159:162], v[151:154], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[143:150], v[175:178], v[155:158], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[135:142], v[163:166], v[155:158], v[135:142] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[151:158], v[159:162], v[179:182], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[151:158], v[163:166], v[183:186], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[159:166], v[171:174], v[179:182], v[1:8] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v179, s7, v101
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[159:166], v[175:178], v[183:186], v[159:166] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v183, s34, v80
	ds_load_b128 v[171:174], v183
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[175:178], v179
	ds_load_b128 v[179:182], v179 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[175:178], v[171:174], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[179:182], v[171:174], v[111:118] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[171:174], v183 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[175:178], v[171:174], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[179:182], v[171:174], v[127:134] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[171:174], v183 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[175:178], v[171:174], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[179:182], v[171:174], v[143:150] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[171:174], v183 offset:3072
	v_add_nc_u32_e32 v183, s34, v81
	s_mov_b32 s34, s1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[159:166], v[179:182], v[171:174], v[159:166] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v179, s7, v102
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[151:158], v[175:178], v[171:174], v[151:158] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[171:174], v183
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[175:178], v179
	ds_load_b128 v[179:182], v179 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[103:110], v[175:178], v[171:174], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[111:118], v[179:182], v[171:174], v[111:118] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[171:174], v183 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v70, v70, v111
	v_add_f32_e32 v68, v68, v113
	v_add_f32_e32 v66, v66, v115
	v_dual_add_f32 v64, v64, v117 :: v_dual_add_f32 v69, v69, v112
	v_add_f32_e32 v65, v65, v116
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[119:126], v[175:178], v[171:174], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[127:134], v[179:182], v[171:174], v[127:134] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v123, v123
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v127, v127
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v62, v62, v119
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[171:174], v183 offset:2048
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v58, v58, v123
	v_add_f32_e32 v60, v60, v121
	v_add_f32_e32 v56, v56, v125
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v131, v131
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v54, v54, v127
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v120, v120
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v52, v52, v129
	v_add_f32_e32 v50, v50, v131
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v134, v134
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v48, v48, v133
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[175:178], v[171:174], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[143:150], v[179:182], v[171:174], v[143:150] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[171:174], v183 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
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
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v67, v67, v114 :: v_dual_add_f32 v44, v44, v136
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[151:158], v[175:178], v[171:174], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[159:166], v[179:182], v[171:174], v[159:166] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v171, v103
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v103, s4, v83
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s4, s23
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v172, v104
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s4, s22
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v176, v108
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v103
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v103, s4, v9
	v_add_nc_u32_e32 v104, s4, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v175, v107
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v73, v73, v176
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v173, v105
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	v_cndmask_b32_e32 v107, 0x80000000, v104, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v174, v106
	v_cvt_f32_i32_e32 v177, v109
	v_cvt_f32_i32_e32 v178, v110
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[103:106], v103, s[24:27], 0 offen
	buffer_load_b128 v[107:110], v107, s[24:27], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v151, v151
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v75, v75, v174
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
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v45, v45, v171
	v_dual_add_f32 v77, v77, v172 :: v_dual_add_f32 v76, v76, v173
	v_add_f32_e32 v74, v74, v175
	v_dual_add_f32 v72, v72, v177 :: v_dual_add_f32 v63, v63, v118
	v_add_f32_e32 v40, v40, v140
	v_dual_add_f32 v61, v61, v120 :: v_dual_add_f32 v42, v42, v138
	v_dual_add_f32 v59, v59, v122 :: v_dual_add_f32 v36, v36, v144
	v_dual_add_f32 v57, v57, v124 :: v_dual_add_f32 v38, v38, v142
	v_dual_add_f32 v55, v55, v126 :: v_dual_add_f32 v32, v32, v148
	v_dual_add_f32 v53, v53, v128 :: v_dual_add_f32 v34, v34, v146
	v_dual_add_f32 v51, v51, v130 :: v_dual_add_f32 v28, v28, v152
	v_dual_add_f32 v49, v49, v132 :: v_dual_add_f32 v30, v30, v150
	v_dual_add_f32 v47, v47, v134 :: v_dual_add_f32 v24, v24, v156
	v_dual_add_f32 v43, v43, v137 :: v_dual_add_f32 v26, v26, v154
	v_dual_add_f32 v41, v41, v139 :: v_dual_add_f32 v22, v22, v158
	v_dual_add_f32 v39, v39, v141 :: v_dual_add_f32 v20, v20, v160
	v_dual_add_f32 v37, v37, v143 :: v_dual_add_f32 v18, v18, v162
	v_dual_add_f32 v35, v35, v145 :: v_dual_add_f32 v16, v16, v164
	v_dual_add_f32 v31, v31, v149 :: v_dual_add_f32 v14, v14, v166
	v_add_f32_e32 v29, v29, v151
	v_add_f32_e32 v27, v27, v153
	v_add_f32_e32 v25, v25, v155
	v_add_f32_e32 v23, v23, v157
	v_add_f32_e32 v21, v21, v159
	v_add_f32_e32 v19, v19, v161
	v_add_f32_e32 v17, v17, v163
	v_add_f32_e32 v15, v15, v165
	v_dual_add_f32 v71, v71, v178 :: v_dual_add_f32 v46, v46, v135
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v179, v107, v103, 0x4000501
	v_perm_b32 v180, v107, v103, 0x6020703
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v103, s4, v84
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v181, v108, v104, 0x4000501
	v_perm_b32 v182, v108, v104, 0x6020703
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v104, s4, v10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v183, v109, v105, 0x4000501
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	v_perm_b32 v184, v109, v105, 0x6020703
	v_perm_b32 v185, v110, v106, 0x4000501
	v_cndmask_b32_e32 v107, 0x80000000, v104, vcc_lo
	v_perm_b32 v186, v110, v106, 0x6020703
	s_clause 0x1
	buffer_load_b128 v[103:106], v103, s[24:27], 0 offen
	buffer_load_b128 v[107:110], v107, s[24:27], 0 offen
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_add_i32 s4, s33, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s4, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s33, s4, 0
	s_add_i32 s7, s5, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s4, s33, 12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s4, 0
	s_mov_b32 s4, s0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s0, s33, 14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s1, s6, 0x8000
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s0, s0, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v33, v33, v147
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v113, s0, v97
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s31
	s_mov_b32 s5, s7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v187, v107, v103, 0x4000501
	v_perm_b32 v103, v107, v103, 0x6020703
	v_perm_b32 v107, v108, v104, 0x4000501
	v_perm_b32 v104, v108, v104, 0x6020703
	v_perm_b32 v108, v109, v105, 0x4000501
	v_perm_b32 v105, v109, v105, 0x6020703
	v_perm_b32 v109, v110, v106, 0x4000501
	v_perm_b32 v106, v110, v106, 0x6020703
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v110, s6, v90
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v111, v109, v185, 0x7060302
	v_perm_b32 v109, v109, v185, 0x5040100
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v110, v[167:170] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v110, v187, v179, 0x7060302
	v_perm_b32 v167, v187, v179, 0x5040100
	v_add_nc_u32_e32 v168, s0, v91
	v_perm_b32 v112, v106, v186, 0x7060302
	v_perm_b32 v106, v106, v186, 0x5040100
	ds_store_2addr_b32 v168, v110, v167 offset1:16
	v_perm_b32 v110, v103, v180, 0x7060302
	v_perm_b32 v103, v103, v180, 0x5040100
	v_add_nc_u32_e32 v167, s0, v92
	ds_store_2addr_b32 v167, v110, v103 offset1:16
	v_perm_b32 v103, v107, v181, 0x7060302
	v_perm_b32 v107, v107, v181, 0x5040100
	v_add_nc_u32_e32 v110, s0, v93
	ds_store_2addr_b32 v110, v103, v107 offset1:16
	v_perm_b32 v103, v104, v182, 0x7060302
	v_perm_b32 v104, v104, v182, 0x5040100
	v_add_nc_u32_e32 v107, s0, v94
	v_perm_b32 v110, v105, v184, 0x7060302
	v_perm_b32 v105, v105, v184, 0x5040100
	ds_store_2addr_b32 v107, v103, v104 offset1:16
	v_add_nc_u32_e32 v103, s0, v95
	v_perm_b32 v107, v108, v183, 0x7060302
	v_perm_b32 v108, v108, v183, 0x5040100
	v_add_nc_u32_e32 v104, s0, v96
	ds_store_2addr_b32 v103, v107, v108 offset1:16
	ds_store_2addr_b32 v168, v110, v105 offset0:160 offset1:176
	ds_store_2addr_b32 v104, v111, v109 offset1:16
	ds_store_2addr_b32 v113, v112, v106 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v3, v88 :: v_dual_mov_b32 v2, v89
.LBB0_7:                                ; %Flow72
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_and_b32_e32 v1, 1, v0
	s_mov_b32 s8, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x210, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v3, v3, v86
	v_cndmask_b32_e64 v2, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s29
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v3, v87, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v2, v3, v2
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
	v_add_nc_u32_e32 v82, s4, v3
	v_add_nc_u32_e32 v83, s4, v2
	ds_load_b128 v[150:153], v82 offset:8192
	ds_load_b128 v[154:157], v82
	ds_load_b128 v[158:161], v83 offset:8192
	ds_load_b128 v[162:165], v83
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v89, s15
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[6:9], v10 offset:8192
	ds_load_b128 v[146:149], v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v83, s9 :: v_dual_add_nc_u32 v10, s34, v78
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v126, s34, v79
	ds_load_b128 v[122:125], v10 offset:1024
	ds_load_b128 v[106:109], v10
	v_add_nc_u32_e32 v128, s34, v80
	ds_load_b128 v[166:169], v126 offset:1024
	ds_load_b128 v[110:113], v126
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v87, s13 :: v_dual_add_nc_u32 v90, s4, v4
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[170:173], v128 offset:1024
	ds_load_b128 v[114:117], v128
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v86, s12 :: v_dual_add_nc_u32 v127, s34, v81
	v_dual_mov_b32 v88, s14 :: v_dual_mov_b32 v85, s11
	v_mov_b32_e32 v84, s10
	v_mov_b32_e32 v82, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[174:177], v90 offset:8192
	ds_load_b128 v[178:181], v90
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[182:185], v127 offset:1024
	ds_load_b128 v[118:121], v127
	ds_load_b128 v[186:189], v10 offset:3072
	ds_load_b128 v[138:141], v10 offset:2048
	ds_load_b128 v[190:193], v126 offset:3072
	ds_load_b128 v[194:197], v126 offset:2048
	ds_load_b128 v[198:201], v128 offset:3072
	ds_load_b128 v[202:205], v128 offset:2048
	ds_load_b128 v[206:209], v127 offset:3072
	ds_load_b128 v[210:213], v127 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(16)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[162:165], v[106:109], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[158:161], v[106:109], v[82:89] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[154:157], v[110:113], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[150:153], v[110:113], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[162:165], v[122:125], v[82:89] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[146:149], v[114:117], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[6:9], v[114:117], v[98:105] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[158:161], v[138:141], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[178:181], v[118:121], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[154:157], v[166:169], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[174:177], v[118:121], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[158:161], v[122:125], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[162:165], v[138:141], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[162:165], v[186:189], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[158:161], v[186:189], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[150:153], v[166:169], v[114:121] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[150:153], v[194:197], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[146:149], v[170:173], v[106:113] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v99
	v_wmma_i32_16x16x16_iu8 v[82:89], v[150:153], v[190:193], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[6:9], v[170:173], v[114:121] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[6:9], v[202:205], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[106:113], v[178:181], v[182:185], v[106:113] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v69, v69, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[82:89], v[6:9], v[198:201], v[82:89] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v7, v92
	v_cvt_f32_i32_e32 v6, v91
	v_cvt_f32_i32_e32 v8, v93
	v_cvt_f32_i32_e32 v9, v94
	v_cvt_f32_i32_e32 v10, v104
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v76, v76, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v96
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v77, v77, v6
	v_add_f32_e32 v75, v75, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v95
	v_cvt_f32_i32_e32 v8, v97
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v72, v72, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v101
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v74, v74, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v98
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v73, v73, v6
	v_add_f32_e32 v71, v71, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v100
	v_cvt_f32_i32_e32 v8, v102
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v67, v67, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v106
	v_wmma_i32_16x16x16_iu8 v[114:121], v[174:177], v[182:185], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[154:157], v[194:197], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[154:157], v[190:193], v[138:145] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[174:177], v[210:213], v[130:137] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v62, v62, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v111
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v64, v64, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v109
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v66, v66, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v107
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v68, v68, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v105
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v70, v70, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v103
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v61, v61, v8
	v_add_f32_e32 v59, v59, v10
	v_add_f32_e32 v63, v63, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v110
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v65, v65, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v108
	v_cvt_f32_i32_e32 v8, v112
	v_cvt_f32_i32_e32 v10, v114
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v57, v57, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v116
	v_wmma_i32_16x16x16_iu8 v[122:129], v[146:149], v[202:205], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[146:149], v[198:201], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[174:177], v[206:209], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v52, v52, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v121
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v54, v54, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v119
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v56, v56, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v117
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v58, v58, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v115
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v60, v60, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v113
	v_wmma_i32_16x16x16_iu8 v[122:129], v[178:181], v[210:213], v[122:129] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v47, v47, v7
	v_add_f32_e32 v53, v53, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v120
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v55, v55, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v118
	v_cvt_f32_i32_e32 v7, v126
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v51, v51, v8
	v_add_f32_e32 v49, v49, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v50, v50, v9 :: v_dual_add_f32 v41, v41, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v123
	v_cvt_f32_i32_e32 v10, v124
	v_cvt_f32_i32_e32 v7, v131
	v_wmma_i32_16x16x16_iu8 v[138:145], v[178:181], v[206:209], v[138:145] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v44, v44, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v128
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v48, v48, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v125
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v43, v43, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v129
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v39, v39, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v133
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v36, v36, v7
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v136
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v42, v42, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v130
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v46, v46, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v127
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v34, v34, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v9, v138
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v38, v38, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v134
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v40, v40, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v132
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v37, v37, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v135
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v33, v33, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v139
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v35, v35, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v137
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v31, v31, v7
	v_add_f32_e32 v29, v29, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v141
	v_cvt_f32_i32_e32 v9, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v26, v26, v7
	v_add_f32_e32 v24, v24, v9
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v82
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v32, v32, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v140
	v_cvt_f32_i32_e32 v9, v84
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v28, v28, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v144
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v30, v30, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v142
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v27, v27, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v145
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v23, v23, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v25, v25, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v83
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v22, v22, v6 :: v_dual_add_f32 v21, v21, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v19, v19, v9 :: v_dual_add_f32 v18, v18, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v86
	v_cvt_f32_i32_e32 v7, v87
	v_cvt_f32_i32_e32 v9, v89
	v_cvt_f32_i32_e32 v10, v90
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v20, v20, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v8, v88
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v17, v17, v6 :: v_dual_add_f32 v16, v16, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v14, v14, v9 :: v_dual_add_f32 v45, v45, v10
	v_add_f32_e32 v15, v15, v8
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v105, 0
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
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v118, s1, v80
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v6, s0, v5
	v_add_nc_u32_e32 v10, s0, v3
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v140, s11 :: v_dual_add_nc_u32 v83, s0, v2
	v_dual_mov_b32 v135, s6 :: v_dual_add_nc_u32 v82, s0, v4
	v_mov_b32_e32 v139, s10
	v_mov_b32_e32 v137, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[2:5], v6 offset:8192
	ds_load_b128 v[6:9], v6
	ds_load_b128 v[126:129], v10 offset:8192
	ds_load_b128 v[149:152], v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v133, s4 :: v_dual_add_nc_u32 v10, s1, v78
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[153:156], v83 offset:8192
	ds_load_b128 v[157:160], v83
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v120, s1, v79
	ds_load_b128 v[110:113], v10 offset:1024
	ds_load_b128 v[94:97], v10
	ds_load_b128 v[161:164], v118 offset:1024
	ds_load_b128 v[102:105], v118
	ds_load_b128 v[165:168], v120 offset:1024
	ds_load_b128 v[106:109], v120
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v138, s9 :: v_dual_add_nc_u32 v119, s1, v81
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[169:172], v82 offset:8192
	ds_load_b128 v[173:176], v82
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v136, s7
	v_mov_b32_e32 v134, s5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[177:180], v119 offset:1024
	ds_load_b128 v[114:117], v119
	ds_load_b128 v[181:184], v10 offset:3072
	ds_load_b128 v[141:144], v10 offset:2048
	ds_load_b128 v[185:188], v120 offset:3072
	ds_load_b128 v[189:192], v120 offset:2048
	ds_load_b128 v[193:196], v118 offset:3072
	ds_load_b128 v[197:200], v118 offset:2048
	ds_load_b128 v[201:204], v119 offset:3072
	ds_load_b128 v[205:208], v119 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(16)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[157:160], v[94:97], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[153:156], v[94:97], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[157:160], v[110:113], v[133:140] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[78:85], v[149:152], v[106:109], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[126:129], v[106:109], v[86:93] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[149:152], v[165:168], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[6:9], v[102:105], v[78:85] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[86:93], v[2:5], v[102:105], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[153:156], v[110:113], v[133:140] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[118:125], v[153:156], v[141:144], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[173:176], v[114:117], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[169:172], v[114:117], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[157:160], v[141:144], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[157:160], v[181:184], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[153:156], v[181:184], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[126:129], v[165:168], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[149:152], v[189:192], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[126:129], v[189:192], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[149:152], v[185:188], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[126:129], v[185:188], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[6:9], v[161:164], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[2:5], v[161:164], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[6:9], v[197:200], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[2:5], v[197:200], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[6:9], v[193:196], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[2:5], v[193:196], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[173:176], v[177:180], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[169:172], v[177:180], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[173:176], v[205:208], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[169:172], v[205:208], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[173:176], v[201:204], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[169:172], v[201:204], v[133:140] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v6, v78
	v_cvt_f32_i32_e32 v7, v79
	v_cvt_f32_i32_e32 v8, v80
	v_cvt_f32_i32_e32 v9, v81
	v_cvt_f32_i32_e32 v10, v82
	v_cvt_f32_i32_e32 v82, v83
	v_cvt_f32_i32_e32 v83, v84
	v_cvt_f32_i32_e32 v84, v85
	v_cvt_f32_i32_e32 v85, v86
	v_cvt_f32_i32_e32 v86, v87
	v_cvt_f32_i32_e32 v87, v88
	v_cvt_f32_i32_e32 v88, v89
	v_cvt_f32_i32_e32 v89, v90
	v_cvt_f32_i32_e32 v90, v91
	v_cvt_f32_i32_e32 v91, v92
	v_cvt_f32_i32_e32 v92, v93
	v_cvt_f32_i32_e32 v93, v94
	v_cvt_f32_i32_e32 v94, v95
	v_cvt_f32_i32_e32 v95, v96
	v_cvt_f32_i32_e32 v96, v97
	v_cvt_f32_i32_e32 v97, v98
	v_cvt_f32_i32_e32 v98, v99
	v_cvt_f32_i32_e32 v99, v100
	v_cvt_f32_i32_e32 v100, v101
	v_cvt_f32_i32_e32 v101, v102
	v_cvt_f32_i32_e32 v102, v103
	v_cvt_f32_i32_e32 v103, v104
	v_cvt_f32_i32_e32 v104, v105
	v_cvt_f32_i32_e32 v105, v106
	v_cvt_f32_i32_e32 v106, v107
	v_cvt_f32_i32_e32 v107, v108
	v_cvt_f32_i32_e32 v108, v109
	v_cvt_f32_i32_e32 v109, v110
	v_cvt_f32_i32_e32 v110, v111
	v_cvt_f32_i32_e32 v111, v112
	v_cvt_f32_i32_e32 v112, v113
	v_cvt_f32_i32_e32 v113, v114
	v_cvt_f32_i32_e32 v114, v115
	v_cvt_f32_i32_e32 v115, v116
	v_cvt_f32_i32_e32 v116, v117
	v_cvt_f32_i32_e32 v117, v118
	v_cvt_f32_i32_e32 v118, v119
	v_cvt_f32_i32_e32 v119, v120
	v_cvt_f32_i32_e32 v120, v121
	v_cvt_f32_i32_e32 v121, v122
	v_cvt_f32_i32_e32 v122, v123
	v_cvt_f32_i32_e32 v123, v124
	v_cvt_f32_i32_e32 v124, v125
	v_cvt_f32_i32_e32 v125, v141
	v_cvt_f32_i32_e32 v126, v142
	v_cvt_f32_i32_e32 v127, v143
	v_cvt_f32_i32_e32 v128, v144
	v_cvt_f32_i32_e32 v129, v145
	v_cvt_f32_i32_e32 v130, v146
	v_cvt_f32_i32_e32 v131, v147
	v_cvt_f32_i32_e32 v132, v148
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
.LBB0_11:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v2, s28, v12
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v3, s22, v0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s25, s17, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 434 22 is_stmt 0              ; generate_amdgcn.py:434:22
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s24, s16
	.loc	1 435 14 is_stmt 1              ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v141, v13, 1, 0
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s28, s28, s23
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v4, 32, v2
	v_or_b32_e32 v5, 64, v2
	v_or_b32_e32 v78, 0x60, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_and_b32 s21, s21, 0xffff
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_clause 0x3
	buffer_load_u16 v79, v2, s[24:27], 0 offen
	buffer_load_u16 v80, v4, s[24:27], 0 offen
	buffer_load_u16 v81, v5, s[24:27], 0 offen
	buffer_load_u16 v78, v78, s[24:27], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s25, s19, 0xffff
	s_mov_b32 s24, s18
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v4, v45, v6
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v2, v3, s[24:27], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v5, v77, v7 :: v_dual_add_f32 v6, v76, v8
	v_dual_add_f32 v7, v75, v9 :: v_dual_add_f32 v8, v74, v10
	v_dual_add_f32 v9, v73, v82 :: v_dual_add_f32 v10, v72, v83
	v_dual_add_f32 v82, v71, v84 :: v_dual_add_f32 v83, v70, v85
	v_dual_add_f32 v84, v69, v86 :: v_dual_add_f32 v85, v68, v87
	v_dual_add_f32 v86, v67, v88 :: v_dual_add_f32 v87, v66, v89
	v_dual_add_f32 v88, v65, v90 :: v_dual_add_f32 v89, v64, v91
	v_dual_add_f32 v90, v63, v92 :: v_dual_add_f32 v91, v62, v93
	v_dual_add_f32 v92, v61, v94 :: v_dual_add_f32 v93, v60, v95
	v_dual_add_f32 v94, v59, v96 :: v_dual_add_f32 v95, v58, v97
	v_dual_add_f32 v96, v57, v98 :: v_dual_add_f32 v97, v56, v99
	v_dual_add_f32 v98, v55, v100 :: v_dual_add_f32 v99, v54, v101
	v_dual_add_f32 v100, v53, v102 :: v_dual_add_f32 v101, v52, v103
	v_dual_add_f32 v102, v51, v104 :: v_dual_add_f32 v103, v50, v105
	v_dual_add_f32 v104, v49, v106 :: v_dual_add_f32 v105, v48, v107
	v_dual_add_f32 v106, v47, v108 :: v_dual_add_f32 v107, v46, v109
	v_dual_add_f32 v108, v44, v110 :: v_dual_add_f32 v109, v43, v111
	v_dual_add_f32 v110, v42, v112 :: v_dual_add_f32 v111, v41, v113
	v_dual_add_f32 v112, v40, v114 :: v_dual_add_f32 v113, v39, v115
	v_dual_add_f32 v114, v38, v116 :: v_dual_add_f32 v115, v37, v117
	v_dual_add_f32 v116, v36, v118 :: v_dual_add_f32 v117, v35, v119
	v_dual_add_f32 v118, v34, v120 :: v_dual_add_f32 v119, v33, v121
	v_dual_add_f32 v120, v32, v122 :: v_dual_add_f32 v121, v31, v123
	v_dual_add_f32 v122, v30, v124 :: v_dual_add_f32 v123, v29, v125
	v_dual_add_f32 v124, v28, v126 :: v_dual_add_f32 v125, v27, v127
	v_dual_add_f32 v126, v26, v128 :: v_dual_add_f32 v127, v25, v129
	v_dual_add_f32 v128, v24, v130 :: v_dual_add_f32 v129, v23, v131
	v_dual_add_f32 v130, v22, v132 :: v_dual_add_f32 v131, v21, v133
	v_dual_add_f32 v132, v20, v134 :: v_dual_add_f32 v133, v19, v135
	v_dual_add_f32 v134, v18, v136 :: v_dual_add_f32 v135, v17, v137
	v_dual_add_f32 v136, v16, v138 :: v_dual_add_f32 v137, v15, v139
	v_dual_add_f32 v138, v14, v140 :: v_dual_lshlrev_b32 v139, 2, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v45, v45, v4, s2
	v_cndmask_b32_e64 v75, v75, v7, s2
	v_cndmask_b32_e64 v74, v74, v8, s2
	v_cndmask_b32_e64 v73, v73, v9, s2
	v_cndmask_b32_e64 v72, v72, v10, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v3, 1, v13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v71, v71, v82, s2
	v_cndmask_b32_e64 v70, v70, v83, s2
	v_cndmask_b32_e64 v69, v69, v84, s2
	v_cndmask_b32_e64 v68, v68, v85, s2
	v_cndmask_b32_e64 v67, v67, v86, s2
	v_cndmask_b32_e64 v66, v66, v87, s2
	v_cndmask_b32_e64 v65, v65, v88, s2
	v_cndmask_b32_e64 v64, v64, v89, s2
	v_cndmask_b32_e64 v63, v63, v90, s2
	v_cndmask_b32_e64 v82, v24, v128, s2
	v_cndmask_b32_e64 v83, v23, v129, s2
	v_cndmask_b32_e64 v84, v22, v130, s2
	v_cndmask_b32_e64 v85, v21, v131, s2
	v_cndmask_b32_e64 v86, v20, v132, s2
	v_cndmask_b32_e64 v87, v19, v133, s2
	v_cndmask_b32_e64 v88, v18, v134, s2
	v_cndmask_b32_e64 v89, v17, v135, s2
	v_cndmask_b32_e64 v60, v60, v93, s2
	v_cndmask_b32_e64 v62, v62, v91, s2
	v_cndmask_b32_e64 v61, v61, v92, s2
	v_cndmask_b32_e64 v59, v59, v94, s2
	v_cndmask_b32_e64 v58, v58, v95, s2
	v_cndmask_b32_e64 v57, v57, v96, s2
	v_cndmask_b32_e64 v56, v56, v97, s2
	v_cndmask_b32_e64 v55, v55, v98, s2
	v_cndmask_b32_e64 v54, v54, v99, s2
	v_cndmask_b32_e64 v53, v53, v100, s2
	v_cndmask_b32_e64 v52, v52, v101, s2
	v_cndmask_b32_e64 v51, v51, v102, s2
	v_cndmask_b32_e64 v50, v50, v103, s2
	v_cndmask_b32_e64 v49, v49, v104, s2
	v_cndmask_b32_e64 v48, v48, v105, s2
	v_cndmask_b32_e64 v47, v47, v106, s2
	v_cndmask_b32_e64 v44, v44, v108, s2
	v_cndmask_b32_e64 v77, v77, v5, s2
	v_cndmask_b32_e64 v46, v46, v107, s2
	v_cndmask_b32_e64 v43, v43, v109, s2
	v_cndmask_b32_e64 v76, v76, v6, s2
	v_cndmask_b32_e64 v38, v38, v114, s2
	v_cndmask_b32_e64 v37, v37, v115, s2
	v_cndmask_b32_e64 v36, v36, v116, s2
	v_cndmask_b32_e64 v34, v34, v118, s2
	v_cndmask_b32_e64 v42, v42, v110, s2
	v_cndmask_b32_e64 v41, v41, v111, s2
	v_cndmask_b32_e64 v40, v40, v112, s2
	v_cndmask_b32_e64 v39, v39, v113, s2
	v_cndmask_b32_e64 v35, v35, v117, s2
	v_cndmask_b32_e64 v33, v33, v119, s2
	v_cndmask_b32_e64 v32, v32, v120, s2
	v_cndmask_b32_e64 v31, v31, v121, s2
	v_cndmask_b32_e64 v30, v30, v122, s2
	v_cndmask_b32_e64 v29, v29, v123, s2
	v_cndmask_b32_e64 v28, v28, v124, s2
	v_cndmask_b32_e64 v27, v27, v125, s2
	v_cndmask_b32_e64 v26, v26, v126, s2
	v_cndmask_b32_e64 v25, v25, v127, s2
	v_cndmask_b32_e64 v16, v16, v136, s2
	v_cndmask_b32_e64 v15, v15, v137, s2
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v79, 16, v79
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v140, 5, v1
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v1, s23, v12
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v90, v14, v138, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_add3_u32 v4, 0, v139, v140
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v6, s23, 4, v1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v4, v11, 1, v4
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_lshl_add_u32 v5, s23, 5, v1
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v4, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v141
	ds_load_b128 v[17:20], v141 offset:16
	ds_load_b128 v[11:14], v141 offset:512
	ds_load_b128 v[21:24], v141 offset:528
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v4, s28, s22, v3
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v80, 16, v80
	v_lshlrev_b32_e32 v81, 16, v81
	v_lshlrev_b32_e32 v78, 16, v78
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_mov_b32 s22, s26
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v93, v9, v79
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mad_u64_u32 v[2:3], null, s23, 48, v[1:2]
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v92, v8, v79 :: v_dual_add_nc_u32 v3, 0x80, v4
	v_mul_f32_e32 v91, v7, v79
	v_mul_f32_e32 v94, v10, v79
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v95, v17, v79
	v_dual_mul_f32 v96, v18, v79 :: v_dual_mul_f32 v107, v8, v80
	v_mul_f32_e32 v97, v19, v79
	v_dual_mul_f32 v98, v20, v79 :: v_dual_mul_f32 v109, v10, v80
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v99, v11, v79 :: v_dual_mul_f32 v108, v9, v80
	v_dual_mul_f32 v100, v12, v79 :: v_dual_mul_f32 v111, v18, v80
	v_dual_mul_f32 v101, v13, v79 :: v_dual_mul_f32 v106, v7, v80
	v_dual_mul_f32 v102, v14, v79 :: v_dual_mul_f32 v113, v20, v80
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v103, v21, v79 :: v_dual_mul_f32 v112, v19, v80
	v_dual_mul_f32 v104, v22, v79 :: v_dual_mul_f32 v115, v12, v80
	v_dual_mul_f32 v105, v23, v79 :: v_dual_mul_f32 v110, v17, v80
	v_dual_mul_f32 v79, v24, v79 :: v_dual_mul_f32 v114, v11, v80
	v_dual_mul_f32 v116, v13, v80 :: v_dual_mul_f32 v121, v7, v81
	v_dual_mul_f32 v118, v21, v80 :: v_dual_mul_f32 v127, v19, v81
	v_mul_f32_e32 v131, v13, v81
	v_mul_f32_e32 v133, v21, v81
	v_dual_mul_f32 v13, v13, v78 :: v_dual_mul_f32 v76, v76, v93
	v_dual_mul_f32 v21, v21, v78 :: v_dual_mul_f32 v74, v74, v95
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v65, v65, v104 :: v_dual_mul_f32 v62, v62, v106
	v_dual_mul_f32 v63, v63, v79 :: v_dual_mul_f32 v60, v60, v108
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v117, v14, v80 :: v_dual_mul_f32 v122, v8, v81
	v_dual_mul_f32 v119, v22, v80 :: v_dual_mul_f32 v128, v20, v81
	v_dual_mul_f32 v120, v23, v80 :: v_dual_mul_f32 v123, v9, v81
	v_dual_mul_f32 v80, v24, v80 :: v_dual_mul_f32 v125, v17, v81
	v_dual_mul_f32 v124, v10, v81 :: v_dual_mul_f32 v7, v7, v78
	v_dual_mul_f32 v126, v18, v81 :: v_dual_mul_f32 v9, v9, v78
	v_dual_mul_f32 v129, v11, v81 :: v_dual_mul_f32 v8, v8, v78
	v_dual_mul_f32 v130, v12, v81 :: v_dual_mul_f32 v17, v17, v78
	v_dual_mul_f32 v132, v14, v81 :: v_dual_mul_f32 v19, v19, v78
	v_dual_mul_f32 v134, v22, v81 :: v_dual_mul_f32 v11, v11, v78
	v_dual_mul_f32 v135, v23, v81 :: v_dual_mul_f32 v20, v20, v78
	v_dual_mul_f32 v81, v24, v81 :: v_dual_mul_f32 v14, v14, v78
	v_mul_f32_e32 v10, v10, v78
	v_dual_mul_f32 v12, v12, v78 :: v_dual_mul_f32 v45, v45, v91
	v_dual_mul_f32 v22, v22, v78 :: v_dual_mul_f32 v77, v77, v92
	v_dual_mul_f32 v23, v23, v78 :: v_dual_mul_f32 v72, v72, v97
	v_dual_mul_f32 v24, v24, v78 :: v_dual_mul_f32 v73, v73, v96
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v75, v75, v94 :: v_dual_mul_f32 v70, v70, v99
	v_dual_mul_f32 v71, v71, v98 :: v_dual_mul_f32 v68, v68, v101
	v_dual_mul_f32 v61, v61, v107 :: v_dual_mul_f32 v58, v58, v110
	v_dual_mul_f32 v59, v59, v109 :: v_dual_mul_f32 v56, v56, v112
	v_dual_mul_f32 v13, v87, v13 :: v_dual_mul_f32 v14, v88, v14
	v_dual_mul_f32 v21, v89, v21 :: v_dual_mul_f32 v16, v16, v22
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_bfe_u32 v87, v62, 16, 1
	v_bfe_u32 v89, v60, 16, 1
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v18, v18, v78 :: v_dual_mul_f32 v9, v27, v9
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v10, v26, v10 :: v_dual_mul_f32 v11, v85, v11
	v_dual_mul_f32 v12, v86, v12 :: v_dual_mul_f32 v15, v15, v23
	v_mul_f32_e32 v22, v90, v24
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_bfe_u32 v23, v45, 16, 1
	v_bfe_u32 v24, v77, 16, 1
	v_bfe_u32 v26, v75, 16, 1
	v_bfe_u32 v78, v71, 16, 1
	v_bfe_u32 v86, v63, 16, 1
	v_bfe_u32 v88, v61, 16, 1
	v_bfe_u32 v90, v59, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v57, v57, v111 :: v_dual_mul_f32 v54, v54, v114
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s15, v62, v62
	v_cmp_o_f32_e64 s17, v60, v60
	v_add3_u32 v62, v62, v87, 0x7fff
	v_add3_u32 v60, v60, v89, 0x7fff
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v55, v55, v113 :: v_dual_mul_f32 v52, v52, v116
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_cmp_o_f32_e64 s0, v77, v77
	v_cmp_o_f32_e64 s2, v75, v75
	v_cmp_o_f32_e64 s6, v71, v71
	v_cmp_o_f32_e64 s14, v63, v63
	v_cmp_o_f32_e64 s16, v61, v61
	v_cmp_o_f32_e64 s18, v59, v59
	v_add3_u32 v23, v45, v23, 0x7fff
	v_add3_u32 v24, v77, v24, 0x7fff
	v_add3_u32 v26, v75, v26, 0x7fff
	v_add3_u32 v45, v71, v78, 0x7fff
	v_add3_u32 v63, v63, v86, 0x7fff
	v_add3_u32 v61, v61, v88, 0x7fff
	v_add3_u32 v59, v59, v90, 0x7fff
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v17, v25, v17 :: v_dual_mul_f32 v18, v82, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v25, v76, 16, 1
	v_cndmask_b16 v61.l, 0x7fff, v62.h, s15
	v_cndmask_b16 v59.l, 0x7fff, v60.h, s17
	v_bfe_u32 v60, v57, 16, 1
	v_bfe_u32 v62, v56, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v23.h, vcc_lo
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s0
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s2
	v_cndmask_b16 v26.h, 0x7fff, v45.h, s6
	v_cndmask_b16 v45.h, 0x7fff, v63.h, s14
	v_bfe_u32 v63, v55, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v53, v53, v115 :: v_dual_mul_f32 v50, v50, v118
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s1, v76, v76
	v_bfe_u32 v91, v58, 16, 1
	v_add3_u32 v25, v76, v25, 0x7fff
	v_add3_u32 v60, v57, v60, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	v_add3_u32 v57, v56, v62, 0x7fff
	v_cmp_o_f32_e64 s0, v56, v56
	v_add3_u32 v56, v55, v63, 0x7fff
	v_cmp_o_f32_e64 s19, v58, v58
	v_add3_u32 v58, v58, v91, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v25.h, s1
	v_cmp_o_f32_e64 s1, v55, v55
	v_bfe_u32 v55, v54, 16, 1
	v_cndmask_b16 v56.l, 0x7fff, v57.h, s0
	v_bfe_u32 v57, v53, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v51, v51, v117 :: v_dual_mul_f32 v48, v48, v120
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s19
	v_cndmask_b16 v58.h, 0x7fff, v60.h, vcc_lo
	v_bfe_u32 v60, v52, 16, 1
	v_add3_u32 v55, v54, v55, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_add3_u32 v54, v53, v57, 0x7fff
	v_cmp_o_f32_e64 s0, v53, v53
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v49, v49, v119 :: v_dual_mul_f32 v46, v46, v121
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v56.h, 0x7fff, v56.h, s1
	v_add3_u32 v53, v52, v60, 0x7fff
	v_cmp_o_f32_e64 s1, v52, v52
	v_cndmask_b16 v52.l, 0x7fff, v55.h, vcc_lo
	v_bfe_u32 v55, v51, 16, 1
	v_cndmask_b16 v52.h, 0x7fff, v54.h, s0
	v_bfe_u32 v54, v50, 16, 1
	v_bfe_u32 v57, v49, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v47, v47, v80 :: v_dual_mul_f32 v44, v44, v122
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v55, v51, v55, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_add3_u32 v51, v50, v54, 0x7fff
	v_cmp_o_f32_e64 s0, v50, v50
	v_add3_u32 v50, v49, v57, 0x7fff
	v_cndmask_b16 v53.l, 0x7fff, v53.h, s1
	v_cmp_o_f32_e64 s1, v49, v49
	v_bfe_u32 v49, v48, 16, 1
	v_cndmask_b16 v50.l, 0x7fff, v51.h, s0
	v_bfe_u32 v51, v47, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v43, v43, v123 :: v_dual_mul_f32 v42, v42, v124
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v53.h, 0x7fff, v55.h, vcc_lo
	v_bfe_u32 v54, v46, 16, 1
	v_add3_u32 v49, v48, v49, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_add3_u32 v48, v47, v51, 0x7fff
	v_cmp_o_f32_e64 s0, v47, v47
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s1
	v_add3_u32 v47, v46, v54, 0x7fff
	v_cmp_o_f32_e64 s1, v46, v46
	v_cndmask_b16 v46.l, 0x7fff, v49.h, vcc_lo
	v_bfe_u32 v49, v44, 16, 1
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s0
	v_bfe_u32 v48, v43, 16, 1
	v_bfe_u32 v51, v42, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v41, v41, v125 :: v_dual_mul_f32 v40, v40, v126
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v49, v44, v49, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_add3_u32 v44, v43, v48, 0x7fff
	v_cmp_o_f32_e64 s0, v43, v43
	v_add3_u32 v43, v42, v51, 0x7fff
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v39, v39, v127 :: v_dual_mul_f32 v38, v38, v128
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s1
	v_cmp_o_f32_e64 s1, v42, v42
	v_bfe_u32 v42, v41, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s0
	v_bfe_u32 v44, v40, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v37, v37, v129 :: v_dual_mul_f32 v36, v36, v130
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v47.h, 0x7fff, v49.h, vcc_lo
	v_bfe_u32 v48, v39, 16, 1
	v_add3_u32 v42, v41, v42, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_add3_u32 v41, v40, v44, 0x7fff
	v_cmp_o_f32_e64 s0, v40, v40
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s1
	v_add3_u32 v40, v39, v48, 0x7fff
	v_cmp_o_f32_e64 s1, v39, v39
	v_cndmask_b16 v39.l, 0x7fff, v42.h, vcc_lo
	v_bfe_u32 v42, v38, 16, 1
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s0
	v_bfe_u32 v41, v37, 16, 1
	v_bfe_u32 v44, v36, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v35, v35, v131 :: v_dual_mul_f32 v34, v34, v132
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v42, v38, v42, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	v_add3_u32 v38, v37, v41, 0x7fff
	v_cmp_o_f32_e64 s0, v37, v37
	v_add3_u32 v37, v36, v44, 0x7fff
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v33, v33, v133 :: v_dual_mul_f32 v32, v32, v134
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s1
	v_cmp_o_f32_e64 s1, v36, v36
	v_bfe_u32 v36, v35, 16, 1
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s0
	v_bfe_u32 v38, v34, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v31, v31, v135 :: v_dual_mul_f32 v30, v30, v81
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v40.h, 0x7fff, v42.h, vcc_lo
	v_bfe_u32 v41, v33, 16, 1
	v_add3_u32 v36, v35, v36, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_add3_u32 v35, v34, v38, 0x7fff
	v_cmp_o_f32_e64 s0, v34, v34
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s1
	v_add3_u32 v34, v33, v41, 0x7fff
	v_cmp_o_f32_e64 s1, v33, v33
	v_cndmask_b16 v33.l, 0x7fff, v36.h, vcc_lo
	v_bfe_u32 v36, v32, 16, 1
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s0
	v_bfe_u32 v35, v31, 16, 1
	v_bfe_u32 v38, v30, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v7, v29, v7 :: v_dual_mul_f32 v8, v28, v8
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_add3_u32 v36, v32, v36, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_add3_u32 v32, v31, v35, 0x7fff
	v_cmp_o_f32_e64 s0, v31, v31
	v_add3_u32 v31, v30, v38, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s1
	v_cmp_o_f32_e64 s1, v30, v30
	v_bfe_u32 v30, v7, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v32.h, s0
	v_bfe_u32 v32, v8, 16, 1
	v_bfe_u32 v35, v9, 16, 1
	v_cndmask_b16 v34.h, 0x7fff, v36.h, vcc_lo
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s1
	v_add3_u32 v30, v7, v30, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_add3_u32 v7, v8, v32, 0x7fff
	v_cmp_o_f32_e64 s0, v8, v8
	v_add3_u32 v8, v9, v35, 0x7fff
	v_cmp_o_f32_e64 s1, v9, v9
	v_bfe_u32 v9, v10, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v19, v83, v19 :: v_dual_mul_f32 v20, v84, v20
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v7.l, 0x7fff, v30.h, vcc_lo
	v_bfe_u32 v30, v17, 16, 1
	v_bfe_u32 v32, v18, 16, 1
	v_add3_u32 v9, v10, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s0
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s1
	v_add3_u32 v10, v17, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v17, v17
	v_add3_u32 v17, v18, v32, 0x7fff
	v_cmp_o_f32_e64 s1, v18, v18
	v_cndmask_b16 v8.h, 0x7fff, v9.h, vcc_lo
	v_bfe_u32 v9, v19, 16, 1
	v_bfe_u32 v18, v20, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s0
	v_cndmask_b16 v10.h, 0x7fff, v17.h, s1
	v_bfe_u32 v17, v11, 16, 1
	v_add3_u32 v9, v19, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v18, v20, v18, 0x7fff
	v_cmp_o_f32_e64 s0, v20, v20
	v_add3_u32 v17, v11, v17, 0x7fff
	v_cmp_o_f32_e64 s1, v11, v11
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_bfe_u32 v11, v12, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v18.h, s0
	v_bfe_u32 v18, v13, 16, 1
	v_bfe_u32 v19, v14, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v69, v69, v100 :: v_dual_mul_f32 v66, v66, v103
	v_dual_mul_f32 v67, v67, v102 :: v_dual_mul_f32 v64, v64, v105
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v27, v74, 16, 1
	v_bfe_u32 v28, v73, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s1
	v_add3_u32 v11, v12, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_add3_u32 v12, v13, v18, 0x7fff
	v_cmp_o_f32_e64 s0, v13, v13
	v_add3_u32 v13, v14, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v14, v14
	v_bfe_u32 v14, v21, 16, 1
	v_cmp_o_f32_e64 s3, v74, v74
	v_cmp_o_f32_e64 s4, v73, v73
	v_bfe_u32 v29, v72, 16, 1
	v_bfe_u32 v79, v70, 16, 1
	v_bfe_u32 v80, v69, 16, 1
	v_bfe_u32 v81, v68, 16, 1
	v_bfe_u32 v82, v67, 16, 1
	v_bfe_u32 v83, v66, 16, 1
	v_bfe_u32 v84, v65, 16, 1
	v_bfe_u32 v85, v64, 16, 1
	v_add3_u32 v27, v74, v27, 0x7fff
	v_add3_u32 v28, v73, v28, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s0
	v_bfe_u32 v12, v16, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s1
	v_add3_u32 v13, v21, v14, 0x7fff
	v_bfe_u32 v14, v15, 16, 1
	v_bfe_u32 v18, v22, 16, 1
	v_cmp_o_f32_e64 s5, v72, v72
	v_cmp_o_f32_e64 s7, v70, v70
	v_cmp_o_f32_e64 s8, v69, v69
	v_cmp_o_f32_e64 s9, v68, v68
	v_cmp_o_f32_e64 s10, v67, v67
	v_cmp_o_f32_e64 s11, v66, v66
	v_cmp_o_f32_e64 s12, v65, v65
	v_cmp_o_f32_e64 s13, v64, v64
	v_add3_u32 v29, v72, v29, 0x7fff
	v_add3_u32 v70, v70, v79, 0x7fff
	v_add3_u32 v69, v69, v80, 0x7fff
	v_add3_u32 v68, v68, v81, 0x7fff
	v_add3_u32 v67, v67, v82, 0x7fff
	v_add3_u32 v66, v66, v83, 0x7fff
	v_add3_u32 v65, v65, v84, 0x7fff
	v_add3_u32 v64, v64, v85, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v27.h, s3
	v_cndmask_b16 v25.h, 0x7fff, v28.h, s4
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v12, v16, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v16, v16
	v_add3_u32 v14, v15, v14, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s1, v15, v15
	v_add3_u32 v15, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s2, v22, v22
	v_cndmask_b16 v26.l, 0x7fff, v29.h, s5
	v_cndmask_b16 v27.l, 0x7fff, v70.h, s7
	v_cndmask_b16 v27.h, 0x7fff, v69.h, s8
	v_cndmask_b16 v28.l, 0x7fff, v68.h, s9
	v_cndmask_b16 v28.h, 0x7fff, v67.h, s10
	v_cndmask_b16 v29.l, 0x7fff, v66.h, s11
	v_cndmask_b16 v29.h, 0x7fff, v65.h, s12
	v_cndmask_b16 v45.l, 0x7fff, v64.h, s13
	v_cndmask_b16 v12.l, 0x7fff, v13.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v14.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v15.h, s2
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s16
	v_dual_cndmask_b32 v18, v29, v27 :: v_dual_cndmask_b32 v21, v28, v45
	v_cndmask_b32_e32 v20, v45, v28, vcc_lo
	v_dual_cndmask_b32 v28, v46, v53 :: v_dual_cndmask_b32 v35, v40, v43
	v_cndmask_b32_e32 v30, v39, v47, vcc_lo
	v_cndmask_b32_e32 v32, v47, v39, vcc_lo
	v_cndmask_b32_e32 v36, v43, v40, vcc_lo
	v_cndmask_b32_e32 v38, v34, v37, vcc_lo
	v_dual_cndmask_b32 v34, v37, v34 :: v_dual_cndmask_b32 v37, v31, v33
	v_cndmask_b32_e32 v31, v33, v31, vcc_lo
	v_cndmask_b32_e32 v33, v10, v7, vcc_lo
	v_cndmask_b32_e32 v7, v7, v10, vcc_lo
	v_dual_cndmask_b32 v39, v9, v8 :: v_dual_cndmask_b32 v8, v8, v9
	v_dual_cndmask_b32 v40, v12, v17 :: v_dual_cndmask_b32 v9, v17, v12
	v_dual_cndmask_b32 v41, v0, v11 :: v_dual_mov_b32 v10, 0x5410
	v_mov_b32_e32 v12, 0x7632
	v_cndmask_b16 v59.h, 0x7fff, v59.h, s18
	v_dual_cndmask_b32 v14, v23, v25 :: v_dual_cndmask_b32 v15, v26, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v10, 0x1054, v10, vcc_lo
	v_cndmask_b32_e32 v12, 0x3276, v12, vcc_lo
	v_dual_cndmask_b32 v16, v24, v26 :: v_dual_cndmask_b32 v19, v27, v29
	v_cndmask_b32_e32 v13, v25, v23, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v10, v10, 8, v10
	v_lshl_or_b32 v12, v12, 8, v12
	v_dual_cndmask_b32 v22, v58, v61 :: v_dual_cndmask_b32 v23, v61, v58
	v_dual_cndmask_b32 v24, v56, v59 :: v_dual_cndmask_b32 v25, v59, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v10, 0x540054, v10
	v_and_b32_e32 v12, 0x760076, v12
	v_dual_cndmask_b32 v26, v50, v52 :: v_dual_cndmask_b32 v29, v53, v46
	v_cndmask_b32_e32 v27, v52, v50, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v10, v10, 4, v10
	v_lshl_or_b32 v12, v12, 4, v12
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v0, v11, v0, vcc_lo
	v_permlanex16_b32 v11, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v42, 0x5040504, v10
	v_and_b32_e32 v43, 0x7060706, v12
	v_permlanex16_b32 v16, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v36, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v34, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v11, v13, v42
	v_perm_b32 v8, v11, v13, v43
	v_perm_b32 v9, v14, v15, v42
	v_perm_b32 v10, v14, v15, v43
	.loc	1 448 18 is_stmt 0              ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v1, v4, v1, 1
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_perm_b32 v11, v16, v18, v42
	v_perm_b32 v12, v16, v18, v43
	v_perm_b32 v13, v17, v20, v42
	v_perm_b32 v14, v17, v20, v43
	v_perm_b32 v15, v19, v22, v42
	v_perm_b32 v16, v19, v22, v43
	v_perm_b32 v17, v21, v24, v42
	v_perm_b32 v18, v21, v24, v43
	v_perm_b32 v19, v23, v26, v42
	v_perm_b32 v20, v23, v26, v43
	v_perm_b32 v21, v25, v28, v42
	v_perm_b32 v22, v25, v28, v43
	v_perm_b32 v23, v27, v30, v42
	v_perm_b32 v24, v27, v30, v43
	v_perm_b32 v25, v29, v35, v42
	v_perm_b32 v26, v29, v35, v43
	v_perm_b32 v27, v32, v38, v42
	v_perm_b32 v28, v32, v38, v43
	v_perm_b32 v29, v31, v37, v42
	v_perm_b32 v30, v31, v37, v43
	v_perm_b32 v31, v34, v33, v42
	v_perm_b32 v32, v34, v33, v43
	v_perm_b32 v33, v36, v39, v42
	v_perm_b32 v34, v36, v39, v43
	v_add_lshl_u32 v39, v4, v6, 1
	s_mov_b32 s23, s27
	v_perm_b32 v37, v0, v41, v42
	v_perm_b32 v38, v0, v41, v43
	v_add_lshl_u32 v0, v3, v6, 1
	s_clause 0x2
	buffer_store_b128 v[7:10], v1, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v1, s[20:23], 0 offen offset:256
	buffer_store_b128 v[15:18], v39, s[20:23], 0 offen
	v_add_lshl_u32 v1, v4, v5, 1
	v_add_lshl_u32 v5, v3, v5, 1
	v_add_lshl_u32 v4, v4, v2, 1
	v_perm_b32 v35, v44, v40, v42
	v_perm_b32 v36, v44, v40, v43
	v_add_lshl_u32 v2, v3, v2, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[20:23], 0 offen
	buffer_store_b128 v[23:26], v1, s[20:23], 0 offen
	buffer_store_b128 v[27:30], v5, s[20:23], 0 offen
	buffer_store_b128 v[31:34], v4, s[20:23], 0 offen
	buffer_store_b128 v[35:38], v2, s[20:23], 0 offen
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 214
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11924
; TotalNumSgprs: 37
; NumVgprs: 214
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     214
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
