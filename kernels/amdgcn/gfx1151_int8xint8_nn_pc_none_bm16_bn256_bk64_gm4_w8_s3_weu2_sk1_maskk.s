	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	s_load_b32 s29, s[0:1], 0x38
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v13, 0xf0, v0
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v12, 15, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v31, 2, v13
	v_lshlrev_b32_e32 v30, 2, v12
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s18, 15
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
	v_mul_lo_u32 v1, s29, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mul_lo_u32 v2, s19, v31
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v9, v12, 4, v2
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[10:11], null, s19, 3, v[9:10]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_hi_u32 s4, s9, s10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_lshl_add_u32 v32, s19, 1, v9
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
	v_or_b32_e32 v3, s31, v31
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s3, s3, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s29, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s4, s3, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s18, s3, 8
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s7, s19, s31
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s31, v30
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s28, s2, 4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s2, s29, v3
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s30, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s3, s18, s7
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s4, s28, s29
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v3, s3, v32
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v33, v1, v30, s4
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v4, s3, v10
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s3, v9
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s2, s30
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v11, s31, v33
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v8, 0x80000000, v4, s2
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s19, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s30
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[4:7], v3, s[24:27], 0 offen
	buffer_load_b128 v[14:17], v8, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v3, 0x80000000, v11, vcc_lo
	s_and_b32 s13, s13, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x7f
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s31, s31, 64
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v8, v3, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[18:21], v1, s[24:27], 0 offen
	buffer_load_b128 v[22:25], v2, s[24:27], 0 offen
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s31, v30
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_lshl_b32 s4, s19, 6
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s31, v31
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s3, s4
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v3, s31, v33
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v11, s4, v9
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v1
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e64 s3, s29, v2
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v1, s4, v32
	v_add_nc_u32_e32 v2, s4, v10
	v_add_nc_u32_e32 v26, s19, v11
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_mov_b32 s4, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s2
	s_cmpk_gt_i32 s5, 0xbf
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v34, 0x80000000, v26
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b32 v56, v3, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[26:29], v11, s[24:27], 0 offen
	buffer_load_b128 v[34:37], v34, s[24:27], 0 offen
	buffer_load_b128 v[48:51], v1, s[24:27], 0 offen
	buffer_load_b128 v[52:55], v2, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v0, 0, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v3, 2, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v11, 14, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v38, 48, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v1, 0x420, v1
	v_lshlrev_b32_e32 v2, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v40, v3, v38
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v39, v1, v31
	v_lshlrev_b32_e32 v1, 6, v0
	v_lshlrev_b32_e32 v3, 5, v0
	v_and_b32_e32 v38, 8, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v57, 0, v40
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v41, v11, 10, v39
	v_and_b32_e32 v39, 32, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v42, 0x90, v41
	v_xor_b32_e32 v43, 0x120, v41
	v_xor_b32_e32 v44, 0x1b0, v41
	v_xor_b32_e32 v45, 0x210, v41
	v_add_nc_u32_e32 v58, 0, v41
	v_xor_b32_e32 v46, 0x330, v41
	v_xor_b32_e32 v47, 0x3a0, v41
	v_add_nc_u32_e32 v59, 0, v42
	v_add_nc_u32_e32 v60, 0, v43
	v_add_nc_u32_e32 v61, 0, v44
	v_add_nc_u32_e32 v62, 0, v45
	v_add_nc_u32_e32 v63, 0, v46
	v_add_nc_u32_e32 v64, 0, v47
	v_add_nc_u32_e32 v65, 0x4000, v58
	v_add_nc_u32_e32 v66, 0x4000, v59
	v_add_nc_u32_e32 v67, 0x4000, v60
	v_add_nc_u32_e32 v68, 0x4000, v61
	v_add_nc_u32_e32 v69, 0x4000, v62
	v_add_nc_u32_e32 v70, 0x4000, v63
	v_add_nc_u32_e32 v71, 0x4000, v64
	s_waitcnt vmcnt(8)
	v_perm_b32 v72, v14, v4, 0x4000501
	v_perm_b32 v4, v14, v4, 0x6020703
	v_perm_b32 v14, v15, v5, 0x4000501
	v_perm_b32 v5, v15, v5, 0x6020703
	v_perm_b32 v15, v16, v6, 0x4000501
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(7)
	ds_store_b32 v57, v8 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v6, v16, v6, 0x6020703
	s_waitcnt vmcnt(5)
	v_perm_b32 v8, v22, v18, 0x4000501
	v_perm_b32 v16, v17, v7, 0x4000501
	v_perm_b32 v7, v17, v7, 0x6020703
	v_perm_b32 v17, v22, v18, 0x6020703
	v_perm_b32 v18, v23, v19, 0x4000501
	v_perm_b32 v19, v23, v19, 0x6020703
	v_perm_b32 v22, v24, v20, 0x4000501
	v_perm_b32 v20, v24, v20, 0x6020703
	v_perm_b32 v23, v25, v21, 0x4000501
	v_perm_b32 v21, v25, v21, 0x6020703
	v_perm_b32 v24, v72, v8, 0x7060302
	v_perm_b32 v8, v72, v8, 0x5040100
	v_perm_b32 v25, v4, v17, 0x7060302
	v_perm_b32 v4, v4, v17, 0x5040100
	v_perm_b32 v17, v14, v18, 0x7060302
	v_perm_b32 v14, v14, v18, 0x5040100
	v_perm_b32 v18, v5, v19, 0x7060302
	v_perm_b32 v5, v5, v19, 0x5040100
	v_perm_b32 v19, v15, v22, 0x7060302
	v_perm_b32 v15, v15, v22, 0x5040100
	v_perm_b32 v22, v6, v20, 0x7060302
	v_perm_b32 v6, v6, v20, 0x5040100
	v_perm_b32 v20, v16, v23, 0x7060302
	v_perm_b32 v16, v16, v23, 0x5040100
	v_perm_b32 v23, v7, v21, 0x7060302
	v_perm_b32 v7, v7, v21, 0x5040100
	ds_store_2addr_b32 v58, v24, v8 offset1:16
	ds_store_2addr_b32 v59, v25, v4 offset1:16
	ds_store_2addr_b32 v60, v17, v14 offset1:16
	ds_store_2addr_b32 v61, v18, v5 offset1:16
	ds_store_2addr_b32 v62, v19, v15 offset1:16
	ds_store_2addr_b32 v58, v22, v6 offset0:160 offset1:176
	ds_store_2addr_b32 v63, v20, v16 offset1:16
	ds_store_2addr_b32 v64, v23, v7 offset1:16
	s_waitcnt vmcnt(2)
	v_perm_b32 v4, v34, v26, 0x4000501
	s_waitcnt vmcnt(0)
	v_perm_b32 v5, v52, v48, 0x4000501
	v_perm_b32 v6, v34, v26, 0x6020703
	v_perm_b32 v7, v52, v48, 0x6020703
	v_perm_b32 v8, v35, v27, 0x4000501
	v_perm_b32 v14, v53, v49, 0x4000501
	v_perm_b32 v15, v35, v27, 0x6020703
	v_perm_b32 v16, v53, v49, 0x6020703
	v_perm_b32 v17, v36, v28, 0x4000501
	v_perm_b32 v18, v54, v50, 0x4000501
	v_perm_b32 v19, v36, v28, 0x6020703
	v_perm_b32 v20, v54, v50, 0x6020703
	v_perm_b32 v21, v37, v29, 0x4000501
	v_perm_b32 v22, v55, v51, 0x4000501
	v_perm_b32 v23, v37, v29, 0x6020703
	v_perm_b32 v24, v55, v51, 0x6020703
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
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v57, v56 offset:33792
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v18, v20, v19, 0x7060302
	v_perm_b32 v19, v20, v19, 0x5040100
	v_perm_b32 v20, v22, v21, 0x7060302
	v_perm_b32 v21, v22, v21, 0x5040100
	v_perm_b32 v22, v24, v23, 0x7060302
	v_perm_b32 v23, v24, v23, 0x5040100
	ds_store_2addr_b32 v65, v25, v4 offset1:16
	ds_store_2addr_b32 v66, v5, v6 offset1:16
	ds_store_2addr_b32 v67, v7, v8 offset1:16
	ds_store_2addr_b32 v68, v14, v15 offset1:16
	ds_store_2addr_b32 v69, v16, v17 offset1:16
	ds_store_2addr_b32 v65, v18, v19 offset0:160 offset1:176
	ds_store_2addr_b32 v70, v20, v21 offset1:16
	ds_store_2addr_b32 v71, v22, v23 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v48, 48, v2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v6, 0x1800, v3
	v_and_b32_e32 v5, 8, v0
	v_and_b32_e32 v4, 32, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v34, v12, 6, v48
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_or_b32 v49, 0x1c0, v1, v6
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v37, 16, v34
	v_xor_b32_e32 v36, 32, v34
	v_xor_b32_e32 v35, 48, v34
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
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v15, 0
	s_add_i32 s3, 0, 0x8000
	s_add_i32 s0, 0, 0x8400
	s_add_i32 s1, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr49
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[16:17], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_bfe_i32 v4, v0, 3, 1
	v_dual_mov_b32 v15, 0 :: v_dual_and_b32 v48, 48, v2
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
	v_lshl_or_b32 v34, v12, 6, v48
