	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[30:31], s[0:1], 0x30
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s7, s2
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x0
	s_load_b32 s22, s[0:1], 0x38
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v106, 0xf0, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v120, 14, v0
	v_and_b32_e32 v64, 8, v0
	v_and_b32_e32 v65, 32, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v37, 48, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshrrev_b32_e32 v61, 2, v106
	v_lshlrev_b32_e32 v63, 5, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s31, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s8, s30, 31
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
	s_mov_b64 s[16:17], s[14:15]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s5, s4
	s_mov_b32 s15, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s19, s15
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_mov_b32 s18, s14
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
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v1, 3, v0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mul_lo_u32 v1, s22, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
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
	s_lshl_b32 s8, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s4, s4, s9
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v2, s8, v61
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s33, s4, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s5, s22, 63
.Ltmp13:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s7, s33, s7
	.loc	1 359 14                        ; generate_amdgcn.py:359:14
	s_lshl_b32 s23, s31, 1
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s7
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s20, s33, 8
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s6
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v2
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s5, 63
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s4, s23, s8
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s21, -1, 0
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s4, s20, s4
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s21
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v107, 15, v0
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_and_b32_e32 v108, 7, v0
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	s_mul_i32 s2, s34, s22
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_lshlrev_b32_e32 v105, 4, v107
	.loc	1 357 14                        ; generate_amdgcn.py:357:14
	v_lshlrev_b32_e32 v60, 3, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[57:58], null, s23, v61, v[105:106]
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v10, s8, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_mad_u64_u32 v[58:59], null, s31, 6, v[57:58]
	v_lshl_add_u32 v62, s31, 2, v57
	v_add_nc_u32_e32 v26, s4, v57
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add3_u32 v59, v1, v60, s2
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e64 s2, s22, v10
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v2, s4, v62
	v_add_nc_u32_e32 v3, s4, v58
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s4, s4, s31
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v19, s8, v59
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v1, s4, v62
	v_add_nc_u32_e32 v11, s4, v58
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v20, s23, v26
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 s2, s2, s21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_dual_cndmask_b32 v18, 0x80000000, v26 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v14, 0x80000000, v11, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[10:13], v1, s[16:19], 0 offen
	buffer_load_b128 v[14:17], v14, s[16:19], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v1, 0x80000000, v19, s2
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v22, 0x80000000, v20, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b64 v[34:35], v1, s[12:15], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[18:21], v18, s[16:19], 0 offen
	buffer_load_b128 v[22:25], v22, s[16:19], 0 offen
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v1, s31, v26
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e32 v6, 0x80000000, v3, vcc_lo
	v_lshlrev_b32_e32 v66, 6, v107
	s_mov_b32 s2, 0
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v26, s23, v1
	.loc	1 414 31 is_stmt 0              ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s5, 0x7f
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v30, 0x80000000, v26, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[26:29], v1, s[16:19], 0 offen
	buffer_load_b128 v[30:33], v30, s[16:19], 0 offen
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_bfe_i32 v1, v0, 0, 1
	v_and_b32_e32 v36, 0x420, v1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v1, 3, v0
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[2:5], v2, s[16:19], 0 offen
	buffer_load_b128 v[6:9], v6, s[16:19], 0 offen
	v_xor_b32_e32 v36, v36, v61
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v37, v1, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshl_or_b32 v36, v120, 10, v36
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v68, 0, v37
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v37, 0x90, v36
	v_xor_b32_e32 v38, 0x120, v36
	v_xor_b32_e32 v39, 0x1b0, v36
	v_xor_b32_e32 v40, 0x210, v36
	v_add_nc_u32_e32 v69, 0, v36
	v_xor_b32_e32 v41, 0x330, v36
	v_xor_b32_e32 v36, 0x3a0, v36
	v_add_nc_u32_e32 v70, 0, v37
	v_add_nc_u32_e32 v71, 0, v38
	v_add_nc_u32_e32 v72, 0, v39
	v_add_nc_u32_e32 v73, 0, v40
	v_add_nc_u32_e32 v74, 0, v41
	v_add_nc_u32_e32 v75, 0, v36
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_add_nc_u32_e32 v36, 0x4000, v69
	v_add_nc_u32_e32 v37, 0x4000, v70
	v_add_nc_u32_e32 v38, 0x4000, v71
	v_add_nc_u32_e32 v39, 0x4000, v72
	v_add_nc_u32_e32 v40, 0x4000, v73
	v_add_nc_u32_e32 v41, 0x4000, v74
	v_add_nc_u32_e32 v42, 0x4000, v75
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(6)
	ds_store_b64 v68, v[34:35] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v43, v6, v2, 0x4000501
	v_perm_b32 v2, v6, v2, 0x6020703
	v_perm_b32 v6, v7, v3, 0x4000501
	v_perm_b32 v3, v7, v3, 0x6020703
	v_perm_b32 v7, v8, v4, 0x4000501
	v_perm_b32 v4, v8, v4, 0x6020703
	v_perm_b32 v8, v9, v5, 0x4000501
	v_perm_b32 v5, v9, v5, 0x6020703
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v9, v14, v10, 0x4000501
	v_perm_b32 v10, v14, v10, 0x6020703
	v_perm_b32 v14, v15, v11, 0x4000501
	v_perm_b32 v11, v15, v11, 0x6020703
	v_perm_b32 v15, v16, v12, 0x4000501
	v_perm_b32 v12, v16, v12, 0x6020703
	v_perm_b32 v16, v17, v13, 0x4000501
	v_perm_b32 v13, v17, v13, 0x6020703
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v17, v22, v18, 0x4000501
	v_perm_b32 v18, v22, v18, 0x6020703
	v_perm_b32 v22, v23, v19, 0x4000501
	v_perm_b32 v19, v23, v19, 0x6020703
	v_perm_b32 v23, v24, v20, 0x4000501
	v_perm_b32 v20, v24, v20, 0x6020703
	v_perm_b32 v24, v25, v21, 0x4000501
	v_perm_b32 v21, v25, v21, 0x6020703
	v_perm_b32 v25, v43, v17, 0x7060302
	v_perm_b32 v17, v43, v17, 0x5040100
	v_perm_b32 v34, v2, v18, 0x7060302
	v_perm_b32 v2, v2, v18, 0x5040100
	v_perm_b32 v18, v6, v22, 0x7060302
	v_perm_b32 v6, v6, v22, 0x5040100
	v_perm_b32 v22, v3, v19, 0x7060302
	v_perm_b32 v3, v3, v19, 0x5040100
	v_perm_b32 v19, v7, v23, 0x7060302
	v_perm_b32 v7, v7, v23, 0x5040100
	v_perm_b32 v23, v4, v20, 0x7060302
	v_perm_b32 v4, v4, v20, 0x5040100
	v_perm_b32 v20, v8, v24, 0x7060302
	v_perm_b32 v8, v8, v24, 0x5040100
	v_perm_b32 v24, v5, v21, 0x7060302
	v_perm_b32 v5, v5, v21, 0x5040100
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v21, v30, v26, 0x4000501
	v_perm_b32 v26, v30, v26, 0x6020703
	v_perm_b32 v30, v31, v27, 0x4000501
	v_perm_b32 v27, v31, v27, 0x6020703
	v_perm_b32 v31, v32, v28, 0x4000501
	v_perm_b32 v28, v32, v28, 0x6020703
	v_perm_b32 v32, v33, v29, 0x4000501
	v_perm_b32 v29, v33, v29, 0x6020703
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_store_2addr_b32 v69, v25, v17 offset1:16
	ds_store_2addr_b32 v70, v34, v2 offset1:16
	ds_store_2addr_b32 v71, v18, v6 offset1:16
	ds_store_2addr_b32 v72, v22, v3 offset1:16
	ds_store_2addr_b32 v73, v19, v7 offset1:16
	ds_store_2addr_b32 v69, v23, v4 offset0:160 offset1:176
	ds_store_2addr_b32 v74, v20, v8 offset1:16
	ds_store_2addr_b32 v75, v24, v5 offset1:16
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v2, v9, v21, 0x7060302
	v_perm_b32 v3, v9, v21, 0x5040100
	v_perm_b32 v4, v10, v26, 0x7060302
	v_perm_b32 v5, v10, v26, 0x5040100
	v_perm_b32 v6, v14, v30, 0x7060302
	v_perm_b32 v7, v14, v30, 0x5040100
	v_perm_b32 v8, v11, v27, 0x7060302
	v_perm_b32 v9, v11, v27, 0x5040100
	v_perm_b32 v10, v15, v31, 0x7060302
	v_perm_b32 v11, v15, v31, 0x5040100
	v_perm_b32 v14, v12, v28, 0x7060302
	v_perm_b32 v12, v12, v28, 0x5040100
	v_perm_b32 v15, v16, v32, 0x7060302
	v_perm_b32 v16, v16, v32, 0x5040100
	v_perm_b32 v17, v13, v29, 0x7060302
	v_perm_b32 v13, v13, v29, 0x5040100
	ds_store_2addr_b32 v36, v2, v3 offset1:16
	ds_store_2addr_b32 v37, v4, v5 offset1:16
	ds_store_2addr_b32 v38, v6, v7 offset1:16
	ds_store_2addr_b32 v39, v8, v9 offset1:16
	ds_store_2addr_b32 v40, v10, v11 offset1:16
	ds_store_2addr_b32 v36, v14, v12 offset0:160 offset1:176
	ds_store_2addr_b32 v41, v15, v16 offset1:16
	ds_store_2addr_b32 v42, v17, v13 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_lshlrev_b32_e32 v109, 5, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v2, 6, v107
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_and_b32_e32 v119, 8, v0
	v_and_b32_e32 v3, 32, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v4, 0x1800, v109
	v_lshl_or_b32 v67, v108, 6, v4
	s_load_b256 s[36:43], s[0:1], 0x10
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_mov_b32_e32 v9, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v12, v9
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v112, v9
	v_dual_mov_b32 v113, v9 :: v_dual_mov_b32 v36, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v16, v12 :: v_dual_mov_b32 v15, v11
	v_dual_mov_b32 v40, v12 :: v_dual_mov_b32 v39, v11
	v_dual_mov_b32 v20, v12 :: v_dual_mov_b32 v19, v11
	v_dual_mov_b32 v44, v12 :: v_dual_mov_b32 v43, v11
	v_dual_mov_b32 v24, v12 :: v_dual_mov_b32 v23, v11
	v_dual_mov_b32 v48, v12 :: v_dual_mov_b32 v47, v11
	v_dual_mov_b32 v28, v12 :: v_dual_mov_b32 v27, v11
	v_dual_mov_b32 v52, v12 :: v_dual_mov_b32 v51, v11
	v_dual_mov_b32 v32, v12 :: v_dual_mov_b32 v31, v11
	v_dual_mov_b32 v56, v12 :: v_dual_mov_b32 v55, v11
	v_dual_mov_b32 v35, v11 :: v_dual_mov_b32 v34, v10
	v_dual_mov_b32 v33, v9 :: v_dual_mov_b32 v14, v10
	v_dual_mov_b32 v13, v9 :: v_dual_mov_b32 v38, v10
	v_dual_mov_b32 v37, v9 :: v_dual_mov_b32 v18, v10
	v_dual_mov_b32 v17, v9 :: v_dual_mov_b32 v42, v10
	v_dual_mov_b32 v41, v9 :: v_dual_mov_b32 v22, v10
	v_dual_mov_b32 v21, v9 :: v_dual_mov_b32 v46, v10
	v_dual_mov_b32 v45, v9 :: v_dual_mov_b32 v26, v10
	v_dual_mov_b32 v25, v9 :: v_dual_mov_b32 v50, v10
	v_dual_mov_b32 v49, v9 :: v_dual_mov_b32 v30, v10
	v_dual_mov_b32 v29, v9 :: v_dual_mov_b32 v54, v10
	v_mov_b32_e32 v53, v9
	v_mov_b32_e32 v114, v9
	v_mov_b32_e32 v115, v9
	v_mov_b32_e32 v116, v9
	v_mov_b32_e32 v117, v9
	v_mov_b32_e32 v118, v9
	v_mov_b32_e32 v111, v9
	v_mov_b32_e32 v128, v9
	v_mov_b32_e32 v127, v9
	v_mov_b32_e32 v126, v9
	v_mov_b32_e32 v125, v9
	v_mov_b32_e32 v124, v9
	v_mov_b32_e32 v123, v9
	v_mov_b32_e32 v122, v9
	v_mov_b32_e32 v121, v9
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr119
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr67
	s_load_b256 s[36:43], s[0:1], 0x10
	s_mov_b32 s4, 0
