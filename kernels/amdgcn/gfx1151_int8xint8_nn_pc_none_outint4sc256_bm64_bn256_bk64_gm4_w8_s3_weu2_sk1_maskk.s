	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[28:29], s[0:1], 0x30
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v62, 0xf0, v0
	v_and_b32_e32 v61, 15, v0
	v_and_b32_e32 v64, 3, v0
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v65, 14, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v82, 2, v62
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v57, 4, v61
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v63, 4, v64
	v_lshlrev_b32_e32 v85, 6, v0
	v_and_b32_e32 v86, 8, v0
	v_and_b32_e32 v87, 32, v0
	s_load_b32 s34, s[0:1], 0x38
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s28, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s10, s7, 31
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
	s_add_i32 s7, s7, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s8, s4, 2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[58:59], null, s29, v82, v[57:58]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s9, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[59:60], null, s29, 3, v[58:59]
	v_lshl_add_u32 v83, s29, 1, v58
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v60, 4, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s5
	s_mul_hi_u32 s9, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s9
	s_xor_b32 s9, s2, s8
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s5, s4
	s_sub_i32 s6, s6, s10
	s_add_i32 s10, s5, 1
	s_sub_i32 s11, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s10, s5
	s_cselect_b32 s6, s11, s6
	s_add_i32 s10, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s10, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s9
	s_sub_i32 s9, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s10, s9, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s9, s9, s8
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s11, s7, s10
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s9
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s11, s11, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s9, s2
	s_abs_i32 s12, s11
	s_load_b128 s[4:7], s[0:1], 0x0
	s_cvt_f32_u32 s13, s12
	s_sub_i32 s14, 0, s12
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s13
	v_readfirstlane_b32 s13, v1
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v1, s34, v2
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s13, s13, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_cvt_u32_f32 s13, s13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s14, s14, s13
	s_mul_hi_u32 s8, s13, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s13, s13, s8
	s_mul_hi_u32 s8, s9, s13
	s_xor_b32 s13, s2, s11
	s_mul_i32 s14, s8, s12
	s_ashr_i32 s13, s13, 31
	s_sub_i32 s9, s9, s14
	s_add_i32 s14, s8, 1
	s_sub_i32 s15, s9, s12
	s_cmp_ge_u32 s9, s12
	s_cselect_b32 s8, s14, s8
	s_cselect_b32 s9, s15, s9
	s_add_i32 s14, s8, 1
	s_cmp_ge_u32 s9, s12
	s_cselect_b32 s8, s14, s8
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s18, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s8, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s17, s34, 63
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s28, s3, s13
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v3, s18, v82
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s3, s28, s11
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s31, s28, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s3
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s8, s29, s18
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s10
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s18, v63
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s30, s2, 6
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s17, 63
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s34, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s33, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s3, s31, s8
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s8, s30, s34
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v84, v1, v63, s8
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s3, v58
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s2, s33
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s3, v83
	v_add_nc_u32_e32 v4, s3, v59
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v11, s18, v84
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s29, v2
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_and_b32 s5, s5, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s17, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v7, 0x80000000, v4, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s18, s18, 64
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[11:14], v11, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[15:18], v1, s[24:27], 0 offen
	buffer_load_b128 v[19:22], v2, s[24:27], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s18, v63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s8, s29, 6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s18, v82
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s8, s3, s8
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v23, s18, v84
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v24, s8, v58
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v1
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s34, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[3:6], v3, s[24:27], 0 offen
	buffer_load_b128 v[7:10], v7, s[24:27], 0 offen
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s8, v59
	v_add_nc_u32_e32 v25, s29, v24
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s8, v83
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s2
	s_mov_b32 s3, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v27, 0x80000000, v24
	v_lshlrev_b32_e32 v88, 6, v61
	v_cndmask_b32_e32 v31, 0x80000000, v25, vcc_lo
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[23:26], v23, s[4:7], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[27:30], v27, s[24:27], 0 offen
	buffer_load_b128 v[31:34], v31, s[24:27], 0 offen
	buffer_load_b128 v[35:38], v1, s[24:27], 0 offen
	buffer_load_b128 v[39:42], v2, s[24:27], 0 offen
	v_bfe_i32 v1, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v2, 1, v0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s17, 0xbf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v1, 0x420, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v43, 48, v2
	v_lshlrev_b32_e32 v2, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v1, v1, v82
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v90, v60, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v91, v65, 10, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v1, 0, v90
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v92, 0x90, v91
	v_xor_b32_e32 v93, 0x120, v91
	v_xor_b32_e32 v94, 0x1b0, v91
	v_xor_b32_e32 v95, 0x210, v91
	v_add_nc_u32_e32 v43, 0, v91
	v_xor_b32_e32 v96, 0x330, v91
	v_xor_b32_e32 v97, 0x3a0, v91
	v_add_nc_u32_e32 v44, 0, v92
	v_add_nc_u32_e32 v45, 0, v93
	v_add_nc_u32_e32 v46, 0, v94
	v_add_nc_u32_e32 v47, 0, v95
	v_add_nc_u32_e32 v48, 0, v96
	v_add_nc_u32_e32 v49, 0, v97
	v_add_nc_u32_e32 v50, 0x4000, v43
	v_add_nc_u32_e32 v51, 0x4000, v44
	v_add_nc_u32_e32 v52, 0x4000, v45
	v_add_nc_u32_e32 v53, 0x4000, v46
	v_add_nc_u32_e32 v54, 0x4000, v47
	v_add_nc_u32_e32 v55, 0x4000, v48
	v_add_nc_u32_e32 v56, 0x4000, v49
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(9)
	ds_store_b128 v1, v[11:14] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(7)
	v_perm_b32 v11, v19, v15, 0x6020703
	v_perm_b32 v12, v20, v16, 0x4000501
	v_perm_b32 v13, v20, v16, 0x6020703
	v_perm_b32 v14, v21, v17, 0x4000501
	v_perm_b32 v16, v22, v18, 0x4000501
	s_waitcnt vmcnt(5)
	v_perm_b32 v66, v7, v3, 0x4000501
	v_perm_b32 v3, v7, v3, 0x6020703
	v_perm_b32 v7, v8, v4, 0x4000501
	v_perm_b32 v4, v8, v4, 0x6020703
	v_perm_b32 v8, v9, v5, 0x4000501
	v_perm_b32 v5, v9, v5, 0x6020703
	v_perm_b32 v9, v10, v6, 0x4000501
	v_perm_b32 v6, v10, v6, 0x6020703
	v_perm_b32 v10, v19, v15, 0x4000501
	v_perm_b32 v15, v21, v17, 0x6020703
	v_perm_b32 v17, v22, v18, 0x6020703
	v_perm_b32 v19, v3, v11, 0x7060302
	v_perm_b32 v3, v3, v11, 0x5040100
	v_perm_b32 v18, v66, v10, 0x7060302
	v_perm_b32 v10, v66, v10, 0x5040100
	v_perm_b32 v11, v7, v12, 0x7060302
	v_perm_b32 v7, v7, v12, 0x5040100
	v_perm_b32 v12, v4, v13, 0x7060302
	v_perm_b32 v4, v4, v13, 0x5040100
	v_perm_b32 v13, v8, v14, 0x7060302
	v_perm_b32 v8, v8, v14, 0x5040100
	v_perm_b32 v14, v5, v15, 0x7060302
	v_perm_b32 v5, v5, v15, 0x5040100
	v_perm_b32 v15, v9, v16, 0x7060302
	v_perm_b32 v9, v9, v16, 0x5040100
	v_perm_b32 v16, v6, v17, 0x7060302
	v_perm_b32 v6, v6, v17, 0x5040100
	ds_store_2addr_b32 v43, v18, v10 offset1:16
	ds_store_2addr_b32 v44, v19, v3 offset1:16
	ds_store_2addr_b32 v45, v11, v7 offset1:16
	ds_store_2addr_b32 v46, v12, v4 offset1:16
	ds_store_2addr_b32 v47, v13, v8 offset1:16
	ds_store_2addr_b32 v43, v14, v5 offset0:160 offset1:176
	ds_store_2addr_b32 v48, v15, v9 offset1:16
	ds_store_2addr_b32 v49, v16, v6 offset1:16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v1, v[23:26] offset:36864
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v1, v31, v27, 0x4000501
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v39, v35, 0x4000501
	v_perm_b32 v4, v31, v27, 0x6020703
	v_perm_b32 v5, v39, v35, 0x6020703
	v_perm_b32 v6, v32, v28, 0x4000501
	v_perm_b32 v7, v40, v36, 0x4000501
	v_perm_b32 v8, v32, v28, 0x6020703
	v_perm_b32 v9, v40, v36, 0x6020703
	v_perm_b32 v10, v33, v29, 0x4000501
	v_perm_b32 v11, v41, v37, 0x4000501
	v_perm_b32 v12, v33, v29, 0x6020703
	v_perm_b32 v13, v41, v37, 0x6020703
	v_perm_b32 v14, v34, v30, 0x4000501
	v_perm_b32 v15, v42, v38, 0x4000501
	v_perm_b32 v16, v34, v30, 0x6020703
	v_perm_b32 v17, v42, v38, 0x6020703
	v_perm_b32 v18, v3, v1, 0x7060302
	v_perm_b32 v1, v3, v1, 0x5040100
	v_perm_b32 v3, v5, v4, 0x7060302
	v_perm_b32 v4, v5, v4, 0x5040100
	v_perm_b32 v5, v7, v6, 0x7060302
	v_perm_b32 v6, v7, v6, 0x5040100
	v_perm_b32 v7, v9, v8, 0x7060302
	v_perm_b32 v8, v9, v8, 0x5040100
	v_perm_b32 v9, v11, v10, 0x7060302
	v_perm_b32 v10, v11, v10, 0x5040100
	v_perm_b32 v11, v13, v12, 0x7060302
	v_perm_b32 v12, v13, v12, 0x5040100
	v_perm_b32 v13, v15, v14, 0x7060302
	v_perm_b32 v14, v15, v14, 0x5040100
	v_perm_b32 v15, v17, v16, 0x7060302
	v_perm_b32 v16, v17, v16, 0x5040100
	ds_store_2addr_b32 v50, v18, v1 offset1:16
	ds_store_2addr_b32 v51, v3, v4 offset1:16
	ds_store_2addr_b32 v52, v5, v6 offset1:16
	ds_store_2addr_b32 v53, v7, v8 offset1:16
	ds_store_2addr_b32 v54, v9, v10 offset1:16
	ds_store_2addr_b32 v50, v11, v12 offset0:160 offset1:176
	ds_store_2addr_b32 v55, v13, v14 offset1:16
	ds_store_2addr_b32 v56, v15, v16 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v4, 6, v0
	v_and_b32_e32 v5, 0x1800, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v6, 6, v61
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v1, 8, v0
	v_and_b32_e32 v3, 32, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v89, 0x1c0, v4, v5
	s_load_b256 s[8:15], s[0:1], 0x10
	s_mov_b32 s16, 0
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_mov_b32_e32 v9, 0
	s_add_i32 s37, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s0, 0, 0x4000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v12, v9
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v67, v9
	v_mov_b32_e32 v68, v9
	v_mov_b32_e32 v16, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v20, v12 :: v_dual_mov_b32 v19, v11
	v_dual_mov_b32 v28, v12 :: v_dual_mov_b32 v27, v11
	v_dual_mov_b32 v56, v12 :: v_dual_mov_b32 v55, v11
	v_dual_mov_b32 v48, v12 :: v_dual_mov_b32 v47, v11
	v_dual_mov_b32 v52, v12 :: v_dual_mov_b32 v51, v11
	v_dual_mov_b32 v40, v12 :: v_dual_mov_b32 v39, v11
	v_dual_mov_b32 v44, v12 :: v_dual_mov_b32 v43, v11
	v_dual_mov_b32 v36, v12 :: v_dual_mov_b32 v35, v11
	v_dual_mov_b32 v32, v12 :: v_dual_mov_b32 v31, v11
	v_dual_mov_b32 v24, v12 :: v_dual_mov_b32 v23, v11
	v_dual_mov_b32 v15, v11 :: v_dual_mov_b32 v14, v10
	v_dual_mov_b32 v13, v9 :: v_dual_mov_b32 v18, v10
	v_dual_mov_b32 v17, v9 :: v_dual_mov_b32 v26, v10
	v_dual_mov_b32 v25, v9 :: v_dual_mov_b32 v54, v10
	v_dual_mov_b32 v53, v9 :: v_dual_mov_b32 v46, v10
	v_dual_mov_b32 v45, v9 :: v_dual_mov_b32 v50, v10
	v_dual_mov_b32 v49, v9 :: v_dual_mov_b32 v38, v10
	v_dual_mov_b32 v37, v9 :: v_dual_mov_b32 v42, v10
	v_dual_mov_b32 v41, v9 :: v_dual_mov_b32 v34, v10
	v_dual_mov_b32 v33, v9 :: v_dual_mov_b32 v30, v10
	v_dual_mov_b32 v29, v9 :: v_dual_mov_b32 v22, v10
	v_mov_b32_e32 v21, v9
	v_mov_b32_e32 v69, v9
	v_mov_b32_e32 v70, v9
	v_mov_b32_e32 v71, v9
	v_mov_b32_e32 v72, v9
	v_mov_b32_e32 v73, v9
	v_mov_b32_e32 v74, v9
	v_mov_b32_e32 v75, v9
	v_mov_b32_e32 v76, v9
	v_mov_b32_e32 v77, v9
	v_mov_b32_e32 v78, v9
	v_mov_b32_e32 v79, v9
	v_mov_b32_e32 v80, v9
	v_mov_b32_e32 v81, v9
	v_mov_b32_e32 v66, v9
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr89
	s_load_b256 s[8:15], s[0:1], 0x10
	s_mov_b32 s16, 0