.Ltmp15:
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v50, s19, v9
	v_and_or_b32 v49, 0x1c0, v1, v2
	v_xor_b32_e32 v1, v3, v48
	v_and_b32_e32 v2, 0x420, v4
	v_xor_b32_e32 v37, 16, v34
	v_xor_b32_e32 v36, 32, v34
	v_xor_b32_e32 v35, 48, v34
	v_or_b32_e32 v1, v49, v1
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v27, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v51, v1, v2
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_mov_b32_e32 v7, s10
	v_xor_b32_e32 v52, 16, v51
	v_xor_b32_e32 v53, 32, v51
	v_xor_b32_e32 v54, 48, v51
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_mov_b32_e32 v8, s11
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v14, 0
	s_add_i32 s31, s31, 64
	s_add_i32 s3, 0, 0x8000
	s_add_i32 s0, 0, 0x8400
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
	v_or_b32_e32 v55, s6, v30
	v_or_b32_e32 v56, s6, v31
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v57, s6, v33
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s7, s6, s19
	s_mov_b32 s6, s3
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v55
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s7, s7, s18
	s_mov_b32 s3, s0
	v_add_nc_u32_e32 v58, s7, v9
	v_add_nc_u32_e32 v59, s7, v50
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v55, 0x80000000, v57, vcc_lo
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v56
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v60, s7, v32
	v_add_nc_u32_e32 v61, s7, v10
	s_mov_b32 s0, s4
	s_mov_b32 s4, s1
	.loc	1 408 22 is_stmt 0              ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v56, 0x80000000, v58, vcc_lo
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	buffer_load_b32 v131, v55, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v55, 0x80000000, v59 :: v_dual_cndmask_b32 v58, 0x80000000, v61
	v_cndmask_b32_e32 v57, 0x80000000, v60, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x3
	buffer_load_b128 v[71:74], v56, s[24:27], 0 offen
	buffer_load_b128 v[75:78], v55, s[24:27], 0 offen
	buffer_load_b128 v[79:82], v57, s[24:27], 0 offen
	buffer_load_b128 v[83:86], v58, s[24:27], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v55, s6, v34
	v_add_nc_u32_e32 v56, s6, v37
	v_add_nc_u32_e32 v57, s6, v36
	v_add_nc_u32_e32 v58, s6, v35
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v59, s0, v51
	v_add_nc_u32_e32 v60, s0, v52
	v_add_nc_u32_e32 v61, s0, v53
	v_add_nc_u32_e32 v62, s0, v54
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[87:90], v55
	ds_load_b128 v[91:94], v56
	ds_load_b128 v[95:98], v57
	ds_load_b128 v[99:102], v58
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[63:66], v59
	ds_load_b128 v[103:106], v59 offset:8192
	ds_load_b128 v[107:110], v60
	ds_load_b128 v[111:114], v60 offset:8192
	ds_load_b128 v[115:118], v61
	ds_load_b128 v[119:122], v61 offset:8192
	ds_load_b128 v[123:126], v62
	ds_load_b128 v[127:130], v62 offset:8192
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
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s0, s34, 10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_lshl_b32 s1, s34, 14
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s7, s0, 0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_add_i32 s1, s1, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s0, s7, 0x8000
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v133, s1, v41
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[55:62], v[63:66], v[87:90], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[63:70], v[103:106], v[87:90], v[1:8] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v135, s1, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[55:62], v[107:110], v[91:94], v[55:62] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v136, s1, v44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[63:70], v[111:114], v[91:94], v[63:70] neg_lo:[1,1,0]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s5, s33
	s_mov_b32 s5, s6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[55:62], v[115:118], v[95:98], v[55:62] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v137, s1, v45
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[63:70], v[119:122], v[95:98], v[63:70] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v138, s1, v46
	v_add_nc_u32_e32 v139, s1, v47
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[55:62], v[123:126], v[99:102], v[55:62] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[63:70], v[127:130], v[99:102], v[63:70] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
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
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v15, v15, v55
	v_dual_add_f32 v29, v29, v56 :: v_dual_add_f32 v28, v28, v57
	v_dual_add_f32 v27, v27, v58 :: v_dual_add_f32 v26, v26, v59
	v_dual_add_f32 v25, v25, v60 :: v_dual_add_f32 v24, v24, v61
	v_dual_add_f32 v23, v23, v62 :: v_dual_add_f32 v22, v22, v63
	v_add_f32_e32 v21, v21, v64
	v_dual_add_f32 v19, v19, v66 :: v_dual_add_nc_u32 v132, s7, v40
	v_dual_add_f32 v17, v17, v68 :: v_dual_add_nc_u32 v134, s1, v42
	v_add_f32_e32 v20, v20, v65
	v_add_f32_e32 v18, v18, v67
	v_add_f32_e32 v16, v16, v69
	v_add_f32_e32 v14, v14, v70
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(4)
	ds_store_b32 v132, v131 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(2)
	v_perm_b32 v55, v75, v71, 0x4000501
	v_perm_b32 v57, v75, v71, 0x6020703
	s_waitcnt vmcnt(0)
	v_perm_b32 v56, v83, v79, 0x4000501
	v_perm_b32 v58, v83, v79, 0x6020703
	v_perm_b32 v59, v76, v72, 0x4000501
	v_perm_b32 v60, v84, v80, 0x4000501
	v_perm_b32 v61, v76, v72, 0x6020703
	v_perm_b32 v62, v84, v80, 0x6020703
	v_perm_b32 v63, v77, v73, 0x4000501
	v_perm_b32 v64, v85, v81, 0x4000501
	v_perm_b32 v65, v77, v73, 0x6020703
	v_perm_b32 v66, v85, v81, 0x6020703
	v_perm_b32 v67, v78, v74, 0x4000501
	v_perm_b32 v68, v86, v82, 0x4000501
	v_perm_b32 v69, v78, v74, 0x6020703
	v_perm_b32 v70, v86, v82, 0x6020703
	v_perm_b32 v71, v56, v55, 0x7060302
	v_perm_b32 v55, v56, v55, 0x5040100
	v_perm_b32 v56, v58, v57, 0x7060302
	v_perm_b32 v57, v58, v57, 0x5040100
	v_perm_b32 v58, v60, v59, 0x7060302
	v_perm_b32 v59, v60, v59, 0x5040100
	v_perm_b32 v60, v62, v61, 0x7060302
	v_perm_b32 v61, v62, v61, 0x5040100
	v_perm_b32 v62, v64, v63, 0x7060302
	v_perm_b32 v63, v64, v63, 0x5040100
	v_perm_b32 v64, v66, v65, 0x7060302
	v_perm_b32 v65, v66, v65, 0x5040100
	v_perm_b32 v66, v68, v67, 0x7060302
	v_perm_b32 v67, v68, v67, 0x5040100
	v_perm_b32 v68, v70, v69, 0x7060302
	v_perm_b32 v69, v70, v69, 0x5040100
	ds_store_2addr_b32 v133, v71, v55 offset1:16
	ds_store_2addr_b32 v134, v56, v57 offset1:16
	ds_store_2addr_b32 v135, v58, v59 offset1:16
	ds_store_2addr_b32 v136, v60, v61 offset1:16
	ds_store_2addr_b32 v137, v62, v63 offset1:16
	ds_store_2addr_b32 v133, v64, v65 offset0:160 offset1:176
	ds_store_2addr_b32 v138, v66, v67 offset1:16
	ds_store_2addr_b32 v139, v68, v69 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v5, v38 :: v_dual_mov_b32 v4, v39