.LBB0_4:                                ; %.lr.ph
	v_bfe_i32 v2, v0, 3, 1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s0, s5, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v1, 48, v1
	v_and_b32_e32 v3, 0x1800, v63
	v_and_b32_e32 v2, 0x210, v2
	v_bfe_i32 v4, v0, 5, 1
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v76, s23, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v67, v108, 6, v3
	v_xor_b32_e32 v2, v2, v1
	v_or_b32_e32 v1, v66, v1
	v_and_b32_e32 v3, 0x420, v4
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v85, 0x4000, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v2, v2, v67
	v_xor_b32_e32 v4, 16, v1
	v_xor_b32_e32 v5, 32, v1
	v_add_nc_u32_e32 v77, 0, v1
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v86, 0x4000, v70
	v_xor_b32_e32 v2, v2, v3
	v_xor_b32_e32 v3, 48, v1
	v_add_nc_u32_e32 v78, 0, v4
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v79, 0, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v1, 16, v2
	v_xor_b32_e32 v4, 32, v2
	v_add_nc_u32_e32 v80, 0, v3
	v_xor_b32_e32 v3, 48, v2
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v81, 0, v2
	v_add_nc_u32_e32 v82, 0, v1
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v83, 0, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v84, 0, v3
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v87, 0x4000, v71
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v88, 0x4000, v72
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v89, 0x4000, v73
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v90, 0x4000, v74
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v91, 0x4000, v75
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v56, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v55, 0
	s_add_i32 s0, s0, -2
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s1, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s2, s1, s3
	s_lshl_b32 s2, s2, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v92, s2, v60
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v93, s2, v59
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v92
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v92, 0x80000000, v93, vcc_lo
	buffer_load_b64 v[109:110], v92, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[185:188], v77 offset:33792
	ds_load_b128 v[189:192], v78 offset:33792
	ds_load_b128 v[100:103], v77 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[137:140], v81
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[169:172], v78 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[141:144], v82
	ds_load_b128 v[153:156], v81 offset:8192
	ds_load_b128 v[157:160], v82 offset:8192
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[177:180], v81 offset:16384
	ds_load_b128 v[181:184], v82 offset:16384
	ds_load_b128 v[193:196], v81 offset:24576
	ds_load_b128 v[197:200], v82 offset:24576
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[92:99], v[137:140], v[100:103], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[137:140], v[185:188], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[145:152], v[153:156], v[185:188], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[92:99], v[141:144], v[169:172], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[141:144], v[189:192], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[153:156], v[100:103], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[145:152], v[157:160], v[189:192], v[145:152] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[161:168], v[193:196], v[100:103], v[1:8] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[137:144], v[157:160], v[169:172], v[137:144] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[153:160], v[177:180], v[100:103], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[161:168], v[197:200], v[169:172], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[181:184], v[169:172], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[169:176], v[177:180], v[185:188], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[169:176], v[181:184], v[189:192], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[177:184], v[193:196], v[185:188], v[1:8] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[100:103], v79 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[185:188], v83
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[193:196], v83 offset:24576
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[177:184], v[197:200], v[189:192], v[177:184] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[189:192], v79 offset:33792
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[92:99], v[185:188], v[100:103], v[92:99] neg_lo:[1,1,0]
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[161:168], v[193:196], v[100:103], v[161:168] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[185:188], v[189:192], v[129:136] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[185:188], v83 offset:8192
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[177:184], v[193:196], v[189:192], v[177:184] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[193:196], v84 offset:24576
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[185:188], v[100:103], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[185:188], v[189:192], v[145:152] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[185:188], v83 offset:16384
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[185:188], v[100:103], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[169:176], v[185:188], v[189:192], v[169:176] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[100:103], v80 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[185:188], v84
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[189:192], v80 offset:33792
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[161:168], v[193:196], v[100:103], v[161:168] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[92:99], v[185:188], v[100:103], v[92:99] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[185:188], v[189:192], v[129:136] neg_lo:[1,1,0]
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[185:188], v84 offset:8192
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[177:184], v[193:196], v[189:192], v[177:184] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v161, v161
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v104, v96
	v_cvt_f32_i32_e32 v119, v97
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v133, v133
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v168, v168
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v136, v136
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[185:188], v[100:103], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[185:188], v[189:192], v[145:152] neg_lo:[1,1,0]
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[185:188], v84 offset:16384
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v178, v178
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v144, v144
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v37, v37, v104
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v149, v149
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[185:188], v[100:103], v[153:160] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v100, v92
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v92, s2, v61
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_mul_i32 s2, s2, s23
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v101, v93
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	s_add_i32 s2, s2, s20
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v103, v95
	.loc	1 400 23                        ; generate_amdgcn.py:400:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v92
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v41, v41, v100 :: v_dual_add_nc_u32 v92, s2, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_add_f32 v44, v44, v103 :: v_dual_add_nc_u32 v93, s2, v76
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_wmma_i32_16x16x16_iu8 v[169:176], v[185:188], v[189:192], v[169:176] neg_lo:[1,1,0]
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v185, v98
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e32 v92, 0x80000000, v92, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v96, 0x80000000, v93, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v102, v94
	v_cvt_f32_i32_e32 v186, v99
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_add_f32_e32 v39, v39, v185
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_clause 0x1
	buffer_load_b128 v[92:95], v92, s[16:19], 0 offen
	buffer_load_b128 v[96:99], v96, s[16:19], 0 offen
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v181, v181
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v184, v184
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v43, v43, v102 :: v_dual_add_f32 v42, v42, v101
	v_dual_add_f32 v46, v46, v139 :: v_dual_add_f32 v125, v125, v145
	v_dual_add_f32 v122, v122, v142 :: v_dual_add_f32 v127, v127, v151
	v_dual_add_f32 v124, v124, v144 :: v_dual_add_f32 v53, v53, v146
	v_dual_add_f32 v52, v52, v132 :: v_dual_add_f32 v19, v19, v155
	v_dual_add_f32 v50, v50, v130 :: v_dual_add_f32 v17, v17, v153
	v_dual_add_f32 v36, v36, v136 :: v_dual_add_f32 v15, v15, v159
	v_dual_add_f32 v34, v34, v134 :: v_dual_add_f32 v13, v13, v157
	v_dual_add_f32 v56, v56, v149 :: v_dual_add_f32 v23, v23, v164
	v_dual_add_f32 v54, v54, v147 :: v_dual_add_f32 v111, v111, v161
	v_dual_add_f32 v126, v126, v150 :: v_dual_add_f32 v117, v117, v167
	v_dual_add_f32 v128, v128, v152 :: v_dual_add_f32 v21, v21, v162
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v20, v20, v156 :: v_dual_add_f32 v27, v27, v171
	v_dual_add_f32 v18, v18, v154 :: v_dual_add_f32 v25, v25, v169
	v_dual_add_f32 v16, v16, v160 :: v_dual_add_f32 v11, v11, v175
	v_dual_add_f32 v14, v14, v158 :: v_dual_add_f32 v9, v9, v173
	v_dual_add_f32 v24, v24, v165 :: v_dual_add_f32 v31, v31, v180
	v_dual_add_f32 v22, v22, v163 :: v_dual_add_f32 v115, v115, v177
	v_dual_add_f32 v118, v118, v166 :: v_dual_add_f32 v113, v113, v183
	v_dual_add_f32 v116, v116, v168 :: v_dual_add_f32 v29, v29, v178
	v_add_f32_e32 v28, v28, v172
	v_add_f32_e32 v26, v26, v170
	v_add_f32_e32 v12, v12, v176
	v_add_f32_e32 v10, v10, v174
	v_add_f32_e32 v32, v32, v181
	v_add_f32_e32 v30, v30, v179
	v_add_f32_e32 v114, v114, v182
	v_dual_add_f32 v112, v112, v184 :: v_dual_add_f32 v121, v121, v137
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v38, v38, v119 :: v_dual_add_f32 v47, v47, v140
	v_add_f32_e32 v45, v45, v138
	v_dual_add_f32 v123, v123, v143 :: v_dual_add_f32 v40, v40, v186
	v_add_f32_e32 v51, v51, v131
	v_add_f32_e32 v35, v35, v135
	v_add_f32_e32 v49, v49, v129
	v_add_f32_e32 v48, v48, v141
	v_add_f32_e32 v33, v33, v133
	v_add_f32_e32 v55, v55, v148
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v187, v96, v92, 0x4000501
	v_perm_b32 v188, v96, v92, 0x6020703
	.loc	1 408 30 is_stmt 0              ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v92, s2, v62
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v189, v97, v93, 0x4000501
	v_perm_b32 v190, v97, v93, 0x6020703
	.loc	1 408 30                        ; generate_amdgcn.py:408:30
	v_add_nc_u32_e32 v93, s2, v58
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v191, v98, v94, 0x4000501
	v_cndmask_b32_e32 v92, 0x80000000, v92, vcc_lo
	v_perm_b32 v192, v98, v94, 0x6020703
	v_perm_b32 v193, v99, v95, 0x4000501
	v_cndmask_b32_e32 v96, 0x80000000, v93, vcc_lo
	v_perm_b32 v194, v99, v95, 0x6020703
	s_clause 0x1
	buffer_load_b128 v[92:95], v92, s[16:19], 0 offen
	buffer_load_b128 v[96:99], v96, s[16:19], 0 offen
	.loc	1 414 39 is_stmt 1              ; generate_amdgcn.py:414:39
	s_add_i32 s2, s2, s31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s4, s0
	s_mov_b32 s4, s1
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	s_waitcnt vmcnt(0)
	v_perm_b32 v195, v96, v92, 0x4000501
	v_perm_b32 v196, v96, v92, 0x6020703
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v92, s2, v57
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v197, v97, v93, 0x4000501
	v_perm_b32 v198, v97, v93, 0x6020703
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v93, s2, v76
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v199, v98, v94, 0x4000501
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v92, 0x80000000, v92, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v200, v98, v94, 0x6020703
	v_perm_b32 v201, v99, v95, 0x4000501
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_cndmask_b32_e32 v96, 0x80000000, v93, vcc_lo
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v202, v99, v95, 0x6020703
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_clause 0x1
	buffer_load_b128 v[92:95], v92, s[16:19], 0 offen
	buffer_load_b128 v[96:99], v96, s[16:19], 0 offen
	s_waitcnt vmcnt(0)
	v_perm_b32 v203, v96, v92, 0x4000501
	v_perm_b32 v204, v96, v92, 0x6020703
	.loc	1 414 39 is_stmt 0              ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v92, s2, v62
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v205, v97, v93, 0x4000501
	v_perm_b32 v206, v97, v93, 0x6020703
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	v_add_nc_u32_e32 v93, s2, v58
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v207, v98, v94, 0x4000501
	v_cndmask_b32_e32 v92, 0x80000000, v92, vcc_lo
	v_perm_b32 v208, v98, v94, 0x6020703
	v_perm_b32 v209, v99, v95, 0x4000501
	v_cndmask_b32_e32 v96, 0x80000000, v93, vcc_lo
	v_perm_b32 v210, v99, v95, 0x6020703
	s_clause 0x1
	buffer_load_b128 v[92:95], v92, s[16:19], 0 offen
	buffer_load_b128 v[96:99], v96, s[16:19], 0 offen
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v68, v[109:110] offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v109, v195, v187, 0x5040100
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v211, v96, v92, 0x4000501
	v_perm_b32 v92, v96, v92, 0x6020703
	v_perm_b32 v96, v97, v93, 0x4000501
	v_perm_b32 v93, v97, v93, 0x6020703
	v_perm_b32 v97, v98, v94, 0x4000501
	v_perm_b32 v94, v98, v94, 0x6020703
	v_perm_b32 v98, v99, v95, 0x4000501
	v_perm_b32 v95, v99, v95, 0x6020703
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_perm_b32 v99, v195, v187, 0x7060302
	ds_store_2addr_b32 v69, v99, v109 offset1:16
	v_perm_b32 v99, v196, v188, 0x7060302
	v_perm_b32 v109, v196, v188, 0x5040100
	ds_store_2addr_b32 v70, v99, v109 offset1:16
	v_perm_b32 v99, v197, v189, 0x7060302
	v_perm_b32 v109, v197, v189, 0x5040100
	ds_store_2addr_b32 v71, v99, v109 offset1:16
	v_perm_b32 v99, v198, v190, 0x7060302
	v_perm_b32 v109, v198, v190, 0x5040100
	ds_store_2addr_b32 v72, v99, v109 offset1:16
	v_perm_b32 v99, v199, v191, 0x7060302
	v_perm_b32 v109, v199, v191, 0x5040100
	ds_store_2addr_b32 v73, v99, v109 offset1:16
	v_perm_b32 v99, v200, v192, 0x7060302
	v_perm_b32 v109, v200, v192, 0x5040100
	ds_store_2addr_b32 v69, v99, v109 offset0:160 offset1:176
	v_perm_b32 v99, v201, v193, 0x7060302
	v_perm_b32 v109, v201, v193, 0x5040100
	ds_store_2addr_b32 v74, v99, v109 offset1:16
	v_perm_b32 v99, v202, v194, 0x7060302
	v_perm_b32 v109, v202, v194, 0x5040100
	ds_store_2addr_b32 v75, v99, v109 offset1:16
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	v_perm_b32 v99, v211, v203, 0x7060302
	v_perm_b32 v109, v211, v203, 0x5040100
	ds_store_2addr_b32 v85, v99, v109 offset1:16
	v_perm_b32 v99, v92, v204, 0x7060302
	v_perm_b32 v92, v92, v204, 0x5040100
	ds_store_2addr_b32 v86, v99, v92 offset1:16
	v_perm_b32 v92, v96, v205, 0x7060302
	v_perm_b32 v96, v96, v205, 0x5040100
	ds_store_2addr_b32 v87, v92, v96 offset1:16
	v_perm_b32 v92, v93, v206, 0x7060302
	v_perm_b32 v93, v93, v206, 0x5040100
	ds_store_2addr_b32 v88, v92, v93 offset1:16
	v_perm_b32 v92, v97, v207, 0x7060302
	v_perm_b32 v93, v97, v207, 0x5040100
	ds_store_2addr_b32 v89, v92, v93 offset1:16
	v_perm_b32 v92, v94, v208, 0x7060302
	v_perm_b32 v93, v94, v208, 0x5040100
	v_perm_b32 v94, v95, v210, 0x7060302
	v_perm_b32 v95, v95, v210, 0x5040100
	ds_store_2addr_b32 v85, v92, v93 offset0:160 offset1:176
	v_perm_b32 v92, v98, v209, 0x7060302
	v_perm_b32 v93, v98, v209, 0x5040100
	ds_store_2addr_b32 v90, v92, v93 offset1:16
	ds_store_2addr_b32 v91, v94, v95 offset1:16
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, v66 :: v_dual_mov_b32 v109, v63
	v_mov_b32_e32 v119, v64
	v_mov_b32_e32 v3, v65