.LBB0_4:                                ; %.lr.ph
	v_dual_mov_b32 v66, 0 :: v_dual_lshlrev_b32 v1, 3, v0
	v_bfe_i32 v3, v0, 3, 1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s35, s17, 6
	s_add_i32 s3, s18, 64
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v2, 0x1800, v2
	v_and_b32_e32 v1, 48, v1
	v_and_b32_e32 v3, 0x210, v3
	v_bfe_i32 v4, v0, 5, 1
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v98, s29, v58
	v_and_or_b32 v89, 0x1c0, v85, v2
	v_or_b32_e32 v99, v88, v1
	v_xor_b32_e32 v2, v3, v1
	v_and_b32_e32 v3, 0x420, v4
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v78, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v101, 16, v99
	v_or_b32_e32 v2, v89, v2
	v_xor_b32_e32 v102, 32, v99
	v_xor_b32_e32 v103, 48, v99
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_mov_b32_e32 v76, 0
	v_xor_b32_e32 v100, v2, v3
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v104, 16, v100
	v_xor_b32_e32 v105, 32, v100
	v_xor_b32_e32 v106, 48, v100
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v24, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v23, 0
	s_add_i32 s37, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s35, s35, -3
	s_mov_b32 s36, 1
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s17, 0
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 30 is_stmt 0                ; generate_amdgcn.py:0:30
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 364 14 is_stmt 1              ; generate_amdgcn.py:364:14
	s_lshl_b32 s18, s17, 6
	s_mov_b32 s19, s16
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s16, s3, s18
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v115, s19, v100
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v107, s16, v63
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v108, s16, v84
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v183, s37, v99
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v116, s19, v104
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v187, s37, v101
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v107
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v107, 0x80000000, v108, vcc_lo
	buffer_load_b128 v[171:174], v107, s[4:7], 0 offen
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
	v_add_nc_u32_e32 v183, s19, v105
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
	v_add_nc_u32_e32 v183, s19, v106
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
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v115, v115
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v46, v46, v117
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[175:178], v187 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v66, v66, v115 :: v_dual_add_f32 v47, v47, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v48, v48, v119
	v_dual_add_f32 v80, v80, v121 :: v_dual_add_f32 v45, v45, v116
	v_add_f32_e32 v81, v81, v120
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[179:182], v[175:178], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[183:186], v[175:178], v[131:138] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[175:178], v187 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v131, v131
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v50, v50, v124
	v_add_f32_e32 v52, v52, v126
	v_add_f32_e32 v20, v20, v130
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v133, v133
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v18, v18, v128
	v_add_f32_e32 v78, v78, v131
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v38, v38, v133
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v127, v127
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v40, v40, v135
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[179:182], v[175:178], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[183:186], v[175:178], v[147:154] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[175:178], v187 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v134, v134
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
	v_cvt_f32_i32_e32 v151, v151
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[179:182], v[175:178], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[183:186], v[175:178], v[163:170] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v175, v107
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v107, s16, v82
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s16, s16, s29
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v176, v108
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s16, s16, s31
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v181, v113
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s34, v107
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v107, s16, v58
	v_add_nc_u32_e32 v108, s16, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v179, v111
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v27, v27, v181
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v177, v109
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	v_cndmask_b32_e32 v111, 0x80000000, v108, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v178, v110
	v_cvt_f32_i32_e32 v180, v112
	v_cvt_f32_i32_e32 v182, v114
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[107:110], v107, s[24:27], 0 offen
	buffer_load_b128 v[111:114], v111, s[24:27], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v25, v25, v179
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
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v170, v170
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v56, v56, v178 :: v_dual_add_f32 v55, v55, v177
	v_dual_add_f32 v54, v54, v176 :: v_dual_add_f32 v53, v53, v175
	v_add_f32_e32 v28, v28, v182
	v_dual_add_f32 v26, v26, v180 :: v_dual_add_f32 v79, v79, v122
	v_dual_add_f32 v42, v42, v140 :: v_dual_add_f32 v51, v51, v125
	v_dual_add_f32 v44, v44, v142 :: v_dual_add_f32 v49, v49, v123
	v_dual_add_f32 v16, v16, v146 :: v_dual_add_f32 v19, v19, v129
	v_dual_add_f32 v14, v14, v144 :: v_dual_add_f32 v17, v17, v127
	v_dual_add_f32 v34, v34, v149 :: v_dual_add_f32 v39, v39, v134
	v_dual_add_f32 v74, v74, v147 :: v_dual_add_f32 v37, v37, v132
	v_dual_add_f32 v36, v36, v151 :: v_dual_add_f32 v77, v77, v136
	v_dual_add_f32 v72, v72, v153 :: v_dual_add_f32 v75, v75, v138
	v_dual_add_f32 v30, v30, v156 :: v_dual_add_f32 v43, v43, v141
	v_dual_add_f32 v32, v32, v158 :: v_dual_add_f32 v41, v41, v139
	v_dual_add_f32 v12, v12, v162 :: v_dual_add_f32 v15, v15, v145
	v_dual_add_f32 v10, v10, v160 :: v_dual_add_f32 v13, v13, v143
	v_dual_add_f32 v22, v22, v165 :: v_dual_add_f32 v35, v35, v150
	v_dual_add_f32 v70, v70, v163 :: v_dual_add_f32 v33, v33, v148
	v_dual_add_f32 v24, v24, v167 :: v_dual_add_f32 v73, v73, v152
	v_add_f32_e32 v68, v68, v169
	v_add_f32_e32 v31, v31, v157
	v_add_f32_e32 v29, v29, v155
	v_add_f32_e32 v11, v11, v161
	v_add_f32_e32 v9, v9, v159
	v_add_f32_e32 v23, v23, v166
	v_add_f32_e32 v21, v21, v164
	v_add_f32_e32 v69, v69, v168
	v_dual_add_f32 v67, v67, v170 :: v_dual_add_f32 v76, v76, v137
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v183, v111, v107, 0x4000501
	v_perm_b32 v184, v111, v107, 0x6020703
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v107, s16, v83
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v185, v112, v108, 0x4000501
	v_perm_b32 v186, v112, v108, 0x6020703
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v108, s16, v59
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
	s_add_i32 s16, s36, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s16, 2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s36, s16, 0
	s_add_i32 s19, s17, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s16, s36, 12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s18, s16, 0
	s_mov_b32 s16, s0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s0, s36, 14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s1, s18, 0x8000
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s0, s0, 0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v71, v71, v154
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v117, s0, v97
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s17, s35
	s_mov_b32 s17, s19
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
	v_add_nc_u32_e32 v114, s18, v90
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
	v_dual_mov_b32 v6, v88 :: v_dual_mov_b32 v1, v86
	v_dual_mov_b32 v4, v85 :: v_dual_mov_b32 v3, v87
	s_mov_b32 s3, s16