.LBB0_7:                                ; %Flow22
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
	v_xor_b32_e32 v2, v2, v48
	v_cndmask_b32_e64 v3, 0x420, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s30
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_or_b32_e32 v2, v49, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v2, v2, v3
	v_xor_b32_e32 v3, 16, v2
	v_xor_b32_e32 v4, 32, v2
	v_xor_b32_e32 v5, 48, v2
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
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v40, s3, v37
	v_add_nc_u32_e32 v41, s3, v34
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v38, s4, v4
	v_add_nc_u32_e32 v39, s4, v3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v42, s3, v36
	ds_load_b128 v[54:57], v40
	ds_load_b128 v[58:61], v41
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[62:65], v38 offset:8192
	ds_load_b128 v[66:69], v38
	ds_load_b128 v[70:73], v39 offset:8192
	ds_load_b128 v[74:77], v39
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v38, s3, v35
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v30, s4, v2
	v_add_nc_u32_e32 v10, s4, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[78:81], v42
	ds_load_b128 v[82:85], v38
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v45, s15
	v_mov_b32_e32 v43, s13
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[6:9], v30 offset:8192
	ds_load_b128 v[30:33], v30
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v44, s14
	v_dual_mov_b32 v42, s12 :: v_dual_mov_b32 v41, s11
	v_dual_mov_b32 v40, s10 :: v_dual_mov_b32 v39, s9
	v_mov_b32_e32 v38, s8
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[86:89], v10
	ds_load_b128 v[90:93], v10 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[30:33], v[58:61], v[38:45] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[74:77], v[54:57], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[46:53], v[66:69], v[78:81], v[46:53] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[46:53], v[86:89], v[82:85], v[46:53] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v31, v53
	v_cvt_f32_i32_e32 v30, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v25, v25, v10
	v_add_f32_e32 v23, v23, v31
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[38:45], v[6:9], v[58:61], v[38:45] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v6, v47
	v_cvt_f32_i32_e32 v7, v48
	v_cvt_f32_i32_e32 v8, v49
	v_cvt_f32_i32_e32 v9, v50
	v_wmma_i32_16x16x16_iu8 v[38:45], v[70:73], v[54:57], v[38:45] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v29, v29, v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v10, v46
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v27, v27, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[38:45], v[62:65], v[78:81], v[38:45] neg_lo:[1,1,0]
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v15, v15, v10
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[38:45], v[90:93], v[82:85], v[38:45] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v6, v39
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v28, v28, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v7, v40
	v_cvt_f32_i32_e32 v8, v41
	v_cvt_f32_i32_e32 v32, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v26, v26, v9 :: v_dual_add_f32 v21, v21, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v20, v20, v7 :: v_dual_add_f32 v19, v19, v8
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v6, v42
	v_cvt_f32_i32_e32 v7, v43
	v_cvt_f32_i32_e32 v8, v44
	v_cvt_f32_i32_e32 v9, v45
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v24, v24, v30
	v_add_f32_e32 v22, v22, v32
	v_dual_add_f32 v18, v18, v6 :: v_dual_add_f32 v17, v17, v7
	v_add_f32_e32 v16, v16, v8
	v_add_f32_e32 v14, v14, v9
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v44, 0
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v36, s0, v36
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v39, s1, v2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v37, s0, v37
	v_add_nc_u32_e32 v34, s0, v34
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_add_nc_u32_e32 v38, s1, v3
	ds_load_b128 v[30:33], v39 offset:8192
	ds_load_b128 v[53:56], v39
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[57:60], v37
	ds_load_b128 v[61:64], v34
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[65:68], v38 offset:8192
	ds_load_b128 v[69:72], v38
	v_add_nc_u32_e32 v6, s1, v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v44, s11
	v_dual_mov_b32 v41, s8 :: v_dual_add_nc_u32 v10, s1, v5
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v34, s0, v35
	ds_load_b128 v[73:76], v36
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v43, s10
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[2:5], v6 offset:8192
	ds_load_b128 v[6:9], v6
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v42, s9
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[77:80], v34
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v40, s7 :: v_dual_mov_b32 v39, s6
	v_dual_mov_b32 v38, s5 :: v_dual_mov_b32 v37, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[81:84], v10
	ds_load_b128 v[85:88], v10 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[53:56], v[61:64], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[30:33], v[61:64], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[69:72], v[57:60], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[65:68], v[57:60], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[6:9], v[73:76], v[45:52] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[2:5], v[73:76], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[45:52], v[81:84], v[77:80], v[45:52] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[85:88], v[77:80], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v6, v45
	v_cvt_f32_i32_e32 v7, v46
	v_cvt_f32_i32_e32 v8, v47
	v_cvt_f32_i32_e32 v9, v48
	v_cvt_f32_i32_e32 v10, v49
	v_cvt_f32_i32_e32 v30, v50
	v_cvt_f32_i32_e32 v31, v51
	v_cvt_f32_i32_e32 v32, v52
	v_cvt_f32_i32_e32 v33, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