.LBB0_7:                                ; %Flow234
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v129, v121 :: v_dual_and_b32 v110, 6, v0
	.loc	1 408 22 is_stmt 1              ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v119
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cndmask_b32_e64 v5, 0, 1, s21
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v132, v124 :: v_dual_lshlrev_b32 v1, 3, v110
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v4, 0x210, 0, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cmp_ne_u32_e64 s0, 1, v5
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_or_b32_e32 v2, v2, v1
	s_barrier
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_xor_b32_e32 v1, v4, v1
	v_dual_mov_b32 v72, v52 :: v_dual_mov_b32 v71, v51
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xad_u32 v5, v2, 16, 0
	v_dual_mov_b32 v131, v123 :: v_dual_add_nc_u32 v4, 0, v2
	v_xad_u32 v6, v2, 32, 0
	v_xad_u32 v2, v2, 48, 0
	ds_load_b128 v[97:100], v5 offset:32768
	ds_load_b128 v[89:92], v5 offset:33792
	ds_load_b128 v[81:84], v6 offset:32768
	ds_load_b128 v[5:8], v6 offset:33792
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	v_cndmask_b32_e64 v3, 0x420, 0, vcc_lo
	v_or_b32_e32 v1, v1, v67
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[101:104], v4 offset:32768
	ds_load_b128 v[93:96], v4 offset:33792
	ds_load_b128 v[85:88], v2 offset:32768
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[77:80], v2 offset:33792
	v_dual_mov_b32 v64, v48 :: v_dual_mov_b32 v63, v47
	v_xor_b32_e32 v1, v1, v3
	v_dual_mov_b32 v68, v40 :: v_dual_mov_b32 v67, v39
	v_dual_mov_b32 v76, v36 :: v_dual_mov_b32 v75, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v3, 48, v1
	v_xor_b32_e32 v4, 32, v1
	v_xor_b32_e32 v57, 16, v1
	v_dual_mov_b32 v136, v128 :: v_dual_add_nc_u32 v141, 0, v1
	v_dual_mov_b32 v133, v125 :: v_dual_add_nc_u32 v138, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v135, v127 :: v_dual_add_nc_u32 v140, 0, v4
	v_dual_mov_b32 v134, v126 :: v_dual_add_nc_u32 v139, 0, v57
	v_dual_mov_b32 v1, v53 :: v_dual_mov_b32 v2, v54
	v_dual_mov_b32 v60, v44 :: v_dual_mov_b32 v59, v43
	v_dual_mov_b32 v130, v122 :: v_dual_and_b32 v137, 1, v0
	v_dual_mov_b32 v3, v55 :: v_dual_mov_b32 v4, v56
	v_dual_mov_b32 v70, v50 :: v_dual_mov_b32 v69, v49
	v_dual_mov_b32 v62, v46 :: v_dual_mov_b32 v61, v45
	v_dual_mov_b32 v58, v42 :: v_dual_mov_b32 v57, v41
	v_dual_mov_b32 v66, v38 :: v_dual_mov_b32 v65, v37
	v_dual_mov_b32 v74, v34 :: v_dual_mov_b32 v73, v33
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s21
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[1:4], v141
	ds_load_b128 v[73:76], v141 offset:8192
	ds_load_b128 v[150:153], v140 offset:8192
	ds_load_b128 v[154:157], v140
	ds_load_b128 v[158:161], v139 offset:8192
	ds_load_b128 v[162:165], v139
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v64, s11 :: v_dual_mov_b32 v63, s10
	v_dual_mov_b32 v62, s9 :: v_dual_mov_b32 v61, s8
	v_dual_mov_b32 v60, s7 :: v_dual_mov_b32 v59, s6
	v_dual_mov_b32 v58, s5 :: v_dual_mov_b32 v57, s4
	.loc	1 408 22                        ; generate_amdgcn.py:408:22
	ds_load_b128 v[166:169], v138
	ds_load_b128 v[170:173], v138 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[1:4], v[101:104], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[73:76], v[101:104], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[1:4], v[93:96], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[73:76], v[93:96], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[162:165], v[97:100], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[158:161], v[97:100], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[162:165], v[89:92], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[158:161], v[89:92], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[154:157], v[81:84], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[150:153], v[81:84], v[129:136] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[154:157], v[5:8], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[150:153], v[5:8], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[65:72], v[166:169], v[85:88], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[170:173], v[85:88], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[166:169], v[77:80], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[170:173], v[77:80], v[57:64] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v69
	v_cvt_f32_i32_e32 v2, v70
	v_cvt_f32_i32_e32 v3, v71
	v_cvt_f32_i32_e32 v4, v72
	v_cvt_f32_i32_e32 v69, v129
	v_cvt_f32_i32_e32 v70, v130
	v_cvt_f32_i32_e32 v71, v131
	v_cvt_f32_i32_e32 v72, v132
	v_cvt_f32_i32_e32 v73, v133
	v_cvt_f32_i32_e32 v74, v134
	v_cvt_f32_i32_e32 v75, v135
	v_cvt_f32_i32_e32 v76, v136
	v_cvt_f32_i32_e32 v133, v142
	v_cvt_f32_i32_e32 v134, v143
	v_cvt_f32_i32_e32 v135, v144
	v_cvt_f32_i32_e32 v136, v145
	v_cvt_f32_i32_e32 v142, v146
	v_cvt_f32_i32_e32 v143, v147
	v_cvt_f32_i32_e32 v144, v148
	v_cvt_f32_i32_e32 v145, v149
	v_cvt_f32_i32_e32 v146, v57
	v_cvt_f32_i32_e32 v147, v58
	v_cvt_f32_i32_e32 v148, v59
	v_cvt_f32_i32_e32 v149, v60
	v_cvt_f32_i32_e32 v150, v61
	v_cvt_f32_i32_e32 v151, v62
	v_cvt_f32_i32_e32 v152, v63
	v_cvt_f32_i32_e32 v57, v68
	v_cvt_f32_i32_e32 v58, v67
	v_cvt_f32_i32_e32 v61, v66
	v_cvt_f32_i32_e32 v62, v65
	v_cvt_f32_i32_e32 v153, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_add_f32 v60, v44, v57 :: v_dual_add_f32 v59, v43, v58
	v_dual_add_f32 v58, v42, v61 :: v_dual_add_f32 v57, v41, v62
	v_dual_add_f32 v68, v40, v4 :: v_dual_add_f32 v67, v39, v3
	v_dual_add_f32 v66, v38, v2 :: v_dual_add_f32 v65, v37, v1
	v_dual_add_f32 v129, v121, v69 :: v_dual_add_f32 v62, v46, v71
	v_dual_add_f32 v64, v48, v73 :: v_dual_add_f32 v63, v47, v72
	v_dual_add_f32 v61, v45, v70 :: v_dual_add_f32 v132, v124, v76
	v_dual_add_f32 v130, v122, v74 :: v_dual_add_f32 v131, v123, v75
	v_dual_add_f32 v72, v52, v136 :: v_dual_add_f32 v71, v51, v135
	v_dual_add_f32 v70, v50, v134 :: v_dual_add_f32 v69, v49, v133
	v_dual_add_f32 v76, v36, v145 :: v_dual_add_f32 v75, v35, v144
	v_dual_add_f32 v74, v34, v143 :: v_dual_add_f32 v73, v33, v142
	v_dual_add_f32 v133, v125, v146 :: v_dual_add_f32 v2, v54, v148
	v_dual_add_f32 v4, v56, v150 :: v_dual_add_f32 v3, v55, v149
	v_dual_add_f32 v1, v53, v147 :: v_dual_add_f32 v136, v128, v153
	v_dual_add_f32 v134, v126, v151 :: v_dual_add_f32 v135, v127, v152
.LBB0_9:
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 414 31                        ; generate_amdgcn.py:414:31
	ds_load_b128 v[142:145], v141 offset:16384
	ds_load_b128 v[146:149], v141 offset:24576
	ds_load_b128 v[150:153], v140 offset:24576
	ds_load_b128 v[154:157], v140 offset:16384
	ds_load_b128 v[158:161], v139 offset:24576
	ds_load_b128 v[162:165], v139 offset:16384
	s_mov_b32 s0, 0
	ds_load_b128 v[166:169], v138 offset:16384
	ds_load_b128 v[138:141], v138 offset:24576
	.loc	1 415 28                        ; generate_amdgcn.py:415:28
	s_mov_b32 s7, s0
	s_mov_b32 s1, s0
	s_mov_b32 s2, s0
	s_mov_b32 s3, s0
	s_mov_b32 s4, s0
	s_mov_b32 s5, s0
	s_mov_b32 s6, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v40, s7 :: v_dual_mov_b32 v39, s6
	v_dual_mov_b32 v38, s5 :: v_dual_mov_b32 v37, s4
	v_dual_mov_b32 v36, s3 :: v_dual_mov_b32 v35, s2
	v_dual_mov_b32 v34, s1 :: v_dual_mov_b32 v33, s0
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[142:145], v[101:104], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[146:149], v[101:104], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[142:145], v[93:96], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[146:149], v[93:96], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[162:165], v[97:100], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[158:161], v[97:100], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[162:165], v[89:92], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[158:161], v[89:92], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[154:157], v[81:84], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[150:153], v[81:84], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[154:157], v[5:8], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[150:153], v[5:8], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[166:169], v[85:88], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[138:141], v[85:88], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[166:169], v[77:80], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[138:141], v[77:80], v[33:40] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v5, v41
	v_cvt_f32_i32_e32 v6, v42
	v_cvt_f32_i32_e32 v7, v43
	v_cvt_f32_i32_e32 v8, v44
	v_cvt_f32_i32_e32 v41, v45
	v_cvt_f32_i32_e32 v42, v46
	v_cvt_f32_i32_e32 v43, v47
	v_cvt_f32_i32_e32 v44, v48
	v_cvt_f32_i32_e32 v45, v49
	v_cvt_f32_i32_e32 v46, v50
	v_cvt_f32_i32_e32 v47, v51
	v_cvt_f32_i32_e32 v48, v52
	v_cvt_f32_i32_e32 v49, v53
	v_cvt_f32_i32_e32 v50, v54
	v_cvt_f32_i32_e32 v51, v55
	v_cvt_f32_i32_e32 v52, v56
	v_cvt_f32_i32_e32 v53, v121
	v_cvt_f32_i32_e32 v54, v122
	v_cvt_f32_i32_e32 v55, v123
	v_cvt_f32_i32_e32 v56, v124
	v_cvt_f32_i32_e32 v77, v125
	v_cvt_f32_i32_e32 v78, v126
	v_cvt_f32_i32_e32 v79, v127
	v_cvt_f32_i32_e32 v80, v128
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 431 17                        ; generate_amdgcn.py:431:17
	v_dual_add_f32 v20, v20, v8 :: v_dual_add_f32 v19, v19, v7
	v_dual_add_f32 v18, v18, v6 :: v_dual_add_f32 v17, v17, v5
	v_dual_add_f32 v16, v16, v44 :: v_dual_add_f32 v15, v15, v43
	v_dual_add_f32 v14, v14, v42 :: v_dual_add_f32 v13, v13, v41
	v_dual_add_f32 v111, v111, v45 :: v_dual_add_f32 v22, v22, v47
	v_dual_add_f32 v24, v24, v49 :: v_dual_add_f32 v23, v23, v48
	v_dual_add_f32 v21, v21, v46 :: v_dual_add_f32 v116, v116, v52
	v_dual_add_f32 v118, v118, v50 :: v_dual_add_f32 v117, v117, v51
	v_dual_add_f32 v28, v28, v56 :: v_dual_add_f32 v27, v27, v55
	v_dual_add_f32 v26, v26, v54 :: v_dual_add_f32 v25, v25, v53
	v_dual_add_f32 v12, v12, v80 :: v_dual_add_f32 v11, v11, v79
	v_dual_add_f32 v10, v10, v78 :: v_dual_add_f32 v9, v9, v77
	v_dual_add_f32 v115, v115, v33 :: v_dual_add_f32 v30, v30, v35
	v_dual_add_f32 v32, v32, v37 :: v_dual_add_f32 v31, v31, v36
	v_dual_add_f32 v29, v29, v34 :: v_dual_add_f32 v112, v112, v40
	v_dual_add_f32 v114, v114, v38 :: v_dual_add_f32 v113, v113, v39
	s_branch .LBB0_12
.LBB0_11:
	.loc	1 0 17 is_stmt 0                ; generate_amdgcn.py:0:17
	v_dual_mov_b32 v1, v53 :: v_dual_mov_b32 v2, v54
	v_dual_mov_b32 v72, v52 :: v_dual_mov_b32 v71, v51
	v_dual_mov_b32 v64, v48 :: v_dual_mov_b32 v63, v47
	v_dual_mov_b32 v60, v44 :: v_dual_mov_b32 v59, v43
	v_dual_mov_b32 v68, v40 :: v_dual_mov_b32 v67, v39
	v_dual_mov_b32 v76, v36 :: v_dual_mov_b32 v75, v35
	v_dual_mov_b32 v136, v128 :: v_dual_mov_b32 v135, v127
	v_dual_mov_b32 v134, v126 :: v_dual_mov_b32 v133, v125
	v_dual_mov_b32 v132, v124 :: v_dual_mov_b32 v131, v123
	v_dual_mov_b32 v130, v122 :: v_dual_mov_b32 v129, v121
	v_dual_mov_b32 v3, v55 :: v_dual_mov_b32 v4, v56
	v_dual_mov_b32 v70, v50 :: v_dual_mov_b32 v69, v49
	v_dual_mov_b32 v62, v46 :: v_dual_mov_b32 v61, v45
	v_dual_mov_b32 v58, v42 :: v_dual_mov_b32 v57, v41
	v_dual_mov_b32 v66, v38 :: v_dual_mov_b32 v65, v37
	v_dual_mov_b32 v74, v34 :: v_dual_mov_b32 v73, v33