.LBB0_7:                                ; %Flow214
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
	v_cndmask_b32_e64 v58, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v59, v89, v7
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_or_b32_e32 v7, v6, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v59, v59, v58
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v6, 16, v7
	v_xor_b32_e32 v8, 32, v7
	v_xor_b32_e32 v58, 48, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v82, 16, v59
	v_xor_b32_e32 v84, 32, v59
	v_xor_b32_e32 v83, 48, v59
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
	v_add_nc_u32_e32 v88, s3, v59
	v_add_nc_u32_e32 v85, s3, v84
	v_add_nc_u32_e32 v87, s3, v83
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v93, s37, v7
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v86, s3, v82
	ds_load_b128 v[165:168], v88 offset:8192
	ds_load_b128 v[169:172], v88
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v133, s37, v8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[149:152], v85 offset:8192
	ds_load_b128 v[153:156], v85
	ds_load_b128 v[157:160], v86 offset:8192
	ds_load_b128 v[161:164], v86
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v135, s37, v6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[181:184], v87 offset:8192
	ds_load_b128 v[185:188], v87
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v92, s23
	v_mov_b32_e32 v86, s17
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[125:128], v93 offset:1024
	ds_load_b128 v[109:112], v93
	ds_load_b128 v[173:176], v133 offset:1024
	ds_load_b128 v[117:120], v133
	ds_load_b128 v[177:180], v135 offset:1024
	ds_load_b128 v[121:124], v135
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v87, s18 :: v_dual_add_nc_u32 v134, s37, v58
	v_dual_mov_b32 v91, s22 :: v_dual_mov_b32 v90, s21
	v_dual_mov_b32 v89, s20 :: v_dual_mov_b32 v88, s19
	v_mov_b32_e32 v85, s16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[189:192], v134 offset:1024
	ds_load_b128 v[129:132], v134
	ds_load_b128 v[193:196], v93 offset:3072
	ds_load_b128 v[141:144], v93 offset:2048
	ds_load_b128 v[205:208], v133 offset:3072
	ds_load_b128 v[209:212], v133 offset:2048
	ds_load_b128 v[213:216], v134 offset:3072
	ds_load_b128 v[217:220], v134 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[169:172], v[109:112], v[85:92] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[161:164], v[121:124], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[153:156], v[117:120], v[93:100] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[93:100], v[185:188], v[129:132], v[93:100] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v98, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v99, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v97, v97
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v26, v26, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[101:108], v[165:168], v[109:112], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[169:172], v[125:128], v[85:92] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v28, v28, v100
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[101:108], v[157:160], v[121:124], v[101:108] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[197:200], v135 offset:3072
	ds_load_b128 v[201:204], v135 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[109:116], v[161:164], v[177:180], v[109:116] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[165:168], v[141:144], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[149:152], v[117:120], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[165:168], v[125:128], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[153:156], v[173:176], v[109:116] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[101:108], v[181:184], v[129:132], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[117:124], v[157:160], v[177:180], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[169:172], v[141:144], v[85:92] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[109:116], v[185:188], v[189:192], v[109:116] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v100, v101
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v27, v27, v99
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v98, v104
	v_cvt_f32_i32_e32 v99, v102
	v_wmma_i32_16x16x16_iu8 v[117:124], v[149:152], v[173:176], v[117:124] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v66, v66, v100
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v100, v103
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v25, v25, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v105
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v47, v47, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v98, v107
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v45, v45, v99
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[117:124], v[181:184], v[189:192], v[117:124] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v48, v48, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v106
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v80, v80, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v98, v112
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v46, v46, v100
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v99, v111
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v81, v81, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v108
	v_cvt_f32_i32_e32 v100, v110
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v52, v52, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v98, v116
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[125:132], v[161:164], v[201:204], v[125:132] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v79, v79, v97 :: v_dual_add_f32 v50, v50, v100
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v109
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v51, v51, v99 :: v_dual_add_f32 v20, v20, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v99, v114
	v_cvt_f32_i32_e32 v98, v117
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v49, v49, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v115
	v_wmma_i32_16x16x16_iu8 v[125:132], v[153:156], v[209:212], v[125:132] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v100, v113
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v78, v78, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v98, v120
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v19, v19, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v121
	v_wmma_i32_16x16x16_iu8 v[133:140], v[157:160], v[201:204], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[185:188], v[217:220], v[125:132] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v18, v18, v99 :: v_dual_add_f32 v17, v17, v100
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v40, v40, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v99, v118
	v_cvt_f32_i32_e32 v100, v119
	v_cvt_f32_i32_e32 v97, v122
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v39, v39, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v98, v123
	v_wmma_i32_16x16x16_iu8 v[133:140], v[149:152], v[209:212], v[133:140] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v37, v37, v99
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[141:148], v[169:172], v[193:196], v[85:92] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v76, v76, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v98, v128
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v77, v77, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v124
	v_wmma_i32_16x16x16_iu8 v[133:140], v[181:184], v[217:220], v[133:140] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v38, v38, v100
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v99, v127
	v_cvt_f32_i32_e32 v100, v126
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v75, v75, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v125
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v44, v44, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v98, v132
	v_wmma_i32_16x16x16_iu8 v[85:92], v[165:168], v[193:196], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[161:164], v[197:200], v[141:148] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v43, v43, v99
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v99, v130
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v41, v41, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v131
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v16, v16, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v98, v133
	v_wmma_i32_16x16x16_iu8 v[85:92], v[157:160], v[197:200], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[153:156], v[205:208], v[141:148] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v42, v42, v100
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v100, v129
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v15, v15, v97 :: v_dual_add_f32 v74, v74, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v137
	v_cvt_f32_i32_e32 v98, v136
	v_wmma_i32_16x16x16_iu8 v[85:92], v[149:152], v[205:208], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[141:148], v[185:188], v[213:216], v[141:148] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v14, v14, v99 :: v_dual_add_f32 v13, v13, v100
	v_add_f32_e32 v36, v36, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v99, v134
	v_cvt_f32_i32_e32 v100, v135
	v_cvt_f32_i32_e32 v97, v138
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v35, v35, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v98, v139
	v_wmma_i32_16x16x16_iu8 v[85:92], v[181:184], v[213:216], v[85:92] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v34, v34, v100 :: v_dual_add_f32 v33, v33, v99
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v100, v142
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v72, v72, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v98, v144
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v73, v73, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v140
	v_cvt_f32_i32_e32 v99, v143
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v30, v30, v100
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v100, v145
	v_cvt_f32_i32_e32 v85, v85
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v71, v71, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v141
	v_cvt_f32_i32_e32 v89, v89
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v32, v32, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v98, v148
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v31, v31, v99
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v99, v146
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v29, v29, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v97, v147
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v9, v9, v100 :: v_dual_add_f32 v70, v70, v85
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v85, v86
	v_cvt_f32_i32_e32 v86, v88
	v_cvt_f32_i32_e32 v87, v87
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v24, v24, v89
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v88, v90
	v_cvt_f32_i32_e32 v89, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v11, v11, v97 :: v_dual_add_f32 v22, v22, v87
	v_add_f32_e32 v23, v23, v86
	v_dual_add_f32 v69, v69, v88 :: v_dual_add_f32 v68, v68, v89
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v86, v96
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v21, v21, v85
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v85, v92
	v_cvt_f32_i32_e32 v87, v95
	v_cvt_f32_i32_e32 v88, v94
	v_cvt_f32_i32_e32 v89, v93
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v12, v12, v98
	v_dual_add_f32 v10, v10, v99 :: v_dual_add_f32 v67, v67, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v54, v54, v88
	v_dual_add_f32 v56, v56, v86 :: v_dual_add_f32 v55, v55, v87
	v_add_f32_e32 v53, v53, v89
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v59, s0, v59
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v154, s23 :: v_dual_add_nc_u32 v83, s0, v83
	v_dual_mov_b32 v150, s19 :: v_dual_add_nc_u32 v7, s1, v7
	v_dual_mov_b32 v153, s22 :: v_dual_add_nc_u32 v84, s0, v84
	v_mov_b32_e32 v152, s21
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[122:125], v59 offset:8192
	ds_load_b128 v[126:129], v59
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v149, s18 :: v_dual_add_nc_u32 v8, s1, v8
	v_dual_mov_b32 v151, s20 :: v_dual_add_nc_u32 v82, s0, v82
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v6, s1, v6
	ds_load_b128 v[139:142], v7 offset:1024
	ds_load_b128 v[98:101], v7
	ds_load_b128 v[171:174], v8 offset:1024
	ds_load_b128 v[130:133], v8
	ds_load_b128 v[175:178], v6 offset:1024
	ds_load_b128 v[134:137], v6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[106:109], v84 offset:8192
	ds_load_b128 v[110:113], v84
	ds_load_b128 v[114:117], v82 offset:8192
	ds_load_b128 v[118:121], v82
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v147, s16 :: v_dual_add_nc_u32 v58, s1, v58
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[179:182], v83 offset:8192
	ds_load_b128 v[183:186], v83
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v148, s17
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[187:190], v58 offset:1024
	ds_load_b128 v[143:146], v58
	ds_load_b128 v[191:194], v7 offset:3072
	ds_load_b128 v[163:166], v7 offset:2048
	ds_load_b128 v[195:198], v6 offset:3072
	ds_load_b128 v[199:202], v6 offset:2048
	ds_load_b128 v[203:206], v8 offset:3072
	ds_load_b128 v[207:210], v8 offset:2048
	ds_load_b128 v[211:214], v58 offset:3072
	ds_load_b128 v[215:218], v58 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(20)
	v_wmma_i32_16x16x16_iu8 v[82:89], v[126:129], v[98:101], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[122:125], v[98:101], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[126:129], v[139:142], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[82:89], v[118:121], v[134:137], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[114:117], v[134:137], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[118:121], v[175:178], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[110:113], v[130:133], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[90:97], v[106:109], v[130:133], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[122:125], v[139:142], v[147:154] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[155:162], v[122:125], v[163:166], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[183:186], v[143:146], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[179:182], v[143:146], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[126:129], v[163:166], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[126:129], v[191:194], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[122:125], v[191:194], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[114:117], v[175:178], v[131:138] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[118:121], v[199:202], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[155:162], v[114:117], v[199:202], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[118:121], v[195:198], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[114:117], v[195:198], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[110:113], v[171:174], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[106:109], v[171:174], v[131:138] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[110:113], v[207:210], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[155:162], v[106:109], v[207:210], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[110:113], v[203:206], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[106:109], v[203:206], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[183:186], v[187:190], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[179:182], v[187:190], v[131:138] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[183:186], v[215:218], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[155:162], v[179:182], v[215:218], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[163:170], v[183:186], v[211:214], v[163:170] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[179:182], v[211:214], v[147:154] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v114, v82
	v_cvt_f32_i32_e32 v117, v83
	v_cvt_f32_i32_e32 v120, v84
	v_cvt_f32_i32_e32 v122, v85
	v_cvt_f32_i32_e32 v110, v86
	v_cvt_f32_i32_e32 v113, v87
	v_cvt_f32_i32_e32 v116, v88
	v_cvt_f32_i32_e32 v119, v89
	v_cvt_f32_i32_e32 v85, v90
	v_cvt_f32_i32_e32 v118, v91
	v_cvt_f32_i32_e32 v121, v92
	v_cvt_f32_i32_e32 v124, v93
	v_cvt_f32_i32_e32 v127, v94
	v_cvt_f32_i32_e32 v86, v95
	v_cvt_f32_i32_e32 v87, v96
	v_cvt_f32_i32_e32 v88, v97
	v_cvt_f32_i32_e32 v123, v98
	v_cvt_f32_i32_e32 v125, v99
	v_cvt_f32_i32_e32 v128, v100
	v_cvt_f32_i32_e32 v130, v101
	v_cvt_f32_i32_e32 v106, v102
	v_cvt_f32_i32_e32 v109, v103
	v_cvt_f32_i32_e32 v112, v104
	v_cvt_f32_i32_e32 v115, v105
	v_cvt_f32_i32_e32 v89, v131
	v_cvt_f32_i32_e32 v126, v132
	v_cvt_f32_i32_e32 v129, v133
	v_cvt_f32_i32_e32 v132, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v90, v136
	v_cvt_f32_i32_e32 v91, v137
	v_cvt_f32_i32_e32 v92, v138
	v_cvt_f32_i32_e32 v131, v139
	v_cvt_f32_i32_e32 v133, v140
	v_cvt_f32_i32_e32 v136, v141
	v_cvt_f32_i32_e32 v138, v142
	v_cvt_f32_i32_e32 v103, v143
	v_cvt_f32_i32_e32 v105, v144
	v_cvt_f32_i32_e32 v108, v145
	v_cvt_f32_i32_e32 v111, v146
	v_cvt_f32_i32_e32 v93, v155
	v_cvt_f32_i32_e32 v134, v156
	v_cvt_f32_i32_e32 v137, v157
	v_cvt_f32_i32_e32 v140, v158
	v_cvt_f32_i32_e32 v143, v159
	v_cvt_f32_i32_e32 v94, v160
	v_cvt_f32_i32_e32 v95, v161
	v_cvt_f32_i32_e32 v96, v162
	v_cvt_f32_i32_e32 v139, v163
	v_cvt_f32_i32_e32 v141, v164
	v_cvt_f32_i32_e32 v144, v165
	v_cvt_f32_i32_e32 v146, v166
	v_cvt_f32_i32_e32 v99, v167
	v_cvt_f32_i32_e32 v102, v168
	v_cvt_f32_i32_e32 v104, v169
	v_cvt_f32_i32_e32 v107, v170
	v_cvt_f32_i32_e32 v97, v147
	v_cvt_f32_i32_e32 v142, v148
	v_cvt_f32_i32_e32 v145, v149
	v_cvt_f32_i32_e32 v147, v150
	v_cvt_f32_i32_e32 v148, v151
	v_cvt_f32_i32_e32 v98, v152
	v_cvt_f32_i32_e32 v100, v153
	v_cvt_f32_i32_e32 v101, v154