.LBB0_11:
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_or_b32_e32 v2, s28, v12
	.loc	1 435 22                        ; generate_amdgcn.py:435:22
	v_or_b32_e32 v3, s18, v0
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_and_b32 s25, s21, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v5, v28, v8 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_mov_b32 s24, s20
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v8, v25, v30
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	buffer_load_u16 v34, v2, s[24:27], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s25, s23, 0xffff
	s_mov_b32 s24, s22
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v4, v29, v7
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v2, v3, s[24:27], 0 offen
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v3, v15, v6
	v_dual_add_f32 v7, v26, v10 :: v_dual_add_f32 v10, v23, v32
	v_add_f32_e32 v30, v22, v33
	v_dual_add_f32 v32, v20, v39 :: v_dual_add_f32 v33, v19, v40
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v40, 2, v13
	v_lshlrev_b32_e32 v1, 5, v1
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v36, v18, v41 :: v_dual_add_f32 v37, v17, v42
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_dual_mov_b32 v42, 0x7632 :: v_dual_and_b32 v41, 16, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_add3_u32 v0, 0, v40, v1
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshrrev_b32_e32 v35, 1, v13
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v13, v13, 1, 0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v15, v3, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v6, v27, v9
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v0, v11, 1, v0
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v9, v24, v31
	v_add_f32_e32 v31, v21, v38
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v25, v25, v8, s2
	v_cndmask_b32_e64 v24, v24, v9, s2
	v_cndmask_b32_e64 v23, v23, v10, s2
	v_cndmask_b32_e64 v30, v22, v30, s2
	v_cndmask_b32_e64 v31, v21, v31, s2
	v_cndmask_b32_e64 v32, v20, v32, s2
	v_cndmask_b32_e64 v33, v19, v33, s2
	v_cndmask_b32_e64 v29, v29, v4, s2
	v_cndmask_b32_e64 v28, v28, v5, s2
	v_cndmask_b32_e64 v27, v27, v6, s2
	v_cndmask_b32_e64 v26, v26, v7, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v38, v16, v43 :: v_dual_add_f32 v39, v14, v44
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_mov_b32_e32 v40, 0x5410
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v17, v17, v37, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_mul_lo_u32 v12, s19, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v16, v16, v38, s2
	v_cndmask_b32_e64 v14, v14, v39, s2
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	s_mul_i32 s28, s28, s19
	s_mov_b32 s15, 0x76543210
	.loc	1 448 9 is_stmt 0               ; generate_amdgcn.py:448:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add3_u32 v12, s28, s18, v12
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	s_mov_b32 s18, s26
	.loc	1 448 18                        ; generate_amdgcn.py:448:18
	v_add_lshl_u32 v12, v12, v35, 1
	.loc	1 435 14 is_stmt 1              ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v2
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v13
	ds_load_b128 v[4:7], v13 offset:16
	ds_load_b128 v[8:11], v13 offset:512
	ds_load_b128 v[19:22], v13 offset:528
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v18, v36, s2
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_lshlrev_b32_e32 v18, 16, v34
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v1, v1, v18
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v1, v29, v1
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v21, v21, v18
	v_mul_f32_e32 v7, v7, v18
	v_mul_f32_e32 v11, v11, v18
	v_mul_f32_e32 v8, v8, v18
	v_mul_f32_e32 v20, v20, v18
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v16, v16, v21
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v4, v4, v18 :: v_dual_mul_f32 v7, v23, v7
	v_mul_f32_e32 v3, v3, v18
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v11, v33, v11
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v5, v5, v18 :: v_dual_mul_f32 v8, v30, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v4, v26, v4
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v0, v0, v18 :: v_dual_mul_f32 v3, v27, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v2, v2, v18 :: v_dual_mul_f32 v5, v25, v5
	.loc	1 448 9 is_stmt 1               ; generate_amdgcn.py:448:9
	v_bfe_u32 v25, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v0, v15, v0
	v_dual_mul_f32 v15, v17, v20 :: v_dual_mul_f32 v2, v28, v2
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v21, v4, 16, 1
	v_cmp_o_f32_e64 s7, v8, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_bfe_u32 v17, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v8, v8, v25, 0x7fff
	v_cmp_o_f32_e64 s3, v4, v4
	v_add3_u32 v4, v4, v21, 0x7fff
	v_add3_u32 v0, v0, v17, 0x7fff
	v_cmp_o_f32_e64 s1, v2, v2
	v_cndmask_b16 v4.l, 0x7fff, v8.h, s7
	v_bfe_u32 v20, v3, 16, 1
	v_bfe_u32 v30, v15, 16, 1
	v_cndmask_b16 v0.l, 0x7fff, v0.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v41
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v19, v19, v18
	v_mul_f32_e32 v10, v10, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s2, v3, v3
	v_add3_u32 v3, v3, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x3276, v42 :: v_dual_mul_f32 v13, v13, v19
	v_bfe_u32 v19, v2, 16, 1
	v_cmp_o_f32_e64 s12, v15, v15
	v_add3_u32 v15, v15, v30, 0x7fff
	v_lshl_or_b32 v8, v8, 8, v8
	v_bfe_u32 v29, v13, 16, 1
	v_add3_u32 v2, v2, v19, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s3
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v9, v9, v18
	v_mul_f32_e32 v6, v6, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cmp_o_f32_e64 s11, v13, v13
	v_add3_u32 v13, v13, v29, 0x7fff
	v_cmp_o_f32_e64 s0, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v9, v31, v9 :: v_dual_mul_f32 v6, v24, v6
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v24, v7, 16, 1
	v_cmp_o_f32_e64 s6, v7, v7
	v_bfe_u32 v28, v11, 16, 1
	v_bfe_u32 v26, v9, 16, 1
	v_bfe_u32 v23, v6, 16, 1
	v_cmp_o_f32_e64 s5, v6, v6
	v_cmp_o_f32_e64 s8, v9, v9
	v_add3_u32 v7, v7, v24, 0x7fff
	v_add3_u32 v9, v9, v26, 0x7fff
	v_add3_u32 v6, v6, v23, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v13.h, s11
	v_cmp_o_f32_e64 s4, v5, v5
	v_cmp_o_f32_e64 s10, v11, v11
	v_cndmask_b16 v4.h, 0x7fff, v9.h, s8
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s5
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v18, v22, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b16 v9.h, 0x7fff, v15.h, s12
	v_bfe_u32 v22, v5, 16, 1
	v_add3_u32 v11, v11, v28, 0x7fff
	v_bfe_u32 v31, v16, 16, 1
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v14, v14, v18
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_bfe_u32 v18, v1, 16, 1
	v_add3_u32 v5, v5, v22, 0x7fff
	v_cmp_o_f32_e64 s13, v16, v16
	v_add3_u32 v16, v16, v31, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v1, v18, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s1
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s4
	v_cndmask_b16 v5.h, 0x7fff, v11.h, s10
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s0
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s2
	v_cndmask_b16 v3.h, 0x7fff, v7.h, s6
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v10, v32, v10 :: v_dual_cndmask_b32 v7, 0x1054, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 448 9                         ; generate_amdgcn.py:448:9
	v_cndmask_b32_e32 v6, v2, v0, vcc_lo
	v_dual_cndmask_b32 v0, v0, v2 :: v_dual_cndmask_b32 v11, v3, v1
	v_cndmask_b32_e32 v1, v1, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_bfe_u32 v27, v10, 16, 1
	v_cndmask_b32_e32 v3, v4, v9, vcc_lo
	v_bfe_u32 v32, v14, 16, 1
	v_lshl_or_b32 v7, v7, 8, v7
	v_cmp_o_f32_e64 s9, v10, v10
	v_cmp_o_f32_e64 s14, v14, v14
	v_add3_u32 v10, v10, v27, 0x7fff
	v_add3_u32 v14, v14, v32, 0x7fff
	v_and_b32_e32 v2, 0x540054, v7
	v_and_b32_e32 v7, 0x760076, v8
	v_cndmask_b16 v10.l, 0x7fff, v16.h, s13
	v_cndmask_b16 v5.l, 0x7fff, v10.h, s9
	v_cndmask_b16 v10.h, 0x7fff, v14.h, s14
	v_cndmask_b32_e32 v8, v9, v4, vcc_lo
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v4, v7, 4, v7
	v_permlanex16_b32 v14, v3, s15, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v7, v10, v5, vcc_lo
	v_cndmask_b32_e32 v5, v5, v10, vcc_lo
	v_and_b32_e32 v10, 0x5040504, v2
	v_and_b32_e32 v13, 0x7060706, v4
	v_permlanex16_b32 v9, v0, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v1, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v5, s15, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v5, v14, v8, v13
	v_perm_b32 v0, v9, v6, v10
	v_perm_b32 v1, v9, v6, v13
	v_perm_b32 v2, v4, v11, v10
	v_perm_b32 v3, v4, v11, v13
	v_perm_b32 v4, v14, v8, v10
	v_perm_b32 v6, v15, v7, v10
	v_perm_b32 v7, v15, v7, v13
	s_clause 0x1
	buffer_store_b128 v[0:3], v12, s[16:19], 0 offen
	buffer_store_b128 v[4:7], v12, s[16:19], 0 offen offset:256
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_inst_pref_size 47
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 140
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5992
; TotalNumSgprs: 37
; NumVgprs: 140
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     140
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