.LBB0_12:
	.loc	1 434 22 is_stmt 1              ; generate_amdgcn.py:434:22
	s_waitcnt lgkmcnt(4)
	v_or_b32_e32 v5, s34, v107
	.loc	1 434 14 is_stmt 0              ; generate_amdgcn.py:434:14
	s_and_b32 s45, s37, 0xffff
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_mov_b32 s44, s36
	.loc	1 434 22                        ; generate_amdgcn.py:434:22
	v_lshlrev_b32_e32 v5, 1, v5
	.loc	1 435 22 is_stmt 1              ; generate_amdgcn.py:435:22
	v_or_b32_e32 v6, s20, v0
	.loc	1 414 39                        ; generate_amdgcn.py:414:39
	s_add_i32 s20, s20, s31
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshl_add_u32 v83, v106, 1, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	v_or_b32_e32 v7, 32, v5
	s_clause 0x1
	buffer_load_u16 v45, v5, s[44:47], 0 offen
	buffer_load_u16 v48, v7, s[44:47], 0 offen
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_and_b32 s45, s39, 0xffff
	s_mov_b32 s44, s38
	.loc	1 434 14                        ; generate_amdgcn.py:434:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v82, 16, v45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v48
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	v_lshlrev_b32_e32 v6, 1, v6
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v7, 5, v137
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	buffer_load_u16 v5, v6, s[44:47], 0 offen
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_lshlrev_b32_e32 v6, 2, v106
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v6, 0, v6, v7
	v_lshl_add_u32 v46, v120, 1, v6
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	v_add_lshl_u32 v6, s20, v0, 1
	.loc	1 435 14                        ; generate_amdgcn.py:435:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_store_b32 v46, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 438 23                        ; generate_amdgcn.py:438:23
	buffer_load_u16 v47, v6, s[44:47], 0 offen
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	ds_load_b128 v[5:8], v83 offset:512
	ds_load_b128 v[33:36], v83 offset:528
	ds_load_b128 v[41:44], v83
	ds_load_b128 v[37:40], v83 offset:16
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp16:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s45, s41, 0xffff
	s_mov_b32 s44, s40