.LBB0_11:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v6, s30, v61
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s17, s9, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s8
	.loc	1 429 13 is_stmt 1              ; generate_amdgcn.py:429:13
	v_dual_add_f32 v117, v54, v117 :: v_dual_lshlrev_b32 v6, 1, v6
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v7, s31, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v84, v55, v120
	v_dual_add_f32 v120, v56, v122 :: v_dual_add_f32 v113, v26, v113
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v8, 32, v6
	v_or_b32_e32 v58, 64, v6
	v_or_b32_e32 v59, 0x60, v6
	s_clause 0x3
	buffer_load_u16 v82, v6, s[16:19], 0 offen
	buffer_load_u16 v83, v8, s[16:19], 0 offen
	buffer_load_u16 v58, v58, s[16:19], 0 offen
	buffer_load_u16 v59, v59, s[16:19], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v7, 1, v7
	s_and_b32 s17, s11, 0xffff
	s_mov_b32 s16, s10
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v114, v53, v114 :: v_dual_add_f32 v119, v28, v119
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v8, v7, s[16:19], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v122, v48, v127 :: v_dual_add_f32 v127, v51, v128
	v_dual_add_f32 v86, v81, v86 :: v_dual_add_f32 v115, v20, v115
	v_dual_add_f32 v128, v52, v130 :: v_dual_add_f32 v109, v18, v109
	v_dual_add_f32 v112, v19, v112 :: v_dual_add_f32 v89, v78, v89
	v_dual_add_f32 v130, v40, v135 :: v_dual_add_f32 v135, v43, v136
	v_dual_add_f32 v136, v44, v138 :: v_dual_add_f32 v105, v14, v105
	v_dual_add_f32 v93, v74, v93 :: v_dual_add_f32 v138, v36, v143
	v_dual_add_f32 v94, v73, v94 :: v_dual_add_f32 v143, v31, v144
	v_dual_add_f32 v144, v32, v146 :: v_dual_add_f32 v139, v29, v139
	v_dual_add_f32 v97, v70, v97 :: v_dual_add_f32 v146, v24, v148
	v_dual_add_f32 v145, v22, v145 :: v_dual_add_f32 v98, v69, v98
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v55, v84, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v70, v70, v97, s2
	v_cndmask_b32_e64 v84, v28, v119, s2
	v_cndmask_b32_e64 v97, v19, v112, s2
	v_cndmask_b32_e64 v69, v69, v98, s2
	v_cndmask_b32_e64 v98, v20, v115, s2
	v_cndmask_b32_e64 v112, v29, v139, s2
	v_cndmask_b32_e64 v115, v31, v143, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v96, v71, v96 :: v_dual_add_f32 v141, v30, v141
	v_dual_add_f32 v116, v27, v116 :: v_dual_add_f32 v85, v66, v85
	v_dual_add_f32 v110, v25, v110 :: v_dual_add_f32 v121, v46, v121
	v_dual_add_f32 v106, v17, v106 :: v_dual_add_f32 v129, v38, v129
	v_dual_add_f32 v90, v77, v90 :: v_dual_add_f32 v111, v16, v111
	v_dual_add_f32 v108, v15, v108 :: v_dual_add_f32 v103, v13, v103
	v_dual_add_f32 v134, v33, v134 :: v_dual_add_f32 v95, v72, v95
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v149, v62, 1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v26, v26, v113, s2
	v_cndmask_b32_e64 v113, v30, v141, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v118, v45, v118 :: v_dual_add_f32 v125, v50, v125
	v_dual_add_f32 v107, v12, v107 :: v_dual_add_f32 v104, v11, v104
	v_dual_add_f32 v102, v10, v102 :: v_dual_add_f32 v99, v9, v99
	v_dual_add_f32 v147, v23, v147 :: v_dual_add_f32 v142, v21, v142
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v66, v66, v85, s2
	v_cndmask_b32_e64 v72, v72, v95, s2
	v_cndmask_b32_e64 v85, v71, v96, s2
	v_cndmask_b32_e64 v25, v25, v110, s2
	v_cndmask_b32_e64 v95, v17, v106, s2
	v_cndmask_b32_e64 v96, v18, v109, s2
	v_cndmask_b32_e64 v103, v13, v103, s2
	v_cndmask_b32_e64 v105, v14, v105, s2
	v_cndmask_b32_e64 v108, v15, v108, s2
	v_cndmask_b32_e64 v110, v16, v111, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v78, v78, v89, s2
	v_cndmask_b32_e64 v54, v54, v117, s2
	v_cndmask_b32_e64 v27, v27, v116, s2
	v_cndmask_b32_e64 v89, v45, v118, s2
	v_cndmask_b32_e64 v99, v9, v99, s2
	v_cndmask_b32_e64 v116, v22, v145, s2
	v_cndmask_b32_e64 v117, v23, v147, s2
	v_cndmask_b32_e64 v118, v24, v146, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v124, v47, v124 :: v_dual_add_f32 v87, v80, v87
	v_dual_add_f32 v88, v79, v88 :: v_dual_add_f32 v123, v49, v123
	v_dual_add_f32 v132, v39, v132 :: v_dual_add_f32 v91, v76, v91
	v_dual_add_f32 v126, v37, v126 :: v_dual_add_f32 v133, v42, v133
	v_dual_add_f32 v92, v75, v92 :: v_dual_add_f32 v131, v41, v131
	v_dual_add_f32 v140, v35, v140 :: v_dual_add_f32 v137, v34, v137
	v_dual_add_f32 v100, v68, v100 :: v_dual_add_f32 v101, v67, v101
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v53, v114, s2
	v_cndmask_b32_e64 v114, v32, v144, s2
	v_cndmask_b32_e64 v81, v81, v86, s2
	v_cndmask_b32_e64 v80, v80, v87, s2
	v_cndmask_b32_e64 v79, v79, v88, s2
	v_cndmask_b32_e64 v77, v77, v90, s2
	v_cndmask_b32_e64 v76, v76, v91, s2
	v_cndmask_b32_e64 v75, v75, v92, s2
	v_cndmask_b32_e64 v74, v74, v93, s2
	v_cndmask_b32_e64 v86, v68, v100, s2
	v_cndmask_b32_e64 v87, v67, v101, s2
	v_cndmask_b32_e64 v88, v56, v120, s2
	v_cndmask_b32_e64 v90, v46, v121, s2
	v_cndmask_b32_e64 v91, v47, v124, s2
	v_cndmask_b32_e64 v92, v48, v122, s2
	v_cndmask_b32_e64 v50, v50, v125, s2
	v_cndmask_b32_e64 v93, v52, v128, s2
	v_cndmask_b32_e64 v38, v38, v129, s2
	v_cndmask_b32_e64 v40, v40, v130, s2
	v_cndmask_b32_e64 v100, v41, v131, s2
	v_cndmask_b32_e64 v101, v42, v133, s2
	v_cndmask_b32_e64 v106, v44, v136, s2
	v_cndmask_b32_e64 v109, v43, v135, s2
	v_cndmask_b32_e64 v111, v33, v134, s2
	v_cndmask_b32_e64 v33, v34, v137, s2
	v_cndmask_b32_e64 v73, v73, v94, s2
	v_cndmask_b32_e64 v49, v49, v123, s2
	v_cndmask_b32_e64 v94, v51, v127, s2
	v_cndmask_b32_e64 v37, v37, v126, s2
	v_cndmask_b32_e64 v39, v39, v132, s2
	v_cndmask_b32_e64 v35, v35, v140, s2
	v_cndmask_b32_e64 v36, v36, v138, s2
	s_mov_b32 s0, 0x76543210
.Ltmp16:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v5, 10, v5
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s17, s13, 0xffff
	s_mov_b32 s16, s12
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v3, 4, v3
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add_nc_u32_e32 v63, 0, v63
.Ltmp18:
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v31, 16, v59
	v_lshlrev_b32_e32 v28, 16, v82
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v148, 2, v62
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v29, 16, v83
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v2, 5, v2
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v30, 16, v58
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_add3_u32 v2, 0, v148, v2
	v_lshl_add_u32 v2, v65, 1, v2
	ds_store_b32 v2, v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v149 offset:512
	ds_load_b128 v[17:20], v149 offset:528
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v2, v10, v102, s2
	v_cndmask_b32_e64 v102, v11, v104, s2
	v_cndmask_b32_e64 v104, v12, v107, s2
	v_cndmask_b32_e64 v107, v21, v142, s2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[9:12], v149
	ds_load_b128 v[21:24], v149 offset:16
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v150, 4, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp20:
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v32, v13, v28
	v_dual_mul_f32 v45, v19, v29 :: v_dual_lshlrev_b32 v6, 5, v64
	v_dual_mul_f32 v46, v20, v29 :: v_dual_and_b32 v151, 0x80, v0
	v_dual_mul_f32 v44, v18, v29 :: v_dual_and_b32 v7, 0x60, v0
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v64, v64, 9, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v122, 0x680, v60, v6
.Ltmp22:
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v43, v13, v29
	v_mul_f32_e32 v47, v13, v30
	v_mul_f32_e32 v13, v13, v31
	v_dual_mul_f32 v83, v12, v28 :: v_dual_lshlrev_b32 v8, 1, v151
	v_mul_f32_e32 v34, v18, v28
	v_mul_f32_e32 v41, v19, v28
	v_dual_mul_f32 v42, v20, v28 :: v_dual_mul_f32 v133, v10, v29
	v_dual_mul_f32 v52, v19, v30 :: v_dual_mul_f32 v125, v22, v28
	v_mul_f32_e32 v19, v19, v31
	v_mul_f32_e32 v59, v20, v30
	v_dual_mul_f32 v20, v20, v31 :: v_dual_mul_f32 v129, v15, v28
	v_dual_mul_f32 v60, v9, v28 :: v_dual_mul_f32 v135, v11, v29
	v_dual_mul_f32 v82, v10, v28 :: v_dual_mul_f32 v139, v24, v29
	v_dual_mul_f32 v124, v21, v28 :: v_dual_mul_f32 v137, v22, v29
	v_dual_mul_f32 v128, v14, v28 :: v_dual_mul_f32 v141, v15, v29
	v_dual_mul_f32 v130, v16, v28 :: v_dual_mul_f32 v145, v10, v30
	v_dual_mul_f32 v131, v17, v28 :: v_dual_mul_f32 v134, v12, v29
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v120, v150, 2, v64
.Ltmp24:
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v48, v18, v30 :: v_dual_mul_f32 v123, v11, v28
	v_dual_mul_f32 v18, v18, v31 :: v_dual_mul_f32 v127, v24, v28
	v_dual_mul_f32 v126, v23, v28 :: v_dual_mul_f32 v143, v17, v29
	v_dual_mul_f32 v132, v9, v29 :: v_dual_mul_f32 v147, v11, v30
	v_dual_mul_f32 v136, v21, v29 :: v_dual_mul_f32 v149, v22, v30
	v_dual_mul_f32 v138, v23, v29 :: v_dual_mul_f32 v153, v24, v30
	v_dual_mul_f32 v140, v14, v29 :: v_dual_mul_f32 v155, v15, v30
	v_dual_mul_f32 v142, v16, v29 :: v_dual_mul_f32 v157, v17, v30
	v_dual_mul_f32 v144, v9, v30 :: v_dual_mul_f32 v11, v11, v31
	v_dual_mul_f32 v146, v12, v30 :: v_dual_mul_f32 v9, v9, v31
	v_dual_mul_f32 v156, v16, v30 :: v_dual_mul_f32 v161, v15, v31
	v_dual_mul_f32 v10, v10, v31 :: v_dual_mul_f32 v65, v81, v34
	v_dual_mul_f32 v22, v22, v31 :: v_dual_mul_f32 v67, v80, v41
	v_dual_mul_f32 v160, v14, v31 :: v_dual_mul_f32 v41, v53, v60
	v_dual_mul_f32 v15, v17, v31 :: v_dual_mul_f32 v68, v79, v42
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v71, v78, v43 :: v_dual_mul_f32 v64, v77, v44
	v_dual_mul_f32 v58, v76, v45 :: v_dual_mul_f32 v29, v85, v59
	v_mul_f32_e32 v56, v75, v46
	v_dual_mul_f32 v28, v72, v52 :: v_dual_mul_f32 v59, v90, v129
	v_dual_mul_f32 v44, v88, v83 :: v_dual_mul_f32 v45, v25, v124
	v_dual_mul_f32 v42, v54, v82 :: v_dual_mul_f32 v79, v95, v136
	v_mul_f32_e32 v46, v26, v125
	v_dual_mul_f32 v82, v92, v131 :: v_dual_mul_f32 v53, v101, v145
	v_dual_mul_f32 v60, v91, v130 :: v_dual_mul_f32 v77, v98, v139
	v_mul_f32_e32 v52, v89, v128
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v148, v21, v30
	v_dual_mul_f32 v152, v23, v30 :: v_dual_mul_f32 v21, v21, v31
	v_dual_mul_f32 v154, v14, v30 :: v_dual_mul_f32 v159, v24, v31
	v_dual_mul_f32 v158, v12, v31 :: v_dual_mul_f32 v51, v66, v32
	v_mul_f32_e32 v23, v23, v31
	v_dual_mul_f32 v16, v16, v31 :: v_dual_mul_f32 v17, v70, v13
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v34, v74, v47 :: v_dual_mul_f32 v47, v27, v126
	v_dual_mul_f32 v30, v73, v48 :: v_dual_mul_f32 v43, v55, v123
	v_mul_f32_e32 v48, v84, v127
	v_dual_mul_f32 v76, v93, v134 :: v_dual_mul_f32 v31, v36, v157
	v_mul_f32_e32 v72, v49, v132
	v_dual_mul_f32 v78, v97, v138 :: v_dual_mul_f32 v25, v115, v11
	v_dual_mul_f32 v74, v37, v140 :: v_dual_mul_f32 v27, v112, v9
	v_mul_f32_e32 v49, v109, v147
	v_mul_f32_e32 v37, v110, v153
	v_mul_f32_e32 v22, v2, v22
.Ltmp25:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v2, |v41|, |v42|
	v_max3_f32 v9, |v44|, |v45|, |v46|
	v_max3_f32 v11, |v52|, |v59|, |v60|
	v_max3_f32 v36, |v82|, |v65|, |v67|
.Ltmp26:
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v12, v69, v18 :: v_dual_mul_f32 v75, v94, v135
	v_mul_f32_e32 v69, v39, v142
	v_mul_f32_e32 v26, v113, v10
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v10, |v47|, |v48|, |v51|
	v_max3_f32 v2, v2, |v43|, v9
	v_max3_f32 v9, v11, v36, |v68|
.Ltmp28:
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v14, v87, v20 :: v_dual_mul_f32 v73, v50, v133
	v_dual_mul_f32 v80, v96, v137 :: v_dual_mul_f32 v33, v33, v155
	v_dual_mul_f32 v66, v40, v143 :: v_dual_mul_f32 v39, v105, v149
	v_mul_f32_e32 v50, v106, v146
	v_dual_mul_f32 v54, v100, v144 :: v_dual_mul_f32 v15, v118, v15
	v_mul_f32_e32 v40, v103, v148
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v2, v2, v10, v9
.Ltmp30:
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v32, v35, v156
	v_mul_f32_e32 v35, v111, v154
	v_mul_f32_e32 v13, v86, v19
	v_dual_mul_f32 v70, v38, v141 :: v_dual_mul_f32 v19, v104, v159
	v_mul_f32_e32 v38, v108, v152
	v_dual_mul_f32 v20, v102, v23 :: v_dual_mul_f32 v23, v99, v21
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v55, |v72|, |v73|
	v_max3_f32 v81, |v76|, |v79|, |v80|
	v_max_f32_e64 v86, |v54|, |v53|
	v_max3_f32 v87, |v50|, |v40|, |v39|
	v_max3_f32 v89, |v35|, |v33|, |v32|
	v_max3_f32 v90, |v31|, |v30|, |v28|
	v_max3_f32 v88, |v38|, |v37|, |v34|
	v_max3_f32 v11, v55, |v75|, v81
	v_max3_f32 v55, v86, |v49|, v87
.Ltmp32:
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v24, v114, v158 :: v_dual_mul_f32 v21, v107, v160
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v81, v89, v90, |v29|
.Ltmp34:
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v18, v116, v161
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v84, |v74|, |v70|, |v69|
	v_max3_f32 v85, |v66|, |v64|, |v58|
	v_max_f32_e64 v91, |v27|, |v26|
	v_max3_f32 v10, v55, v88, v81
.Ltmp36:
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v16, v117, v16
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v92, |v24|, |v23|, |v22|
	v_max3_f32 v95, |v15|, |v12|, |v13|
	v_max3_f32 v83, |v78|, |v77|, |v71|
	v_max3_f32 v93, |v20|, |v19|, |v17|
	v_max3_f32 v94, |v21|, |v18|, |v16|
	v_max3_f32 v36, v84, v85, |v56|
	v_max3_f32 v84, v91, |v25|, v92
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v55, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_xor_b32_e32 v119, v6, v7
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v85, v94, v95, |v14|
	v_max3_f32 v9, v11, v83, v36
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v83, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v121, 3, v151
	v_lshl_add_u32 v87, v150, 6, 0
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v11, v84, v93, v85
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v81, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v36, v1, 4, v120
	v_xor_b32_e32 v88, v122, v7
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v55, v55, v55
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v84, v11, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v81, v81, v81
	v_max_f32_e32 v85, v83, v83
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v36, v36, v8, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v83, v2, v55 :: v_dual_max_f32 v86, v84, v84
	v_max_f32_e32 v84, v9, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v85, v10, v85
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v2, v87, v121, v88
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v86, v11, v86 :: v_dual_lshlrev_b32 v1, 3, v1
.Ltmp50:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v4, 0x1b00, v4, v6
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	ds_store_b128 v36, v[83:86]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[83:86], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v55, v86, v86
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v86, v86 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v2, v83
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v9, v83, v83
	v_max_f32_e32 v11, v84, v84
	v_max_f32_e32 v81, v85, v85
	v_dual_max_f32 v83, v86, v86 :: v_dual_mov_b32 v10, v84
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v55, v55, v83
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v10, v10, v10
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v36, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v9, v2
	v_max_f32_e32 v9, v11, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v11, v55
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v36, v36, v36 :: v_dual_max_f32 v11, v11, v11
	v_max_f32_e32 v10, v81, v36
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v81, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v11, v55, v11
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v83, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v55, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v81, v81, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v55, v55 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v83, v83, v83 :: v_dual_mov_b32 v36, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v9, v9, v81
	v_max_f32_e32 v55, v55, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v10, v10, v83
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v83, v9
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v86, v11, v55 :: v_dual_lshlrev_b32 v87, 5, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v84, v10
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v84, v84 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v2, v36
	v_max_f32_e32 v88, v83, v83
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v36, 1, v7
	v_add_nc_u32_e32 v85, 0, v151
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v89, v84, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v81, v2 :: v_dual_max_f32 v84, v9, v88
.Ltmp78:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v7, v57, v7
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v36, v85, v36, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v85, v10, v89
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_add3_u32 v1, v63, v87, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v81, v81, v81
	v_max_f32_e32 v83, v2, v81
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	ds_store_b128 v36, v[83:86]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[83:86], v1
.Ltmp84:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v10, v86, v86 :: v_dual_max_f32 v9, v85, v85
	v_max_f32_e32 v2, v84, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v10, 0x2b8cbccc, v10 :: v_dual_max_f32 v9, 0x2b8cbccc, v9
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v63, null, 0x40e00000, 0x40e00000, v10
	v_div_scale_f32 v36, null, 0x40e00000, 0x40e00000, v9
	v_div_scale_f32 v93, s2, v10, 0x40e00000, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v85, v63
	v_div_scale_f32 v87, s0, v9, 0x40e00000, v9
	v_div_scale_f32 v55, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v88, s1, v2, 0x40e00000, v2
	v_rcp_f32_e32 v84, v55
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v63, v85, 1.0
	v_fmac_f32_e32 v85, v92, v85
	v_max_f32_e32 v1, v83, v83
	v_rcp_f32_e32 v83, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v55, v84, 1.0
	v_mul_f32_e32 v92, v93, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v84, v91, v84
	v_fma_f32 v97, -v63, v92, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v90, -v36, v83, 1.0
	v_dual_mul_f32 v91, v88, v84 :: v_dual_fmac_f32 v92, v97, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v83, v90, v83
	v_fma_f32 v96, -v55, v91, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v63, v92, v93
	v_dual_mul_f32 v90, v87, v83 :: v_dual_fmac_f32 v91, v96, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v95, -v36, v90, v87
	v_max_f32_e32 v1, 0x2b8cbccc, v1
	v_fma_f32 v55, -v55, v91, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v90, v95, v83
	v_div_scale_f32 v11, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v86, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v36, v90, v87
	v_rcp_f32_e32 v81, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v11, v81, 1.0
	v_fmac_f32_e32 v81, v89, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v89, v86, v81
	v_fma_f32 v94, -v11, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v89, v94, v81
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v94.h, 0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v11, -v11, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v11, v11, v81, v89
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v36, v36, v83, v90
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v1, v11, 0x40e00000, v1
	v_div_fmas_f32 v55, v55, v84, v91
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v11, v36, 0x40e00000, v9
	v_div_fmas_f32 v9, v63, v85, v92
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v36.h, v94.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v2, v55, 0x40e00000, v2
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v36.l, v1.h
	v_mov_b16_e32 v94.l, v11.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v55, v9, 0x40e00000, v10
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v9.h, v94.h
	v_mov_b16_e32 v9.l, v2.h
	v_and_b32_e32 v10, 1, v36
	v_and_b32_e32 v36, 1, v94
	v_mov_b16_e32 v94.l, v55.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v63, 1, v9
	v_add3_u32 v9, v1, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v1, v11, v36, 0x7fff