.Ltmp17:
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v48, v5, v82
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 436 9 is_stmt 0               ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v81, v129, v48 :: v_dual_mul_f32 v50, v35, v82
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v52, v44, v82
	v_mul_f32_e32 v49, v34, v82
	v_dual_mul_f32 v51, v36, v82 :: v_dual_mul_f32 v34, v34, v45
	v_mul_f32_e32 v5, v5, v45
	v_mul_f32_e32 v35, v35, v45
	v_mul_f32_e32 v36, v36, v45
	v_mul_f32_e32 v84, v43, v82
	v_dual_mul_f32 v53, v42, v82 :: v_dual_mul_f32 v96, v43, v45
	v_dual_mul_f32 v54, v41, v82 :: v_dual_mul_f32 v97, v44, v45
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v79, v131, v50
	v_dual_mul_f32 v77, v133, v5 :: v_dual_mul_f32 v56, v135, v35
	v_dual_mul_f32 v5, v134, v34 :: v_dual_mul_f32 v52, v60, v52
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_dual_mul_f32 v88, v40, v82 :: v_dual_mul_f32 v41, v41, v45
	v_dual_mul_f32 v89, v39, v82 :: v_dual_mul_f32 v98, v42, v45
	v_dual_mul_f32 v90, v38, v82 :: v_dual_mul_f32 v99, v40, v45
	v_dual_mul_f32 v91, v37, v82 :: v_dual_mul_f32 v100, v38, v45
	v_dual_mul_f32 v92, v33, v82 :: v_dual_mul_f32 v39, v39, v45
	v_dual_mul_f32 v93, v8, v82 :: v_dual_mul_f32 v80, v130, v49
	v_dual_mul_f32 v94, v7, v82 :: v_dual_mul_f32 v101, v37, v45
	v_dual_mul_f32 v95, v6, v82 :: v_dual_mul_f32 v78, v132, v51
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v55, v136, v36 :: v_dual_mul_f32 v54, v57, v54
	v_dual_mul_f32 v53, v58, v53 :: v_dual_mul_f32 v50, v59, v84
	v_dual_mul_f32 v51, v65, v91 :: v_dual_mul_f32 v48, v67, v89
	v_mul_f32_e32 v49, v66, v90
	v_dual_mul_f32 v43, v63, v93 :: v_dual_mul_f32 v42, v64, v92
	v_dual_mul_f32 v40, v69, v41 :: v_dual_mul_f32 v41, v70, v98
	v_dual_mul_f32 v38, v72, v97 :: v_dual_mul_f32 v37, v71, v96
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v7, v7, v45
	v_dual_mul_f32 v33, v33, v45 :: v_dual_mul_f32 v44, v62, v94
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v35, v74, v100 :: v_dual_mul_f32 v8, v8, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v2, v2, v7
	.loc	1 436 16                        ; generate_amdgcn.py:436:16
	v_mul_f32_e32 v6, v6, v45
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_dual_mul_f32 v4, v4, v33 :: v_dual_mul_f32 v3, v3, v8
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v1, v1, v6 :: v_dual_lshlrev_b32 v34, 16, v47
	v_mul_f32_e32 v47, v68, v88
	.loc	1 439 25 is_stmt 1              ; generate_amdgcn.py:439:25
	ds_store_b32 v46, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v83 offset:512
	ds_load_b128 v[84:87], v83 offset:528
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v46, v61, v95
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	ds_load_b128 v[65:68], v83
	ds_load_b128 v[61:64], v83 offset:16
	.loc	1 436 9                         ; generate_amdgcn.py:436:9
	v_mul_f32_e32 v36, v75, v39
	v_dual_mul_f32 v39, v76, v99 :: v_dual_mul_f32 v34, v73, v101
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp19:
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_mul_f32_e32 v69, v57, v82
	v_mul_f32_e32 v70, v85, v82
	v_mul_f32_e32 v71, v86, v82
	v_dual_mul_f32 v72, v87, v82 :: v_dual_mul_f32 v57, v57, v45
	v_dual_mul_f32 v83, v85, v45 :: v_dual_mul_f32 v88, v68, v82
	v_dual_mul_f32 v85, v86, v45 :: v_dual_mul_f32 v90, v65, v82
	v_mul_f32_e32 v86, v87, v45
	v_dual_mul_f32 v87, v67, v82 :: v_dual_mul_f32 v100, v68, v45
	v_dual_mul_f32 v89, v66, v82 :: v_dual_mul_f32 v102, v65, v45
	v_dual_mul_f32 v91, v64, v82 :: v_dual_mul_f32 v104, v63, v45
	v_dual_mul_f32 v92, v63, v82 :: v_dual_mul_f32 v101, v66, v45
	v_mul_f32_e32 v93, v62, v82
	v_dual_mul_f32 v94, v61, v82 :: v_dual_mul_f32 v99, v67, v45
	v_dual_mul_f32 v95, v84, v82 :: v_dual_mul_f32 v120, v62, v45
	v_dual_mul_f32 v96, v60, v82 :: v_dual_mul_f32 v121, v61, v45
	v_dual_mul_f32 v97, v59, v82 :: v_dual_mul_f32 v122, v60, v45
	v_dual_mul_f32 v98, v58, v82 :: v_dual_mul_f32 v103, v64, v45
	.loc	1 439 13 is_stmt 0              ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v82, v111, v69 :: v_dual_mul_f32 v69, v17, v90
	.loc	1 439 25                        ; generate_amdgcn.py:439:25
	v_dual_mul_f32 v123, v59, v45 :: v_dual_mul_f32 v76, v118, v70
	v_dual_mul_f32 v124, v58, v45 :: v_dual_mul_f32 v75, v117, v71
	v_mul_f32_e32 v84, v84, v45
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v74, v116, v72 :: v_dual_mul_f32 v73, v115, v57
	v_dual_mul_f32 v72, v114, v83 :: v_dual_mul_f32 v71, v113, v85
	v_dual_mul_f32 v70, v112, v86 :: v_dual_mul_f32 v63, v15, v92
	v_dual_mul_f32 v68, v18, v89 :: v_dual_mul_f32 v67, v20, v88
	v_dual_mul_f32 v66, v19, v87 :: v_dual_mul_f32 v65, v13, v94
	v_dual_mul_f32 v58, v24, v95 :: v_dual_mul_f32 v17, v9, v121
	v_dual_mul_f32 v20, v27, v99 :: v_dual_mul_f32 v13, v10, v120
	v_dual_mul_f32 v15, v11, v104 :: v_dual_mul_f32 v12, v12, v103
	.loc	1 441 40 is_stmt 1              ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v9, 0xbfb8aa3b, v82 :: v_dual_mul_f32 v10, 0xbfb8aa3b, v76
	v_dual_mul_f32 v11, 0xbfb8aa3b, v75 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v74
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v64, v14, v93 :: v_dual_mul_f32 v61, v21, v98
	v_dual_mul_f32 v62, v16, v91 :: v_dual_mul_f32 v59, v23, v96
	v_dual_mul_f32 v60, v22, v97 :: v_dual_mul_f32 v57, v25, v102
	v_dual_mul_f32 v14, v29, v124 :: v_dual_mul_f32 v23, v31, v122
	v_dual_mul_f32 v16, v30, v123 :: v_dual_mul_f32 v25, v32, v84
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v19, 0xbfb8aa3b, v73 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v72
	v_dual_mul_f32 v94, 0xbfb8aa3b, v12 :: v_dual_mul_f32 v95, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v96, 0xbfb8aa3b, v13 :: v_dual_mul_f32 v99, 0xbfb8aa3b, v23
	v_mul_f32_e32 v97, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v10
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	.loc	1 439 13                        ; generate_amdgcn.py:439:13
	v_dual_mul_f32 v22, v26, v101 :: v_dual_mul_f32 v21, v28, v100
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_mul_f32_e32 v100, 0xbfb8aa3b, v16
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v18
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v19
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v24
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v97
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v96
	v_cmp_gt_f32_e64 s25, 0xc2fc0000, v95
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v94
	v_dual_mul_f32 v26, 0xbfb8aa3b, v71 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v70
	v_cndmask_b32_e64 v10, 0, 0x42800000, s0
	v_cndmask_b32_e64 v11, 0, 0x42800000, s1
	v_dual_mul_f32 v30, 0xbfb8aa3b, v68 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v69
	v_cndmask_b32_e64 v18, 0, 0x42800000, s2
	v_cndmask_b32_e64 v19, 0, 0x42800000, s3
	v_cndmask_b32_e64 v24, 0, 0x42800000, s4
	v_cndmask_b32_e64 v97, 0, 0x42800000, s23
	v_cndmask_b32_e64 v96, 0, 0x42800000, s24
	v_cndmask_b32_e64 v95, 0, 0x42800000, s25
	v_cndmask_b32_e64 v94, 0, 0x42800000, s26
	v_dual_fmac_f32 v9, 0xbfb8aa3b, v82 :: v_dual_fmac_f32 v10, 0xbfb8aa3b, v76
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v26
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v27
	v_dual_mul_f32 v28, 0xbfb8aa3b, v66 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v67
	v_dual_fmac_f32 v11, 0xbfb8aa3b, v75 :: v_dual_fmac_f32 v18, 0xbfb8aa3b, v74
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v31
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v30
	v_dual_fmac_f32 v19, 0xbfb8aa3b, v73 :: v_dual_fmac_f32 v24, 0xbfb8aa3b, v72
	v_dual_fmac_f32 v97, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v94, 0xbfb8aa3b, v12
	v_dual_fmac_f32 v96, 0xbfb8aa3b, v13 :: v_dual_fmac_f32 v95, 0xbfb8aa3b, v15
	v_exp_f32_e32 v9, v9
	v_dual_mul_f32 v32, 0xbfb8aa3b, v62 :: v_dual_mul_f32 v83, 0xbfb8aa3b, v63
	v_cndmask_b32_e64 v26, 0, 0x42800000, s5
	v_cndmask_b32_e64 v27, 0, 0x42800000, s6
	v_dual_mul_f32 v84, 0xbfb8aa3b, v64 :: v_dual_mul_f32 v85, 0xbfb8aa3b, v65
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v29
	v_exp_f32_e32 v10, v10
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v28
	v_exp_f32_e32 v11, v11
	v_dual_mul_f32 v86, 0xbfb8aa3b, v58 :: v_dual_mul_f32 v87, 0xbfb8aa3b, v59
	v_cndmask_b32_e64 v31, 0, 0x42800000, s7
	v_cndmask_b32_e64 v30, 0, 0x42800000, s8
	v_cndmask_b32_e64 v102, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v24, v24
	v_exp_f32_e32 v95, v95
	v_exp_f32_e32 v94, v94
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v83
	v_dual_fmac_f32 v26, 0xbfb8aa3b, v71 :: v_dual_fmac_f32 v27, 0xbfb8aa3b, v70
	v_dual_mul_f32 v98, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v101, 0xbfb8aa3b, v14
	v_cndmask_b32_e64 v29, 0, 0x42800000, s9
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v85
	v_cndmask_b32_e64 v103, 0, 0xffffffc0, s0
	v_dual_mul_f32 v88, 0xbfb8aa3b, v60 :: v_dual_mul_f32 v89, 0xbfb8aa3b, v61
	v_dual_mul_f32 v90, 0xbfb8aa3b, v20 :: v_dual_mul_f32 v91, 0xbfb8aa3b, v21
	v_cndmask_b32_e64 v28, 0, 0x42800000, s10
	v_cndmask_b32_e64 v104, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s17, 0xc2fc0000, v87
	v_cndmask_b32_e64 v111, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v112, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v113, 0, 0xffffffc0, s4
	v_dual_fmac_f32 v31, 0xbfb8aa3b, v69 :: v_dual_fmac_f32 v30, 0xbfb8aa3b, v68
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, s25
	v_cndmask_b32_e64 v136, 0, 0xffffffc0, s26
	v_ldexp_f32 v9, v9, v102
	v_cndmask_b32_e64 v83, 0, 0x42800000, s13
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v32
	v_exp_f32_e32 v26, v26
	v_exp_f32_e32 v27, v27
	v_cndmask_b32_e64 v85, 0, 0x42800000, s11
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v84
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v101
	v_dual_fmac_f32 v29, 0xbfb8aa3b, v67 :: v_dual_fmac_f32 v28, 0xbfb8aa3b, v66
	v_ldexp_f32 v10, v10, v103
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v89
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v91
	v_exp_f32_e32 v97, v97
	v_exp_f32_e32 v96, v96
	v_ldexp_f32 v11, v11, v104
	v_cndmask_b32_e64 v87, 0, 0x42800000, s17
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v86
	v_exp_f32_e32 v30, v30
	v_ldexp_f32 v18, v18, v111
	v_ldexp_f32 v19, v19, v112
	v_ldexp_f32 v24, v24, v113
	v_ldexp_f32 v95, v95, v135
	v_ldexp_f32 v94, v94, v136
	.loc	1 441 34 is_stmt 0              ; generate_amdgcn.py:441:34
	v_dual_add_f32 v9, 1.0, v9 :: v_dual_add_f32 v10, 1.0, v10
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_dual_mul_f32 v92, 0xbfb8aa3b, v22 :: v_dual_mul_f32 v93, 0xbfb8aa3b, v57
	v_cndmask_b32_e64 v32, 0, 0x42800000, s14
	v_cndmask_b32_e64 v114, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v115, 0, 0xffffffc0, s6
	v_fmac_f32_e32 v83, 0xbfb8aa3b, v63
	v_cndmask_b32_e64 v84, 0, 0x42800000, s12
	v_cndmask_b32_e64 v101, 0, 0x42800000, s27
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v100
	v_fmac_f32_e32 v85, 0xbfb8aa3b, v65
	v_exp_f32_e32 v29, v29
	v_exp_f32_e32 v31, v31
	v_cndmask_b32_e64 v89, 0, 0x42800000, s15
	v_cmp_gt_f32_e64 s16, 0xc2fc0000, v88
	v_cndmask_b32_e64 v91, 0, 0x42800000, s21
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v90
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, s23
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, s24
	v_exp_f32_e32 v28, v28
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_add_f32 v18, 1.0, v18
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v86, 0, 0x42800000, s18
	v_cndmask_b32_e64 v117, 0, 0xffffffc0, s8
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v59
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_add_f32 v102, 1.0, v24
	v_dual_add_f32 v94, 1.0, v94 :: v_dual_add_f32 v95, 1.0, v95
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v24, null, v9, v9, v82
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v93
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v62
	v_exp_f32_e32 v83, v83
	v_ldexp_f32 v26, v26, v114
	v_ldexp_f32 v27, v27, v115
	v_cndmask_b32_e64 v100, 0, 0x42800000, s28
	v_cndmask_b32_e64 v118, 0, 0xffffffc0, s9
	v_dual_fmac_f32 v84, 0xbfb8aa3b, v64 :: v_dual_fmac_f32 v101, 0xbfb8aa3b, v14
	v_exp_f32_e32 v85, v85
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v104, null, v10, v10, v76
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v116, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v88, 0, 0x42800000, s16
	v_cndmask_b32_e64 v90, 0, 0x42800000, s22
	v_cndmask_b32_e64 v120, 0, 0xffffffc0, s10
	v_fmac_f32_e32 v89, 0xbfb8aa3b, v61
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v21
	v_ldexp_f32 v97, v97, v133
	v_ldexp_f32 v96, v96, v134
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v112, null, v11, v11, v75
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v86, 0xbfb8aa3b, v58
	v_exp_f32_e32 v87, v87
	v_ldexp_f32 v30, v30, v117
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v114, null, v18, v18, v74
	v_div_scale_f32 v161, null, v95, v95, v15
	v_rcp_f32_e32 v167, v24
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v93, 0, 0x42800000, s19
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v92
	v_cndmask_b32_e64 v123, 0, 0xffffffc0, s13
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v26, 1.0, v26 :: v_dual_add_f32 v103, 1.0, v27
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v121, 0, 0xffffffc0, s11
	v_fmac_f32_e32 v100, 0xbfb8aa3b, v16
	v_exp_f32_e32 v101, v101
	v_ldexp_f32 v29, v29, v118
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v118, null, v102, v102, v72
	v_rcp_f32_e32 v168, v104
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v99
	v_ldexp_f32 v31, v31, v116
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v116, null, v19, v19, v73
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v60
	v_fmac_f32_e32 v90, 0xbfb8aa3b, v20
	v_exp_f32_e32 v84, v84
	v_exp_f32_e32 v89, v89
	v_exp_f32_e32 v91, v91
	v_ldexp_f32 v28, v28, v120
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v96, 1.0, v96 :: v_dual_add_f32 v97, 1.0, v97
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v169, v112
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, s17
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v30, 1.0, v30 :: v_dual_add_f32 v31, 1.0, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v170, v114
	v_rcp_f32_e32 v193, v161
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v92, 0, 0x42800000, s20
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v57
	v_ldexp_f32 v83, v83, v123
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v123, null, v103, v103, v70
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v137, 0, 0xffffffc0, s27
	v_ldexp_f32 v85, v85, v121
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v121, null, v26, v26, v71
	v_rcp_f32_e32 v172, v118
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v99, 0, 0x42800000, s29
	v_cmp_gt_f32_e64 s30, 0xc2fc0000, v98
	v_exp_f32_e32 v32, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v171, v116
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v122, 0, 0xffffffc0, s12
	v_cndmask_b32_e64 v125, 0, 0xffffffc0, s15
	v_cndmask_b32_e64 v131, 0, 0xffffffc0, s21
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v28, 1.0, v28 :: v_dual_add_f32 v29, 1.0, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v157, null, v97, v97, v17
	v_div_scale_f32 v163, null, v94, v94, v12
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v87, v87, v127
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v127, null, v30, v30, v68
	v_fma_f32 v196, -v24, v167, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v22
	v_exp_f32_e32 v93, v93
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v174, v123
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v88, v88
	v_ldexp_f32 v101, v101, v137
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v173, v121
	v_fma_f32 v197, -v104, v168, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v98, 0, 0x42800000, s30
	v_cndmask_b32_e64 v124, 0, 0xffffffc0, s14
	v_fmac_f32_e32 v99, 0xbfb8aa3b, v23
	v_ldexp_f32 v84, v84, v122
	v_ldexp_f32 v89, v89, v125
	v_ldexp_f32 v91, v91, v131
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v125, null, v31, v31, v69
	v_div_scale_f32 v131, null, v28, v28, v66
	v_rcp_f32_e32 v191, v157
	v_rcp_f32_e32 v194, v163
	v_fma_f32 v198, -v112, v169, 1.0
	v_div_scale_f32 v27, vcc_lo, v82, v9, v82
	v_rcp_f32_e32 v176, v127
	v_fma_f32 v199, -v114, v170, 1.0
	v_fma_f32 v222, -v161, v193, 1.0
	v_fmac_f32_e32 v167, v196, v167
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v129, 0, 0xffffffc0, s19
	v_cndmask_b32_e64 v126, 0, 0xffffffc0, s16
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v101, 1.0, v101 :: v_dual_fmac_f32 v168, v197, v168
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v111, s25, v76, v10, v76
	v_fma_f32 v201, -v118, v172, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_fmac_f32_e32 v98, 0xbfb8aa3b, v25
	v_exp_f32_e32 v99, v99
	v_ldexp_f32 v32, v32, v124
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v200, -v116, v171, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v84, 1.0, v84 :: v_dual_add_f32 v85, 1.0, v85
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v113, s26, v75, v11, v75
	v_rcp_f32_e32 v175, v125
	v_rcp_f32_e32 v178, v131
	v_dual_fmac_f32 v169, v198, v169 :: v_dual_fmac_f32 v172, v201, v172
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v86, v86
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_dual_fmac_f32 v170, v199, v170 :: v_dual_fmac_f32 v193, v222, v193
	v_mul_f32_e32 v196, v27, v167
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v93, v93, v129
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v115, s24, v74, v18, v74
	v_div_scale_f32 v129, null, v29, v29, v67
	v_fma_f32 v203, -v123, v174, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v88, v88, v126
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v202, -v121, v173, 1.0
	v_dual_mul_f32 v197, v111, v168 :: v_dual_mul_f32 v198, v113, v169
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v139, 0, 0xffffffc0, s29
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v32, 1.0, v32 :: v_dual_add_f32 v83, 1.0, v83
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v117, s23, v73, v19, v73
	v_dual_fmac_f32 v171, v200, v171 :: v_dual_fmac_f32 v174, v203, v174
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v92, v92
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v135, null, v84, v84, v64
	v_fma_f32 v220, -v157, v191, 1.0
	v_fma_f32 v223, -v163, v194, 1.0
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, s18
	v_cndmask_b32_e64 v132, 0, 0xffffffc0, s22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v120, s22, v72, v102, v72
	v_div_scale_f32 v133, null, v85, v85, v65
	v_fma_f32 v205, -v127, v176, 1.0
	v_fma_f32 v224, -v24, v196, v27
	v_rcp_f32_e32 v177, v129
	v_dual_mul_f32 v199, v115, v170 :: v_dual_mul_f32 v200, v117, v171
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v88, 1.0, v88 :: v_dual_add_f32 v89, 1.0, v89
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v122, s21, v71, v26, v71
	v_dual_fmac_f32 v173, v202, v173 :: v_dual_fmac_f32 v176, v205, v176
	v_fma_f32 v225, -v104, v197, v111
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v90, v90
	v_ldexp_f32 v99, v99, v139
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v139, null, v32, v32, v62
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v130, 0, 0xffffffc0, s20
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v124, s20, v70, v103, v70
	v_div_scale_f32 v137, null, v83, v83, v63
	v_div_scale_f32 v164, s2, v12, v94, v12
	v_rcp_f32_e32 v180, v135
	v_fma_f32 v204, -v125, v175, 1.0
	v_fma_f32 v207, -v131, v178, 1.0
	v_dual_fmac_f32 v191, v220, v191 :: v_dual_fmac_f32 v194, v223, v194
	v_fma_f32 v226, -v112, v198, v113
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v86, v86, v128
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v179, v133
	v_dual_mul_f32 v201, v120, v172 :: v_dual_mul_f32 v202, v122, v173
	v_dual_fmac_f32 v196, v224, v167 :: v_dual_fmac_f32 v197, v225, v168
	v_fma_f32 v227, -v114, v199, v115
	v_div_scale_f32 v143, null, v88, v88, v60
	v_rcp_f32_e32 v182, v139
	v_fma_f32 v228, -v116, v200, v117
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v92, v92, v130
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v126, s19, v69, v31, v69
	v_rcp_f32_e32 v181, v137
	v_dual_fmac_f32 v175, v204, v175 :: v_dual_fmac_f32 v178, v207, v178
	v_mul_f32_e32 v203, v124, v174
	v_dual_mul_f32 v223, v164, v194 :: v_dual_fmac_f32 v198, v226, v169
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v86, 1.0, v86 :: v_dual_add_f32 v87, 1.0, v87
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v229, -v118, v201, v120
	v_fma_f32 v24, -v24, v196, v27
	v_fma_f32 v206, -v129, v177, 1.0
	v_dual_fmac_f32 v199, v227, v170 :: v_dual_fmac_f32 v200, v228, v171
	v_div_scale_f32 v141, null, v89, v89, v61
	v_rcp_f32_e32 v184, v143
	v_fma_f32 v230, -v121, v202, v122
	v_fma_f32 v27, -v104, v197, v111
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v90, v90, v132
	v_exp_f32_e32 v100, v100
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v92, 1.0, v92 :: v_dual_add_f32 v93, 1.0, v93
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v128, s18, v68, v30, v68
	v_fma_f32 v209, -v135, v180, 1.0
	v_mul_f32_e32 v204, v126, v175
	v_fma_f32 v231, -v123, v203, v124
	v_fma_f32 v104, -v112, v198, v113
	v_div_scale_f32 v147, null, v86, v86, v58
	v_fma_f32 v208, -v133, v179, 1.0
	v_dual_fmac_f32 v201, v229, v172 :: v_dual_fmac_f32 v202, v230, v173
	v_div_fmas_f32 v24, v24, v167, v196
	s_mov_b32 vcc_lo, s25
	v_div_scale_f32 v130, s17, v67, v29, v67
	v_div_scale_f32 v145, null, v87, v87, v59
	v_dual_fmac_f32 v177, v206, v177 :: v_dual_fmac_f32 v180, v209, v180
	v_fma_f32 v111, -v114, v199, v115
	v_rcp_f32_e32 v183, v141
	v_div_fmas_f32 v27, v27, v168, v197
	s_mov_b32 vcc_lo, s26
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v90, 1.0, v90 :: v_dual_add_f32 v91, 1.0, v91
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v132, s16, v66, v28, v66
	v_fma_f32 v211, -v139, v182, 1.0
	v_fma_f32 v112, -v116, v200, v117
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v138, 0, 0xffffffc0, s28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v151, null, v92, v92, v22
	v_fma_f32 v210, -v137, v181, 1.0
	v_dual_mul_f32 v205, v128, v176 :: v_dual_mul_f32 v206, v130, v177
	v_fma_f32 v232, -v125, v204, v126
	v_fmac_f32_e32 v203, v231, v174
	v_div_fmas_f32 v104, v104, v169, v198
	s_mov_b32 vcc_lo, s24
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_exp_f32_e32 v98, v98
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v134, s15, v65, v85, v65
	v_div_scale_f32 v149, null, v93, v93, v57
	v_rcp_f32_e32 v186, v147
	v_dual_fmac_f32 v179, v208, v179 :: v_dual_fmac_f32 v182, v211, v182
	v_fma_f32 v113, -v118, v201, v120
	v_rcp_f32_e32 v185, v145
	v_div_fixup_f32 v9, v24, v9, v82
	v_div_fmas_f32 v24, v111, v170, v199
	s_mov_b32 vcc_lo, s23
	v_div_scale_f32 v136, s14, v64, v84, v64
	v_fma_f32 v213, -v143, v184, 1.0
	v_fma_f32 v114, -v121, v202, v122
	v_div_scale_f32 v155, null, v90, v90, v20
	v_dual_mul_f32 v207, v132, v178 :: v_dual_mul_f32 v208, v134, v179
	v_div_fixup_f32 v10, v27, v10, v76
	v_div_fmas_f32 v76, v112, v171, v200
	s_mov_b32 vcc_lo, s22
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v100, v100, v138
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v138, s13, v63, v83, v63
	v_div_scale_f32 v153, null, v91, v91, v21
	v_rcp_f32_e32 v188, v151
	v_dual_fmac_f32 v181, v210, v181 :: v_dual_fmac_f32 v184, v213, v184
	v_fma_f32 v233, -v127, v205, v128
	v_fmac_f32_e32 v204, v232, v175
	v_fma_f32 v115, -v123, v203, v124
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_cndmask_b32_e64 v140, 0, 0xffffffc0, s30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v187, v149
	v_div_fixup_f32 v11, v104, v11, v75
	v_div_fmas_f32 v75, v113, v172, v201
	s_mov_b32 vcc_lo, s21
	v_fma_f32 v234, -v129, v206, v130
	v_div_scale_f32 v159, null, v96, v96, v13
	v_fma_f32 v212, -v141, v183, 1.0
	v_dual_mul_f32 v209, v136, v180 :: v_dual_mul_f32 v210, v138, v181
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v27, v81, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v9, v24, v18, v74
	v_div_fmas_f32 v74, v114, v173, v202
	s_mov_b32 vcc_lo, s20
	v_rcp_f32_e32 v190, v155
	v_fma_f32 v235, -v131, v207, v132
	v_rcp_f32_e32 v189, v153
	v_dual_fmac_f32 v205, v233, v176 :: v_dual_fmac_f32 v206, v234, v177
	v_fma_f32 v116, -v125, v204, v126
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v24, v80, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v10, v76, v19, v73
	v_div_fmas_f32 v73, v115, v174, v203
	.loc	1 441 40                        ; generate_amdgcn.py:441:40
	v_ldexp_f32 v98, v98, v140
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v140, s12, v62, v32, v62
	v_fma_f32 v215, -v147, v186, 1.0
	v_fma_f32 v236, -v133, v208, v134
	v_fma_f32 v214, -v145, v185, 1.0
	v_div_scale_f32 v142, s11, v61, v89, v61
	v_rcp_f32_e32 v192, v159
	v_dual_fmac_f32 v183, v212, v183 :: v_dual_fmac_f32 v186, v215, v186
	v_fma_f32 v237, -v135, v209, v136
	s_mov_b32 vcc_lo, s19
	v_dual_fmac_f32 v207, v235, v178 :: v_dual_fmac_f32 v208, v236, v179
	v_div_scale_f32 v144, s10, v60, v88, v60
	v_fma_f32 v217, -v151, v188, 1.0
	v_fma_f32 v238, -v137, v210, v138
	v_fma_f32 v228, -v163, v223, v164
	v_fma_f32 v117, -v127, v205, v128
	v_div_fixup_f32 v70, v73, v103, v70
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v19, v78, v9
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v9, v116, v175, v204
	v_fma_f32 v216, -v149, v187, 1.0
	v_dual_mul_f32 v211, v140, v182 :: v_dual_mul_f32 v212, v142, v183
	v_div_scale_f32 v146, s9, v59, v87, v59
	v_dual_fmac_f32 v185, v214, v185 :: v_dual_fmac_f32 v188, v217, v188
	v_fma_f32 v118, -v129, v206, v130
	v_dual_fmac_f32 v209, v237, v180 :: v_dual_fmac_f32 v210, v238, v181
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v148, s8, v58, v86, v58
	v_fma_f32 v219, -v155, v190, 1.0
	v_fma_f32 v120, -v131, v207, v132
	v_div_fixup_f32 v26, v74, v26, v71
	v_fma_f32 v218, -v153, v189, 1.0
	v_dual_mul_f32 v213, v144, v184 :: v_dual_mul_f32 v214, v146, v185
	v_dual_fmac_f32 v223, v228, v194 :: v_dual_mul_f32 v18, v79, v11
	v_div_fixup_f32 v31, v9, v31, v69
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v11, v77, v10
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v10, v117, v176, v205
	s_mov_b32 vcc_lo, s17
	v_div_scale_f32 v150, s7, v57, v93, v57
	v_dual_fmac_f32 v187, v216, v187 :: v_dual_fmac_f32 v190, v219, v190
	v_fma_f32 v239, -v139, v211, v140
	v_fma_f32 v121, -v133, v208, v134
	v_div_fmas_f32 v71, v118, v177, v206
	s_mov_b32 vcc_lo, s16
	v_div_scale_f32 v152, s6, v22, v92, v22
	v_fma_f32 v221, -v159, v192, 1.0
	v_fma_f32 v240, -v141, v212, v142
	v_fma_f32 v122, -v135, v209, v136
	v_dual_mul_f32 v215, v148, v186 :: v_dual_mul_f32 v216, v150, v187
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v9, v56, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v26, v120, v178, v207
	s_mov_b32 vcc_lo, s15
	v_div_scale_f32 v154, s5, v21, v91, v21
	v_dual_fmac_f32 v189, v218, v189 :: v_dual_fmac_f32 v192, v221, v192
	v_fma_f32 v241, -v143, v213, v144
	v_fma_f32 v123, -v137, v210, v138
	v_dual_fmac_f32 v211, v239, v182 :: v_dual_fmac_f32 v212, v240, v183
	v_div_fixup_f32 v30, v10, v30, v68
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v10, v55, v70
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v55, v121, v179, v208
	s_mov_b32 vcc_lo, s14
	v_div_scale_f32 v156, s4, v20, v90, v20
	v_fma_f32 v242, -v145, v214, v146
	v_dual_mul_f32 v217, v152, v188 :: v_dual_mul_f32 v218, v154, v189
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v54, v54, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v31, v122, v180, v209
	s_mov_b32 vcc_lo, s13
	v_div_scale_f32 v158, s3, v17, v97, v17
	v_fma_f32 v243, -v147, v215, v148
	v_dual_fmac_f32 v213, v241, v184 :: v_dual_fmac_f32 v214, v242, v185
	v_div_fixup_f32 v26, v26, v28, v66
	v_div_fmas_f32 v28, v123, v181, v210
	v_div_scale_f32 v160, s0, v13, v96, v13
	v_fma_f32 v244, -v149, v216, v150
	v_fma_f32 v124, -v139, v211, v140
	v_div_fixup_f32 v72, v75, v102, v72
	v_div_fixup_f32 v29, v71, v29, v67
	v_dual_mul_f32 v219, v156, v190 :: v_dual_mul_f32 v220, v158, v191
	v_div_scale_f32 v162, s1, v15, v95, v15
	v_fma_f32 v245, -v151, v217, v152
	v_fma_f32 v125, -v141, v212, v142
	v_dual_fmac_f32 v215, v243, v186 :: v_dual_fmac_f32 v216, v244, v187
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v246, -v153, v218, v154
	v_fma_f32 v126, -v143, v213, v144
	v_div_fixup_f32 v28, v28, v83, v63
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v53, v53, v30
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v30, v55, v85, v65
	v_dual_mul_f32 v221, v160, v192 :: v_dual_mul_f32 v222, v162, v193
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v5, v5, v72 :: v_dual_mul_f32 v52, v52, v29
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v29, v124, v182, v211
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v224, -v155, v219, v156
	v_fma_f32 v127, -v145, v214, v146
	v_div_fixup_f32 v31, v31, v84, v64
	v_dual_fmac_f32 v217, v245, v188 :: v_dual_fmac_f32 v218, v246, v189
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v55, v50, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v26, v125, v183, v212
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v225, -v157, v220, v158
	v_fma_f32 v128, -v147, v215, v148
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v50, v51, v30 :: v_dual_mul_f32 v49, v49, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v30, v126, v184, v213
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v226, -v159, v221, v160
	v_fma_f32 v129, -v149, v216, v150
	v_div_fixup_f32 v29, v29, v32, v62
	v_dual_fmac_f32 v219, v224, v190 :: v_dual_fmac_f32 v220, v225, v191
	v_div_fmas_f32 v31, v127, v185, v214
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v227, -v161, v222, v162
	v_fma_f32 v130, -v151, v217, v152
	v_div_fixup_f32 v26, v26, v89, v61
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v48, v48, v28
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v28, v128, v186, v215
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v131, -v153, v218, v154
	v_div_fixup_f32 v32, v30, v88, v60
	v_dual_fmac_f32 v221, v226, v192 :: v_dual_fmac_f32 v222, v227, v193
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v47, v47, v29 :: v_dual_mul_f32 v30, v46, v26
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v29, v129, v187, v216
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v132, -v155, v219, v156
	v_div_fixup_f32 v31, v31, v87, v59
	v_div_fmas_f32 v26, v130, v188, v217
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v133, -v157, v220, v158
	v_div_fixup_f32 v46, v28, v86, v58
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v28, v44, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v32, v131, v189, v218
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v134, -v159, v221, v160
	v_div_fixup_f32 v44, v29, v93, v57
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v29, v43, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v31, v132, v190, v219
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v135, -v161, v222, v162
	v_div_fixup_f32 v22, v26, v92, v22
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v26, v42, v46
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v42, v133, v191, v220
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v136, -v163, v223, v164
	v_div_fmas_f32 v43, v134, v192, v221
	s_mov_b32 vcc_lo, s1
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_dual_add_f32 v99, 1.0, v99 :: v_dual_add_f32 v100, 1.0, v100
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v46, v135, v193, v222
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v165, null, v101, v101, v14
	v_div_fixup_f32 v32, v32, v91, v21
	v_div_fmas_f32 v51, v136, v194, v223
	v_div_fixup_f32 v31, v31, v90, v20
	v_div_scale_f32 v166, null, v100, v100, v16
	v_rcp_f32_e32 v195, v165
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v21, v40, v44 :: v_dual_mul_f32 v20, v41, v22
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v40, v42, v97, v17
	v_div_fixup_f32 v12, v51, v94, v12
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v17, v38, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v32, v43, v96, v13
	v_div_fixup_f32 v13, v46, v95, v15
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v22, v37, v31
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v31, null, v99, v99, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_dual_mul_f32 v12, v39, v12 :: v_dual_mul_f32 v13, v36, v13
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_rcp_f32_e32 v36, v166
	v_rcp_f32_e32 v39, v31
	v_fma_f32 v38, -v165, v195, 1.0
	s_mov_b32 s7, 0x76543210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v195, v38, v195
	v_fma_f32 v38, -v166, v36, 1.0
	.loc	1 441 34                        ; generate_amdgcn.py:441:34
	v_add_f32_e32 v37, 1.0, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_fma_f32 v42, -v31, v39, 1.0
	v_fmac_f32_e32 v36, v38, v36
	v_div_scale_f32 v38, s0, v16, v100, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v39, v42, v39
	v_div_scale_f32 v42, s1, v23, v99, v23
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v15, v35, v32
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_scale_f32 v32, null, v37, v37, v25
	v_div_scale_f32 v35, vcc_lo, v14, v101, v14
	v_rcp_f32_e32 v41, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v32, v41, 1.0
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v44, s2, v25, v37, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v58, v44, v41 :: v_dual_mul_f32 v43, v35, v195
	v_fma_f32 v45, -v32, v58, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v46, -v165, v43, v35
	v_fmac_f32_e32 v58, v45, v41
	v_mul_f32_e32 v56, v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v46, v195
	v_fma_f32 v32, -v32, v58, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v31, v56, v42
	v_mul_f32_e32 v51, v38, v36
	v_fma_f32 v35, -v165, v43, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v56, v57, v39
	v_fma_f32 v46, -v166, v51, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v35, v35, v195, v43
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v31, -v31, v56, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v46, v36
	v_fma_f32 v38, -v166, v51, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v38, v36, v51
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v31, v31, v39, v56
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v16, v36, v100, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v8, v31, v99, v23
	v_div_fixup_f32 v23, v35, v101, v14
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v14, v2, v16
.Ltmp20:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v2, |v52|, |v50|, |v49|
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp21:
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v8, v3, v8
	.loc	1 441 22 is_stmt 0              ; generate_amdgcn.py:441:22
	v_div_fmas_f32 v32, v32, v41, v58
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v16, v1, v23
.Ltmp22:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v1, |v54|, |v53|
	v_max3_f32 v3, |v48|, |v47|, |v27|
	v_max_f32_e64 v23, |v21|, |v20|
.Ltmp23:
	.loc	1 441 22                        ; generate_amdgcn.py:441:22
	v_div_fixup_f32 v6, v32, v37, v25
	.loc	1 441 15 is_stmt 0              ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v25, v34, v40
.Ltmp24:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v32, |v16|, |v14|, |v8|
	v_max3_f32 v1, v1, |v55|, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	1 441 15                        ; generate_amdgcn.py:441:15
	v_mul_f32_e32 v7, v4, v6
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v4, |v30|, |v28|, |v29|
	v_max3_f32 v6, |v26|, |v24|, |v18|
	v_max3_f32 v31, |v17|, |v25|, |v15|
	v_max3_f32 v33, |v7|, |v5|, |v9|
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v2, v4, v6, |v19|
	v_max3_f32 v4, |v13|, |v12|, |v11|
	v_max3_f32 v6, v23, |v22|, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_max3_f32 v23, v32, v33, |v10|
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshl_add_u32 v33, v108, 7, 0
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v2, v1, v3, v2
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v1, 0xe0, v0
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v3, v6, v4, v23
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v23, 4, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v4, v2, s7, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v31, 1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v6, v3, s7, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v32, v1, 2, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v23, v23, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v2, v2, v4
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v4, v32, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v3, v3, v6
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v6, v33, v23, v119
	v_lshlrev_b32_e32 v33, 3, v119
	v_add3_u32 v4, 0, v119, v4
	ds_store_b64 v6, v[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[2:3], v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v4, v2
	v_mov_b32_e32 v6, v3
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v23, 2, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v4, v4, v4
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v2, v2, v4 :: v_dual_max_f32 v3, v3, v6
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v6, v3
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_dual_max_f32 v4, v3, v6 :: v_dual_mov_b32 v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v31, v2, v3 :: v_dual_mov_b32 v6, v4
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v3, 3, v107
	v_add3_u32 v2, 0, v33, v23
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v32, v4, v6
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add_nc_u32_e32 v4, 0, v3
	ds_store_b64 v2, v[31:32]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[31:32], v4
.Ltmp50:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_max_f32_e32 v2, v31, v31
	v_max_f32_e32 v4, v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	v_max_f32_e32 v4, 0x2b8cbccc, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v23, null, 0x40e00000, 0x40e00000, v4
	v_div_scale_f32 v35, vcc_lo, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v31, v6
	v_rcp_f32_e32 v32, v23
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v6, v31, 1.0
	v_fma_f32 v34, -v23, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v31, v33, v31 :: v_dual_fmac_f32 v32, v34, v32
	v_div_scale_f32 v33, s0, v4, 0x40e00000, v4
	v_mul_f32_e32 v34, v35, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v6, v34, v35
	v_fmac_f32_e32 v34, v37, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v6, v34, v35
	v_div_fmas_f32 v6, v6, v31, v34
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v6, 0x40e00000, v2
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v6, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v31, v2, v6, 0x7fff
	v_mov_b16_e32 v2.h, 0
.Ltmp51:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v6, 4, v106
.Ltmp52:
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v37, 0xffff0000, v31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v2.l, v31.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v42, null, v37, v37, v49
	v_div_scale_f32 v46, null, v37, v37, v47
	v_div_scale_f32 v43, s4, v49, v37, v49
	v_rcp_f32_e32 v61, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v63, v46
	v_div_scale_f32 v64, s6, v47, v37, v47
	v_div_scale_f32 v31, null, v37, v37, v54
	v_div_scale_f32 v51, null, v37, v37, v27
	v_div_scale_f32 v34, s0, v53, v37, v53
	v_fma_f32 v71, -v42, v61, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v46, v63, 1.0
	v_rcp_f32_e32 v56, v31
	v_div_scale_f32 v35, null, v37, v37, v55
	v_fmac_f32_e32 v61, v71, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v73, v63
	v_div_scale_f32 v39, s2, v52, v37, v52
	v_div_scale_f32 v40, null, v37, v37, v50
	v_dual_mul_f32 v71, v43, v61 :: v_dual_mul_f32 v36, v33, v32
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v66, -v31, v56, 1.0
	v_rcp_f32_e32 v65, v51
	v_rcp_f32_e32 v58, v35
	v_rcp_f32_e32 v60, v40
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v38, -v23, v36, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v56, v66, v56
	v_div_scale_f32 v41, s3, v50, v37, v50
	v_div_scale_f32 v44, null, v37, v37, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v36, v38, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v38, null, v37, v37, v52
	v_fma_f32 v68, -v35, v58, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v40, v60, 1.0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v23, -v23, v36, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v33, null, v37, v37, v53
	v_rcp_f32_e32 v59, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v60, v70, v60
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v23, v23, v32, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v57, v33
	v_div_scale_f32 v32, vcc_lo, v54, v37, v54
	v_div_scale_f32 v36, s1, v55, v37, v55
	v_mul_f32_e32 v70, v41, v60
	v_mul_f32_e32 v66, v32, v56
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v69, -v38, v59, 1.0
	v_fma_f32 v78, -v42, v71, v43
	v_rcp_f32_e32 v62, v44
	v_fma_f32 v67, -v33, v57, 1.0
	v_fma_f32 v73, -v31, v66, v32
	v_fmac_f32_e32 v59, v69, v59
	v_fma_f32 v77, -v40, v70, v41
	v_fmac_f32_e32 v71, v78, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v57, v67, v57 :: v_dual_fmac_f32 v66, v73, v56
	v_dual_mul_f32 v69, v39, v59 :: v_dual_fmac_f32 v70, v77, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v72, -v44, v62, 1.0
	v_mul_f32_e32 v67, v34, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v31, v66, v32
	v_fma_f32 v76, -v38, v69, v39
	v_div_scale_f32 v45, s5, v48, v37, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v33, v67, v34
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v4, v23, 0x40e00000, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v69, v76, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v67, v74, v57
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_bfe_u32 v23, v4, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v32, -v33, v67, v34
	v_fma_f32 v34, -v38, v69, v39
	v_mul_f32_e32 v39, v64, v63
	v_fmac_f32_e32 v58, v68, v58
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v23, v4, v23, 0x7fff
	v_mov_b16_e32 v4.h, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v68, v36, v58
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v4.l, v23.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v23, 0xffff0000, v23
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v75, -v35, v68, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v75, v58
	v_fma_f32 v33, -v35, v68, v36
	v_fma_f32 v35, -v40, v70, v41
	v_fma_f32 v40, -v51, v65, 1.0
	v_fma_f32 v36, -v42, v71, v43
	v_fma_f32 v42, -v46, v39, v64
	v_div_scale_f32 v41, null, v37, v37, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v65, v40, v65
	v_div_fmas_f32 v31, v31, v56, v66
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v39, v42, v63
	v_div_fmas_f32 v32, v32, v57, v67
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v31, v31, v37, v54
	v_div_fmas_f32 v33, v33, v58, v68
	v_div_scale_f32 v54, null, v37, v37, v24
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v40, s0, v27, v37, v27
	v_div_fixup_f32 v33, v33, v37, v55
	v_rcp_f32_e32 v55, v54
	v_fmac_f32_e32 v62, v72, v62
	v_div_fmas_f32 v34, v34, v59, v69
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v42, v40, v65
	v_div_fmas_f32 v35, v35, v60, v70
	v_mul_f32_e32 v72, v45, v62
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v34, v34, v37, v52
	v_div_fmas_f32 v36, v36, v61, v71
	v_div_fixup_f32 v35, v35, v37, v50
	v_fma_f32 v38, -v44, v72, v45
	v_fma_f32 v46, -v46, v39, v64
	v_div_scale_f32 v50, s1, v30, v37, v30
	v_div_fixup_f32 v36, v36, v37, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v38, v62
	v_rcp_f32_e32 v38, v41
	v_fma_f32 v49, -v51, v42, v40
	v_div_scale_f32 v52, null, v37, v37, v29
	v_fma_f32 v43, -v44, v72, v45
	v_div_scale_f32 v45, null, v37, v37, v28
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v32, v32, v37, v53
	v_div_fmas_f32 v43, v43, v62, v72
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v44, -v41, v38, 1.0
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v42, v49, v65
	v_div_fmas_f32 v39, v46, v63, v39
	v_rcp_f32_e32 v46, v52
	v_fmac_f32_e32 v38, v44, v38
	v_rcp_f32_e32 v44, v45
	v_div_fixup_f32 v43, v43, v37, v48
	v_div_fixup_f32 v39, v39, v37, v47
	v_fma_f32 v40, -v51, v42, v40
	v_mul_f32_e32 v49, v50, v38
	v_div_scale_f32 v48, s2, v28, v37, v28
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v51, -v52, v46, 1.0
	v_fma_f32 v47, -v41, v49, v50
	v_fma_f32 v53, -v45, v44, 1.0
	v_div_fmas_f32 v40, v40, v65, v42
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v46, v51, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v49, v47, v38 :: v_dual_fmac_f32 v44, v53, v44
	v_div_scale_f32 v53, null, v37, v37, v26
	v_div_scale_f32 v51, s0, v29, v37, v29
	v_mul_f32_e32 v42, v48, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v47, v53
	v_div_fixup_f32 v27, v40, v37, v27
	v_fma_f32 v40, -v41, v49, v50
	v_mul_f32_e32 v50, v51, v46
	v_fma_f32 v41, -v45, v42, v48
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v38, v40, v38, v49
	v_fma_f32 v40, -v52, v50, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v42, v41, v44
	v_fma_f32 v56, -v53, v47, 1.0
	v_div_scale_f32 v41, s1, v26, v37, v26
	v_fma_f32 v49, -v54, v55, 1.0
	v_div_fixup_f32 v30, v38, v37, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v56, v47
	v_fma_f32 v38, -v45, v42, v48
	v_fmac_f32_e32 v50, v40, v46
	v_div_scale_f32 v48, null, v37, v37, v18
	v_mul_f32_e32 v40, v41, v47
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v55, v49, v55
	v_div_scale_f32 v45, s3, v24, v37, v24
	v_div_fmas_f32 v38, v38, v44, v42
	v_fma_f32 v42, -v52, v50, v51
	v_fma_f32 v44, -v53, v40, v41
	v_rcp_f32_e32 v49, v48
	v_div_scale_f32 v52, null, v37, v37, v19
	v_mul_f32_e32 v51, v45, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v44, v47
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v44, v52
	v_div_fmas_f32 v42, v42, v46, v50
	v_fma_f32 v46, -v54, v51, v45
	v_div_fixup_f32 v28, v38, v37, v28
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v50, -v48, v49, 1.0
	v_fma_f32 v38, -v53, v40, v41
	v_div_fixup_f32 v29, v42, v37, v29
	v_fmac_f32_e32 v51, v46, v55
	v_div_scale_f32 v41, s0, v18, v37, v18
	v_fmac_f32_e32 v49, v50, v49
	v_fma_f32 v42, -v52, v44, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v46, s1, v19, v37, v19
	v_div_fmas_f32 v38, v38, v47, v40
	v_fma_f32 v40, -v54, v51, v45
	v_dual_mul_f32 v45, v41, v49 :: v_dual_fmac_f32 v44, v42, v44
	v_div_scale_f32 v42, null, v23, v23, v21
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v50, -v48, v45, v41
	v_div_fmas_f32 v40, v40, v55, v51
	v_rcp_f32_e32 v47, v42
	v_mul_f32_e32 v51, v46, v44
	v_div_scale_f32 v53, null, v23, v23, v20
	v_fmac_f32_e32 v45, v50, v49
	v_div_fixup_f32 v26, v38, v37, v26
	v_div_fixup_f32 v24, v40, v37, v24
	v_fma_f32 v38, -v52, v51, v46
	v_rcp_f32_e32 v40, v53
	v_fma_f32 v41, -v48, v45, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v42, v47, 1.0
	v_div_scale_f32 v48, null, v23, v23, v22
	v_fmac_f32_e32 v51, v38, v44
	v_div_scale_f32 v38, s2, v21, v23, v21
	v_fmac_f32_e32 v47, v50, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v50, v48
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v54, -v53, v40, 1.0
	v_div_fmas_f32 v41, v41, v49, v45
	v_fma_f32 v45, -v52, v51, v46
	v_mul_f32_e32 v46, v38, v47
	v_div_scale_f32 v55, null, v23, v23, v17
	v_fmac_f32_e32 v40, v54, v40
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v48, v50, 1.0
	v_fma_f32 v54, -v42, v46, v38
	v_div_scale_f32 v49, s0, v20, v23, v20
	v_rcp_f32_e32 v57, v55
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, s3, v22, v23, v22
	v_div_fmas_f32 v44, v45, v44, v51
	v_fmac_f32_e32 v46, v54, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v56, v49, v40 :: v_dual_mul_f32 v51, v52, v50
	v_div_fixup_f32 v18, v41, v37, v18
	v_div_fixup_f32 v19, v44, v37, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v37, -v42, v46, v38
	v_div_scale_f32 v42, null, v23, v23, v25
	v_fma_f32 v38, -v48, v51, v52
	v_fma_f32 v45, -v53, v56, v49
	v_fma_f32 v41, -v55, v57, 1.0
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v30, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v51, v38, v50
	v_rcp_f32_e32 v38, v42
	v_fmac_f32_e32 v56, v45, v40
	v_fmac_f32_e32 v57, v41, v57
	v_div_scale_f32 v41, s1, v17, v23, v17
	v_div_fmas_f32 v37, v37, v47, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v53, v56, v49
	v_div_scale_f32 v46, null, v23, v23, v15
	v_mul_f32_e32 v45, v41, v57
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v47, -v42, v38, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v21, v37, v23, v21
	v_div_fmas_f32 v40, v44, v40, v56
	v_fma_f32 v44, -v48, v51, v52
	v_rcp_f32_e32 v48, v46
	v_fma_f32 v49, -v55, v45, v41
	v_fmac_f32_e32 v38, v47, v38
	v_div_scale_f32 v47, s0, v25, v23, v25
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v45, v49, v57
	v_div_fmas_f32 v44, v44, v50, v51
	v_mul_f32_e32 v37, v47, v38
	v_div_fixup_f32 v20, v40, v23, v20
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v46, v48, 1.0
	v_fma_f32 v41, -v55, v45, v41
	v_div_fixup_f32 v22, v44, v23, v22
	v_div_scale_f32 v44, null, v23, v23, v13
	v_fma_f32 v49, -v42, v37, v47
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v48, v40, v48
	v_div_scale_f32 v40, s2, v15, v23, v15
	v_rcp_f32_e32 v50, v44
	v_div_fmas_f32 v41, v41, v57, v45
	v_fmac_f32_e32 v37, v49, v38
	v_div_scale_f32 v49, null, v23, v23, v12
	v_mul_f32_e32 v45, v40, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v17, v41, v23, v17
	v_fma_f32 v41, -v42, v37, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v51, v49
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v42, -v46, v45, v40
	v_fma_f32 v47, -v44, v50, 1.0
	v_div_fmas_f32 v37, v41, v38, v37
	v_div_scale_f32 v41, s0, v13, v23, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v45, v42, v48 :: v_dual_fmac_f32 v50, v47, v50
	v_div_fixup_f32 v25, v37, v23, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v49, v51, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v40, -v46, v45, v40
	v_mul_f32_e32 v46, v41, v50
	v_div_scale_f32 v38, null, v23, v23, v11
	v_fmac_f32_e32 v51, v37, v51
	v_div_scale_f32 v37, s1, v12, v23, v12
	v_div_fmas_f32 v40, v40, v48, v45
	v_fma_f32 v45, -v44, v46, v41
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v48, v37, v51
	v_rcp_f32_e32 v42, v38
	v_div_fixup_f32 v15, v40, v23, v15
	v_fmac_f32_e32 v46, v45, v50
	v_div_scale_f32 v47, null, v23, v23, v16
	v_fma_f32 v45, -v49, v48, v37
	v_div_scale_f32 v54, s2, v11, v23, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v44, v46, v41
	v_rcp_f32_e32 v53, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v48, v45, v51
	v_fma_f32 v52, -v38, v42, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v40, v40, v50, v46
	v_div_scale_f32 v46, null, v23, v23, v8
	v_fma_f32 v37, -v49, v48, v37
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v13, v40, v23, v13
	v_fma_f32 v55, -v47, v53, 1.0
	v_div_scale_f32 v50, null, v23, v23, v10
	v_div_fmas_f32 v37, v37, v51, v48
	v_rcp_f32_e32 v48, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v53, v55, v53
	v_div_scale_f32 v55, s3, v16, v23, v16
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v12, v37, v23, v12
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v44, v55, v53
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v40, -v46, v48, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v48, v40, v48
	v_fmac_f32_e32 v42, v52, v42
	v_div_scale_f32 v52, null, v23, v23, v14
	v_div_scale_f32 v40, null, v23, v23, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v57, v54, v42
	v_rcp_f32_e32 v56, v52
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v41, -v38, v57, v54
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v57, v41, v42
	v_fma_f32 v45, -v52, v56, 1.0
	v_fma_f32 v41, -v47, v44, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v38, v57, v54
	v_fmac_f32_e32 v56, v45, v56
	v_div_scale_f32 v45, s0, v14, v23, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v41, v53
	v_div_fmas_f32 v38, v38, v42, v57
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v45, v56
	v_fma_f32 v42, -v47, v44, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v11, v38, v23, v11
	v_div_scale_f32 v38, null, v23, v23, v7
	v_fma_f32 v47, -v52, v41, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v42, v42, v53, v44
	s_mov_b32 vcc_lo, s0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v11, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v41, v47, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v16, v42, v23, v16
	v_div_scale_f32 v42, null, v23, v23, v9
	v_fma_f32 v37, -v52, v41, v45
	v_rcp_f32_e32 v45, v40
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v47, v42
	v_rcp_f32_e32 v52, v50
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v37, v37, v56, v41
	v_rcp_f32_e32 v41, v38
	v_div_scale_f32 v44, vcc_lo, v8, v23, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v14, v37, v23, v14
	v_fma_f32 v51, -v40, v45, 1.0
	v_mul_f32_e32 v49, v44, v48
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v54, -v42, v47, 1.0
	v_fma_f32 v56, -v50, v52, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v37, -v38, v41, 1.0
	v_fma_f32 v53, -v46, v49, v44
	v_fmac_f32_e32 v45, v51, v45
	v_div_scale_f32 v51, s1, v5, v23, v5
	v_fmac_f32_e32 v41, v37, v41
	v_div_scale_f32 v37, s0, v7, v23, v7
	v_fmac_f32_e32 v49, v53, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v57, v51, v45
	v_fmac_f32_e32 v47, v54, v47
	v_mul_f32_e32 v55, v37, v41
	v_div_scale_f32 v54, s2, v9, v23, v9
	v_fma_f32 v44, -v46, v49, v44
	v_fma_f32 v46, -v40, v57, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v53, -v38, v55, v37
	v_mul_f32_e32 v58, v54, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v57, v46, v45
	v_fmac_f32_e32 v55, v53, v41
	v_div_fmas_f32 v44, v44, v48, v49
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v40, -v40, v57, v51
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v27, v27, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v37, -v38, v55, v37
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v53, -v42, v58, v54
	v_div_fixup_f32 v8, v44, v23, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v52, v56, v52
	v_div_scale_f32 v56, s3, v10, v23, v10
	v_div_fmas_f32 v37, v37, v41, v55
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v58, v53, v47
	v_div_fmas_f32 v40, v40, v45, v57
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v45, v15
	v_and_b32_e32 v15, 15, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v59, v56, v52
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v7, v37, v23, v7
	v_div_fixup_f32 v5, v40, v23, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v38, -v50, v59, v56
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v37, v39
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v59, v38, v52
	v_fma_f32 v38, -v42, v58, v54
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v41, -v50, v59, v56
	v_div_fmas_f32 v38, v38, v47, v58
	s_mov_b32 vcc_lo, s3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v41, v41, v52, v59
	v_div_fixup_f32 v9, v38, v23, v9
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v7, v7
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v10, v41, v23, v10
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v23, v31
	v_rndne_f32_e32 v31, v32
	v_rndne_f32_e32 v32, v33
	v_rndne_f32_e32 v33, v34
	v_rndne_f32_e32 v34, v35
	v_rndne_f32_e32 v35, v36
	v_rndne_f32_e32 v36, v43
	v_rndne_f32_e32 v9, v9
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v53, v9
	v_and_b32_e32 v9, 15, v32
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v32, 6, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v38, v18
	v_cvt_i32_f32_e32 v46, v13
	v_cvt_i32_f32_e32 v49, v16
	v_cvt_i32_f32_e32 v51, v8
	v_cvt_i32_f32_e32 v54, v10
	v_and_b32_e32 v8, 15, v31
	v_and_b32_e32 v10, 15, v33
	v_and_b32_e32 v13, 15, v36
	v_and_b32_e32 v16, 15, v30
	v_and_b32_e32 v18, 15, v29
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v29, 1, v0
	v_and_b32_e32 v30, 0x60, v0
	v_lshlrev_b32_e32 v31, 10, v110
	v_and_b32_e32 v33, 0x400, v32
	v_and_b32_e32 v36, 0x60, v109
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v39, v19
	v_cvt_i32_f32_e32 v40, v21
	v_cvt_i32_f32_e32 v41, v20
	v_cvt_i32_f32_e32 v42, v22
	v_cvt_i32_f32_e32 v43, v17
	v_cvt_i32_f32_e32 v47, v12
	v_cvt_i32_f32_e32 v48, v11
	v_and_b32_e32 v11, 15, v34
	v_and_b32_e32 v12, 15, v35
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v34, 0x100, v29
	v_xor_b32_e32 v35, v105, v30
	v_add3_u32 v33, 0, v31, v33
	v_and_or_b32 v36, 0x1b00, v32, v36
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v50, v14
	v_cvt_i32_f32_e32 v44, v25
	v_cvt_i32_f32_e32 v52, v7
	v_and_b32_e32 v7, 15, v23
	v_and_b32_e32 v14, 15, v37
	v_and_b32_e32 v19, 15, v26
	v_and_b32_e32 v20, 15, v24
	v_and_b32_e32 v22, 15, v39
	v_and_b32_e32 v23, 15, v40
	v_and_b32_e32 v24, 15, v41
	v_and_b32_e32 v25, 15, v42
	v_and_b32_e32 v26, 15, v43
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v39, v33, v34, v35
	v_xad_u32 v40, v36, v106, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v17, 15, v28
	v_and_b32_e32 v21, 15, v38
	v_and_b32_e32 v29, 15, v48
	v_and_b32_e32 v30, 15, v49
	v_and_b32_e32 v31, 15, v50
	v_and_b32_e32 v32, 15, v51
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	ds_store_b128 v39, v[7:10]
	ds_store_b128 v39, v[15:18] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v40
	ds_load_b128 v[15:18], v40 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v39, v[23:26]
	ds_store_b128 v39, v[29:32] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v40
	ds_load_b128 v[31:34], v40 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v39, v[11:14]
	ds_store_b128 v39, v[19:22] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v40
	ds_load_b128 v[19:22], v40 offset:1024
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v27, 15, v44
	v_and_b32_e32 v28, 15, v45
	v_and_b32_e32 v29, 15, v46
	v_and_b32_e32 v30, 15, v47
	v_med3_f32 v5, v5, s0, 0x40e00000
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s31, 31
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v35, 15, v52
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s31, s0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v37, 15, v53
	v_cvt_i32_f32_e32 v5, v5
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v38, 15, v54
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v6, s0, v6
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v36, 15, v5
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v5, v16, 4, v8
	v_lshl_or_b32 v8, v17, 4, v9
	v_lshl_or_b32 v9, v18, 4, v10
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v10, v19, 4, v11
	v_lshl_or_b32 v11, v20, 4, v12
	v_lshl_or_b32 v12, v21, 4, v13
	v_lshl_or_b32 v13, v22, 4, v14
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_mul_i32 s2, s34, s0
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s2, s2, s1
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_barrier
	ds_store_b128 v39, v[27:30]
	ds_store_b128 v39, v[35:38] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v40
	ds_load_b128 v[35:38], v40 offset:1024
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v18, s2, v3, v6
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v6.l, 8, v13.l
	v_and_b16 v6.h, 0xff, v12.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v7, v15, 4, v7
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v7.h, 0xff, v10.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v14, v31, 4, v23
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_lshl_add_u32 v23, s0, 4, v18
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v10.h, v6.h, v6.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v6, 16, v0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b16 v5.h, 0xff, v7.l
	v_lshlrev_b16 v7.l, 8, v11.l
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s31, 31
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v16, v33, 4, v25
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v17, v34, 4, v26
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v10.l, v7.h, v7.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v7, v0, 31, s34
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v4, v2, v4, vcc_lo
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s31, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v15, v32, 4, v24
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v21, v37, 4, v29
	v_lshl_or_b32 v22, v38, 4, v30
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v3.l, 8, v9.l
	v_and_b16 v3.h, 0xff, v8.l
	v_lshlrev_b16 v5.l, 8, v5.l
	v_lshlrev_b16 v8.l, 8, v17.l
	v_and_b16 v8.h, 0xff, v16.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_bfe_i32 v6, v4, 0, 16
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v7, v7, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v19, v35, 4, v27
	v_lshl_or_b32 v20, v36, 4, v28
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v9.h, v3.h, v3.l
	v_or_b16 v9.l, v5.h, v5.l
	v_or_b16 v5.h, v8.h, v8.l
	v_lshlrev_b16 v3.l, 8, v15.l
	v_and_b16 v0.l, 0xff, v14.l
	v_lshlrev_b16 v0.h, 8, v22.l
	v_and_b16 v3.h, 0xff, v21.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_permlanex16_b32 v8, v6, s7, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v4.l, 8, v20.l
	v_and_b16 v4.h, 0xff, v19.l
	v_or_b16 v5.l, v0.l, v3.l
	v_or_b16 v6.h, v3.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_lshl_u32 v0, v7, s33, 1
	v_cndmask_b32_e32 v2, v8, v2, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v6.l, v4.h, v4.l
	buffer_store_b64 v[9:10], v18, s[44:47], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[5:6], v23, s[44:47], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s45, s43, 0xffff
	s_mov_b32 s44, s42
	buffer_store_b16 v2, v0, s[44:47], 0 offen
.Ltmp53:
	.loc	1 338 1                         ; generate_amdgcn.py:338:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp54:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 247
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_vgpr, 247
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17228
; TotalNumSgprs: 50
; NumVgprs: 247
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 247
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
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
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
	.quad	.Ltmp50-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_swiglu_outint4sc256_bm32_bn256_bk64_gm4_w8_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     247
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