.Ltmp85:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v11, 4, v62
.Ltmp86:
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v83, 0xffff0000, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v99, null, v83, v83, v51
	v_div_scale_f32 v84, vcc_lo, v41, v83, v41
	v_rcp_f32_e32 v114, v99
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v126, -v99, v114, 1.0
	v_fmac_f32_e32 v114, v126, v114
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v10, v2, v63, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v63, null, v83, v83, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v106, v63
	v_fma_f32 v118, -v63, v106, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v106, v118, v106
	v_mul_f32_e32 v118, v84, v106
	v_div_scale_f32 v95, null, v83, v83, v47
	v_div_scale_f32 v85, null, v83, v83, v42
	v_div_scale_f32 v91, null, v83, v83, v45
	v_div_scale_f32 v103, null, v83, v83, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v112, v95
	v_div_scale_f32 v87, null, v83, v83, v43
	v_div_scale_f32 v89, null, v83, v83, v44
	v_rcp_f32_e32 v107, v85
	v_rcp_f32_e32 v110, v91
	v_rcp_f32_e32 v116, v103
	v_rcp_f32_e32 v108, v87
	v_div_scale_f32 v93, null, v83, v83, v46
	v_rcp_f32_e32 v109, v89
	v_fma_f32 v124, -v95, v112, 1.0
	v_div_scale_f32 v97, null, v83, v83, v48
	v_div_scale_f32 v105, null, v83, v83, v60
	v_rcp_f32_e32 v111, v93
	v_div_scale_f32 v96, s5, v47, v83, v47
	v_fma_f32 v119, -v85, v107, 1.0
	v_fma_f32 v122, -v91, v110, 1.0
	v_fma_f32 v128, -v103, v116, 1.0
	v_dual_fmac_f32 v112, v124, v112 :: v_dual_and_b32 v81, 1, v94
	v_div_scale_f32 v101, null, v83, v83, v52
	v_fma_f32 v120, -v87, v108, 1.0
	v_rcp_f32_e32 v113, v97
	v_rcp_f32_e32 v117, v105
	v_fma_f32 v121, -v89, v109, 1.0
	v_div_scale_f32 v86, s0, v42, v83, v42
	v_div_scale_f32 v92, s3, v45, v83, v45
	v_dual_fmac_f32 v110, v122, v110 :: v_dual_fmac_f32 v107, v119, v107
	v_fmac_f32_e32 v116, v128, v116
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v55, v81, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_mul_f32 v124, v96, v112 :: v_dual_and_b32 v81, 0xffff0000, v10
	v_div_scale_f32 v88, s1, v43, v83, v43
	v_rcp_f32_e32 v115, v101
	v_fmac_f32_e32 v108, v120, v108
	v_fma_f32 v123, -v93, v111, 1.0
	v_div_scale_f32 v90, s2, v44, v83, v44
	v_div_scale_f32 v100, s7, v51, v83, v51
	v_dual_fmac_f32 v109, v121, v109 :: v_dual_mul_f32 v122, v92, v110
	v_fma_f32 v136, -v95, v124, v96
	v_mul_f32_e32 v119, v86, v107
	v_dual_mul_f32 v120, v88, v108 :: v_dual_and_b32 v55, 0xffff0000, v1
	v_div_scale_f32 v94, s4, v46, v83, v46
	v_div_scale_f32 v104, s9, v59, v83, v59
	v_fma_f32 v125, -v97, v113, 1.0
	v_fma_f32 v129, -v105, v117, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v111, v123, v111 :: v_dual_mul_f32 v128, v104, v116
	v_fma_f32 v130, -v63, v118, v84
	v_dual_mul_f32 v126, v100, v114 :: v_dual_mul_f32 v121, v90, v109
	v_fmac_f32_e32 v124, v136, v112
	v_fma_f32 v131, -v85, v119, v86
	v_fma_f32 v127, -v101, v115, 1.0
	v_fma_f32 v132, -v87, v120, v88
	v_dual_fmac_f32 v113, v125, v113 :: v_dual_fmac_f32 v118, v130, v106
	v_fmac_f32_e32 v117, v129, v117
	v_mul_f32_e32 v123, v94, v111
	v_fma_f32 v133, -v89, v121, v90
	v_fma_f32 v134, -v91, v122, v92
	v_fmac_f32_e32 v119, v131, v107
	v_dual_fmac_f32 v115, v127, v115 :: v_dual_fmac_f32 v120, v132, v108
	v_fma_f32 v135, -v93, v123, v94
	v_fma_f32 v63, -v63, v118, v84
	v_fma_f32 v138, -v99, v126, v100
	v_dual_fmac_f32 v121, v133, v109 :: v_dual_fmac_f32 v122, v134, v110
	v_fma_f32 v84, -v85, v119, v86
	v_fma_f32 v85, -v87, v120, v88
	v_fmac_f32_e32 v123, v135, v111
	v_div_fmas_f32 v63, v63, v106, v118
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v126, v138, v114
	v_fma_f32 v86, -v89, v121, v90
	v_div_fmas_f32 v84, v84, v107, v119
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v87, -v91, v122, v92
	v_div_fmas_f32 v85, v85, v108, v120
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v88, -v93, v123, v94
	v_div_fixup_f32 v41, v63, v83, v41
	v_div_fmas_f32 v63, v86, v109, v121
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v89, -v95, v124, v96
	v_div_fixup_f32 v42, v84, v83, v42
	v_div_fmas_f32 v84, v87, v110, v122
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v43, v85, v83, v43
	v_div_fmas_f32 v85, v88, v111, v123
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v98, s6, v48, v83, v48
	v_div_fmas_f32 v86, v89, v112, v124
	v_div_scale_f32 v89, null, v83, v83, v65
	v_div_scale_f32 v94, s2, v65, v83, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v47, v86, v83, v47
	v_fma_f32 v86, -v103, v128, v104
	v_div_scale_f32 v93, null, v83, v83, v67
	v_div_scale_f32 v102, s8, v52, v83, v52
	v_fmac_f32_e32 v128, v86, v116
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v88, s0, v60, v83, v60
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v44, v63, v83, v44
	v_div_scale_f32 v63, null, v83, v83, v82
	v_div_scale_f32 v95, null, v83, v83, v68
	v_fma_f32 v91, -v99, v126, v100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v89, v86, 1.0
	v_div_fixup_f32 v46, v85, v83, v46
	v_div_fixup_f32 v45, v84, v83, v45
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v36, 0xffff0000, v2
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v86, v92, v86
	v_rcp_f32_e32 v92, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v96, v94, v86
	v_mul_f32_e32 v125, v98, v113
	v_fma_f32 v137, -v97, v125, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v125, v137, v113
	v_fma_f32 v90, -v97, v125, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v98, -v93, v92, 1.0
	v_rcp_f32_e32 v97, v95
	v_fmac_f32_e32 v92, v98, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v90, v113, v125
	v_dual_mul_f32 v90, v88, v117 :: v_dual_mul_f32 v127, v102, v115
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v48, v87, v83, v48
	v_rcp_f32_e32 v87, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v139, -v101, v127, v102
	v_div_fmas_f32 v84, v91, v114, v126
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v98, -v95, v97, 1.0
	v_fmac_f32_e32 v127, v139, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v51, v84, v83, v51
	v_fma_f32 v84, -v103, v128, v104
	v_fmac_f32_e32 v97, v98, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v63, v87, 1.0
	v_fma_f32 v85, -v101, v127, v102
	v_div_scale_f32 v98, null, v81, v81, v73
	v_fmac_f32_e32 v87, v91, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v85, v85, v115, v127
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v91, s1, v82, v83, v82
	v_div_fmas_f32 v84, v84, v116, v128
	v_div_fixup_f32 v52, v85, v83, v52
	v_fma_f32 v85, -v105, v90, v88
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v59, v84, v83, v59
	v_dual_fmac_f32 v90, v85, v117 :: v_dual_mul_f32 v85, v91, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v84, -v105, v90, v88
	v_fma_f32 v88, -v63, v85, v91
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v84, v84, v117, v90
	v_div_scale_f32 v90, s0, v67, v83, v67
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v60, v84, v83, v60
	v_dual_mul_f32 v84, v90, v92 :: v_dual_fmac_f32 v85, v88, v87
	v_fma_f32 v88, -v89, v96, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v63, v85, v91
	v_fmac_f32_e32 v96, v88, v86
	v_div_scale_f32 v88, s3, v68, v83, v68
	v_div_scale_f32 v91, null, v81, v81, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v63, v63, v87, v85
	v_fma_f32 v85, -v89, v96, v94
	v_fma_f32 v87, -v93, v84, v90
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v94, v88, v97
	v_div_fixup_f32 v63, v63, v83, v82
	v_div_fmas_f32 v85, v85, v86, v96
	v_fmac_f32_e32 v84, v87, v92
	v_rcp_f32_e32 v86, v98
	v_fma_f32 v87, -v95, v94, v88
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v89, v91
	v_fma_f32 v82, -v93, v84, v90
	v_div_scale_f32 v90, null, v81, v81, v75
	v_div_fixup_f32 v65, v85, v83, v65
	v_div_scale_f32 v85, s1, v72, v81, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v82, v82, v92, v84
	v_div_scale_f32 v92, s0, v73, v81, v73
	v_fmac_f32_e32 v94, v87, v97
	v_fma_f32 v87, -v98, v86, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v96, -v91, v89, 1.0
	v_div_fixup_f32 v67, v82, v83, v67
	v_fma_f32 v84, -v95, v94, v88
	v_fmac_f32_e32 v86, v87, v86
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v93, null, v81, v81, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v95, v92, v86
	v_div_fmas_f32 v84, v84, v97, v94
	v_rcp_f32_e32 v97, v93
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v82, -v98, v95, v92
	v_div_fixup_f32 v68, v84, v83, v68
	v_div_scale_f32 v83, s2, v75, v81, v75
	v_fmac_f32_e32 v89, v96, v89
	v_fma_f32 v96, -v90, v87, 1.0
	v_div_scale_f32 v84, null, v81, v81, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v96, v87
	v_dual_fmac_f32 v95, v82, v86 :: v_dual_mul_f32 v82, v83, v87
	v_mul_f32_e32 v88, v85, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v91, v88, v85
	v_fmac_f32_e32 v88, v94, v89
	v_fma_f32 v94, -v93, v97, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v85, -v91, v88, v85
	v_rcp_f32_e32 v91, v84
	v_fmac_f32_e32 v97, v94, v97
	v_div_scale_f32 v94, s3, v76, v81, v76
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v85, v85, v89, v88
	v_fma_f32 v88, -v98, v95, v92
	v_fma_f32 v89, -v90, v82, v83
	v_div_scale_f32 v98, null, v81, v81, v80
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v92, v94, v97
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v84, v91, 1.0
	v_fmac_f32_e32 v82, v89, v87
	v_div_fmas_f32 v86, v88, v86, v95
	v_rcp_f32_e32 v88, v98
	v_fma_f32 v89, -v93, v92, v94
	v_fmac_f32_e32 v91, v96, v91
	v_div_scale_f32 v95, s0, v79, v81, v79
	v_div_fixup_f32 v72, v85, v81, v72
	v_div_fixup_f32 v73, v86, v81, v73
	v_fma_f32 v83, -v90, v82, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v92, v89, v97 :: v_dual_mul_f32 v85, v95, v91
	v_fma_f32 v86, -v98, v88, 1.0
	v_div_scale_f32 v89, null, v81, v81, v78
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v90, s1, v80, v81, v80
	v_div_fmas_f32 v82, v83, v87, v82
	v_fma_f32 v83, -v93, v92, v94
	v_fma_f32 v87, -v84, v85, v95
	v_fmac_f32_e32 v88, v86, v88
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v93, null, v81, v81, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v87, v91
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v75, v82, v81, v75
	v_rcp_f32_e32 v87, v93
	v_div_fmas_f32 v83, v83, v97, v92
	v_fma_f32 v82, -v84, v85, v95
	v_div_scale_f32 v84, s2, v78, v81, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v89, v86, 1.0
	v_div_fixup_f32 v76, v83, v81, v76
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v95, null, v81, v81, v71
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v86, v94, v86
	v_mul_f32_e32 v92, v90, v88
	v_fma_f32 v94, -v93, v87, 1.0
	v_div_fmas_f32 v82, v82, v91, v85
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v85, v95
	v_fma_f32 v83, -v98, v92, v90
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v94, null, v81, v81, v74
	v_div_fixup_f32 v79, v82, v81, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v92, v83, v88
	v_div_scale_f32 v91, s0, v77, v81, v77
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v82, -v98, v92, v90
	v_fma_f32 v98, -v95, v85, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v82, v82, v88, v92
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v92, -v94, v97, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v80, v82, v81, v80
	v_fmac_f32_e32 v97, v92, v97
	v_mul_f32_e32 v83, v84, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v89, v83, v84
	v_dual_mul_f32 v96, v91, v87 :: v_dual_fmac_f32 v83, v90, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v93, v96, v91
	v_fmac_f32_e32 v85, v98, v85
	v_div_scale_f32 v90, s1, v71, v81, v71
	v_fma_f32 v82, -v89, v83, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v96, v88, v87
	v_div_scale_f32 v89, null, v81, v81, v70
	v_div_scale_f32 v88, s3, v74, v81, v74
	v_div_fmas_f32 v82, v82, v86, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v93, v96, v91
	v_rcp_f32_e32 v91, v89
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v92, v88, v97
	v_div_scale_f32 v93, null, v81, v81, v69
	v_div_fmas_f32 v83, v83, v87, v96
	v_div_fixup_f32 v78, v82, v81, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v87, -v94, v92, v88
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v98, null, v81, v81, v56
	v_fma_f32 v96, -v89, v91, 1.0
	v_mul_f32_e32 v84, v90, v85
	v_div_fixup_f32 v77, v83, v81, v77
	v_div_scale_f32 v83, s0, v70, v81, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v91, v96, v91
	v_fma_f32 v86, -v95, v84, v90
	v_fmac_f32_e32 v92, v87, v97
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v78, v78
	v_rndne_f32_e32 v77, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v84, v86, v85
	v_rcp_f32_e32 v86, v93
	v_fma_f32 v82, -v95, v84, v90
	v_div_scale_f32 v90, null, v81, v81, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v82, v82, v85, v84
	v_fma_f32 v87, -v93, v86, 1.0
	v_fma_f32 v84, -v94, v92, v88
	v_mul_f32_e32 v85, v83, v91
	v_div_scale_f32 v88, s1, v69, v81, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v86, v87, v86
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v87, v90
	v_div_fixup_f32 v71, v82, v81, v71
	v_div_scale_f32 v94, null, v81, v81, v64
	v_mul_f32_e32 v95, v88, v86
	v_div_fmas_f32 v84, v84, v97, v92
	v_fma_f32 v92, -v89, v85, v83
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v82, -v93, v95, v88
	v_div_fixup_f32 v74, v84, v81, v74
	v_fmac_f32_e32 v85, v92, v91
	v_div_scale_f32 v92, null, v81, v81, v58
	v_div_scale_f32 v84, s2, v66, v81, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v83, -v89, v85, v83
	v_rcp_f32_e32 v89, v92
	v_fmac_f32_e32 v95, v82, v86
	v_fma_f32 v96, -v90, v87, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v71, v71
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v83, v83, v91, v85
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v85, -v93, v95, v88
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v74, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v70, v83, v81, v70
	v_fma_f32 v93, -v92, v89, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v70, v70
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s0, v58, v81, v58
	v_fmac_f32_e32 v87, v96, v87
	v_fma_f32 v96, -v94, v97, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v82, v84, v87
	v_div_fmas_f32 v85, v85, v86, v95
	v_rcp_f32_e32 v86, v98
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v88, -v90, v82, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v69, v85, v81, v69
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v85, -v98, v86, 1.0
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s3, v64, v81, v64
	v_fmac_f32_e32 v86, v85, v86
	v_fmac_f32_e32 v82, v88, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v91, v96, v97
	v_fma_f32 v83, -v90, v82, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v94, v91, v96
	v_mul_f32_e32 v84, v93, v89
	v_div_scale_f32 v90, s1, v56, v81, v56
	v_div_fmas_f32 v82, v83, v87, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v88, v97
	v_div_scale_f32 v88, null, v55, v55, v54
	v_fma_f32 v87, -v92, v84, v93
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v83, -v94, v91, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v94, null, v55, v55, v53
	v_fmac_f32_e32 v84, v87, v89
	v_div_fmas_f32 v83, v83, v97, v91
	v_mul_f32_e32 v91, v90, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v87, v94
	v_div_fixup_f32 v66, v82, v81, v66
	v_fma_f32 v82, -v92, v84, v93
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v95, -v88, v85, 1.0
	v_div_fixup_f32 v64, v83, v81, v64
	v_fma_f32 v83, -v98, v91, v90
	v_div_scale_f32 v92, s2, v54, v55, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v85, v95, v85
	v_fma_f32 v93, -v94, v87, 1.0
	v_div_scale_f32 v95, null, v55, v55, v49
	v_fmac_f32_e32 v91, v83, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v83, v92, v85
	v_fmac_f32_e32 v87, v93, v87
	v_div_fmas_f32 v82, v82, v89, v84
	v_rcp_f32_e32 v84, v95
	v_div_scale_f32 v93, null, v55, v55, v50
	v_div_scale_f32 v89, s0, v53, v55, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v58, v82, v81, v58
	v_rcp_f32_e32 v97, v93
	v_fma_f32 v82, -v98, v91, v90
	v_fma_f32 v90, -v88, v83, v92
	v_mul_f32_e32 v96, v89, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v66, v66
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v82, v82, v86, v91
	v_fmac_f32_e32 v83, v90, v85
	v_fma_f32 v86, -v94, v96, v89
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s1, v49, v55, v49
	v_fma_f32 v91, -v93, v97, 1.0
	v_div_fixup_f32 v56, v82, v81, v56
	v_fma_f32 v81, -v88, v83, v92
	v_fmac_f32_e32 v96, v86, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v82, v90, v84 :: v_dual_fmac_f32 v97, v91, v97
	v_div_scale_f32 v86, s3, v50, v55, v50
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v92, null, v55, v55, v39
	v_div_fmas_f32 v81, v81, v85, v83
	v_fma_f32 v83, -v94, v96, v89
	v_fma_f32 v85, -v95, v82, v90
	v_mul_f32_e32 v91, v86, v97
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v88, null, v55, v55, v40
	v_div_fmas_f32 v83, v83, v87, v96
	v_fmac_f32_e32 v82, v85, v84
	v_rcp_f32_e32 v85, v92
	v_fma_f32 v87, -v93, v91, v86
	v_rcp_f32_e32 v89, v88
	v_div_fixup_f32 v54, v81, v55, v54
	v_fma_f32 v81, -v95, v82, v90
	v_div_scale_f32 v90, null, v55, v55, v38
	v_fmac_f32_e32 v91, v87, v97
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v53, v83, v55, v53
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v92, v85, 1.0
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v93, v91, v86
	v_rcp_f32_e32 v86, v90
	v_div_scale_f32 v93, null, v55, v55, v37
	v_fma_f32 v94, -v88, v89, 1.0
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s1, v39, v55, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v96, v93
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v89, v94, v89
	v_div_scale_f32 v83, s0, v40, v55, v40
	v_div_fmas_f32 v82, v82, v97, v91
	v_mul_f32_e32 v94, v87, v85
	v_fma_f32 v95, -v90, v86, 1.0
	v_div_fixup_f32 v49, v81, v55, v49
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v50, v82, v55, v50
	v_fma_f32 v81, -v92, v94, v87
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v82, s2, v38, v55, v38
	v_mul_f32_e32 v84, v83, v89
	v_fma_f32 v95, -v93, v96, 1.0
	v_div_scale_f32 v97, null, v55, v55, v35
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s3, v37, v55, v37
	v_dual_fmac_f32 v94, v81, v85 :: v_dual_mul_f32 v81, v82, v86
	v_fma_f32 v91, -v88, v84, v83
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v64, v64
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v84, v91, v89
	v_div_scale_f32 v91, null, v55, v55, v34
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v58, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v83, -v88, v84, v83
	v_rcp_f32_e32 v88, v91
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v83, v83, v89, v84
	v_mul_f32_e32 v89, v95, v96
	v_fma_f32 v84, -v92, v94, v87
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v87, -v90, v81, v82
	v_div_fixup_f32 v40, v83, v55, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v91, v88, 1.0
	v_div_fmas_f32 v84, v84, v85, v94
	v_rcp_f32_e32 v85, v97
	v_fmac_f32_e32 v81, v87, v86
	v_fma_f32 v87, -v93, v89, v95
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s0, v34, v55, v34
	v_div_fixup_f32 v39, v84, v55, v39
	v_fma_f32 v82, -v90, v81, v82
	v_fmac_f32_e32 v89, v87, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v83, v92, v88
	v_fma_f32 v84, -v97, v85, 1.0
	v_div_scale_f32 v87, null, v55, v55, v33
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v90, s1, v35, v55, v35
	v_div_fmas_f32 v81, v82, v86, v81
	v_fma_f32 v82, -v93, v89, v95
	v_fma_f32 v86, -v91, v83, v92
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v93, null, v55, v55, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v86, v88
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v38, v81, v55, v38
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v82, v82, v96, v89
	v_mul_f32_e32 v89, v90, v85
	v_fma_f32 v81, -v91, v83, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v37, v82, v55, v37
	v_fma_f32 v82, -v97, v89, v90
	v_div_scale_f32 v91, s2, v33, v55, v33
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v92, -v93, v86, 1.0
	v_div_scale_f32 v94, null, v55, v55, v31
	v_div_fmas_f32 v81, v81, v88, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v82, v85 :: v_dual_fmac_f32 v86, v92, v86
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v92, null, v55, v55, v30
	v_mul_f32_e32 v82, v91, v84
	v_div_scale_f32 v88, s0, v32, v55, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v92
	v_div_fixup_f32 v34, v81, v55, v34
	v_fma_f32 v81, -v97, v89, v90
	v_fma_f32 v90, -v87, v82, v91
	v_mul_f32_e32 v95, v88, v86
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v40, v40
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v81, v81, v85, v89
	v_fmac_f32_e32 v82, v90, v84
	v_fma_f32 v85, -v93, v95, v88
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v89, s1, v31, v55, v31
	v_fma_f32 v90, -v92, v96, 1.0
	v_div_fixup_f32 v35, v81, v55, v35
	v_fma_f32 v81, -v87, v82, v91
	v_fmac_f32_e32 v95, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v85, v89, v83 :: v_dual_fmac_f32 v96, v90, v96
	v_div_scale_f32 v90, null, v55, v55, v28
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v87, s3, v30, v55, v30
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v93, v95, v88
	v_fma_f32 v84, -v94, v85, v89
	v_rcp_f32_e32 v88, v90
	v_div_scale_f32 v93, null, v55, v55, v29
	v_mul_f32_e32 v91, v87, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v84, v83
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v84, v93
	v_div_fmas_f32 v82, v82, v86, v95
	v_fma_f32 v86, -v92, v91, v87
	v_div_fixup_f32 v33, v81, v55, v33
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v88, 1.0
	v_fma_f32 v81, -v94, v85, v89
	v_div_fixup_f32 v32, v82, v55, v32
	v_fmac_f32_e32 v91, v86, v96
	v_div_scale_f32 v82, s0, v28, v55, v28
	v_fmac_f32_e32 v88, v95, v88
	v_fma_f32 v86, -v93, v84, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v94, null, v36, v36, v26
	v_div_fmas_f32 v81, v81, v83, v85
	v_fma_f32 v83, -v92, v91, v87
	v_mul_f32_e32 v85, v82, v88
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, null, v36, v36, v27
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v87, s1, v29, v55, v29
	v_div_fmas_f32 v83, v83, v96, v91
	v_rcp_f32_e32 v89, v86
	v_fma_f32 v91, -v90, v85, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v92, v87, v84
	v_div_fixup_f32 v31, v81, v55, v31
	v_div_fixup_f32 v30, v83, v55, v30
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v85, v91, v88
	v_fma_f32 v81, -v93, v92, v87
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v96, null, v36, v36, v24
	v_fma_f32 v91, -v86, v89, 1.0
	v_fma_f32 v82, -v90, v85, v82
	v_div_scale_f32 v90, null, v36, v36, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v81, v84 :: v_dual_fmac_f32 v89, v91, v89
	v_div_scale_f32 v81, s2, v27, v36, v27
	v_rcp_f32_e32 v91, v90
	v_fma_f32 v95, -v94, v83, 1.0
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v85, -v93, v92, v87
	v_mul_f32_e32 v87, v81, v89
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v83, v95, v83
	v_div_scale_f32 v88, s0, v26, v36, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v95, -v86, v87, v81
	v_fma_f32 v93, -v90, v91, 1.0
	v_rcp_f32_e32 v98, v96
	v_div_fmas_f32 v84, v85, v84, v92
	v_mul_f32_e32 v97, v88, v83
	v_fmac_f32_e32 v87, v95, v89
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s3, v25, v36, v25
	v_div_fixup_f32 v28, v82, v55, v28
	v_div_fixup_f32 v29, v84, v55, v29
	v_fma_f32 v55, -v86, v87, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v93, v91
	v_div_scale_f32 v84, null, v36, v36, v23
	v_fma_f32 v85, -v94, v97, v88
	v_fma_f32 v82, -v96, v98, 1.0
	v_fma_f32 v81, -v90, v92, v93
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v97, v85, v83 :: v_dual_fmac_f32 v98, v82, v98
	v_fmac_f32_e32 v92, v81, v91
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v82, s1, v24, v36, v24
	v_div_fmas_f32 v55, v55, v89, v87
	v_fma_f32 v85, -v94, v97, v88
	v_div_scale_f32 v87, null, v36, v36, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v86, v82, v98
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v27, v55, v36, v27
	v_fma_f32 v88, -v84, v81, 1.0
	v_div_fmas_f32 v83, v85, v83, v97
	v_fma_f32 v85, -v90, v92, v93
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v90, -v96, v86, v82
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v88, s0, v23, v36, v23
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v86, v90, v98
	v_div_fmas_f32 v85, v85, v91, v92
	v_mul_f32_e32 v55, v88, v81
	v_div_fixup_f32 v26, v83, v36, v26
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v83, -v87, v89, 1.0
	v_fma_f32 v82, -v96, v86, v82
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v90, -v84, v55, v88
	v_div_fixup_f32 v25, v85, v36, v25
	v_div_scale_f32 v85, null, v36, v36, v20
	v_fmac_f32_e32 v89, v83, v89
	v_div_scale_f32 v83, s2, v22, v36, v22
	v_div_fmas_f32 v82, v82, v98, v86
	v_fmac_f32_e32 v55, v90, v81
	v_rcp_f32_e32 v91, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v83, v89
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v24, v82, v36, v24
	v_fma_f32 v82, -v84, v55, v88
	v_div_scale_f32 v90, null, v36, v36, v19
	v_fma_f32 v84, -v87, v86, v83
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v55, v82, v81, v55
	v_div_scale_f32 v81, null, v36, v36, v17
	v_fma_f32 v88, -v85, v91, 1.0
	v_rcp_f32_e32 v92, v90
	v_fmac_f32_e32 v86, v84, v89
	v_rcp_f32_e32 v84, v81
	v_div_scale_f32 v82, s0, v20, v36, v20
	v_fmac_f32_e32 v91, v88, v91
	v_div_scale_f32 v88, null, v36, v36, v21
	v_div_fixup_f32 v23, v55, v36, v23
	v_fma_f32 v83, -v87, v86, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v90, v92, 1.0
	v_rcp_f32_e32 v94, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v81, v84, 1.0
	v_mul_f32_e32 v87, v82, v91
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v92, v55, v92
	v_div_scale_f32 v55, s1, v19, v36, v19
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v93, null, v36, v36, v18
	v_div_fmas_f32 v83, v83, v89, v86
	v_fma_f32 v86, -v85, v87, v82
	v_mul_f32_e32 v89, v55, v92
	v_div_scale_f32 v95, s2, v17, v36, v17
	v_fma_f32 v96, -v88, v94, 1.0
	v_rcp_f32_e32 v97, v93
	v_fmac_f32_e32 v87, v86, v91
	v_fma_f32 v86, -v90, v89, v55
	v_mul_f32_e32 v98, v95, v84
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s3, v21, v36, v21
	v_div_fixup_f32 v22, v83, v36, v22
	v_fma_f32 v82, -v85, v87, v82
	v_fmac_f32_e32 v89, v86, v92
	v_fma_f32 v83, -v81, v98, v95
	v_mul_f32_e32 v85, v96, v94
	v_fma_f32 v86, -v93, v97, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v55, -v90, v89, v55
	v_fmac_f32_e32 v98, v83, v84
	v_fma_f32 v83, -v88, v85, v96
	v_fmac_f32_e32 v97, v86, v97
	v_div_scale_f32 v86, s0, v18, v36, v18
	v_div_fmas_f32 v82, v82, v91, v87
	v_fma_f32 v81, -v81, v98, v95
	v_fmac_f32_e32 v85, v83, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v83, v86, v97
	v_div_scale_f32 v87, null, v36, v36, v16
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v20, v82, v36, v20
	v_div_fmas_f32 v55, v55, v92, v89
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v89, v87
	v_div_fmas_f32 v81, v81, v84, v98
	v_fma_f32 v84, -v88, v85, v96
	v_fma_f32 v88, -v93, v83, v86
	v_div_fixup_f32 v19, v55, v36, v19
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v17, v81, v36, v17
	v_div_fmas_f32 v84, v84, v94, v85
	v_fmac_f32_e32 v83, v88, v97
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v82, -v87, v89, 1.0
	v_div_scale_f32 v81, null, v36, v36, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v93, v83, v86
	v_div_fixup_f32 v21, v84, v36, v21
	v_fmac_f32_e32 v89, v82, v89
	v_div_scale_f32 v82, null, v36, v36, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v55, v55, v97, v83
	v_div_scale_f32 v85, vcc_lo, v16, v36, v16
	v_rcp_f32_e32 v83, v81
	v_div_scale_f32 v84, null, v36, v36, v13
	v_mul_f32_e32 v90, v85, v89
	v_div_scale_f32 v91, null, v36, v36, v14
	v_rcp_f32_e32 v86, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v88, v84
	v_fma_f32 v94, -v87, v90, v85
	v_div_fixup_f32 v18, v55, v36, v18
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v55, -v81, v83, 1.0
	v_rcp_f32_e32 v93, v91
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v90, v94, v89
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v83, v55, v83
	v_div_scale_f32 v55, s0, v15, v36, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v87, v90, v85
	v_fma_f32 v92, -v82, v86, 1.0
	v_fma_f32 v95, -v84, v88, 1.0
	v_mul_f32_e32 v96, v55, v83
	v_fma_f32 v97, -v91, v93, 1.0
	v_div_fmas_f32 v85, v85, v89, v90
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fmac_f32_e32 v86, v92, v86
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v78, v78, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v92, s1, v12, v36, v12
	v_fmac_f32_e32 v88, v95, v88
	v_div_scale_f32 v95, s2, v13, v36, v13
	v_fma_f32 v94, -v81, v96, v55
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v78, v78
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v93, v97, v93
	v_div_scale_f32 v97, s3, v14, v36, v14
	v_dual_mul_f32 v98, v92, v86 :: v_dual_mul_f32 v99, v95, v88
	v_fmac_f32_e32 v96, v94, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v100, v97, v93
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v71, v71, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v87, -v82, v98, v92
	v_fma_f32 v94, -v84, v99, v95
	v_fma_f32 v55, -v81, v96, v55
	v_fma_f32 v81, -v91, v100, v97
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v98, v87, v86 :: v_dual_fmac_f32 v99, v94, v88
	v_div_fmas_f32 v55, v55, v83, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v100, v81, v93
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v82, -v82, v98, v92
	v_fma_f32 v81, -v84, v99, v95
	v_div_fixup_f32 v15, v55, v36, v15
	v_fma_f32 v83, -v91, v100, v97
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v55, v60
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v82, v82, v86, v98
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v60, v65
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v81, v81, v88, v99
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v16, v85, v36, v16
	v_div_fmas_f32 v83, v83, v93, v100
	v_div_fixup_f32 v12, v82, v36, v12
	v_div_fixup_f32 v13, v81, v36, v13
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v60, v60, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v14, v83, v36, v14
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v41
	v_rndne_f32_e32 v41, v42
	v_rndne_f32_e32 v42, v43
	v_rndne_f32_e32 v43, v44
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_cvt_i32_f32_e32 v60, v60
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v44, v45
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v43, v43, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v45, v46
	v_rndne_f32_e32 v46, v47
	v_rndne_f32_e32 v47, v48
	v_rndne_f32_e32 v48, v51
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v52, v59
	v_rndne_f32_e32 v59, v63
	v_rndne_f32_e32 v63, v67
	v_rndne_f32_e32 v65, v68
	v_rndne_f32_e32 v67, v72
	v_rndne_f32_e32 v68, v73
	v_rndne_f32_e32 v72, v75
	v_rndne_f32_e32 v73, v76
	v_rndne_f32_e32 v24, v24
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v93, v25
	v_and_b32_e32 v25, 15, v60
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v60, 16, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v75, v79
	v_rndne_f32_e32 v76, v80
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v14, v14
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v73, v73, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_cvt_i32_f32_e32 v103, v15
	v_and_b32_e32 v15, 15, v43
	v_and_b32_e32 v43, 15, v56
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v56, 6, v60
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v22, v22
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v75, v75, s0, 0x40e00000
	v_med3_f32 v76, v76, s0, 0x40e00000
	v_med3_f32 v77, v77, s0, 0x40e00000
	v_med3_f32 v74, v74, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v79, v40
	v_cvt_i32_f32_e32 v91, v27
	v_cvt_i32_f32_e32 v92, v26
	v_cvt_i32_f32_e32 v94, v24
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v5, 0, v5, v56
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v83, v34
	v_cvt_i32_f32_e32 v84, v35
	v_cvt_i32_f32_e32 v85, v33
	v_cvt_i32_f32_e32 v86, v32
	v_cvt_i32_f32_e32 v99, v17
	v_cvt_i32_f32_e32 v100, v21
	v_cvt_i32_f32_e32 v101, v18
	v_cvt_i32_f32_e32 v102, v16
	v_cvt_i32_f32_e32 v80, v39
	v_cvt_i32_f32_e32 v81, v38
	v_cvt_i32_f32_e32 v87, v31
	v_cvt_i32_f32_e32 v88, v30
	v_cvt_i32_f32_e32 v89, v28
	v_cvt_i32_f32_e32 v90, v29
	v_cvt_i32_f32_e32 v97, v20
	v_cvt_i32_f32_e32 v98, v19
	v_cvt_i32_f32_e32 v104, v12
	v_cvt_i32_f32_e32 v105, v13
	v_cvt_i32_f32_e32 v106, v14
	v_and_b32_e32 v12, 15, v36
	v_and_b32_e32 v13, 15, v41
	v_and_b32_e32 v14, 15, v42
	v_and_b32_e32 v16, 15, v44
	v_and_b32_e32 v17, 15, v45
	v_and_b32_e32 v18, 15, v46
	v_and_b32_e32 v19, 15, v47
	v_and_b32_e32 v20, 15, v48
	v_and_b32_e32 v28, 15, v67
	v_and_b32_e32 v29, 15, v68
	v_and_b32_e32 v30, 15, v72
	v_and_b32_e32 v31, 15, v73
	v_and_b32_e32 v38, 15, v70
	v_and_b32_e32 v39, 15, v69
	v_and_b32_e32 v44, 15, v54
	v_and_b32_e32 v45, 15, v53
	v_and_b32_e32 v46, 15, v49
	v_and_b32_e32 v47, 15, v50
	v_and_b32_e32 v48, 15, v79
	v_and_b32_e32 v67, 15, v91
	v_and_b32_e32 v68, 15, v92
	v_and_b32_e32 v69, 15, v93
	v_and_b32_e32 v70, 15, v94
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v8, v5, v7, v8
	v_xad_u32 v79, v4, v62, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v82, v37
	v_cvt_i32_f32_e32 v95, v23
	v_cvt_i32_f32_e32 v96, v22
	v_and_b32_e32 v21, 15, v51
	v_and_b32_e32 v22, 15, v52
	v_and_b32_e32 v23, 15, v55
	v_and_b32_e32 v24, 15, v59
	v_and_b32_e32 v26, 15, v63
	v_and_b32_e32 v27, 15, v65
	v_and_b32_e32 v32, 15, v75
	v_and_b32_e32 v33, 15, v76
	v_and_b32_e32 v34, 15, v78
	v_and_b32_e32 v35, 15, v77
	v_and_b32_e32 v36, 15, v71
	v_and_b32_e32 v37, 15, v74
	v_and_b32_e32 v52, 15, v83
	v_and_b32_e32 v53, 15, v84
	v_and_b32_e32 v54, 15, v85
	v_and_b32_e32 v55, 15, v86
	v_and_b32_e32 v75, 15, v99
	v_and_b32_e32 v76, 15, v100
	v_and_b32_e32 v77, 15, v101
	v_and_b32_e32 v78, 15, v102
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v8, v[12:15]
	ds_store_b128 v8, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v79
	ds_load_b128 v[12:15], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[28:31]
	ds_store_b128 v8, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[20:23], v79
	ds_load_b128 v[28:31], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[44:47]
	ds_store_b128 v8, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v79
	ds_load_b128 v[44:47], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[67:70]
	ds_store_b128 v8, v[75:78] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[52:55], v79
	ds_load_b128 v[67:70], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[16:19]
	ds_store_b128 v8, v[24:27] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v79
	ds_load_b128 v[24:27], v79 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v40, 15, v66
	v_and_b32_e32 v41, 15, v64
	v_and_b32_e32 v42, 15, v58
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[32:35]
	ds_store_b128 v8, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v79
	ds_load_b128 v[40:43], v79 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v49, 15, v80
	v_and_b32_e32 v50, 15, v81
	v_and_b32_e32 v51, 15, v82
	v_and_b32_e32 v71, 15, v95
	v_and_b32_e32 v72, 15, v96
	v_and_b32_e32 v73, 15, v97
	v_and_b32_e32 v74, 15, v98
	v_and_b32_e32 v63, 15, v87
	v_and_b32_e32 v64, 15, v88
	v_and_b32_e32 v65, 15, v89
	v_and_b32_e32 v66, 15, v90
	v_and_b32_e32 v56, 15, v103
	v_and_b32_e32 v57, 15, v104
	v_and_b32_e32 v58, 15, v105
	v_and_b32_e32 v59, 15, v106
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s29, 31
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_barrier
	ds_store_b128 v8, v[48:51]
	ds_store_b128 v8, v[63:66] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v79
	ds_load_b128 v[62:65], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[71:74]
	ds_store_b128 v8, v[56:59] offset:512
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v8, v12, 4, v4
	v_lshl_or_b32 v4, v13, 4, v5
	v_lshl_or_b32 v5, v14, 4, v6
	v_lshl_or_b32 v6, v15, 4, v7
	v_lshl_or_b32 v7, v24, 4, v16
	v_lshl_or_b32 v12, v25, 4, v17
	v_lshl_or_b32 v13, v26, 4, v18
	v_lshl_or_b32 v14, v27, 4, v19
	v_lshl_or_b32 v24, v45, 4, v37
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v37, 3, v61
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s28, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v11, s0, v11
	s_mul_i32 s2, s30, s0
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[56:59], v79
	ds_load_b128 v[71:74], v79 offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v15, v28, 4, v20
	v_lshl_or_b32 v16, v29, 4, v21
	v_lshl_or_b32 v17, v30, 4, v22
	v_lshl_or_b32 v18, v31, 4, v23
	v_lshl_or_b32 v19, v40, 4, v32
	v_lshl_or_b32 v20, v41, 4, v33
	v_lshl_or_b32 v21, v42, 4, v34
	v_lshl_or_b32 v22, v43, 4, v35
	v_lshl_or_b32 v26, v47, 4, v39
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v39, s2, s1, v37
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v6.l
	v_and_b16 v2.l, 0xff, v5.l
	v_lshlrev_b16 v4.l, 8, v4.l
	v_and_b16 v4.h, 0xff, v8.l
	v_lshlrev_b16 v5.l, 8, v14.l
	v_and_b16 v5.h, 0xff, v13.l
	v_lshlrev_b16 v6.l, 8, v12.l
	v_and_b16 v6.h, 0xff, v7.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v23, v44, 4, v36
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v41, v39, v11
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.h, v4.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v2.l, 0xff, v17.l
	v_lshlrev_b16 v4.l, 8, v16.l
	v_and_b16 v4.h, 0xff, v15.l
	v_lshlrev_b16 v5.l, 8, v22.l
	v_and_b16 v5.h, 0xff, v21.l
	v_lshlrev_b16 v6.l, 8, v20.l
	v_and_b16 v6.h, 0xff, v19.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s0, 4
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v31, v67, 4, v52
	v_lshl_or_b32 v32, v68, 4, v53
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v42, v11, s1, v39
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[7:8], v41, s[16:19], 0 offen
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.h, v4.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v4.l, 8, v24.l
	v_and_b16 v4.h, 0xff, v23.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v25, v46, 4, v38
	v_lshl_or_b32 v27, v62, 4, v48
	v_lshl_or_b32 v28, v63, 4, v49
	v_lshl_or_b32 v29, v64, 4, v50
	v_lshl_or_b32 v30, v65, 4, v51
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[7:8], v42, s[16:19], 0 offen
	v_or_b16 v7.l, v4.h, v4.l
	v_lshlrev_b16 v4.l, 8, v32.l
	v_and_b16 v4.h, 0xff, v31.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s2, s0, 5
	s_mul_i32 s0, s0, 48
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v33, v69, 4, v54
	v_lshl_or_b32 v34, v70, 4, v55
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v35, v71, 4, v56
	v_lshl_or_b32 v36, v72, 4, v57
	v_lshl_or_b32 v38, v73, 4, v58
	v_lshl_or_b32 v40, v74, 4, v59
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v43, v11, s2, v39
	v_add3_u32 v39, v11, s0, v39
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v26.l
	v_and_b16 v2.l, 0xff, v25.l
	v_lshlrev_b16 v5.l, 8, v30.l
	v_and_b16 v5.h, 0xff, v29.l
	v_lshlrev_b16 v6.l, 8, v28.l
	v_and_b16 v6.h, 0xff, v27.l
	v_or_b16 v11.l, v4.h, v4.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v4, 2, v60
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v1.l, 8, v34.l
	v_and_b16 v2.l, 0xff, v33.l
	v_lshlrev_b16 v5.l, 8, v40.l
	v_and_b16 v5.h, 0xff, v38.l
	v_lshlrev_b16 v6.l, 8, v36.l
	v_and_b16 v6.h, 0xff, v35.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s29, 31
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v11.h, v2.l, v1.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v5, 0, v37
	v_mov_b16_e32 v2.l, v10.h
	v_mov_b16_e32 v1.l, v9.h
	v_add3_u32 v3, v4, v3, v37
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v6, v0, 63, s30
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s29, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_clause 0x1
	buffer_store_b64 v[7:8], v43, s[16:19], 0 offen
	buffer_store_b64 v[11:12], v39, s[16:19], 0 offen
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
	s_and_b32 s17, s15, 0xffff
	s_mov_b32 s16, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s28, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[16:19], 0 offen
.Ltmp87:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp88:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 221
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18224
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
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
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
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
